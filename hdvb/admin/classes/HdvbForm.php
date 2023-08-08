<?php

class HdvbForm
{

	// Group

	public static function group($id, $text, $content, $description = false)
	{

		return "<div class=\"col-md-6 mb-3\">
			". ($text ? "<label for=\"{$id}\">{$text}</label>" : '') . "
			{$content}
			" . ($description ? "<div class=\"text-muted mt-1\">{$description}</div>" : '') . "
		</div>";

	}

	// text

	public static function text($id, $name, $value, $placeholder = false)
	{

		return "<input type=\"text\" class=\"form-control\" id=\"{$id}\" name=\"{$name}\" value=\"" . hdvbEncode($value) . "\"" . ($placeholder ? " placeholder=\"{$placeholder}\"" : '') . ">";

	}

	// Textarea

	public static function textarea($id, $name, $value)
	{

		return "<textarea type=\"text\" id=\"{$id}\" name=\"{$name}\" class=\"form-control\">" . hdvbEncode($value) . "</textarea>";

	}

	// Switch

	public static function _switch($id, $name, $on = false)
	{

		return "<div class=\"hdvb-switch\">
			<div class=\"custom-control custom-switch\">
				<input type=\"checkbox\" class=\"custom-control-input\" id=\"{$id}\" name=\"{$name}\"" . ($on ? ' checked' : '') . ">
				<label class=\"custom-control-label custom-switch-label\" for=\"{$id}\"></label>
			</div>
		</div>";

	}

	// Checkbox

	public static function checkbox($id, $name, $text, $checked)
	{

		return "<div class=\"custom-control custom-checkbox my-1 mr-sm-2\">
			<input type=\"checkbox\" name=\"{$name}\" value=\"1\" class=\"custom-control-input\" id=\"{$id}\"" . ($checked ? ' checked' : '') . ">
			<label class=\"custom-control-label\" for=\"{$id}\">{$text}</label>
		</div>";

	}

	// Radio

	public static function radio($id, $name, $text, $key, $value)
	{

		return "<div class=\"custom-control custom-radio\">
      <input type=\"radio\" id=\"{$id}\" name=\"{$name}\" value=\"{$key}\" class=\"custom-control-input\"" . ($key == $value ? ' checked' : '') . ">
      <label class=\"custom-control-label\" for=\"{$id}\">{$text}</label>
    </div>";

	}

	// Select

	public static function select($id, $name, $data, $selected)
	{

		$result = "<select id=\"{$id}\" name=\"{$name}\" class=\"custom-select\">";
			
		foreach ($data as $key => $value)
			$result .= "<option value=\"" . hdvbEncode($key) . "\"" . ($key == $selected ? ' selected' : '') . ">" . hdvbEncode($value) . "</option>";

		$result .= '</select>';

		return $result;

	}

	// Multiselect

	public static function multiselect($id, $name, $data, $selected)
	{

		$result = "<select id=\"{$id}\" name=\"{$name}[]\" class=\"form-control\" multiple>";
			
		if (is_array($data)) {
			foreach ($data as $key => $value)
				$result .= "<option value=\"" . hdvbEncode($key) . "\"" . (in_array($key, $selected) ? ' selected' : '') . ">" . hdvbEncode($value) . "</option>";
		} else
			$result .= $data;

		$result .= '</select>';

		return $result;

	}

}