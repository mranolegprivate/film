<?php

if (!empty($_GET['ustore_filter_nopass']))
	die (json_encode(['status'=>'ok']));

@set_time_limit(0);

@error_reporting ( E_ALL ^ E_WARNING ^ E_DEPRECATED ^ E_NOTICE );
@ini_set ( 'error_reporting', E_ALL ^ E_WARNING ^ E_DEPRECATED ^ E_NOTICE );

@ini_set ( 'display_errors', true );
@ini_set ( 'html_errors', false );


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
require_once ENGINE_DIR . '/inc/ustore/init.php';

$cron_key = 0;
if (!empty($_GET['key'])) $cron_key = $_GET['key'];
elseif (!empty($argv[1])) $cron_key = $argv[1];

if ($ustore->config['cron_key'] && $ustore->config['cron_key'] == $cron_key) {
	
	if (lock('cron') === false)
		die('uStore cron alredy started'.PHP_EOL);
	
	$cats = explode(',', $ustore->config['cron_cats']);
	$black_list = explode(',', $ustore->config['cron_black_list']);

	if ($ustore->config['cron_type'] == 2)
		$approve = 'AND approve = 1';
	elseif ($ustore->config['cron_type'] == 3)
		$approve = 'AND approve = 0';

	if ($ustore->config['cron_white_list']) {
		$white_list = " OR p.id IN (" . $ustore->config['cron_white_list'] . ")";
	}

	if (!empty($cats)) {
		$searchcategory = array();
		foreach ($cats as $cat_id) {
			$sub_cats = get_sub_cats($cat_id);
			if ($ustore->dle_config['version_id'] >= 13.2) $sub_cats = str_replace('|', ',', $sub_cats);
			$searchcategory[] = $sub_cats;
		}
		if ($ustore->dle_config['version_id'] >= 13.2) $searchcategory = implode(',', $searchcategory);
		else $searchcategory = implode('|', $searchcategory);

		if ($searchcategory) {
			// Для dle 13.2 и mysql8
			if ($ustore->dle_config['version_id'] >= 13.2) {
				if ($ustore->config['cron_cats_inverse']) {
					$stop_list = "p.id NOT IN ( SELECT DISTINCT(" . PREFIX . "_post_extras_cats.news_id) FROM " . PREFIX . "_post_extras_cats WHERE cat_id IN ({$searchcategory})) AND ";
				} else {
					$cat_join = "INNER JOIN (SELECT DISTINCT(" . PREFIX . "_post_extras_cats.news_id) FROM " . PREFIX . "_post_extras_cats WHERE cat_id IN ({$searchcategory})) c ON (p.id=c.news_id) ";
				}
				$searchcategory = '';
			} else 
				$searchcategory = " AND category" . ($ustore->config['cron_cats_inverse'] ? ' not' : '') . " regexp '[[:<:]]($searchcategory)[[:>:]]'";
		}		
		
	}

	$threads = 0;
	
	if ($ustore->config['cron_mode'] == 0) {
		$result_post = $ustore->dle_db->query("SELECT * FROM " . PREFIX . "_post p {$cat_join}WHERE {$stop_list}p.id > 0 {$searchcategory}{$approve}{$white_list} ORDER BY p.id DESC");
		// echo "SELECT * FROM " . PREFIX . "_post p {$cat_join}WHERE {$stop_list}p.id > 0 {$searchcategory}{$approve}{$white_list} ORDER BY p.id DESC".PHP_EOL;
	}
	
	if ($ustore->config['cron_mode'] == 1) {
		ignore_user_abort(true);
		$total_post = $ustore->dle_db->super_query("SELECT COUNT(p.id) as count FROM " . PREFIX . "_post p {$cat_join}WHERE {$stop_list}p.id > 0 {$searchcategory}{$approve}{$white_list}");
		// echo "SELECT COUNT(p.id) as count FROM " . PREFIX . "_post p {$cat_join}WHERE {$stop_list}p.id > 0 {$searchcategory}{$approve}{$white_list}".PHP_EOL;
			  
		$start_from = 0;
		$max_step = $ustore->config['cron_threads'] * 10;
		$total = $total_post['count'] + $max_step;
		
row_init:		
		if ($start_from >= $total) {
			file_put_contents(ENGINE_DIR . '/inc/ustore/reports/cron.log', '', LOCK_EX);
			die();
		}
		
		$result_post = $ustore->dle_db->query("SELECT * FROM " . PREFIX . "_post p {$cat_join}WHERE {$stop_list}p.id > 0 {$searchcategory}{$approve}{$white_list} ORDER BY p.id DESC LIMIT {$start_from}, {$max_step}");
	}
	
	if ($ustore->config['cron_mode'] == 2) {
		ignore_user_abort(true);
		$max_step = $ustore->config['cron_threads'] * 1;
		
		$cron_cache = dle_cache('ustore_cron', false, false);
		if ($cron_cache == false || $cron_cache != "{$ustore->config['cron_cats']}-{$ustore->config['cron_black_list']}-{{$ustore->config['cron_type']}}-{$ustore->config['cron_white_list']}") {
			$total_post = $ustore->dle_db->super_query("SELECT COUNT(p.id) as count FROM " . PREFIX . "_post p {$cat_join}WHERE {$stop_list}p.id > 0 {$searchcategory}{$approve}{$white_list}");
			// echo "SELECT COUNT(p.id) as count FROM " . PREFIX . "_post p {$cat_join}WHERE {$stop_list}p.id > 0 {$searchcategory}{$approve}{$white_list}".PHP_EOL;
			  
			$start_from = 0;
			$total = $total_post['count'] + $max_step;
			
			$cron_cache = array(
				'params' => "{$ustore->config['cron_cats']}-{$ustore->config['cron_black_list']}-{{$ustore->config['cron_type']}}-{$ustore->config['cron_white_list']}",
				'start_from' => $start_from,
				'total' => $total_post['count'],
			);
			create_cache('ustore_cron', json_encode($cron_cache));
		} else {
			$cron_cache = json_decode($cron_cache, true);
			
			$start_from = $cron_cache['start_from'];
			$total = $cron_cache['total'] + $max_step;
		}
		
		if ($start_from >= $total) {
			file_put_contents(ENGINE_DIR . '/inc/ustore/reports/cron.log', '', LOCK_EX);
			clear_cache( array('ustore_cron') );
			die();
		}
		
		$result_post = $ustore->dle_db->query("SELECT * FROM " . PREFIX . "_post p {$cat_join}WHERE {$stop_list}p.id > 0 {$searchcategory}{$approve}{$white_list} ORDER BY p.id DESC LIMIT {$start_from}, {$max_step}");
	}
	
	$cache_cats = array();
	
	while ($post = $result_post->fetch_assoc()) {
					
		$threads++;
		if (in_array($post['id'], $black_list))
			continue;
		
		$only_url = isset($ustore->config['only_url']) ? true : false;
		$only_no_url = isset($ustore->config['only_no_url']) ? true : false;
		// ----- BEGIN UPDATE POST -----
		$time = microtime(true);
		$result = $ustore->replace_thread($post['id'], array('cron'), $rewrite = 0, $post, false, $only_url, false, $only_no_url);
		$time = round(microtime(true) - $time, 3);
		$api_time = round($result['api_time'], 3);
		
		// if ($result['status'] == 'error')
			// echo "Time: {$time}-{$api_time} Not-found: {$post['id']} {$result['out_base_name']}: {$result['out_base_id']}".PHP_EOL;
		
		// if ($result['status'] == 'exist')
			// echo "Time: {$time}-{$api_time} Exist: {$post['id']} {$result['out_base_name']}: {$result['out_base_id']}".PHP_EOL;
		
		// if ($result['status'] == 'ok') 
			// echo "Time: {$time}-{$api_time} Updated: {$post['id']} {$result['out_base_name']}: {$result['out_base_id']}".PHP_EOL;
			
		// ----- END UPDATE POST -----

		if ($threads == $ustore->config['cron_threads'] AND $ustore->config['cron_mode'] == 0) {
			$threads = 0;

			if ($ustore->config['cron_interval'] > 0) {
				ob_flush();
				flush();

				sleep($ustore->config['cron_interval']);
			} else sleep(1);
		} 
	}
	
	$start_from = $start_from+$max_step;	
	if ($ustore->config['cron_mode'] == 1) {
		sleep($ustore->config['cron_interval']);	
		goto row_init;
		
	} elseif ($ustore->config['cron_mode'] == 2) {
		echo "Total: {$cron_cache['total']}, Step: {$start_from}".PHP_EOL;
		$cron_cache['start_from'] = $start_from;
		create_cache('ustore_cron', json_encode($cron_cache));
	}
	
}

function lock($name) {
    $lock = ENGINE_DIR."/inc/ustore/reports/$name.lock";
    $aborted = file_exists($lock) ? filemtime($lock) : null;
    $fp = fopen($lock, 'w');

    if (!flock($fp, LOCK_EX|LOCK_NB)) {
        // заблокировать файл не удалось, значит запущена копия скрипта
        return false;
    }
    // получили блокировку файла

    // если файл уже существовал значит предыдущий запуск кто-то прибил извне
    if ($aborted) {
        error_log(sprintf("Запуск скрипта %s был завершен аварийно %s", $name, date('c', $aborted)));
    }

    // снятие блокировки по окончанию работы 
    // если этот callback, не будет выполнен, то блокировка 
    // все равно будет снята ядром, но файл останется
    register_shutdown_function(function() use ($fp, $lock) {
        flock($fp, LOCK_UN);
        fclose($fp);
        unlink($lock);
    });

    return true;
}