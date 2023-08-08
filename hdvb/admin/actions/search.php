<?php

$hdvbApi = new HdvbApi($hdvb->config['api']);

$search_key = isset($_GET['field']) ? $_GET['field'] : null;
$search_value = isset($_GET['field']) ? rawurldecode($_GET['value']) : null;

if (!$search_key || !$search_value) {
	echo json_encode(array('notfound' => true));
	exit;
}

$hdvbSearch = $hdvbApi->search($search_key, $search_value);

if (!$hdvbSearch) {
	echo json_encode(array('notfound' => true));
	exit;
}

$hdvbUpdate = new HdvbUpdate($hdvb->config);

$hdvbResult = array();

foreach ($hdvbSearch as $data) {

	$search_data = array();

	if ($data['title_ru'])
		$search_data['title_ru'] = $data['title_ru'];
	else
		$search_data['title_ru'] = '';

	if ($data['title_en'])
		$search_data['title_en'] = $data['title_en'];
	else
		$search_data['title_en'] = '';

	if ($hdvb->config['xfields']['write']['source'] && $data['iframe_url'])
		$search_data['source'] = $data['iframe_url'];
	else
		$search_data['source'] = '';

	if ($data['quality'])
		$search_data['quality'] = $data['quality'];
	else
		$search_data['quality'] = '';

	if ($data['translator'])
		$search_data['translation'] = $data['translator'];
	else
		$search_data['translation'] = '';

	if ($hdvb->config['xfields']['write']['custom_quality'] && $data['quality'])
		$search_data['custom_quality'] = $hdvbUpdate->custom_replacement($data['quality'], $hdvb->config['custom']['qualities']);
	else
		$search_data['custom_quality'] = '';

	if ($hdvb->config['xfields']['write']['custom_translation'] && $data['translator'])
		$search_data['custom_translation'] = $hdvbUpdate->custom_replacement($data['translator'], $hdvb->config['custom']['translations']);
	else
		$search_data['custom_translation'] = '';

	if ($hdvb->config['xfields']['write']['year'] && $data['year'])
		$search_data['year'] = $data['year'];
	else
		$search_data['year'] = '';

	if ($data['type'] == 'serial') {
		$update_season = '';
		$update_episode = '';

		foreach ($data['serial_episodes'] as $season) {
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

		if ($update_season) {
			$search_data['season'] = $update_season;

			if ($hdvb->config['xfields']['write']['format_season'] && $hdvb->config['xfields']['write']['format_season_type'])
				$search_data['format_season'] = $hdvbUpdate->format_season($hdvb->config['xfields']['write']['format_season_type'], $update_season);
		}

		if ($update_episode) {
			$search_data['episode'] = $update_episode;

			if ($hdvb->config['xfields']['write']['format_episode'] && $hdvb->config['xfields']['write']['format_episode_type'])
				$search_data['format_episode'] = $hdvbUpdate->format_episode($hdvb->config['xfields']['write']['format_episode_type'], $update_episode);
		}

		$search_data['type'] = 'serial';
		$search_data['type_ru'] = 'Сериал';
	} else {
		$search_data['season'] = '';
		$search_data['episode'] = '';

		$search_data['format_season'] = '';
		$search_data['format_episode'] = '';

		$search_data['type'] = 'movie';
		$search_data['type_ru'] = 'Фильм';
	}

	// Seo

	$search_data['seo_url'] = '';
	$search_data['seo_title'] = '';
	$search_data['seo_meta_title'] = '';
	$search_data['seo_meta_description'] = '';

	if ($hdvb->config['seo']['on']) {

		if ($hdvb->config['seo']['url']) {
			$seo_url = $hdvbUpdate->seo($search_data, $hdvb->config['seo']['url'], true);

			if ($seo_url)
				$search_data['seo_url'] = $seo_url;
		}

		if ($hdvb->config['seo']['title']) {
			$seo_title = $hdvbUpdate->seo($search_data, $hdvb->config['seo']['title']);

			if ($seo_title)
				$search_data['seo_title'] = $seo_title;
		}

		if ($hdvb->config['seo']['meta']['title']) {
			$seo_meta_title = $hdvbUpdate->seo($search_data, $hdvb->config['seo']['meta']['title']);

			if ($seo_meta_title)
				$search_data['seo_meta_title'] = $seo_meta_title;
		}

		if ($hdvb->config['seo']['meta']['description']) {
			$seo_meta_description = $hdvbUpdate->seo($search_data, $hdvb->config['seo']['meta']['description']);

			if ($seo_meta_description)
				$search_data['seo_meta_description'] = $seo_meta_description;
		}

	}

	$hdvbResult[] = $search_data;

}

echo json_encode(array(
	'success' => true,
	'result' => $hdvbResult
));