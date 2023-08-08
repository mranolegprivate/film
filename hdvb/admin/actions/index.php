<?php

$pageTitle = 'HDVB';

include dirname(__FILE__) . '/header.php';

?>

<div class="jumbotron">
	<div class="container">
		<h1 class="display-3">HDVB</h1>
		<p class="big-text">
			Пожалуйста, пройдите первичную настройку модуля.
		</p>
		<p><a class="btn btn-primary btn-lg" href="<?php echo hdvbAction('settings'); ?>" role="button">Настройки модуля</a></p>
	</div>
</div>

<?php

include dirname(__FILE__) . '/footer.php';