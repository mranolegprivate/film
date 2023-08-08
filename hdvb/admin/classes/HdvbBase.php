<?php

class HdvbBase
{

	public $config;

	public function __construct($config)
	{

		$this->config = $config;

	}

	public function build()
	{

		global $config, $db, $hdvb, $action, $baseUrl;

		if (isset($_POST['base']) && $_POST['mass_action'] == 'add_news') {

			$items = array();

			if ($_POST['base']) foreach ($_POST['base'] as $value) {
				list($kinopoisk_id, $translator_id) = explode('-', $value);

				if ($kinopoisk_id)
					$items[] = array(
						'kinopoisk_id' => $kinopoisk_id,
						'translator_id' => $translator_id
					);
			}

			if ($items)
				$this->mass_insert($items);

		}

		$search = isset($_GET['search']) ? rawurldecode($_GET['search']) : null;

		$section = isset($_GET['section']) ? $_GET['section'] : null;

		if (!$section)
			$section = 'movies';

		$cat = isset($_GET['cat']) ? intval($_GET['cat']) : null;

		$page = isset($_GET['page']) ? intval($_GET['page']) : null;

		if (!$page)
			$page = 1;

		$api = new HdvbApi($this->config['api']);

		if ($search) {
			
			$data = $api->search('id_kp', $search);

			if (!$data)
				$data = $api->search('title', $search);

		} else {

			$data = $api->base($section, $cat, $page);

			if (!preg_match("#page=[0-9]+#i", $_SERVER['REQUEST_URI']))
				$_SERVER['REQUEST_URI'] .= "&page={$page}";

			$prev = $data['prev_page'] ? preg_replace("#page=[0-9]+#i", 'page=' . ($page - 1), $_SERVER['REQUEST_URI']) : false;
			$next = $data['next_page'] ? preg_replace("#page=[0-9]+#i", 'page=' . ($page + 1), $_SERVER['REQUEST_URI']) : false;

			if ($data['items'])
				$data = $data['items'];
			else
				$data = array();

		}

		require dirname(__FILE__) . '/../actions/base.php';

	}

	public function mass_insert($items)
	{

		$api = new HdvbApi($this->config['api']);
		$update = new HdvbUpdate($this->config);

		foreach ($items as $item) {

			$data = $api->search('id_kp', $item['kinopoisk_id']);

			if ($data) foreach ($data as $_item) {

				if ($_item['translator_id'] == $item['translator_id']) {
					
					$_item['translation_id'] = $_item['translator_id'];
					unset($_item['translator_id']);

					$_item['translation'] = $_item['translator'];
					unset($_item['translator']);

					$_item['source'] = $_item['iframe_url'];
					unset($_item['iframe_url']);

					$data = $_item;

					break;

				}
			}

			if ($data) {

				if ($data['type'] == 'movie')
					$update->movie_insert($data);
				else {
					
					$data['translations'] = array($data);

					$update->serial_insert($data);

				}

			}

		}

		$_SESSION['mass_insert_success'] = true;

		header("Location: {$_SERVER['HTTP_REFERER']}");
		exit;

	}

}