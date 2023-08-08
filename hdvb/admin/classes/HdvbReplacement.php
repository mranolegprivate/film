<?php

class HdvbReplacement
{

	protected $config;

	public function __construct($config)
	{

		$this->config = $config;

	}

	// Threads

	public function threads()
	{

		global $db;

		$search = array();

		if ($_POST['replacement']['search'])
			foreach ($_POST['replacement']['search'] as $key => $value) {
				if ($this->config['xfields']['search'] && $this->config['xfields']['search'][$key])
					$search[] = $key;
			}

		if (!$search)
			exit;

		$threads = intval($_POST['replacement']['threads']) ? intval($_POST['replacement']['threads']) : null;

		if ($_GET['category']) {
			$list = explode(',', $_GET['category']);

			$category = array();

			foreach ($list as $key => $value) {
				if (intval($value) > 0)
					$category[] = intval($value);
			}
		}

		$category_inverse = isset($_POST['replacement']['category_inverse']) ? true : false;

		$status = intval($_POST['replacement']['status']) ? intval($_POST['replacement']['status']) : null;

		$last_post_id = intval($_GET['post_id']) ? intval($_GET['post_id']) : null;

		// Query

		if ($status == 1)
			$approve = 'approve = 1';
		elseif ($status == 2)
			$approve = 'approve = 0';

		if ($category) {
			$searchcategory = array();

			foreach ($category as $category_id)
				$searchcategory[] = get_sub_cats($category_id);

			$searchcategory = implode('|', $searchcategory);

			if ($searchcategory)
				$searchcategory = "category" . ($category_inverse ? ' not' : '') . " regexp '[[:<:]]($searchcategory)[[:>:]]'";
		}

		if ($last_post_id) {
			$next_posts_id = array();
			$result = $db->query("SELECT id FROM " . PREFIX . "_post WHERE id > {$last_post_id}" . ($searchcategory ? ' AND ' . $searchcategory : '') . ($approve ? ' AND ' . $approve : '') . " ORDER BY id ASC LIMIT {$threads}");
			while ($row = $db->get_row($result)) {
				$next_posts_id[] = $row['id'];
			}
			
			if ($next_posts_id) {
				$result = array(
					'status' => 'success',
					'next_posts_id' => $next_posts_id,
				);
			} else
				$result = array(
					'status' => 'end',
				);
		} else {
			$post = $db->super_query("SELECT COUNT(*) as count FROM " . PREFIX . "_post WHERE id <> 0 " . ($searchcategory ? ' AND ' . $searchcategory : '') . ($approve ? ' AND ' . $approve : ''));

			$count = $post['count'];

			if ($count) {
				$next_posts_id = array();
				$result = $db->query("SELECT id FROM " . PREFIX . "_post WHERE id <> 0 " . ($searchcategory ? ' AND ' . $searchcategory : '') . ($approve ? ' AND ' . $approve : '') . " ORDER BY id ASC LIMIT {$threads}");
				while ($row = $db->get_row($result)) {
					$next_posts_id[] = $row['id'];
				}
				
				if ($next_posts_id) {
					$result = array(
						'status' => 'success',
						'next_posts_id' => $next_posts_id,
						'count' => $count,
					);
				} else
					$result = array(
						'status' => 'end',
					);
			} else
				$result = array(
					'status' => 'end',
					'code' => '#0',
				);
		}

		return $result;

	}

	// Thread

	public function thread()
	{

		global $db;

		$search = array();

		if ($_POST['replacement']['search'])
			foreach ($_POST['replacement']['search'] as $key => $value) {
				if ($this->config['xfields']['search'] && $this->config['xfields']['search'][$key])
					$search[] = $key;
			}

		if (!$search)
			return false;

		$rewrite = isset($_POST['replacement']['rewrite']) ? true : false;

		$post_id = intval($_GET['post_id']) ? intval($_GET['post_id']) : null;

		if (!$post_id) {
			return array(
				'status' => 'error',
				'code' => '#1',
			);
		}

		$post = $db->super_query("SELECT * FROM " . PREFIX . "_post WHERE id = '{$post_id}'");

		if (!$post) {
			return array(
				'status' => 'error',
				'code' => '#1',
			);
		}
		
		$news = new HdvbNews($post_id);
		$update = new HdvbUpdate($this->config);

		$xfields = $news->xfields->toArray($post['xfields']);

		if (!$rewrite && $xfields[$this->config['xfields']['write']['source']])
			return array('status' => 'exist');

		$search = array();

		foreach ($update->search as $value) {
			if (!$this->config['xfields']['search'][$value] || !$xfields[$this->config['xfields']['search'][$value]])
				continue;

			$search[$value] = $xfields[$this->config['xfields']['search'][$value]];
		}

		if (!$search)
			return array(
				'status' => 'error',
				'code' => '#3',
			);

		$api = new HdvbApi($this->config['api']);

		foreach ($search as $key => $value) {
			$data = $api->search($key, $value);

			if ($data)
				break;
		}

		if (!$data)
			return array(
				'status' => 'error',
				'code' => '#4',
			);

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
			'title_en',

		);

		$post_data = array();
		$update_data = array();

		foreach ($fields as $field) {
			if ($this->config['xfields']['search'][$field] && $xfields[$this->config['xfields']['search'][$field]])
				$post_data[$field] = $xfields[$this->config['xfields']['search'][$field]];

			if ($this->config['xfields']['write'][$field] && $xfields[$this->config['xfields']['write'][$field]])
				$post_data[$field] = $xfields[$this->config['xfields']['write'][$field]];

			if ($data[$field])
				$update_data[$field] = $data[$field];
		}

		if ($data[0]['type'] == 'serial') {
			$data = $update->priority($data);

			$update_translations = array();
			$update_format_translations = array();

			foreach ($data as $item) {
				$update_translations[] = $item['translator'];

				if ($this->config['xfields']['write']['custom_translations'])
					$update_format_translations[] = $update->custom_replacement($item['translator'], $this->config['custom']['translations']);

				foreach ($item['serial_episodes'] as $season) {
					sort($season['episodes']);

					if (intval($season['season_number']) > $update_season) {
						$update_season = intval($season['season_number']);

						$update_episode = intval(end($season['episodes']));
					}

					if (intval($season['season_number']) == $update_season) {
						$episode = intval(end($season['episodes']));

						if ($episode && $episode > $update_episode)
							$update_episode = $episode;
					}
				}
			}

			if ($update_season) {
				$update_data['season'] = $update_season;

				if ($this->config['xfields']['write']['format_season'] && $this->config['xfields']['write']['format_season_type'])
					$update_data['format_season'] = $update->format_season($this->config['xfields']['write']['format_season_type'], $update_season);
			}

			if ($update_episode) {
				$update_data['episode'] = $update_episode;

				if ($this->config['xfields']['write']['format_episode'] && $this->config['xfields']['write']['format_episode_type'])
					$update_data['format_episode'] = $update->format_episode($this->config['xfields']['write']['format_episode_type'], $update_episode);
			}

			$update_translations = implode(', ', $update_translations);

			if ($update_translations)
				$update_data['translations'] = $update_translations;

			if ($update_format_translations) {
				$update_format_translations = implode(', ', $update_format_translations);

				if ($update_format_translations)
					$update_data['custom_translations'] = $update_format_translations;
			}
		}

		if ($data) {
			foreach ($data as $item) {
				$update_data = array_merge($update_data, $item);
				break;
			}
		}

		$news->data['xfields'] = $xfields;

		if ($_POST['replacement']['xfields']['source'] && $this->config['xfields']['write']['source'] && $update_data['iframe_url'] && $update_data['iframe_url'] != $post_data['source'])
			$news->data['xfields'][$this->config['xfields']['write']['source']] = $update_data['iframe_url'];

		if ($_POST['replacement']['xfields']['year'] && $this->config['xfields']['write']['year'] && $update_data['year'] && $update_data['year'] != $post_data['year'])
			$news->data['xfields'][$this->config['xfields']['write']['year']] = $update_data['year'];

		if ($_POST['replacement']['xfields']['quality'] && $this->config['xfields']['write']['quality'] && $update_data['quality'] && $update_data['quality'] != $post_data['quality'])
			$news->data['xfields'][$this->config['xfields']['write']['quality']] = $update_data['quality'];

		if ($_POST['replacement']['xfields']['translation'] && $this->config['xfields']['write']['translation'] && $update_data['translator'] && $update_data['translator'] != $post_data['translation'])
			$news->data['xfields'][$this->config['xfields']['write']['translation']] = $update_data['translator'];

		if ($_POST['replacement']['xfields']['translations'] && $this->config['xfields']['write']['translations'] && $update_data['translations'] && $update_data['translations'] != $post_data['translations'])
			$news->data['xfields'][$this->config['xfields']['write']['translations']] = $update_data['translations'];

		if ($_POST['replacement']['xfields']['custom_quality'] && $this->config['xfields']['write']['custom_quality'] && $update_data['quality']) {
			$update_data['custom_quality'] = $update->custom_replacement($update_data['quality'], $this->config['custom']['qualities']);

			if ($update_data['custom_quality'] != $post_data['custom_quality'])
				$news->data['xfields'][$this->config['xfields']['write']['custom_quality']] = $update_data['custom_quality'];
		}

		if ($_POST['replacement']['xfields']['custom_translation'] && $this->config['xfields']['write']['custom_translation'] && $update_data['translator']) {
			$update_data['custom_translation'] = $update->custom_replacement($update_data['translator'], $this->config['custom']['translations']);

			if ($update_data['custom_translation'] != $post_data['custom_translation'])
				$news->data['xfields'][$this->config['xfields']['write']['custom_translation']] = $update_data['custom_translation'];
		}

		if ($_POST['replacement']['xfields']['custom_translations'] && $this->config['xfields']['write']['custom_translations'] && $update_data['custom_translations'] && $update_data['custom_translations'] != $post_data['custom_translations'])
			$news->data['xfields'][$this->config['xfields']['write']['custom_translations']] = $update_data['custom_translations'];

		if ($_POST['replacement']['xfields']['season'] && $this->config['xfields']['write']['season'] && $update_data['season'] && $update_data['season'] != $post_data['season'])
			$news->data['xfields'][$this->config['xfields']['write']['season']] = $update_data['season'];

		if ($_POST['replacement']['xfields']['episode'] && $this->config['xfields']['write']['episode'] && $update_data['episode'] && $update_data['episode'] != $post_data['episode'])
			$news->data['xfields'][$this->config['xfields']['write']['episode']] = $update_data['episode'];

		if ($_POST['replacement']['xfields']['format_season'] && $this->config['xfields']['write']['format_season'] && $update_data['format_season'] && $update_data['format_season'] != $post_data['format_season'])
			$news->data['xfields'][$this->config['xfields']['write']['format_season']] = $update_data['format_season'];

		if ($_POST['replacement']['xfields']['format_episode'] && $this->config['xfields']['write']['format_episode'] && $update_data['format_episode'] && $update_data['format_episode'] != $post_data['format_episode'])
			$news->data['xfields'][$this->config['xfields']['write']['format_episode']] = $update_data['format_episode'];

		if ($news->data['xfields'] == $xfields)
			unset($news->data['xfields']);

		// Seo

		if ($this->config['seo']['on']) {
			if ($_POST['replacement']['seo']['url'] && $this->config['seo']['url']) {
				$seo_url = $update->seo($update_data, $this->config['seo']['url'], true);

				if ($seo_url != $data['post']['alt_name'])
					$news->data['alt_name'] = $seo_url;
			}

			if ($_POST['replacement']['seo']['title'] && $this->config['seo']['title']) {
				$seo_title = $update->seo($update_data, $this->config['seo']['title']);

				if ($seo_title != $data['post']['title'])
					$news->data['title'] = $seo_title;
			}

			if ($_POST['replacement']['seo']['meta_title'] && $this->config['seo']['meta']['title']) {
				$seo_meta_title = $update->seo($update_data, $this->config['seo']['meta']['title']);

				if ($seo_meta_title != $data['post']['metatitle'])
					$news->data['metatitle'] = $seo_meta_title;
			}

			if ($_POST['replacement']['seo']['meta_description'] && $this->config['seo']['meta']['description']) {
				$seo_meta_description = $update->seo($update_data, $this->config['seo']['meta']['description']);

				if ($seo_meta_description != $data['post']['descr'])
					$news->data['descr'] = $seo_meta_description;
			}
		}

		$news->save();

		return array('status' => 'success');

	}

}