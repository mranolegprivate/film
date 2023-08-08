<?php

$pageTitle = 'HDVB - Массовое проставление данных';

include dirname(__FILE__) . '/header.php';

?>

<form id="replacementForm" action="">

<div class="accordion" id="accordionReplacement">

	<div class="card hdvb-card mb-3">
		
		<div class="card-header hdvb-card-header" id="headingReplacement">
			<h2 class="mb-0">
				<button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseReplacement" aria-expanded="true" aria-controls="collapseReplacement">
					Массовое проставление данных
				</button>
			</h2>
		</div>

		<div id="collapseReplacement" class="collapse show" aria-labelledby="headingReplacement" data-parent="#accordionReplacement">
			<div class="card-body">
			
				<div class="row">
							
					<?php echo HdvbForm::group(
						'fields',
						'Поля для поиска',
						'<div class="row"><div class="col">' . HdvbForm::checkbox(
							'kinopoisk',
							'replacement[search][kinopoisk_id]',
							'Kinopoisk&nbsp;ID',
							false
						) . '</div><div class="col">' . HdvbForm::checkbox(
							'worldart',
							'replacement[search][world_art_id]',
							'World&nbsp;Art&nbsp;ID',
							false
						) . '</div><div class="col"></div><div class="col"></div></div>',
						'Поля для поиска видео в базе'
					); ?>

					<?php echo HdvbForm::group(
						'rewrite',
						'Перезаписывать',
						HdvbForm::_switch(
							'rewrite',
							'replacement[rewrite]',
							false
						),
						'Перезаписывать данные если они были заполнены ранее'
					); ?>

				</div>

				<hr class="hdvb-separator">
					
				<div class="row">

					<?php
						$xfieldsaction = "categoryfilter";
						include ENGINE_DIR . '/inc/xfields.php';
						echo $categoryfilter;

						$categories_list = CategoryNewsSelection(0, 0);
					?>

					<?php echo HdvbForm::group(
						'category',
						'Категории',
						"<select data-placeholder=\"Выберите категории ...\" name=\"replacement[category][]\" id=\"category\" onchange=\"onCategoryChange(this)\" class=\"categoryselect\" multiple style=\"width:100%;max-width:350px\">
							{$categories_list}
						</select>
						<div class=\"custom-control custom-checkbox\" style=\"float:right;margin-top:-29px\" title=\"Исключить выбранные категории\">
							<input type=\"checkbox\" name=\"replacement[category_inverse]\" value=\"1\" class=\"custom-control-input\" id=\"categoryInverse\">
							<label class=\"custom-control-label\" for=\"categoryInverse\"></label>
						</div>",
						'Категории новостей'
					); ?>

					<?php echo HdvbForm::group(
						'status',
						'Статус',
						HdvbForm::select(
							'status',
							'replacement[status]',
							array(
								0 => 'Все',
								1 => 'Опубликованные',
								2 => 'На модерации',
							),
							''
						),
						'Статус новостей'
					); ?>

				</div>

				<hr class="hdvb-separator">
					
				<div class="row">

					<?php echo HdvbForm::group(
						'threads',
						'Потоки',
						HdvbForm::select(
							'threads',
							'replacement[threads]',
							array(
								1 => 1,
								2 => 2,
								3 => 3,
								5 => 5,
								6 => 6,
								7 => 7,
								8 => 8,
								9 => 9,
								10 => 10,
							),
							3
						),
						'Выставите оптимальное кол-во одновременных потоков</i>'
					); ?>

					<?php echo HdvbForm::group(
						'interval',
						'Интервал',
						HdvbForm::select(
							'interval',
							'replacement[interval]',
							array(
								0 => '0 мс',
								100 => '100 мс',
								200 => '200 мс',
								300 => '300 мс',
								500 => '500 мс',
								1000 => '1 сек',
								2000 => '2 сек',
								3000 => '3 сек',
							),
							1000
						),
						'Выставите оптимальный интервал межу запуском потоков</i>'
					); ?>

				</div>
					
				<h4 class="card-header sub-card-header mb-3">Выберите поля которые нужно заполнять</h4>
					
				<div class="row">

					<?php echo HdvbForm::group(
						'moduleReplacementXfields',
						'',
						HdvbForm::checkbox(
							'replacementXfeildsSource',
							'replacement[xfields][source]',
							'Источник видео',
							false
						) . HdvbForm::checkbox(
							'replacementXfeildsQuality',
							'replacement[xfields][quality]',
							'Качество видео',
							false
						) . HdvbForm::checkbox(
							'replacementXfeildsTranslation',
							'replacement[xfields][translation]',
							'Перевод',
							false
						) . HdvbForm::checkbox(
							'replacementXfeildsSeason',
							'replacement[xfields][season]',
							'Номер последнего сезона',
							false
						) . HdvbForm::checkbox(
							'replacementXfeildsEpisode',
							'replacement[xfields][episode]',
							'Номер последней серии',
							false
						),
						''
					); ?>

					<?php echo HdvbForm::group(
						'moduleReplacementXfieldsAdditional',
						'',
						HdvbForm::checkbox(
							'replacementXfeildsYear',
							'replacement[xfields][year]',
							'Год выпуска',
							false
						) . HdvbForm::checkbox(
							'replacementXfeildsTranslations',
							'replacement[xfields][translations]',
							'Список переводов сериала',
							false
						) . HdvbForm::checkbox(
							'replacementXfeildsCustomQuality',
							'replacement[xfields][custom_quality]',
							'Качетсво видео (с заменой)',
							false
						) . HdvbForm::checkbox(
							'replacementXfeildsCustomTranslation',
							'replacement[xfields][custom_translation]',
							'Перевод (с заменой)',
							false
						) . HdvbForm::checkbox(
							'replacementXfeildsCustomTranslations',
							'replacement[xfields][custom_translations]',
							'Список переводов сериала (с заменой)',
							false
						) . HdvbForm::checkbox(
							'replacementXfeildsFormatSeason',
							'replacement[xfields][format_season]',
							'Форматированный сезон',
							false
						) . HdvbForm::checkbox(
							'replacementXfeildsFormatEpisode',
							'replacement[xfields][format_episode]',
							'Форматированная серия',
							false
						),
						''
					); ?>

				</div>
					
				<h4 class="card-header sub-card-header mb-3">Укажите какие СЕО данные нужно заполнять</h4>
					
				<div class="row">

					<?php echo HdvbForm::group(
						'moduleReplacementXfieldsAdditional',
						'',
						HdvbForm::checkbox(
							'replacementSeoUrl',
							'replacement[seo][url]',
							'ЧПУ новости',
							false
						) . HdvbForm::checkbox(
							'replacementSeoTitle',
							'replacement[seo][title]',
							'Заголовок новости',
							false
						) . HdvbForm::checkbox(
							'replacementSeoMetaTitle',
							'replacement[seo][meta_title]',
							'Мета-заголовок новости',
							false
						) . HdvbForm::checkbox(
							'replacementSeoMetaDescription',
							'replacement[seo][meta_description]',
							'Мета-описание новости',
							false
						),
						''
					); ?>

				</div>

			</div>
		</div>

	</div>

</div>

</form>

<div style="overflow-x: auto">
	<table class="table table-dark" id="replacementStatus" data-status="abort" data-post-id="0">
		<thead>
			<tr>
				<th scope="col">Осталось</th>
				<th scope="col">Успешно</th>
				<th scope="col">Существует</th>
				<th scope="col">Не&nbsp;найдено</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td><span id="replacementCountContinue" class="badge badge-primary hdvb-status">0</span></td>
				<td><span id="replacementCountSuccess" class="badge badge-success hdvb-status">0</span></td>
				<td><span id="replacementCountExist" class="badge badge-warning hdvb-status">0</span></td>
				<td><span id="replacementCountNotFound" class="badge badge-danger hdvb-status">0</span></td>
			</tr>
		</tbody>
	</table>
</div>

<button id="replacementStart" type="button" class="btn btn-success">Начать</button>
<button id="replacementStop" style="display:none" type="button" class="btn btn-light">Остановить</button>
<button id="replacementAbort" style="display:none" type="button" class="btn btn-danger">Отменить</button>

<?php

include dirname(__FILE__) . '/footer.php';