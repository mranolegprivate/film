<!doctype html>
<html lang="ru">
<head>
	
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<?php echo hdvbCSS(array(
		'https://fonts.googleapis.com/css?family=Source+Sans+Pro:200,200i,300,300i,400,400i,600,600i,700,700i,900,900i&display=swap&subset=cyrillic',
		'/hdvb/admin/assets/css/bootstrap.min.css',
		'/hdvb/admin/assets/css/jquery-ui.min.css',
		'/hdvb/admin/assets/css/chosen.css',
		'/hdvb/admin/assets/css/app.css?v=5',
	)); ?>

	<?php echo hdvbJS('/hdvb/admin/assets/js/fontawesome.min.js'); ?>

	<title><?php echo $pageTitle; ?></title>

</head>
<body class="hdvb">
		
	<nav class="navbar navbar-expand-lg navbar-light bg-light mb-3">
	
		<a class="navbar-brand" href="<?php echo $baseUrl; ?>"><b>HDVB</b></a>

		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			
			<ul class="navbar-nav hdvbupdate-nav">

				<li class="nav-item<?php echo (stripos($action, 'settings') !== false ? ' active' : ''); ?>">
					<a class="nav-link" href="<?php echo hdvbAction('settings'); ?>">
						Настройки модуля
					</a>
				</li>

				<li class="nav-item<?php echo (stripos($action, 'replacement') !== false ? ' active' : ''); ?>">
					<a class="nav-link" href="<?php echo hdvbAction('replacement'); ?>">
						Массовое проставление данных
					</a>
				</li>

				<li class="nav-item<?php echo (stripos($action, 'base') !== false ? ' active' : ''); ?> dropdown">
					<a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">База данных</a>
					<div class="dropdown-menu" style="">
						<a class="dropdown-item" href="<?php echo hdvbAction('base'); ?>">Поиск по базе</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item disabled" href="#">Фильмы</a>
						<a class="dropdown-item<?php echo (stripos($action, 'base') !== false && $section == 'movies' && !$cat && !$search ? ' active' : ''); ?>" href="<?php echo hdvbAction('base'); ?>&section=movies">Все</a>
						<a class="dropdown-item<?php echo (stripos($action, 'base') !== false && $section == 'movies' && $cat == 2 ? ' active' : ''); ?>" href="<?php echo hdvbAction('base'); ?>&section=movies&cat=2">Русские</a>
						<a class="dropdown-item<?php echo (stripos($action, 'base') !== false && $section == 'movies' && $cat == 3 ? ' active' : ''); ?>" href="<?php echo hdvbAction('base'); ?>&section=movies&cat=3">Зарубежные</a>
						<a class="dropdown-item<?php echo (stripos($action, 'base') !== false && $section == 'movies' && $cat == 4 ? ' active' : ''); ?>" href="<?php echo hdvbAction('base'); ?>&section=movies&cat=4">Аниме</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item disabled" href="#">Сериалы</a>
						<a class="dropdown-item<?php echo (stripos($action, 'base') !== false && $section == 'serials' && !$cat ? ' active' : ''); ?>" href="<?php echo hdvbAction('base'); ?>&section=serials">Все</a>
						<a class="dropdown-item<?php echo (stripos($action, 'base') !== false && $section == 'serials' && $cat == 2 ? ' active' : ''); ?>" href="<?php echo hdvbAction('base'); ?>&section=serials&cat=2">Русские</a>
						<a class="dropdown-item<?php echo (stripos($action, 'base') !== false && $section == 'serials' && $cat == 3 ? ' active' : ''); ?>" href="<?php echo hdvbAction('base'); ?>&section=serials&cat=3">Зарубежные</a>
						<a class="dropdown-item<?php echo (stripos($action, 'base') !== false && $section == 'serials' && $cat == 4 ? ' active' : ''); ?>" href="<?php echo hdvbAction('base'); ?>&section=serials&cat=4">Аниме</a>
					</div>
				</li>

				<li class="nav-item admin-item">
					<a href="<?php echo $PHP_SELF; ?>" class="btn btn-info" target="_blank">Админпанель сайта</a>
				</li>

			</ul>

		</div>

	</nav>

	<div class="container">