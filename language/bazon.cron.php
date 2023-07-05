<?php
	header('Content-Type: text/plain; charset=utf-8');

	define('DATALIFEENGINE', true);
	define('LOGGED_IN', true);

	define('ROOT_DIR', dirname (__FILE__));
	define('ENGINE_DIR', ROOT_DIR.'/engine');
		
	require_once (ENGINE_DIR . '/classes/plugins.class.php');
	require_once (DLEPlugins::Check(ENGINE_DIR.'/inc/include/functions.inc.php'));
	include_once (DLEPlugins::Check(ROOT_DIR . '/language/' . $config['langs'] . '/website.lng'));
	
	$member_id = array();
	$user_group = array();
	$member_id['user_group'] = 1;
	$user_group[$member_id['user_group']]['allow_image_upload'] = 1;
	
	date_default_timezone_set ($config['date_adjust']);

	include_once (DLEPlugins::Check(ENGINE_DIR.'/classes/bazon.class.php'));
	$bazon = new bazon();

	if(empty($bazon_config['token']) or empty($bazon_config['kinopoisk_id']) or empty($bazon_config['cron_pass'])) die('Не настроен модуль');
	
	if((!empty($argv[1]) && $argv[1]!=$bazon_config['cron_pass']) or (!empty($_GET['pass']) && $_GET['pass']!=$bazon_config['cron_pass']) or (empty($argv[1]) && empty($_GET['pass'])))
		die('Не верный пароль');
	
	$add_all = (!empty($argv[2]) && $argv[2]=='add_all') ? true : false;
	$pages = ($add_all) ? $bazon->get_pages() : 1;
	
	$added = array();
	
	for ($page = 1; $page <= $pages; $page++) {
		
		$api = $bazon->get_api_updates($page);

		if(!empty($api['error'])){
			echo $api['error'];
			die();
		}
		
		$try = 0;
		
		while(empty($api['results'])){
			
			$try++;
			
			if($try==5){
				die('API Bazon не доступен');
			}
			
			echo "Ждём секунду...\r\n";
			
			sleep(1);
			
			$api = $bazon->get_api_updates($page);
		}

		$bazon_films = $api['results'];

		$xfields = xfieldsload();

		foreach($bazon_films as $api_res){
			
			if(empty($api_res['kinopoisk_id'])) continue;
			if(in_array($api_res['kinopoisk_id'], $added)) continue;
			
			$site_films = $bazon->get_site_film($api_res['kinopoisk_id']);
			
			if(!empty($site_films)) {
				
				if(empty($bazon_config['autoupdate']) or $add_all) continue;
				
				foreach($site_films as $row){
					
					if($api_res['date']>strtotime($row['date'])){
						$postedxfields = xfieldsdataload($row['xfields']);
						$bazon->bazon_update(true);
						echo "{$api_res['kinopoisk_id']} - update\r\n";
					}
				}
				
			} else {
				
				if(!empty($bazon_config['no_country'])){
					
					$countries = explode(',', $bazon_config['no_country']);
					
					$exit = false;
					
					foreach($countries as $c){
						if(stripos($api_res['info']['country'], trim($c)) !== false){
							$exit = true;
							break;
						}
					}
					
					if($exit) continue;
				}
				
				if(empty($bazon_config['autoadd'])) continue;
				
				if(!empty($bazon_config['autoaddcat'])){
					
					if(empty($api_res['serial'])){
						if($bazon_config['autoaddcat']=='serial') continue;
					}
					else {
						if($bazon_config['autoaddcat']=='film') continue;
					}
				}
				
				if(!empty($bazon_config['min_qual'])){
					if($bazon_config['min_qual']>$api_res['max_qual']) continue;
				}
				
				if(!empty($bazon_config['noads'])){
					if(!empty($api_res['camrip']) or !empty($api_res['ads'])) continue;
				}
				
				if(!empty($bazon_config['notrailer']) && !empty($api_res['trailer'])) continue;
				
				$bazon_cats = $bazon->get_bazon_cats();
				
				if(empty($bazon_cats)){
					echo "{$api_res['kinopoisk_id']} - not added, empty categories\r\n";
					continue;
				}
				
				$newpostedxfields = $bazon->get_bazon_xfields();
				
				if(empty($bazon_config['notext'])){
					$full_story = str_replace(array('<br>', '<br/>','<br />'), "\r\n", $api_res['info']['description']);
					$short_story = $bazon->get_short_story($full_story);
				} else {
					$full_story = $short_story = '';
				}

				$title = (!empty($bazon_config['title'])) ? $bazon->get_taged($bazon_config['title']) : '';
				$metatitle = (!empty($bazon_config['metatitle'])) ? $bazon->get_taged($bazon_config['metatitle']) : '';
				$chpu = (!empty($bazon_config['chpu'])) ? $bazon->get_taged($bazon_config['chpu']) : $title;
				
				$row = $db->super_query("SELECT name, user_id FROM " . USERPREFIX . "_users WHERE user_group = 1 LIMIT 1");
				$author = $row['name'];
				$userid = $row['user_id'];
				
				if(!empty($bazon_config['posterdownload']) && !empty($newpostedxfields[$bazon_config['poster']])){
					
					$response = $bazon->download_poster($newpostedxfields, $xfields, $author);
					
					if(!empty($response['xfvalue'])){
						$newpostedxfields[$bazon_config['poster']] = $response['xfvalue'];
					} else {
						$newpostedxfields[$bazon_config['poster']] = '';
					}
				}
				
				$xf_search_words = array();
				foreach ($xfields as $name => $value) {
					if ( $value[6] AND !empty( $newpostedxfields[$value[0]] ) ) {
						$temp_array = explode( ",", $newpostedxfields[$value[0]] );
						foreach ($temp_array as $value2) {
							$value2 = trim($value2);
							if($value2) $xf_search_words[] = array( $db->safesql($value[0]), $db->safesql($value2) );
						}
					}
				}
				
				$filecontents = array();
				if(count($newpostedxfields)) {
					foreach($newpostedxfields as $xfielddataname => $xfielddatavalue) {
						if( $xfielddatavalue === "" ) {
							continue;
						}
						$xfielddatavalue = str_replace( "|", "&#124;", $xfielddatavalue );
						$filecontents[] = $db->safesql("{$xfielddataname}|{$xfielddatavalue}");
					}
					$filecontents = implode( "||", $filecontents );
				} else	$filecontents = '';
				
				$alt_name = totranslit(stripslashes($chpu), true, false);
				$added_time = time();
				$thistime = date( "Y-m-d H:i:s", $added_time );
				
				$metatags = create_metatags($full_story);
				$category_list = implode(',', $bazon_cats);
				$allow_comm = 1;
				$allow_main = 1;
				$allow_br = 1;
				$news_fixed = 0;
				$catalog_url = '';
				$_POST['tags'] = '';
				$approve = (empty($bazon_config['autonomoder'])) ? 1 : 0;		
				
				$title = $db->safesql($title);
				$metatitle = $db->safesql($metatitle);
				$full_story = $db->safesql($full_story);
				$short_story = $db->safesql($short_story);
				
				$db->query( "INSERT INTO " . PREFIX . "_post (date, autor, short_story, full_story, xfields, title, descr, keywords, category, alt_name, allow_comm, approve, allow_main, fixed, allow_br, symbol, tags, metatitle) values ('$thistime', '{$author}', '$short_story', '$full_story', '$filecontents', '$title', '{$metatags['description']}', '{$metatags['keywords']}', '$category_list', '$alt_name', '$allow_comm', '$approve', '$allow_main', '$news_fixed', '$allow_br', '$catalog_url', '{$_POST['tags']}', '$metatitle')" );
				
				$id = $db->insert_id();
				
				$allow_rating = 1;
				$add_vote = 0;
				$disable_index = (!empty($bazon_config['noindex'])) ? 1 : 0;
				$disable_search = 0;
				$need_pass = 0;
				$allow_rss = 0;
				$allow_rss_turbo = 0;
				$allow_rss_dzen = 0;
				$related_ids = '';
				$group_regel = '';
				
				$db->query( "INSERT INTO " . PREFIX . "_post_extras (news_id, allow_rate, votes, disable_index, related_ids, access, user_id, disable_search, need_pass, allow_rss, allow_rss_turbo, allow_rss_dzen) VALUES('{$id}', '{$allow_rating}', '{$add_vote}', '{$disable_index}', '{$related_ids}', '{$group_regel}', '{$userid}', '{$disable_search}', '{$need_pass}', '{$allow_rss}', '{$allow_rss_turbo}', '{$allow_rss_dzen}')" );
				
				if(!empty($bazon_cats) AND $approve AND $bazon->mysql_table_exist(PREFIX . "_post_extras_cats")) {
					$cat_ids = array();
					foreach ($bazon_cats as $value) {
						$cat_ids[] = "('" . $id . "', '" . trim($value) . "')";
					}
					$cat_ids = implode(", ", $cat_ids);
					$db->query("INSERT INTO " . PREFIX . "_post_extras_cats (news_id, cat_id) VALUES " . $cat_ids);
				}
				
				if (count($xf_search_words) AND $approve) {
					$temp_array = array();
					foreach ($xf_search_words as $value) {
						$temp_array[] = "('" . $id . "', '" . $value[0] . "', '" . $value[1] . "')";
					}
					$xf_search_words = implode(", ", $temp_array);
					$db->query("INSERT INTO " . PREFIX . "_xfsearch (news_id, tagname, tagvalue) VALUES " . $xf_search_words);
				}
				
				$db->query("UPDATE " . USERPREFIX . "_users SET news_num=news_num+1 WHERE user_id='{$userid}'");
				$db->query("UPDATE " . PREFIX . "_images SET news_id='{$id}' WHERE author = '$author' AND news_id = '0'");
				
				clear_cache(array('news_', 'tagscloud_', 'archives_', 'calendar_', 'topnews_', 'rss', 'stats'));
				
				$added[] = $api_res['kinopoisk_id'];
				
				echo "{$api_res['kinopoisk_id']} - add\r\n";
			}
		}
	}

	echo "END\r\n";
?>