<?php

// Html

function hdvbEncode($string, $flags = ENT_COMPAT, $charset = 'utf-8') {

	return htmlspecialchars($string, $flags, $charset);

}

function hdvbDecode($string, $flags = ENT_COMPAT) {

	return htmlspecialchars_decode($string, $flags);

}

function hdvbCSS($data) {

	if (is_array($data)) {
		$css = '';

		foreach ($data as $style)
			$css .= '<link rel="stylesheet" href="' . hdvbEncode($style) . '">';

		return $css;
	} elseif (is_string($data))
		return '<link rel="stylesheet" href="' . hdvbEncode($data) . '">';
	else
		return false;

}

function hdvbJS($data) {

	if (is_array($data)) {
		$js = '';

		foreach ($data as $script)
			$js .= '<script src="' . hdvbEncode($script) . '"></script>';

		return $js;
	} elseif (is_string($data))
		return '<script src="' . hdvbEncode($data) . '"></script>';
	else
		return false;

}