<?php

class HdvbApi
{

	protected $config;

	public function __construct($apiConfig)
	{
		
		$this->config = $apiConfig;

		if (!$this->config['domain'])
			$this->config['domain'] = 'https://apivb.info/';

		if ($this->config['domain'])
			$this->config['domain'] .= 'api/';

	}

	// Adomain

	public function getDomain()
	{
		
		$data = $this->get("{$this->config['domain']}domain.json?token={$this->config['token']}");

		if ($data['player'])
			return $data['player'];
		else
			return false;

	}

	// Translations

	public function getTranslations()
	{
		
		$data = $this->get("{$this->config['domain']}translations.json?token={$this->config['token']}");

		if ($data['error'])
			return false;
		else
			return $data;

	}

	// Updates

	public function getUpdates()
	{
		
		$data = $this->get("{$this->config['domain']}updates.json?token={$this->config['token']}");

		if ($data['movies'] === false && $data['serials'] === false)
			return false;
		else
			return $data;

	}

	// Search

	public function search($key, $value)
	{
		
		if ($key == 'world_art_id')
			return false;

		if ($key == 'kinopoisk_id')
			$key = 'id_kp';

		$data = $this->get("{$this->config['domain']}videos.json?token={$this->config['token']}&" . rawurlencode($key) . '=' . rawurlencode($value));

		if ($data['error'])
			return false;
		else
			return $data;

	}

	// Base

	public function base($section, $cat = false, $page = 1, $limit = 25)
	{
		
		$url = "{$this->config['domain']}{$section}_updates.json?token={$this->config['token']}";

		if ($cat)
			$url .= "&cat={$cat}";

		if ($page)
			$url .= "&page={$page}";

		if ($limit)
			$url .= "&limit={$limit}";

		$data = $this->get($url);

		if ($data['error'])
			return false;
		else
			return $data;

	}

	// Get

	private function get($url)
	{
		
		if ($ch = curl_init($url)) {
			curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
			curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 3);
			curl_setopt($ch, CURLOPT_TIMEOUT, 5);

			$response = curl_exec($ch);

			if ($response === false)
				$data = array('error' => 'cURL error: ' . curl_error($ch));
			else
				$data = json_decode($response, true);

			curl_close($ch);
		} else
			$data = array('error' => 'cURL is not installed in your PHP installation');

		return $data;
		
	}

}