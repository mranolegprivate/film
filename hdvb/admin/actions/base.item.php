<tr>
	<td>
		<?php if ($item['kinopoisk_id']) { ?>
			<a href="<?php echo "https://www.kinopoisk.ru/film/{$item['kinopoisk_id']}/"; ?>" target="_blank"><?php echo $item['kinopoisk_id']; ?></a>
		<?php } ?>
	</td>
	<td><?php echo $item['update_date'] ? $item['update_date'] : $item['added_date']; ?></td>
	<td>
		<?php if ($full_link) { ?>
			<a href="<?php echo $full_link; ?>" target="_blank">
		<?php } ?>
		<?php echo $item['title_ru'] . ($item['title_en'] ? "<div style=\" margin-top: -2px; font-size: 87%;\">{$item['title_en']}</div>" : ''); ?>
		<?php if ($full_link) { ?>
			</a>
		<?php } ?>
		<div>
			<span style="display:inline-block;font-size:14px;color:#888">
				<?php if ($last_season) { ?>
					<?php echo $last_season; ?> Сезон
				<?php } ?>
				<?php if ($last_episode) { ?>
					<?php echo $last_episode; ?> Серия
				<?php } ?>
			</span>
		</div>
	</td>
	<td>
		<span class="badge badge-primary" style="font-size: 97%; font-weight: 400;"><?php echo $item['quality']; ?></span>
	</td>
	<td>
		<span class="badge badge-info" style="font-size: 97%; font-weight: 400;"><?php echo $item['translator']; ?></span>
	</td>
	<td><?php echo $item['year'] ? $item['year'] : ''; ?></td>
	<td>
		<div class="custom-control custom-checkbox">
			<input type="checkbox" class="custom-control-input base-insert" id="baseInsert<?php echo $i; ?>"<?php echo ($item['kinopoisk_id'] ? " data-kpid=\"{$item['kinopoisk_id']}\" name=\"base[]\" value=\"{$item['kinopoisk_id']}-{$item['translator_id']}\"" : ''); ?>>
			<label class="custom-control-label" for="baseInsert<?php echo $i; ?>"></label>
		</div>
	</td>
	<td><?php echo ($exist ? '<span style="display:inline-block" class="bg-success text-white pl-1 pr-1" title="Наличие новости на сайте">Да</span>' : '<div style="display:inline-block;color:#ccc" class="bg-light pl-1 pr-1" title="Наличие новости на сайте">Нет</div>'); ?></td>
</tr>