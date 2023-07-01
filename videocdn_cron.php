<?php

@set_time_limit(0);

if (!defined('E_DEPRECATED')) {
	@error_reporting(E_ALL ^ E_NOTICE);
	@ini_set('error_reporting', E_ALL ^ E_NOTICE);
} else {
	@error_reporting(E_ALL ^ E_DEPRECATED ^ E_NOTICE);
	@ini_set('error_reporting', E_ALL ^ E_DEPRECATED ^ E_NOTICE);
}

@ini_set('display_errors', true);
@ini_set('html_errors', false);

define('DATALIFEENGINE', true);
define('AUTOMODE', true);
define('LOGGED_IN', true);

define('ROOT_DIR', dirname (__FILE__));
define('ENGINE_DIR', ROOT_DIR . '/engine');

@include_once ENGINE_DIR . '/classes/plugins.class.php';
require_once ENGINE_DIR . '/data/config.php';

date_default_timezone_set($config['date_adjust']);

require_once ENGINE_DIR . '/classes/mysql.php';
require_once ENGINE_DIR . '/data/dbconfig.php';
if (file_exists(ROOT_DIR . '/language/'.$config['langs'].'/website.lng')) 
	require_once ROOT_DIR . '/language/'.$config['langs'].'/website.lng';
require_once ENGINE_DIR . '/modules/functions.php';

dle_session();

//####################################################################################################################
//                    Определение категорий и их параметры
//####################################################################################################################
$cat_info = get_vars("category");

if (!is_array($cat_info)) {
	$cat_info = array();
	
	$db->query("SELECT * FROM " . PREFIX . "_category ORDER BY posi ASC");
	while ($row = $db->get_row()) {
		$cat_info[$row['id']] = array();
		
		foreach ($row as $key => $value) {
			$cat_info[$row['id']][$key] = stripslashes($value);
		}
	}

	set_vars("category", $cat_info);
	$db->free();
}

// Инициализация базового функционала модуля
require_once ENGINE_DIR . '/inc/videocdn/init.php';

if ($videocdn->config['cron_key'] && $videocdn->config['cron_key'] == $_GET['key']) {
	$cats = explode(',', $videocdn->config['cron_cats']);
	$black_list = explode(',', $videocdn->config['cron_black_list']);

	if ($videocdn->config['cron_type'] == 2)
		$approve = 'approve = 1';
	elseif ($videocdn->config['cron_type'] == 3)
		$approve = 'approve = 0';

	if ($videocdn->config['cron_white_list']) {
		$white_list = " OR p.id IN (" . $videocdn->config['cron_white_list'] . ")";
	}

	if ($cats) {
		$searchcategory = array();
		foreach ($cats as $cat_id) {
			$searchcategory[] = get_sub_cats($cat_id);
		}
		$searchcategory = implode('|', $searchcategory);

		if ($searchcategory) {
			// Для dle 13.2 и mysql8
			if ($videocdn->dle_config['version_id'] >= 13.2) {
				if ($videocdn->config['cron_cats_inverse']) {
					$stop_list = "p.id NOT IN ( SELECT DISTINCT(" . PREFIX . "_post_extras_cats.news_id) FROM " . PREFIX . "_post_extras_cats WHERE cat_id IN ({$searchcategory})) AND ";
				} else {
					$cat_join = "INNER JOIN (SELECT DISTINCT(" . PREFIX . "_post_extras_cats.news_id) FROM " . PREFIX . "_post_extras_cats WHERE cat_id IN ({$searchcategory})) c ON (p.id=c.news_id) ";
				}
				$searchcategory = '';
			} else 
				$searchcategory = " AND category" . ($videocdn->config['cron_cats_inverse'] ? ' not' : '') . " regexp '[[:<:]]($searchcategory)[[:>:]]'";
		}		
		
	}

	$threads = 0;
	
	if($videocdn->config['cron_mode'] == 0) {
		$result_post = $videocdn->dle_db->query("SELECT * FROM " . PREFIX . "_post p {$cat_join}WHERE {$stop_list}p.id > 0 {$searchcategory}{$approve}{$white_list} ORDER BY p.id DESC");
	}
	
	if($videocdn->config['cron_mode'] == 1) {
		ignore_user_abort(true);
		$total_post = $videocdn->dle_db->super_query("SELECT COUNT(p.id) as count FROM " . PREFIX . "_post p {$cat_join}WHERE {$stop_list}p.id > 0 {$searchcategory}{$approve}{$white_list}");
		  
		$start_from = 0;
		$max_step = $videocdn->config['cron_threads'] * 10;	
		$total = $total_post['count'] + $max_step;
		
		row_init:
		
		if ($start_from >= $total) {
			clear_cache( array('news') );
			die();
		}
		
		$result_post = $videocdn->dle_db->query("SELECT * FROM " . PREFIX . "_post p {$cat_join}WHERE {$stop_list}p.id > 0 {$searchcategory}{$approve}{$white_list} ORDER BY p.id DESC LIMIT {$start_from}, {$max_step}");
	}
	
	$cache_cats = array();
	
	while ($post = $result_post->fetch_assoc()) {
					
		$threads++;
		if (in_array($post['id'], $black_list))
			continue;
		
		$only_url = isset($videocdn->config['only_url']) ? true : false;
		// ----- BEGIN UPDATE POST -----
		$result = $videocdn->replace_thread($post['id'], array('cron'), $rewrite = 0, $post, false, $only_url);
		if ($result['status'] == 'ok') 
			$cache_cats = array_merge( $cache_cats, explode(',', $post['category']) );
		// ----- END UPDATE POST -----

		if ($threads == $videocdn->config['cron_threads'] AND $videocdn->config['cron_mode'] == 0) {
			$threads = 0;

			if ($videocdn->config['cron_interval'] > 0) {
				ob_flush();
				flush();

				sleep($videocdn->config['cron_interval']);
			}
		}
	}
	$cache_cats = array_unique( $cache_cats );
	foreach($cache_cats as $key => $value) {
		$cache_cats[$key] = 'news_'.$value;
	}
	
	//clear_cache( $cache_cats );
	
	if($videocdn->config['cron_mode'] == 1) {
		$start_from = $start_from+$max_step;	
		sleep($videocdn->config['cron_interval']);	
		goto row_init;	
	}
	
}