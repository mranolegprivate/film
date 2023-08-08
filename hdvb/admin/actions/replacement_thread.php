<?php

$replacement = new HdvbReplacement($hdvb->config);

if ($hdvb->config['on']) {
	$result = $replacement->thread();

	if ($result)
		die(json_encode($result));
	else
		die(json_encode(array(
			'status' => 'end',
			'code' => '#5',
		)));
} else
	die(json_encode(array(
		'status' => 'end',
		'code' => '#6',
	)));