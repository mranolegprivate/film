<?php

// Save

if (isset($_POST['settings'])) {

	// Cronkey

	if ($hdvb->config['cronkey'])
		$cronkey = $hdvb->config['cronkey'];

	// Domain

	if ($hdvb->config['domain'])
		$domain = $hdvb->config['domain'];

	if ($hdvb->config['domain_update'])
		$domain_update = $hdvb->config['domain_update'];

	$hdvb->config = $_POST['settings'];

	// Custom Qualities

	if ($hdvb->config['custom']['qualities']) {

		$custom_qualities = array();

		$data = explode("\r\n", $hdvb->config['custom']['qualities']);

		if ($data) foreach ($data as $string) {
			list($pattern, $replacement) = explode('|', $string);

			if ($pattern)
				$custom_qualities[$pattern] = $replacement;
		}

		$hdvb->config['custom']['qualities'] = $custom_qualities;

	} else
		$hdvb->config['custom']['qualities'] = array();

	// Custom Translations

	if ($hdvb->config['custom']['translations']) {

		$custom_translations = array();

		$data = explode("\r\n", $hdvb->config['custom']['translations']);

		if ($data) foreach ($data as $string) {
			list($pattern, $replacement) = explode('|', $string);

			if ($pattern)
				$custom_translations[$pattern] = $replacement;
		}

		$hdvb->config['custom']['translations'] = $custom_translations;

	} else
		$hdvb->config['custom']['translations'] = array();

	// Translations

	if ($hdvb->config['api']['token'] && !$hdvb->config['translations']) {

		$hdvbApi = new HdvbApi($hdvb->config['api']);

		$data = $hdvbApi->getTranslations();

		if (!$data) {
			echo json_encode(array('status' => 'error', 'message' => 'Ошибка получения списка переводов'));
			exit;
		}

		if ($data['code']) {
			echo json_encode(array('status' => 'error', 'message' => $data['text']));
			exit;
		}

		$translations = array();

		foreach ($data as $translation)
			$translations[intval($translation['id'])] = $translation['name'];

	} else
		$translations = $hdvb->config['translations'];

	// Save

	if ($translations)
		$hdvb->config['translations'] = $translations;

	if ($cronkey)
		$hdvb->config['cronkey'] = $cronkey;

	if ($domain)
		$hdvb->config['domain'] = $domain;

	if ($domain_update)
		$hdvb->config['domain_update'] = $domain_update;

	if ($hdvb->config['update']['serials']['priority'])
		$hdvb->config['update']['serials']['priority'] = explode(',', $hdvb->config['update']['serials']['priority']);

	$fh = fopen(HDVB_DIR . '/config.php', 'w');
	fwrite($fh, '<?php' . "\r\n\r\nreturn " . var_export($hdvb->config, true) . ';');
	fclose($fh);

	echo json_encode(array('status' => 'success'));
	exit;

}

// Translations

if ($hdvb->config['api']['token']) {

	$hdvbApi = new HdvbApi($hdvb->config['api']);

	$data = $hdvbApi->getTranslations();

	if ($data && !$data['code']) {
		$translations = array();

		foreach ($data as $translation)
			$translations[intval($translation['id'])] = $translation['name'];

		if ($translations) {
			$hdvb->config['translations'] = $translations;

			$fh = fopen(HDVB_DIR . '/config.php', 'w');
			fwrite($fh, '<?php' . "\r\n\r\nreturn " . var_export($hdvb->config, true) . ';');
			fclose($fh);
		}
	}

}

// Xfields

$xfields = array('' => '');

$xfieldsload = xfieldsload();

if ($xfieldsload)
	foreach ($xfieldsload as $key => $value) {
		if (in_array($value[3], array('text', 'textarea', 'select')))
			$xfields[$value[0]] = $value[1];
	}

// Not Update Xfields

$not_update_xfields = array('' => '');

if ($xfieldsload)
	foreach ($xfieldsload as $key => $value) {
		if (in_array($value[3], array('yesorno')))
			$not_update_xfields[$value[0]] = $value[1];
	}

// Cronkey

if (!$hdvb->config['cronkey']) {

	$cronkey = md5($config['http_home_url'] . time());

	$hdvb->config['cronkey'] = $cronkey;

	$fh = fopen(HDVB_DIR . '/config.php', 'w');
	fwrite($fh, '<?php' . "\r\n\r\nreturn " . var_export($hdvb->config, true) . ';');
	fclose($fh);

}

$cron = "{$config['http_home_url']}hdvb.php?key={$hdvb->config['cronkey']}";

// Qualities

$hdvbUpdate = new HdvbUpdate($hdvb->config);

$qualities = array();

foreach ($hdvbUpdate->quality as $quality)
	$qualities[] = $quality;

// Qualities

$translations = array();

if ($hdvb->config['translations']) foreach ($hdvb->config['translations'] as $translation)
	$translations[] = $translation;

// Settings

$pageTitle = 'HDVB - Настройки модуля';

include dirname(__FILE__) . '/header.php';

?>

<form id="settingsForm" action="<?php echo hdvbAction('settings'); ?>" method="post">

	<div class="accordion" id="accordionSettings">

		<div class="card hdvb-card mb-3">
			
			<div class="card-header hdvb-card-header" id="headingOther">
				<h2 class="mb-0">
					<button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseOther" aria-expanded="true" aria-controls="collapseOther">
						Общие настройки
					</button>
				</h2>
			</div>

			<div id="collapseOther" class="collapse show" aria-labelledby="headingOther" data-parent="#accordionSettings">
				<div class="card-body">
				
					<div class="row">
								
						<?php echo HdvbForm::group(
							'moduleOn',
							'Модуль',
							HdvbForm::_switch(
								'moduleOn',
								'settings[on]',
								$hdvb->config['on'] ? true : false
							),
							'Включение и выключение работы модуля'
						); ?>

					</div>

				</div>
			</div>

		</div>

		<div class="card hdvb-card mb-3">
			
			<div class="card-header hdvb-card-header" id="headingApi">
				<h2 class="mb-0">
					<button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseApi" aria-expanded="true" aria-controls="collapseApi">
						Настройки доступа к API
					</button>
				</h2>
			</div>

			<div id="collapseApi" class="collapse" aria-labelledby="headingApi" data-parent="#accordionSettings">
				<div class="card-body">
				
					<div class="row">

						<?php echo HdvbForm::group(
							'moduleApiToken',
							'API Ключ',
							HdvbForm::text(
								'moduleApiToken',
								'settings[api][token]',
								$hdvb->config['api']['token'] ? $hdvb->config['api']['token'] : false,
								'API Ключ'
							),
							'Ваш персональный API Ключ'
						); ?>

						<?php echo HdvbForm::group(
							'moduleApiDomain',
							'API Домен',
							HdvbForm::text(
								'moduleApiDomain',
								'settings[api][domain]',
								$hdvb->config['api']['domain'] ? $hdvb->config['api']['domain'] : false,
								'http://example.com/'
							),
							'Домен для доступа к API (не обязательно)'
						); ?>

					</div>

				</div>
			</div>

		</div>

		<div class="card hdvb-card mb-3">
			
			<div class="card-header hdvb-card-header" id="headingPlayer">
				<h2 class="mb-0">
					<button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapsePlayer" aria-expanded="true" aria-controls="collapsePlayer">
						Настройки вывода плеера
					</button>
				</h2>
			</div>

			<div id="collapsePlayer" class="collapse" aria-labelledby="headingPlayer" data-parent="#accordionSettings">
				<div class="alert alert-info mb-0" style="margin:5px;border-radius:3px">
				
					<div>
						<strong>[hdvb-found]{hdvb-player}[/hdvb-found]</strong>
						&mdash; Вывод плеера в шаблоне полной новости (<strong>fullstory.tpl</strong>)
					</div>

					<hr class="hdvb-separator mt-2 mb-2">

					<div>
						<strong>[hdvb-notfound] ... [/hdvb-notfound]</strong>
						&mdash; Код в этих тегах будет выведен если ссылка на источник плеера не заполнена (<strong>fullstory.tpl</strong>)
					</div>

				</div>

				<div class="card-body">

					<div class="row">

						<?php echo HdvbForm::group(
							'modulePlayerD',
							'Основной домен сайта',
							HdvbForm::text(
								'modulePlayerD',
								'settings[d]',
								$hdvb->config['d'] ? $hdvb->config['d'] : false,
								'example.com'
							),
							'Основной домен/зеркало вашего сайта<br>(обязательно указывать для корректного вывода статистики в личном кабинете веб-мастера)'
						); ?>

						<?php echo HdvbForm::group(
							'modulePlyerScript',
							'JS Скрипт',
							HdvbForm::text(
								'modulePlyerScript',
								'settings[player][script]',
								$hdvb->config['player']['script'] ? $hdvb->config['player']['script'] : false,
								'https://example.com/script.js'
							),
							'Скрипт для замены не рабочего домена плеера'
						); ?>

					</div>

				</div>
			</div>

		</div>

		<div class="card hdvb-card mb-3">
			
			<div class="card-header hdvb-card-header" id="headingXfieldsWrite">
				<h2 class="mb-0">
					<button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseXfieldsWrite" aria-expanded="true" aria-controls="collapseXfieldsWrite">
						Настройки доп. полей
					</button>
				</h2>
			</div>

			<div id="collapseXfieldsWrite" class="collapse" aria-labelledby="headingXfieldsWrite" data-parent="#accordionSettings">
				<div class="card-body">
				
					<h4 class="card-header sub-card-header mb-3">Обязательные поля для работы модуля</h4>

					<div class="row">

						<?php echo HdvbForm::group(
							'moduleXfieldsSearchKinopoisk',
							'Kinopoisk ID',
							HdvbForm::select(
								'moduleXfieldsSearchKinopoisk',
								'settings[xfields][search][kinopoisk_id]',
								$xfields,
								$hdvb->config['xfields']['search']['kinopoisk_id']
							),
							'Доп. поле для поиска по Kinopoisk ID'
						); ?>

						<?php echo HdvbForm::group(
							'moduleXfieldsSearchWorldArt',
							'World Art ID',
							HdvbForm::select(
								'moduleXfieldsSearchWorldArt',
								'settings[xfields][search][world_art_id]',
								$xfields,
								$hdvb->config['xfields']['search']['world_art_id']
							),
							'Доп. поле для поиска по World Art ID'
						); ?>

					</div>

					<hr class="hdvb-separator">

					<div class="row">

						<?php echo HdvbForm::group(
							'moduleXfieldsWriteIframe',
							'Источник видео',
							HdvbForm::select(
								'moduleXfieldsWriteIframe',
								'settings[xfields][write][source]',
								$xfields,
								$hdvb->config['xfields']['write']['source']
							),
							'Доп. поле для заполнения источника видео (ссылка для вывода плеера)'
						); ?>

					</div>

					<hr class="hdvb-separator">
					
					<div class="row">

						<?php echo HdvbForm::group(
							'moduleXfieldsWriteQuality',
							'Качество видео',
							HdvbForm::select(
								'moduleXfieldsWriteQuality',
								'settings[xfields][write][quality]',
								$xfields,
								$hdvb->config['xfields']['write']['quality']
							),
							'Доп. поле для заполнения качества видео'
						); ?>

						<?php echo HdvbForm::group(
							'moduleXfieldsWriteTranslation',
							'Перевод',
							HdvbForm::select(
								'moduleXfieldsWriteTranslation',
								'settings[xfields][write][translation]',
								$xfields,
								$hdvb->config['xfields']['write']['translation']
							),
							'Доп. поле для заполнения перевода видео'
						); ?>

						<?php echo HdvbForm::group(
							'moduleXfieldsWriteSeason',
							'Номер последнего сезона',
							HdvbForm::select(
								'moduleXfieldsWriteSeason',
								'settings[xfields][write][season]',
								$xfields,
								$hdvb->config['xfields']['write']['season']
							),
							'Доп. поле для заполнения номера последнего сезона сериала'
						); ?>

						<?php echo HdvbForm::group(
							'moduleXfieldsWriteEpisode',
							'Номер последней серии',
							HdvbForm::select(
								'moduleXfieldsWriteEpisode',
								'settings[xfields][write][episode]',
								$xfields,
								$hdvb->config['xfields']['write']['episode']
							),
							'Доп. поле для заполнения номера последней серии сериала'
						); ?>

					</div>

					<h4 class="card-header sub-card-header mb-3">Дополнительные поля для вывода данных</h4>

					<div class="row">

						<?php echo HdvbForm::group(
							'moduleXfieldsWriteYear',
							'Год выпуска',
							HdvbForm::select(
								'moduleXfieldsWriteYear',
								'settings[xfields][write][year]',
								$xfields,
								$hdvb->config['xfields']['write']['year']
							),
							'Доп. поле для заполнения года выпуска фильма или сериала'
						); ?>

						<?php echo HdvbForm::group(
							'moduleXfieldsWriteTranslations',
							'Список переводов сериала',
							HdvbForm::select(
								'moduleXfieldsWriteTranslations',
								'settings[xfields][write][translations]',
								$xfields,
								$hdvb->config['xfields']['write']['translations']
							),
							'Доп. поле для заполнения списка всех переводов сериала'
						); ?>

					</div>

					<hr class="hdvb-separator">
					
					<div class="row">

						<?php echo HdvbForm::group(
							'moduleXfieldsWriteCustomQuality',
							'Качество видео (с заменой)',
							HdvbForm::select(
								'moduleXfieldsWriteCustomQuality',
								'settings[xfields][write][custom_quality]',
								$xfields,
								$hdvb->config['xfields']['write']['custom_quality']
							),
							'Доп. поле для заполнения качества видео с заменой названий'
						); ?>

						<?php echo HdvbForm::group(
							'moduleXfieldsWriteCustomQualitySet',
							'Список своих названий для качества видео',
							'<div>
								<button id="customQualityButton" type="button" class="btn btn-primary" data-toggle="modal" data-target="#customQualityModal">Настроить свои названия качеств</button>
							</div>',
							'Настройки своих названий для качества видео'
						); ?>

					</div>

					<hr class="hdvb-separator">
					
					<div class="row">

						<?php echo HdvbForm::group(
							'moduleXfieldsWriteCustomTranslation',
							'Перевод (с заменой)',
							HdvbForm::select(
								'moduleXfieldsWriteCustomTranslation',
								'settings[xfields][write][custom_translation]',
								$xfields,
								$hdvb->config['xfields']['write']['custom_translation']
							),
							'Доп. поле для заполнения перевода видео с заменой названий'
						); ?>

						<?php echo HdvbForm::group(
							'moduleXfieldsWriteCustomTranslations',
							'Список переводов сериала (с заменой)',
							HdvbForm::select(
								'moduleXfieldsWriteCustomTranslations',
								'settings[xfields][write][custom_translations]',
								$xfields,
								$hdvb->config['xfields']['write']['custom_translations']
							),
							'Доп. поле для заполнения списка всех переводов сериала с заменой названий'
						); ?>

						<?php echo HdvbForm::group(
							'moduleXfieldsWriteCustomTranslationSet',
							'Список своих названий для переводов',
							'<div>
								<button id="customTranslationButton" type="button" class="btn btn-primary" data-toggle="modal" data-target="#customTranslationModal">Настроить свои названия переводов</button>
							</div>',
							'Настройки своих названий для переводов видео'
						); ?>

					</div>

					<hr class="hdvb-separator">
					
					<div class="row">

						<?php echo HdvbForm::group(
							'moduleXfieldsWriteFormatSeason',
							'Форматированный сезон',
							HdvbForm::select(
								'moduleXfieldsWriteFormatSeason',
								'settings[xfields][write][format_season]',
								$xfields,
								$hdvb->config['xfields']['write']['format_season']
							),
							'Доп. поле для заполнения форматированного сезона сериала'
						); ?>

						<?php echo HdvbForm::group(
							'moduleXfieldsWriteFormatSeasonType',
							'Тип форматирования сезона',
							HdvbForm::select(
								'moduleXfieldsWriteFormatSeasonType',
								'settings[xfields][write][format_season_type]',
								array(
									0 => '',
									1 => '1 сезон, 2 сезон, 3 сезон',
									2 => '1 сезон, 1-2 сезон, 1-3 сезон',
									3 => '1 сезон, 1,2 сезон, 1,2,3 сезон'
								),
								$hdvb->config['xfields']['write']['format_season_type']
							),
							'Тип форматирования сезона сериала'
						); ?>

					</div>

					<hr class="hdvb-separator">
					
					<div class="row">

						<?php echo HdvbForm::group(
							'moduleXfieldsWriteFormatEpisode',
							'Форматированная серия',
							HdvbForm::select(
								'moduleXfieldsWriteFormatEpisode',
								'settings[xfields][write][format_episode]',
								$xfields,
								$hdvb->config['xfields']['write']['format_episode']
							),
							'Доп. поле для заполнения форматированной серии сериала'
						); ?>

						<?php echo HdvbForm::group(
							'moduleXfieldsWriteFormatEpisodeType',
							'Тип форматирования серии',
							HdvbForm::select(
								'moduleXfieldsWriteFormatEpisodeType',
								'settings[xfields][write][format_episode_type]',
								array(
									0 => '',
									1 => '1 серия, 2 серия, 3 серия',
									2 => '1 серия, 1-2 серия, 1-3 серия, 1-4 серия',
									3 => '1 серия, 1,2 серия, 1,2,3 серия, 1,2,3,4 серия',
									4 => '1 серия, 1,2 серия, 1,2,3 серия, 2,3,4 серия',
									5 => '1,2 серия, 1,2,3 серия, 1,2,3 серия, 1,2,3,4,5 серия, 1-5,6,7 серия'
								),
								$hdvb->config['xfields']['write']['format_episode_type']
							),
							'Тип форматирования серии сериала'
						); ?>

					</div>

				</div>
			</div>

		</div>

		<div class="card hdvb-card mb-3">
			
			<div class="card-header hdvb-card-header" id="headingSeo">
				<h2 class="mb-0">
					<button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseSeo" aria-expanded="true" aria-controls="collapseSeo">
						Шаблоны СЕО данных
					</button>
				</h2>
			</div>

			<div id="collapseSeo" class="collapse" aria-labelledby="headingSeo" data-parent="#accordionSettings">
				<div class="alert alert-info mb-0" style="margin:5px;border-radius:3px">
					
					<div>
						<strong>[movie] ... [/movie]</strong>
						&mdash; Текст заключённый в эти теги будет использоваться только для фильмов
					</div>

					<hr class="hdvb-separator mt-2 mb-2">

					<div>
						<strong>[serial] ... [/serial]</strong>
						&mdash; Текст заключённый в эти теги будет использоваться только для сериалов
					</div>

					<hr class="hdvb-separator mt-2 mb-2">

					<div>
						<strong>[year]{year}[/year]</strong>
						&mdash; Год выпуска фильма или сериала
					</div>

					<hr class="hdvb-separator mt-2 mb-2">

					<div>
						<strong>[title_ru]{title_ru}[/title_ru]</strong>
						&mdash; Название фильма или сериала на Русском языке
					</div>

					<hr class="hdvb-separator mt-2 mb-2">

					<div>
						<strong>[title_en]{title_en}[/title_en]</strong>
						&mdash; Название фильма или сериала на Английском языке
					</div>

					<hr class="hdvb-separator mt-2 mb-2">

					<div>
						<strong>[quality]{quality}[/quality]</strong>
						&mdash; Качество видео фильма или сериала
					</div>

					<hr class="hdvb-separator mt-2 mb-2">
					
					<div>
						<strong>[translation]{translation}[/translation]</strong>
						&mdash; Перевод фильма или сериала
					</div>

					<hr class="hdvb-separator mt-2 mb-2">

					<div>
						<strong>[season]{season}[/season]</strong>
						&mdash; Номер последнего сезона сериала
					</div>

					<hr class="hdvb-separator mt-2 mb-2">

					<div>
						<strong>[episode]{episode}[/episode]</strong>
						&mdash; Номер последней вышедшей серии сериала
					</div>

					<hr class="hdvb-separator mt-2 mb-2">

					<div>
						<strong>[custom_quality]{custom_quality}[/custom_quality]</strong>
						&mdash; Качество видео фильма или сериала<br>(с заменой на свои названия)
					</div>

					<hr class="hdvb-separator mt-2 mb-2">
					
					<div>
						<strong>[custom_translation]{custom_translation}[/custom_translation]</strong>
						&mdash; Перевод фильма или сериала<br>(с заменой на свои названия)
					</div>

					<hr class="hdvb-separator mt-2 mb-2">

					<div>
						<strong>[format_season]{format_season}[/format_season]</strong>
						&mdash; Форматированный вывод сезона сериала<br>(тип форматирования указывается в разделе "Настройки полей для заполнения")
					</div>

					<hr class="hdvb-separator mt-2 mb-2">

					<div>
						<strong>[format_episode]{format_episode}[/format_episode]</strong>
						&mdash; Форматированный вывод серии сериала<br>(тип форматирования указывается в разделе "Настройки полей для заполнения")
					</div>

				</div>

				<div class="card-body">

					<div class="row">

						<?php echo HdvbForm::group(
							'moduleSeoOn',
							'Заполнение СЕО данных',
							HdvbForm::_switch(
								'moduleSeoOn',
								'settings[seo][on]',
								$hdvb->config['seo']['on'] ? true : false
							),
							'Включение и выключение заполнения СЕО данных'
						); ?>

					</div>

					<hr class="hdvb-separator">
					
					<div class="row">

						<?php echo HdvbForm::group(
							'moduleSeoUrl',
							'ЧПУ новости',
							HdvbForm::text(
								'moduleSeoUrl',
								'settings[seo][url]',
								$hdvb->config['seo']['url'] ? $hdvb->config['seo']['url'] : false,
								''
							),
							'Шаблон заполнения ЧПУ новости (переводится в транслит)'
						); ?>

						<?php echo HdvbForm::group(
							'moduleSeoTitle',
							'Заголовок новости',
							HdvbForm::text(
								'moduleSeoTitle',
								'settings[seo][title]',
								$hdvb->config['seo']['title'] ? $hdvb->config['seo']['title'] : false,
								''
							),
							'Шаблон заполнения заголовока новости'
						); ?>

						<?php echo HdvbForm::group(
							'moduleSeoMetaTitle',
							'Мета-заголовок новости',
							HdvbForm::text(
								'moduleSeoMetaTitle',
								'settings[seo][meta][title]',
								$hdvb->config['seo']['meta']['title'] ? $hdvb->config['seo']['meta']['title'] : false,
								''
							),
							'Шаблон заполнения мета-заголовока новости'
						); ?>

						<?php echo HdvbForm::group(
							'moduleSeoMetaDescription',
							'Мета-описание новости',
							HdvbForm::text(
								'moduleSeoMetaDescription',
								'settings[seo][meta][description]',
								$hdvb->config['seo']['meta']['description'] ? $hdvb->config['seo']['meta']['description'] : false,
								''
							),
							'Шаблон заполнения мета-описания новости'
						); ?>

					</div>

				</div>
			</div>

		</div>

		<div class="card hdvb-card mb-3">
			
			<div class="card-header hdvb-card-header" id="headingUpdate">
				<h2 class="mb-0">
					<button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseUpdate" aria-expanded="true" aria-controls="collapseUpdate">
						Настройки обновления
					</button>
				</h2>
			</div>

			<div id="collapseUpdate" class="collapse" aria-labelledby="headingUpdate" data-parent="#accordionSettings">
				<div class="alert alert-info mb-0 cron-doc" style="margin:5px;border-radius:3px">
				
					<h3>Пример настройки <strong>crontab</strong> на сервере</h3>

					<hr class="hdvb-separator mt-2 mb-2">

					<div>
						<strong>0 */3 * * *</strong> /usr/bin/wget --no-check-certificate -t 1 -O - '<strong><?php echo $cron; ?></strong>' &>/dev/null
					</div>

					<hr class="hdvb-separator mt-2 mb-2">

					<div>
						<strong>0 */3 * * *</strong> /usr/bin/curl --silent '<strong><?php echo $cron; ?></strong>' &>/dev/null
					</div>

				</div>

				<div class="card-body">
				
					<div class="row" id="HdvbUpdateRow">

						<?php echo HdvbForm::group(
							'moduleUpdateType',
							'Способ запуска обновления',
							HdvbForm::radio(
								'moduleUpdateTypeDefault',
								'settings[update][type]',
								'Стандартное обновление',
								0,
								intval($hdvb->config['update']['type'])
							) . '<div class="text-muted mb-2">Обновление будет запускаться при открытии страниц сайта с интервалом указанным в настройке "<b>Интервал запуска обновления</b>"</div>' . HdvbForm::radio(
								'moduleUpdateTypeCron',
								'settings[update][type]',
								'Планировщик задач (<b>cron</b>)',
								1,
								intval($hdvb->config['update']['type'])
							) . '<div class="text-muted">Обновление будет запускаться по расписанию</div>',
							''
						); ?>

						<?php echo HdvbForm::group(
							'moduleUpdateInterval',
							'Интервал запуска обновления',
							HdvbForm::select(
								'moduleUpdateInterval',
								'settings[update][interval]',
								array(
									'30m' => '30 минут',
									'1h' => '1 час',
									'2h' => '2 часа',
									'3h' => '3 часа',
								),
								$hdvb->config['update']['interval'] ? $hdvb->config['update']['interval'] : '3h'
							),
							'Интервал запуска обновления'
						); ?>

						<?php echo HdvbForm::group(
							'moduleUpdateCron',
							'',
							'<div class="alert alert-warning" style="margin-left:-15px;margin-right:-15px;border-radius:3px">
								Обновление в прланировщике задач (<b>cron</b>) вы настраиваете сами у себя на сервере/хостинге. Вы можете попробовать попросить помощи в настройке у поддержки сервера/хостинга.
							</div>
							<div class="alert alert-primary mb-0" style="margin-left:-15px;margin-right:-15px;border-radius:3px">
								<h4 class="alert-heading mb-0">' . $cron . '</h4>
							</div>',
							''
						); ?>

					</div>

					<hr class="hdvb-separator">
					
					<div class="row">

						<?php echo HdvbForm::group(
							'moduleXfieldsNotUpdate',
							'Не обновлять',
							HdvbForm::select(
								'moduleXfieldsNotUpdate',
								'settings[xfields][npt_update]',
								$not_update_xfields,
								$hdvb->config['xfields']['npt_update']
							),
							'Доп. поле <b>Переключатель \'Да\' или \'Нет\'</b> для исключения новости из обновления (если <b>Да</b>, новость участвовать в обновлении не будет)'
						); ?>

					</div>

					<h4 class="card-header sub-card-header mb-3">Настройки обновления фильмов</h4>

					<div class="row">

						<?php echo HdvbForm::group(
							'moduleUpdateMoviesOn',
							'Обновление фильмов',
							HdvbForm::_switch(
								'moduleUpdateMoviesOn',
								'settings[update][movies][on]',
								$hdvb->config['update']['movies']['on'] ? true : false
							),
							'Включение и выключение обновления фильмов'
						); ?>

					</div>

					<hr class="hdvb-separator">
					
					<div class="row">

						<?php echo HdvbForm::group(
							'moduleUpdateMovies',
							'Дополнительные опции',
							HdvbForm::checkbox(
								'moduleUpdateMoviesUp',
								'settings[update][movies][up]',
								'Поднимать новость при выходе лучшего качества видео',
								$hdvb->config['update']['movies']['up'] ? true : false
							) . HdvbForm::checkbox(
								'moduleUpdateMoviesAdd',
								'settings[update][movies][add]',
								'Добавлять новость если фильм не найден на сайте<br>(попадает на модерацию)',
								$hdvb->config['update']['movies']['add'] ? true : false
							),
							'Дополнительные опции обновления фильмов'
						); ?>

					</div>

					<h4 class="card-header sub-card-header mb-3">Настройки обновления сериалов</h4>

					<div class="row">

						<?php echo HdvbForm::group(
							'moduleUpdateSerialsOn',
							'Обновление сериалов',
							HdvbForm::_switch(
								'moduleUpdateSerialsOn',
								'settings[update][serials][on]',
								$hdvb->config['update']['serials']['on'] ? true : false
							),
							'Включение и выключение обновления сериалов'
						); ?>

					</div>

					<hr class="hdvb-separator">
					
					<div class="row">

						<?php echo HdvbForm::group(
							'moduleUpdateSerialsPriority',
							'Приоритет переводов сериалов',
							'<div>
								<button id="serialsPriorityButton" type="button" class="btn btn-primary" data-toggle="modal" data-target="#serialsPriorityModal">Настроить приоритет переводов</button>
							</div>',
							'Настройки приориета переводов сериалов'
						); ?>

					</div>

					<hr class="hdvb-separator">
					
					<div class="row">

						<?php echo HdvbForm::group(
							'moduleUpdateSerials',
							'Дополнительные опции',
							HdvbForm::checkbox(
								'moduleUpdateSerialsUp',
								'settings[update][serials][up]',
								'Поднимать новость при выходе новой серии сериала',
								$hdvb->config['update']['serials']['up'] ? true : false
							) . HdvbForm::checkbox(
								'moduleUpdateSerialsAdd',
								'settings[update][serials][add]',
								'Добавлять новость если сериал не найден на сайте<br>(попадает на модерацию)',
								$hdvb->config['update']['serials']['add'] ? true : false
							),
							'Дополнительные опции обновления сериалов'
						); ?>

					</div>

					<h4 class="card-header sub-card-header mb-3">Блок обновлений сериалов</h4>

					<div class="alert alert-info" style="margin-left:-15px;margin-right:-15px;border-radius:3px;margin-top:5px">
					
						<div>
							<strong>{include file="hdvb/widgets/updates.php"}</strong>
							&mdash; Вывод блока обвновлений сериалов в шаблоне
						</div>

						<hr class="hdvb-separator mt-2 mb-2">

						<div>
							Файл шаблона для редактирования блока обновлений сериалов находится по этому пути &mdash; <strong>hdvb/widgets/updates.tpl</strong>
						</div>

					</div>

					<div class="row">

						<?php echo HdvbForm::group(
							'moduleSerialsUpdatesOn',
							'Блок обновлений сериалов',
							HdvbForm::_switch(
								'moduleSerialsUpdatesOn',
								'settings[serials][updates][on]',
								$hdvb->config['serials']['updates']['on'] ? true : false
							),
							'Включение и выключение вывода блока обновлений сериалов'
						); ?>

					</div>

					<hr class="hdvb-separator">
					
					<div class="row">

						<?php echo HdvbForm::group(
							'moduleSerialsUpdatesDays',
							'Кол-во дней',
							HdvbForm::text(
								'moduleSerialsUpdatesDays',
								'settings[serials][updates][days]',
								$hdvb->config['serials']['updates']['days'] ? $hdvb->config['serials']['updates']['days'] : false,
								'7'
							),
							'Кол-во дней за которое выводить обновления в блоке<br>(по умолчанию последние <b>7</b> дней)'
						); ?>

						<?php echo HdvbForm::group(
							'moduleSerialsUpdatesDayItems',
							'Макс. кол-во записей',
							HdvbForm::text(
								'moduleSerialsUpdatesDayItems',
								'settings[serials][updates][items]',
								$hdvb->config['serials']['updates']['items'] ? $hdvb->config['serials']['updates']['items'] : false,
								''
							),
							'Максимальное кол-во записей выводимое в блоке за <b>1</b> день<br>(по умолчанию не ограничено)'
						); ?>

					</div>

				</div>

			</div>

		</div>

	</div>

	<textarea name="settings[custom][qualities]" id="settingsCustomQualities" style="display: none"></textarea>
	<textarea name="settings[custom][translations]" id="settingsCustomTranslations" style="display: none"></textarea>

	<textarea name="settings[update][serials][priority]" id="settingsUpdateSerialsPriority" style="display: none"></textarea>

</form>

<button type="button" class="btn btn-success btn-lg" id="settingsSave">Сохранить</button>

<!-- Custom Quality Modal -->
<div class="modal fade" id="customQualityModal" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="customQualityModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-lg modal-dialog-scrollable" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="customQualityModalLabel">Свои названия качеств</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				
				<div class="alert alert-primary">
					После изменения названий качеств не забудьте закрыть это окно и сохранить настройки.
				</div>

				<div id="customQualityList">
					<?php if ($hdvb->config['custom']['qualities']) foreach ($hdvb->config['custom']['qualities'] as $pattern => $replacement) { ?>
						<div class="form-inline custom-quality">
							<input type="text" class="form-control custom-quality-from" placeholder="Название из базы" value="<?php echo hdvbEncode($pattern); ?>">
							<input type="text" class="form-control custom-quality-to" placeholder="Своё название" value="<?php echo hdvbEncode($replacement); ?>">
							<button type="button" class="btn btn-danger custom-quality-delete" title="Удалить замену"><i class="fas fa-trash"></i></button>
						</div>
					<?php } ?>
				</div>

				<button type="button" class="btn btn-success custom-quality-duplicate" title="Добавить замену">
					Добавить замену
				</button>

			</div>
		</div>
	</div>
</div>

<!-- Custom Translation Modal -->
<div class="modal fade" id="customTranslationModal" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="customTranslationModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-lg modal-dialog-scrollable" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="customTranslationModalLabel">Свои названия переводов</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				
				<div class="alert alert-primary">
					После изменения названий переводов не забудьте закрыть это окно и сохранить настройки.
				</div>

				<div id="customTranslationList">
					<?php if ($hdvb->config['custom']['translations']) foreach ($hdvb->config['custom']['translations'] as $pattern => $replacement) { ?>
						<div class="form-inline custom-translation">
							<input type="text" class="form-control custom-translation-from" placeholder="Название из базы" value="<?php echo hdvbEncode($pattern); ?>">
							<input type="text" class="form-control custom-translation-to" placeholder="Своё название" value="<?php echo hdvbEncode($replacement); ?>">
							<button type="button" class="btn btn-danger custom-translation-delete" title="Удалить замену"><i class="fas fa-trash"></i></button>
						</div>
					<?php } ?>
				</div>

				<button type="button" class="btn btn-success custom-translation-duplicate" title="Добавить замену">
					Добавить замену
				</button>

			</div>
		</div>
	</div>
</div>

<!-- Serials Priority Modal -->
<div class="modal fade" id="serialsPriorityModal" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="serialsPriorityModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-lg modal-dialog-scrollable" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="serialsPriorityModalLabel">Приоритет переводов</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				
				<div class="alert alert-primary">
					После изменений приоритета переводов не забудьте закрыть это окно и сохранить настройки.
				</div>

				<div class="hdvb-priority">
					
					<div id="serialsPriorityContainer" class="sort-container">
						<?php
							if ($hdvb->config['update']['serials']['priority']) foreach ($hdvb->config['update']['serials']['priority'] as $key) {
								if (!$hdvb->config['translations'][$key])
									continue;
								else
									$translation = $hdvb->config['translations'][$key];
						?>
							<div id="serialsTranslation<?=$key?>" class="sortable sortable-selected btn btn-outline-info" data-id="<?=$key?>"><?=$translation?><a href="javascript:void(0)" data-id="<?=$key?>" title="Удалить перевод"><i class="fas fa-times"></i></a></div>
						<?php } ?>
					</div>

					<div id="serialsNoPriorityContainer" class="sort-container">
						<?php
							if ($hdvb->config['translations']) foreach ($hdvb->config['translations'] as $key => $translation) {
								if (in_array($key, $hdvb->config['update']['serials']['priority']))
									continue;
							?>
							<div id="serialsTranslation<?=$key?>" class="sortable btn btn-outline-secondary" data-id="<?=$key?>"><?=$translation?><a href="javascript:void(0)" data-id="<?=$key?>" title="Добавить перевод"><i class="fas fa-plus"></i></a></div>
						<?php } ?>
					</div>
					
				</div>

			</div>
		</div>
	</div>
</div>

<?php

include dirname(__FILE__) . '/footer.php';