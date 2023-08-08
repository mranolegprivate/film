<?php

$replacement = new HdvbReplacement($hdvb->config);

if ($hdvb->config['on']) {
	$result = $replacement->threads();
	
	if ($result)
		die(json_encode($result));
	else
		die(json_encode(array(
			'status' => 'end',
			'code' => '#2',
		)));
} else
	die(json_encode(array(
		'status' => 'end',
		'code' => '#1',
	)));