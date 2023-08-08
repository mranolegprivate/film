<?php

require_once HDVB_DIR . '/classes/HdvbApi.php';
require_once HDVB_DIR . '/classes/HdvbNews.php';
require_once HDVB_DIR . '/classes/HdvbUpdate.php';
require_once HDVB_DIR . '/classes/HdvbView.php';

class Hdvb
{

	public $config;

	public function __construct()
	{

		$this->config = require_once HDVB_DIR . '/config.php';

	}

	// Version

	public function version()
	{

		return '2.1';

	}

	// View

	public function view($areas)
	{

		$view = new HdvbView($this->config);

		if ($areas && is_array($areas))
			foreach ($areas as $area)
				call_user_func(array($view, $area));

	}

	// Update

	public function update()
	{

		$update = new HdvbUpdate($this->config);
		$update->start();

	}

}