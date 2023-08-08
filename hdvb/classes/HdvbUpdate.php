<?php

class HdvbUpdate
{

	protected $config;

	protected $first = false;

	public $search = array(
		'kinopoisk_id',
		'world_art_id',
	);

	public $quality = array(
		'CAMRip',
		'TS',
		'DVDScr',
		'TC',
		'DVDRip',
		'WEBRip',
		'HDTVRip',
		'HDTV',
		'WEB-DLRip',
		'HDRip',
		'WEB-DL',
		'BDRip',
		'BDRemux',
		'BluRay',
		'4К'
	);

	public function __construct($config)
	{

		$this->config = $config;

	}

	// Start

	public function start()
	{

		global $db;

		if (!$this->config['on'])
			return false;

		if (!$this->config['update']['movies']['on'] && !$this->config['update']['serials']['on'])
			return false;

		$search = false;

		foreach ($this->search as $field) {
			if ($this->config['xfields']['search'][$field])
				$search = true;
		}

		if (!$search)
			return false;

		if (!$this->config['xfields']['write']['source'])
			return false;

		$cron = intval($this->config['update']['type']) === 1 ? true : false;

		if ($cron)
			$this->update();
		else {

			$row = $db->super_query("SELECT `start_update` FROM ". PREFIX . "_hdvb_update ORDER BY `start_update` DESC LIMIT 1");
			$last_update = intval($row['start_update']) ? intval($row['start_update']) : false;

			if ($last_update) {

				$interval = $this->config['update']['interval'];

				if (stripos($interval, 'h') !== false)
					$interval = (intval($interval) * 60 * 60);
				elseif (stripos($interval, 'm') !== false)
					$interval = (intval($interval) * 60);
				else
					$interval = (60 * 60 * 3); // default inerval 3 hours

				$next_update = $last_update + $interval;

				if ($next_update > time())
					return false;

			} else
				$this->first = true;

			$vote_mark = time();
			$session_id = session_id();

			$db->query("UPDATE " . PREFIX . "_hdvb_update_vote SET `vote_mark` = {$vote_mark}, `session_id` = '{$session_id}' WHERE `vote_mark` < " . ($vote_mark - 60));

			$row = $db->super_query("SELECT `session_id` FROM " . PREFIX . "_hdvb_update_vote WHERE `vote_mark` > 0 LIMIT 1");

			if ($session_id != $row['session_id'])
				return false;

			$this->update();

		}

	}

	// Update

	protected function update()
	{

		global $db;

		$db->query("UPDATE " . PREFIX . "_hdvb_update SET `start_update` = " . time());

		$api = new HdvbApi($this->config['api']);

		$updates = $api->getUpdates();

		if ($updates['movies'])
			$this->movies($updates['movies']);

		if ($updates['serials'])
			$this->serials($updates['serials']);

	}

	// Search

	protected function search($updates)
	{

		global $db;

		$find = array();
		$select = array();

		foreach ($this->search as $search) {
			if (!$this->config['xfields']['search'][$search])
				continue;

			$xfield = $this->config['xfields']['search'][$search];

			$ids = array();

			foreach ($updates as $update) {
				if (intval($update[$search]))
					$ids[] = intval($update[$search]);
			}

			if ($ids) {
				$select[] = "SUBSTRING_INDEX(SUBSTRING_INDEX(xfields,  '{$xfield}|', -1), '||', 1) `{$search}`";
				$find[] = "SUBSTRING_INDEX(SUBSTRING_INDEX(xfields,  '{$xfield}|', -1), '||', 1) IN (" . implode(',', $ids) . ')';
			}
		}

		$query = 'SELECT *, ' . implode(', ', $select) . ' FROM ' . PREFIX . '_post';
		
		if ($find)
			$query .= ' WHERE ' . implode(' OR ', $find);

		$result = $db->query($query);

		while ($row = $db->get_row($result)) {
			foreach ($this->search as $search) {
				if (!$this->config['xfields']['search'][$search])
					continue;

				if (intval($row[$search]) && false !== $key = array_search($row[$search], array_column($updates, $search)))
					$updates[$key]['post'] = $row;
			}
		}

		$db->free();

		return $updates;

	}

	// Movies

	protected function movies($data)
	{

		global $db;

		if (!$data)
			return false;

		if ($this->first) {
			$end = end($data);
			$db->query("UPDATE " . PREFIX . "_hdvb_update_log SET `update_id` = " . (intval($end['update_id']) ? intval($end['update_id']) : 0) . " WHERE `id` = 1");
			return false;
		}

		$row = $db->super_query("SELECT `update_id` FROM " . PREFIX . "_hdvb_update_log WHERE `id` = 1");
		$last_update_id = $row['update_id'] ? $row['update_id'] : 0;

		krsort($data);

		$need_update = array();

		foreach ($data as $entry) {
			if ($entry['update_id'] > $last_update_id)
				$need_update[] = $entry;
		}

		if (!$need_update)
			return false;

		$updates = $this->search($need_update);

		foreach ($updates as $update) {
			if ($update['post'] && $this->config['update']['movies']['on'])
				$this->movie_update($update);
			else {
				if ($this->config['update']['movies']['add'])
					$this->movie_insert($update);
			}

			$db->query("UPDATE " . PREFIX . "_hdvb_update_log SET `update_id` = " . intval($update['update_id']) . " WHERE `id` = 1 ");
		}

		return true;

	}

	protected function movie_update($data)
	{

		$news = new HdvbNews($data['post']['id']);

		$news->config = $this->config;

		if (intval($data['post']['approve']))
			$news->approve = true;

		$xfields = $news->xfields->toArray($data['post']['xfields']);

		if ($this->config['xfields']['not_update'] && intval($xfields[$this->config['xfields']['not_update']]))
			return false;

		// Build

		$fields = array(
			
			'source',

			'year',

			'quality',
			'translation',

			'custom_quality',
			'custom_translation',

			'title_ru',
			'title_en'

		);

		$post_data = array();
		$update_data = array();

		foreach ($fields as $field) {
			if ($this->config['xfields']['write'][$field] && $xfields[$this->config['xfields']['write'][$field]])
				$post_data[$field] = $xfields[$this->config['xfields']['write'][$field]];

			if ($data[$field])
				$update_data[$field] = $data[$field];
		}

		// Xfields

		$news->data['xfields'] = $xfields;

		if ($this->config['xfields']['write']['source'] && $update_data['source'] && $update_data['source'] != $post_data['source'])
			$news->data['xfields'][$this->config['xfields']['write']['source']] = $update_data['source'];

		if ($this->config['xfields']['write']['year'] && $update_data['year'] && $update_data['year'] != $post_data['year'])
			$news->data['xfields'][$this->config['xfields']['write']['year']] = $update_data['year'];

		if ($this->config['xfields']['write']['quality'] && $update_data['quality'] && $update_data['quality'] != $post_data['quality']) {
			$news->data['xfields'][$this->config['xfields']['write']['quality']] = $update_data['quality'];

		if ($this->config['xfields']['write']['custom_quality'] && $update_data['quality']) {
			$update_data['custom_quality'] = $this->custom_replacement($update_data['quality'], $this->config['custom']['qualities']);

			if ($update_data['custom_quality'] != $post_data['custom_quality'])
				$news->data['xfields'][$this->config['xfields']['write']['custom_quality']] = $update_data['custom_quality'];
		}

		if ($this->config['xfields']['write']['custom_translation'] && $update_data['translation']) {
			$update_data['custom_translation'] = $this->custom_replacement($update_data['translation'], $this->config['custom']['translations']);

			if ($update_data['custom_translation'] != $post_data['custom_translation'])
				$news->data['xfields'][$this->config['xfields']['write']['custom_translation']] = $update_data['custom_translation'];
		}

		if ($this->config['xfields']['write']['translation'] && $update_data['translation'] && $update_data['translation'] != $post_data['translation'])
			$news->data['xfields'][$this->config['xfields']['write']['translation']] = $update_data['translation'];

			if ($this->config['update']['movies']['up'] && intval($data['post']['approve']) && strtotime($data['post']['date']) <= time()) {
				$post_quality_key = intval(array_search($post_data['quality'], $this->quality));
				$update_quality_key = intval(array_search($update_data['quality'], $this->quality));

				if ($post_data['quality'] && $update_quality_key > $post_quality_key)
					$news->data['date'] = date('Y-m-d H:i:s', time());
			}
		}

		if ($news->data['xfields'] == $xfields)
			unset($news->data['xfields']);

		// Seo

		$update_data['type'] = 'movie';

		if ($this->config['seo']['on']) {
			if ($this->config['seo']['url']) {
				$seo_url = $this->seo($update_data, $this->config['seo']['url'], true);

				if ($seo_url != $data['post']['alt_name'])
					$news->data['alt_name'] = $seo_url;
			}

			if ($this->config['seo']['title']) {
				$seo_title = $this->seo($update_data, $this->config['seo']['title']);

				if ($seo_title != $data['post']['title'])
					$news->data['title'] = $seo_title;
			}

			if ($this->config['seo']['meta']['title']) {
				$seo_meta_title = $this->seo($update_data, $this->config['seo']['meta']['title']);

				if ($seo_meta_title != $data['post']['metatitle'])
					$news->data['metatitle'] = $seo_meta_title;
			}

			if ($this->config['seo']['meta']['description']) {
				$seo_meta_description = $this->seo($update_data, $this->config['seo']['meta']['description']);

				if ($seo_meta_description != $data['post']['descr'])
					$news->data['descr'] = $seo_meta_description;
			}
		}

		$news->save();

	}

	public function movie_insert($data)
	{

		$news = new HdvbNews;

		$news->config = $this->config;

		// Build

		$fields = array(
			
			'source',

			'year',

			'quality',
			'translation',

			'custom_quality',
			'custom_translation',

			'title_ru',
			'title_en'

		);

		$insert_data = array();

		foreach ($fields as $field) {
			if ($data[$field])
				$insert_data[$field] = $data[$field];
		}

		// Xfields

		if ($this->config['xfields']['search']['kinopoisk_id'] && $data[$this->config['xfields']['search']['kinopoisk_id']])
			$news->data['xfields'][$this->config['xfields']['search']['kinopoisk_id']] = $data[$this->config['xfields']['search']['kinopoisk_id']];

		if ($this->config['xfields']['search']['world_art_id'] && $data[$this->config['xfields']['search']['world_art_id']])
			$news->data['xfields'][$this->config['xfields']['search']['world_art_id']] = $data[$this->config['xfields']['search']['world_art_id']];

		if ($this->config['xfields']['write']['source'] && $insert_data['source'])
			$news->data['xfields'][$this->config['xfields']['write']['source']] = $insert_data['source'];

		if ($this->config['xfields']['write']['year'] && $insert_data['year'])
			$news->data['xfields'][$this->config['xfields']['write']['year']] = $insert_data['year'];

		if ($this->config['xfields']['write']['quality'] && $insert_data['quality'])
			$news->data['xfields'][$this->config['xfields']['write']['quality']] = $insert_data['quality'];

		if ($this->config['xfields']['write']['translation'] && $insert_data['translation'])
			$news->data['xfields'][$this->config['xfields']['write']['translation']] = $insert_data['translation'];

		if ($this->config['xfields']['write']['custom_quality'] && $insert_data['quality']) {
			$insert_data['custom_quality'] = $this->custom_replacement($insert_data['quality'], $this->config['custom']['qualities']);

			if ($insert_data['custom_quality'] != $post_data['custom_quality'])
				$news->data['xfields'][$this->config['xfields']['write']['custom_quality']] = $insert_data['custom_quality'];
		}

		if ($this->config['xfields']['write']['custom_translation'] && $insert_data['translation']) {
			$insert_data['custom_translation'] = $this->custom_replacement($insert_data['translation'], $this->config['custom']['translations']);

			if ($insert_data['custom_translation'] != $post_data['custom_translation'])
				$news->data['xfields'][$this->config['xfields']['write']['custom_translation']] = $insert_data['custom_translation'];
		}

		// Seo

		$insert_data['type'] = 'movie';

		if ($this->config['seo']['on']) {
			if ($this->config['seo']['url']) {
				$seo_url = $this->seo($insert_data, $this->config['seo']['url'], true);

				if ($seo_url)
					$news->data['alt_name'] = $seo_url;
			}

			if ($this->config['seo']['title']) {
				$seo_title = $this->seo($insert_data, $this->config['seo']['title']);

				if ($seo_title)
					$news->data['title'] = $seo_title;
			}

			if ($this->config['seo']['meta']['title']) {
				$seo_meta_title = $this->seo($insert_data, $this->config['seo']['meta']['title']);

				if ($seo_meta_title)
					$news->data['metatitle'] = $seo_meta_title;
			}

			if ($this->config['seo']['meta']['description']) {
				$seo_meta_description = $this->seo($insert_data, $this->config['seo']['meta']['description']);

				if ($seo_meta_description)
					$news->data['descr'] = $seo_meta_description;
			}
		}

		if (!$news->data['alt_name'])
			$news->data['alt_name'] = $this->seo($insert_data, '[title_ru]{title_ru}[/title_ru]', true);

		if (!$news->data['title'])
			$news->data['title'] = $this->seo($insert_data, '[title_ru]{title_ru}[/title_ru]');

		$news->save();

	}

	// Serials

	protected function serials($data)
	{

		global $db;

		if (!$data)
			return false;

		if ($this->first) {
			$end = end($data);
			$db->query("UPDATE " . PREFIX . "_hdvb_update_log SET `update_id` = " . (intval($end['update_id']) ? intval($end['update_id']) : 0) . " WHERE `id` = 2");
			return false;
		}

		$row = $db->super_query("SELECT update_id FROM " . PREFIX . "_hdvb_update_log WHERE id = 2");
		$last_update_id = $row['update_id'] ? $row['update_id'] : 0;

		krsort($data);

		$need_update = array();

		foreach ($data as $entry) {
			if ($entry['update_id'] > $last_update_id)
				$need_update[] = $entry;
		}

		if (!$need_update)
			return false;

		$updates = $this->search($need_update);

		foreach ($updates as $update) {
			if ($update['post'] && $this->config['update']['serials']['on'])
				$this->serial_update($update);
			else {
				if ($this->config['update']['serials']['add'])
					$this->serial_insert($update);
			}

			$db->query("UPDATE " . PREFIX . "_hdvb_update_log SET `update_id` = " . intval($update['update_id']) . " WHERE `id` = 2 ");
		}

		return true;

	}

	protected function serial_update($data)
	{

		global $db;

		$news = new HdvbNews($data['post']['id']);

		$news->config = $this->config;

		if (intval($data['post']['approve']))
			$news->approve = true;

		$xfields = $news->xfields->toArray($data['post']['xfields']);

		if ($this->config['xfields']['not_update'] && intval($xfields[$this->config['xfields']['not_update']]))
			return false;

		// Build

		$fields = array(
			
			'source',

			'year',

			'quality',
			'translation',
			'translations',

			'custom_quality',
			'custom_translation',
			'custom_translations',

			'season',
			'episode',

			'format_season',
			'format_episode',

			'title_ru',
			'title_en'

		);

		$post_data = array();
		$update_data = array();

		foreach ($fields as $field) {
			if ($this->config['xfields']['write'][$field] && $xfields[$this->config['xfields']['write'][$field]])
				$post_data[$field] = $xfields[$this->config['xfields']['write'][$field]];

			if ($data[$field] && $field != 'translations')
				$update_data[$field] = $data[$field];
		}

		$update_season = 0;
		$update_episode = 0;

		$update_translations = array();
		$update_format_translations = array();

		$data['translations'] = $this->priority($data['translations']);

		foreach ($data['translations'] as $item) {
			$update_translations[] = $item['translation'];

			if ($this->config['xfields']['write']['custom_translations'])
				$update_format_translations[] = $this->custom_replacement($item['translation'], $this->config['custom']['translations']);

			foreach ($item['seasons'] as $season) {
				if (intval($season['season_number']) > $update_season) {
					$update_season = intval($season['season_number']);

					$update_episode = end($season['episodes']);
					$update_episode = intval($update_episode['num']);
				}

				if (intval($season['season_number']) == $update_season) {
					$episode = end($season['episodes']);
					$episode = intval($episode['num']);

					if ($episode && $episode > $update_episode)
						$update_episode = $episode;
				}
			}
		}

		if ($update_season) {
			$update_data['season'] = $update_season;

			if ($this->config['xfields']['write']['format_season'] && $this->config['xfields']['write']['format_season_type'])
				$update_data['format_season'] = $this->format_season($this->config['xfields']['write']['format_season_type'], $update_season);
		}

		if ($update_episode) {
			$update_data['episode'] = $update_episode;

			if ($this->config['xfields']['write']['format_episode'] && $this->config['xfields']['write']['format_episode_type'])
				$update_data['format_episode'] = $this->format_episode($this->config['xfields']['write']['format_episode_type'], $update_episode);
		}

		$update_translations = implode(', ', $update_translations);

		if ($update_translations)
			$update_data['translations'] = $update_translations;

		if ($update_format_translations) {
			$update_format_translations = implode(', ', $update_format_translations);

			if ($update_format_translations)
				$update_data['custom_translations'] = $update_format_translations;
		}

		if ($data['translations']) {
			foreach ($data['translations'] as $item) {
				$update_data = array_merge($update_data, $item);
				break;
			}
		}

		// Xfields

		$news->data['xfields'] = $xfields;

		if ($this->config['xfields']['write']['source'] && $update_data['source'] && $update_data['source'] != $post_data['source'])
			$news->data['xfields'][$this->config['xfields']['write']['source']] = $update_data['source'];

		if ($this->config['xfields']['write']['year'] && $update_data['year'] && $update_data['year'] != $post_data['year'])
			$news->data['xfields'][$this->config['xfields']['write']['year']] = $update_data['year'];

		if ($this->config['xfields']['write']['quality'] && $update_data['quality'] && $update_data['quality'] != $post_data['quality'])
			$news->data['xfields'][$this->config['xfields']['write']['quality']] = $update_data['quality'];

		if ($this->config['xfields']['write']['translation'] && $update_data['translation'] && $update_data['translation'] != $post_data['translation'])
			$news->data['xfields'][$this->config['xfields']['write']['translation']] = $update_data['translation'];

		if ($this->config['xfields']['write']['translations'] && $update_data['translations'] && $update_data['translations'] != $post_data['translations'])
			$news->data['xfields'][$this->config['xfields']['write']['translations']] = $update_data['translations'];

		if ($this->config['xfields']['write']['custom_quality'] && $update_data['quality']) {
			$update_data['custom_quality'] = $this->custom_replacement($update_data['quality'], $this->config['custom']['qualities']);

			if ($update_data['custom_quality'] != $post_data['custom_quality'])
				$news->data['xfields'][$this->config['xfields']['write']['custom_quality']] = $update_data['custom_quality'];
		}

		if ($this->config['xfields']['write']['custom_translation'] && $update_data['translation']) {
			$update_data['custom_translation'] = $this->custom_replacement($update_data['translation'], $this->config['custom']['translations']);

			if ($update_data['custom_translation'] != $post_data['custom_translation'])
				$news->data['xfields'][$this->config['xfields']['write']['custom_translation']] = $update_data['custom_translation'];
		}

		if ($this->config['xfields']['write']['custom_translations'] && $update_data['custom_translations'] && $update_data['custom_translations'] != $post_data['custom_translations'])
			$news->data['xfields'][$this->config['xfields']['write']['custom_translations']] = $update_data['custom_translations'];

		if ($this->config['xfields']['write']['season'] && $update_data['season'] && $update_data['season'] != $post_data['season'])
			$news->data['xfields'][$this->config['xfields']['write']['season']] = $update_data['season'];

		if ($this->config['xfields']['write']['episode'] && $update_data['episode'] && $update_data['episode'] != $post_data['episode'])
			$news->data['xfields'][$this->config['xfields']['write']['episode']] = $update_data['episode'];

		if ($this->config['update']['serials']['up'] && intval($data['post']['approve']) && strtotime($data['post']['date']) <= time()) {
			if ($update_data['season'] && $post_data['season'] && $update_data['episode'] && $post_data['episode']) {
				if ($update_data['season'] > $post_data['season'] || ($update_data['season'] == $post_data['season'] && $update_data['episode'] > $post_data['episode']))
					$news->data['date'] = date('Y-m-d H:i:s', time());
			}
		}

		if ($this->config['xfields']['write']['format_season'] && $update_data['format_season'] && $update_data['format_season'] != $post_data['format_season'])
			$news->data['xfields'][$this->config['xfields']['write']['format_season']] = $update_data['format_season'];

		if ($this->config['xfields']['write']['format_episode'] && $update_data['format_episode'] && $update_data['format_episode'] != $post_data['format_episode'])
			$news->data['xfields'][$this->config['xfields']['write']['format_episode']] = $update_data['format_episode'];

		if ($news->data['xfields'] == $xfields)
			unset($news->data['xfields']);

		// Seo

		$update_data['type'] = 'serial';

		if ($this->config['seo']['on']) {
			if ($this->config['seo']['url']) {
				$seo_url = $this->seo($update_data, $this->config['seo']['url'], true);

				if ($seo_url != $data['post']['alt_name'])
					$news->data['alt_name'] = $seo_url;
			}

			if ($this->config['seo']['title']) {
				$seo_title = $this->seo($update_data, $this->config['seo']['title']);

				if ($seo_title != $data['post']['title'])
					$news->data['title'] = $seo_title;
			}

			if ($this->config['seo']['meta']['title']) {
				$seo_meta_title = $this->seo($update_data, $this->config['seo']['meta']['title']);

				if ($seo_meta_title != $data['post']['metatitle'])
					$news->data['metatitle'] = $seo_meta_title;
			}

			if ($this->config['seo']['meta']['description']) {
				$seo_meta_description = $this->seo($update_data, $this->config['seo']['meta']['description']);

				if ($seo_meta_description != $data['post']['descr'])
					$news->data['descr'] = $seo_meta_description;
			}
		}

		$news->save();

		// Updates

		$post_id = $data['post']['id'];

		if ($post_id && $this->config['serials']['updates']['on']) {
			$clear_cache = false;

			foreach ($data['translations'] as $item) {
				$token = $db->safesql($item['token']);
				$translation_id = $db->safesql($item['translation_id']);
				$quality = $db->safesql($item['quality']);

				$date = date('Y-m-d H:i:s', time());

				foreach ($item['seasons'] as $_item) {
					$season = $db->safesql($_item['season_number']);

					foreach ($_item['episodes'] as $episode) {
						if (intval($episode['date']) < (time() - 60 * 60 * 24))
							continue;

						$episode = intval($episode['num']);

						$result = $db->query("SELECT * FROM " . PREFIX . "_hdvb_update_serials WHERE `post_id` = '{$post_id}' AND `token` = '{$token}' AND `season` = '{$season}' AND `episode` = '{$episode}'");

						if (!$db->num_rows($result)) {
							$db->query("INSERT INTO " . PREFIX . "_hdvb_update_serials (`post_id`, `token`, `update_date`, `translation_id`, `quality`, `season`, `episode`) VALUES ('{$post_id}', '{$token}', '{$date}', '{$translation_id}', '{$quality}', '{$season}', '{$episode}')");

							$clear_cache = true;
						}
					}
				}
			}

			if ($clear_cache)
				clear_cache(array('hdvb_updates'));
		}

	}

	public function serial_insert($data)
	{

		global $db;

		$news = new HdvbNews;

		$news->config = $this->config;

		// Build

		$fields = array(
			
			'source',

			'year',

			'quality',
			'translation',
			'translations',

			'custom_quality',
			'custom_translation',
			'custom_translations',

			'season',
			'episode',

			'format_season',
			'format_episode',

			'title_ru',
			'title_en'

		);

		$insert_data = array();

		foreach ($fields as $field) {
			if ($data[$field] && $field != 'translations')
				$insert_data[$field] = $data[$field];
		}

		$update_season = 0;
		$update_episode = 0;

		$update_translations = array();
		$update_format_translations = array();

		$data['translations'] = $this->priority($data['translations']);

		foreach ($data['translations'] as $item) {
			$update_translations[] = $item['translation'];

			if ($this->config['xfields']['write']['custom_translations'])
				$update_format_translations[] = $this->custom_replacement($item['translation'], $this->config['custom']['translations']);

			if (!$item['seasons'])
				$item['seasons'] = $item['serial_episodes'];

			foreach ($item['seasons'] as $season) {
				if (intval($season['season_number']) > $update_season) {
					$update_season = intval($season['season_number']);
					
					$update_episode = end($season['episodes']);
					$update_episode = intval($update_episode['num'] ? $update_episode['num'] : $update_episode);
				}

				if (intval($season['season_number']) == $update_season) {
					$episode = end($season['episodes']);
					$episode = intval($episode['num'] ? $episode['num'] : $episode);

					if ($episode && $episode > $update_episode)
						$update_episode = $episode;
				}
			}
		}

		if ($update_season) {
			$insert_data['season'] = $update_season;

			if ($this->config['xfields']['write']['format_season'] && $this->config['xfields']['write']['format_season_type'])
				$insert_data['format_season'] = $this->format_season($this->config['xfields']['write']['format_season_type'], $update_season);
		}

		if ($update_episode) {
			$insert_data['episode'] = $update_episode;

			if ($this->config['xfields']['write']['format_episode'] && $this->config['xfields']['write']['format_episode_type'])
				$insert_data['format_episode'] = $this->format_episode($this->config['xfields']['write']['format_episode_type'], $update_episode);
		}

		$update_translations = implode(', ', $update_translations);

		if ($update_translations)
			$insert_data['translations'] = $update_translations;

		if ($update_format_translations) {
			$update_format_translations = implode(', ', $update_format_translations);

			if ($update_format_translations)
				$insert_data['custom_translations'] = $update_format_translations;
		}

		if ($data['translations']) {
			foreach ($data['translations'] as $item) {
				$insert_data = array_merge($insert_data, $item);
				break;
			}
		}

		// Xfields

		if ($this->config['xfields']['search']['kinopoisk_id'] && $data[$this->config['xfields']['search']['kinopoisk_id']])
			$news->data['xfields'][$this->config['xfields']['search']['kinopoisk_id']] = $data[$this->config['xfields']['search']['kinopoisk_id']];

		if ($this->config['xfields']['search']['world_art_id'] && $data[$this->config['xfields']['search']['world_art_id']])
			$news->data['xfields'][$this->config['xfields']['search']['world_art_id']] = $data[$this->config['xfields']['search']['world_art_id']];

		if ($this->config['xfields']['write']['source'] && $insert_data['source'])
			$news->data['xfields'][$this->config['xfields']['write']['source']] = $insert_data['source'];

		if ($this->config['xfields']['write']['year'] && $insert_data['year'])
			$news->data['xfields'][$this->config['xfields']['write']['year']] = $insert_data['year'];

		if ($this->config['xfields']['write']['quality'] && $insert_data['quality'])
			$news->data['xfields'][$this->config['xfields']['write']['quality']] = $insert_data['quality'];

		if ($this->config['xfields']['write']['translation'] && $insert_data['translation'])
			$news->data['xfields'][$this->config['xfields']['write']['translation']] = $insert_data['translation'];

		if ($this->config['xfields']['write']['translations'] && $insert_data['translations'])
			$news->data['xfields'][$this->config['xfields']['write']['translations']] = $insert_data['translations'];

		if ($this->config['xfields']['write']['custom_quality'] && $insert_data['quality']) {
			$insert_data['custom_quality'] = $this->custom_replacement($insert_data['quality'], $this->config['custom']['qualities']);

			if ($insert_data['custom_quality'] != $post_data['custom_quality'])
				$news->data['xfields'][$this->config['xfields']['write']['custom_quality']] = $insert_data['custom_quality'];
		}

		if ($this->config['xfields']['write']['custom_translation'] && $insert_data['translation']) {
			$insert_data['custom_translation'] = $this->custom_replacement($insert_data['translation'], $this->config['custom']['translations']);

			if ($insert_data['custom_translation'] != $post_data['custom_translation'])
				$news->data['xfields'][$this->config['xfields']['write']['custom_translation']] = $insert_data['custom_translation'];
		}

		if ($this->config['xfields']['write']['custom_translations'] && $insert_data['custom_translations'] && $insert_data['custom_translations'] != $post_data['custom_translations'])
			$news->data['xfields'][$this->config['xfields']['write']['custom_translations']] = $insert_data['custom_translations'];

		if ($this->config['xfields']['write']['season'] && $insert_data['season'])
			$news->data['xfields'][$this->config['xfields']['write']['season']] = $insert_data['season'];

		if ($this->config['xfields']['write']['episode'] && $insert_data['episode'])
			$news->data['xfields'][$this->config['xfields']['write']['episode']] = $insert_data['episode'];

		if ($this->config['xfields']['write']['format_season'] && $insert_data['format_season'] && $insert_data['format_season'] != $post_data['format_season'])
			$news->data['xfields'][$this->config['xfields']['write']['format_season']] = $insert_data['format_season'];

		if ($this->config['xfields']['write']['format_episode'] && $insert_data['format_episode'] && $insert_data['format_episode'] != $post_data['format_episode'])
			$news->data['xfields'][$this->config['xfields']['write']['format_episode']] = $insert_data['format_episode'];

		if ($news->data['xfields'] == $xfields)
			unset($news->data['xfields']);

		// Seo

		$insert_data['type'] = 'serial';

		if ($this->config['seo']['on']) {
			if ($this->config['seo']['url']) {
				$seo_url = $this->seo($insert_data, $this->config['seo']['url'], true);

				if ($seo_url != $data['post']['alt_name'])
					$news->data['alt_name'] = $seo_url;
			}

			if ($this->config['seo']['title']) {
				$seo_title = $this->seo($insert_data, $this->config['seo']['title']);

				if ($seo_title != $data['post']['title'])
					$news->data['title'] = $seo_title;
			}

			if ($this->config['seo']['meta']['title']) {
				$seo_meta_title = $this->seo($insert_data, $this->config['seo']['meta']['title']);

				if ($seo_meta_title != $data['post']['metatitle'])
					$news->data['metatitle'] = $seo_meta_title;
			}

			if ($this->config['seo']['meta']['description']) {
				$seo_meta_description = $this->seo($insert_data, $this->config['seo']['meta']['description']);

				if ($seo_meta_description != $data['post']['descr'])
					$news->data['descr'] = $seo_meta_description;
			}
		}

		if (!$news->data['alt_name'])
			$news->data['alt_name'] = $this->seo($insert_data, '[title_ru]{title_ru}[/title_ru]', true);

		if (!$news->data['title'])
			$news->data['title'] = $this->seo($insert_data, '[title_ru]{title_ru}[/title_ru]');

		$post_id = $news->save();

		// Updates

		if ($post_id && $this->config['serials']['updates']['on']) {
			$clear_cache = false;

			foreach ($data['translations'] as $item) {
				$token = $db->safesql($item['token']);
				$translation_id = $db->safesql($item['translation_id']);
				$quality = $db->safesql($item['quality']);

				$date = date('Y-m-d H:i:s', time());

				foreach ($item['seasons'] as $_item) {
					$season = $db->safesql($_item['season_number']);

					foreach ($_item['episodes'] as $episode) {
						$episode = intval($episode['num']);

						$result = $db->query("SELECT * FROM " . PREFIX . "_hdvb_update_serials WHERE `post_id` = '{$post_id}' AND `token` = '{$token}' AND `season` = '{$season}' AND `episode` = '{$episode}'");

						if (!$db->num_rows($result)) {
							$db->query("INSERT INTO " . PREFIX . "_hdvb_update_serials (`post_id`, `token`, `update_date`, `translation_id`, `quality`, `season`, `episode`) VALUES ('{$post_id}', '{$token}', '{$date}', '{$translation_id}', '{$quality}', '{$season}', '{$episode}')");

							$clear_cache = true;
						}
					}
				}
			}

			if ($clear_cache)
				clear_cache(array('hdvb_updates'));
		}

	}

	public function priority($data)
	{

		$priority = array(
			115 => 10000
		);

		$_priority = $this->config['update']['serials']['priority'];

		$i = 0;

		if ($_priority) {
			krsort($_priority);

			foreach ($_priority as $value) {
				if (intval($value) != 115) {
					$i++;
					$priority[intval($value)] = $i;
				}
			}
		}

		usort($data, function($a, $b) use ($priority) {
			if ($a['translation_id']) {
				$a['translation_id'] = intval($a['translation_id']);
				$b['translation_id'] = intval($b['translation_id']);
				return (intval($priority[$a['translation_id']]) - intval($priority[$b['translation_id']]));
			}
			if ($a['translator_id']) {
				$a['translator_id'] = intval($a['translator_id']);
				$b['translator_id'] = intval($b['translator_id']);
				return (intval($priority[$a['translator_id']]) - intval($priority[$b['translator_id']]));
			}
		});

		krsort($data);

		return $data;

	}

	// Seo

	public function seo($data, $template, $translit = false)
	{

		if ($data['type'] == 'movie') {
			$template = preg_replace("#\\[movie\\](.*?)\\[/movie\\]#i", "$1", $template);
			$template = preg_replace('#\\[serial\\].*?\\[/serial\\]#i', '', $template);
		} else {
			$template = preg_replace("#\\[serial\\](.*?)\\[/serial\\]#i", "$1", $template);
			$template = preg_replace('#\\[movie\\].*?\\[/movie\\]#i', '', $template);
		}

		$fields = array(
			
			'year',
			
			'quality',
			'translation',

			'custom_quality',
			'custom_translation',

			'season',
			'episode',

			'format_season',
			'format_episode',

			'title_ru',
			'title_en'

		);

		foreach ($fields as $field) {
			if ($data[$field]) {
				$template = str_replace('{' . $field . '}', $data[$field], $template);
				$template = preg_replace("#\\[{$field}\\](.*?)\\[/{$field}\\]#i", "$1", $template);
			} else {
				$template = str_replace('{' . $field . '}', '', $template);
				$template = preg_replace("#\\[{$field}\\].*?\\[/{$field}\\]#i", '', $template);
			}
		}

		if ($translit) {
			$template = trim($template);

			$replaces = array(
				'а' => 'a',
				'б' => 'b',
				'в' => 'v',
				'г' => 'g',
				'д' => 'd',
				'е' => 'e',
				'ё' => 'yo',
				'ж' => 'zh',
				'з' => 'z',
				'и' => 'i',
				'й' => 'y',
				'к' => 'k',
				'л' => 'l',
				'м' => 'm',
				'н' => 'n',
				'о' => 'o',
				'п' => 'p',
				'р' => 'r',
				'с' => 's',
				'т' => 't',
				'у' => 'u',
				'ф' => 'f',
				'х' => 'kh',
				'ц' => 'ts',
				'ч' => 'ch',
				'ш' => 'sh',
				'щ' => 'shch',
				'ь' => '',
				'ы' => 'y',
				'ъ' => '',
				'э' => 'e',
				'ю' => 'yu',
				'я' => 'ya'
			);

			$template = mb_strtolower($template, mb_detect_encoding($template, 'utf-8'));
			$template = strtr($template, $replaces);
			$template = preg_replace("#[^-a-z0-9]+#i", '-', $template);
			$template = trim($template, '-');
		}

		return $template;

	}

	// Custom Replacements

	public function custom_replacement($string, $replacements)
	{

		if ($replacements) foreach ($replacements as $pattern => $replacement) {
			if (trim($string) == trim($pattern)) {
				$string = str_ireplace($pattern, $replacement, $string);
				break;
			}
		}

		return $string;

	}

	// Format Season

	public function format_season($format, $season)
	{

		switch ($format) {

			case 1:

				$data = "{$season} сезон";

				break;

			case 2:

				$data = $season > 1 ? "1-{$season} сезон" : "{$season} сезон";

				break;

			case 3:

				$data = array();

				for ($i = 1; $i <= $season; $i++)
					$data[] = $i;

				$data = implode(',', $data) . ' сезон';

				break;

		}

		return $data;

	}

	// Format Episode

	public function format_episode($format, $episode)
	{

		switch ($format) {

			case 1:

				$data = "{$episode} серия";

				break;

			case 2:

				$data = $episode > 1 ? "1-{$episode} серия" : "{$episode} серия";

				break;

			case 3:

				$data = array();

				for ($i = 1; $i <= $episode; $i++)
					$data[] = $i;

				$data = implode(',', $data) . ' серия';

				break;

			case 4:

				$data = array();

				$start = $episode - 2;

				if ($start < 1)
					$start = 1;

				for ($i = $start; $i <= $episode; $i++)
					$data[] = $i;

				$data = implode(',', $data) . ' серия';

				break;

			case 5:

				if ($episode > 5) {

					$data = array();

					$start = $episode - 2;

					if ($start < 5)
						$start = 5;

					for ($i = $start; $i <= $episode; $i++)
						$data[] = $i;

					$data = '1-' . implode(',', $data) . ' серия';

				} else {

					$data = array();

					for ($i = 1; $i <= $episode; $i++)
						$data[] = $i;

					$data = implode(',', $data) . ' серия';

				}

				break;

		}

		return $data;

	}

}