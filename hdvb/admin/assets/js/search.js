if (hdvb.write.source) {
	if ($(hdvb.write.source).val())
		$('#hdvbClearSource').show();
}

$('#hdvbClearSource').click(function() {

	if (hdvb.write.source) {
		var element = $(hdvb.write.source);
		if (element.val())
			element.val('');
	}

	$(this).hide();

});

$('#hdvbClearSearch').click(function() {

	$('#hdvbSearchResults').hide().html('');
	$(this).hide();

});

$('#hdvbSearch').click(function() {

	var field, value;

	// World Art ID

	if (hdvb.search.world_art_id) {
		var element = $(hdvb.search.world_art_id);
		if (element.val()) {
			field = 'world_art_id';
			value = element.val();
		}
	}

	// Kinopoisk ID

	if (hdvb.search.kinopoisk_id) {
		var element = $(hdvb.search.kinopoisk_id);
		if (element.val()) {
			field = 'kinopoisk_id';
			value = element.val();
		}
	}

	// title

	if (hdvb.search.title) {
		var element = $(hdvb.search.title);
		if (element.val()) {
			field = 'title';
			value = element.val();
		}
	}

	if (!field || !value || value.length < 3) {
		HideLoading();
		alert('Не найдено ни одного поля для поиска!');
		return false;
	}

	ShowLoading();

	$.ajax({
		url: hdvbBaseUrl + '&action=search&field=' + encodeURIComponent(field) + '&value=' + encodeURIComponent(value),
		dataType: 'json',
		cache: false
	}).done(function(data) {

		HideLoading();

		// notfound

		if (data.notfound) {

			$('#hdvbSearchResults, #hdvbClearSearch').hide();
			$('#hdvbNotFound').show();

		}

		// success

		if (data.success) {

			var result = '';

			$.each(data.result, function(key, item) {

				result += '<div class="hdvb-item">';

				if (item.type_ru)
					result += '<div class="hdvb-item-type hdvb-item-type-' + item.type + '">' + item.type_ru + '</div>';

				if (item.title_ru)
					result += '<div class="hdvb-item-title">' + item.title_ru + '</div>';

				if (item.title_en)
					result += '<div class="hdvb-item-title hdvb-title-en">' + item.title_en + '</div>';

				if (item.translation)
					result += '<div class="hdvb-item-type hdvb-item-type-translation">' + item.translation + '</div>';

				if (item.quality)
					result += '<div class="hdvb-item-type hdvb-item-type-quality">' + item.quality + '</div>';

				result += '<button type="button" class="hdvb-btn hdvb-btn-light hdvb-write" title="Проставить данные"';

				result += ' year="' + item.year + '"';

				result += ' source="' + item.source + '"';
				
				result += ' quality="' + item.quality + '"';
				result += ' translation="' + item.translation + '"';

				result += ' custom_quality="' + item.custom_quality + '"';
				result += ' custom_translation="' + item.custom_translation + '"';

				result += ' season="' + item.season + '"';
				result += ' episode="' + item.episode + '"';

				result += ' format_season="' + item.format_season + '"';
				result += ' format_episode="' + item.format_episode + '"';

				result += ' seo_url="' + item.seo_url + '"';
				result += ' seo_title="' + item.seo_title + '"';
				result += ' seo_meta_title="' + item.seo_meta_title + '"';
				result += ' seo_meta_description="' + item.seo_meta_description + '"';

				result += '><svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="#777" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" class="feather feather-copy"><rect x="9" y="9" width="13" height="13" rx="2" ry="2"></rect><path d="M5 15H4a2 2 0 0 1-2-2V4a2 2 0 0 1 2-2h9a2 2 0 0 1 2 2v1"></path></svg></button>';

				result += '</div>';

			});

			$('#hdvbSearchResults').html(result);

			$('.hdvb-write').click(function() {

				// year
				
				if (hdvb.write.year) {
					var year = $(this).attr('year');
					if (year)
						hdvb_write(hdvb.write.year, year);
				}

				// source
				
				if (hdvb.write.source) {
					var source = $(this).attr('source');
					if (source)
						hdvb_write(hdvb.write.source, source);

					$('#hdvbClearSource').show();
				}

				// quality
				
				if (hdvb.write.quality) {
					var quality = $(this).attr('quality');
					if (quality)
						hdvb_write(hdvb.write.quality, quality);
				}

				// translation
				
				if (hdvb.write.translation) {
					var translation = $(this).attr('translation');
					if (translation)
						hdvb_write(hdvb.write.translation, translation);
				}

				// custom quality
				
				if (hdvb.write.custom_quality) {
					var custom_quality = $(this).attr('custom_quality');
					if (custom_quality)
						hdvb_write(hdvb.write.custom_quality, custom_quality);
				}

				// custom translation
				
				if (hdvb.write.custom_translation) {
					var custom_translation = $(this).attr('custom_translation');
					if (custom_translation)
						hdvb_write(hdvb.write.custom_translation, custom_translation);
				}

				// season
				
				if (hdvb.write.season) {
					var season = $(this).attr('season');
					if (season)
						hdvb_write(hdvb.write.season, season);
				}

				// episode
				
				if (hdvb.write.episode) {
					var episode = $(this).attr('episode');
					if (episode)
						hdvb_write(hdvb.write.episode, episode);
				}

				// format season
				
				if (hdvb.write.format_season) {
					var format_season = $(this).attr('format_season');
					if (format_season)
						hdvb_write(hdvb.write.format_season, format_season);
				}

				// format episode
				
				if (hdvb.write.format_episode) {
					var format_episode = $(this).attr('format_episode');
					if (format_episode)
						hdvb_write(hdvb.write.format_episode, format_episode);
				}

				// seo

				if (hdvb.seo.on) {

					// seo url
				
					if (hdvb.seo.url) {
						var seo_url = $(this).attr('seo_url');
						if (seo_url)
							hdvb_write(hdvb.seo.url, seo_url);
					}

					// seo title
				
					if (hdvb.seo.title) {
						var seo_title = $(this).attr('seo_title');
						if (seo_title)
							hdvb_write(hdvb.seo.title, seo_title);
					}

					// seo meta title
				
					if (hdvb.seo.meta_title) {
						var seo_meta_title = $(this).attr('seo_meta_title');
						if (seo_meta_title)
							hdvb_write(hdvb.seo.meta_title, seo_meta_title);
					}

					// seo meta description
				
					if (hdvb.seo.meta_description) {
						var seo_meta_description = $(this).attr('seo_meta_description');
						if (seo_meta_description)
							hdvb_write(hdvb.seo.meta_description, seo_meta_description);
					}

				}

				$('#hdvbClearSearch').show();

				return false;

			});

			$('#hdvbNotFound').hide();
			$('#hdvbSearchResults, #hdvbClearSearch').show();

		}

		// error

		if (data.error) {

			$('#hdvbNotFound, #hdvbSearchResults, #hdvbClearSearch').hide();

			alert('Search failed: ' + data.message);

		}

	}).fail(function(jqxhr, textStatus) {
		
		HideLoading();

		console.log(jqxhr.responseText);

	});

});

function hdvb_write(field, value) {

	if (typeof(value) == 'undefined')
		return false;

	if ($('#xfield_holder_' + field.replace('#xf_', '') + ' select').length) {
		var options = $('#xfield_holder_' + field.replace('#xf_', '') + ' select option');

		if (options.length) {
			$.each(options, function (key, element) {
				var xfvalue = $(element).text();

				if (xfvalue && xfvalue == value)
					$('#xfield_holder_' + field.replace('#xf_', '') + ' select').val(key).change();
			});
		}

		return false;
	}

	var element = $(field);

	element.val(value);

	if ($(field + '_tag').length) {
		$(field).importTags('');
		var tags = value.split(', ');
		for (var i = 0; i < tags.length; i++) {
			$(field).addTag(tags[i]);
		}
	}

	if ($(field + "-tokenfield").length) {
		$(field).tokenfield("setTokens", []);
		$(field + "-tokenfield").val();

		if (value)
			$(field).tokenfield('setTokens', value.split(', '));
	}

	if ('froalaEditor' in element)
		element.froalaEditor('html.set', value);

	if (typeof tinymce != 'undefined') {
		var _field = field.replace('#', '');

		if (field && tinymce.get(_field))
			tinymce.get(_field).setContent(value);
	}

}