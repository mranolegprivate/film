		<hr>

	  <footer class="container">
			<p><b>HDVB</b> v<?php echo $hdvb->version(); ?></p>
		</footer>

	</div>

	<div id="Toast" class="toast hide hdvb-toast" role="alert" aria-live="assertive" aria-atomic="true" data-delay="1000">
		<div class="toast-header">
			<span class="mr-auto">HDVB</span>
			<button type="button" class="ml-2 mb-1 close" data-dismiss="toast" aria-label="Close">
				<span aria-hidden="true">&times;</span>
			</button>
		</div>
		<div class="toast-body"></div>
	</div>

	<?php echo hdvbJS(array(
		'/hdvb/admin/assets/js/jquery.min.js',
		'/hdvb/admin/assets/js/jquery-ui.min.js',
		'/hdvb/admin/assets/js/jquery.autocomplete.js',
		'/hdvb/admin/assets/js/popper.min.js',
		'/hdvb/admin/assets/js/bootstrap.min.js',
		'/hdvb/admin/assets/js/chosen.min.js',
	)); ?>

	<script>
		<!--
			
			var baseUrl = '<?php echo $baseUrl; ?>';
			var updateType = <?php echo (intval($hdvb->config['update']['type']) ? 1 : 0); ?>;

			var qualities = <?php echo json_encode($qualities); ?>;
			var translations = <?php echo json_encode($translations); ?>;

		//-->
	</script>

	<?php echo hdvbJS('/hdvb/admin/assets/js/app.js?v=6'); ?>

</body>
</html>