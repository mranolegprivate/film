<?php

// Module

require_once dirname(__FILE__) . '/../init.php';

// Admin

define('HDVB_ADMIN_DIR', dirname(__FILE__));

$baseUrl = $PHP_SELF . '?mod=hdvb';

require_once HDVB_ADMIN_DIR . '/functions.php';

require_once HDVB_ADMIN_DIR . '/classes/HdvbForm.php';
require_once HDVB_ADMIN_DIR . '/classes/HdvbReplacement.php';
require_once HDVB_ADMIN_DIR . '/classes/HdvbBase.php';

// Route

$actionDir = HDVB_ADMIN_DIR . '/actions';

switch ($action) {

	// Base

	case 'base':

		$hdvbBase = new HdvbBase($hdvb->config);
		$hdvbBase->build();

		break;

	// Settings

	case 'settings':

		require_once $actionDir . '/settings.php';

		break;

	// Replacement

	case 'replacement':

		require_once $actionDir . '/replacement.php';

		break;

	// Replacement Threads

	case 'replacement_threads':

		require_once $actionDir . '/replacement_threads.php';

		break;

	// Replacement Thread

	case 'replacement_thread':

		require_once $actionDir . '/replacement_thread.php';

		break;

	// Search

	case 'search':

		require_once $actionDir . '/search.php';

		break;

	// Index

	default:
		
		if ($_SERVER['REQUEST_URI'] != $baseUrl)
			header("Location: {$baseUrl}");

		require_once $actionDir . '/index.php';

		break;

}