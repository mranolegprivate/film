<?php

class HdvbView
{

	protected $config;

	protected $xfields;

	public function __construct($moduleConfig)
	{

		$this->config = $moduleConfig;

		$this->xfields = new HdvbNewsXfields;

	}

	// Script

	public function script()
	{

		global $config, $tpl;

		if (defined('NEWS_ID')) {
			if ($this->config['player']['script'])
				$script = $this->config['player']['script'];
			else
				$script = 'https://weblion777.github.io/hdvb_new.js';

			$tpl->set('</body>', hdvbJS($script) . '</body>');

			return true;
		} else
			return false;

	}

	// Player

	public function player()
	{

		global $config, $tpl, $row;

		if (!$this->config['on'] || !$row || !$this->config['xfields']['write']['source'] || stripos($tpl->copy_template, '{hdvb-player}') === false) {
			$tpl->set_block("'\\[hdvb-notfound\\](.*?)\\[/hdvb-notfound\\]'is", "$1");
			$tpl->set_block("'\\[hdvb-found\\](.*?)\\[/hdvb-found\\]'is", '');
			$tpl->set('{hdvb-player}', '');

			return false;
		}

		$xfields = $this->xfields->toArray($row['xfields']);

		if (!$xfields || !$xfields[$this->config['xfields']['write']['source']]) {
			$tpl->set_block("'\\[hdvb-notfound\\](.*?)\\[/hdvb-notfound\\]'is", "$1");
			$tpl->set_block("'\\[hdvb-found\\](.*?)\\[/hdvb-found\\]'is", '');
			$tpl->set('{hdvb-player}', '');

			return false;
		}

		$source = $xfields[$this->config['xfields']['write']['source']];

		if (!$this->config['domain'] || ((time() - intval($this->config['domain_update'])) > (60 * 30))) {
			$api = new HdvbApi($this->config['api']);

			$domain = $api->getDomain();

			if ($domain) {

				$this->config['domain'] = $domain;
				$this->config['domain_update'] = time();

				$fh = fopen(HDVB_DIR . '/config.php', 'w');
				fwrite($fh, '<?php' . "\r\n\r\nreturn " . var_export($this->config, true) . ';');
				fclose($fh);

			}
		} else
			$domain = $this->config['domain'];

		if ($domain)
			$source = preg_replace("#(http(s)?:)?//[^/]*/#i", hdvbEncode($domain), $source);

		if ($this->config['d'])
			$d = $this->config['d'];
		else {
			preg_match("#//([^/]+)/#i", $config['http_home_url'], $output);
			$d = $output[1];
		}

		if ($d)
			$source .= (strpos($source, '?') === false ? '?' : '&') . "d={$d}";

		$iframe = "<div style=\"position:relative;padding-bottom:53.10%;padding-top:25px;height:0\">
			<iframe src=\"{$source}\" style=\"position:absolute;top:0;left:0;width:100%;height:420px\" frameborder=\"0\" allowfullscreen></iframe>
		</div>";

		$tpl->set_block("'\\[hdvb-notfound\\](.*?)\\[/hdvb-notfound\\]'is", '');
		$tpl->set_block("'\\[hdvb-found\\](.*?)\\[/hdvb-found\\]'is", "$1");
		$tpl->set('{hdvb-player}', $iframe);

		return true;

	}

}