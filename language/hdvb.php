<?php

@set_time_limit(0);

@error_reporting(E_ALL ^ E_WARNING ^ E_DEPRECATED ^ E_NOTICE);
@ini_set('error_reporting', E_ALL ^ E_WARNING ^ E_DEPRECATED ^ E_NOTICE);

define('DATALIFEENGINE', true);
define('AUTOMODE', true);
define('LOGGED_IN', true);

define('ROOT_DIR', dirname(__FILE__));
define('ENGINE_DIR', ROOT_DIR . '/engine');

require_once ENGINE_DIR . '/data/config.php';

date_default_timezone_set($config['date_adjust']);

require_once ENGINE_DIR . '/classes/mysql.php';
require_once ENGINE_DIR . '/data/dbconfig.php';
require_once ENGINE_DIR . '/modules/functions.php';

// Update

define('HDVB_DIR', dirname(__FILE__) . '/hdvb');

require_once HDVB_DIR . '/init.php';

if (!$hdvb->config['cronkey'] || $_GET['key'] != $hdvb->config['cronkey'])
	exit;

if (intval($hdvb->config['update']['type']))
	$hdvb->update();