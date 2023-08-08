<?php

$baseUrl = $PHP_SELF . '?mod=hdvb';

require_once dirname(__FILE__) . '/../../init.php';

if (!$hdvb->config['on'] || !$hdvb->config['api']['token'])
	return false;

$search = array(
	'title' => '#hdvbSearchTitle',
	'kinopoisk_id' => $hdvb->config['xfields']['search']['kinopoisk_id'] ? "#xf_{$hdvb->config['xfields']['search']['kinopoisk_id']}" : '',
	'world_art_id' => $hdvb->config['xfields']['search']['world_art_id'] ? "#xf_{$hdvb->config['xfields']['search']['world_art_id']}" : ''
);

$write = array(
	'source' => $hdvb->config['xfields']['write']['source'] ? "#xf_{$hdvb->config['xfields']['write']['source']}" : '',
	'year' => $hdvb->config['xfields']['write']['year'] ? "#xf_{$hdvb->config['xfields']['write']['year']}" : '',
	'quality' => $hdvb->config['xfields']['write']['quality'] ? "#xf_{$hdvb->config['xfields']['write']['quality']}" : '',
	'translation' => $hdvb->config['xfields']['write']['translation'] ? "#xf_{$hdvb->config['xfields']['write']['translation']}" : '',
	'custom_quality' => $hdvb->config['xfields']['write']['custom_quality'] ? "#xf_{$hdvb->config['xfields']['write']['custom_quality']}" : '',
	'custom_translation' => $hdvb->config['xfields']['write']['custom_translation'] ? "#xf_{$hdvb->config['xfields']['write']['custom_translation']}" : '',
	'season' => $hdvb->config['xfields']['write']['season'] ? "#xf_{$hdvb->config['xfields']['write']['season']}" : '',
	'episode' => $hdvb->config['xfields']['write']['episode'] ? "#xf_{$hdvb->config['xfields']['write']['episode']}" : '',
	'format_season' => $hdvb->config['xfields']['write']['format_season'] ? "#xf_{$hdvb->config['xfields']['write']['format_season']}" : '',
	'format_episode' => $hdvb->config['xfields']['write']['format_episode'] ? "#xf_{$hdvb->config['xfields']['write']['format_episode']}" : ''
);

$seo = array(
	'on' => $hdvb->config['seo']['on'] ? 'true' : 'false',
	'url' => 'input[name="alt_name"]',
	'title' => '#title',
	'meta_title' => 'input[name="meta_title"]',
	'meta_description' => '#autodescr'
);

$output .= "<div class=\"form-group\">
	<label class=\"control-label col-sm-2\">HDVB:</label>
	<div class=\"col-sm-10\">

	<link href=\"/hdvb/admin/assets/css/search.css?v=1\" rel=\"stylesheet\">

	<div class=\"hdvb-search\">
		
		<input type=\"text\" id=\"hdvbSearchTitle\" class=\"hdvb-form-control\" placeholder=\"Название видео\" title=\"Заполните для поиска видео в базе по названию\">

		<button type=\"button\" id=\"hdvbSearch\" class=\"hdvb-btn hdvb-btn-primary\">Найти в базе HDVB</button>
		<button type=\"button\" id=\"hdvbClearSearch\" class=\"hdvb-btn hdvb-btn-danger\" style=\"display:none\">Очитстить поиск</button>
		<button type=\"button\" id=\"hdvbClearSource\" class=\"hdvb-btn hdvb-btn-warning\" style=\"display:none\">Удалить ссылку на источник</button>

		<div id=\"hdvbNotFound\" style=\"display:none\">
			По вашему запросу в базе ничего не найдено
		</div>

		<div id=\"hdvbSearchResults\" style=\"display:none\"></div>

	</div>

	<script>
	<!--

		var hdvbBaseUrl = '{$baseUrl}';

		var hdvb = {};

		hdvb.search = {};
		hdvb.search.title = '{$search['title']}';
		hdvb.search.kinopoisk_id = '{$search['kinopoisk_id']}';
		hdvb.search.world_art_id = '{$search['world_art_id']}';

		hdvb.write = {};
		hdvb.write.source = '{$write['source']}';
		hdvb.write.year = '{$write['year']}';
		hdvb.write.quality = '{$write['quality']}';
		hdvb.write.translation = '{$write['translation']}';
		hdvb.write.custom_quality = '{$write['custom_quality']}';
		hdvb.write.custom_translation = '{$write['custom_translation']}';
		hdvb.write.season = '{$write['season']}';
		hdvb.write.episode = '{$write['episode']}';
		hdvb.write.format_season = '{$write['format_season']}';
		hdvb.write.format_episode = '{$write['format_episode']}';

		hdvb.seo = {};
		hdvb.seo.on = {$seo['on']};
		hdvb.seo.url = '{$seo['url']}';
		hdvb.seo.title = '{$seo['title']}';
		hdvb.seo.meta_title = '{$seo['meta_title']}';
		hdvb.seo.meta_description = '{$seo['meta_description']}';

	//-->
</script>
<script src=\"/hdvb/admin/assets/js/search.js?v=1\"></script>

</div>
</div>";