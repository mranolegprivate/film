-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 20 2023 г., 18:07
-- Версия сервера: 5.6.51
-- Версия PHP: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `film`
--

-- --------------------------------------------------------

--
-- Структура таблицы `dle_admin_logs`
--

CREATE TABLE `dle_admin_logs` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL DEFAULT '',
  `date` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `ip` varchar(46) NOT NULL DEFAULT '',
  `action` int(11) NOT NULL DEFAULT '0',
  `extras` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `dle_admin_logs`
--

INSERT INTO `dle_admin_logs` (`id`, `name`, `date`, `ip`, `action`, `extras`) VALUES
(647, 'Admin', 1687259891, '127.0.0.1', 82, ''),
(648, 'Admin', 1687259926, '127.0.0.1', 48, ''),
(649, 'Admin', 1687259939, '127.0.0.1', 48, ''),
(650, 'Admin', 1687260469, '127.0.0.1', 82, ''),
(651, 'Admin', 1687260912, '127.0.0.1', 48, ''),
(652, 'Admin', 1687261036, '127.0.0.1', 41, 'Paralax'),
(653, 'Admin', 1687261209, '127.0.0.1', 64, 'Admin'),
(654, 'sngfilm', 1687261210, '127.0.0.1', 90, ''),
(655, 'sngfilm', 1687261364, '127.0.0.1', 82, ''),
(656, 'sngfilm', 1687261500, '127.0.0.1', 48, ''),
(657, 'sngfilm', 1687261516, '127.0.0.1', 26, 'Музыкальная интуиция'),
(658, 'sngfilm', 1687261516, '127.0.0.1', 26, 'Удивительная миссис Мейзел | The Marvelous Mrs. Maisel'),
(659, 'sngfilm', 1687261516, '127.0.0.1', 26, 'Детство Шелдона | Young Sheldon'),
(660, 'sngfilm', 1687261516, '127.0.0.1', 26, 'Не грози южному централу, попивая сок у себя в квартале | Don\\\'t Be a Menace to South Central While Drinking Your Juice in the Hood'),
(661, 'sngfilm', 1687261516, '127.0.0.1', 26, 'Карнавальная ночь'),
(662, 'sngfilm', 1687261516, '127.0.0.1', 26, 'Аватар'),
(663, 'sngfilm', 1687261516, '127.0.0.1', 26, 'Управление статьями, Работа с категориями, добавление торрент файла'),
(664, 'sngfilm', 1687261516, '127.0.0.1', 26, 'Настройка сайта. Добавление и проставление фильмов'),
(665, 'sngfilm', 1687261516, '127.0.0.1', 26, 'Добро пожаловать'),
(666, 'sngfilm', 1687261566, '127.0.0.1', 70, 'MovieTor/main.tpl'),
(667, 'sngfilm', 1687261608, '127.0.0.1', 70, 'MovieTor/main.tpl'),
(668, 'sngfilm', 1687262529, '127.0.0.1', 48, ''),
(669, 'sngfilm', 1687262543, '127.0.0.1', 48, ''),
(670, 'sngfilm', 1687262579, '127.0.0.1', 1, 'Поезд в Пусан | Busanhaeng'),
(671, 'sngfilm', 1687262611, '127.0.0.1', 1, 'Аватар: Путь воды | Avatar: The Way of Water'),
(672, 'sngfilm', 1687262647, '127.0.0.1', 48, ''),
(673, 'sngfilm', 1687262971, '127.0.0.1', 1, 'Доктор Чха'),
(674, 'sngfilm', 1687263177, '127.0.0.1', 1, 'Игра в кальмара'),
(675, 'sngfilm', 1687263315, '127.0.0.1', 25, 'Игра в кальмара | Ojingeo geim'),
(676, 'sngfilm', 1687263437, '127.0.0.1', 26, 'Стэн Ли'),
(677, 'sngfilm', 1687263437, '127.0.0.1', 26, 'Деревня'),
(678, 'sngfilm', 1687263501, '127.0.0.1', 26, 'Деревня'),
(679, 'sngfilm', 1687263501, '127.0.0.1', 26, 'Стэн Ли'),
(680, 'sngfilm', 1687263607, '127.0.0.1', 48, ''),
(681, 'sngfilm', 1687263635, '127.0.0.1', 48, ''),
(682, 'sngfilm', 1687263918, '127.0.0.1', 13, '3'),
(683, 'sngfilm', 1687263924, '127.0.0.1', 13, '4'),
(684, 'sngfilm', 1687263928, '127.0.0.1', 13, '5'),
(685, 'sngfilm', 1687263932, '127.0.0.1', 13, '6'),
(686, 'sngfilm', 1687263935, '127.0.0.1', 13, '7'),
(687, 'sngfilm', 1687263939, '127.0.0.1', 13, '8'),
(688, 'sngfilm', 1687263942, '127.0.0.1', 13, '15'),
(689, 'sngfilm', 1687263948, '127.0.0.1', 13, '10'),
(690, 'sngfilm', 1687263958, '127.0.0.1', 13, '11'),
(691, 'sngfilm', 1687263961, '127.0.0.1', 13, '9'),
(692, 'sngfilm', 1687263966, '127.0.0.1', 13, '14'),
(693, 'sngfilm', 1687263971, '127.0.0.1', 13, '12'),
(694, 'sngfilm', 1687263977, '127.0.0.1', 13, '13'),
(695, 'sngfilm', 1687263981, '127.0.0.1', 13, '16'),
(696, 'sngfilm', 1687264062, '127.0.0.1', 13, '37'),
(697, 'sngfilm', 1687264069, '127.0.0.1', 13, '38'),
(698, 'sngfilm', 1687264074, '127.0.0.1', 13, '39'),
(699, 'sngfilm', 1687264079, '127.0.0.1', 13, '40'),
(700, 'sngfilm', 1687264110, '127.0.0.1', 13, '52'),
(701, 'sngfilm', 1687264122, '127.0.0.1', 26, 'Игра в кальмара | Ojingeo geim'),
(702, 'sngfilm', 1687264122, '127.0.0.1', 26, 'Доктор Чха'),
(703, 'sngfilm', 1687264122, '127.0.0.1', 26, 'Поезд в Пусан | Busanhaeng'),
(704, 'sngfilm', 1687264122, '127.0.0.1', 26, 'Аватар: Путь воды | Avatar: The Way of Water'),
(705, 'sngfilm', 1687264156, '127.0.0.1', 12, 'Фильмы'),
(706, 'sngfilm', 1687264180, '127.0.0.1', 13, '53'),
(707, 'sngfilm', 1687264192, '127.0.0.1', 12, 'Сериалы'),
(708, 'sngfilm', 1687264257, '127.0.0.1', 12, 'Фильмы'),
(709, 'sngfilm', 1687264273, '127.0.0.1', 12, 'Сериалы'),
(710, 'sngfilm', 1687264289, '127.0.0.1', 12, 'Мультфильмы'),
(711, 'sngfilm', 1687264316, '127.0.0.1', 12, 'Мультсериалы'),
(712, 'sngfilm', 1687264332, '127.0.0.1', 12, 'Аниме'),
(713, 'sngfilm', 1687264361, '127.0.0.1', 12, 'Аниме сериалы'),
(714, 'sngfilm', 1687264377, '127.0.0.1', 12, 'ТВ-шоу'),
(715, 'sngfilm', 1687264403, '127.0.0.1', 12, 'Документальные'),
(716, 'sngfilm', 1687264419, '127.0.0.1', 12, 'Анонс'),
(717, 'sngfilm', 1687264441, '127.0.0.1', 12, 'Новинки'),
(718, 'sngfilm', 1687264464, '127.0.0.1', 12, 'Эротика');

-- --------------------------------------------------------

--
-- Структура таблицы `dle_admin_sections`
--

CREATE TABLE `dle_admin_sections` (
  `id` mediumint(9) NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `descr` varchar(255) NOT NULL DEFAULT '',
  `icon` varchar(255) NOT NULL DEFAULT '',
  `allow_groups` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `dle_admin_sections`
--

INSERT INTO `dle_admin_sections` (`id`, `name`, `title`, `descr`, `icon`, `allow_groups`) VALUES
(1, 'kodik_grabber', 'KodikGrubber', 'Автонаполнение сайта DLE по базе Kodik', '', '1'),
(8, 'videocdn', 'VideoCDN+ от Sanjarmen', 'Модуль с использованием плеера VideoCDN', 'engine/skins/images/videocdn.png', '1'),
(10, 'bazon', 'Bazon module', 'Модуль для простановки, автоматического добавления, и обновления фильмов и сериалов из базы https://bazon.cc/', 'engine/skins/images/bazon.png', '1'),
(11, 'newstemplate', 'Настройка шаблона списка новостей', 'Управление шаблонами', '', '1'),
(12, 'CCDN', 'CCDN', 'CCDN', '', '1'),
(13, 'alloha', 'DLE Alloha', 'Модуль для автоматического добавления, и обновления фильмов и сериалов сайта DLE по базе alloha', '', '1'),
(14, 'hdvb', 'HDVB', '', 'default_icon.png', '1'),
(16, 'cdnmovies_balancer', 'CDN Movies for DLE v.1.0', 'Массовое проставление данных видео балансера', 'engine/skins/images/cdn_movies.png', '1');

-- --------------------------------------------------------

--
-- Структура таблицы `dle_alloha`
--

CREATE TABLE `dle_alloha` (
  `id` int(20) UNSIGNED NOT NULL,
  `kp_id` int(20) UNSIGNED NOT NULL,
  `year` int(6) UNSIGNED NOT NULL,
  `quality` varchar(100) NOT NULL,
  `news_id` int(12) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(100) NOT NULL,
  `episode` int(6) UNSIGNED NOT NULL DEFAULT '0',
  `season` int(6) UNSIGNED NOT NULL,
  `status` int(20) UNSIGNED NOT NULL DEFAULT '2',
  `err_time` int(12) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `dle_banned`
--

CREATE TABLE `dle_banned` (
  `id` smallint(6) NOT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `descr` text NOT NULL,
  `date` varchar(15) NOT NULL DEFAULT '',
  `days` smallint(4) NOT NULL DEFAULT '0',
  `ip` varchar(46) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `dle_banners`
--

CREATE TABLE `dle_banners` (
  `id` smallint(6) NOT NULL,
  `banner_tag` varchar(40) NOT NULL DEFAULT '',
  `descr` varchar(200) NOT NULL DEFAULT '',
  `code` text NOT NULL,
  `approve` tinyint(1) NOT NULL DEFAULT '0',
  `short_place` tinyint(1) NOT NULL DEFAULT '0',
  `bstick` tinyint(1) NOT NULL DEFAULT '0',
  `main` tinyint(1) NOT NULL DEFAULT '0',
  `category` varchar(255) NOT NULL DEFAULT '',
  `grouplevel` varchar(100) NOT NULL DEFAULT 'all',
  `start` varchar(15) NOT NULL DEFAULT '',
  `end` varchar(15) NOT NULL DEFAULT '',
  `fpage` tinyint(1) NOT NULL DEFAULT '0',
  `innews` tinyint(1) NOT NULL DEFAULT '0',
  `devicelevel` varchar(10) NOT NULL DEFAULT '',
  `allow_views` tinyint(1) NOT NULL DEFAULT '0',
  `max_views` int(11) NOT NULL DEFAULT '0',
  `allow_counts` tinyint(1) NOT NULL DEFAULT '0',
  `max_counts` int(11) NOT NULL DEFAULT '0',
  `views` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `rubric` mediumint(9) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `dle_banners`
--

INSERT INTO `dle_banners` (`id`, `banner_tag`, `descr`, `code`, `approve`, `short_place`, `bstick`, `main`, `category`, `grouplevel`, `start`, `end`, `fpage`, `innews`, `devicelevel`, `allow_views`, `max_views`, `allow_counts`, `max_counts`, `views`, `clicks`, `rubric`) VALUES
(1, 'header', 'Верхний баннер', '<div style=\"text-align:center;\"><a href=\"https://okko.kinoizi.com/\" target=\"_blank\"><img src=\"/templates/Default/images/_banner_.gif\" style=\"border: none;\" alt=\"\" /></a></div>', 1, 0, 0, 0, '0', 'all', '', '', 0, 0, 'all', 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `dle_banners_logs`
--

CREATE TABLE `dle_banners_logs` (
  `id` int(11) UNSIGNED NOT NULL,
  `bid` int(11) NOT NULL DEFAULT '0',
  `click` tinyint(1) NOT NULL DEFAULT '0',
  `ip` varchar(46) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `dle_banners_rubrics`
--

CREATE TABLE `dle_banners_rubrics` (
  `id` mediumint(9) NOT NULL,
  `parentid` mediumint(9) NOT NULL DEFAULT '0',
  `title` varchar(70) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `dle_category`
--

CREATE TABLE `dle_category` (
  `id` mediumint(9) NOT NULL,
  `parentid` mediumint(9) NOT NULL DEFAULT '0',
  `posi` mediumint(9) NOT NULL DEFAULT '1',
  `name` varchar(50) NOT NULL DEFAULT '',
  `alt_name` varchar(50) NOT NULL DEFAULT '',
  `icon` varchar(200) NOT NULL DEFAULT '',
  `skin` varchar(50) NOT NULL DEFAULT '',
  `descr` varchar(300) NOT NULL DEFAULT '',
  `keywords` text NOT NULL,
  `news_sort` varchar(10) NOT NULL DEFAULT '',
  `news_msort` varchar(4) NOT NULL DEFAULT '',
  `news_number` smallint(6) NOT NULL DEFAULT '0',
  `short_tpl` varchar(40) NOT NULL DEFAULT '',
  `full_tpl` varchar(40) NOT NULL DEFAULT '',
  `metatitle` varchar(255) NOT NULL DEFAULT '',
  `show_sub` tinyint(1) NOT NULL DEFAULT '0',
  `allow_rss` tinyint(1) NOT NULL DEFAULT '1',
  `fulldescr` text NOT NULL,
  `disable_search` tinyint(1) NOT NULL DEFAULT '0',
  `disable_main` tinyint(1) NOT NULL DEFAULT '0',
  `disable_rating` tinyint(1) NOT NULL DEFAULT '0',
  `disable_comments` tinyint(1) NOT NULL DEFAULT '0',
  `enable_dzen` tinyint(1) NOT NULL DEFAULT '1',
  `enable_turbo` tinyint(1) NOT NULL DEFAULT '1',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `rating_type` tinyint(1) NOT NULL DEFAULT '-1',
  `schema_org` varchar(50) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `dle_category`
--

INSERT INTO `dle_category` (`id`, `parentid`, `posi`, `name`, `alt_name`, `icon`, `skin`, `descr`, `keywords`, `news_sort`, `news_msort`, `news_number`, `short_tpl`, `full_tpl`, `metatitle`, `show_sub`, `allow_rss`, `fulldescr`, `disable_search`, `disable_main`, `disable_rating`, `disable_comments`, `enable_dzen`, `enable_turbo`, `active`, `rating_type`, `schema_org`) VALUES
(1, 0, 1, 'Фильмы', 'film', '', '', '', '', '', '', 0, '', '', '', 0, 1, '', 0, 0, 0, 0, 1, 1, 1, -1, '1'),
(2, 0, 1, 'Сериалы', 'season', '', '', '', '', '', '', 0, '', '', '', 0, 1, '', 0, 0, 0, 0, 1, 1, 1, -1, '1'),
(3, 0, 1, 'Мультфильмы', 'mult', '', '', '', '', '', '', 0, '', '', '', 0, 1, '', 0, 0, 0, 0, 1, 1, 1, -1, '1'),
(4, 0, 1, 'Мультсериалы', 'multseason', '', '', '', '', '', '', 0, '', '', '', 0, 1, '', 0, 0, 0, 0, 1, 1, 1, -1, '1'),
(5, 0, 1, 'Аниме', 'anime', '', '', '', '', '', '', 0, '', '', '', 0, 1, '', 0, 0, 0, 0, 1, 1, 1, -1, '1'),
(6, 0, 1, 'Аниме сериалы', 'animeseason', '', '', '', '', '', '', 0, '', '', '', 0, 1, '', 0, 0, 0, 0, 1, 1, 1, -1, '1'),
(7, 0, 1, 'ТВ-шоу', 'tv-show', '', '', '', '', '', '', 0, '', '', '', 0, 1, '', 0, 0, 0, 0, 1, 1, 1, -1, '1'),
(8, 0, 1, 'Документальные', 'documentary', '', '', '', '', '', '', 0, '', '', '', 0, 1, '', 0, 0, 0, 0, 1, 1, 1, -1, '1'),
(9, 0, 1, 'Анонс', 'anons', '', '', '', '', '', '', 0, '', '', '', 0, 1, '', 0, 0, 0, 0, 1, 1, 1, -1, '1'),
(10, 0, 1, 'Новинки', 'new', '', '', '', '', '', '', 0, '', '', '', 0, 1, '', 0, 0, 0, 0, 1, 1, 1, -1, '1'),
(11, 0, 1, 'Эротика', 'erotic', '', '', '', '', '', '', 0, '', '', '', 0, 1, '', 0, 0, 0, 0, 1, 1, 1, -1, '1');

-- --------------------------------------------------------

--
-- Структура таблицы `dle_ccdn_settings`
--

CREATE TABLE `dle_ccdn_settings` (
  `id` int(32) NOT NULL,
  `key` varchar(191) DEFAULT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `dle_ccdn_settings`
--

INSERT INTO `dle_ccdn_settings` (`id`, `key`, `value`) VALUES
(1, 'git_commit_sha', '90a594711fde49a55ca9a868b9b2fad214ff18bc'),
(2, 'domain_data', '//rewall.in'),
(3, 'api_key', '6302ceebc34da1bdaedfb302e99afd54'),
(4, 'kinopoisk_id_field', 'kinopoisk_id'),
(5, 'imdb_id_field', ''),
(6, 'world_art_id_field', 'world_art_id'),
(7, 'status_api_key', '1'),
(8, 'embed_field', 'iframe_collaps'),
(9, 'video_quality_field', ''),
(10, 'video_voice_field', ''),
(11, 'video_first_voice_field', ''),
(12, 'video_voice_priority', ''),
(13, 'video_voices_disabled', ''),
(14, 'post_status_field', ''),
(15, 'episode_count_field', 'episode_count_collaps'),
(16, 'ccdn_id_field', 'id_collaps'),
(17, 'content_ads_filter', '0'),
(18, 'collaps_franchise_ads_status_field', ''),
(19, 'trailer_field', 'trailer'),
(20, 'season_franchise_status', ''),
(21, 'serial_episode_field', 'last_episode_collaps'),
(22, 'serial_episode_field_suffix', ''),
(23, 'serial_season_field', 'last_season_collaps'),
(24, 'serial_season_field_suffix', ''),
(25, 'set_season_episode_to_embed', '0'),
(26, 'upload_posters', '1'),
(27, 'set_all_date', '1'),
(28, 'premier_format_date', 'Y-m-d'),
(29, 'button_name', ''),
(30, 'button_origin_name', ''),
(31, 'button_group_permission', ''),
(32, 'button_download_poster', 'poster_url'),
(33, 'button_download_poster_url', 'poster'),
(34, 'button_year', ''),
(35, 'button_rating_imdb', 'rating_imdb'),
(36, 'button_rating_kinopoisk', 'rating_kp'),
(37, 'button_rating_world_art', ''),
(38, 'button_poster', ''),
(39, 'button_country', ''),
(40, 'button_director', ''),
(41, 'button_actors', 'actors'),
(42, 'button_age', 'age'),
(43, 'button_slogan', ''),
(44, 'button_screenwriter', ''),
(45, 'button_producer', ''),
(46, 'button_operator', ''),
(47, 'button_composer', ''),
(48, 'button_design', ''),
(49, 'button_genres', 'genres'),
(50, 'button_editor', ''),
(51, 'button_actors_dubbing', ''),
(52, 'button_budget', ''),
(53, 'button_fees_use', ''),
(54, 'button_fees_rus', ''),
(55, 'button_fees_world', ''),
(56, 'button_rate_mpaa', ''),
(57, 'button_time', ''),
(58, 'button_description', '1'),
(59, 'button_short_desc', '1'),
(60, 'button_trivia', 'trivia'),
(61, 'button_premier', ''),
(62, 'button_premier_rus', 'premera-v-rf'),
(63, 'button_trailer', 'trailer'),
(64, 'button_set_category', '0'),
(65, 'button_custom_filed_description', 'description'),
(66, 'button_franchise_type', 'video_type'),
(67, 'button_download_poster_url_with_domain', ''),
(68, 'new_franchise_name', ''),
(69, 'new_franchise_approve', '1'),
(70, 'new_franchise_year', ''),
(71, 'new_franchise_origin_name', ''),
(72, 'new_franchise_rating_imdb', ''),
(73, 'new_franchise_rating_kinopoisk', ''),
(74, 'new_franchise_rating_world_art', ''),
(75, 'new_franchise_download_poster', ''),
(76, 'new_franchise_download_poster_url', 'poster'),
(77, 'new_franchise_download_poster_url_with_domain', 'poster_url'),
(78, 'new_franchise_poster', ''),
(79, 'new_franchise_country', ''),
(80, 'new_franchise_director', ''),
(81, 'new_franchise_actors', ''),
(82, 'new_franchise_age', ''),
(83, 'new_franchise_genres', ''),
(84, 'new_franchise_time', ''),
(85, 'new_franchise_slogan', ''),
(86, 'new_franchise_screenwriter', ''),
(87, 'new_franchise_producer', ''),
(88, 'new_franchise_operator', ''),
(89, 'new_franchise_composer', ''),
(90, 'new_franchise_design', ''),
(91, 'new_franchise_editor', ''),
(92, 'new_franchise_actors_dubbing', ''),
(93, 'new_franchise_budget', ''),
(94, 'new_franchise_fees_use', ''),
(95, 'new_franchise_fees_rus', ''),
(96, 'new_franchise_fees_world', ''),
(97, 'new_franchise_rate_mpaa', ''),
(98, 'new_franchise_trivia', ''),
(99, 'new_franchise_description', '1'),
(100, 'new_franchise_short_desc', '1'),
(101, 'new_franchise_premier', ''),
(102, 'new_franchise_premier_rus', ''),
(103, 'new_franchise_trailer', ''),
(104, 'new_franchise_search_year_in_cat', '0'),
(105, 'new_franchise_filed_description', ''),
(106, 'new_franchise_update_title', '0'),
(107, 'new_franchise_add_season', '0'),
(108, 'new_franchise_season_format', ''),
(109, 'new_franchise_add_episode', '0'),
(110, 'new_franchise_add_episode_inc', '0'),
(111, 'new_franchise_add_season_inc', '0'),
(112, 'new_franchise_episode_format', ''),
(113, 'new_franchise_title_prefix', ''),
(114, 'new_franchise_title_year_filed', ''),
(115, 'new_franchise_title_origin_name', ''),
(116, 'new_franchise_title_pattern', ''),
(117, 'new_franchise_title_pattern_not_season', ''),
(118, 'new_franchise_add_episode_custom_filed', ''),
(119, 'new_franchise_add_season_custom_filed', ''),
(120, 'new_franchise_franchise_type_film', ''),
(121, 'new_franchise_franchise_type_cartoon', ''),
(122, 'new_franchise_franchise_type_cartoon_series', ''),
(123, 'new_franchise_franchise_type_series', ''),
(124, 'new_franchise_franchise_type_tv_show', ''),
(125, 'new_franchise_franchise_type_anime_film', ''),
(126, 'new_franchise_franchise_type_anime_series', ''),
(127, 'new_franchise_update_title_two', '0'),
(128, 'new_franchise_add_season_two', '0'),
(129, 'new_franchise_season_format_two', ''),
(130, 'new_franchise_add_episode_two', '0'),
(131, 'new_franchise_add_episode_inc_two', '0'),
(132, 'new_franchise_add_season_inc_two', '0'),
(133, 'new_franchise_episode_format_two', ''),
(134, 'new_franchise_title_prefix_two', ''),
(135, 'new_franchise_title_year_filed_two', ''),
(136, 'new_franchise_title_origin_name_two', ''),
(137, 'new_franchise_title_two_pattern', ''),
(138, 'new_franchise_title_two_pattern_not_season', ''),
(139, 'new_franchise_add_episode_custom_filed_two', ''),
(140, 'new_franchise_add_season_custom_filed_two', ''),
(141, 'new_franchise_franchise_type_film_two', ''),
(142, 'new_franchise_franchise_type_cartoon_two', ''),
(143, 'new_franchise_franchise_type_cartoon_series_two', ''),
(144, 'new_franchise_franchise_type_series_two', ''),
(145, 'new_franchise_franchise_type_tv_show_two', ''),
(146, 'new_franchise_franchise_type_anime_film_two', ''),
(147, 'new_franchise_franchise_type_anime_series_two', ''),
(148, 'new_franchise_update_title_alt', '0'),
(149, 'new_franchise_add_season_alt', '0'),
(150, 'new_franchise_season_format_alt', ''),
(151, 'new_franchise_add_episode_alt', '0'),
(152, 'new_franchise_add_episode_inc_alt', '0'),
(153, 'new_franchise_add_season_inc_alt', '0'),
(154, 'new_franchise_episode_format_alt', ''),
(155, 'new_franchise_title_prefix_alt', ''),
(156, 'new_franchise_title_year_filed_alt', ''),
(157, 'new_franchise_title_origin_name_alt', ''),
(158, 'new_franchise_title_alt_pattern', ''),
(159, 'new_franchise_title_alt_pattern_not_season', ''),
(160, 'new_franchise_add_episode_custom_filed_alt', ''),
(161, 'new_franchise_add_season_custom_filed_alt', ''),
(162, 'new_franchise_franchise_type_film_alt', ''),
(163, 'new_franchise_franchise_type_cartoon_alt', ''),
(164, 'new_franchise_franchise_type_cartoon_series_alt', ''),
(165, 'new_franchise_franchise_type_series_alt', ''),
(166, 'new_franchise_franchise_type_tv_show_alt', ''),
(167, 'new_franchise_franchise_type_anime_film_alt', ''),
(168, 'new_franchise_franchise_type_anime_series_alt', ''),
(169, 'new_franchise_franchise_type', ''),
(170, 'category_bundle', '[]'),
(171, 'type_bundle', '[]'),
(172, 'country_bundle', '[]'),
(173, 'serial_status_bundle', '[]');

-- --------------------------------------------------------

--
-- Структура таблицы `dle_comments`
--

CREATE TABLE `dle_comments` (
  `id` int(11) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  `autor` varchar(40) NOT NULL DEFAULT '',
  `email` varchar(40) NOT NULL DEFAULT '',
  `text` text NOT NULL,
  `ip` varchar(46) NOT NULL DEFAULT '',
  `is_register` tinyint(1) NOT NULL DEFAULT '0',
  `approve` tinyint(1) NOT NULL DEFAULT '1',
  `rating` int(11) NOT NULL DEFAULT '0',
  `vote_num` int(11) NOT NULL DEFAULT '0',
  `parent` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `dle_comments_files`
--

CREATE TABLE `dle_comments_files` (
  `id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL DEFAULT '0',
  `author` varchar(40) NOT NULL DEFAULT '',
  `date` varchar(15) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `driver` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `dle_comment_rating_log`
--

CREATE TABLE `dle_comment_rating_log` (
  `id` int(11) UNSIGNED NOT NULL,
  `c_id` int(11) NOT NULL DEFAULT '0',
  `member` varchar(40) NOT NULL DEFAULT '',
  `ip` varchar(46) NOT NULL DEFAULT '',
  `rating` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `dle_complaint`
--

CREATE TABLE `dle_complaint` (
  `id` int(11) UNSIGNED NOT NULL,
  `p_id` int(11) NOT NULL DEFAULT '0',
  `c_id` int(11) NOT NULL DEFAULT '0',
  `n_id` int(11) NOT NULL DEFAULT '0',
  `text` text NOT NULL,
  `from` varchar(40) NOT NULL DEFAULT '',
  `to` varchar(255) NOT NULL DEFAULT '',
  `date` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `email` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `dle_email`
--

CREATE TABLE `dle_email` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(10) NOT NULL DEFAULT '',
  `template` text NOT NULL,
  `use_html` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `dle_email`
--

INSERT INTO `dle_email` (`id`, `name`, `template`, `use_html`) VALUES
(1, 'reg_mail', '{%username%},\r\n\r\nЭто письмо отправлено с сайта {$url}\r\n\r\nВы получили это письмо, так как этот e-mail адрес был использован при регистрации на сайте. Если Вы не регистрировались на этом сайте, просто проигнорируйте это письмо и удалите его. Вы больше не получите такого письма.\r\n\r\n------------------------------------------------\r\nВаш логин и пароль на сайте:\r\n------------------------------------------------\r\n\r\nЛогин: {%username%}\r\nПароль: {%password%}\r\n\r\n------------------------------------------------\r\nИнструкция по активации\r\n------------------------------------------------\r\n\r\nБлагодарим Вас за регистрацию.\r\nМы требуем от Вас подтверждения Вашей регистрации, для проверки того, что введённый Вами e-mail адрес - реальный. Это требуется для защиты от нежелательных злоупотреблений и спама.\r\n\r\nДля активации Вашего аккаунта, зайдите по следующей ссылке:\r\n\r\n{%validationlink%}\r\n\r\nЕсли и при этих действиях ничего не получилось, возможно Ваш аккаунт удалён. В этом случае, обратитесь к Администратору, для разрешения проблемы.\r\n\r\nС уважением,\r\n\r\nАдминистрация {$url}', 0),
(2, 'feed_mail', '{%username_to%},\r\n\r\nДанное письмо вам отправил {%username_from%} с сайта {$url}\r\n\r\n------------------------------------------------\r\nТекст сообщения\r\n------------------------------------------------\r\n\r\n{%text%}\r\n\r\nIP адрес отправителя: {%ip%}\r\nГруппа: {%group%}\r\n\r\n------------------------------------------------\r\nПомните, что администрация сайта не несет ответственности за содержание данного письма\r\n\r\nС уважением,\r\n\r\nАдминистрация {$url}', 0),
(3, 'lost_mail', 'Уважаемый {%username%},\r\n\r\nВы сделали запрос на получение забытого пароля на сайте {$url} Однако в целях безопасности все пароли хранятся в зашифрованном виде, поэтому мы не можем сообщить вам ваш старый пароль, поэтому если вы хотите сгенерировать новый пароль, зайдите по следующей ссылке: \r\n\r\n{%lostlink%}\r\n\r\nЕсли вы не делали запроса для получения пароля, то просто удалите данное письмо, ваш пароль храниться в надежном месте, и недоступен посторонним лицам.\r\n\r\nIP адрес отправителя: {%ip%}\r\n\r\nС уважением,\r\n\r\nАдминистрация {$url}', 0),
(4, 'new_news', 'Уважаемый администратор,\r\n\r\nуведомляем вас о том, что на сайт  {$url} была добавлена новость, которая в данный момент ожидает модерации.\r\n\r\n------------------------------------------------\r\nКраткая информация о новости\r\n------------------------------------------------\r\n\r\nАвтор: {%username%}\r\nЗаголовок новости: {%title%}\r\nКатегория: {%category%}\r\nДата добавления: {%date%}\r\n\r\nС уважением,\r\n\r\nАдминистрация {$url}', 0),
(5, 'comments', 'Уважаемый {%username_to%},\r\n\r\nуведомляем вас о том, что на сайт  {$url} был добавлен комментарий к новости, на которую вы были подписаны.\r\n\r\n------------------------------------------------\r\nКраткая информация о комментарии\r\n------------------------------------------------\r\n\r\nАвтор: {%username%}\r\nДата добавления: {%date%}\r\nСсылка на новость: {%link%}\r\n\r\n------------------------------------------------\r\nТекст комментария\r\n------------------------------------------------\r\n\r\n{%text%}\r\n\r\n------------------------------------------------\r\n\r\nЕсли вы не хотите больше получать уведомлений о новых комментариях к данной новости, то проследуйте по данной ссылке: {%unsubscribe%}\r\n\r\nС уважением,\r\n\r\nАдминистрация {$url}', 0),
(6, 'pm', 'Уважаемый {%username%},\r\n\r\nуведомляем вас о том, что на сайте  {$url} вам было отправлено персональное сообщение.\r\n\r\n------------------------------------------------\r\nКраткая информация о сообщении\r\n------------------------------------------------\r\n\r\nОтправитель: {%fromusername%}\r\nДата  получения: {%date%}\r\nЗаголовок: {%title%}\r\n\r\n------------------------------------------------\r\nТекст сообщения\r\n------------------------------------------------\r\n\r\n{%text%}\r\n\r\nС уважением,\r\n\r\nАдминистрация {$url}', 0),
(7, 'wait_mail', 'Уважаемый {%username%},\r\n\r\nВы сделали запрос на объдинение  вашего аккаунта на сайте {$url} с аккаунтом в социальной сети {%network%}.  Однако в целях безопасности вам необходимо подтвердить данное действие по следующей ссылке: \r\n\r\n------------------------------------------------\r\n{%link%}\r\n------------------------------------------------\r\n\r\nЕсли вы не делали данного запроса, то просто удалите это письмо, данные вашего аккаунта хранятся в надежном месте, и недоступны посторонним лицам.\r\n\r\nIP адрес отправителя: {%ip%}\r\n\r\nС уважением,\r\n\r\nАдминистрация {$url}', 0),
(8, 'newsletter', '<html><head>\r\n<title>{%title%}</title>\r\n<meta content=\"text/html; charset={%charset%}\" http-equiv=Content-Type>\r\n<style type=\"text/css\">\r\nhtml,body{\r\n    font-family: Verdana;\r\n    word-spacing: 0.1em;\r\n    letter-spacing: 0;\r\n    line-height: 1.5em;\r\n    font-size: 11px;\r\n}\r\n\r\np {\r\n	margin:0px;\r\n	padding: 0px;\r\n}\r\n\r\na:active,\r\na:visited,\r\na:link {\r\n	color: #4b719e;\r\n	text-decoration:none;\r\n}\r\n\r\na:hover {\r\n	color: #4b719e;\r\n	text-decoration: underline;\r\n}\r\n</style>\r\n</head>\r\n<body>\r\n{%content%}\r\n</body></html>', 1),
(9, 'twofactor', '{%username%},\r\n\r\nЭто письмо отправлено с сайта {$url}\r\n\r\nВы получили это письмо, так как для вашего аккаунта включена двухфакторная авторизация. Для авторизации на сайте вам необходимо ввести полученный вами пин-код.\r\n\r\n------------------------------------------------\r\nПин-код:\r\n------------------------------------------------\r\n\r\n{%pin%}\r\n\r\n------------------------------------------------\r\nЕсли Вы не авторизовывались на нашем сайте, то ваш пароль известен посторонним лицам. Вам нужно незамедлительно зайти на сайт под своим логином и паролем, и в своем профиле изменить свой пароль.\r\n\r\nIP пользователя который ввел пароль: {%ip%}\r\n\r\nС уважением,\r\n\r\nАдминистрация {$url}', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `dle_files`
--

CREATE TABLE `dle_files` (
  `id` int(11) NOT NULL,
  `news_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(250) NOT NULL DEFAULT '',
  `onserver` varchar(250) NOT NULL DEFAULT '',
  `author` varchar(40) NOT NULL DEFAULT '',
  `date` varchar(15) NOT NULL DEFAULT '',
  `dcount` int(11) NOT NULL DEFAULT '0',
  `size` bigint(20) NOT NULL DEFAULT '0',
  `checksum` char(32) NOT NULL DEFAULT '',
  `driver` tinyint(1) NOT NULL DEFAULT '0',
  `is_public` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `dle_flood`
--

CREATE TABLE `dle_flood` (
  `f_id` int(11) UNSIGNED NOT NULL,
  `ip` varchar(46) NOT NULL DEFAULT '',
  `id` varchar(20) NOT NULL DEFAULT '',
  `flag` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `dle_hdvb_update`
--

CREATE TABLE `dle_hdvb_update` (
  `id` int(11) NOT NULL,
  `start_update` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `dle_hdvb_update`
--

INSERT INTO `dle_hdvb_update` (`id`, `start_update`) VALUES
(1, 1687271548);

-- --------------------------------------------------------

--
-- Структура таблицы `dle_hdvb_update_log`
--

CREATE TABLE `dle_hdvb_update_log` (
  `id` int(11) NOT NULL,
  `update_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `dle_hdvb_update_log`
--

INSERT INTO `dle_hdvb_update_log` (`id`, `update_id`) VALUES
(1, 80842),
(2, 80834);

-- --------------------------------------------------------

--
-- Структура таблицы `dle_hdvb_update_serials`
--

CREATE TABLE `dle_hdvb_update_serials` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `translation_id` int(11) NOT NULL,
  `quality` varchar(255) NOT NULL,
  `season` int(11) NOT NULL,
  `episode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `dle_hdvb_update_vote`
--

CREATE TABLE `dle_hdvb_update_vote` (
  `id` int(11) NOT NULL,
  `vote_mark` int(11) NOT NULL,
  `session_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `dle_hdvb_update_vote`
--

INSERT INTO `dle_hdvb_update_vote` (`id`, `vote_mark`, `session_id`) VALUES
(1, 1687271548, 'did909votam986scbg9kjkm5foh2f55a');

-- --------------------------------------------------------

--
-- Структура таблицы `dle_ignore_list`
--

CREATE TABLE `dle_ignore_list` (
  `id` int(11) UNSIGNED NOT NULL,
  `user` int(11) NOT NULL DEFAULT '0',
  `user_from` varchar(40) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `dle_images`
--

CREATE TABLE `dle_images` (
  `id` int(11) UNSIGNED NOT NULL,
  `images` text NOT NULL,
  `news_id` int(11) NOT NULL DEFAULT '0',
  `author` varchar(40) NOT NULL DEFAULT '',
  `date` varchar(15) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `dle_kodik`
--

CREATE TABLE `dle_kodik` (
  `id` int(20) UNSIGNED NOT NULL,
  `kp_id` int(20) UNSIGNED NOT NULL,
  `kodik_id` varchar(50) NOT NULL,
  `year` int(6) UNSIGNED NOT NULL,
  `quality` varchar(100) NOT NULL,
  `news_id` int(12) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(100) NOT NULL,
  `episode` int(6) UNSIGNED NOT NULL DEFAULT '0',
  `season` int(6) UNSIGNED NOT NULL DEFAULT '0',
  `status` int(20) UNSIGNED NOT NULL DEFAULT '2',
  `err_time` int(12) UNSIGNED NOT NULL,
  `shikimori_id` int(20) UNSIGNED DEFAULT '0',
  `mdl_id` int(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `dle_links`
--

CREATE TABLE `dle_links` (
  `id` int(11) UNSIGNED NOT NULL,
  `word` varchar(255) NOT NULL DEFAULT '',
  `link` varchar(255) NOT NULL DEFAULT '',
  `only_one` tinyint(1) NOT NULL DEFAULT '0',
  `replacearea` tinyint(1) NOT NULL DEFAULT '1',
  `rcount` tinyint(3) NOT NULL DEFAULT '0',
  `targetblank` tinyint(1) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `dle_login_log`
--

CREATE TABLE `dle_login_log` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip` varchar(46) NOT NULL DEFAULT '',
  `count` smallint(6) NOT NULL DEFAULT '0',
  `date` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `dle_logs`
--

CREATE TABLE `dle_logs` (
  `id` int(11) UNSIGNED NOT NULL,
  `news_id` int(11) NOT NULL DEFAULT '0',
  `member` varchar(40) NOT NULL DEFAULT '',
  `ip` varchar(46) NOT NULL DEFAULT '',
  `rating` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `dle_lostdb`
--

CREATE TABLE `dle_lostdb` (
  `id` mediumint(9) NOT NULL,
  `lostname` mediumint(9) NOT NULL DEFAULT '0',
  `lostid` varchar(40) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `dle_mail_log`
--

CREATE TABLE `dle_mail_log` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `mail` varchar(50) NOT NULL DEFAULT '',
  `hash` varchar(40) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `dle_metatags`
--

CREATE TABLE `dle_metatags` (
  `id` int(11) UNSIGNED NOT NULL,
  `url` varchar(250) NOT NULL DEFAULT '',
  `title` varchar(200) NOT NULL DEFAULT '',
  `description` varchar(300) NOT NULL DEFAULT '',
  `keywords` text NOT NULL,
  `page_title` varchar(255) NOT NULL DEFAULT '',
  `page_description` text NOT NULL,
  `robots` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `dle_notice`
--

CREATE TABLE `dle_notice` (
  `id` mediumint(9) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `notice` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `dle_plugins`
--

CREATE TABLE `dle_plugins` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `icon` varchar(255) NOT NULL DEFAULT '',
  `version` varchar(10) NOT NULL DEFAULT '',
  `dleversion` varchar(10) NOT NULL DEFAULT '',
  `versioncompare` char(2) NOT NULL DEFAULT '',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `mysqlinstall` text NOT NULL,
  `mysqlupgrade` text NOT NULL,
  `mysqlenable` text NOT NULL,
  `mysqldisable` text NOT NULL,
  `mysqldelete` text NOT NULL,
  `filedelete` tinyint(1) NOT NULL DEFAULT '0',
  `filelist` text NOT NULL,
  `upgradeurl` varchar(255) NOT NULL DEFAULT '',
  `needplugin` varchar(100) NOT NULL DEFAULT '',
  `phpinstall` text NOT NULL,
  `phpupgrade` text NOT NULL,
  `phpenable` text NOT NULL,
  `phpdisable` text NOT NULL,
  `phpdelete` text NOT NULL,
  `notice` text NOT NULL,
  `mnotice` tinyint(1) NOT NULL DEFAULT '0',
  `posi` mediumint(9) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `dle_plugins`
--

INSERT INTO `dle_plugins` (`id`, `name`, `description`, `icon`, `version`, `dleversion`, `versioncompare`, `active`, `mysqlinstall`, `mysqlupgrade`, `mysqlenable`, `mysqldisable`, `mysqldelete`, `filedelete`, `filelist`, `upgradeurl`, `needplugin`, `phpinstall`, `phpupgrade`, `phpenable`, `phpdisable`, `phpdelete`, `notice`, `mnotice`, `posi`) VALUES
(1, 'Изменение заголовка DLE 4', 'Замена стандартных строк DLE, выводящих информация в заголовке страницы. Замена информации о версии движка.\r\nБлокировка палева.', '', '4.0', '15.3', '>=', 1, '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', 0, 14),
(2, 'Ratingscore likes', '', '', '', '', '<=', 1, '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', 0, 12),
(3, 'Постер в быстром поиске', 'Постер в быстром поиске', '', '2.0', '15', '>=', 1, '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', 0, 11),
(4, 'Модуль DonBot', 'Модуль DonBot — настройка индексации сайта при помощи мета-тега robots.', '', '', '', '==', 1, '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', 0, 10),
(5, 'Tagsblock active plugins', 'Добавляет теги [active-plugins=X] и [not-active-plugins=X] которые управляют отображением содержимого в шаблонах в зависимости от состояния плагина.', '', '', '13.2', '>=', 1, '', '', '', '', '', 0, '', '', '', '', '', '', '', '', 'НЕ ВЫКЛЮЧАТЬ !\r\nПосыпется дизайн.\r\n<p>@<a href=\"https://t.me/TeraMoune\" target=\"_blank\">TeraMoune</a></p>\r\n<details><summary style=\"color:#ff720e;font-weight:500\" role=\"button\">Click here!</summary>Там где [b]X[/b] id плагина. Найти ID можно под иконкой плагина.\r\n\r\nНапример:\r\n[code][not-active-plugins=X] Плагин отключен [/not-active-plugins]\r\n[active-plugins=X] Плагин включен [/active-plugins][/code]\r\n</details>', 1, 9),
(6, 'Kodik - граббер аниме и дорам', 'Авто наполнение сайта DLE по базе Kodik', '', '6.0', '13', '>=', 1, 'DROP TABLE IF EXISTS {prefix}_kodik;\nCREATE TABLE {prefix}_kodik (\n  id int(20) unsigned NOT NULL AUTO_INCREMENT,\n  kp_id int(20) unsigned NOT NULL,\n  kodik_id varchar(50) NOT NULL,\n  year int(6) unsigned NOT NULL,\n  quality varchar(100) NOT NULL,\n  news_id int(12) unsigned NOT NULL DEFAULT \'0\',\n  type varchar(100) NOT NULL,\n  episode int(6) unsigned NOT NULL DEFAULT \'0\',\n  season int(6) unsigned NOT NULL DEFAULT \'0\',\n  status int(20) unsigned NOT NULL DEFAULT \'2\',\n  err_time int(12) unsigned NOT NULL,\n  shikimori_id int(20) unsigned DEFAULT \'0\',\n  mdl_id int(20) unsigned NOT NULL,\n  PRIMARY KEY (id),\n  KEY status (status),\n  KEY year (year),\n  KEY episode (episode),\n  KEY err_time (err_time),\n  KEY type (type),\n  KEY kodik_id (kodik_id),\n  KEY kp_id (kp_id),\n  KEY news_id (news_id),\n  KEY shikimori_id (shikimori_id),\n  KEY mdl_id (mdl_id)\n) ENGINE=InnoDB DEFAULT CHARSET=utf8;', '', 'INSERT IGNORE INTO `{prefix}_admin_sections` (`name`, `title`, `descr`, `icon`, `allow_groups`) VALUES (\'kodik_grabber\', \'KodikGrubber\', \'Автонаполнение сайта DLE по базе Kodik\', \'\', \'1\');', 'DELETE FROM `{prefix}_admin_sections` WHERE `name` = \'kodik_grabber\';', 'DELETE FROM `{prefix}_admin_sections` WHERE `name` = \'kodik_grabber\';', 1, 'engine/data/kodik.log,engine/inc/kodik_grabber.php,engine/kodik/admin.php,engine/kodik/class.php,engine/kodik/cron.php,engine/kodik/func.php,engine/kodik/grab.php,engine/kodik/kodik_playlist.php,engine/kodik/parse.php,engine/kodik/rebuild.php', 'https://files.kodik.biz/grabber-kodik/last_version.json', '', '', '', '', '', '', '', 0, 6),
(7, 'ustore', '', 'engine/skins/images/ustore.png', '1.3.6_2112', '14.3', '>=', 0, 'CREATE TABLE IF NOT EXISTS `{prefix}_ustore_voice` (\r\n  `id` int(11) NOT NULL AUTO_INCREMENT,\r\n  `voice_name` varchar(128) NOT NULL,\r\n  `film_priority` int(11) NOT NULL DEFAULT \'0\',\r\n  `serial_priority` int(11) NOT NULL DEFAULT \'0\',\r\n  PRIMARY KEY (`id`)\r\n) ENGINE=MyISAM  DEFAULT CHARSET={charset} AUTO_INCREMENT=1 ;', '', 'INSERT INTO `{prefix}_admin_sections` (`name`, `title`, `descr`, `icon`, `allow_groups`) VALUES (\'ustore\', \'uStore\', \'Модуль позволяет быстро в ручном или автоматическом режиме проставить плееры данные по фильму от uStore. Упрощает добавление и редактирование видео веб-мастером, автоматизирует размещение и проверку актуальности видео.\', \'engine/skins/images/ustore.png\', \'1\');', 'DELETE FROM {prefix}_admin_sections WHERE name = \'ustore\';', 'DELETE FROM {prefix}_admin_sections WHERE name = \'ustore\';\r\nDROP TABLE IF EXISTS {prefix}_ustore_voice;', 1, 'engine/ajax/ustore.php,engine/classes/ustore.class.php,engine/classes/ustore.filter.class.php,engine/inc/ustore/init.php,engine/inc/ustore/parser/anime.txt,engine/inc/ustore/parser/animeserials.txt,engine/inc/ustore/parser/movies.txt,engine/inc/ustore/parser/multfilms.txt,engine/inc/ustore/parser/multserials.txt,engine/inc/ustore/parser/serials.txt,engine/inc/ustore/reports/.htaccess,engine/inc/ustore/reports/cron.log,engine/inc/ustore/reports/found.log,engine/inc/ustore/reports/not_found.log,engine/inc/ustore/reports/parser.log,engine/inc/ustore/reports/success.log,engine/inc/ustore/templates/button.php,engine/inc/ustore/templates/main.php,engine/inc/ustore/templates/memorandum.php,engine/inc/ustore/templates/parser.php,engine/inc/ustore/templates/replace.php,engine/inc/ustore/templates/settings.php,engine/inc/ustore.php,engine/skins/images/ustore.png,engine/skins/ustore/bootstrap/css/bootstrap-theme.min.css,engine/skins/ustore/bootstrap/css/bootstrap.min.css,engine/skins/ustore/bootstrap/fonts/glyphicons-halflings-regular.eot,engine/skins/ustore/bootstrap/fonts/glyphicons-halflings-regular.svg,engine/skins/ustore/bootstrap/fonts/glyphicons-halflings-regular.ttf,engine/skins/ustore/bootstrap/fonts/glyphicons-halflings-regular.woff,engine/skins/ustore/bootstrap/js/bootstrap.min.js,engine/skins/ustore/css/button.css,engine/skins/ustore/css/default.css,engine/skins/ustore/css/jquery-ui.css,engine/skins/ustore/images/chosen-sprite.png,engine/skins/ustore/js/jquery-1.11.1.min.js,engine/skins/ustore/js/jquery-ui.min.js,engine/skins/ustore/js/main.js,ustore_cron.php', '', '', '', '', '', '', '', 'Не включать ! Источник пока в не рабочем состоянии и может создать ошибки на сайте.', 1, 8),
(9, 'DLE Alloha Series', 'Модуль для автоматического обновления и добавления фильмов и сериалов сайта DLE по базе alloha', 'engine/skins/images/dle_alloha.png', '5.8', '13', '>=', 1, 'DROP TABLE IF EXISTS `{prefix}_alloha`;\r\nCREATE TABLE `{prefix}_alloha` (\r\n  `id` int(20) unsigned NOT NULL AUTO_INCREMENT,\r\n  `kp_id` int(20) unsigned NOT NULL,\r\n  `year` int(6) unsigned NOT NULL,\r\n  `quality` varchar(100) NOT NULL,\r\n  `news_id` int(12) unsigned NOT NULL DEFAULT \'0\',\r\n  `type` varchar(100) NOT NULL,\r\n  `episode` int(6) unsigned NOT NULL DEFAULT \'0\',\r\n  `season` int(6) unsigned NOT NULL,\r\n  `status` int(20) unsigned NOT NULL DEFAULT \'2\',\r\n  `err_time` int(12) unsigned NOT NULL,\r\n  PRIMARY KEY (`id`),\r\n  KEY `status` (`status`),\r\n  KEY `year` (`year`),\r\n  KEY `episode` (`episode`),\r\n  KEY `err_time` (`err_time`),\r\n  KEY `type` (`type`),\r\n  KEY `kp_id` (`kp_id`)\r\n) ENGINE=InnoDB DEFAULT CHARSET=utf8;\r\n\r\n\r\nALTER TABLE `{prefix}_post`\r\nADD `kinopoisk_id` int(12) NOT NULL AFTER `tags`;\r\n\r\nALTER TABLE `{prefix}_post`\r\nADD INDEX `kinopoisk_id` (`kinopoisk_id`);\r\n\r\n\r\nINSERT IGNORE INTO `{prefix}_admin_sections` (`name`, `title`, `descr`, `icon`, `allow_groups`) VALUES (\'alloha\', \'DLE Alloha\', \'Модуль для автоматического добавления, и обновления фильмов и сериалов сайта DLE по базе alloha\', \'\', \'1\');', '', 'INSERT IGNORE INTO `{prefix}_admin_sections` (`name`, `title`, `descr`, `icon`, `allow_groups`) VALUES (\'alloha\', \'DLE Alloha\', \'Модуль для автоматического добавления, и обновления фильмов и сериалов сайта DLE по базе alloha\', \'\', \'1\');', 'DELETE FROM `{prefix}_admin_sections` WHERE `name` = \'alloha\';', 'DELETE FROM `{prefix}_admin_sections` WHERE `name` = \'alloha\';\r\nDROP TABLE IF EXISTS `{prefix}_alloha`;', 0, '', '', '', '', '', '', '', '', '', 0, 1),
(10, 'videocdn+_v1.2.6_Sanjarmen', '', 'engine/skins/images/videocdn.png', '1.2.7', '12.2', '>=', 1, 'CREATE TABLE IF NOT EXISTS `{prefix}_videocdn_voice` (\r\n  `id` int(11) NOT NULL AUTO_INCREMENT,\r\n  `voice_id` int(11) NOT NULL,\r\n  `voice_name` varchar(128) NOT NULL,\r\n  `film_priority` int(11) NOT NULL DEFAULT \'0\',\r\n  `serial_priority` int(11) NOT NULL DEFAULT \'0\',\r\n  PRIMARY KEY (`id`)\r\n) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;\r\nINSERT INTO `{prefix}_admin_sections` (`name`, `title`, `descr`, `icon`, `allow_groups`) VALUES (\'videocdn\', \'VideoCDN+ от Sanjarmen\', \'Модуль с использованием плеера VideoCDN\', \'engine/skins/images/videocdn.png\', \'1\');', '', 'INSERT INTO `{prefix}_admin_sections` (`name`, `title`, `descr`, `icon`, `allow_groups`) VALUES (\'videocdn\', \'VideoCDN+ от Sanjarmen\', \'Модуль с использованием плеера VideoCDN\', \'engine/skins/images/videocdn.png\', \'1\');', 'DELETE FROM `{prefix}_admin_sections` WHERE `name` = \'videocdn\';', 'DELETE FROM `{prefix}_admin_sections` WHERE `name` = \'videocdn\';\r\nDROP TABLE IF EXISTS `{prefix}_videocdn_voice`;', 1, 'engine/ajax/videocdn.php,engine/classes/videocdn.class.php,engine/inc/videocdn/init.php,engine/inc/videocdn/reports/.htaccess,engine/inc/videocdn/reports/cron.log,engine/inc/videocdn/reports/found.log,engine/inc/videocdn/reports/not_found.log,engine/inc/videocdn/reports/success.log,engine/inc/videocdn/templates/button.php,engine/inc/videocdn/templates/main.php,engine/inc/videocdn/templates/replace.php,engine/inc/videocdn/templates/settings.php,engine/inc/videocdn.php,engine/skins/images/videocdn.png,engine/skins/videocdn/bootstrap/css/bootstrap-theme.min.css,engine/skins/videocdn/bootstrap/css/bootstrap.min.css,engine/skins/videocdn/bootstrap/fonts/glyphicons-halflings-regular.eot,engine/skins/videocdn/bootstrap/fonts/glyphicons-halflings-regular.svg,engine/skins/videocdn/bootstrap/fonts/glyphicons-halflings-regular.ttf,engine/skins/videocdn/bootstrap/fonts/glyphicons-halflings-regular.woff,engine/skins/videocdn/bootstrap/js/bootstrap.min.js,engine/skins/videocdn/css/button.css,engine/skins/videocdn/css/default.css,engine/skins/videocdn/css/jquery-ui.css,engine/skins/videocdn/images/chosen-sprite.png,engine/skins/videocdn/js/jquery-1.11.1.min.js,engine/skins/videocdn/js/jquery-ui.min.js,engine/skins/videocdn/js/main.js,videocdn_cron.php', '', '', '', '', '', '', '', '', 0, 2),
(11, 'HDVB', '', 'engine/skins/images/default_icon.png', '2.2', '', '<=', 1, 'INSERT INTO {prefix}_admin_sections (name, title, descr, icon, allow_groups) VALUES (\'hdvb\', \'HDVB\', \'\', \'default_icon.png\', \'1\');\r\n\r\nCREATE TABLE IF NOT EXISTS `{prefix}_hdvb_update` (\r\n  `id` int(11) NOT NULL AUTO_INCREMENT,\r\n  `start_update` int(11) NOT NULL,\r\n  PRIMARY KEY (id)\r\n) ENGINE={engine} DEFAULT CHARSET={charset};\r\n\r\nINSERT INTO `{prefix}_hdvb_update` (`id`, `start_update`) VALUES (1, 0);\r\n\r\nCREATE TABLE `{prefix}_hdvb_update_log` (\r\n  `id` int(11) NOT NULL AUTO_INCREMENT,\r\n  `update_id` int(11) NOT NULL,\r\n  PRIMARY KEY (id)\r\n) ENGINE={engine} DEFAULT CHARSET={charset};\r\n\r\nINSERT INTO `{prefix}_hdvb_update_log` (`id`, `update_id`) VALUES (1, 0), (2, 0);\r\n\r\nCREATE TABLE `{prefix}_hdvb_update_serials` (\r\n  `id` int(11) NOT NULL AUTO_INCREMENT,\r\n  `post_id` int(11) NOT NULL,\r\n  `token` varchar(255) NOT NULL,\r\n  `update_date` timestamp NOT NULL,\r\n  `translation_id` int(11) NOT NULL,\r\n  `quality` varchar(255) NOT NULL,\r\n  `season` int(11) NOT NULL,\r\n  `episode` int(11) NOT NULL,\r\n  PRIMARY KEY (id),\r\n  KEY `post_id` (`post_id`),\r\n  KEY `token` (`token`),\r\n  KEY `season` (`season`)\r\n) ENGINE={engine} DEFAULT CHARSET={charset};\r\n\r\nCREATE TABLE `{prefix}_hdvb_update_vote` (\r\n  `id` int(11) NOT NULL AUTO_INCREMENT,\r\n  `vote_mark` int(11) NOT NULL,\r\n  `session_id` varchar(255) NOT NULL,\r\n  PRIMARY KEY (id)\r\n) ENGINE={engine} DEFAULT CHARSET={charset};\r\n\r\nINSERT INTO `{prefix}_hdvb_update_vote` (`id`, `vote_mark`, `session_id`) VALUES (1, 0, \'\');', '', 'INSERT INTO {prefix}_admin_sections (name, title, descr, icon, allow_groups) VALUES (\'hdvb\', \'HDVB\', \'\', \'default_icon.png\', \'1\');', 'DELETE FROM `{prefix}_admin_sections` WHERE name=\'hdvb\'', 'DELETE FROM `{prefix}_admin_sections` WHERE `name` = \'hdvb\';\r\nDROP TABLE IF EXISTS `{prefix}_hdvb_update`;', 1, 'engine/inc/hdvb.php,hdvb/admin/actions/base.item.php,hdvb/admin/actions/base.php,hdvb/admin/actions/footer.php,hdvb/admin/actions/header.php,hdvb/admin/actions/index.php,hdvb/admin/actions/replacement.php,hdvb/admin/actions/replacement_thread.php,hdvb/admin/actions/replacement_threads.php,hdvb/admin/actions/search.php,hdvb/admin/actions/settings.php,hdvb/admin/assets/css/app.css,hdvb/admin/assets/css/bootstrap.min.css,hdvb/admin/assets/css/chosen.css,hdvb/admin/assets/css/jquery-ui.min.css,hdvb/admin/assets/css/search.css,hdvb/admin/assets/images/chosen-close.svg,hdvb/admin/assets/images/translations-close.svg,hdvb/admin/assets/images/translations-plus.svg,hdvb/admin/assets/js/app.js,hdvb/admin/assets/js/bootstrap.min.js,hdvb/admin/assets/js/chosen.min.js,hdvb/admin/assets/js/fontawesome.min.js,hdvb/admin/assets/js/jquery-ui.min.js,hdvb/admin/assets/js/jquery.autocomplete.js,hdvb/admin/assets/js/jquery.min.js,hdvb/admin/assets/js/popper.min.js,hdvb/admin/assets/js/search.js,hdvb/admin/classes/HdvbBase.php,hdvb/admin/classes/HdvbForm.php,hdvb/admin/classes/HdvbReplacement.php,hdvb/admin/functions.php,hdvb/admin/init.php,hdvb/admin/widgets/search.php,hdvb/classes/Hdvb.php,hdvb/classes/HdvbApi.php,hdvb/classes/HdvbNews.php,hdvb/classes/HdvbNewsXfields.php,hdvb/classes/HdvbUpdate.php,hdvb/classes/HdvbView.php,hdvb/config.php,hdvb/functions.php,hdvb/init.php,hdvb/widgets/updates.php,hdvb/widgets/updates.tpl,hdvb.php', '', '', '', '', '', '', '', '', 0, 3),
(12, 'Bazon module', 'Модуль для простановки, автоматического добавления, и обновления фильмов и сериалов из базы https://bazon.cc/', 'engine/skins/images/bazon.png', '2.2.3', '13', '>=', 1, 'INSERT INTO `{prefix}_admin_sections` (`name`, `title`, `descr`, `icon`, `allow_groups`) VALUES (\'bazon\', \'Bazon module\', \'Модуль для простановки, автоматического добавления, и обновления фильмов и сериалов из базы https://bazon.cc/\', \'engine/skins/images/bazon.png\', \'1\')', '', 'INSERT INTO `{prefix}_admin_sections` (`name`, `title`, `descr`, `icon`, `allow_groups`) VALUES (\'bazon\', \'Bazon module\', \'Модуль для простановки, автоматического добавления, и обновления фильмов и сериалов из базы https://bazon.cc/\', \'engine/skins/images/bazon.png\', \'1\')', 'DELETE FROM `{prefix}_admin_sections` WHERE name=\'bazon\'', 'DELETE FROM `{prefix}_admin_sections` WHERE name=\'bazon\'', 1, 'engine/ajax/bazon_add.php,engine/ajax/bazon_insert.php,engine/classes/bazon.class.php,engine/inc/bazon.php,engine/skins/images/bazon.png,bazon.cron.php', 'https://bazon.cc/download/bazon-module.json', '', '', '', '', '', '', '', 0, 4),
(13, 'Оформление новостей в админ панели [ DLE 15.3 ]', 'Плагин позволит выводить более гибкие данные в списке новостей [ https://lazydev.pro ]', '', '', '15.3', '>=', 1, '', '', 'INSERT INTO `{prefix}_admin_sections` (`name`, `title`, `descr`, `icon`, `allow_groups`) VALUES (\'newstemplate\', \'Настройка шаблона списка новостей\', \'Управление шаблонами\', \'\', 1);', 'DELETE FROM `{prefix}_admin_sections` WHERE name=\'newstemplate\';', 'DELETE FROM `{prefix}_admin_sections` WHERE name=\'newstemplate\';', 1, 'engine/ajax/newstemplate.php,engine/inc/newstemplate/.htaccess,engine/inc/newstemplate/editnewschange.php,engine/inc/newstemplate/tpl/.htaccess,engine/inc/newstemplate/tpl/content.tpl,engine/inc/newstemplate/tpl/head.tpl,engine/inc/newstemplate.php', '', '', '', '', '', '', '', '', 0, 13),
(14, 'CCDN', 'CCDN', '', '1.4.27', '13.0', '>=', 1, 'INSERT INTO `{prefix}_admin_sections` (`name`, `title`, `descr`, `icon`, `allow_groups`) VALUES (\'CCDN\', \'CCDN\',\'CCDN\', \'\', \'1\');\r\nCREATE TABLE `{prefix}_ccdn_settings` (\r\n`id` INT(32) NOT NULL AUTO_INCREMENT ,\r\n`key` VARCHAR(191) NULL DEFAULT NULL ,\r\n`value` TEXT NOT NULL , PRIMARY KEY (`id`), UNIQUE (`key`))\r\nDEFAULT CHARACTER SET {charset} COLLATE {charset}_general_ci;', '', 'INSERT INTO `{prefix}_admin_sections` (`name`, `title`, `descr`, `icon`, `allow_groups`) VALUES (\'CCDN\', \'CCDN\',\'CCDN\', \'\', \'1\');', 'DELETE FROM `{prefix}_admin_sections` WHERE name=\'CCDN\'', 'DROP TABLE IF EXISTS `{prefix}_ccdn_settings`;\r\n	DELETE FROM `{prefix}_admin_sections` WHERE name=\'CCDN\'', 1, 'engine/inc/CCDN/button.php,engine/inc/CCDN/Controllers/BtnController.php,engine/inc/CCDN/Controllers/CalendarController.php,engine/inc/CCDN/Controllers/CollectionsController.php,engine/inc/CCDN/Controllers/DeletePluginController.php,engine/inc/CCDN/Controllers/FranchisePartsController.php,engine/inc/CCDN/Controllers/FutureFranchisesController.php,engine/inc/CCDN/Controllers/LogsController.php,engine/inc/CCDN/Controllers/MainController.php,engine/inc/CCDN/Controllers/ModuleController.php,engine/inc/CCDN/Controllers/NewFranchiseController.php,engine/inc/CCDN/Controllers/ParseDataBaseController.php,engine/inc/CCDN/Controllers/SettingsController.php,engine/inc/CCDN/Controllers/UpdatePostController.php,engine/inc/CCDN/Helpers/Api/.DS_Store,engine/inc/CCDN/Helpers/Api/ApiHandler.php,engine/inc/CCDN/Helpers/Api/Client.php,engine/inc/CCDN/Helpers/Api/Response/.DS_Store,engine/inc/CCDN/Helpers/Api/Response/Collection.php,engine/inc/CCDN/Helpers/Api/Response/CollectionInterface.php,engine/inc/CCDN/Helpers/Api/Response/Country.php,engine/inc/CCDN/Helpers/Api/Response/CountryInterface.php,engine/inc/CCDN/Helpers/Api/Response/Field/ActorsDuplicatorsField.php,engine/inc/CCDN/Helpers/Api/Response/Field/ActorsDuplicatorsFieldInterface.php,engine/inc/CCDN/Helpers/Api/Response/Field/ActorsField.php,engine/inc/CCDN/Helpers/Api/Response/Field/ActorsFieldInterface.php,engine/inc/CCDN/Helpers/Api/Response/Field/ArrayField.php,engine/inc/CCDN/Helpers/Api/Response/Field/ArrayFieldInterface.php,engine/inc/CCDN/Helpers/Api/Response/Field/CollectionField.php,engine/inc/CCDN/Helpers/Api/Response/Field/CollectionFieldInterface.php,engine/inc/CCDN/Helpers/Api/Response/Field/ComposersField.php,engine/inc/CCDN/Helpers/Api/Response/Field/ComposersFieldInterface.php,engine/inc/CCDN/Helpers/Api/Response/Field/CountriesField.php,engine/inc/CCDN/Helpers/Api/Response/Field/CountriesFieldInterface.php,engine/inc/CCDN/Helpers/Api/Response/Field/DesignsField.php,engine/inc/CCDN/Helpers/Api/Response/Field/DesignsFieldInterface.php,engine/inc/CCDN/Helpers/Api/Response/Field/DirectorsField.php,engine/inc/CCDN/Helpers/Api/Response/Field/DirectorsFieldInterface.php,engine/inc/CCDN/Helpers/Api/Response/Field/EditorsField.php,engine/inc/CCDN/Helpers/Api/Response/Field/EditorsFieldInterface.php,engine/inc/CCDN/Helpers/Api/Response/Field/GenreField.php,engine/inc/CCDN/Helpers/Api/Response/Field/GenreFieldInterface.php,engine/inc/CCDN/Helpers/Api/Response/Field/IframeUlrField.php,engine/inc/CCDN/Helpers/Api/Response/Field/IframeUrlFieldInterface.php,engine/inc/CCDN/Helpers/Api/Response/Field/OperatorsField.php,engine/inc/CCDN/Helpers/Api/Response/Field/OperatorsFieldInterface.php,engine/inc/CCDN/Helpers/Api/Response/Field/PartsField.php,engine/inc/CCDN/Helpers/Api/Response/Field/PartsFieldInterface.php,engine/inc/CCDN/Helpers/Api/Response/Field/ProducersField.php,engine/inc/CCDN/Helpers/Api/Response/Field/ProducersFieldInterface.php,engine/inc/CCDN/Helpers/Api/Response/Field/ScreenwritersField.php,engine/inc/CCDN/Helpers/Api/Response/Field/ScreenwritersFieldInterface.php,engine/inc/CCDN/Helpers/Api/Response/Field/SerialStatus.php,engine/inc/CCDN/Helpers/Api/Response/Field/SerialStatusInterface.php,engine/inc/CCDN/Helpers/Api/Response/Field/TypeField.php,engine/inc/CCDN/Helpers/Api/Response/Field/TypeFieldInterface.php,engine/inc/CCDN/Helpers/Api/Response/Field/VoicesField.php,engine/inc/CCDN/Helpers/Api/Response/Field/VoicesFieldInterface.php,engine/inc/CCDN/Helpers/Api/Response/FranchiseCalendar.php,engine/inc/CCDN/Helpers/Api/Response/FranchiseCalendarInterface.php,engine/inc/CCDN/Helpers/Api/Response/FranchiseDetail.php,engine/inc/CCDN/Helpers/Api/Response/FranchiseDetailsInterface.php,engine/inc/CCDN/Helpers/Api/Response/Genre.php,engine/inc/CCDN/Helpers/Api/Response/GenreInterface.php,engine/inc/CCDN/Helpers/Api/Response/Items/Episode.php,engine/inc/CCDN/Helpers/Api/Response/Items/EpisodeContainer.php,engine/inc/CCDN/Helpers/Api/Response/Items/EpisodeContainerInterface.php,engine/inc/CCDN/Helpers/Api/Response/Items/EpisodeItemInterface.php,engine/inc/CCDN/Helpers/Api/Response/Items/Item.php,engine/inc/CCDN/Helpers/Api/Response/Items/ItemInterface.php,engine/inc/CCDN/Helpers/Api/Response/Items/Season.php,engine/inc/CCDN/Helpers/Api/Response/Items/SeasonItemInterface.php,engine/inc/CCDN/Helpers/Api/Response/Items/SeasonsContainer.php,engine/inc/CCDN/Helpers/Api/Response/Items/SeasonsContainerInterface.php,engine/inc/CCDN/Helpers/Api/Response/Items/Trailer.php,engine/inc/CCDN/Helpers/Api/Response/Items/TrailerItemInterface.php,engine/inc/CCDN/Helpers/Api/Response/Items/TrailersContainer.php,engine/inc/CCDN/Helpers/Api/Response/Items/TrailersContainerInterface.php,engine/inc/CCDN/Helpers/Api/Response/ListInterface.php,engine/inc/CCDN/Helpers/Api/Response/ListResponse.php,engine/inc/CCDN/Helpers/Api/Response/Response.php,engine/inc/CCDN/Helpers/Api/Response/ResponseInterface.php,engine/inc/CCDN/Helpers/Api/Response/Trailers.php,engine/inc/CCDN/Helpers/Api/Response/TrailersInterface.php,engine/inc/CCDN/Helpers/Api/Response/VideoNews.php,engine/inc/CCDN/Helpers/Api/Response/VideoNewsInterface.php,engine/inc/CCDN/Helpers/Api/Response/VoiceAction.php,engine/inc/CCDN/Helpers/Api/Response/VoiceActionInterface.php,engine/inc/CCDN/Helpers/Api/ResponseFactory.php,engine/inc/CCDN/Helpers/Arr.php,engine/inc/CCDN/Helpers/Cache.php,engine/inc/CCDN/Helpers/Caching/Cache.php,engine/inc/CCDN/Helpers/Caching/CacheInterface.php,engine/inc/CCDN/Helpers/Caching/FileCache.php,engine/inc/CCDN/Helpers/Caching/MemcacheCache.php,engine/inc/CCDN/Helpers/CCDNBenchMark.php,engine/inc/CCDN/Helpers/CCDNUploadPoster.php,engine/inc/CCDN/Helpers/Controller.php,engine/inc/CCDN/Helpers/CustomFields.php,engine/inc/CCDN/Helpers/DB/Model.php,engine/inc/CCDN/Helpers/DB/PostMapper.php,engine/inc/CCDN/Helpers/DB/SettingsSave.php,engine/inc/CCDN/Helpers/Enqueue.php,engine/inc/CCDN/Helpers/Entities/Config.php,engine/inc/CCDN/Helpers/Entities/Post.php,engine/inc/CCDN/Helpers/Exception/CCDNException.php,engine/inc/CCDN/Helpers/Exception/CCDNRuntimeException.php,engine/inc/CCDN/Helpers/Facade/Api/Response/Field/TypeField.php,engine/inc/CCDN/Helpers/Facade/Cache.php,engine/inc/CCDN/Helpers/Facade/DB/Model.php,engine/inc/CCDN/Helpers/Facade/FacadeStatic.php,engine/inc/CCDN/Helpers/Facade/Http/Request.php,engine/inc/CCDN/Helpers/Facade/Http/Response.php,engine/inc/CCDN/Helpers/Facade/Http/Url.php,engine/inc/CCDN/Helpers/Facade/Sluggable.php,engine/inc/CCDN/Helpers/FacadeStatic.php,engine/inc/CCDN/Helpers/GA.php,engine/inc/CCDN/Helpers/HTML.php,engine/inc/CCDN/Helpers/Http/Request.php,engine/inc/CCDN/Helpers/Http/Response.php,engine/inc/CCDN/Helpers/Http/Router.php,engine/inc/CCDN/Helpers/Http/Url.php,engine/inc/CCDN/Helpers/Logger/Log.php,engine/inc/CCDN/Helpers/Logger/LogType.php,engine/inc/CCDN/Helpers/MenuBuilder.php,engine/inc/CCDN/Helpers/Modules/Calendar/Handler.php,engine/inc/CCDN/Helpers/Modules/Calendar/XFieldTpl.php,engine/inc/CCDN/Helpers/Modules/CCDNModule.php,engine/inc/CCDN/Helpers/Modules/Module/NotSeasonsFranchiseAltUrl.php,engine/inc/CCDN/Helpers/Modules/Module/NotSeasonsFranchiseMetaTitle.php,engine/inc/CCDN/Helpers/Modules/Module/NotSeasonsFranchiseTitle.php,engine/inc/CCDN/Helpers/Modules/Module/PatterParser.php,engine/inc/CCDN/Helpers/Modules/Module/SeasonsFranchiseAltUrl.php,engine/inc/CCDN/Helpers/Modules/Module/SeasonsFranchiseMetaTitle.php,engine/inc/CCDN/Helpers/Modules/Module/SeasonsFranchiseTitle.php,engine/inc/CCDN/Helpers/NotSeasonsFranchiseAltUrl.php,engine/inc/CCDN/Helpers/NotSeasonsFranchiseMetaTitle.php,engine/inc/CCDN/Helpers/NotSeasonsFranchiseTitle.php,engine/inc/CCDN/Helpers/PostCategories.php,engine/inc/CCDN/Helpers/SearchResolver.php,engine/inc/CCDN/Helpers/SeasonsFranchiseAltUrl.php,engine/inc/CCDN/Helpers/SeasonsFranchiseMetaTitle.php,engine/inc/CCDN/Helpers/SeasonsFranchiseTitle.php,engine/inc/CCDN/Helpers/SecondIn.php,engine/inc/CCDN/Helpers/Settings.php,engine/inc/CCDN/Helpers/Sluggable.php,engine/inc/CCDN/Helpers/XFields.php,engine/inc/CCDN/Init.php,engine/inc/CCDN/logs/.htaccess,engine/inc/CCDN/vendor/autoload.php,engine/inc/CCDN/vendor/composer/autoload_classmap.php,engine/inc/CCDN/vendor/composer/autoload_files.php,engine/inc/CCDN/vendor/composer/autoload_namespaces.php,engine/inc/CCDN/vendor/composer/autoload_psr4.php,engine/inc/CCDN/vendor/composer/autoload_real.php,engine/inc/CCDN/vendor/composer/autoload_static.php,engine/inc/CCDN/vendor/composer/ClassLoader.php,engine/inc/CCDN/vendor/composer/installed.json,engine/inc/CCDN/vendor/composer/LICENSE,engine/inc/CCDN/vendor/guzzlehttp/guzzle/.php_cs,engine/inc/CCDN/vendor/guzzlehttp/guzzle/CHANGELOG.md,engine/inc/CCDN/vendor/guzzlehttp/guzzle/composer.json,engine/inc/CCDN/vendor/guzzlehttp/guzzle/Dockerfile,engine/inc/CCDN/vendor/guzzlehttp/guzzle/LICENSE,engine/inc/CCDN/vendor/guzzlehttp/guzzle/README.md,engine/inc/CCDN/vendor/guzzlehttp/guzzle/src/Client.php,engine/inc/CCDN/vendor/guzzlehttp/guzzle/src/ClientInterface.php,engine/inc/CCDN/vendor/guzzlehttp/guzzle/src/Cookie/CookieJar.php,engine/inc/CCDN/vendor/guzzlehttp/guzzle/src/Cookie/CookieJarInterface.php,engine/inc/CCDN/vendor/guzzlehttp/guzzle/src/Cookie/FileCookieJar.php,engine/inc/CCDN/vendor/guzzlehttp/guzzle/src/Cookie/SessionCookieJar.php,engine/inc/CCDN/vendor/guzzlehttp/guzzle/src/Cookie/SetCookie.php,engine/inc/CCDN/vendor/guzzlehttp/guzzle/src/Exception/BadResponseException.php,engine/inc/CCDN/vendor/guzzlehttp/guzzle/src/Exception/ClientException.php,engine/inc/CCDN/vendor/guzzlehttp/guzzle/src/Exception/ConnectException.php,engine/inc/CCDN/vendor/guzzlehttp/guzzle/src/Exception/GuzzleException.php,engine/inc/CCDN/vendor/guzzlehttp/guzzle/src/Exception/InvalidArgumentException.php,engine/inc/CCDN/vendor/guzzlehttp/guzzle/src/Exception/RequestException.php,engine/inc/CCDN/vendor/guzzlehttp/guzzle/src/Exception/SeekException.php,engine/inc/CCDN/vendor/guzzlehttp/guzzle/src/Exception/ServerException.php,engine/inc/CCDN/vendor/guzzlehttp/guzzle/src/Exception/TooManyRedirectsException.php,engine/inc/CCDN/vendor/guzzlehttp/guzzle/src/Exception/TransferException.php,engine/inc/CCDN/vendor/guzzlehttp/guzzle/src/functions.php,engine/inc/CCDN/vendor/guzzlehttp/guzzle/src/functions_include.php,engine/inc/CCDN/vendor/guzzlehttp/guzzle/src/Handler/CurlFactory.php,engine/inc/CCDN/vendor/guzzlehttp/guzzle/src/Handler/CurlFactoryInterface.php,engine/inc/CCDN/vendor/guzzlehttp/guzzle/src/Handler/CurlHandler.php,engine/inc/CCDN/vendor/guzzlehttp/guzzle/src/Handler/CurlMultiHandler.php,engine/inc/CCDN/vendor/guzzlehttp/guzzle/src/Handler/EasyHandle.php,engine/inc/CCDN/vendor/guzzlehttp/guzzle/src/Handler/MockHandler.php,engine/inc/CCDN/vendor/guzzlehttp/guzzle/src/Handler/Proxy.php,engine/inc/CCDN/vendor/guzzlehttp/guzzle/src/Handler/StreamHandler.php,engine/inc/CCDN/vendor/guzzlehttp/guzzle/src/HandlerStack.php,engine/inc/CCDN/vendor/guzzlehttp/guzzle/src/MessageFormatter.php,engine/inc/CCDN/vendor/guzzlehttp/guzzle/src/Middleware.php,engine/inc/CCDN/vendor/guzzlehttp/guzzle/src/Pool.php,engine/inc/CCDN/vendor/guzzlehttp/guzzle/src/PrepareBodyMiddleware.php,engine/inc/CCDN/vendor/guzzlehttp/guzzle/src/RedirectMiddleware.php,engine/inc/CCDN/vendor/guzzlehttp/guzzle/src/RequestOptions.php,engine/inc/CCDN/vendor/guzzlehttp/guzzle/src/RetryMiddleware.php,engine/inc/CCDN/vendor/guzzlehttp/guzzle/src/TransferStats.php,engine/inc/CCDN/vendor/guzzlehttp/guzzle/src/UriTemplate.php,engine/inc/CCDN/vendor/guzzlehttp/guzzle/src/Utils.php,engine/inc/CCDN/vendor/guzzlehttp/guzzle/UPGRADING.md,engine/inc/CCDN/vendor/guzzlehttp/promises/CHANGELOG.md,engine/inc/CCDN/vendor/guzzlehttp/promises/composer.json,engine/inc/CCDN/vendor/guzzlehttp/promises/LICENSE,engine/inc/CCDN/vendor/guzzlehttp/promises/Makefile,engine/inc/CCDN/vendor/guzzlehttp/promises/README.md,engine/inc/CCDN/vendor/guzzlehttp/promises/src/AggregateException.php,engine/inc/CCDN/vendor/guzzlehttp/promises/src/CancellationException.php,engine/inc/CCDN/vendor/guzzlehttp/promises/src/Coroutine.php,engine/inc/CCDN/vendor/guzzlehttp/promises/src/EachPromise.php,engine/inc/CCDN/vendor/guzzlehttp/promises/src/FulfilledPromise.php,engine/inc/CCDN/vendor/guzzlehttp/promises/src/functions.php,engine/inc/CCDN/vendor/guzzlehttp/promises/src/functions_include.php,engine/inc/CCDN/vendor/guzzlehttp/promises/src/Promise.php,engine/inc/CCDN/vendor/guzzlehttp/promises/src/PromiseInterface.php,engine/inc/CCDN/vendor/guzzlehttp/promises/src/PromisorInterface.php,engine/inc/CCDN/vendor/guzzlehttp/promises/src/RejectedPromise.php,engine/inc/CCDN/vendor/guzzlehttp/promises/src/RejectionException.php,engine/inc/CCDN/vendor/guzzlehttp/promises/src/TaskQueue.php,engine/inc/CCDN/vendor/guzzlehttp/promises/src/TaskQueueInterface.php,engine/inc/CCDN/vendor/guzzlehttp/psr7/CHANGELOG.md,engine/inc/CCDN/vendor/guzzlehttp/psr7/composer.json,engine/inc/CCDN/vendor/guzzlehttp/psr7/LICENSE,engine/inc/CCDN/vendor/guzzlehttp/psr7/README.md,engine/inc/CCDN/vendor/guzzlehttp/psr7/src/AppendStream.php,engine/inc/CCDN/vendor/guzzlehttp/psr7/src/BufferStream.php,engine/inc/CCDN/vendor/guzzlehttp/psr7/src/CachingStream.php,engine/inc/CCDN/vendor/guzzlehttp/psr7/src/DroppingStream.php,engine/inc/CCDN/vendor/guzzlehttp/psr7/src/FnStream.php,engine/inc/CCDN/vendor/guzzlehttp/psr7/src/functions.php,engine/inc/CCDN/vendor/guzzlehttp/psr7/src/functions_include.php,engine/inc/CCDN/vendor/guzzlehttp/psr7/src/InflateStream.php,engine/inc/CCDN/vendor/guzzlehttp/psr7/src/LazyOpenStream.php,engine/inc/CCDN/vendor/guzzlehttp/psr7/src/LimitStream.php,engine/inc/CCDN/vendor/guzzlehttp/psr7/src/MessageTrait.php,engine/inc/CCDN/vendor/guzzlehttp/psr7/src/MultipartStream.php,engine/inc/CCDN/vendor/guzzlehttp/psr7/src/NoSeekStream.php,engine/inc/CCDN/vendor/guzzlehttp/psr7/src/PumpStream.php,engine/inc/CCDN/vendor/guzzlehttp/psr7/src/Request.php,engine/inc/CCDN/vendor/guzzlehttp/psr7/src/Response.php,engine/inc/CCDN/vendor/guzzlehttp/psr7/src/Rfc7230.php,engine/inc/CCDN/vendor/guzzlehttp/psr7/src/ServerRequest.php,engine/inc/CCDN/vendor/guzzlehttp/psr7/src/Stream.php,engine/inc/CCDN/vendor/guzzlehttp/psr7/src/StreamDecoratorTrait.php,engine/inc/CCDN/vendor/guzzlehttp/psr7/src/StreamWrapper.php,engine/inc/CCDN/vendor/guzzlehttp/psr7/src/UploadedFile.php,engine/inc/CCDN/vendor/guzzlehttp/psr7/src/Uri.php,engine/inc/CCDN/vendor/guzzlehttp/psr7/src/UriNormalizer.php,engine/inc/CCDN/vendor/guzzlehttp/psr7/src/UriResolver.php,engine/inc/CCDN/vendor/psr/http-message/CHANGELOG.md,engine/inc/CCDN/vendor/psr/http-message/composer.json,engine/inc/CCDN/vendor/psr/http-message/LICENSE,engine/inc/CCDN/vendor/psr/http-message/README.md,engine/inc/CCDN/vendor/psr/http-message/src/MessageInterface.php,engine/inc/CCDN/vendor/psr/http-message/src/RequestInterface.php,engine/inc/CCDN/vendor/psr/http-message/src/ResponseInterface.php,engine/inc/CCDN/vendor/psr/http-message/src/ServerRequestInterface.php,engine/inc/CCDN/vendor/psr/http-message/src/StreamInterface.php,engine/inc/CCDN/vendor/psr/http-message/src/UploadedFileInterface.php,engine/inc/CCDN/vendor/psr/http-message/src/UriInterface.php,engine/inc/CCDN/vendor/ralouphie/getallheaders/composer.json,engine/inc/CCDN/vendor/ralouphie/getallheaders/LICENSE,engine/inc/CCDN/vendor/ralouphie/getallheaders/README.md,engine/inc/CCDN/vendor/ralouphie/getallheaders/src/getallheaders.php,engine/inc/CCDN/vendor/symfony/polyfill-intl-idn/bootstrap.php,engine/inc/CCDN/vendor/symfony/polyfill-intl-idn/composer.json,engine/inc/CCDN/vendor/symfony/polyfill-intl-idn/Idn.php,engine/inc/CCDN/vendor/symfony/polyfill-intl-idn/LICENSE,engine/inc/CCDN/vendor/symfony/polyfill-intl-idn/README.md,engine/inc/CCDN/vendor/symfony/polyfill-mbstring/bootstrap.php,engine/inc/CCDN/vendor/symfony/polyfill-mbstring/composer.json,engine/inc/CCDN/vendor/symfony/polyfill-mbstring/LICENSE,engine/inc/CCDN/vendor/symfony/polyfill-mbstring/Mbstring.php,engine/inc/CCDN/vendor/symfony/polyfill-mbstring/README.md,engine/inc/CCDN/vendor/symfony/polyfill-mbstring/Resources/unidata/lowerCase.php,engine/inc/CCDN/vendor/symfony/polyfill-mbstring/Resources/unidata/titleCaseRegexp.php,engine/inc/CCDN/vendor/symfony/polyfill-mbstring/Resources/unidata/upperCase.php,engine/inc/CCDN/vendor/symfony/polyfill-php72/bootstrap.php,engine/inc/CCDN/vendor/symfony/polyfill-php72/composer.json,engine/inc/CCDN/vendor/symfony/polyfill-php72/LICENSE,engine/inc/CCDN/vendor/symfony/polyfill-php72/Php72.php,engine/inc/CCDN/vendor/symfony/polyfill-php72/README.md,engine/inc/CCDN/views/button/btn.php,engine/inc/CCDN/views/button/main.php,engine/inc/CCDN/views/calendar/calendar.php,engine/inc/CCDN/views/collection/collection.php,engine/inc/CCDN/views/franchise-parts/franchise-parts.php,engine/inc/CCDN/views/future-franchises/main.php,engine/inc/CCDN/views/log/log.php,engine/inc/CCDN/views/main/main.php,engine/inc/CCDN/views/module/module.php,engine/inc/CCDN/views/new-franchise/new-franchise.php,engine/inc/CCDN/views/parse-database/main.php,engine/inc/CCDN/views/settings/settings.php,engine/inc/ccdn.php,engine/modules/ccdn-calendar-fullstory.php,engine/modules/ccdn-calendar-main.php,engine/modules/ccdn-franchise-parts.php,engine/modules/ccdn.php,engine/skins/ccdn/css/bootstrap-select.min.css,engine/skins/ccdn/css/button.css,engine/skins/ccdn/css/jquery.dataTables.min.css,engine/skins/ccdn/css/main.css,engine/skins/ccdn/images/sort_asc.png,engine/skins/ccdn/images/sort_asc_disabled.png,engine/skins/ccdn/images/sort_both.png,engine/skins/ccdn/images/sort_desc.png,engine/skins/ccdn/images/sort_desc_disabled.png,engine/skins/ccdn/js/bootstrap-select.min.js,engine/skins/ccdn/js/button.js,engine/skins/ccdn/js/collaps-database.js,engine/skins/ccdn/js/collections.js,engine/skins/ccdn/js/delete-plugin.js,engine/skins/ccdn/js/future-franchises.js,engine/skins/ccdn/js/jquery.dataTables.min.js,engine/skins/ccdn/js/log.js,engine/skins/ccdn/js/main.js,engine/skins/ccdn/js/new-franchise.js,engine/skins/ccdn/js/parse-database.js,engine/skins/ccdn/js/search-select.js,engine/skins/ccdn/js/update-films.js,templates/{THEME}/ccdn-calendar/full/all/container.tpl,templates/{THEME}/ccdn-calendar/full/all/item.tpl,templates/{THEME}/ccdn-calendar/full/all/season.tpl,templates/{THEME}/ccdn-calendar/full/last/full.tpl,templates/{THEME}/ccdn-calendar/full/last/item.tpl,templates/{THEME}/ccdn-calendar/main/day.tpl,templates/{THEME}/ccdn-calendar/main/item.tpl,templates/{THEME}/ccdn-calendar/main/main.tpl,templates/{THEME}/ccdn-franchise-parts/container.tpl,templates/{THEME}/ccdn-franchise-parts/item.tpl', '', '', '', '', '', '', '', '', 0, 5),
(15, 'Делаем теги глобальными в dle', '', '', '', '', '<=', 0, '', '', '', '', '', 0, '', '', '', '', '', '', '', '', 'Не включать ! Пока не адаптирован к новой версии. Ожидается обновление.', 1, 15),
(16, 'Торрент плагин', 'Ссылки на скачивание торрента с рутора', '', '2.1', '12', '>=', 1, '', '', '', '', '', 1, 'engine/ajax/torrent_rutor.php,engine/skins/images/loading.gif,uploads/download.png,uploads/magnet.png', '', '', '', '', '', '', '', '', 0, 16),
(17, 'CDN Movies for DLE', 'Массовое проставление данных видео балансера CDN Movies', 'engine/skins/images/cdn_movies.png', '1.0', '13.0', '>=', 1, 'DELETE FROM `{prefix}_admin_sections` WHERE name = \'cdnmovies_balancer\';\nINSERT INTO `{prefix}_admin_sections` (name, title, descr, icon, allow_groups) VALUES (\'cdnmovies_balancer\', \'CDN Movies for DLE v.1.0\', \'Массовое проставление данных видео балансера\', \'engine/skins/images/cdn_movies.png\', \'1\');', 'DELETE FROM `{prefix}_admin_sections` WHERE name = \'cdnmovies_balancer\';\nINSERT INTO `{prefix}_admin_sections` (name, title, descr, icon, allow_groups) VALUES (\'cdnmovies_balancer\', \'CDN Movies for DLE v.1.0\', \'Массовое проставление данных видео балансера\', \'engine/skins/images/cdn_movies.png\', \'1\');', 'DELETE FROM `{prefix}_admin_sections` WHERE name = \'cdnmovies_balancer\';\nINSERT INTO `{prefix}_admin_sections` (name, title, descr, icon, allow_groups) VALUES (\'cdnmovies_balancer\', \'CDN Movies for DLE v.1.0\', \'Массовое проставление данных видео балансера\', \'engine/skins/images/cdn_movies.png\', \'1\');', 'DELETE FROM `{prefix}_admin_sections` WHERE name = \'cdnmovies_balancer\';', 'DELETE FROM `{prefix}_admin_sections` WHERE name = \'cdnmovies_balancer\';', 1, 'engine/ajax/cdnmovies_balancer.php,engine/inc/cdnmovies_balancer.php,engine/modules/cdnmovies-balancer/.htaccess,engine/modules/cdnmovies-balancer/admin-panel/.htaccess,engine/modules/cdnmovies-balancer/admin-panel/admin.php,engine/modules/cdnmovies-balancer/admin-panel/functions_admin_panel.php,engine/modules/cdnmovies-balancer/cdnmovies_ajax.php,engine/modules/cdnmovies-balancer/cdnmovies_overwrite.php,engine/modules/cdnmovies-balancer/cdnmovies_replace.php,engine/skins/images/cdn_movies.png', '', '', '', '', '', '', '', '', 0, 7);

-- --------------------------------------------------------

--
-- Структура таблицы `dle_plugins_files`
--

CREATE TABLE `dle_plugins_files` (
  `id` int(11) NOT NULL,
  `plugin_id` int(11) NOT NULL DEFAULT '0',
  `file` varchar(255) NOT NULL DEFAULT '',
  `action` varchar(10) NOT NULL DEFAULT '',
  `searchcode` text NOT NULL,
  `replacecode` mediumtext NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `searchcount` smallint(6) NOT NULL DEFAULT '0',
  `replacecount` smallint(6) NOT NULL DEFAULT '0',
  `filedisable` tinyint(1) NOT NULL DEFAULT '1',
  `filedleversion` varchar(10) NOT NULL DEFAULT '',
  `fileversioncompare` char(2) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `dle_plugins_files`
--

INSERT INTO `dle_plugins_files` (`id`, `plugin_id`, `file`, `action`, `searchcode`, `replacecode`, `active`, `searchcount`, `replacecount`, `filedisable`, `filedleversion`, `fileversioncompare`) VALUES
(1, 1, 'engine/engine.php', 'replace', '$meta->meta(\'generator\', \"DataLife Engine (https://dle-news.ru)\");', '$meta->meta(\'generator\', \"GodZilla (https://ivi.kinoizi.com)\");', 1, 0, 0, 1, '', '=='),
(2, 1, 'engine/ajax/updates.php', 'replace', '$_REQUEST[\'versionid\'] = htmlspecialchars( strip_tags($_REQUEST[\'versionid\']), ENT_QUOTES, $config[\'charset\']);\r\n$_REQUEST[\'build\'] = htmlspecialchars( strip_tags($_REQUEST[\'build\']), ENT_QUOTES, $config[\'charset\']);\r\n\r\n$arrContextOptions=array(\r\n    \"ssl\"=>array(\r\n        \"verify_peer\"=>false,\r\n        \"verify_peer_name\"=>false,\r\n    ),\r\n);\r\n\r\n$data = @file_get_contents(\"https://dle-news.ru/extras/updates.php?version_id=\".$_REQUEST[\'versionid\'].\"&build=\".$_REQUEST[\'build\'].\"&key=\".$config[\'key\'].\"&lang=\".$lang[\'wysiwyg_language\'], false, stream_context_create($arrContextOptions));\r\n\r\nif ( !$data ) echo $lang[\'no_update\']; else {\r\n\r\n	if( function_exists( \'mb_convert_encoding\' ) ) {\r\n	\r\n		$data = mb_convert_encoding( $data, \"utf-8\", \"windows-1251\" );\r\n	\r\n	} elseif( function_exists( \'iconv\' ) ) {\r\n		\r\n		$data = iconv(\"windows-1251\", \"utf-8\", $data);\r\n		\r\n	}\r\n	\r\n	echo $data;\r\n\r\n}', 'echo <<<HTML\r\n<div class=\"ui-state-error ui-corner-all\" style=\"padding:10px;\"><b>Внимание!</b>\r\n<br>Во избежании проблем, в целях безопасности, проверка обновлений отключена!\r\nЕсли вы купили лицензию DLE, то можете отключить плагин Изменение заголовка DLE и пользоваться обновлениями.\r\n</div>\r\nHTML;', 1, 0, 0, 1, '', '=='),
(3, 2, 'engine/modules/show.full.php', 'after', 'if( $row[\'vote_num\'] ) $ratingscore = str_replace( \',\', \'.\', round( ($row[\'rating\'] / $row[\'vote_num\']), 1 ) );\n			else $ratingscore = 0;', 'if( $row[\'vote_num\'] ) $ratingscorelikes = str_replace( \',\', \'.\', round( ( ($row[\'vote_num\'] - $dislikes ) / $row[\'vote_num\']*10), 1 ) );\n			else $ratingscorelikes = 0;', 1, 0, 0, 1, '', ''),
(4, 2, 'engine/modules/show.full.php', 'after', '$tpl->set( \'{ratingscore}\', $ratingscore );', '$tpl->set( \'{ratingscorelikes}\', $ratingscorelikes );', 1, 0, 0, 1, '', ''),
(5, 2, 'engine/modules/show.short.php', 'after', '$dislikes = ($row[\'vote_num\'] - $row[\'rating\'])/2;\n			$likes = $row[\'vote_num\'] - $dislikes;', 'if( $row[\'vote_num\'] ) $ratingscorelikes = str_replace( \',\', \'.\', round( ( ($row[\'vote_num\'] - $dislikes ) / $row[\'vote_num\']*10), 1 ) );\n			else $ratingscorelikes = 0;', 1, 0, 0, 1, '', ''),
(6, 2, 'engine/modules/show.short.php', 'after', '$tpl->set( \'[/rating]\', \"\" );', '$tpl->set( \'{ratingscorelikes}\', $ratingscorelikes );', 1, 0, 0, 1, '', ''),
(7, 2, 'engine/modules/show.custom.php', 'after', '$dislikes = ($row[\'vote_num\'] - $row[\'rating\'])/2;\n			$likes = $row[\'vote_num\'] - $dislikes;', 'if( $row[\'vote_num\'] ) $ratingscorelikes = str_replace( \',\', \'.\', round( ( ($row[\'vote_num\'] - $dislikes ) / $row[\'vote_num\']*10), 1 ) );\n			else $ratingscorelikes = 0;', 1, 0, 0, 1, '', ''),
(8, 2, 'engine/modules/show.custom.php', 'after', '$tpl->set( \'[/rating]\', \"\" );', '$tpl->set( \'{ratingscorelikes}\', $ratingscorelikes );', 1, 0, 0, 1, '', ''),
(9, 3, 'engine/ajax/search.php', 'replace', '$db->query( \"SELECT id, short_story, title, date,', '$db->query( \"SELECT id, short_story, title, date, xfields,', 1, 0, 0, 1, '', '=='),
(10, 3, 'engine/ajax/search.php', 'after', '$description = preg_replace( \"\'\\[attachment=(.*?)\\]\'si\", \"\", $description );', '$xf = xfieldsdataload( $row[\'xfields\'] );', 1, 0, 0, 1, '', '=='),
(11, 3, 'engine/ajax/search.php', 'replace', '$buffer .= \"<a href=\\\"\" . $full_link . \"\\\">', '$buffer .= \"<a href=\\\"\" . $full_link . \"\\\"><img src=\\\"\".$xf[\'poster\'].\"\\\" style=\\\"float:left; max-width:50px; margin-right:5px;\\\">', 1, 0, 0, 1, '', '=='),
(12, 4, 'engine/mods/donbots.php', 'create', '', '<?php\r\n  if(!defined(\'DATALIFEENGINE\')) {\r\n    header( \"HTTP/1.1 403 Forbidden\" );\r\n    header ( \'Location: ../../\' );\r\n    die( \"Hacking attempt!\" );\r\n}\r\nini_set(\"memory_limit\",\"1024M\");\r\nini_set(\'max_execution_time\',600);\r\nignore_user_abort(true);\r\nset_time_limit(200);\r\nsession_write_close();\r\nrequire_once (ENGINE_DIR . \'/classes/plugins.class.php\');\r\nrequire_once (ENGINE_DIR . \'/classes/parse.class.php\');\r\n\r\n    // Получение и обработка конфирурации модуля\r\n    $tag    = $tag == \'follow\'?\'follow\':\'nofollow\';\r\n    $pages  = !empty($pages)?$pages:array();\r\n    $conf   = explode(\',\', $pages);    \r\n    // Переменная для вывода\r\n    $output = \'\';    \r\n    // Массив - шаблон метатега\r\n    $template = array(\r\n        \'nofollow\' => \'<meta name=\"robots\" content=\"noindex,nofollow\" />\',\r\n        \'follow\'   => \'<meta name=\"robots\" content=\"noindex,follow\" />\',\r\n    );    \r\n    // Определяем страницу пагинации, где бы мы не находились\r\n    $cstart = intval($_GET[\'cstart\']);    \r\n    // Если нужно закрыть все страницы пагинации независимо от модуля, сразу выводим нужный тег\r\n    if($cstart > 0 && in_array(\'pages\', $conf))\r\n    {\r\n        $output = $template[$tag];\r\n    }    \r\n    else\r\n    {\r\n        // Проверяем наличие в конфигурации пунктов, на которые влияет страница пагинации\r\n        switch($dle_module)\r\n        {\r\n            // Пагинация главной страницы\r\n            case \'main\':\r\n                if(in_array(\'mainp\', $conf) && $cstart > 1)\r\n                {\r\n                    $output = $template[$tag];\r\n                    break;\r\n                }\r\n            // Пагинация категорий\r\n            case \'cat\':\r\n                if(in_array(\'catp\', $conf) && $cstart > 1)\r\n                {\r\n                    $output = $template[$tag];\r\n                    break;\r\n                }\r\n// Если данный dle_module содержится в конфигурации модуля, возвращаем шаблон тега, указанный в параметре\r\n            default:\r\n                if(in_array($dle_module, $conf))\r\n                {\r\n                    $output = $template[$tag];\r\n                }\r\n                break;\r\n        }\r\n    }\r\n// Вывод нужного тега\r\n    echo $output;\r\n?>', 1, 0, 0, 1, '', '=='),
(17, 6, 'engine/inc/addnews.php', 'after', 'echo $categoryfilter;', 'require_once ENGINE_DIR . \'/kodik/parse.php\';', 1, 0, 0, 1, '', ''),
(18, 6, 'engine/inc/editnews.php', 'after', 'echo $categoryfilter;', 'require_once ENGINE_DIR . \'/kodik/parse.php\';', 1, 0, 0, 1, '', ''),
(150, 7, 'engine/inc/addnews.php', 'before', 'echo <<<HTML\r\n		</div>\r\n		</div>\r\n		{$output}', '// ustore search begin\r\nrequire_once ENGINE_DIR . \'/inc/ustore/init.php\';\r\n$output .= $ustore->get_button();', 0, 1, 1, 1, '', '=='),
(151, 7, 'engine/inc/editnews.php', 'before', 'echo <<<HTML\r\n		</div>\r\n		</div>\r\n		{$output}', '// ustore search begin\r\nrequire_once ENGINE_DIR . \'/inc/ustore/init.php\';\r\n$output .= $ustore->get_button();', 0, 1, 1, 1, '', '=='),
(152, 7, 'engine/modules/show.full.php', 'before', '$tpl->compile( \'content\'', '/****** uStore Filter *** start ******/\r\nif( strpos( $tpl->result[\'content\'], \'[ustore-filter-users\' ) !== false ) {\r\n	$tpl->result[\'content\'] = preg_replace_callback( \"#\\[(ustore-filter-users)\\](.*?)\\[/ustore-filter-users\\]#is\", \'uStoreFilter\', $tpl->result[\'content\'] );\r\n}\r\nif( strpos( $tpl->result[\'content\'], \'[ustore-filter-rkn\' ) !== false ) {\r\n	$tpl->result[\'content\'] = preg_replace_callback( \"#\\[(ustore-filter-rkn)\\](.*?)\\[/ustore-filter-rkn\\]#is\", \'uStoreFilter\', $tpl->result[\'content\'] );\r\n}\r\n\r\nfunction uStoreFilter( $matches=array() ) {\r\n	global $ustore_filter_status;\r\n	$block = $matches[2];\r\n\r\n	if( $matches[1] == \'ustore-filter-users\' ) {\r\n		// [ustore-filter-users\r\n		if ($ustore_filter_status == \'warning\') return \'\';\r\n	} else {\r\n		// [ustore-filter-rkn\r\n		if ($ustore_filter_status == \'ok\') return \'\';\r\n	}\r\n	\r\n	return $block;\r\n}\r\n/****** uStore Filter *** stop  ******/\r\n\r\n// ustore player begin\r\nrequire_once ENGINE_DIR . \'/inc/ustore/init.php\';\r\n$ustore->add_player($row, false, $member_id[\'user_group\']);', 0, 1, 1, 1, '', '=='),
(153, 7, 'engine/init.php', 'after', 'check_xss ();', '\r\n// ustore filter begin\r\nrequire_once ENGINE_DIR . \'/classes/ustore.filter.class.php\';\r\n$ustore_filter = new ustore_filter($config, $db);\r\n$ustore_filter_status = $ustore_filter->check();', 0, 1, 1, 1, '', '=='),
(154, 7, 'engine/modules/main.php', 'before', 'echo $tpl->result[\'main\'];', '\r\nif (isset($ustore) && method_exists($ustore, \'vip\')) {\r\n	$vip_direct_time = $ustore->vip(\'direct_time\');\r\n	if (!empty($vip_direct_time))\r\n		$tpl->result[\'main\'] = str_replace( \"</body>\", $vip_direct_time.\"</body>\", $tpl->result[\'main\'] );\r\n}\r\n', 0, 1, 1, 1, '', '=='),
(168, 13, 'engine/inc/editnews.php', 'replace', '<th class=\"hidden-xs hidden-sm\" style=\"width: 60px;\">&nbsp;</th>\n<th>{$lang[\'edit_title\']}</th>\n<th class=\"hidden-xs text-center\" style=\"width: 60px;\"><i class=\"fa fa-eye tip\" data-original-title=\"{$lang[\'st_views\']}\"></i></th>\n<th class=\"hidden-xs text-center\" style=\"width: 60px;\"><i class=\"fa fa-comment-o tip\" data-original-title=\"{$lang[\'edit_com\']}\"></i></th>\n<th style=\"width: 30px;text-align:center;\">&nbsp;</th>\n<th class=\"hidden-xs text-center\">{$lang[\'edit_cl\']}</th>\n<th class=\"hidden-xs hidden-sm\" style=\"max-width: 140px\">{$lang[\'edit_autor\']}</th>\n<th style=\"width: 40px\"><input type=\"checkbox\" name=\"master_box\" title=\"{$lang[\'edit_selall\']}\" onclick=\"javascript:ckeck_uncheck_all();\" class=\"icheck\"></th>', '<!--start template-->\nHTML;\necho file_get_contents(ENGINE_DIR . \'/inc/newstemplate/tpl/head.tpl\');\necho <<<HTML\n<!--end template-->', 1, 0, 0, 1, '', ''),
(169, 13, 'engine/inc/editnews.php', 'replace', '$db->query( \"SELECT p.id, p.date, p.title, p.category, p.autor, p.alt_name, p.comm_num, p.approve, p.fixed, e.news_read, e.votes, e.user_id, e.need_pass FROM \" . PREFIX . \"_post p LEFT JOIN \" . PREFIX . \"_post_extras e ON (p.id=e.news_id) \" . $where . \" ORDER BY \" . $order_by . \" LIMIT {$start_from},{$news_per_page}\" );\n	// Prelist Entries\n\n	$i = $start_from;\n	\n	if( $start_from == 0 ) {\n		$start_from = \"\";\n	}\n	\n	$entries_showed = 0;\n\n	$entries = \"\";\n\n	while ( $row = $db->get_array() ) {\n\n		$i ++;\n		\n		if( $langformatdate ) {\n			$itemdate = date( $langformatdate, strtotime( $row[\'date\'] ) );\n		} else {\n			$itemdate = date( \"d.m.Y\", strtotime( $row[\'date\'] ) );\n		}\n\n		$title = $row[\'title\'];\n\n		$title = htmlspecialchars( stripslashes( $title ), ENT_QUOTES, $config[\'charset\'] );\n		$title = str_replace(\"&amp;\",\"&\", $title );\n\n		$entries .= \"<tr><td class=\\\"hidden-xs hidden-sm text-nowrap cursor-pointer\\\" onclick=\\\"document.location = \'?mod=editnews&action=editnews&id={$row[\'id\']}\'; return false;\\\">{$itemdate}</td><td class=\\\"cursor-pointer\\\" onclick=\\\"document.location = \'?mod=editnews&action=editnews&id={$row[\'id\']}\'; return false;\\\">\";\n\n		if( $config[\'allow_alt_url\'] ) {\n\n			if( $config[\'seo_type\'] == 1 OR $config[\'seo_type\'] == 2 ) {\n\n				if( $row[\'category\'] and $config[\'seo_type\'] == 2 ) {\n\n					$cats_url = get_url( $row[\'category\'] );\n					\n					if($cats_url) {\n						\n						$full_link = $config[\'http_home_url\'] . $cats_url . \"/\" . $row[\'id\'] . \"-\" . $row[\'alt_name\'] . \".html\";\n						\n					} else $full_link = $config[\'http_home_url\'] . $row[\'id\'] . \"-\" . $row[\'alt_name\'] . \".html\";\n				\n				} else {\n					\n					$full_link = $config[\'http_home_url\'] . $row[\'id\'] . \"-\" . $row[\'alt_name\'] . \".html\";\n				\n				}\n\n			} else {\n\n				$full_link = $config[\'http_home_url\'] . date( \'Y/m/d/\', strtotime( $row[\'date\'] ) ) . $row[\'alt_name\'] . \".html\";\n			}\n\n		} else {\n\n			$full_link = $config[\'http_home_url\'] . \"index.php?newsid=\" . $row[\'id\'];\n\n		}\n\n		if( $row[\'comm_num\'] > 0 ) {\n			\n			$row[\'comm_num\'] = number_format( $row[\'comm_num\'], 0, \',\', \' \');\n			\n			$comm_link = <<<HTML\n<div class=\"btn-group\">\n<a href=\"{$full_link}\" target=\"_blank\" data-toggle=\"dropdown\" data-original-title=\"{$lang[\'edit_com\']}\" class=\"tip\">{$row[\'comm_num\']}</a>\n  <ul class=\"dropdown-menu text-left\">\n   <li><a href=\"{$full_link}\" target=\"_blank\"><i class=\"fa fa fa-eye\"></i> {$lang[\'comm_view\']}</a></li>\n   <li><a href=\"?mod=comments&action=edit&id={$row[\'id\']}\"><i class=\"fa fa-pencil\"></i> {$lang[\'vote_edit\']}</a></li>\n   <li><a href=\"?mod=comments&user_hash={$dle_login_hash}&action=dorebuild&id={$row[\'id\']}\"><i class=\"fa fa-retweet\"></i> {$lang[\'news_r_comments\']}</a></li>\n   <li class=\"divider\"></li>\n   <li><a onclick=\"javascript:cdelete(\'{$row[\'id\']}\'); return(false)\" href=\"?mod=comments&user_hash={$dle_login_hash}&action=dodelete&id={$row[\'id\']}\"><i class=\"fa fa-trash-o\"></i> {$lang[\'comm_del\']}</a></li>\n  </ul>\n</div>\nHTML;\n\n		} else {\n			$comm_link = <<<HTML\n<div class=\"btn-group\">\n<a href=\"{$full_link}\" target=\"_blank\" data-toggle=\"dropdown\" data-original-title=\"{$lang[\'edit_com\']}\" class=\"tip\">{$row[\'comm_num\']}</a>\n  <ul class=\"dropdown-menu text-left\">\n   <li><a href=\"?mod=comments&user_hash={$dle_login_hash}&action=dorebuild&id={$row[\'id\']}\"><i class=\"fa fa-retweet\"></i> {$lang[\'news_r_comments\']}</a></li>\n  </ul>\n</div>\nHTML;\n		}\n		\n		$row[\'news_read\'] = number_format( $row[\'news_read\'], 0, \',\', \' \');\n		\n		if( $row[\'fixed\'] ) $entries .= \"<span class=\\\"badge badge-danger position-left\\\">{$lang[\'edit_fix\']}</span>\";\n\n		if( $row[\'votes\'] ) $entries .= \"<i class=\\\"fa fa-bar-chart position-left text-muted\\\"></i>\";\n		if( $row[\'need_pass\'] ) $entries .= \"<i class=\\\"fa fa-lock position-left text-muted\\\"></i>\";\n\n		$entries .= \"<a title=\'{$lang[\'edit_act\']}\' href=\\\"?mod=editnews&action=editnews&id={$row[\'id\']}\\\">{$title}</a></td>\n        <td class=\\\"hidden-xs text-nowrap text-center\\\"><a data-original-title=\\\"{$lang[\'st_views\']}\\\" class=\\\"tip\\\" href=\\\"{$full_link}\\\" target=\\\"_blank\\\">{$row[\'news_read\']}</a></td>\";\n\n		$entries .= \"<td class=\\\"hidden-xs text-nowrap text-center\\\" style=\\\"text-align: center\\\">{$comm_link}</td><td style=\\\"text-align: center\\\" class=\\\"cursor-pointer\\\" onclick=\\\"document.location = \'?mod=editnews&action=editnews&id={$row[\'id\']}\'; return false;\\\">\";\n\n		if( $row[\'approve\'] ) $erlaub = \"<span class=\\\"text-success\\\"><b><i class=\\\"fa fa-check-circle\\\"></i></b></span>\";\n		else $erlaub = \"<span class=\\\"text-danger\\\"><b><i class=\\\"fa fa-exclamation-circle\\\"></i></b></span>\";\n		$entries .= $erlaub;\n\n		if( ! $row[\'category\'] ) $my_cat = \"---\";\n		else {\n\n			$my_cat = array ();\n			$cat_list = explode( \',\', $row[\'category\'] );\n\n			foreach ( $cat_list as $element ) {\n				if( isset($cat_info[$element][\'name\']) AND $cat_info[$element][\'name\'] AND $element ) $my_cat[] = $cat_info[$element][\'name\'];\n			}\n			\n			if( count($my_cat) ) $my_cat = implode( \',<br />\', $my_cat );\n			else $my_cat = \"---\";\n			\n		}\n		\n		$entries .= \"</td><td class=\\\"hidden-xs cursor-pointer text-center\\\" onclick=\\\"document.location = \'?mod=editnews&action=editnews&id={$row[\'id\']}\'; return false;\\\">{$my_cat}</td>\";\n		\n		if( $user_group[$member_id[\'user_group\']][\'admin_editusers\'] ) {\n			$entries .= \"<td class=\\\"hidden-xs hidden-sm\\\"><a href=\\\"?mod=editusers&action=edituser&id=\" . $row[\'user_id\'] . \"\\\" target=\\\"_blank\\\">\" . $row[\'autor\'] . \"</a></td>\";\n		} else {\n			$entries .= \"<td class=\\\"hidden-xs hidden-sm\\\">\" . $row[\'autor\'] . \"</td>\";\n		}\n		\n		$entries .= \"<td style=\\\"text-align: center\\\"><input name=\\\"selected_news[]\\\" value=\\\"{$row[\'id\']}\\\" type=\\\"checkbox\\\" class=\\\"icheck\\\"></td></tr>\";\n\n		$entries_showed ++;\n\n	}', 'include ENGINE_DIR . \'/inc/newstemplate/editnewschange.php\';', 1, 0, 0, 1, '', ''),
(172, 10, 'engine/inc/addnews.php', 'before', 'echo <<<HTML\r\n		</div>\r\n		</div>\r\n		{$output}', '// videocdn search begin\r\nrequire_once ENGINE_DIR . \'/inc/videocdn/init.php\';\r\n$output .= $videocdn->get_button();', 1, 0, 0, 1, '', '=='),
(173, 10, 'engine/inc/editnews.php', 'before', 'echo <<<HTML\r\n		</div>\r\n		</div>\r\n		{$output}', '// videocdn search begin\r\nrequire_once ENGINE_DIR . \'/inc/videocdn/init.php\';\r\n$output .= $videocdn->get_button();', 1, 0, 0, 1, '', '=='),
(174, 10, 'engine/modules/show.full.php', 'after', 'else $tpl->load_template( \'fullstory.tpl\' );', '// videocdn player begin\r\nrequire_once ENGINE_DIR . \'/inc/videocdn/init.php\';\r\n$videocdn->add_player($row);', 1, 0, 0, 1, '', '=='),
(175, 11, 'engine/init.php', 'after', 'require_once (DLEPlugins::Check(ENGINE_DIR . \'/modules/functions.php\'));', 'require_once ROOT_DIR . \'/hdvb/init.php\';', 1, 0, 0, 1, '', '=='),
(176, 11, 'engine/modules/show.full.php', 'after', 'else $tpl->load_template( \'fullstory.tpl\' );', '$hdvb->view(array(\'player\'));', 1, 0, 0, 1, '', '=='),
(177, 11, 'engine/inc/addnews.php', 'after', '// End XFields Call', 'require_once ROOT_DIR . \'/hdvb/admin/widgets/search.php\';', 1, 0, 0, 1, '', '=='),
(178, 11, 'engine/inc/editnews.php', 'after', '// End XFields Call', 'require_once ROOT_DIR . \'/hdvb/admin/widgets/search.php\';', 1, 0, 0, 1, '', '=='),
(179, 11, 'engine/modules/main.php', 'after', '$tpl->compile ( \'main\' );', '$hdvb->view(array(\'script\'));', 1, 0, 0, 1, '', '=='),
(180, 11, 'engine/modules/main.php', 'before', 'GzipOut();', 'if (!intval($hdvb->config[\'update\'][\'type\'])) { $hdvb->update(); }', 1, 0, 0, 1, '', '=='),
(181, 12, 'engine/inc/addnews.php', 'after', '</i>{$lang[\'btn_preview\']}</button>', '<a id=\"auto_bazon\" class=\"btn btn-sm btn-raised position-left\" style=\"margin-top:5px; background-color:#2a96b5; border-color:#2a96b5; color:#fff;\"><i class=\"fa fa-leaf position-left\"></i>Заполнить из BAZON</a>', 1, 0, 0, 1, '', '=='),
(182, 12, 'engine/inc/addnews.php', 'before', 'echofooter();', '$config_file = ENGINE_DIR.\'/data/bazon.config.php\';\r\n$cat_config_file = ENGINE_DIR.\'/data/bazon.cat.config.php\';\r\n\r\nif(file_exists($config_file)) require_once $config_file;\r\nif(file_exists($cat_config_file)) require_once $cat_config_file;\r\n\r\n$bazon_not_configured = (empty($bazon_config[\'kinopoisk_id\']) or empty($bazon_config[\'token\'])) ? true : false;\r\n$poster_name = (!empty($bazon_config[\'poster\'])) ? $bazon_config[\'poster\'] : \'\';\r\n?>\r\n					\r\n<script>\r\n$(function() {\r\n	$(\'#auto_bazon\').click(function() {\r\n		<?if($bazon_not_configured):?>\r\n			alert(\'Модуль BAZON не настроен\');\r\n		<?else:?>\r\n			var kinopoisk_id = $(\"#xf_<?=$bazon_config[\'kinopoisk_id\'];?>\").val();\r\n			\r\n			if(kinopoisk_id==\'\') alert(\"Не заполнен <?=$bazon_config[\'kinopoisk_id\'];?>\");\r\n			else {\r\n				ShowLoading(\'\');\r\n				\r\n				$.post(\"engine/ajax/controller.php?mod=bazon_add&user_hash=<?=$dle_login_hash;?>\", {kinopoisk_id: kinopoisk_id},\r\n					function(data){\r\n						HideLoading(\'\');\r\n						\r\n						if (data) {\r\n							if (data.error) {\r\n								alert(data.error);\r\n							}\r\n							else {\r\n								if($(\"#title\").val()==\'\'){\r\n									$(\"#title\").val(data.title);\r\n								}\r\n								\r\n								if($(\"input[name=\'alt_name\']\").val()==\'\'){\r\n									$(\"input[name=\'alt_name\']\").val(data.alt_name);\r\n								}\r\n								\r\n								if($(\"input[name=\'meta_title\']\").val()==\'\'){\r\n									$(\"input[name=\'meta_title\']\").val(data.metatitle);\r\n								}\r\n								\r\n								if($(\"#full_story\").val()==\'\' && $(\"#short_story\").val()==\'\'){\r\n									$(\"#short_story\").val(data.short_story);\r\n									$(\"#full_story\").val(data.full_story);\r\n									\r\n									$(\"#short_story\").css({\"width\":\"100%\",\"display\":\"block\"});\r\n									$(\"#full_story\").css({\"width\":\"100%\",\"display\":\"block\"});\r\n									\r\n									$(\".mce-tinymce\").hide();\r\n									$(\".fr-box\").hide();\r\n								}\r\n								\r\n                              	if(data.cats){\r\n									\r\n									if($(\"#category\").val()){\r\n										$(\"#category\").val().forEach(function(elem) {\r\n											if(!data.cats.includes(elem)) data.cats.push(elem);\r\n										});\r\n									}\r\n									\r\n									$(\"#category\").val(data.cats);\r\n									$(\".chosen-choices\").hide();\r\n									$(\"#category\").css({\"width\":\"100%\",\"max-width\":\"550px\",\"display\":\"block\",\"height\":\"180px\",\"border\":\"1px solid #ddd\"});\r\n                                }\r\n								\r\n								$.each(data.xfields, function(key, val) {\r\n									\r\n									if($(\'#xf_\'+key).length > 0){\r\n										$(\'#xf_\'+key).val(val);\r\n										\r\n										if($(\'#xf_\'+key+\'-tokenfield\').length > 0){\r\n											$(\'#xf_\'+key).tokenfield(\'setTokens\', val+\'\');\r\n										}\r\n									}\r\n									else if(!$(\"input:checkbox[name=\'xfield[\"+key+\"]\']\").prop(\'checked\') && val==1){\r\n										$(\"input:checkbox[name=\'xfield[\"+key+\"]\']\").click();\r\n										$(\"input:checkbox[name=\'xfield[\"+key+\"]\']\").prop(\'checked\', true);\r\n									}\r\n								});\r\n									\r\n								if(data.response && data.response.xfvalue){\r\n									\r\n									var returnbox = data.response.returnbox;\r\n									var returnval = data.response.xfvalue;\r\n\r\n									returnbox = returnbox.replace(/&lt;/g, \"<\");\r\n									returnbox = returnbox.replace(/&gt;/g, \">\");\r\n									returnbox = returnbox.replace(/&amp;/g, \"&\");\r\n\r\n									$(\'#uploadedfile_<?=$poster_name;?>\').html( returnbox );\r\n									$(\'#xf_<?=$poster_name;?>\').val(returnval);\r\n\r\n									$(\'#xfupload_<?=$poster_name;?> .qq-upload-button, #xfupload_<?=$poster_name;?> .qq-upload-button input\').attr(\"disabled\",\"disabled\");\r\n								}\r\n							}\r\n						}\r\n					}, \"json\").fail(function(){\r\n						HideLoading(\'\');\r\n						alert(\'Ошибка получения ответа от базона\');\r\n					});\r\n			}\r\n		<?endif;?>\r\n		return false;\r\n	});\r\n});\r\n</script>\r\n<?', 1, 0, 0, 1, '', '=='),
(183, 12, 'engine/inc/editnews.php', 'after', '</i>{$lang[\'btn_preview\']}</button>', '<a id=\"auto_bazon\" class=\"btn btn-sm btn-raised position-left\" style=\"margin-top:5px; background-color:#2a96b5; border-color:#2a96b5; color:#fff;\"><i class=\"fa fa-leaf position-left\"></i>Заполнить из BAZON</a>', 1, 0, 0, 1, '', '=='),
(184, 12, 'engine/inc/editnews.php', 'before', 'echofooter();', '$config_file = ENGINE_DIR.\'/data/bazon.config.php\';\r\n$cat_config_file = ENGINE_DIR.\'/data/bazon.cat.config.php\';\r\n\r\nif(file_exists($config_file)) require_once $config_file;\r\nif(file_exists($cat_config_file)) require_once $cat_config_file;\r\n\r\n$bazon_not_configured = (empty($bazon_config[\'kinopoisk_id\']) or empty($bazon_config[\'token\'])) ? true : false;\r\n$poster_name = (!empty($bazon_config[\'poster\'])) ? $bazon_config[\'poster\'] : \'\';\r\n?>\r\n					\r\n<script>\r\n$(function() {\r\n	$(\'#auto_bazon\').click(function() {\r\n		<?if($bazon_not_configured):?>\r\n			alert(\'Модуль BAZON не настроен\');\r\n		<?else:?>\r\n			var kinopoisk_id = $(\"#xf_<?=$bazon_config[\'kinopoisk_id\'];?>\").val();\r\n			\r\n			if(kinopoisk_id==\'\') alert(\"Не заполнен <?=$bazon_config[\'kinopoisk_id\'];?>\");\r\n			else {\r\n				ShowLoading(\'\');\r\n				\r\n				$.post(\"engine/ajax/controller.php?mod=bazon_add&user_hash=<?=$dle_login_hash;?>\", {kinopoisk_id: kinopoisk_id, news_id: <?=$news_id;?>},\r\n					function(data){\r\n						HideLoading(\'\');\r\n						\r\n						if (data) {\r\n							if (data.error) {\r\n								alert(data.error);\r\n							}\r\n							else {\r\n								if($(\"#title\").val()==\'\'){\r\n									$(\"#title\").val(data.title);\r\n								}\r\n								\r\n								if($(\"input[name=\'alt_name\']\").val()==\'\'){\r\n									$(\"input[name=\'alt_name\']\").val(data.alt_name);\r\n								}\r\n								\r\n								if($(\"input[name=\'meta_title\']\").val()==\'\'){\r\n									$(\"input[name=\'meta_title\']\").val(data.metatitle);\r\n								}\r\n								\r\n								if($(\"#full_story\").val()==\'\' && $(\"#short_story\").val()==\'\'){\r\n									$(\"#short_story\").val(data.short_story);\r\n									$(\"#full_story\").val(data.full_story);\r\n									\r\n									$(\"#short_story\").css({\"width\":\"100%\",\"display\":\"block\"});\r\n									$(\"#full_story\").css({\"width\":\"100%\",\"display\":\"block\"});\r\n									\r\n									$(\".mce-tinymce\").hide();\r\n									$(\".fr-box\").hide();\r\n								}\r\n								\r\n                              	if(data.cats){\r\n									\r\n									if($(\"#category\").val()){\r\n										$(\"#category\").val().forEach(function(elem) {\r\n											if(!data.cats.includes(elem)) data.cats.push(elem);\r\n										});\r\n									}\r\n									\r\n									$(\"#category\").val(data.cats);\r\n									$(\".chosen-choices\").hide();\r\n									$(\"#category\").css({\"width\":\"100%\",\"max-width\":\"550px\",\"display\":\"block\",\"height\":\"180px\",\"border\":\"1px solid #ddd\"});\r\n                                }\r\n								\r\n								$.each(data.xfields, function(key, val) {\r\n									\r\n									if($(\'#xf_\'+key).length > 0){\r\n										$(\'#xf_\'+key).val(val);\r\n										\r\n										if($(\'#xf_\'+key+\'-tokenfield\').length > 0){\r\n											$(\'#xf_\'+key).tokenfield(\'setTokens\', val+\'\');\r\n										}\r\n									}\r\n									else if(!$(\"input:checkbox[name=\'xfield[\"+key+\"]\']\").prop(\'checked\') && val==1){\r\n										$(\"input:checkbox[name=\'xfield[\"+key+\"]\']\").click();\r\n										$(\"input:checkbox[name=\'xfield[\"+key+\"]\']\").prop(\'checked\', true);\r\n									}\r\n								});\r\n								\r\n								if(data.response && data.response.xfvalue){\r\n									\r\n									var returnbox = data.response.returnbox;\r\n									var returnval = data.response.xfvalue;\r\n\r\n									returnbox = returnbox.replace(/&lt;/g, \"<\");\r\n									returnbox = returnbox.replace(/&gt;/g, \">\");\r\n									returnbox = returnbox.replace(/&amp;/g, \"&\");\r\n\r\n									$(\'#uploadedfile_<?=$poster_name;?>\').html(returnbox);\r\n									$(\'#xf_<?=$poster_name;?>\').val(returnval);\r\n\r\n									$(\'#xfupload_<?=$poster_name;?> .qq-upload-button, #xfupload_<?=$poster_name;?> .qq-upload-button input\').attr(\"disabled\",\"disabled\");\r\n								}\r\n							}\r\n						}\r\n					}, \"json\").fail(function(){\r\n						HideLoading(\'\');\r\n						alert(\'Ошибка получения ответа от базона\');\r\n					});\r\n			}\r\n		<?endif;?>\r\n		return false;\r\n	});\r\n});\r\n</script>\r\n<?', 1, 0, 0, 1, '', '=='),
(185, 14, 'engine/inc/editnews.php', 'before', 'echo <<<HTML\r\n							  </div>\r\n							</div>\r\n{$output}', '\r\n                if (file_exists(ENGINE_DIR . \'/inc/CCDN/button.php\')) { $output .= include ENGINE_DIR . \'/inc/CCDN/button.php\';}', 1, 0, 0, 1, '', '=='),
(186, 14, 'engine/inc/addnews.php', 'before', 'echo <<<HTML\r\n							  </div>\r\n							</div>\r\n{$output}', '\r\n                if (file_exists(ENGINE_DIR . \'/inc/CCDN/button.php\')) { $output .= include ENGINE_DIR . \'/inc/CCDN/button.php\';}', 1, 0, 0, 1, '', '=='),
(213, 16, 'engine/modules/show.full.php', 'after', '$tpl->set( \'{full-story}\', $row[\'full_story\'] );', '$xfieldsdata = xfieldsdataload( $row[\'xfields\'] );\n$torInfo = <<<JS\n<div id=\"torrent_info\"></div>\n<div id=\"torrent_loading\" align=\"center\"><img src=\"engine/skins/images/loading.gif\">\n<br><b>Поиск торрент раздач, пожалуйста подождите!</b></div>\nJS;\n$tpl->set( \'{torrents}\', $torInfo );', 1, 0, 0, 1, '', '');
INSERT INTO `dle_plugins_files` (`id`, `plugin_id`, `file`, `action`, `searchcode`, `replacecode`, `active`, `searchcount`, `replacecount`, `filedisable`, `filedleversion`, `fileversioncompare`) VALUES
(214, 9, 'engine/ajax/alloha.php', 'create', '', '<?php\r\n\r\nif(!defined(\'DATALIFEENGINE\')) {\r\n    header( \"HTTP/1.1 403 Forbidden\" );\r\n    header ( \'Location: ../../\' );\r\n    die( \"Hacking attempt!\" );\r\n}\r\n\r\nini_set(\"memory_limit\",\"256M\");\r\nini_set(\'max_execution_time\',200);\r\nignore_user_abort(true);\r\nset_time_limit(200);\r\nsession_write_close();\r\n\r\nif (version_compare(\'15\', $config[\'version_id\'], \'<=\')) {\r\n    define(\'DLE15\', true);\r\n}\r\n\r\n\r\nif (defined(\'DLE15\')) {\r\n    include_once ENGINE_DIR . \'/classes/composer/vendor/autoload.php\';\r\n}\r\n\r\nelse {\r\n    include_once ENGINE_DIR . \'/classes/thumb.class.php\';\r\n}\r\n\r\nrequire_once DLEPlugins::Check(ENGINE_DIR . \'/modules/alloha.func.php\');\r\n\r\n\r\n\r\n$config_mod = unserialize( file_get_contents( ENGINE_DIR . \'/data/\' . $mod . \'.config\' ) );\r\nif ( !$config_mod ) $config_mod = array(); \r\n\r\n\r\n$_TIME = time();\r\n\r\n$secret_key = $config_mod[\'secret_key\'];\r\n\r\n\r\nif (!$secret_key) {\r\n    die(\'secret key is required\');\r\n}\r\n\r\nif ($_GET[\'secret_key\'] != $secret_key) {\r\n    die(\'bad secret key\');\r\n}\r\n\r\ncheck_license_alloha();\r\n\r\nif ( isset($_GET[\'type\']) ) {\r\n\r\n    $url = \'\';\r\n    $ex_time = time()-2*24*3600;\r\n    $db->query( \"UPDATE \" . PREFIX . \"_alloha SET status=1, err_time=\'0\' WHERE (err_time>\'0\' AND err_time<\'$ex_time\')\" );\r\n\r\n    $order = $config_mod[\'first_new\'] ? \'&order=year\' : \'\'; \r\n\r\n    if(($config_mod[\'add_film\'] or $config_mod[\'add_multfilm\']) && $_GET[\'type\']==\'film\'){\r\n        $url = \'https://api.apbugall.org/?token=\'.$config_mod[\'api_token\'].\'&list=movie\';\r\n    } \r\n    elseif(($config_mod[\'add_serial\'] or $config_mod[\'add_multserial\']) && $_GET[\'type\']==\'serial\'){\r\n        $url = \'https://api.apbugall.org/?token=\'.$config_mod[\'api_token\'].\'&list=serial\';\r\n    }\r\n    elseif($config_mod[\'add_anime\'] && $_GET[\'type\']==\'anime\'){\r\n        $url = \'https://api.apbugall.org/?token=\'.$config_mod[\'api_token\'].\'&list=anime\';\r\n    }\r\n    elseif($config_mod[\'add_animeserial\'] && $_GET[\'type\']==\'animeserial\'){\r\n        $url = \'https://api.apbugall.org/?token=\'.$config_mod[\'api_token\'].\'&list=anime-serial\';\r\n    }\r\n    elseif($config_mod[\'add_tvshow\'] && $_GET[\'type\']==\'tvshow\'){\r\n        $url = \'https://api.apbugall.org/?token=\'.$config_mod[\'api_token\'].\'&list=tv-show\';\r\n    }     \r\n  elseif($config_mod[\'add_trailer\'] && $_GET[\'type\']==\'trailer\'){\r\n        $url = \'https://api.apbugall.org/?token=\'.$config_mod[\'api_token\'].\'&list&trailer\';\r\n    } \r\n  \r\n      if(!$url) die(\'choise video type. film serial mult or anime\');\r\n\r\n  if($_GET[\'type\']!=\'trailer\'){\r\n    \r\n    if ($config_mod[\'rating_kp\']) {\r\n        $url .= \'&rating_kp=\'.$config_mod[\'rating_kp\'];\r\n    }\r\n\r\n    if ($config_mod[\'rating_imdb\']) {\r\n        $url .= \'&rating_imdb=\'.$config_mod[\'rating_imdb\'];\r\n    }\r\n\r\n    if ($config_mod[\'allow_country\']) {\r\n        $url .= \'&country=\'.urlencode(implode(\',\', $config_mod[\'allow_country\']));\r\n    }\r\n\r\n    if ($config_mod[\'disallow_country\']) {\r\n        $url .= \'&not_country=\'.urlencode(implode(\',\', $config_mod[\'disallow_country\']));\r\n    }\r\n\r\n    if ($config_mod[\'allow_year\']) {\r\n        $url .= \'&year=\'.implode(\',\', $config_mod[\'allow_year\']);\r\n    }\r\n\r\n    if ($config_mod[\'disallow_year\']) {\r\n        $url .= \'&not_year=\'.implode(\',\', $config_mod[\'disallow_year\']);\r\n    }\r\n  } else {\r\n	if ($config_mod[\'allow_country\']) {\r\n        $url .= \'&country=\'.urlencode(implode(\',\', $config_mod[\'allow_country\']));\r\n    }\r\n\r\n    if ($config_mod[\'disallow_country\']) {\r\n        $url .= \'&not_country=\'.urlencode(implode(\',\', $config_mod[\'disallow_country\']));\r\n    }\r\n\r\n    if ($config_mod[\'allow_year\']) {\r\n        $url .= \'&year=\'.implode(\',\', $config_mod[\'allow_year\']);\r\n    }\r\n\r\n    if ($config_mod[\'disallow_year\']) {\r\n        $url .= \'&not_year=\'.implode(\',\', $config_mod[\'disallow_year\']);\r\n    }\r\n  }\r\n\r\n\r\n    include DLEPlugins::Check(ENGINE_DIR . \'/classes/alloha.php\');\r\n    $alloha = new Alloha($_GET[\'type\'], $db);\r\n    if($_GET[\'type\']!=\'trailer\'){\r\n      $alloha->start($url.$order);\r\n    }\r\n  else\r\n  {\r\n       $alloha->start($url);\r\n  }\r\n\r\n    die(\'Insert and update data\');\r\n}\r\n\r\n\r\n\r\n\r\nif (isset($_GET[\'last\'])) {\r\n\r\n    $types = [\'serial\', \'movie\', \'anime\', \'anime-serial\', \'tv-show\', \'trailer\'];\r\n\r\n    $kp_ids = [];\r\n\r\n    $xf_config = array_map(function($el) {\r\n        return str_replace([\'{\', \'}\'], \'\', $el);\r\n    }, $config_mod[\'xfields\']);\r\n\r\n    $xf_config = array_flip($xf_config);\r\n\r\n    foreach ($types as $type) {\r\n\r\n        for ($page=1; $page < 3; $page++) { \r\n\r\n           usleep(300000);\r\n           \r\n            $response = request(\"https://api.apbugall.org/?token={$config_mod[\'api_token\']}&last=$type&order=date&page=$page\");\r\n\r\n            $response = json_decode($response, true);\r\n// print_r($response);die();\r\n            if (!$response) {\r\n                continue;\r\n            }\r\n\r\n            foreach ($response[\'data\'] as $result) {\r\n\r\n                $kinopoisk_id = $result[\'id_kp\'] ? intval($result[\'id_kp\']) : 1;\r\n\r\n                if (isset($kp_ids[$kinopoisk_id])) {\r\n                    continue;\r\n                }\r\n\r\n                $kp_ids[$kinopoisk_id] = 1;\r\n                    \r\n\r\n                $post_row = $db->super_query( \"SELECT id, autor, title, category, xfields FROM \" . PREFIX . \"_post WHERE xfields REGEXP \'kinopoisk_id[|]{$kinopoisk_id}([|]|$)\'\" );\r\n\r\n                if (!$post_row) {\r\n                    $token_movie = $result[\'token_movie\'];\r\n                    $post_row = $db->super_query( \"SELECT id, title, category, xfields FROM \" . PREFIX . \"_post WHERE xfields LIKE \'%{$token_movie}%\'\" );\r\n                } \r\n\r\n\r\n                if (!$post_row) {\r\n                    echo \"{$result[\'name\']} --- {$result[\'original_name\']} --- kp_id {$kinopoisk_id}\";\r\n                    echo \' --- <span style=\"color:red;\"\'.\">not found</span><br>\\n\";\r\n                    continue;\r\n                }\r\n\r\n                $cat_arr = explode(\',\', $post_row[\'category\']);\r\n              \r\n                if ($config_mod[\'trailer_cat\'] && in_array($config_mod[\'trailer_cat\'], $cat_arr)) {\r\n                    $category_upd = array_diff($cat_arr, [$config_mod[\'trailer_cat\']]);\r\n                    $category_upd = \'category=\"\'.implode(\',\', $category_upd).\'\",\';\r\n                    $db->query( \"DELETE FROM \" . PREFIX . \"_post_extras_cats WHERE news_id=\'{$post_row[\'id\']}\' AND cat_id=\'{$config_mod[\'trailer_cat\']}\'\" );\r\n                }\r\n                else {\r\n                    $category_upd = \'\';   \r\n                }\r\n\r\n\r\n                if ($config_mod[\'exclude_news\']) {\r\n                    $exclude_news = explode(\"\\n\", $config_mod[\'exclude_news\']);\r\n                    if (in_array($post_row[\'id\'], $exclude_news)) {\r\n                        continue;\r\n                    }\r\n                }\r\n\r\n\r\n                echo \"{$result[\'name\']} --- {$result[\'original_name\']} --- kp_id {$kinopoisk_id} $type\";\r\n\r\n                $news_id = $post_row[\'id\'];\r\n\r\n\r\n                $xfields = xfieldsdataload( $post_row[\'xfields\'] );\r\n\r\n                $update_news = false;\r\n                $new_date = false;\r\n                $rewrite_meta_resone = false;\r\n\r\n                $es_result = [];\r\n\r\n                $last_season = isset($xfields[\'last_season\']) ? $xfields[\'last_season\'] : \'\';\r\n                $last_episode = isset($xfields[\'last_episode\']) ? $xfields[\'last_episode\'] : \'\';\r\n\r\n                if ($xfields[$xf_config[\'quality\']]!=$result[\'quality\']) {\r\n                    $update_news = true;\r\n                    $xfields[$xf_config[\'quality\']]=$result[\'quality\'];\r\n                    $config_mod[\'update_if_quality\'] && ($new_date = true);\r\n                }\r\n\r\n\r\n                if ($xfields[$xf_config[\'trailer\']]!=$result[\'iframe_trailer\']) {\r\n                    $update_news = true;\r\n                    $xfields[$xf_config[\'trailer\']] = $result[\'iframe_trailer\'];\r\n                }\r\n\r\n                if ($xfields[$xf_config[\'instream_ads\']]!=$result[\'instream_ads\']) {\r\n                    $update_news = true;\r\n                    $xfields[$xf_config[\'instream_ads\']] = $result[\'instream_ads\'];\r\n                }\r\n\r\n\r\n\r\n                if (in_array($type, [\'serial\', \'anime-serial\', \'tv-show\'])) {\r\n\r\n                    $xfields[$xf_config[\'episode_plus\']] = $es_result[\'episode_plus\'] = $result[\'episode\']+intval($config_mod[\'plus\']);\r\n                    $xfields[$xf_config[\'seasone_plus\']] = $es_result[\'seasone_plus\'] = $result[\'season\']+intval($config_mod[\'plus\']);\r\n\r\n                    $xfields[$xf_config[\'episode_type_1\']] = $es_result[\'episode_type_1\'] = formatize_alloha($result[\'episode\'], 4);\r\n                    $xfields[$xf_config[\'episode_type_2\']] = $es_result[\'episode_type_2\'] = formatize_alloha($result[\'episode\'], 5);\r\n                    $xfields[$xf_config[\'episode_type_3\']] = $es_result[\'episode_type_3\'] = formatize_alloha($result[\'episode\'], 6);\r\n                    $xfields[$xf_config[\'episode_type_4\']] = $es_result[\'episode_type_4\'] = formatize_alloha($result[\'episode\'], 7);\r\n                    $xfields[$xf_config[\'episode_type_5\']] = $es_result[\'episode_type_5\'] = formatize_alloha($result[\'episode\'], 8);\r\n\r\n                    $xfields[$xf_config[\'season_type_1\']] = $es_result[\'season_type_1\'] = formatize_alloha($result[\'season\'], 1);\r\n                    $xfields[$xf_config[\'season_type_2\']] = $es_result[\'season_type_2\'] = formatize_alloha($result[\'season\'], 2);\r\n                    $xfields[$xf_config[\'season_type_3\']] = $es_result[\'season_type_3\'] = formatize_alloha($result[\'season\'], 3);\r\n\r\n                    if (($result[\'episode\']>$last_episode && $result[\'season\']==$last_season) or $result[\'season\']>$last_season) {\r\n                        $update_news = $rewrite_meta_resone = true;\r\n                        $xfields[\'last_episode\']=$result[\'episode\'];\r\n                        $xfields[\'last_season\']=$result[\'season\'];\r\n\r\n                        ($config_mod[\'update_if_seasone\'] or $config_mod[\'update_if_quality\']) && ($new_date = true);\r\n\r\n                    }\r\n\r\n\r\n                    if ($xfields[$xf_config[\'last_translate\']] != $all_translate[$result[\'translation\']]) {\r\n                        $update_news = true;\r\n                        $xfields[$xf_config[\'last_translate\']] = $all_translate[$result[\'translation\']];\r\n                        ($config_mod[\'update_if_change_translate\']) && ($new_date = true);\r\n                    }\r\n\r\n\r\n                    if ($result[\'episode\'] > $xfields[$xf_config[\'episode_count\']]) {\r\n                        $update_news = true;\r\n                        $xfields[$xf_config[\'episode_count\']] = $result[\'episode\'];\r\n                    }\r\n\r\n\r\n                    \r\n\r\n                    \r\n                }\r\n\r\n\r\n                if ($update_news) {\r\n\r\n                    $xfields[$xf_config[\'iframe_url\']]=$result[\'iframe\'];\r\n\r\n                    $xfields = array_diff($xfields, [\'\']);\r\n\r\n                    $date = \'\';\r\n\r\n                    if ($new_date) {\r\n                        $date = date(\'Y-m-d H:i:s\', $_TIME);\r\n                        $date = \"date=\'$date\',\";\r\n                    }\r\n\r\n\r\n                    $compile = template($config_mod, [\r\n                        \'last_season\' => $xfields[$xf_config[\'last_season\']],\r\n                        \'last_episode\' => $xfields[$xf_config[\'last_episode\']],\r\n                        \'title_ru\' => $result[\'name\'],\r\n                        \'title_en\' => $result[\'original_name\'],\r\n                        \'year\' => $result[\'year\'],\r\n                        \'video_type\' => mb_strtolower($result[\'category\'], \'utf-8\'),\r\n\r\n                        \'episode_plus\' => $es_result[\'episode_plus\'],\r\n                        \'seasone_plus\' => $es_result[\'seasone_plus\'],\r\n                        \'episode_type_1\' => $es_result[\'episode_type_1\'],\r\n                        \'episode_type_2\' => $es_result[\'episode_type_2\'],\r\n                        \'episode_type_3\' => $es_result[\'episode_type_3\'],\r\n                        \'episode_type_4\' => $es_result[\'episode_type_4\'],\r\n                        \'episode_type_5\' => $es_result[\'episode_type_5\'],\r\n                        \'season_type_1\' => $es_result[\'season_type_1\'],\r\n                        \'season_type_2\' => $es_result[\'season_type_2\'],\r\n                        \'season_type_3\' => $es_result[\'season_type_3\'],\r\n                    ]); \r\n\r\n                    $es_type = [\'episode_plus\', \'seasone_plus\', \'episode_type_1\', \'episode_type_2\', \'episode_type_3\', \'episode_type_4\', \'episode_type_5\', \'season_type_1\', \'season_type_2\', \'season_type_3\'];\r\n\r\n                   \r\n\r\n                    foreach ($es_type as $key => $value) {\r\n                        if (!isset($xf_config[$value])) {\r\n                            unset($xfields[$xf_config[$value]]);\r\n                        }\r\n                        if (!in_array($type, [\'serial\', \'anime-serial\', \'tv-show\'])){\r\n                            $es_result[$value] = \'\';\r\n                        }\r\n                    }\r\n\r\n                    \r\n\r\n                    if (!empty($config_mod[\'metatitle\'])) {\r\n                        $compile[\'metatitle\'] = preg_replace(\'/\\s{2,}/\', \' \',  $compile[\'metatitle\']);\r\n                        $metatitle = \", metatitle=\'\".$db->safesql($compile[\'metatitle\']).\"\'\";\r\n                    } else {\r\n                        $metatitle = \'\';\r\n                    }\r\n\r\n\r\n                    if ($news_id && $result[\'season\']) {\r\n                        alloha_mass_series($news_id, $result, true);\r\n                    }\r\n                    \r\n\r\n                    $xfields = $db->safesql(xfieldsdatasave($xfields));\r\n\r\n                    $db->query( \"UPDATE \" . PREFIX . \"_post SET $category_upd $date xfields=\'$xfields\' $metatitle WHERE id=\'{$post_row[\'id\']}\'\" );\r\n\r\n\r\n                    if ($result[\'episode\'] and $rewrite_meta_resone) {\r\n                        $reason = \"{$result[\'season\']} сезон {$result[\'episode\']} $series серия - \".date(\'d.m.Y\');\r\n                    } else {\r\n                        $reason = $result[\'quality\'];\r\n                    }\r\n                    \r\n\r\n\r\n                    $db->query(\"UPDATE \" . PREFIX . \"_post_extras SET editdate = \'$_TIME\', reason=\'$reason\' WHERE news_id = \'{$post_row[\'id\']}\'\");\r\n\r\n                    echo \' --- <span style=\"color:green;\"\'.\">updated</span><br>\\n\";\r\n\r\n\r\n                }\r\n\r\n                else {\r\n                    echo \' --- <span style=\"color:red;\"\'.\">no updated</span><br>\\n\";\r\n                }\r\n\r\n            \r\n                sleep(2); // tut\r\n\r\n            }\r\n\r\n        }\r\n\r\n\r\n    }\r\n\r\nexit();\r\n\r\n}\r\n\r\n\r\n\r\n$and = [];\r\nif($config_mod[\'add_film\'] or $config_mod[\'add_multfilm\']) \r\n    $and[] = \"\'film\'\";\r\nif($config_mod[\'add_serial\'] or $config_mod[\'add_multserial\'])       \r\n    $and[] = \"\'serial\'\";\r\nif($config_mod[\'add_anime\'])        \r\n    $and[] = \"\'anime\'\";\r\nif($config_mod[\'add_animeserial\'])  \r\n    $and[] = \"\'animeserial\'\";\r\nif($config_mod[\'add_tvshow\'])       \r\n    $and[] = \"\'tvshow\'\";\r\nif($config_mod[\'add_trailer\'])       \r\n    $and[] = \"\'trailer\'\";\r\n\r\nif(count($and)) $and = \"AND type IN(\".implode(\", \", $and).\")\";\r\n\r\nif($config_mod[\'first_new\']){\r\n    $alloha = $db->super_query( \"SELECT * FROM \" . PREFIX . \"_alloha WHERE status>0 $and ORDER BY `status` ASC, `year` DESC\" );\r\n}\r\nelse {\r\n    $alloha = $db->super_query( \"SELECT * FROM \" . PREFIX . \"_alloha WHERE status>0 $and ORDER BY `status` ASC\" );\r\n}\r\n\r\n\r\n$post_row = $db->super_query( \"SELECT id, title, xfields FROM \" . PREFIX . \"_post WHERE xfields REGEXP \'kinopoisk_id[|]{$alloha[\'kp_id\']}([|]|$)\'\" );\r\n\r\n\r\nif ($post_row) {\r\n\r\n    $db->query( \"UPDATE \" . PREFIX . \"_alloha SET status=0, news_id=\'{$post_row[\'id\']}\' WHERE kp_id=\'{$alloha[\'kp_id\']}\'\" );\r\n    die(\"news exists --- {$post_row[\'id\']} --- {$post_row[\'title\']}\");\r\n\r\n    \r\n} else {\r\n    $alloha[\'news_id\'] = 0;\r\n}\r\n\r\n\r\nif($config_mod[\'blacklist\']){\r\n    $blacklist = explode(\"\\n\", $config_mod[\'blacklist\']);\r\n    if(in_array($alloha[\'kp_id\'], $blacklist)) {\r\n        $db->query( \"UPDATE \" . PREFIX . \"_alloha SET status=0, err_time=\'$_TIME\' WHERE kp_id=\'{$alloha[\'kp_id\']}\'\" );\r\n        die(\"in blacklist --- kinopoisk_id --- {$alloha[\'kp_id\']}\");    \r\n    }\r\n}\r\n \r\n\r\n$res = request(\'https://api.apbugall.org/?token=\'.$config_mod[\'api_token\'].\'&kp=\'.$alloha[\'kp_id\']);\r\n//$res = request(\'https://api.apbugall.org/?token=\'.$config_mod[\'api_token\'].\'&kp=880717\');\r\necho \'https://api.apbugall.org/?token=\'.$config_mod[\'api_token\'].\'&kp=\'.$alloha[\'kp_id\'];\r\n\r\n$res = json_decode($res, true);\r\n\r\n$res = $result = $res[\'data\'];\r\nprint_r($res);\r\nif ($res[\'status\']==\'error\') {\r\n    $db->query( \"UPDATE \" . PREFIX . \"_alloha SET status=0, err_time=\'$_TIME\' WHERE kp_id=\'{$alloha[\'kp_id\']}\'\" );\r\n    die($res[\'error_info\']);\r\n}\r\n\r\n\r\nif ($config_mod[\'not_add_if_no_poster\'] AND empty($result[\'poster\'])) {\r\n    $db->query( \"UPDATE \" . PREFIX . \"_alloha SET status=\'0\' WHERE id=\'{$alloha[\'id\']}\'\" );\r\n    die(\"the news has no poster\");\r\n}\r\n\r\n\r\nif ($config_mod[\'not_add_if_no_descr\'] AND empty($result[\'description\'])) {\r\n    $db->query( \"UPDATE \" . PREFIX . \"_alloha SET status=\'0\' WHERE id=\'{$alloha[\'id\']}\'\" );\r\n    die(\"the news has no description\");\r\n}\r\n\r\n\r\n\r\n$res[\'country\'] = str_replace(\', \', \',\', $res[\'country\']);  \r\n$res[\'genre\'] = str_replace(\', \', \',\', $res[\'genre\']);  \r\n\r\n\r\nif(!$config_mod[\'enable_ads\'] && $res[\'ads\']==\'1\'){\r\n    $db->query( \"UPDATE \" . PREFIX . \"_alloha SET status=0, err_time=\'$_TIME\' WHERE kp_id=\'{$alloha[\'kp_id\']}\'\" );\r\n    die(\'not allowed. ads\');\r\n}\r\n\r\nif( ($premiere = strtotime($res[\'premiere\']))!==false && $res[\'premiere\'] ){\r\n    $res[\'premiere\'] = date(\'j\', $premiere).\' \'.$langdate[date(\'F\', $premiere)].\' \'.date(\'Y\', $premiere);\r\n}\r\nif( ($premiere_ru = strtotime($res[\'premiere_ru\']))!==false && $res[\'premiere_ru\'] ){\r\n    $res[\'premiere_ru\'] = date(\'j\', $premiere_ru).\' \'.$langdate[date(\'F\', $premiere_ru)].\' \'.date(\'Y\', $premiere_ru);\r\n}\r\n\r\n$request = [];\r\n\r\n$is_serial = false;\r\n\r\nif($res[\'seasons_count\']){\r\n\r\n    $request[\'last_season\'] = $res[\'seasons_count\'];\r\n    $request[\'last_episode\'] = $res[\'last_episode\'];\r\n\r\n    $episodes = array_shift($res[\'seasons\']);\r\n    $episodes = count($episodes[\'episodes\']);\r\n    $request[\'episode_count\'] = $episodes;\r\n\r\n    $request[\'last_translate\'] = trim( @array_shift(explode(\',\', $res[\'translation\'])) );\r\n\r\n    $is_serial = true;\r\n}\r\n\r\n$ex_genres = array();\r\n\r\nif ($res[\'category\']==\'2\' && mb_stripos($res[\'genre\'], \'мультфильм\')===false) {\r\n    $ex_genres[] = \"сериал\"; $request[\'video_type\'] = \'сериал\';\r\n    if (!$config_mod[\'add_serial\']) {\r\n        $db->query( \"UPDATE \" . PREFIX . \"_alloha SET status=0 WHERE kp_id=\'{$alloha[\'kp_id\']}\'\" );\r\n        die(\'not allowed. serial\');\r\n    }\r\n}\r\n\r\nif($alloha[\'type\']==\"trailer\")\r\n  $ex_genres[] = \"трейлер\";\r\n\r\nif ($res[\'category\']==\'1\' && mb_stripos($res[\'genre\'], \'мультфильм\')===false) {\r\n    $ex_genres[] = \"фильм\"; $request[\'video_type\'] = \'фильм\';\r\n    if (!$config_mod[\'add_film\']) {\r\n        $db->query( \"UPDATE \" . PREFIX . \"_alloha SET status=0 WHERE kp_id=\'{$alloha[\'kp_id\']}\'\" );\r\n        die(\'not allowed. film\');\r\n    }\r\n}\r\n\r\nif ($res[\'category\']==\'5\') {\r\n    $ex_genres[] = \"тв шоу\"; $request[\'video_type\'] = \'тв шоу\';\r\n}\r\n\r\nif (mb_stripos($res[\'genre\'], \'мультфильм\')!==false) {\r\n    if ($is_serial) {\r\n        $request[\'video_type\'] = \"мультсериал\";\r\n        $ex_genres[] = \"мультсериал\";\r\n\r\n        if (!$config_mod[\'add_multserial\'] && !$config_mod[\'add_animeserial\']) {\r\n            $db->query( \"UPDATE \" . PREFIX . \"_alloha SET status=0 WHERE kp_id=\'{$alloha[\'kp_id\']}\'\" );\r\n            die(\'not allowed. multserial\');\r\n        }\r\n\r\n    } else {\r\n        $request[\'video_type\'] = \'мультфильм\';\r\n        $ex_genres[] = \"мультфильм\";\r\n\r\n        if (!$config_mod[\'add_multfilm\'] && !$config_mod[\'add_anime\']) {\r\n            $db->query( \"UPDATE \" . PREFIX . \"_alloha SET status=0 WHERE kp_id=\'{$alloha[\'kp_id\']}\'\" );\r\n            die(\'not allowed. multfilm\');\r\n        }\r\n\r\n    }\r\n}\r\n\r\nif (mb_stripos($res[\'country\'], \'россия\')===false && mb_stripos($res[\'country\'], \'ссср\')===false) {\r\n    $ex_genres[] = \"зарубежный\";\r\n}\r\n\r\nif ($res[\'category\']==\'4\') {\r\n    $ex_genres[] = \"аниме сериал\"; $request[\'video_type\'] = \'аниме сериал\';\r\n}\r\n\r\nif ($alloha[\'type\']==\'anime\') {\r\n    $ex_genres[] = \"аниме\"; $request[\'video_type\'] = \'аниме\';\r\n}\r\n\r\n\r\n$cats = array();\r\n$genres = fixGenres(explode(\',\', $res[\'genre\']));\r\n\r\n\r\n$inter = array_merge($ex_genres, $genres, explode(\',\', $res[\'country\']), array($res[\'year\']));\r\n\r\nif ($request[\'video_type\'] == \'мультсериал\') {\r\n    $inter = array_diff($inter, [\'мультфильм\']);\r\n}\r\n\r\nif ($res[\'category\']==\'3\') {\r\n    $inter = array_diff($inter, [\'зарубежный\', \'мультфильм\']);\r\n}\r\n\r\nif ($res[\'category\']==\'4\') {\r\n    $inter = array_diff($inter, [\'зарубежный\', \'мультсериал\', \'мультфильм\', \'аниме\']);\r\n}\r\n\r\n\r\nforeach ($config_mod[\'category\'] as $cat_id => $values) {\r\n    $f = true;\r\n\r\n    foreach ($values as $value) {\r\n        if ( !in_array($value, $inter) ) {\r\n            $f = false;\r\n            break;\r\n        }\r\n    }\r\n\r\n    if ( $f ) $cats[] = $cat_id;\r\n}\r\n\r\n$config_mod[\'category\'] = implode(\",\", $cats);\r\n\r\n\r\nif(!$config_mod[\'category\']) {\r\n    $db->query( \"UPDATE \" . PREFIX . \"_alloha SET status=0, err_time=\'$_TIME\' WHERE kp_id=\'{$alloha[\'kp_id\']}\'\" );\r\n    die(\'not allowed category\');\r\n}\r\n\r\n\r\n\r\nif ($config_mod[\'max_actors\']) {\r\n    $res[\'actors\'] = explode(\',\', $res[\'actors\']);\r\n    $res[\'actors\'] = array_slice($res[\'actors\'], 0, intval($config_mod[\'max_actors\']));\r\n    $res[\'actors\'] = implode(\',\', $res[\'actors\']);\r\n}\r\n\r\nif ($config_mod[\'max_directors\']) {\r\n    $res[\'directors\'] = explode(\',\', $res[\'directors\']);\r\n    $res[\'directors\'] = array_slice($res[\'directors\'], 0, intval($config_mod[\'max_directors\']));\r\n    $res[\'directors\'] = implode(\',\', $res[\'directors\']);\r\n}\r\n\r\n$res[\'genre\'] = preg_replace_callback(\'/,([^,]|\\s+)/u\', function($m){\r\n    return \',\'.(strpos(\' \', $m[1]) ? \' \' : \' \'.$m[1]);\r\n}, $res[\'genre\']);\r\n\r\n$res[\'country\'] = preg_replace_callback(\'/,([^,]|\\s+)/u\', function($m){\r\n    return \',\'.(strpos(\' \', $m[1]) ? \' \' : \' \'.$m[1]);\r\n}, $res[\'country\']);\r\n\r\n$request[\'title_ru\']      = $res[\'name\'];\r\n$request[\'title_en\']      = $res[\'original_name\'];\r\n$request[\'title_alt\']     = $res[\'alternative_name\'];\r\n$request[\'token_movie\']  = $res[\'token_movie\'];\r\n$request[\'year\']          = $res[\'year\'];\r\n$request[\'description\']   = html_entity_decode($res[\'description\'], ENT_HTML5);\r\n$request[\'countries\']     = $res[\'country\'];\r\n$request[\'genres\']        = $res[\'genre\'];\r\n$request[\'actors\']        = $res[\'actors\'];\r\n$request[\'iframe_url\']    = $res[\'iframe\'];\r\n$request[\'quality\']       = $res[\'quality\'];\r\n$request[\'slogan\']        = $res[\'tagline\'];\r\n$request[\'directors\']     = $res[\'directors\'];\r\n$request[\'producer\']      = $res[\'producers\'];\r\n$request[\'translator\']    = $res[\'translation\'];\r\n$request[\'trailer\']       = $res[\'iframe_trailer\'];\r\n\r\n$request[\'premiere_ru\']    = $res[\'premiere_ru\'];\r\n$request[\'premiere_world\'] = $res[\'premiere\'];\r\n\r\n$request[\'rating_kp\']        = $res[\'rating_kp\'];\r\n$request[\'rating_imdb\']      = $res[\'rating_imdb\'];\r\n$request[\'rating_world_art\'] = $res[\'world_art\'];\r\n$request[\'rate_mpaa\']        = $res[\'rating_mpaa\'];\r\n\r\n$request[\'kinopoisk_id\']     = $res[\'id_kp\'];\r\n$request[\'imdb_id\']          = $res[\'id_imdb\'];\r\n$request[\'tmdb_id\']          = $res[\'id_tmdb\'];\r\n$request[\'world_art_id\']     = $res[\'id_world_art\'];\r\n\r\n$request[\'age\']          = $res[\'age_restrictions\'];\r\n$request[\'time\']         = $res[\'time\'];\r\n$request[\'instream_ads\'] = ($res[\'ads\']==\'\') ? \'\' : 1;\r\n\r\nif($request[\'title_en\']==$request[\'title_ru\']) $request[\'title_en\']=\'\';\r\n\r\n\r\nif(!$alloha[\'news_id\']){\r\n    if ($config_mod[\'upload_poster\']) {\r\n        $poster_file = $alloha[\'kp_id\'].\'_\'.time();\r\n        $poster = request($res[\'poster\'], ROOT_DIR . \"/uploads/posts/\" . FOLDER_PREFIX.\'/\' .$poster_file);\r\n        if($poster){\r\n\r\n            if ($config_mod[\'poster_size\']) {\r\n\r\n                $t_seite = intval($config[\'t_seite\']);\r\n                $t_size = $config_mod[\'poster_size\'];\r\n\r\n                $thumb = new thumbnail( $poster );\r\n\r\n                if( $thumb->size_auto( $t_size, $t_seite ) ) {\r\n                                    \r\n                   /*$thumb->jpeg_quality( $config[\'jpeg_quality\'] );\r\n                    \r\n                    $thumb->save( $poster );\r\n                    \r\n                    @chmod( $poster, 0666 );*/\r\n\r\n                    /**\r\n                     * Dle 15\r\n                     */\r\n\r\n                    if (defined(\'DLE15\')) {\r\n                        \r\n                        $newFile = $thumb->save(str_replace(ROOT_DIR.\"/uploads/\" , \'\', $poster));\r\n\r\n                        $poster = ROOT_DIR . \"/uploads/posts/\" . FOLDER_PREFIX . \'/\' . $newFile;\r\n\r\n                    } else {\r\n                        $thumb->jpeg_quality( $config[\'jpeg_quality\'] );\r\n                                            \r\n                        $thumb->save( $poster );\r\n                    }\r\n\r\n                    @chmod( $poster, 0666 );\r\n\r\n                    /**************/\r\n\r\n\r\n                }\r\n\r\n            }\r\n            \r\n            $request[\'poster\'] = str_replace(ROOT_DIR.\'/\' , $config[\'http_home_url\'], $poster);\r\n            $poster = str_replace(ROOT_DIR.\"/uploads/posts/\" , \'\', $poster);\r\n        }\r\n    } else {\r\n        $request[\'poster\'] = $res[\'poster\'];\r\n    }\r\n}\r\nelse {\r\n    foreach ($request as $key => $value) {\r\n        if(!$xfdata[$key]) $xfdata[$key] = $request[$key];\r\n    }\r\n\r\n    $xfdata[\'last_season\'] = $res[\'seasons_count\'];\r\n    $xfdata[\'last_episode\']   = $res[\'last_episode\'];\r\n\r\n    if (empty($xfdata[\'poster\'])) {\r\n        if ($config_mod[\'upload_poster\']) {\r\n            $poster_file = $alloha[\'kp_id\'].\'_\'.time();\r\n            $poster = request($res[\'poster\'], ROOT_DIR . \"/uploads/posts/\" . FOLDER_PREFIX.\'/\' .$poster_file);\r\n            if($poster){\r\n                $t_seite = intval($config[\'t_seite\']);\r\n                $t_size = $config_mod[\'poster_size\'];\r\n\r\n                $thumb = new thumbnail( $poster );\r\n\r\n                if( $thumb->size_auto( $t_size, $t_seite ) ) {\r\n                                    \r\n                   /*$thumb->jpeg_quality( $config[\'jpeg_quality\'] );\r\n                    \r\n                    $thumb->save( $poster );\r\n                    \r\n                    @chmod( $poster, 0666 );*/\r\n\r\n                    /**\r\n                     * Dle 15\r\n                     */\r\n\r\n                    if (defined(\'DLE15\')) {\r\n                        \r\n                        $newFile = $thumb->save(str_replace(ROOT_DIR.\"/uploads/\" , \'\', $poster));\r\n\r\n                        $poster = ROOT_DIR . \"/uploads/posts/\" . FOLDER_PREFIX . \'/\' . $newFile;\r\n\r\n                    } else {\r\n                        $thumb->jpeg_quality( $config[\'jpeg_quality\'] );\r\n                                            \r\n                        $thumb->save( $poster );\r\n                    }\r\n\r\n                    @chmod( $poster, 0666 );\r\n\r\n                    /**************/\r\n                    \r\n                }\r\n                $xfdata[\'poster\'] = str_replace(ROOT_DIR.\'/\' , $config[\'http_home_url\'], $poster);\r\n                $poster = str_replace(ROOT_DIR.\"/uploads/posts/\" , \'\', $poster);\r\n            }\r\n        } else {\r\n            $xfdata[\'poster\'] = $res[\'poster\'];\r\n        }\r\n    }\r\n\r\n    $request = $xfdata;\r\n} \r\n\r\n\r\n\r\n\r\n$request[\'episode_plus\'] = $res[\'last_episode\']+intval($config_mod[\'plus\']);\r\n$request[\'seasone_plus\'] = $res[\'seasons_count\']+intval($config_mod[\'plus\']);\r\n\r\n$request[\'episode_type_1\'] = formatize_alloha($res[\'last_episode\'], 4);\r\n$request[\'episode_type_2\'] = formatize_alloha($res[\'last_episode\'], 5);\r\n$request[\'episode_type_3\'] = formatize_alloha($res[\'last_episode\'], 6);\r\n$request[\'episode_type_4\'] = formatize_alloha($res[\'last_episode\'], 7);\r\n$request[\'episode_type_5\'] = formatize_alloha($res[\'last_episode\'], 8);\r\n\r\n$request[\'season_type_1\'] = formatize_alloha($res[\'seasons_count\'], 1);\r\n$request[\'season_type_2\'] = formatize_alloha($res[\'seasons_count\'], 2);\r\n$request[\'season_type_3\'] = formatize_alloha($res[\'seasons_count\'], 3);\r\n\r\n\r\n$es_type = [\'episode_plus\', \'seasone_plus\', \'episode_type_1\', \'episode_type_2\', \'episode_type_3\', \'episode_type_4\', \'episode_type_5\', \'season_type_1\', \'season_type_2\', \'season_type_3\'];\r\n\r\n\r\n\r\nforeach ($es_type as $key => $value) {\r\n    if (!$is_serial){\r\n        $request[$value] = \'\';\r\n    }\r\n}\r\n\r\n\r\n$compile = template($config_mod, $request);\r\n\r\n$compile[\'metatitle\'] = check_if_alloha($compile[\'metatitle\'], $request);\r\n$compile[\'metatitle\'] = preg_replace(\'/\\s{2,}/\', \' \',  $compile[\'metatitle\']);\r\n\r\n\r\nif($compile[\'category\']==\'\') $compile[\'category\']=0;\r\nif(!$compile[\'tags\']) $compile[\'tags\'] = \'\';\r\n\r\n\r\n$compile[\'xfields\'] = !$alloha[\'news_id\'] ? xfcompile($compile[\'xfields\']) : xfcompile($xfdata);\r\n$compile[\'alt_name\'] = totranslit( stripslashes( $compile[\'alt_name\'] ), true, false );\r\n$compile[\'date\'] = date(\'Y-m-d H:i:s\');\r\n\r\n\r\nif (empty($compile[\'short_story\'])) {\r\n    $compile[\'short_story\'] = \'\';\r\n}\r\n\r\nif (empty($compile[\'full_story\'])) {\r\n    $compile[\'full_story\'] = \'\';\r\n}\r\n\r\nif (empty($compile[\'keywords\'])) {\r\n    $compile[\'keywords\'] = \'\';\r\n}\r\n\r\nif (empty($compile[\'descr\'])) {\r\n    $compile[\'descr\'] = \'\';\r\n}\r\n\r\n\r\n$approve = (!empty($config_mod[\'go_moder\']) && (bool)$config_mod[\'go_moder\'] === true) ? 0 : 1;\r\n\r\nif (!empty($config_mod[\'go_moder_empty_descr\'])\r\n    && (bool)$config_mod[\'go_moder_empty_descr\'] === true\r\n    && empty(trim($request[\'description\']))\r\n) {\r\n    $approve = 0;\r\n}\r\n\r\nif (!empty($config_mod[\'go_moder_empty_poster\'])\r\n    && (bool)$config_mod[\'go_moder_empty_poster\'] === true\r\n    && !$poster \r\n) {\r\n    $approve = 0;\r\n}\r\n\r\n$disable_index = 0;\r\nif (!empty($config_mod[\'disable_index\'])\r\n    && (bool)$config_mod[\'disable_index\'] === true\r\n) {\r\n    $disable_index = 1;\r\n}\r\n\r\n$updateNewsDate = false;\r\nif (!empty($config_mod[\'update_news_date\'])\r\n    && (bool)$config_mod[\'update_news_date\'] === true\r\n) {\r\n    $updateNewsDate = true;\r\n}\r\n\r\n$last_season = $request[\'last_season\'];\r\n$last_episode = $request[\'last_episode\'];\r\n\r\n$user_row = $db->super_query(\" SELECT user_id, name FROM \" . PREFIX . \"_users WHERE name=\'{$config_mod[\'author\']}\' \");\r\n\r\n\r\nif(!$alloha[\'news_id\']){\r\n    $db->query(db_query(\"INSERT INTO `\" . PREFIX . \"_post` (`autor`, `date`, `short_story`, `full_story`, `xfields`, `title`, `descr`, `keywords`, `category`, `alt_name`, `comm_num`, `allow_comm`, `allow_main`, `approve`, `fixed`, `allow_br`, `symbol`, `tags`, `metatitle`) VALUES (\'{$user_row[\'name\']}\', :date, :short_story, :full_story, :xfields, :title, :descr, :keywords, :category, :alt_name, 0, 1, 1, $approve, 0, 0, \'\', :tags, :metatitle);\", $compile));\r\n\r\n  \r\n    $news_id = $db->insert_id();\r\n    $db->query( \"INSERT INTO \" . PREFIX . \"_post_extras (news_id,user_id,disable_index) VALUES(\'$news_id\',\'{$user_row[\'user_id\']}\', \'$disable_index\')\" );\r\n\r\n    if($poster){\r\n        $db->query( \"INSERT INTO \" . PREFIX . \"_images (images,news_id,author,date) VALUES(\'{$poster}\',\'$news_id\',\'{$user_row[\'name\']}\',\'{$_TIME}\')\" );\r\n    }\r\n\r\n\r\n    $quality = $db->safesql($res[\'quality\']);\r\n    $db->query(\"UPDATE \" . PREFIX . \"_alloha SET status = \'0\', news_id = \'$news_id\', quality=\'$quality\' WHERE kp_id = \'{$alloha[\'kp_id\']}\'\");\r\n\r\n    alloha_mass_series($news_id, $result);\r\n  \r\n    echo \"insert news --- $news_id --- {$res[\'name\']}\";\r\n}\r\n\r\nelse {\r\n    $news_id = $alloha[\'news_id\'];\r\n    $db->query( \"DELETE FROM \" . PREFIX . \"_xfsearch WHERE news_id=\'{$alloha[\'news_id\']}\' \"  );\r\n\r\n    $xfields = $db->safesql($compile[\'xfields\']);\r\n    $title = $db->safesql($compile[\'title\']);\r\n    $category = $db->safesql($compile[\'category\']);\r\n\r\n    $upd_title = $is_serial ? \"title = \'$title\',\" : \"\";\r\n\r\n    if ($is_serial) {\r\n        if ($xfdata[\'episode_count\']!=$episodes) {\r\n            $updateNewsDate = true;\r\n        }\r\n        $upd_title = \"title = \'$title\',\";\r\n    } else {\r\n        $upd_title = \'\';\r\n    }\r\n    \r\n\r\n    if($updateNewsDate){\r\n        $date = date( \"Y-m-d H:i:s\", time() );\r\n        $db->query(\"UPDATE \" . PREFIX . \"_post SET category=\'$category\', $upd_title xfields = \'$xfields\', date=\'$date\' WHERE id = \'{$alloha[\'news_id\']}\'\");\r\n        $db->query(\"UPDATE \" . PREFIX . \"_post_extras SET disable_index = \'$disable_index\', editdate = \'$_TIME\', editor=\'{$user_row[\'name\']}\', reason=\'Парсер обновил данный материал\' WHERE news_id = \'{$alloha[\'news_id\']}\'\");\r\n    }\r\n    else {\r\n        $db->query(\"UPDATE \" . PREFIX . \"_post SET $upd_title category=\'$category\', xfields = \'$xfields\' WHERE id = \'{$alloha[\'news_id\']}\'\");\r\n    }\r\n\r\n    alloha_mass_series($alloha[\'news_id\'], $result);\r\n\r\n\r\n    if($poster){\r\n\r\n        $images = $poster;\r\n\r\n        $row = $db->super_query(\" SELECT * FROM \" . PREFIX . \"_images WHERE news_id=\'{$post_row[\'id\']}\' \");\r\n        \r\n        if( $row[\'id\'] ) {\r\n            if ($row[\'images\']) {\r\n                $db->query(\" UPDATE \" . PREFIX . \"_images SET images=CONCAT(images, \'|||\', \'\".$images.\"\') WHERE news_id=\'{$post_row[\'id\']}\'\");\r\n            } else {\r\n                $db->query(\" UPDATE \" . PREFIX . \"_images SET images=\'{$images}\' WHERE news_id=\'{$post_row[\'id\']}\'\");\r\n            }\r\n            \r\n        } else {\r\n            $db->query(\" INSERT INTO \" . PREFIX . \"_images (images, news_id, author, date) VALUES (\'{$images}\', \'{$post_row[\'id\']}\', \'{$user_row[\'name\']}\', \'\".time().\"\') \");\r\n        }\r\n    }\r\n\r\n    $quality = $db->safesql($res[\'quality\']);\r\n    $last_episode = intval($request[\'last_episode\']);\r\n    $db->query(\"UPDATE \" . PREFIX . \"_alloha SET status = \'0\', news_id=\'{$alloha[\'news_id\']}\', quality = \'{$quality}\', episode=\'{$last_episode}\' WHERE kp_id = \'{$alloha[\'kp_id\']}\'\");\r\n\r\n    echo \"update news --- {$post_row[\'id\']} --- {$post_row[\'title\']}\";\r\n}\r\n\r\n\r\nif(version_compare(\'13.2\', $config[\'version_id\'], \'<=\') && !$alloha[\'news_id\']){\r\n    $ex_cats = explode(\',\', $compile[\'category\']);\r\n    foreach ($ex_cats as $ex_cat) {\r\n        $ex_cat = intval($ex_cat);\r\n        $db->query( \"INSERT INTO \" . PREFIX . \"_post_extras_cats (news_id, cat_id) VALUES (\'{$news_id}\', \'{$ex_cat}\')\" );\r\n    }\r\n}\r\n\r\n$xfields = xfieldsload();\r\n$news_xf = xfieldsdataload($compile[\'xfields\']);\r\n$xf_words = $xf_search_words = $newnews_xf = array ();\r\n\r\nforeach ($xfields as $name => $value) {\r\n    if($value[6] == 1 && !empty($news_xf[$value[0]])){\r\n        $news_xf[$value[0]] = html_entity_decode($news_xf[$value[0]], ENT_QUOTES, $config[\'charset\']);\r\n        $newnews_xf[$value[0]] = trim( htmlspecialchars(strip_tags( stripslashes($news_xf[$value[0]]) ), ENT_QUOTES, $config[\'charset\'] ));\r\n        $temp_array = explode( \",\", $newnews_xf[$value[0]] );\r\n\r\n        foreach ($temp_array as $value2) {\r\n            $value2 = trim($value2);\r\n            if($value2) $xf_search_words[] = array( $db->safesql($value[0]), $db->safesql($value2) );\r\n        }\r\n    }\r\n}\r\n\r\nif (count($xf_search_words)) {\r\n    $temp_array = array();\r\n    foreach ( $xf_search_words as $value ) {\r\n        $temp_array[] = \"(\'\" . $news_id . \"\', \'\" . $value[0] . \"\', \'\" . $value[1] . \"\')\";\r\n    }\r\n    $xf_search_words = implode( \", \", $temp_array );\r\n    $db->query( \"INSERT INTO \" . PREFIX . \"_xfsearch (news_id, tagname, tagvalue) VALUES \" . $xf_search_words );\r\n}\r\n\r\nif(!$alloha[\'news_id\'] && $approve && function_exists(\'updateSocialPosting\')) updateSocialPosting($news_id);\r\n\r\n?>', 1, 0, 0, 1, '', '==');
INSERT INTO `dle_plugins_files` (`id`, `plugin_id`, `file`, `action`, `searchcode`, `replacecode`, `active`, `searchcount`, `replacecount`, `filedisable`, `filedleversion`, `fileversioncompare`) VALUES
(215, 9, 'engine/inc/alloha.php', 'create', '', '<?php\r\n  \r\nif( !defined( \'DATALIFEENGINE\' ) OR !defined( \'LOGGED_IN\' ) ) {\r\n	header( \"HTTP/1.1 403 Forbidden\" );\r\n	header ( \'Location: ../../\' );\r\n	die( \"Hacking attempt!\" );\r\n}\r\n\r\nif (isset($_POST[\'q_search\']) or $_POST[\'action\']==\'parse\' or $_POST[\'action\']==\'update\') {\r\n	require_once DLEPlugins::Check(ENGINE_DIR . \'/modules/alloha.php\');\r\n	exit();\r\n}\r\n\r\n\r\n$__name = \"DLE Alloha\";\r\n$__descr = \"Модуль для автоматического обновления и добавления фильмов и сериалов сайта DLE по базе alloha\";\r\n\r\n$config_mod = unserialize( file_get_contents( ENGINE_DIR . \'/data/\' . $mod . \'.config\' ) );\r\nif ( !$config_mod ) $config_mod = array();\r\n\r\nif ( $action ) {\r\n\r\n	if( !$user_group[$member_id[\'user_group\']][\'admin_addnews\'] ) {\r\n		die( \'{\"success\":false,\"message\":\"\' . $lang[\'index_denied\'] . \'\"}\' );\r\n	}\r\n\r\n  if ( $action == \"clear\" ) {\r\n    $db->query(\"TRUNCATE \" . PREFIX . \"_alloha\");\r\n    @unlink(ENGINE_DIR . \'/data/alloha.log\');\r\n    die(\'Операция выполнена\');\r\n  }\r\n\r\n	if ( $action == \"config\" ) {\r\n\r\n		$config_mod = is_array( $_POST[\'config\'] ) ? $_POST[\'config\'] : array();\r\n\r\n		file_put_contents( ENGINE_DIR . \'/data/\' . $mod . \'.config\', serialize( $config_mod ) );\r\n\r\n		die( \'{\"success\":true,\"message\":\"Настройки успешно сохранены\"}\' );\r\n\r\n	}\r\n\r\n	if( $action == \"sections\" ) {\r\n\r\n		$row = $db->super_query( \"SELECT id, name FROM \" . PREFIX . \"_admin_sections WHERE name = \'{$mod}\'\" );\r\n\r\n		if ( $row ) {\r\n\r\n			$db->query(\"DELETE FROM \" . PREFIX . \"_admin_sections WHERE name = \'{$mod}\'\");\r\n\r\n			die( \'{\"success\":true,\"message\":\"Модуль убран из меню «Сторонние модули»\"}\' );\r\n\r\n		} else {\r\n\r\n			$db->query( \"INSERT IGNORE INTO \" . PREFIX . \"_admin_sections (name, title, descr, icon, allow_groups) VALUES (\'{$mod}\', \'{$__name}\', \'{$descr}\', \'\', \'1\')\" );\r\n\r\n			die( \'{\"success\":true,\"message\":\"Модуль добавлен в меню «Сторонние модули»\"}\' );\r\n\r\n		}\r\n\r\n	}\r\n\r\n}\r\n\r\nif( !$user_group[$member_id[\'user_group\']][\'admin_addnews\'] ) {\r\n	msg( \"error\", $lang[\'index_denied\'], $lang[\'index_denied\'] );\r\n}\r\n\r\nfunction makeCheckBox($name, $selected) {\r\n  $selected = $selected ? \"checked\" : \"\";\r\n  return \"<input class=\\\"switch\\\" type=\\\"checkbox\\\" name=\\\"$name\\\" value=\\\"1\\\" {$selected}>\";\r\n}\r\n\r\nfunction makeDropDown($options, $name, $selected) {\r\n    $output = \"<select class=\\\"uniform\\\" style=\\\"min-width:100px;\\\" name=\\\"$name\\\">\\r\\n\";\r\n    foreach ( $options as $value => $description ) {\r\n        $output .= \"<option value=\\\"$value\\\"\";\r\n        if( $selected == $value ) {\r\n            $output .= \" selected \";\r\n        }\r\n        $output .= \">$description</option>\\n\";\r\n    }\r\n    $output .= \"</select>\";\r\n    return $output;\r\n}\r\n\r\n$tags_arr = array(\r\n    \'poster\'           => \'Постер\',\r\n    \'title_ru\'         => \'Название\',\r\n    \'title_en\'         => \'Оригинальное название\',\r\n    \'title_alt\'        => \'Альтернативное название\',\r\n    \'token_movie\'      => \'Token movie\',\r\n    \'year\'             => \'Год выхода\',\r\n    \'description\'      => \'Описание\',\r\n    \'countries\'        => \'Страны\',\r\n    \'genres\'           => \'Жанры\',\r\n    \'actors\'           => \'Актеры\',\r\n    \'directors\'        => \'Режиссеры\',\r\n    \'producer\'         => \'Продюсеры\',\r\n    \'iframe_url\'       => \'Плеер\',\r\n    \'trailer\'          => \'Трейлер\',\r\n    \'kinopoisk_id\'     => \'ID Kinopoisk\',\r\n    \'imdb_id\'          => \'ID IMDB\',\r\n    \'tmdb_id\'          => \'ID TMDB\',\r\n    \'world_art_id\'     => \'ID WORLD ART\',\r\n    \'translator\'       => \'Перевод\',\r\n    \'quality\'          => \'Качество видео\',\r\n    \'last_season\'      => \'Последний сезон\',\r\n    \'last_episode\'     => \'Последний эпизод\',\r\n    \'episode_count\'    => \'Кол-во эпизодов\',\r\n    \'last_translate\'   => \'Последняя озвучка\',\r\n    \'rating_kp\'        => \'Kinopoisk рейтинг\',\r\n    \'rating_imdb\'      => \'IMDB рейтинг\',\r\n    \'rating_tmdb\'      => \'TMDB рейтинг\',\r\n    \'rating_world_art\' => \'WORLD ART рейтинг\',\r\n    \'rate_mpaa\'        => \'Рейтинг материала по шкале MPAA\',\r\n    \'premiere_ru\'      => \'Премьера в россии\',\r\n    \'premiere_world\'   => \'Мировая премьера\',\r\n    \'video_type\'       => \'Тип видео (фильм, сериал...)\', \r\n    \'time\'             => \'Продолжительность\',\r\n    \'age\'              => \'Возрастное ограничение\',\r\n    \'slogan\'           => \'Слоган\',\r\n    \':instream_ads\'    => \'Наличие рекламы: да / нет\',\r\n    \'episode_plus\'   => \'Последняя серия + 1\',\r\n    \'seasone_plus\'   => \'Последний сезон + 1\',\r\n    \'episode_type_1\' => \'Форматированная серия вида 1 серия, 2 серия, 3 серия\',\r\n    \'episode_type_2\' => \'Форматированная серия вида 1 серия, 1-2 серия, 1-3 серия, 1-4 серия\',\r\n    \'episode_type_3\' => \'Форматированная серия вида 1 серия, 1,2 серия, 1,2,3 серия, 1,2,3,4 серия\',\r\n    \'episode_type_4\' => \'Форматированная серия + 1 вида: если 1 серия - 1,2 серия, если 2 серия - 1,2,3 серия, если 5 серия - 4,5,6 серия\',\r\n    \'episode_type_5\' => \'Форматированная серия + 1 вида 1,2 серия, 1,2,3 серия, 1,2,3,4,5 серия, 1-5,6,7 серия\',\r\n    \'season_type_1\'  => \'Форматированный сезон вида 1 сезон, 2 сезон, 3 сезон\',\r\n    \'season_type_2\'  => \'Форматированный сезон вида 1 сезон, 1-2 сезон, 1-3 сезон\',\r\n    \'season_type_3\'  => \'Форматированный сезон вида 1 сезон, 1,2 сезон, 1,2,3 сезон\',  \r\n);\r\n\r\n\r\n\r\n$country_arr = array(\r\n  \'Австралия\',\r\n  \'Австрия\',\r\n  \'Азербайджан\',\r\n  \'Албания\',\r\n  \'Алжир\',\r\n  \'Американское Самоа\',\r\n  \'Ангилья\',\r\n  \'Англия\',\r\n  \'Ангола\',\r\n  \'Андорра\',\r\n  \'Антигуа и Барбуда\',\r\n  \'Аргентина\',\r\n  \'Армения\',\r\n  \'Аруба\',\r\n  \'Афганистан\',\r\n  \'Багамы\',\r\n  \'Бангладеш\',\r\n  \'Барбадос\',\r\n  \'Бахрейн\',\r\n  \'Бейкер\',\r\n  \'Белиз\',\r\n  \'Беларусь\',\r\n  \'Бельгия\',\r\n  \'Бенилюкс\',\r\n  \'Бенин\',\r\n  \'Болгария\',\r\n  \'Боливия\',\r\n  \'Бонэйр\',\r\n  \'Бопутатсвана\',\r\n  \'Босния и Герцеговина\',\r\n  \'Ботсвана\',\r\n  \'Бразилия\',\r\n  \'Бруней\',\r\n  \'Буркина-Фасо\',\r\n  \'Бурунди\',\r\n  \'Бутан\',\r\n  \'Вануату\',\r\n  \'Ватикан\',\r\n  \'Великобритания\',\r\n  \'Венгрия\',\r\n  \'Венда\',\r\n  \'Венесуэла\',\r\n  \'Вьетнам\',\r\n  \'Габон\',\r\n  \'Гаити\',\r\n  \'Гайана\',\r\n  \'Гамбия\',\r\n  \'Гана\',\r\n  \'Гватемала\',\r\n  \'Гвинея\',\r\n  \'Гвинея-Бисау\',\r\n  \'Германия\',\r\n  \'Гернси\',\r\n  \'Гибралтар\',\r\n  \'Гондурас\',\r\n  \'Гонконг\',\r\n  \'Сомали\',\r\n  \'Гренада\',\r\n  \'Греция\',\r\n  \'Грузия\',\r\n  \'Гуам\',\r\n  \'Дания\',\r\n  \'Конго\',\r\n  \'Косово\',\r\n  \'Джибути\',\r\n  \'Джонстон\',\r\n  \'Джубаленд\',\r\n  \'Доминика\',\r\n  \'Доминикана\',\r\n  \'Египет\',\r\n  \'Замбия\',\r\n  \'Зимбабве\',\r\n  \'Израиль\',\r\n  \'Имамат Оман\',\r\n  \'Индия\',\r\n  \'Индонезия\',\r\n  \'Иордания\',\r\n  \'Ирак\',\r\n  \'Иран\',\r\n  \'Ирландия\', \r\n  \'Исландия\',\r\n  \'Испания\',\r\n  \'Италия\',\r\n  \'Йемен\',\r\n  \'Султанат Касири\',\r\n  \'Кабо-Верде\',\r\n  \'Казахстан\',\r\n  \'Камбоджа\',\r\n  \'Камерун\',\r\n  \'Канада\',\r\n  \'Катар\',\r\n  \'Кашубия\',\r\n  \'Кенедугу\',\r\n  \'Кения\',\r\n  \'Киргизия\',\r\n  \'Кирибати\',\r\n  \'Китай\',\r\n  \'Колумбия\',\r\n  \'Коморы\',\r\n  \'Конго\',\r\n  \'Корея Северная\',\r\n  \'Корея Южная\',\r\n  \'Нидерланды\',\r\n  \'Конго\',\r\n  \'Коста-Рика\', \r\n  \'Куба\',\r\n  \'Кувейт\',\r\n  \'Кюрасао\',\r\n  \'Лаос\',\r\n  \'Латвия\',\r\n  \'Лесото\',\r\n  \'Либерия\',\r\n  \'Ливан\',\r\n  \'Ливия\',\r\n  \'Литва\',\r\n  \'Лихтенштейн\',\r\n  \'Люксембург\',\r\n  \'Маврикий\',\r\n  \'Мавритания\',\r\n  \'Мадагаскар\',\r\n  \'Малави\',\r\n  \'Малайзия\',\r\n  \'Мали\',\r\n  \'Мальдивы\',\r\n  \'Мальта\',\r\n  \'Марокко\',\r\n  \'Мартиазо\',\r\n  \'Мексика\',\r\n  \'Мидуэй\',\r\n  \'Мозамбик\',\r\n  \'Молдавия\',\r\n  \'Молдова\',\r\n  \'Монако\',\r\n  \'Монголия\',\r\n  \'Монтсеррат\',\r\n  \'Мьянма\',\r\n  \'Намибия\',\r\n  \'Науру\',\r\n  \'Непал\',\r\n  \'Нигер\',\r\n  \'Нигерия\',\r\n  \'Нидерланды\',\r\n  \'Никарагуа\',\r\n  \'Ниуэ\',\r\n  \'Новая Зеландия\',\r\n  \'Новая Каледония\',\r\n  \'Норвегия\',\r\n  \'Остров Норфолк\', \r\n  \'ОАЭ\',\r\n  \'Оман\',\r\n  \'Пакистан\',\r\n  \'Палау\',\r\n  \'Панама\',\r\n  \'Парагвай\',\r\n  \'Перу\',\r\n  \'Польша\',\r\n  \'Португалия\',\r\n  \'Пуэрто Рико\',\r\n  \'Ангилья\',\r\n  \'Закистан\',\r\n  \'Кипр\',\r\n  \'Логон\',\r\n  \'Россия\',\r\n  \'Руанда\',\r\n  \'Румыния\',\r\n  \'Сальвадор\',\r\n  \'Самоа\',\r\n  \'Сан-Марино\',\r\n  \'Саудовская Аравия\',\r\n  \'Северная Ирландия\',\r\n  \'Северная Македония\',\r\n  \'Сейшельские Острова \',\r\n  \'Сенегал\',\r\n  \'Сент-Люсия\',\r\n  \'Сербия\',\r\n  \'Силенд\',\r\n  \'Сингапур\',\r\n  \'Синт-Мартен\',\r\n  \'Синт-Эстатиус\',\r\n  \'Сирия\',\r\n  \'Сискей\',\r\n  \'Словакия\',\r\n  \'Словения\',\r\n  \'Соломоновы Острова\',\r\n  \'Сомали\',\r\n  \'Сомалиленд\',\r\n  \'Судан\',\r\n  \'Суринам\',\r\n  \'СССР\',\r\n  \'США\',\r\n  \'Сьерра-Леоне\',\r\n  \'Таджикистан\',\r\n  \'Таиланд\',\r\n  \'Тайвань\',\r\n  \'Танзания\',\r\n  \'Того\',\r\n  \'Токелау\',\r\n  \'Тонга\',\r\n  \'Торо\',\r\n  \'Транскей\',\r\n  \'Тринидад\',\r\n  \'Тобаго\',\r\n  \'Тувалу\',\r\n  \'Тунис\',\r\n  \'Туркмения\',\r\n  \'Турция\',\r\n  \'Уганда\',\r\n  \'Узбекистан\',\r\n  \'Украина\',\r\n  \'Уругвай\',\r\n  \'Уэйк\',\r\n  \'Уэльс\',\r\n  \'ФШМ\',\r\n  \'Фиджи\',\r\n  \'Филиппины\',\r\n  \'Финляндия\',\r\n  \'Фландренсис\',\r\n  \'Фолклендские острова\',\r\n  \'Франция\',\r\n  \'Французская Полинезия\',\r\n  \'Хауленд\',\r\n  \'Хиршабелле\',\r\n  \'Хорватия\',\r\n  \'Центральноафриканская Республика\',\r\n  \'Чад\',\r\n  \'Черногория\',\r\n  \'Чехия\',\r\n  \'Чили\',\r\n  \'Швейцария\',\r\n  \'Швеция\',\r\n  \'Шотландия\',\r\n  \'Шри-Ланка\',\r\n  \'Эквадор\',\r\n  \'Экваториальная Гвинея\',\r\n  \'Эритрея\',\r\n  \'Эсватини\',\r\n  \'Эстония\',\r\n  \'Эфиопия\',\r\n  \'Южная Георгия\',\r\n  \'ЮАР\',\r\n  \'Южный Судан\',\r\n  \'Ямайка\',\r\n  \'Япония\',\r\n);\r\n\r\n$main = \"\";\r\n\r\nforeach ( array( \r\n  \'title\'       => \'Заголовок новости:\', \r\n  \'short_story\' => \'Краткое описание:\',\r\n  \'full_story\'  => \'Полное описание:\',  		\r\n  \'metatitle\'   => \'Метатег Title:\', \r\n  \'descr\'       => \'Метатег Description:\', \r\n  \'keywords\'    => \'Метатег Keywords:\',\r\n  \'tags\'        => \'Теги новости:\',\r\n  \'alt_name\'    => \'ЧПУ новости:\',\r\n  \'api_token\'   => \'Ваш API-токен в видеобалансере Alloha:\', \r\n  \'secret_key\'  => \'Секретный ключ для крона:\',\r\n	) as $name => $title ) {\r\n\r\n	$main .= \"<tr><td class=\\\"col-xs-6 col-sm-6 col-md-7 white-line\\\"><h6 class=\\\"media-heading text-semibold\\\">{$title}</h6><span></span></td><td class=\\\"col-xs-6 col-sm-6 col-md-7 white-line\\\"><input name=\\\"config[{$name}]\\\" class=\\\"form-control\\\" value=\\\"\" . ( isset( $config_mod[$name] ) ? $config_mod[$name] : \"\" ) . \"\\\"></td></tr>\";\r\n\r\n}\r\n\r\n$main .= \"<tr><td class=\\\"col-xs-6 col-sm-6 col-md-7 white-line\\\"><h6 class=\\\"media-heading text-semibold\\\">Имя пользователя от имени которого добавляются публикации:</h6><span></span></td><td class=\\\"col-xs-6 col-sm-6 col-md-7 white-line\\\"><input name=\\\"config[author]\\\" class=\\\"form-control\\\" value=\\\"\" .$config_mod[\'author\'] . \"\\\"></td></tr>\";\r\n\r\n$add_film        = makeCheckBox(\'config[add_film]\', $config_mod[\'add_film\']);\r\n$add_multfilm    = makeCheckBox(\'config[add_multfilm]\', $config_mod[\'add_multfilm\']);\r\n$add_multserial  = makeCheckBox(\'config[add_multserial]\', $config_mod[\'add_multserial\']);\r\n$add_serial      = makeCheckBox(\'config[add_serial]\', $config_mod[\'add_serial\']);\r\n$add_anime       = makeCheckBox(\'config[add_anime]\', $config_mod[\'add_anime\']);\r\n$add_animeserial = makeCheckBox(\'config[add_animeserial]\', $config_mod[\'add_animeserial\']);\r\n$add_tvshow      = makeCheckBox(\'config[add_tvshow]\', $config_mod[\'add_tvshow\']);\r\n$add_trailer      = makeCheckBox(\'config[add_trailer]\', $config_mod[\'add_trailer\']);\r\n\r\n$main .= \"<tr><td class=\\\"col-xs-6 col-sm-6 col-md-7 white-line\\\"><h6 class=\\\"media-heading text-semibold\\\">Добавлять на сайт:</h6></td><td class=\\\"col-xs-6 col-sm-6 col-md-7 white-line\\\">\".\r\n  \'<div style=\"margin-bottom:10px\">\'.$add_film.\' Фильмы</div>\'.\r\n  \'<div style=\"margin-bottom:10px\">\'.$add_multfilm.\' Мультфильмы</div>\'.\r\n	\'<div style=\"margin-bottom:10px\">\'.$add_multserial.\' Мультсериалы</div>\'.\r\n	\'<div style=\"margin-bottom:10px\">\'.$add_serial.\' Сериалы</div>\'.\r\n	\'<div style=\"margin-bottom:10px\">\'.$add_anime.\' Аниме</div>\'.\r\n  \'<div style=\"margin-bottom:10px\">\'.$add_animeserial.\' Аниме-сериалы</div>\'.\r\n	\'<div style=\"margin-bottom:10px\">\'.$add_tvshow.\' TV-шоу</div>\'.\r\n  \'<div style=\"margin-bottom:10px\">\'.$add_trailer.\' Трейлеры</div>\'.\r\n	\"</td></tr>\";\r\n\r\n$main .= \"<tr><td class=\\\"col-xs-6 col-sm-6 col-md-7 white-line\\\"><h6 class=\\\"media-heading text-semibold\\\">Черный список</h6><span>Укажите список ID Кинопоиска (каждый с новой строки)</span></td><td class=\\\"col-xs-6 col-sm-6 col-md-7 white-line\\\"><textarea name=\\\"config[blacklist]\\\" style=\\\"height:200px;\\\" class=\\\"form-control\\\">\" . ( isset( $config_mod[\'blacklist\'] ) ? $config_mod[\'blacklist\'] : \"\" ) . \"</textarea></td></tr>\";\r\n\r\n$main .= \"<tr><td class=\\\"col-xs-6 col-sm-6 col-md-7 white-line\\\"><h6 class=\\\"media-heading text-semibold\\\">Исключить новости</h6><span>Укажите список ID новостей для которых данные при автоматическом обновлении обновлятся не будут (каждый с новой строки)</span></td><td class=\\\"col-xs-6 col-sm-6 col-md-7 white-line\\\"><textarea name=\\\"config[exclude_news]\\\" style=\\\"height:200px;\\\" class=\\\"form-control\\\">\" . ( isset( $config_mod[\'exclude_news\'] ) ? $config_mod[\'exclude_news\'] : \"\" ) . \"</textarea></td></tr>\";\r\n\r\n$first_new = makeCheckBox(\'config[first_new]\', $config_mod[\'first_new\']);\r\n$main .= \'<tr>\r\n      <td class=\"col-xs-6 col-sm-6 col-md-7 white-line\">\r\n        <h6 class=\"media-heading text-semibold\">Добавлять сначала новинки:</h6>\r\n        <span class=\"text-muted text-size-small hidden-xs\">если включено, то сначала будут добавлятся новые фильмы (по годам), иначе так как находятся в базе. по порядку</span>\r\n      </td>\r\n      <td class=\"col-xs-6 col-sm-6 col-md-7 white-line\">\'.$first_new.\'</td>\r\n    </tr>\';\r\n\r\n\r\n\r\n\r\nforeach ($cat_info as $cat_arr) {\r\n  if (intval($config_mod[\'trailer_cat\']) == $cat_arr[\'id\']) {\r\n    $trailer_cat[] = \'<option value=\"\'.$cat_arr[\'id\'].\'\" selected>\'.$cat_arr[\'name\'].\'</option>\';\r\n  }\r\n  else {\r\n    $trailer_cat[] = \'<option value=\"\'.$cat_arr[\'id\'].\'\">\'.$cat_arr[\'name\'].\'</option>\';\r\n  }\r\n}\r\n\r\n$main .= \'<tr>\r\n      <td class=\"col-xs-6 col-sm-6 col-md-7 white-line\">\r\n        <h6 class=\"media-heading text-semibold\">Категория с трейлерами/анонсами:</h6>\r\n        <span class=\"text-muted text-size-small hidden-xs\">будут автоматичесски убиратся при появлении материала в базе</span>\r\n      </td>\r\n      <td class=\"col-xs-6 col-sm-6 col-md-7 white-line\"><select name=\"config[trailer_cat]\" class=\"categoryselect\" style=\"width: 100%; max-width: 350px;\"><option value=\"0\">===Выбрать из списка===</option>\'.implode(\"\\n\", $trailer_cat).\'</select></td>\r\n    </tr>\';\r\n\r\n\r\n\r\n\r\n$allow_country = $config_mod[\'allow_country\'] ? $config_mod[\'allow_country\'] : [];\r\nforeach ($country_arr as $value) {\r\n	if (in_array(mb_strtolower($value, \'utf-8\'), $allow_country)) {\r\n		$country_select[] = \'<option value=\"\'.mb_strtolower($value, \'utf-8\').\'\" selected>\'.$value.\'</option>\';\r\n	}\r\n	else {\r\n		$country_select[] = \'<option value=\"\'.mb_strtolower($value, \'utf-8\').\'\">\'.$value.\'</option>\';\r\n	}\r\n}\r\n\r\n\r\n$disallow_country = $config_mod[\'disallow_country\'] ? $config_mod[\'disallow_country\'] : [];\r\nforeach ($country_arr as $value) {\r\n  if (in_array(mb_strtolower($value, \'utf-8\'), $disallow_country)) {\r\n    $dcountry_select[] = \'<option value=\"\'.mb_strtolower($value, \'utf-8\').\'\" selected>\'.$value.\'</option>\';\r\n  }\r\n  else {\r\n    $dcountry_select[] = \'<option value=\"\'.mb_strtolower($value, \'utf-8\').\'\">\'.$value.\'</option>\';\r\n  }\r\n}\r\n\r\n\r\n$allow_year = $config_mod[\'allow_year\'] ? $config_mod[\'allow_year\'] : [];\r\n\r\nfor ($i=1920; $i < 20+date(\'Y\'); $i++) { \r\n	if (in_array($i, $allow_year)) {\r\n		$year_select[] = \'<option value=\"\'.$i.\'\" selected>\'.$i.\'</option>\';\r\n	}\r\n	else {\r\n		$year_select[] = \'<option value=\"\'.$i.\'\">\'.$i.\'</option>\';\r\n	}\r\n}\r\n\r\n\r\n$disallow_year = $config_mod[\'disallow_year\'] ? $config_mod[\'disallow_year\'] : [];\r\n\r\nfor ($i=1920; $i < 20+date(\'Y\'); $i++) { \r\n  if (in_array($i, $disallow_year)) {\r\n    $not_year_select[] = \'<option value=\"\'.$i.\'\" selected>\'.$i.\'</option>\';\r\n  }\r\n  else {\r\n    $not_year_select[] = \'<option value=\"\'.$i.\'\">\'.$i.\'</option>\';\r\n  }\r\n}\r\n\r\n\r\n$main .= \'<tr>\r\n      <td class=\"col-xs-6 col-sm-6 col-md-7 white-line\">\r\n        <h6 class=\"media-heading text-semibold\">Допустимые страны:</h6>\r\n        <span class=\"text-muted text-size-small hidden-xs\">будут добавляться публикации только определенных стран. если ничего не выбрано - то все</span>\r\n      </td>\r\n      <td class=\"col-xs-6 col-sm-6 col-md-7 white-line\"><select data-placeholder=\"Выберите страну\" name=\"config[allow_country][]\" class=\"categoryselect\" multiple=\"\" style=\"width: 100%; max-width: 350px;\">\'.implode(\'\', $country_select).\'</select></td>\r\n    </tr>\';\r\n\r\n\r\n\r\n$main .= \'<tr>\r\n      <td class=\"col-xs-6 col-sm-6 col-md-7 white-line\">\r\n        <h6 class=\"media-heading text-semibold\">Запрещенные страны:</h6>\r\n        <span class=\"text-muted text-size-small hidden-xs\">будут запрещены для публикации определенные страны. если ничего не выбрано - то все</span>\r\n      </td>\r\n      <td class=\"col-xs-6 col-sm-6 col-md-7 white-line\"><select data-placeholder=\"Выберите страну\" name=\"config[disallow_country][]\" class=\"categoryselect\" multiple=\"\" style=\"width: 100%; max-width: 350px;\">\'.implode(\'\', $dcountry_select).\'</select></td>\r\n    </tr>\';\r\n\r\n\r\n$main .= \'<tr>\r\n      <td class=\"col-xs-6 col-sm-6 col-md-7 white-line\">\r\n        <h6 class=\"media-heading text-semibold\">Допустимые года:</h6>\r\n        <span class=\"text-muted text-size-small hidden-xs\">будут добавляться публикации только определенных годов. если ничего не выбрано - то все</span>\r\n      </td>\r\n      <td class=\"col-xs-6 col-sm-6 col-md-7 white-line\"><select data-placeholder=\"Выберите год\" name=\"config[allow_year][]\" class=\"categoryselect\" multiple=\"\" style=\"width: 100%; max-width: 350px;\">\'.implode(\'\', $year_select).\'</select></td>\r\n    </tr>\';\r\n\r\n\r\n$main .= \'<tr>\r\n      <td class=\"col-xs-6 col-sm-6 col-md-7 white-line\">\r\n        <h6 class=\"media-heading text-semibold\">Запрещенные года:</h6>\r\n        <span class=\"text-muted text-size-small hidden-xs\">Не будут добавляться публикации только определенных годов. если ничего не выбрано - то все</span>\r\n      </td>\r\n      <td class=\"col-xs-6 col-sm-6 col-md-7 white-line\"><select data-placeholder=\"Выберите год\" name=\"config[disallow_year][]\" class=\"categoryselect\" multiple=\"\" style=\"width: 100%; max-width: 350px;\">\'.implode(\'\', $not_year_select).\'</select></td>\r\n    </tr>\';\r\n\r\n\r\n$main .= \'<tr>\r\n      <td class=\"col-xs-6 col-sm-6 col-md-7 white-line\">\r\n        <h6 class=\"media-heading text-semibold\">Фильтр по рейтингу Kinopoisk:</h6>\r\n        <span class=\"text-muted text-size-small hidden-xs\">будет отсортированы фильмы по рейтингу Kinopoisk (например 7.5)</span>\r\n      </td>\r\n      <td class=\"col-xs-6 col-sm-6 col-md-7 white-line\"><input name=\"config[rating_kp]\" class=\"form-control\" value=\"\'.$config_mod[\'rating_kp\'].\'\"></td>\r\n    </tr>\';\r\n\r\n$main .= \'<tr>\r\n      <td class=\"col-xs-6 col-sm-6 col-md-7 white-line\">\r\n        <h6 class=\"media-heading text-semibold\">Фильтр по рейтингу IMDB:</h6>\r\n        <span class=\"text-muted text-size-small hidden-xs\">будет отсортированы фильмы по рейтингу IMDB (например 7.5)</span>\r\n      </td>\r\n      <td class=\"col-xs-6 col-sm-6 col-md-7 white-line\"><input name=\"config[rating_imdb]\" class=\"form-control\" value=\"\'.$config_mod[\'rating_imdb\'].\'\"></td>\r\n    </tr>\';       \r\n\r\n\r\n\r\n    $main .= \'<tr>\r\n          <td class=\"col-xs-6 col-sm-6 col-md-7 white-line\">\r\n            <h6 class=\"media-heading text-semibold\">Максимум актеров:</h6>\r\n            <span class=\"text-muted text-size-small hidden-xs\">можно указать ограничение на кол-во актеров</span>\r\n          </td>\r\n          <td class=\"col-xs-6 col-sm-6 col-md-7 white-line\"><input name=\"config[max_actors]\" class=\"form-control\" value=\"\'.$config_mod[\'max_actors\'].\'\"></td>\r\n        </tr>\';\r\n\r\n\r\n    $main .= \'<tr>\r\n          <td class=\"col-xs-6 col-sm-6 col-md-7 white-line\">\r\n            <h6 class=\"media-heading text-semibold\">Максимум режиссёров:</h6>\r\n            <span class=\"text-muted text-size-small hidden-xs\">можно указать ограничение на кол-во режиссёров</span>\r\n          </td>\r\n          <td class=\"col-xs-6 col-sm-6 col-md-7 white-line\"><input name=\"config[max_directors]\" class=\"form-control\" value=\"\'.$config_mod[\'max_directors\'].\'\"></td>\r\n        </tr>\'; \r\n\r\n\r\n\r\n$go_moder = makeCheckBox(\'config[go_moder]\', $config_mod[\'go_moder\']);\r\n$go_moder_trailer = makeCheckBox(\'config[go_moder_trailer]\', $config_mod[\'go_moder_trailer\']);\r\n$conditionEmptyDescr = makeCheckBox(\'config[go_moder_empty_descr]\', $config_mod[\'go_moder_empty_descr\']);\r\n$conditionEmptyPoster = makeCheckBox(\'config[go_moder_empty_poster]\', $config_mod[\'go_moder_empty_poster\']);\r\n\r\n$update_if_quality = makeCheckBox(\'config[update_if_quality]\', $config_mod[\'update_if_quality\']);\r\n$update_if_seasone = makeCheckBox(\'config[update_if_seasone]\', $config_mod[\'update_if_seasone\']);\r\n$update_if_change_translate = makeCheckBox(\'config[update_if_change_translate]\', $config_mod[\'update_if_change_translate\']);\r\n\r\n$disable_index = makeCheckBox(\'config[disable_index]\', $config_mod[\'disable_index\']);\r\n$enable_ads = makeCheckBox(\'config[enable_ads]\', $config_mod[\'enable_ads\']);\r\n$upload_poster = makeCheckBox(\'config[upload_poster]\', $config_mod[\'upload_poster\']);\r\n\r\n$main .= \'<tr>\r\n      <td class=\"col-xs-6 col-sm-6 col-md-7 white-line\">\r\n        <h6 class=\"media-heading text-semibold\">Сколько прибавлять к серии/сезону:</h6>\r\n        <span class=\"text-muted text-size-small hidden-xs\">см. вкладку сериалы (Последняя серия/сезон +1) </span>\r\n      </td>\r\n      <td class=\"col-xs-6 col-sm-6 col-md-7 white-line\"><input name=\"config[plus]\" class=\"form-control\" value=\"\'.$config_mod[\'plus\'].\'\"></td>\r\n    </tr>\';\r\n\r\n$main .= \'<tr>\r\n      <td class=\"col-xs-6 col-sm-6 col-md-7 white-line\">\r\n        <h6 class=\"media-heading text-semibold\">Загружать постер на сайт:</h6>\r\n        <span class=\"text-muted text-size-small hidden-xs\">если включено то постер будет загружатся вам на сервер. иначе будет ссылка на сторонний ресурс</span>\r\n      </td>\r\n      <td class=\"col-xs-6 col-sm-6 col-md-7 white-line\">\'.$upload_poster.\'</td>\r\n    </tr>\';\r\n\r\n\r\n\r\n$main .= \'<tr>\r\n      <td class=\"col-xs-6 col-sm-6 col-md-7 white-line\">\r\n        <h6 class=\"media-heading text-semibold\">Размер постера:</h6>\r\n        <span class=\"text-muted text-size-small hidden-xs\">например 200x300 или 120 или 0 для сохранения оригинального изображения</span>\r\n      </td>\r\n      <td class=\"col-xs-6 col-sm-6 col-md-7 white-line\"><input name=\"config[poster_size]\" class=\"form-control\" value=\"\'.$config_mod[\'poster_size\'].\'\"></td>\r\n    </tr>\'; \r\n\r\n$mass_series = makeCheckBox(\'config[mass_series]\', $config_mod[\'mass_series\']);\r\n$main .= \'<tr>\r\n      <td class=\"col-xs-6 col-sm-6 col-md-7 white-line\">\r\n        <h6 class=\"media-heading text-semibold\">Использовать посерийный модуль:</h6>\r\n      </td>\r\n      <td class=\"col-xs-6 col-sm-6 col-md-7 white-line\">\'.$mass_series.\'</td>\r\n    </tr>\';\r\n\r\n    $not_add_if_no_poster = makeCheckBox(\'config[not_add_if_no_poster]\', $config_mod[\'not_add_if_no_poster\']);\r\n    $not_add_if_no_descr = makeCheckBox(\'config[not_add_if_no_descr]\', $config_mod[\'not_add_if_no_descr\']);\r\n\r\n$main .= <<<HTML\r\n<tr>\r\n    <td class=\"col-xs-6 col-sm-6 col-md-7 white-line\">\r\n        <h6 class=\"media-heading text-semibold\">\r\n            Сначала отправлять на модерацию:\r\n        </h6>\r\n        <h6 class=\"media-heading text-semibold\">\r\n            На модерацию при отсутствии описания:\r\n        </h6>\r\n        <h6 class=\"media-heading text-semibold\">\r\n            На модерацию при отсутствии постера:\r\n        </h6>\r\n        <h6 class=\"media-heading text-semibold\">\r\n            Добавлять с вшитой рекламой:\r\n        </h6>      \r\n         <h6 class=\"media-heading text-semibold\">\r\n            Отправлять на модерацию трейлеры:\r\n        </h6>\r\n    </td>\r\n    <td class=\"col-xs-6 col-sm-6 col-md-7 white-line\">\r\n        <div style=\"margin-bottom: 7px\">\r\n            $go_moder\r\n        </div>\r\n        <div style=\"margin-bottom: 7px\">\r\n            $conditionEmptyDescr\r\n        </div>\r\n        <div style=\"margin-bottom: 7px\">\r\n            $conditionEmptyPoster\r\n        </div>\r\n        <div style=\"margin-bottom: 7px\">$enable_ads</div>\r\n        <div>$go_moder_trailer</div>\r\n        \r\n    </td>\r\n</tr>\r\n<tr>\r\n    <td class=\"col-xs-6 col-sm-6 col-md-7 white-line\">\r\n        <h6 class=\"media-heading text-semibold\">\r\n            Не добавлять при отсутствии постера:\r\n        </h6>\r\n        <h6 class=\"media-heading text-semibold\">\r\n            Не добавлять при отсутствии описания:\r\n        </h6>\r\n    </td>\r\n    <td class=\"col-xs-6 col-sm-6 col-md-7 white-line\">\r\n        <div style=\"margin-bottom: 7px\">\r\n            $not_add_if_no_poster\r\n        </div>\r\n        <div style=\"margin-bottom: 7px\">\r\n            $not_add_if_no_descr\r\n        </div>\r\n    </td>\r\n</tr>\r\n<tr>\r\n    <td class=\"col-xs-6 col-sm-6 col-md-7 white-line\">\r\n        <h6 class=\"media-heading text-semibold\">\r\n            Поднимать фильмы / мультфильмы / аниме при  смене качества:\r\n        </h6>\r\n        <h6 class=\"media-heading text-semibold\">\r\n            Поднимать сериалы / мультсериалы / аниме-сериалы при смене сезонов и серий:\r\n        </h6>\r\n        <h6 class=\"media-heading text-semibold\">\r\n            Поднимать сериалы при смене озвучки:\r\n        </h6>\r\n        <h6 class=\"media-heading text-semibold\">\r\n            Запретить индексацию страницы для поисковиков:\r\n        </h6>\r\n    </td>\r\n    <td class=\"col-xs-6 col-sm-6 col-md-7 white-line\">\r\n        <div style=\"margin-bottom: 7px\">\r\n            $update_if_quality\r\n        </div>\r\n        <div style=\"margin-bottom: 7px\">\r\n            $update_if_seasone\r\n        </div>\r\n        <div style=\"margin-bottom: 7px\">\r\n            $update_if_change_translate\r\n        </div>\r\n        <div style=\"margin-bottom: 7px\">\r\n            $disable_index\r\n        </div>\r\n    </td>\r\n</tr>\r\nHTML;\r\n\r\n\r\n\r\n$xfields = \"\";\r\n\r\nforeach ( xfieldsload() as $xfield ) {\r\n\r\n	$options = \"\";\r\n\r\n	foreach ($tags_arr as $key => $value) {\r\n		if ( ($xfield[3] == \"yesorno\" && substr($key, 0, 1) == \":\") \r\n			|| (in_array($xfield[3], array(\'text\', \'textarea\', \'htmljs\', \'select\')) && substr($key, 0, 1) != \":\")\r\n			|| (in_array($xfield[3], array(\'image\', \'imagegalery\')) && $key == \'image\') ) {\r\n			$key = trim($key, \':\');\r\n\r\n			if ( $key == \'image\' && in_array($xfield[3], array(\'image\', \'imagegalery\') ) ) {\r\n				$key = \'xf-\' . $key;\r\n			} \r\n\r\n			if ( in_array($config_mod[\'xfields\'][$xfield[0]], array(\'{\' . $key . \'}\', \'{xf-\' . $key . \'}\' ) ) ) {\r\n				$selected = \" selected\";\r\n			} else {\r\n				$selected = \"\";\r\n			}\r\n\r\n			$options .= \'<option value=\"{\' . $key . \'}\"\' . $selected . \'>\' . $value . \'</option>\';\r\n		}\r\n	}\r\n\r\n	if ( $options != \"\" )  $xfields .= \"<tr><td class=\\\"col-xs-6 col-sm-6 col-md-7 white-line\\\"><h6 class=\\\"media-heading text-semibold\\\">{$xfield[1]}</h6><span>Дополнительное поле [{$xfield[0]}]</span></td><td class=\\\"col-xs-6 col-sm-6 col-md-7 white-line\\\"><select name=\\\"config[xfields][{$xfield[0]}]\\\" style=\\\"width:100%;max-width:350px;\\\" class=\\\"uniform\\\"><option value=\\\" \\\">--- не выбрано ---</option>{$options}</select></td></tr>\";\r\n\r\n}\r\n\r\n\r\n$genre_arr = array(\r\n  \'сериал\',\r\n  \'фильм\',\r\n  \'зарубежный\',\r\n  \'арт-хаус\',\r\n  \'дорама\',\r\n  \'аниме\',\r\n  \'аниме сериал\',\r\n  \'биография\',\r\n  \'боевик\', \r\n  \'вестерн\',\r\n  \'военный\',\r\n  \'детектив\',\r\n  \'детский\', \r\n  \'документальный\',\r\n  \'драма\',\r\n  \'игра\',\r\n  \'история\',\r\n  \'комедия\',\r\n  \'концерт\',\r\n  \'короткометражка\',\r\n  \'полнометражный\',\r\n  \'криминал\',\r\n  \'мелодрама\',\r\n  \'мистический\',\r\n  \'музыка\',\r\n  \'мультфильм\',\r\n  \'мультсериал\',\r\n  \'мюзикл\',\r\n  \'новости\',\r\n  \'путешествия\',\r\n  \'приключения\',\r\n  \'развлекательный\',\r\n  \'реальное тв\',\r\n  \'семейный\',	\r\n  \'спорт\',\r\n  \'ток-шоу\',\r\n  \'тв шоу\',\r\n  \'триллер\',\r\n  \'трейлер\',\r\n  \'ужасы\',\r\n  \'фантастика\',\r\n  \'фильм-нуар\',\r\n  \'фэнтези\',\r\n  \'церемония\',\r\n  \'для взрослых\',\r\n  \'США\',\r\n  \'Россия\',\r\n  \'Украина\',\r\n  \'Беларусь\',\r\n  \'Корея Южная\',\r\n  \'Казахстан\',\r\n  \'Япония\',\r\n  \'Франция\',\r\n  \'Китай\',\r\n  \'Германия\',\r\n  \'СССР\',\r\n  \'Турция\',\r\n  \'Великобритания\',\r\n  \'Индия\',\r\n  \'Гаити\',\r\n  \'Пуэрто Рико\',\r\n  \'Пакистан\',\r\n  \'Панама\',\r\n  \'Буркина-Фасо\',\r\n  \'Мьянма\',\r\n  \'Монголия\',\r\n  \'Египет\',\r\n  \'Иордания\',\r\n  \'Конго\',\r\n  \'Молдова\',\r\n  \'Нигерия\',\r\n  \'Гана\',\r\n  \'Албания\',\r\n  \'Косово\',\r\n  \'Словакия\',\r\n  \'Армения\',\r\n  \'Монако\',\r\n  \'Судан\',\r\n  \'Кения\',\r\n);\r\n\r\nfor($i=date(\'Y\')+4;$i>=1920;$i--) $genre_arr[] = $i;\r\n\r\n$cats = \"\";\r\n\r\nforeach ($cat_info as $cat) {\r\n	$options = \"\";\r\n\r\n	foreach ($genre_arr as $genre)\r\n		$options .= \'<option value=\"\' . $genre . \'\"\' . (in_array($genre, (array)$config_mod[\'category\'][$cat[\'id\']]) ? \' selected\' : \'\') . \'>\' . $genre . \'</option>\';\r\n\r\n	$cat_id = $cat[\'parentid\'];\r\n	$name = $cat[\'name\'];\r\n\r\n	while ($cat_id) {\r\n		$name = $cat_info[$cat_id][\'name\'] . \' / \' . $name;\r\n		$cat_id = $cat_info[$cat_id][\'parentid\'];\r\n	}\r\n\r\n	$cats .= \"<tr><td class=\\\"col-xs-6 col-sm-6 col-md-7 white-line\\\"><h6 class=\\\"media-heading text-semibold\\\">{$name}</h6><span>категория [ID:{$cat[\'id\']}]</span></td><td class=\\\"col-xs-6 col-sm-6 col-md-7 white-line\\\"><select name=\\\"config[category][{$cat[\'id\']}][]\\\" style=\\\"width:100%;max-width:350px;\\\" class=\\\"categoryselect\\\" multiple>{$options}</select></td></tr>\";\r\n}\r\n\r\n\r\n$tags = \"\";\r\n\r\nforeach ($tags_arr as $key => $value) {\r\n	$tags .= \"<tr><td class=\\\"col-xs-6 col-sm-6 col-md-7 white-line\\\"><h6 class=\\\"media-heading text-semibold\\\">{$value}</h6><span></span></td><td class=\\\"col-xs-6 col-sm-6 col-md-7 white-line\\\">[if_{$key}] {{$key}} [/if_{$key}]<br>[ifnot_{$key}] данных нету [/ifnot_{$key}]</td></tr>\";\r\n}\r\n\r\nechoheader( $__name, $__descr );\r\n\r\n\r\n$row = $db->super_query( \"SELECT COUNT(*) as count FROM \" . PREFIX . \"_post\" );\r\n\r\n$last_file = ENGINE_DIR.\'/data/alloha.last.file\';\r\nif (!file_exists($last_file)) {\r\n  $startfrom = $rebuildcount = 0;\r\n  file_put_contents($log_file, \"0|0\");\r\n}\r\nelse {\r\n  $data = file_get_contents($last_file);\r\n  $data = explode(\'|\', $data);\r\n  $startfrom = $data[0];\r\n  $rebuildcount = $data[1];\r\n}\r\n\r\n\r\n\r\n$serial_arr = [\r\n  \'episode_plus\' => \'Последняя серия + 1\',\r\n  \'seasone_plus\' => \'Последний сезон + 1\',\r\n  \'episode_type_1\' => \'Форматированная серия вида 1 серия, 2 серия, 3 серия\',\r\n  \'episode_type_2\' => \'Форматированная серия вида 1 серия, 1-2 серия, 1-3 серия, 1-4 серия\',\r\n  \'episode_type_3\' => \'Форматированная серия вида 1 серия, 1,2 серия, 1,2,3 серия, 1,2,3,4 серия\',\r\n  \'episode_type_4\' => \'Форматированная серия + 1 вида: если 1 серия - 1,2 серия, если 2 серия - 1,2,3 серия, если 5 серия - 4,5,6 серия\',\r\n  \'episode_type_5\' => \'Форматированная серия + 1 вида 1,2 серия, 1,2,3 серия, 1,2,3,4,5 серия, 1-5,6,7 серия\',\r\n  \'season_type_1\' => \'Форматированный сезон вида 1 сезон, 2 сезон, 3 сезон\',\r\n  \'season_type_2\' => \'Форматированный сезон вида 1 сезон, 1-2 сезон, 1-3 сезон\',\r\n  \'season_type_3\' => \'Форматированный сезон вида 1 сезон, 1,2 сезон, 1,2,3 сезон\',\r\n];\r\n\r\n$serial_arr =[];\r\n  \r\n\r\nforeach ($serial_arr as $key => $value) {\r\n\r\n  $options = \"\";\r\n\r\n  foreach ( xfieldsload() as $xfield ) {\r\n\r\n    if ( $xfield[3]==\'text\' ) {\r\n\r\n\r\n      \r\n      if ( isset($config_mod[\'xfields\'][$key]) && \'{\'.$xfield[0].\'}\'== $config_mod[\'xfields\'][$key]) {\r\n        $selected = \" selected\";\r\n      } else {\r\n        $selected = \"\";\r\n      }\r\n\r\n      $options .= \'<option value=\"{\' . $key . \'}\"\' . $selected . \'>\' . $xfield[1] . \'</option>\';\r\n    }\r\n  }\r\n\r\n  if ( $options != \"\" )  $serial_tab .= \"<tr><td class=\\\"col-xs-6 col-sm-6 col-md-7\\\"><h8 class=\\\"media-heading text-semibold\\\">{$value}</h8></td><td class=\\\"col-xs-6 col-sm-6 col-md-7 white-line\\\"><select name=\\\"config[xfields][$key]\\\" style=\\\"width:100%;max-width:350px;\\\" class=\\\"uniform\\\"><option value=\\\" \\\">--- не выбрано ---</option>{$options}</select></td></tr>\";\r\n\r\n}\r\n\r\n\r\n\r\n$serial_tab = <<<HTML\r\n<style type=\"text/css\">\r\n  .rcol-2col {\r\n      width: 100%;\r\n      margin: 0 20px 0 0;\r\n  }\r\n  .rcol-2col-header {\r\n      background: #e1e1e1;\r\n      font: 400 14px/1.5 \'Trebuchet MS\';\r\n      color: #7d7d7f;\r\n      height: 40px !important;\r\n      padding: 10px 20px;\r\n      z-index: 5;\r\n      position: relative;\r\n      cursor: pointer;\r\n  }\r\n  .rcol-2col-header span {\r\n      float: left;\r\n  }\r\n  .show-hide {\r\n      float: right;\r\n  }\r\n</style>\r\n<script type=\"text/javascript\">\r\n  $(function(){\r\n    $(\'.rcol-2col-header\').click(function(){\r\n      $(\'.rcol-2col-body\').toggle()\r\n    });\r\n  });\r\n</script>\r\n<div class=\"rcol-2col-body\" style=\"padding: 10px 20px; display: block;\">1. Закинуть tpl файлы из папки \"Постраничный вывод серий и сезонов/templates\" - в шаблон Вашего сайта\r\n<br>\r\n2. Открываем .htaccess в корне сайта, ищем в нем код\r\n<br>\r\nRewriteEngine On\r\n<br><br>\r\nниже вставляем:\r\n<br><br>\r\nRewriteRule ^([^.]+)/([0-9]+)-(.*)/([0-9]+)-season.html$ index.php?newsid=$2&amp;seourl=$3&amp;seocat=$1&amp;season=$4 [L]\r\nRewriteRule ^([^.]+)/([0-9]+)-(.*)/([0-9]+)-season-([0-9]+)-episode.html$ index.php?newsid=$2&amp;seourl=$3&amp;seocat=$1&amp;season=$4&amp;episode=$5 [L]\r\n\r\nRewriteRule ^([0-9]+)-(.*)/([0-9]+)-season.html$ index.php?newsid=$1&amp;seourl=$2&amp;season=$3 [L]\r\nRewriteRule ^([0-9]+)-(.*)/([0-9]+)-season-([0-9]+)-episode.html$ index.php?newsid=$1&amp;seourl=$2&amp;season=$3&amp;episode=$4 [L]\r\n<br><br>\r\n3. Закинуть папку \"Постраничный вывод серий и сезонов/engine\" в корень сайта\r\n<br>\r\n4. Установить плагин serialy.xml\r\n<br>\r\n5. Установить плагин fullstory-metatags-by-sander.xml\r\n<br>\r\n6. Открываем Ваш шаблон/serialy/episode.tpl, копируем сюда содержимое вашего fullstory.tpl и перенастраиваем под страницу серий.\r\n<br>\r\n7. Настраиваем вид серий - series.tpl и сезонов - season.tpl\r\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n              <tbody><tr class=\"rcol-2col-body-tr-even\"></tr></tbody></table></div>\r\n<table class=\"table table-normal\">$serial_tab</table>\r\n<div class=\"rcol-2col\">\r\n      <div class=\"rcol-2col-header\">\r\n          <span>Список доступных тегов внутри шаблона</span>\r\n          <div class=\"show-hide\">Show</div>\r\n      </div>\r\n         \r\n          <div class=\"rcol-2col-body\" style=\"padding: 10px 20px; display: block;\">\r\n          <table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n              <tbody>\r\n                <tr class=\"rcol-2col-body-tr-even\">\r\n                  <td width=\"50%\">1. <b>{season}</b> - Сезон<br>2. <b>{episode}</b> - Серия</td>\r\n                  <td width=\"50%\">11.<b>{serialy news-id=\"{news-id}\" season=\"{season}\" sort=\"asc\"}</b> - выведет все эпизоды внутри просматриваемого сезона<br>12. <b>{serialy news-id=\"{news-id}\" season=\"[xfvalue_last_season]\" sort=\"asc\"}</b> - для вывода серий из последнего сезона</td>\r\n                </tr><tr class=\"rcol-2col-body-tr-even\">\r\n                  <td width=\"50%\">3.<b> [active][/active]</b> - Тег для подсветки текущего эпизода, который просматривает пользователь (в сезонах есть по умолчанию)<br>4.<b> {episode-title}</b> - Название эпизода</td>\r\n                  <td width=\"50%\">13. <b>{serialy sort=\"id\" last=\"yes\" limit=\"5\" template=\"abc\"}</b> - выведет последние пять добавленных на сайт эпизодов, например, на главной странице в main.tpl\r\n<br>14.<b> href=\"{first-episode-link}\"</b> - ссылка на первый эпизод первого сезона. </td>\r\n                </tr><tr class=\"rcol-2col-body-tr-even\">\r\n                  <td width=\"50%\">5.<b> {news-title}</b> - Название сериала<br>6.<b> {kadr}</b>  - Постер серии *для работы тега нужно создать доп поле \"kadr\", тип поля \"загружаемое изображение\"</td>\r\n                  \r\n                </tr><tr class=\"rcol-2col-body-tr-even\">\r\n                  <td width=\"50%\">7.<b> {story}</b> - Описание эпизода<br>8.<b> [prev-episode]{prev-episode} серия[/prev-episode]</b> - Ссылка на предыдущий эпизод, внутри сезона</td>\r\n                  \r\n                </tr><tr class=\"rcol-2col-body-tr-even\">\r\n                  <td width=\"50%\">9.<b> [next-episode]{next-episode} серия[/next-episode]</b> - Ссылка на следующий эпизод, внутри сезона<br>10.<b> {season=[xfvalue_last_season]}</b> -  тег для вывода ссылок на все сезоны сериала, где [xfvalue_last_season] - это доп. поле с последним сезоном</td>\r\n                  \r\n                </tr>\r\n                \r\n          </tbody></table>\r\n        </div>\r\n      </div>\r\nHTML;\r\n\r\n\r\n\r\n\r\n?>\r\n<div class=\"row\">\r\n	<div class=\"col-md-12\">\r\n		<div class=\"<?=($config[\'version_id\']>=12)?\"panel\":\"box\"?>\">\r\n		    <div class=\"<?=($config[\'version_id\']>=12)?\"panel-heading\":\"box-header\"?>\">\r\n				<ul class=\"nav nav-tabs <?=($config[\'version_id\']>=12)?\"nav-tabs-solid\":\"nav-tabs-left\"?>\">\r\n					<li class=\"active\">\r\n						<a href=\"#main\" data-toggle=\"tab\">\r\n							<i class=\"fa fa-home position-left\"></i> \r\n							Заголовок и метатеги\r\n						</a>\r\n					</li>		\r\n\r\n					<li>\r\n						<a href=\"#xfields\" data-toggle=\"tab\">\r\n							<i class=\"fa fa-tasks position-left\"></i> \r\n							Дополнительные поля\r\n						</a>\r\n					</li>	\r\n\r\n					<li>\r\n						<a href=\"#cats\" data-toggle=\"tab\">\r\n							<i class=\"fa fa-tasks position-left\"></i> \r\n							Категории\r\n						</a>\r\n					</li>	\r\n\r\n					<li>\r\n						<a href=\"#tags\" data-toggle=\"tab\">\r\n							<i class=\"fa fa-pencil-square-o position-left\"></i>\r\n							Теги\r\n						</a>\r\n					</li>	\r\n          <li>\r\n            <a href=\"#serial\" data-toggle=\"tab\">\r\n              <i class=\"fa fa-tv position-left\"></i>\r\n           Авторазбивка сериалов на страницы с сериями\r\n            </a>\r\n          </li> \r\n          <li>\r\n            <a href=\"#rebuild\" data-toggle=\"tab\">\r\n              <i class=\"fa fa-code position-left\"></i>\r\n              Простановка\r\n            </a>\r\n          </li> 			\r\n				</ul>\r\n			</div>\r\n\r\n			<form id=\"config\">\r\n	            <div class=\"box-content\">\r\n	                <div class=\"tab-content\">  	                  \r\n		                <div class=\"tab-pane active\" id=\"main\">\r\n				<div class=\"panel-body\">\r\n					Общие настройки\r\n				</div>\r\n	                    	<table class=\"table table-normal\">\r\n							    <tbody>\r\n									<?=$main?>\r\n							    </tbody>\r\n							</table>							\r\n	                    </div>\r\n\r\n	                    <div class=\"tab-pane\" id=\"xfields\">\r\n	                    	<table class=\"table table-normal\">\r\n							    <tbody>\r\n									<?=$xfields?>\r\n							    </tbody>\r\n							</table>							\r\n	                    </div>\r\n\r\n	                    <div class=\"tab-pane\" id=\"cats\">\r\n	                    	<table class=\"table table-normal\">\r\n							    <tbody>\r\n									<?=$cats?>\r\n							    </tbody>\r\n							</table>							\r\n	                    </div>\r\n\r\n\r\n<div class=\"tab-pane\" id=\"serial\">\r\n  \r\n  <?=$serial_tab ?>\r\n            \r\n</div>\r\n\r\n\r\n	                    <div class=\"tab-pane\" id=\"tags\">\r\n	                    	<div style=\"padding: 25px;text-align: center;font-size: 14px\">Список тегов для вывода информации в заголовок, метатеги и теги новости. Используйте на вкладке «Заголовок и метатеги».</div>\r\n	                    	<table class=\"table table-normal\">\r\n							    <tbody>\r\n									<?=$tags?>\r\n							    </tbody>\r\n							</table>							\r\n	                    </div>\r\n\r\n                      <div class=\"tab-pane\" id=\"rebuild\">\r\n                        <div class=\"panel-body\">\r\n                          Простановка данных на уже существующих фильмах.<br>\r\n                          <b>Внимание:</b> Перед простановкой пожалуйста заполните все предыдущие вкладки и сохраните. А так же настоятельно рекомендуем сделать бекап своей базы данных.<br>\r\n                          Простановка будет происходить не зависимо от включения автодобавление и автообновления. Заполняться будут только выбраные вами категории и доп поля.\r\n                        </div>\r\n                        \r\n                        <div class=\"panel-body\">\r\n                          <div class=\"progress\">\r\n                            <div id=\"progressbar\" class=\"progress-bar progress-blue\" style=\"width:0%;\"><span></span></div>\r\n                          </div>\r\n                        </div>\r\n                        \r\n                        <div class=\"panel-body\">\r\n                          Общее количество новостей:&nbsp;<?=$row[\'count\'];?>,&nbsp;обработано:&nbsp;<span class=\"text-danger\"><span id=\"newscount\"><?=$rebuildcount;?></span></span>&nbsp;<span id=\"progress\"></span>\r\n                        </div>\r\n                        \r\n                        <div class=\"panel-footer\">\r\n                          <a id=\"button\" class=\"btn bg-teal btn-sm btn-raised position-left\"><?if($rebuildcount>0):?>Продолжить простановку<?else:?>Начать простановку<?endif;?></a>\r\n                          <?if($rebuildcount>0):?><a id=\"start_new\" class=\"btn bg-danger btn-sm btn-raised position-left\">Начать заново</a><?endif;?>\r\n                        </div>\r\n                      </div>\r\n\r\n	                </div>\r\n\r\n	                <div class=\"<?=($config[\'version_id\']>=12)?\"panel-footer\":\"box-footer\"?> padded\">\r\n                     <input onclick=\"save_config(); return false;\" class=\"btn bg-teal btn-raised legitRipple\" type=\"submit\" value=\"Сохранить настройки\">\r\n\r\n                     <button type=\"button\" class=\"btn bg-danger btn-raised legitRipple\" id=\"clear-tbl\">Обновить очередь</button>\r\n\r\n                     <input onclick=\"switch_sections(); return false\" class=\"btn <?=($config[\'version_id\']>=12)?\"btn-bluebg-primary-600\":\"btn-blue\"?>\" style=\"float: right;\" type=\"button\" value=\"Ссылка в меню «Сторонние модули» (вкл/выкл)\">\r\n                   </div>\r\n	            </div>\r\n	        </form>\r\n        </div>\r\n    </div>\r\n</div>\r\n\r\n<script type=\"text/javascript\">\r\nfunction save_config() {	\r\n	$.post(\'<?=$config[\'admin_path\']?>?mod=<?=$mod?>&action=config\', $(\'#config\').serialize(), function(data){ \r\n		data = JSON.parse(data);\r\n    Growl.info({\r\n        title: \'Информация\',\r\n        text: data.message\r\n    });\r\n	});  \r\n}\r\n\r\n$(function(){\r\n  $(\'#clear-tbl\').click(function() {\r\n    DLEconfirm(\'Желаете очистить таблицу?\',\'Подтверждение\',function(){\r\n      $.post(\'\',{action:\'clear\'}, function(d){\r\n        Growl.info({\r\n            title: \'Информация\',\r\n            text: d\r\n        });\r\n      });\r\n    })\r\n  });\r\n});\r\n\r\nfunction switch_sections() {	\r\n	$.get(\'<?=$config[\'admin_path\']?>?mod=<?=$mod?>&action=sections\', null, function(data){\r\n		data = JSON.parse(data);\r\n		DLEalert( data.message, \'<?=$__name?>\' );\r\n	});  \r\n}\r\n\r\n$(\'.categoryselect\').chosen({no_results_text: \'Ничего не найдено\'});\r\n</script>\r\n\r\n<script>\r\nvar total = <?=$row[\'count\'];?>;\r\nvar startfrom = <?=$startfrom;?>;\r\nvar rebuildcount = <?=$rebuildcount;?>;\r\n\r\nvar proc = Math.round( (100 * rebuildcount) / total );\r\nif (proc>=100){\r\n  proc = 100;\r\n  $(\'#button\').attr(\"disabled\", \"disabled\");\r\n}\r\n$(\'#progressbar\').css( \"width\", proc + \'%\' );\r\n\r\n$(function() {\r\n  $(\'#button\').click(function() {\r\n    $(\"#progress\").ajaxError(function(event, request, settings){\r\n      $(this).html(\'<?=$lang[\'nl_error\'];?>\');\r\n      $(\'#button\').attr(\"disabled\", false);\r\n    });\r\n    $(\'#progress\').html(\'<?=$lang[\'rebuild_status\'];?>\');\r\n    $(\'#button\').attr(\"disabled\", \"disabled\");\r\n    $(\'#button\').val(\"<?=$lang[\'rebuild_forw\'];?>\");\r\n    senden(startfrom);\r\n    return false;\r\n  });\r\n  \r\n  $(\'#start_new\').click(function() {\r\n    $(\'#newscount\').html(0);\r\n    $(\'#progressbar\').css(\"width\", \'0%\');\r\n    $(\'#start_new\').hide();\r\n    $(\"#progress\").ajaxError(function(event, request, settings){\r\n      $(this).html(\'<?=$lang[\'nl_error\'];?>\');\r\n      $(\'#button\').attr(\"disabled\", false);\r\n    });\r\n    $(\'#progress\').html(\'<?=$lang[\'rebuild_status\'];?>\');\r\n    $(\'#button\').attr(\"disabled\", \"disabled\");\r\n    $(\'#button\').val(\"<?=$lang[\'rebuild_forw\'];?>\");\r\n    senden(0,1);\r\n    return false;\r\n  });\r\n});\r\n\r\nfunction senden(startfrom, start_new=0){\r\n  $.post(\"engine/ajax/controller.php?mod=alloha_rebuild&user_hash=<?=$dle_login_hash;?>\", { startfrom: startfrom, start_new: start_new },\r\n    function(data){\r\n      if (data) {\r\n        if (data.status == \"ok\") {\r\n          $(\'#newscount\').html(data.rebuildcount);\r\n          var proc = Math.round( (100 * data.rebuildcount) / total );\r\n          if ( proc > 100 ) proc = 100;\r\n          $(\'#progressbar\').css( \"width\", proc + \'%\' );\r\n              if (data.rebuildcount >= total) {\r\n                 $(\'#progress\').html(\'<?=$lang[\'rebuild_status_ok\'];?>\');\r\n              }\r\n              else { \r\n                 senden(data.startfrom);\r\n              }\r\n        }\r\n      }\r\n    }, \"json\").fail(function() {\r\n      $(\'#progress\').html(\'<?=$lang[\'nl_error\'];?>\');\r\n      $(\'#button\').attr(\"disabled\", false);\r\n    });\r\n  return false;\r\n}\r\n</script>\r\n\r\n<div style=\"padding: 10px 0px 30px 0px;text-align: center;\">\r\n  Интернет-магазин <<Всё для вебмастера>>: <a style=\"color: blue\" href=\"https://https://pq.hosting/?from=18874\" target=\"_blank\">Alloha регистрация</a>  | Telegram-канал:<a style=\"color: blue\" href=\"https://t.me/codescript_shop\" target=\"_blank\"> @codescript_shop</a>\r\n</div>\r\n\r\n<?php echofooter(); ?>\r\n  ', 1, 0, 0, 1, '', '=='),
(216, 9, 'engine/inc/addnews.php', 'after', 'echo $categoryfilter;', 'require_once DLEPlugins::Check(ENGINE_DIR . \'/modules/alloha.php\');', 1, 0, 0, 1, '', '==');
INSERT INTO `dle_plugins_files` (`id`, `plugin_id`, `file`, `action`, `searchcode`, `replacecode`, `active`, `searchcount`, `replacecount`, `filedisable`, `filedleversion`, `fileversioncompare`) VALUES
(217, 9, 'engine/inc/addnews.php', 'after', '$id = $db->insert_id();', '				$config_mod = unserialize( file_get_contents( ENGINE_DIR . \'/data/alloha.config\' ) );\r\n				if ( !$config_mod ) $config_mod = array();\r\n\r\n				$xf_config = array_map(function($el) {\r\n				    return str_replace([\'{\', \'}\'], \'\', $el);\r\n				}, $config_mod[\'xfields\']);\r\n\r\n				$xf_config = array_flip($xf_config);\r\n				$kinopoisk_id = intval($_POST[\'xfield\'][$xf_config[\'kinopoisk_id\']]);\r\n\r\n$db->query( \"UPDATE \" . PREFIX . \"_post SET kinopoisk_id=\'$kinopoisk_id\' WHERE id = \'{$id}\'\" );', 1, 0, 0, 1, '', '=='),
(218, 9, 'engine/inc/editnews.php', 'after', 'echo $categoryfilter;', 'require_once DLEPlugins::Check(ENGINE_DIR . \'/modules/alloha.php\');', 1, 0, 0, 1, '', '=='),
(219, 9, 'engine/inc/editnews.php', 'after', '$db->query( \"DELETE FROM \" . PREFIX . \"_xfsearch WHERE news_id = \'{$item_db[0]}\'\" );', '				$config_mod = unserialize( file_get_contents( ENGINE_DIR . \'/data/alloha.config\' ) );\r\n				if ( !$config_mod ) $config_mod = array();\r\n\r\n				$xf_config = array_map(function($el) {\r\n				    return str_replace([\'{\', \'}\'], \'\', $el);\r\n				}, $config_mod[\'xfields\']);\r\n\r\n				$xf_config = array_flip($xf_config);\r\n				$kinopoisk_id = intval($_POST[\'xfield\'][$xf_config[\'kinopoisk_id\']]);\r\n\r\n				$db->query( \"UPDATE \" . PREFIX . \"_post SET kinopoisk_id=\'$kinopoisk_id\' WHERE id = \'{$item_db[0]}\'\" );', 1, 0, 0, 1, '', '=='),
(220, 9, 'engine/modules/alloha.php', 'create', '', '<?php\r\n\r\nif (version_compare(\'15\', $config[\'version_id\'], \'<=\')) {\r\n    define(\'DLE15\', true);\r\n}\r\n\r\nini_set(\'display_errors\', 1); \r\n\r\nif (defined(\'DLE15\')) {\r\n    include_once ENGINE_DIR . \'/classes/composer/vendor/autoload.php\';\r\n}\r\n\r\nelse {\r\n    include_once ENGINE_DIR . \'/classes/thumb.class.php\';\r\n}\r\n\r\n\r\nrequire_once DLEPlugins::Check(ENGINE_DIR . \'/modules/alloha.func.php\');\r\n\r\n$config_mod = unserialize( file_get_contents( ENGINE_DIR . \'/data/alloha.config\' ) );\r\nif ( !$config_mod ) $config_mod = array(); \r\n\r\n$flip_config = array_flip($config_mod[\'xfields\']);\r\n\r\n$iframe_xf = $flip_config[\'{iframe_url}\'];\r\n$trailer_xf = $flip_config[\'{trailer}\'];\r\n$ads_xf = $flip_config[\'{instream_ads}\'];\r\n\r\nif (isset($_POST[\'q_search\']) ) {\r\n\r\n    check_license_alloha();\r\n\r\n    if ($member_id[\'user_group\']>1) {\r\n        die(\'{\"error\": \"for admin user only\"}\');\r\n    }\r\n\r\n    $q_search = trim($_POST[\'q_search\']);\r\n    \r\n    $in_trailer =0;\r\n    if(trim($_POST[\'trailer\'])==1) $in_trailer=1;\r\n    \r\n    \r\n\r\n    if (preg_match(\'/[^0-9]/\', $q_search)) {\r\n        $search_type = \'by_name\';\r\n        if($in_trailer){\r\n			$res = request(\'https://api.apbugall.org/?token=\'.$config_mod[\'api_token\'].\'&list&trailer&name=\'.urlencode($q_search));\r\n		}\r\n		else{\r\n			$res = request(\'https://api.apbugall.org/?token=\'.$config_mod[\'api_token\'].\'&list&name=\'.urlencode($q_search));\r\n		}\r\n    } else {\r\n        $search_type = \'by_kpid\';\r\n        if($in_trailer){\r\n			$res = request(\'https://api.apbugall.org/?token=\'.$config_mod[\'api_token\'].\'&trailer&kp=\'.intval($q_search));\r\n		}else{\r\n			$res = request(\'https://api.apbugall.org/?token=\'.$config_mod[\'api_token\'].\'&kp=\'.intval($q_search));\r\n		}\r\n	}\r\n\r\n\r\n    $res = json_decode($res, true);\r\n\r\n    if(!count($res[\'data\'])) die(\'{\"error\": \"нет результатов\"}\');\r\n\r\n    if($res[\'status\']==\'error\') die(\'{\"error\": \"\'.$res[\'error_info\'].\'\"}\');\r\n\r\n    if ($search_type==\'by_kpid\') {\r\n        $res[\'data\'] = [$res[\'data\']];\r\n    }\r\n\r\n    foreach ($res[\'data\'] as $value) {\r\n        $src = $value[\'poster\'] ? $value[\'poster\'] : \'data:image/gif;base64,R0lGODlhAQABAIAAAAUEBAAAACwAAAAAAQABAAACAkQBADs=\';\r\n        $data[] = \'<div class=\"alloha_item\" data-id=\"\'.$value[\'id_kp\'].\'\" data-trailer=\"\'.$in_trailer.\'\"><div class=\"aone\"><img src=\"\'.$value[\'poster\'].\'\"></div><div class=\"atwo\"><span class=\"kp-id\" title=\"kinopoisk id\"><b>КП: </b>\'.$value[\'id_kp\'].\'</span> <div class=\"title\" title=\"Жми чтобы спарсить\">\'.$value[\'name\'].\'</div><div class=\"title_origin\">\'.$value[\'original_name\'].\'</div></div></div>\';\r\n    }\r\n\r\n    echo json_encode([\"ok\" => true, \"result\" => implode(\"\\n\", $data)]);\r\n\r\n    exit();\r\n\r\n}\r\n\r\n\r\n\r\nif ($_POST[\'action\']==\'update\') {\r\n\r\n    check_license_alloha();\r\n	\r\n	$reqUrl = \'https://api.apbugall.org/?token=\'.$config_mod[\'api_token\'].\'&kp=\'.intval($_POST[\'id_kp\']);\r\n	\r\n    $type = $_POST[\'type\'];\r\n	\r\n	if($type==\'trailer\') {\r\n		$reqUrl = \'https://api.apbugall.org/?token=\'.$config_mod[\'api_token\'].\'&trailer&kp=\'.intval($_POST[\'id_kp\']);\r\n	}\r\n	\r\n	$res = request($reqUrl);\r\n    $res = json_decode($res, true);\r\n	\r\n	if(!count($res[\'data\'])) die(\'{\"error\": \"нет результатов\"}\');\r\n\r\n    if ($type==\'iframe\' and $res[\'data\'][\'iframe\']) {\r\n        die(\'{\"ok\": \"\'.$res[\'data\'][\'iframe\'].\'\"}\'); \r\n    } elseif ($type==\'trailer\' and $res[\'data\'][\'iframe\']) {\r\n        die(\'{\"ok\": \"\'.$res[\'data\'][\'iframe\'].\'\"}\');    \r\n    } else {\r\n        die(\'{\"error\": \"нет iframe\"}\');\r\n    }\r\n\r\n\r\n}\r\n\r\n\r\n\r\n\r\n\r\nif ($_POST[\'action\']==\'parse\') {\r\n\r\n    check_license_alloha();\r\n    \r\n    $in_trailer =0;\r\n    if($_POST[\'trailer\']==1) $in_trailer=1;\r\n    if (!empty($_POST[\'id_kp\'])) {\r\n		\r\n		if($in_trailer){ \r\n			$res = request(\'https://api.apbugall.org/?token=\'.$config_mod[\'api_token\'].\'&trailer&kp=\'.intval($_POST[\'id_kp\']));\r\n		}\r\n		else{\r\n			$res = request(\'https://api.apbugall.org/?token=\'.$config_mod[\'api_token\'].\'&kp=\'.intval($_POST[\'id_kp\']));\r\n	    }		\r\n    } else {\r\n        $res = request(\'https://api.apbugall.org/?token=\'.$config_mod[\'api_token\'].\'&name=\'.urlencode($_POST[\'name\']));\r\n    }\r\n\r\n\r\n    $res = json_decode($res, true);\r\n   \r\n    if(!count($res[\'data\'])) die(\'{\"error\": \"нет результатов2 - \'.$kl.\' трейлер - \'.$_POST[\'id_kp\'].\'\"}\');\r\n\r\n    if($res[\'status\']==\'error\') die(\'{\"error\": \"\'.$res[\'error_info\'].\'\"}\');\r\n\r\n    $res = $res[\'data\'];\r\n\r\n    $res[\'country\'] = str_replace(\', \', \',\', $res[\'country\']);  \r\n    $res[\'genre\'] = str_replace(\', \', \',\', $res[\'genre\']);  \r\n\r\n\r\n    if( ($premiere = strtotime($res[\'premiere\']))!==false && $res[\'premiere\'] ){\r\n        $res[\'premiere\'] = date(\'j\', $premiere).\' \'.$langdate[date(\'F\', $premiere)].\' \'.date(\'Y\', $premiere);\r\n    }\r\n    if( ($premiere_ru = strtotime($res[\'premiere_ru\']))!==false && $res[\'premiere_ru\'] ){\r\n        $res[\'premiere_ru\'] = date(\'j\', $premiere_ru).\' \'.$langdate[date(\'F\', $premiere_ru)].\' \'.date(\'Y\', $premiere_ru);\r\n    }\r\n\r\n    $request = [];\r\n\r\n    $is_serial = false;\r\n\r\n    $news_id = intval($_POST[\'news_id\']);\r\n    $author = isset($_POST[\'author\']) ? $_POST[\'author\'] : $member_id[\'name\'];\r\n    $author = $db->safesql($author);\r\n\r\n    $old_poster = !empty($_POST[\'poster\']) ? $_POST[\'poster\'] : \'\';\r\n\r\n    $news_id && alloha_mass_series($news_id, $res);\r\n\r\n    if($res[\'seasons_count\']){\r\n\r\n        $request[\'last_season\'] = $res[\'seasons_count\'];\r\n        $request[\'last_episode\'] = $res[\'last_episode\'];\r\n\r\n        $episodes = array_shift($res[\'seasons\']);\r\n        $episodes = count($episodes[\'episodes\']);\r\n        $request[\'episode_count\'] = $episodes;\r\n\r\n        $request[\'last_translate\'] = trim( @array_shift(explode(\',\', $res[\'translation\'])) );\r\n\r\n        $is_serial = true;\r\n    }\r\n\r\n    $ex_genres = array();\r\n\r\n    if ($res[\'category\']==\'2\' && mb_stripos($res[\'genre\'], \'мультфильм\')===false) {\r\n        $ex_genres[] = \"сериал\"; $request[\'video_type\'] = \'сериал\';\r\n        if (!$config_mod[\'add_serial\']) {\r\n            die(\'{\"error\": \"not allowed serial\"}\');\r\n        }\r\n    }\r\n\r\n    if ($res[\'category\']==\'1\' && mb_stripos($res[\'genre\'], \'мультфильм\')===false) {\r\n        $ex_genres[] = \"фильм\"; $request[\'video_type\'] = \'фильм\';\r\n        if (!$config_mod[\'add_film\']) {\r\n            die(\'{\"error\": \"not allowed film\"}\');\r\n        }\r\n    }\r\n\r\n    if ($res[\'category\']==\'5\') {\r\n        $ex_genres[] = \"тв шоу\"; $request[\'video_type\'] = \'тв шоу\';\r\n    }\r\n\r\n    if (mb_stripos($res[\'genre\'], \'мультфильм\')!==false) {\r\n        if ($is_serial) {\r\n            $request[\'video_type\'] = \"мультсериал\";\r\n            $ex_genres[] = \"мультсериал\";\r\n\r\n            if (!$config_mod[\'add_multserial\'] && !$config_mod[\'add_animeserial\']) {\r\n                die(\'{\"error\": \"not allowed multserial\"}\');\r\n            }\r\n\r\n        } else {\r\n            $request[\'video_type\'] = \'мультфильм\';\r\n            $ex_genres[] = \"мультфильм\";\r\n\r\n            if (!$config_mod[\'add_multfilm\'] && !$config_mod[\'add_anime\']) {\r\n                die(\'{\"error\": \"not allowed multfilm\"}\');\r\n            }\r\n\r\n        }\r\n    }\r\n\r\n    if (mb_stripos($res[\'country\'], \'россия\')===false && mb_stripos($res[\'country\'], \'ссср\')===false) {\r\n        $ex_genres[] = \"зарубежный\";\r\n    }\r\n\r\n    if ($res[\'category\']==\'4\') {\r\n        $ex_genres[] = \"аниме сериал\"; $request[\'video_type\'] = \'аниме сериал\';\r\n    }\r\n\r\n    if ($res[\'category\']==\'3\') {\r\n        $ex_genres[] = \"аниме\"; $request[\'video_type\'] = \'аниме\';\r\n    }\r\n\r\n\r\n    $genres = fixGenres(explode(\',\', $res[\'genre\']));\r\n\r\n\r\n    $inter = array_merge($ex_genres, $genres, explode(\',\', $res[\'country\']), array($res[\'year\']));\r\n\r\n    if ($request[\'video_type\'] == \'мультсериал\') {\r\n        $inter = array_diff($inter, [\'мультфильм\']);\r\n    }\r\n\r\n    if ($res[\'category\']==\'3\') {\r\n        $inter = array_diff($inter, [\'зарубежный\', \'мультфильм\']);\r\n    }\r\n\r\n    if ($res[\'category\']==\'4\') {\r\n        $inter = array_diff($inter, [\'зарубежный\', \'мультсериал\', \'мультфильм\', \'аниме\']);\r\n    }\r\n\r\n\r\n    $cats=array();\r\n               \r\n     foreach ($config_mod[\'category\'] as $cat_id => $values) {\r\n    $f = true;\r\n\r\n    foreach ($values as $value) {\r\n        if ( !in_array($value, $inter) ) {\r\n            $f = false;\r\n            break;\r\n        }\r\n    }\r\n\r\n    if ( $f ) $cats[] = $cat_id;\r\n}\r\n               \r\n\r\n    if ($config_mod[\'max_actors\']) {\r\n        $res[\'actors\'] = explode(\',\', $res[\'actors\']);\r\n        $res[\'actors\'] = array_slice($res[\'actors\'], 0, intval($config_mod[\'max_actors\']));\r\n        $res[\'actors\'] = implode(\',\', $res[\'actors\']);\r\n    }\r\n\r\n    if ($config_mod[\'max_directors\']) {\r\n        $res[\'directors\'] = explode(\',\', $res[\'directors\']);\r\n        $res[\'directors\'] = array_slice($res[\'directors\'], 0, intval($config_mod[\'max_directors\']));\r\n        $res[\'directors\'] = implode(\',\', $res[\'directors\']);\r\n    }\r\n\r\n    $res[\'genre\'] = preg_replace_callback(\'/,([^,]|\\s+)/u\', function($m){\r\n        return \',\'.(strpos(\' \', $m[1]) ? \' \' : \' \'.$m[1]);\r\n    }, $res[\'genre\']);\r\n\r\n    $res[\'country\'] = preg_replace_callback(\'/,([^,]|\\s+)/u\', function($m){\r\n        return \',\'.(strpos(\' \', $m[1]) ? \' \' : \' \'.$m[1]);\r\n    }, $res[\'country\']);\r\n\r\n    $config_mod[\'category\'] = implode(\",\", $cats);\r\n\r\n    $request[\'title_ru\']      = $res[\'name\'];\r\n    $request[\'title_en\']      = $res[\'original_name\'];\r\n    $request[\'title_alt\']     = $res[\'alternative_name\'];\r\n    $request[\'token_movie\']  = $res[\'token_movie\'];\r\n    $request[\'year\']          = $res[\'year\'];\r\n    $request[\'description\']   = html_entity_decode($res[\'description\'], ENT_HTML5);\r\n    $request[\'countries\']     = $res[\'country\'];\r\n    $request[\'genres\']        = $res[\'genre\'];\r\n    $request[\'actors\']        = $res[\'actors\'];\r\n    $request[\'iframe_url\']    = $res[\'iframe\'];\r\n    $request[\'quality\']       = $res[\'quality\'];\r\n    $request[\'slogan\']        = $res[\'tagline\'];\r\n    $request[\'directors\']     = $res[\'directors\'];\r\n    $request[\'producer\']      = $res[\'producers\'];\r\n    $request[\'translator\']    = $res[\'translation\'];\r\n    $request[\'trailer\']       = $res[\'iframe_trailer\'];\r\n\r\n    $request[\'premiere_ru\']    = $res[\'premiere_ru\'];\r\n    $request[\'premiere_world\'] = $res[\'premiere\'];\r\n\r\n    $request[\'rating_kp\']        = $res[\'rating_kp\'];\r\n    $request[\'rating_imdb\']      = $res[\'rating_imdb\'];\r\n    $request[\'rating_world_art\'] = $res[\'world_art\'];\r\n    $request[\'rate_mpaa\']        = $res[\'rating_mpaa\'];\r\n\r\n    $request[\'kinopoisk_id\']     = $res[\'id_kp\'];\r\n    $request[\'imdb_id\']          = $res[\'id_imdb\'];\r\n    $request[\'tmdb_id\']          = $res[\'id_tmdb\'];\r\n    $request[\'world_art_id\']     = $res[\'id_world_art\'];\r\n\r\n    $request[\'age\']          = $res[\'age_restrictions\'];\r\n    $request[\'time\']         = $res[\'time\'];\r\n    $request[\'instream_ads\'] = ($res[\'ads\']==\'\') ? \'\' : 1;\r\n\r\n    if($request[\'title_en\']==$request[\'title_ru\']) $request[\'title_en\']=\'\';\r\n\r\n    if ($config_mod[\'upload_poster\']) {\r\n        $poster_file = $_POST[\'id_kp\'].\'_\'.time();\r\n        $poster = request($res[\'poster\'], ROOT_DIR . \"/uploads/posts/\" . FOLDER_PREFIX.\'/\' .$poster_file);\r\n        if($poster){\r\n\r\n            if ($config_mod[\'poster_size\']) {\r\n\r\n                $t_seite = intval($config[\'t_seite\']);\r\n                $t_size = $config_mod[\'poster_size\'];\r\n\r\n                $thumb = new thumbnail( $poster );\r\n\r\n                if( $thumb->size_auto( $t_size, $t_seite ) ) {\r\n                                    \r\n                   /*$thumb->jpeg_quality( $config[\'jpeg_quality\'] );\r\n                    \r\n                    $thumb->save( $poster );\r\n                    \r\n                    @chmod( $poster, 0666 );*/\r\n\r\n                    /**\r\n                     * Dle 15\r\n                     */\r\n\r\n                    if (defined(\'DLE15\')) {\r\n\r\n                       $newFile = $thumb->save(str_replace(ROOT_DIR.\"/uploads/\" , \'\', $poster));\r\n\r\n                       $poster = ROOT_DIR . \"/uploads/posts/\" . FOLDER_PREFIX . \'/\' . $newFile;\r\n                    }\r\n                    else {\r\n                        $thumb->jpeg_quality( $config[\'jpeg_quality\'] );\r\n                                            \r\n                        $thumb->save( $poster );\r\n                    }\r\n\r\n\r\n\r\n                    @chmod( $poster, 0666 );\r\n\r\n                    /**************/\r\n                    \r\n\r\n                }\r\n\r\n            }\r\n\r\n            $request[\'poster\'] = str_replace(ROOT_DIR.\'/\' , $config[\'http_home_url\'], $poster);\r\n            $poster = str_replace(ROOT_DIR.\"/uploads/posts/\" , \'\', $poster);\r\n        }\r\n    } else {\r\n        $request[\'poster\'] = $res[\'poster\'];\r\n    }\r\n\r\n\r\n\r\n    $request[\'episode_plus\'] = $res[\'last_episode\']+intval($config_mod[\'plus\']);\r\n    $request[\'seasone_plus\'] = $res[\'seasons_count\']+intval($config_mod[\'plus\']);\r\n\r\n    $request[\'episode_type_1\'] = formatize_alloha($res[\'last_episode\'], 4);\r\n    $request[\'episode_type_2\'] = formatize_alloha($res[\'last_episode\'], 5);\r\n    $request[\'episode_type_3\'] = formatize_alloha($res[\'last_episode\'], 6);\r\n    $request[\'episode_type_4\'] = formatize_alloha($res[\'last_episode\'], 7);\r\n    $request[\'episode_type_5\'] = formatize_alloha($res[\'last_episode\'], 8);\r\n\r\n    $request[\'season_type_1\'] = formatize_alloha($res[\'seasons_count\'], 1);\r\n    $request[\'season_type_2\'] = formatize_alloha($res[\'seasons_count\'], 2);\r\n    $request[\'season_type_3\'] = formatize_alloha($res[\'seasons_count\'], 3);\r\n\r\n    $es_type = [\'episode_plus\', \'seasone_plus\', \'episode_type_1\', \'episode_type_2\', \'episode_type_3\', \'episode_type_4\', \'episode_type_5\', \'season_type_1\', \'season_type_2\', \'season_type_3\'];\r\n\r\n    \r\n\r\n    foreach ($es_type as $key => $value) {\r\n        if (!$is_serial){\r\n            $request[$value] = \'\';\r\n        }\r\n    }\r\n\r\n\r\n\r\n\r\n    $images_row = $db->super_query( \"SELECT * FROM \" . PREFIX . \"_images WHERE news_id=\'$news_id\' AND author=\'$author\'\" );\r\n\r\n    if ($old_poster && preg_match(\'#/uploads/posts/(\\d{4}-\\d{2}/[^/]+)#i\', $old_poster, $find)) {\r\n        if ($images_row) {\r\n            @unlink(ROOT_DIR.\'/uploads/posts/\'.$find[1]);\r\n            $new_images = preg_replace(\'#((^|\\|\\|\\|)?\'.$find[1].\'($|\\|\\|\\|))#\', \'\', $images_row[\'images\']);\r\n            $new_images = $poster ? ($new_images ? $new_images.\'|||\'.$poster : $poster) : $new_images ;\r\n            $db->query( \"UPDATE \" . PREFIX . \"_images SET images=\'$new_images\' WHERE id=\'{$images_row[\'id\']}\'\" );\r\n        }\r\n        \r\n    }\r\n\r\n\r\n    if($poster && !$images_row){\r\n        $db->query( \"INSERT INTO \" . PREFIX . \"_images (images,news_id,author,date) VALUES(\'{$poster}\',\'$news_id\',\'\".$author.\"\',\'{$_TIME}\')\" );\r\n    }\r\n\r\n    $compile = template($config_mod, $request);\r\n\r\n    if (!empty($config_mod[\'metatitle\'])) {\r\n        $compile[\'meta_title\'] = preg_replace(\'/\\s{2,}/\', \' \',  $compile[\'metatitle\']);\r\n    }\r\n  \r\n    unset($compile[\'api_token\'], $compile[\'allow_year\']);\r\n    unset($compile[\'metatitle\'], $compile[\'lickey\'],$compile[\'api_token\']);\r\n\r\n    echo json_encode([\'ok\' => true, \'result\' => $compile]);\r\n\r\n    exit();\r\n}\r\n\r\n\r\n?>\r\n\r\n\r\n\r\n\r\n<script type=\"text/javascript\">\r\n$(function(){\r\n    var regexp = /id=(\\d+)/;\r\n    var href = window.location.href;\r\n    var news_id = regexp.test(href) ? href.match(regexp)[1] : 0;\r\n    var author = $(\"input[name=\'old_author\']\").val();\r\n    var ads_xf = \'<?php echo $ads_xf; ?>\';\r\n    var iframe_xf = \'<?php echo $iframe_xf; ?>\';\r\n    var trailer_xf = \'<?php echo $trailer_xf; ?>\';\r\n    var trailer_humb=0;\r\n    $(\'#related_news\').before(\'<div id=\"parser_btns\"></div>\');\r\n    $(\'#parser_btns\').append(\'<button id=\"parse_start\" class=\"visible-lg-inline-block btn bg-info-800 btn-sm btn-raised legitRipple\">Искать в базе alloha</button>&nbsp;\');\r\n  $(\'#parser_btns\').append(\'<button id=\"parse_trailer\" class=\"visible-lg-inline-block btn bg-info-800 btn-sm btn-raised legitRipple\">Искать трейлеры</button>&nbsp;\');\r\n    $(\'#xf_\'+iframe_xf).after(\'<br><button data-type=\"iframe\" type=\"button\" class=\"upd-iframe btn bg-slate-600 btn-sm btn-raised position-left legitRipple\">Обновить плеер alloha</button>\');\r\n   $(\'#xf_\'+trailer_xf).after(\'<br><button data-type=\"trailer\" type=\"button\" class=\"upd-iframe btn bg-slate-600 btn-sm btn-raised position-left legitRipple\">Обновить трейлер alloha</button>\');\r\n   \r\n   //Humbert\r\n   $(document).on(\"click\", \"#parse_trailer\", function(){\r\n	    trailer_humb=1;\r\n        var btn = $(this);\r\n        btn.attr(\"disabled\", \"disabled\").text(\'Ждем...\');\r\n        var q_search = $(\'#title\').val();\r\n        $.post(\"?mod=alloha\", {trailer:1, q_search:q_search,news_id:news_id,author:author}, function(data){\r\n            if(data.error) {\r\n                Growl.info({\r\n                    title: \'Информация по трейлерам\',\r\n                    text: data.error\r\n                });\r\n            }\r\n            if(data.ok){\r\n                $(\"#alloha_results\").remove();\r\n                $(\"body\").append(\"<div id=\'alloha_results\' title=\'Результаты поиска по трейлерам\' style=\'display:none\'>\"+data.result+\"</div>\");\r\n                var b = {};\r\n                b[\"Закрыть\"] = function() {\r\n                    $(this).dialog(\"close\")\r\n                };\r\n                $(\"#alloha_results\").dialog({\r\n                    autoOpen: 1,\r\n                    width: 600,\r\n                    height: 400,\r\n                    resizable: !1,\r\n                    buttons: b\r\n                });                \r\n            }\r\n            btn.removeAttr(\"disabled\").text(\'Искать трейлеры\');\r\n        },\"json\");\r\n        return false;\r\n    })\r\n    \r\n    $(document).on(\"click\", \"#parse_start\", function(){\r\n        var btn = $(this);\r\n        trailer_humb=0;\r\n        btn.attr(\"disabled\", \"disabled\").text(\'Ждем...\');\r\n        var q_search = $(\'#title\').val();\r\n        $.post(\"?mod=alloha\", {q_search:q_search,news_id:news_id,author:author}, function(data){\r\n            if(data.error) {\r\n                Growl.info({\r\n                    title: \'Информация\',\r\n                    text: data.error\r\n                });\r\n            }\r\n            if(data.ok){\r\n                $(\"#alloha_results\").remove();\r\n                $(\"body\").append(\"<div id=\'alloha_results\' title=\'Результаты поиска\' style=\'display:none\'>\"+data.result+\"</div>\");\r\n                var b = {};\r\n                b[\"Закрыть\"] = function() {\r\n                    $(this).dialog(\"close\")\r\n                };\r\n                $(\"#alloha_results\").dialog({\r\n                    autoOpen: 1,\r\n                    width: 600,\r\n                    height: 400,\r\n                    resizable: !1,\r\n                    buttons: b\r\n                });                \r\n            }\r\n            btn.removeAttr(\"disabled\").text(\'Искать в базе alloha\');\r\n        },\"json\");\r\n        return false;\r\n    })\r\n    .on(\"click\", \".alloha_item\", function(){\r\n        $(\"#alloha_results\").remove();\r\n        var t = $(this), id_kp = t.data(\'id\'), name = t.find(\'.title\').text(), poster = $(\'xf_poster\').val() || $(\'[name=\"xfield[poster]\"]\').val();\r\n        $.post(\"?mod=alloha\", {trailer: trailer_humb, action: \'parse\', id_kp: id_kp, name:name, news_id:news_id,author:author, poster:poster}, function(data){\r\n            if(data.error) {\r\n                Growl.info({\r\n                    title: \'Информация\',\r\n                    text: data.error\r\n                });\r\n            }\r\n            if(data.result){\r\n				\r\n                $.each(data.result, function(key,val) {\r\n                    $(\'[name=\"\'+key+\'\"]\').val(val);\r\n                    \r\n                    if($.inArray(key, [\'tags\', \'keywords\'] )>-1) {\r\n                        $(\'[name=\"\'+key+\'\"]\').tokenfield(\'setTokens\', val);\r\n                    }\r\n                    if($(\'#\'+key).attr(\'data-rel\')==\'links\'){\r\n                        $(\'#\'+key).tokenfield(\'setTokens\', val);\r\n                    }\r\n                    if ( key == \"short_story\" || key == \"full_story\" ) {\r\n                        if (typeof $.fn.froalaEditor != \'undefined\') {\r\n                            $(\'#\' + key).froalaEditor(\'html.set\', val);\r\n                        } else $(\'#\' + key);\r\n                    }\r\n                });\r\n                $.each(data.result[\'xfields\'], function(key,val) {\r\n                    if($(\'#xf_\'+key).attr(\'data-rel\')==\'links\'){\r\n                        $(\'#xf_\'+key).tokenfield(\'setTokens\', val);\r\n                    } else {\r\n                        $(\'#xf_\'+key).val(val)\r\n                    }\r\n                });\r\n                var cats = data.result[\'category\'].split(\',\');\r\n                var opt = $(\'#category option\');\r\n                opt.each(function(indx, element){\r\n                    $(this).removeAttr(\'selected\');\r\n                });\r\n                for (var i = 0; i < cats.length; i++) {\r\n                    opt.each(function(indx, element){\r\n                        var o = $(this).val();\r\n                        if ( $.trim(o) == $.trim(cats[i] ) ) {$(this).prop(\"selected\", true);}\r\n                    });\r\n                }\r\n                $(\'#category\').trigger(\"chosen:updated\");\r\n                if (!ads_xf) return;\r\n                var ads = $(\'[name=\"xfield[\'+ads_xf+\']\"]\'), is_ads = ads.prop(\'checked\');  \r\n                if (data.result[\'xfields\'][ads_xf] == \'1\') {\r\n                    if (!is_ads) ads.trigger(\'click\');\r\n                } else {\r\n                    if (is_ads) ads.trigger(\'click\');\r\n                }\r\n            }\r\n        },\"json\");\r\n        return false;\r\n    })\r\n    .on(\"click\", \".upd-iframe\", function(){\r\n        var id_kp = $(\'#xf_kinopoisk_id\').val();\r\n\r\n        if (!id_kp) {\r\n            Growl.error({\r\n                title: \'Error\',\r\n                text: \'Нужен kinopoisk id\'\r\n            });\r\n            return;\r\n        }\r\n        var t = $(this); t.attr(\"disabled\", \"disabled\").text(\'Ждем...\');\r\n\r\n        var type = t.data(\'type\');\r\n\r\n        $.post(\'?mod=alloha\',{action:\'update\', type:type, id_kp:id_kp}, function(d){\r\n            if (d.ok) {\r\n                t.parent().find(\'input\').val(d.ok)\r\n            } else {\r\n                Growl.error({\r\n                    title: \'Error\',\r\n                    text: d.error\r\n                });\r\n            }\r\n            t.removeAttr(\"disabled\").text(type==\'iframe\' ? \'Обновить плеер\' : \'Обновить трейлер\');\r\n        }, \'json\');\r\n    })\r\n});\r\n</script>\r\n\r\n\r\n<style>\r\n.atwo {\r\n    padding-left: 10px;\r\n    flex-grow: 1;\r\n    position: relative;\r\n}\r\n.title_origin {\r\n    font-size: 13px;\r\n    color: #7c7f8a;\r\n}\r\n.alloha_item .kp-id {\r\n    font-size: 12px;\r\n    color: cadetblue;\r\n    display: inline-block;\r\n    position: absolute;\r\n    right: 0;\r\n    bottom: 0;\r\n}\r\n#alloha_results {\r\n    counter-reset: li;\r\n}\r\n.alloha_item {\r\n    display: flex;\r\n    cursor: pointer;\r\n    font-size: 15px;\r\n    margin-bottom: 4px;\r\n    text-overflow: ellipsis;\r\n    overflow: hidden;\r\n    white-space: nowrap;\r\n    background: #f7f7f7;\r\n    padding: 6px 6px;\r\n    border-radius: 5px;\r\n}\r\n.alloha_item:hover {\r\n    color: yellowgreen;\r\n}\r\n.alloha_item img {\r\n    width: 90px;\r\n    height: 130px;\r\n    object-fit: cover;\r\n}\r\n.alloha_item:before {\r\n    content: counter(li);\r\n    display: inline-block;\r\n    height: 28px;\r\n    width: 28px;\r\n    border: 3px solid yellowgreen;\r\n    margin-right: 8px;\r\n    counter-increment: li;\r\n    text-align: center;\r\n    border-radius: 20px;\r\n    line-height: 1.7;\r\n    font-size: 12px;\r\n}\r\n</style>\r\n', 1, 0, 0, 1, '', '=='),
(221, 9, 'engine/modules/alloha.func.php', 'create', '', '<?php\r\n  \r\n$serial_statuses = [\r\n    \'offline\' => \'Завершен/закрыт\',\r\n    \'online\' => \'Идёт показ\',\r\n    \'paused\' => \'Приостановлен\',\r\n    \'pending\' => \'В ожидании\',\r\n];  \r\n\r\n\r\n$all_translate = [\r\n    \'1\' => \'2x2\',\r\n    \'2\' => \'Agatha Studdio\',\r\n    \'3\' => \'Alexfilm\',\r\n    \'4\' => \'AlFair Studio\',\r\n    \'5\' => \'Alt Pro\',\r\n    \'6\' => \'AMS\',\r\n    \'7\' => \'Amedia\',\r\n    \'8\' => \'Ancord\',\r\n    \'9\' => \'AniDUB\',\r\n    \'10\' => \'Anilibria\',\r\n    \'11\' => \'AXN Sci-fi\',\r\n    \'12\' => \'BaibaKo\',\r\n    \'13\' => \'Coldfilm\',\r\n    \'14\' => \'CTC\',\r\n    \'15\' => \'datynet\',\r\n    \'16\' => \'den904\',\r\n    \'17\' => \'Discovery\',\r\n    \'18\' => \'Diva Universal\',\r\n    \'19\' => \'DreamRecords\',\r\n    \'20\' => \'Filiza Studio\',\r\n    \'21\' => \'Flux-Team\',\r\n    \'22\' => \'Fox\',\r\n    \'23\' => \'F-TRAIN\',\r\n    \'24\' => \'Gears Media\',\r\n    \'25\' => \'GladiolusTV\',\r\n    \'26\' => \'GREEN TEA\',\r\n    \'27\' => \'HamsterStudio \',\r\n    \'28\' => \'HTB\',\r\n    \'29\' => \'IdeaFilm\',\r\n    \'30\' => \'Jaskier\',\r\n    \'31\' => \'Jetvis Studio\',\r\n    \'32\' => \'Jimmy J.\',\r\n    \'33\' => \'Lord32x\',\r\n    \'34\' => \'LostFilm\',\r\n    \'35\' => \'Lw13pro\',\r\n    \'36\' => \'MC Entertainment\',\r\n    \'38\' => \'Narkom Pro\',\r\n    \'39\' => \'Newstudio\',\r\n    \'40\' => \'Nice-Media\',\r\n    \'41\' => \'Novafilm\',\r\n    \'42\' => \'Novamedia\',\r\n    \'43\' => \'Ozz\',\r\n    \'44\' => \'Paramount Comedy\',\r\n    \'45\' => \'PashaUp\',\r\n    \'46\' => \'Prichudiki\',\r\n    \'47\' => \'ProjektorShow\',\r\n    \'48\' => \'R.A.I.M\',\r\n    \'49\' => \'SET Russia\',\r\n    \'50\' => \'Sony Sci-Fi\',\r\n    \'51\' => \'Sony Turbo\',\r\n    \'52\' => \'To4ka\',\r\n    \'53\' => \'Tycoon\',\r\n    \'54\' => \'Universal Russia\',\r\n    \'55\' => \'Victory-Films\',\r\n    \'56\' => \'ViruseProject\',\r\n    \'57\' => \'VO-production\',\r\n    \'58\' => \'xaros\',\r\n    \'59\' => \'xixidok\',\r\n    \'60\' => \'Zamez\',\r\n    \'61\' => \'АРК ТВ\',\r\n    \'62\' => \'Гаврилов\',\r\n    \'63\' => \'Гоблин\',\r\n    \'64\' => \'Дасевич\',\r\n    \'65\' => \'Двухголосый закадровый\',\r\n    \'66\' => \'Дублированный\',\r\n    \'67\' => \'Есарев\',\r\n    \'68\' => \'Живов\',\r\n    \'69\' => \'Кубик в Кубе\',\r\n    \'70\' => \'Кураж-бамбей\',\r\n    \'71\' => \'Матвеев\',\r\n    \'72\' => \'Многоголосый закадровый\',\r\n    \'73\' => \'Невафильм\',\r\n    \'74\' => \'Несмертельное оружие\',\r\n    \'75\' => \'Одноголосый закадровый\',\r\n    \'76\' => \'Первый канал\',\r\n    \'77\' => \'Сербин\',\r\n    \'78\' => \'Студия Райдо\',\r\n    \'79\' => \'Субтитры\',\r\n    \'80\' => \'Сыендук\',\r\n    \'81\' => \'Шадинский\',\r\n    \'82\' => \'Не требуется\',\r\n    \'83\' => \'Пифагор\',\r\n    \'84\' => \'Синема УС\',\r\n    \'85\' => \'HDrezka Studio\',\r\n    \'86\' => \'MuzoBoz\',\r\n    \'87\' => \'Профессиональный многоголосый\',\r\n    \'88\' => \'Любительский двухголосый\',\r\n    \'89\' => \'Любительский\',\r\n    \'90\' => \'Дублированный (звук с TS)\',\r\n    \'91\' => \'Двухголосый (звук с TS)\',\r\n    \'92\' => \'Не требуется (звук с TS)\',\r\n    \'93\' => \'Оригинальная\',\r\n    \'94\' => \'KiraiMedia\',\r\n    \'95\' => \'Студийная банда\',\r\n    \'96\' => \'TVShows\',\r\n    \'98\' => \'Studio Films\',\r\n    \'99\' => \'VSI Moscow\',\r\n    \'100\' => \'RG.Paravozik\',\r\n    \'101\' => \'Кириллица\',\r\n    \'102\' => \'СВ-Дубль\',\r\n    \'103\' => \'Любительский одноголосый\',\r\n    \'104\' => \'1001 Cinema\',\r\n    \'105\' => \'MTV\',\r\n    \'106\' => \'Кравец\',\r\n    \'107\' => \'OMSKBIRD records\',\r\n    \'109\' => \'SDI Media\',\r\n    \'110\' => \'NewStation\',\r\n    \'111\' => \'Finargot\',\r\n    \'112\' => \'Good People\',\r\n    \'114\' => \'FocusStudio\',\r\n    \'115\' => \'Т.О Друзей\',\r\n    \'116\' => \'Эй Би Видео\',\r\n    \'117\' => \'SunShine Studio\',\r\n    \'118\' => \'Pazl Voice\',\r\n    \'120\' => \'GoldTeam\',\r\n    \'121\' => \'Профессиональный двухголосый\',\r\n    \'122\' => \'KerobTV\',\r\n    \'123\' => \'Любительский многоголосый\',\r\n    \'124\' => \'Octopus\',\r\n    \'125\' => \'Crazy Cat\',\r\n    \'126\' => \'SoftBox\',\r\n    \'127\' => \'Levelin\',\r\n    \'128\' => \'JAM\',\r\n    \'129\' => \'Кубик в Кубе & Ко\',\r\n    \'130\' => \'MoyGolos\',\r\n    \'131\' => \'Киреев\',\r\n    \'132\' => \'Чадов\',\r\n    \'133\' => \'Гланц и Королёва\',\r\n    \'134\' => \'ТВ3\',\r\n    \'135\' => \'Гоблин (Кинотеатр)\',\r\n    \'136\' => \'Гоблин - цензура\',\r\n    \'137\' => \'DoubleRec\',\r\n    \'138\' => \'Рен-ТВ\',\r\n    \'139\' => \'FanStudio\',\r\n    \'140\' => \'Zone Vision\',\r\n    \'141\' => \'Honey&Haseena\',\r\n    \'143\' => \'Гоблин ПП\',\r\n    \'144\' => \'Zee TV\',\r\n    \'146\' => \'ShowJet\',\r\n    \'147\' => \'Greb&Creative\',\r\n    \'148\' => \'Профессиональный многоголосый (звук с TS)\',\r\n    \'149\' => \'Россия 2\',\r\n    \'150\' => \'KosharaSerials\',\r\n    \'151\' => \'WestFilm\',\r\n    \'152\' => \'WVoice\',\r\n    \'153\' => \'Колобок\',\r\n    \'154\' => \'Украинский\',\r\n    \'155\' => \'Amber\',\r\n    \'156\' => \'Kansai\',\r\n    \'157\' => \'Akari Group\',\r\n    \'158\' => \'AniStar\',\r\n    \'159\' => \'HardSub\',\r\n    \'160\' => \'Erai-raws\',\r\n    \'161\' => \'JekaSub\',\r\n    \'162\' => \'Rezan & Linok\',\r\n    \'163\' => \'AniMaunt\',\r\n    \'164\' => \'AniMedia\',\r\n    \'165\' => \'Anything Group\',\r\n    \'166\' => \'Onibaku\',\r\n    \'167\' => \'SHIZA Project\',\r\n    \'168\' => \'Flarrow Films\',\r\n    \'169\' => \'SoundFilm\',\r\n    \'170\' => \'SDI Moscow\',\r\n    \'171\' => \'ТВЦ\',\r\n    \'173\' => \'Рыбов & Трындяйкина\',\r\n    \'174\' => \'Red Media\',\r\n    \'175\' => \'Selena\',\r\n    \'176\' => \'ICG\',\r\n    \'177\' => \'OnisFilms\',\r\n    \'178\' => \'AniFilm\',\r\n    \'179\' => \'ДТВ\',\r\n    \'180\' => \'CBS Drama\',\r\n    \'181\' => \'AnimeVos\',\r\n    \'182\' => \'Lucky Production\',\r\n    \'183\' => \'субтитры СоветРомантики\',\r\n    \'184\' => \'STEPonee\',\r\n    \'185\' => \'LovelyVox\',\r\n    \'186\' => \'Позитив\',\r\n    \'187\' => \'NewComers\',\r\n    \'188\' => \'Дохалов\',\r\n    \'189\' => \'SDIncorporation\',\r\n    \'190\' => \'Мобильное телевидение\',\r\n    \'191\' => \'Инис\',\r\n    \'192\' => \'Ultradox\',\r\n    \'193\' => \'Сrunchyroll\',\r\n    \'194\' => \'Rumble\',\r\n    \'195\' => \'Persona99\',\r\n    \'196\' => \'XDub Dorama\',\r\n    \'197\' => \'Amazing Dubbing\',\r\n    \'198\' => \'HighHopes\',\r\n    \'199\' => \'Храм Дорам\',\r\n];\r\n\r\n\r\nif (!function_exists(\'xfieldsdatasave\')) {\r\n    function xfieldsdatasave($xfields) {\r\n        $filecontents = [];\r\n        foreach ($xfields as $xfielddataname => $xfielddatavalue) {\r\n            if ($xfielddatavalue === \'\') continue;\r\n            $xfielddataname = str_replace( \"|\", \"&#124;\", $xfielddataname);\r\n            $xfielddataname = str_replace( \"\\r\\n\", \"__NEWL__\", $xfielddataname);\r\n            $xfielddatavalue = str_replace( \"|\", \"&#124;\", $xfielddatavalue);\r\n            $xfielddatavalue = str_replace( \"\\r\\n\", \"__NEWL__\", $xfielddatavalue);\r\n            $filecontents[] = \"$xfielddataname|$xfielddatavalue\";\r\n        }\r\n        $filecontents = join(\'||\', $filecontents );\r\n        return $filecontents;\r\n    }\r\n}\r\n\r\nif (!function_exists(\'xfcompile\')) {\r\n    function xfcompile( $in ) {\r\n        if ( $in == \"\" ) return $in;\r\n\r\n        foreach ( $in as $name => $value ) {\r\n            if ( trim($name) == \"\" || trim($value) == \"\" ) continue;\r\n\r\n            $name = str_replace( \"|\", \"&#124;\", $name );\r\n            $name = str_replace( \"\\r\\n\", \"__NEWL__\", $name );\r\n            $value = str_replace( \"|\", \"&#124;\", $value );\r\n            $value = str_replace( \"\\r\\n\", \"__NEWL__\", $value );\r\n\r\n            $out[] = \"{$name}|{$value}\";\r\n        }\r\n\r\n        return implode(\"||\", $out);\r\n    }\r\n}\r\n\r\n\r\nif (!function_exists(\'CheckDir\')) {\r\n    function CheckDir($dir){\r\n        if( !is_dir( $dir ) ) {\r\n            @mkdir( $dir, 0777 );\r\n            @chmod( $dir, 0777 );\r\n        }\r\n    }\r\n}\r\n\r\nif (!function_exists(\'request\')) {\r\n    function request($url, $file = false){\r\n        $ch = curl_init();\r\n        curl_setopt($ch, CURLOPT_URL,$url);\r\n        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);\r\n        curl_setopt($ch, CURLOPT_FOLLOWLOCATION, true);\r\n        curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 60 );\r\n        curl_setopt($ch, CURLOPT_TIMEOUT, 60 );\r\n        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 0);\r\n        curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 0);\r\n\r\n        $headers = array(\r\n            \'User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.2924.87 Safari/537.36\',\r\n            \'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8\',\r\n            \'Accept-Language: ru-RU,ru;q=0.8,en-US;q=0.5,en;q=0.3\',\r\n            \'Connection: keep-alive\',\r\n            \'Cache-Control: max-age=0\',\r\n            \'Upgrade-Insecure-Requests: 1\'\r\n        );\r\n        if($file){\r\n            $fp = fopen($file, \"wb\");\r\n            curl_setopt($ch, CURLOPT_FILE, $fp);\r\n        }\r\n        curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);\r\n        $res = curl_exec($ch);\r\n        curl_close($ch);\r\n        if($file) {\r\n            fclose($fp);\r\n            @chmod($file, 0666);\r\n            $info = @getimagesize($file);\r\n            if(is_array($info)){\r\n                if( $info[2] == 2 ) {\r\n                    $ext = \'jpg\';\r\n                } elseif( $info[2] == 3 ) {\r\n                    $ext =  \'png\';\r\n                } elseif( $info[2] == 1 ) {\r\n                    $ext = \'gif\';\r\n                } else $ext = \'jpg\';\r\n                rename($file, $file.\'.\'.$ext);\r\n                return $file.\'.\'.$ext;\r\n            } else {\r\n                @unlink($file);\r\n                return false;\r\n            }\r\n        }\r\n        return $res;\r\n    }\r\n}\r\n\r\n\r\n\r\nif (!function_exists(\'template\')) {\r\n    function template($config, $data) {\r\n        $find = array();\r\n        $replace = array();\r\n\r\n        foreach ($data as $name => $value) {\r\n            if ( is_array($value) ) $value = implode(\", \", $value);\r\n\r\n            $find[] = \"\'{{$name}}\'i\";\r\n            $replace[] = $value;\r\n            $find[] = \"\'\\\\[if_{$name}\\\\](.*?)\\\\[/if_{$name}\\\\]\'is\";\r\n            $replace[] = $value ? \'\\1\' : \'\';\r\n            $find[] = \"\'\\\\[ifnot_{$name}\\\\](.*?)\\\\[/ifnot_{$name}\\\\]\'is\";\r\n            $replace[] = $value ? \'\' : \'\\1\';\r\n        }\r\n\r\n        foreach ($config as $key => $value) {\r\n            $value = preg_replace($find, $replace, $value);\r\n\r\n            $value = preg_replace_callback(\'#\\\\[(if|ifnot)? (.+?)\\\\](.*?)\\\\[/\\1\\\\]#isuU\', function($matches) use($data) {\r\n                foreach (explode(\"||\", $matches[2]) as $key => $value) {\r\n                    $value = explode(\"=\", $value);\r\n                    $name = array_shift($value);\r\n                    $value = implode(\"=\", $value);\r\n                    $value = explode(\"|\", $value);\r\n\r\n                    if ( isset($data[$name]) ) {\r\n                        $val = $data[$name];\r\n                        if ( !is_array($val) ) $val = explode(\",\", $val);\r\n                        if ( array_intersect($value, $val) ) {\r\n                            if ( $matches[1] == \"ifnot\" ) return \'\';\r\n                        } elseif( $matches[1] == \"if\" ) return \'\';\r\n                    }\r\n                }\r\n\r\n                return $matches[3];\r\n            }, $value);\r\n\r\n            $value = preg_replace(\'#\\\\[ifnot_(.+)\\\\](.*)\\\\[/ifnot_\\1\\\\]#isuU\', \'\\2\', $value);\r\n            $value = preg_replace(\'#\\\\[if_(.+)\\\\](.*)\\\\[/if_\\1\\\\]#isuU\', \'\', $value);\r\n            $value = preg_replace(\"\'{[a-zA-Z0-9-_:]+}\'i\", \'\', $value);\r\n\r\n            if ( $value ) $config[$key] = preg_replace(\'#\\s{2,}#\', \' \', $value);\r\n            else unset($config[$key]);\r\n        }\r\n\r\n        return $config;\r\n    }\r\n}\r\n\r\nif (!function_exists(\'fixGenres\')) {\r\n    \r\n    function fixGenres(array $genres) {\r\n\r\n        $replaces = array(\r\n            \'арт-хаус\' => \'арт-хаус\',\r\n            \'зарубежные\' => \'зарубежный\',\r\n            \'блокбастеры\' => \'блокбастер\',\r\n            \'русский\' => \'русский\',\r\n            \'биографический\' => \'биография\',\r\n            \'боевики\' => \'боевик\',\r\n            \'блокбастер\' => \'блокбастер\',\r\n            \'вестерны\' => \'вестерн\',\r\n            \'военные\' => \'военный\',\r\n            \'детективы\' => \'детектив\',\r\n            \'детский\' => \'детский\',\r\n            \'документальные\' => \'документальный\',\r\n            \'драмы\' => \'драма\',\r\n            \'игры\' => \'игра\',\r\n            \'история\' => \'история\',\r\n            \'комедии\' => \'комедия\',\r\n            \'концерты\' => \'концерт\',\r\n            \'короткометражный\' => \'короткометражка\',\r\n            \'полнометражный\' => \'полнометражный\',\r\n            \'криминал\' => \'криминал\',\r\n            \'мелодрамы\' => \'мелодрама\', \r\n            \'музыкальные\' => \'музыка\',\r\n            \'мультфильмы\' => \'мультфильм\',\r\n            \'мультсериалы\' => \'мультсериал\',\r\n            \'мюзикл\' => \'мюзикл\',\r\n            \'новости\' => \'новости\',\r\n            \'путешествия\' => \'путешествия\',\r\n            \'приключения\' => \'приключения\',\r\n            \'развлекательный\' => \'развлекательный\',\r\n            \'семейные\' => \'семейный\',\r\n            \'спорт\' => \'спорт\',\r\n            \'триллеры\' => \'триллер\',\r\n            \'трейлеры\' => \'трейлер\',\r\n            \'ужасы\' => \'ужасы\',\r\n            \'церемонии\' => \'церемония\',\r\n            \'для взрослых\' => \'для взрослых\',\r\n          \r\n        );\r\n\r\n        foreach ($genres as $key => $genre) {\r\n            $genre = mb_strtolower($genre, \'UTF-8\');\r\n\r\n            if (!empty($replaces[$genre])) {\r\n                $genres[$key] = $replaces[$genre];\r\n            } else {\r\n                $genres[$key] = $genre;\r\n            }\r\n        }\r\n\r\n        return $genres;\r\n    }\r\n}\r\n\r\n\r\n\r\n\r\n\r\nif (!function_exists(\'db_query\')) {\r\n    function db_query($query, $data = false) {\r\n        return preg_replace_callback(\'\":([a-z0-9_\\\\-]+)\"is\', function($match) use($data) {\r\n            if ( isset($data[$match[1]]) ) {\r\n                if ($data[$match[1]] !== null) {\r\n                    return \"\'\" . addslashes($data[$match[1]]) . \"\'\";\r\n                } else {\r\n                    return \"NULL\";\r\n                }\r\n\r\n            } else {\r\n                return \"NULL\";\r\n            }\r\n        }, $query);\r\n    }    \r\n}\r\n\r\nif (!function_exists(\'allow_country\')) {\r\n    function allow_country($country, $allow_country){\r\n        if (count($allow_country)) {\r\n            $country2 = [];\r\n            foreach ($country as $value) {\r\n                $country2[] = mb_strtolower($value, \'utf-8\');\r\n            }\r\n            if (count(array_intersect($country2, $allow_country))) {\r\n                return true;\r\n            } else {\r\n                return false;\r\n            }\r\n        }\r\n        return true;\r\n    }    \r\n}\r\n\r\n\r\n\r\nif (!function_exists(\'disallow_country\')) {\r\n    function disallow_country($country, $allow_country){\r\n        if (count($allow_country)) {\r\n            $country2 = [];\r\n            foreach ($country as $value) {\r\n                $country2[] = mb_strtolower($value, \'utf-8\');\r\n            }\r\n            if (count(array_intersect($country2, $allow_country))) {\r\n                return true;\r\n            } else {\r\n                return false;\r\n            }\r\n        }\r\n        return false;\r\n    }    \r\n}\r\n\r\n\r\n\r\n\r\nfunction formatize_alloha($number, $type) {\r\n    if ( $type == 1 ) $result = $number.\" сезон\";\r\n    elseif ( $type == 2 ) {\r\n        if ( $number == 1 ) $result = $number.\" сезон\";\r\n        elseif ( $number > 1 ) $result = \"1-\".$number.\" сезон\";\r\n    }\r\n    elseif ( $type == 3 ) {\r\n        if ( $number == 1 ) $result = $number.\" сезон\";\r\n        elseif ( $number > 1 ) {\r\n            $number_mas = array();\r\n            for ($i = 1; $i <= $number; $i++) {\r\n                $number_mas[] = $i;\r\n            }\r\n            $result = implode(\",\", $number_mas).\" сезон\";\r\n        }\r\n    }\r\n    elseif ( $type == 4 ) $result = $number.\" серия\";\r\n    elseif ( $type == 5 ) {\r\n        if ( $number == 1 ) $result = $number.\" серия\";\r\n        elseif ( $number > 1 ) $result = \"1-\".$number.\" серия\";\r\n    }\r\n    elseif ( $type == 6 ) {\r\n        if ( $number == 1 ) $result = $number.\" серия\";\r\n        elseif ( $number > 1 ) {\r\n            $number_mas = array();\r\n            for ($i = 1; $i <= $number; $i++) {\r\n                $number_mas[] = $i;\r\n            }\r\n            $result = implode(\",\", $number_mas).\" серия\";\r\n        }\r\n    }\r\n    elseif ( $type == 7 ) {\r\n        if ( $number == 1 ) $result = \"1,2 серия\";\r\n        elseif ( $number == 2 ) $result = \"1,2,3 серия\";\r\n        elseif ( $number > 2 ) {\r\n            $number_mas = array();\r\n            for ($i = $number-1; $i <= $number+1; $i++) {\r\n                $number_mas[] = $i;\r\n            }\r\n            $result = implode(\",\", $number_mas).\" серия\";\r\n        }\r\n    }\r\n    elseif ( $type == 71 ) {\r\n        if ( $number == 1 ) $result = \"1 серия\";\r\n        elseif ( $number == 2 ) $result = \"1,2 серия\";\r\n        elseif ( $number >= 3 ) {\r\n            $number_mas = array();\r\n            for ($i = $number-2; $i <= $number; $i++) {\r\n                $number_mas[] = $i;\r\n            }\r\n            $result = implode(\",\", $number_mas).\" серия\";\r\n        }\r\n    }\r\n    elseif ( $type == 8 ) {\r\n        if ( $number == 1 ) $result = \"1 серия\";\r\n        elseif ( $number > 1 AND $number <= 5 ) {\r\n            $number_mas = array();\r\n            for ($i = 1; $i <= $number; $i++) {\r\n                $number_mas[] = $i;\r\n            }\r\n            $result = implode(\",\", $number_mas).\" серия\";\r\n        }\r\n        elseif ( $number > 5 ) {\r\n            $number_mas = array();\r\n            for ($i = $number-1; $i <= $number+1; $i++) {\r\n                $number_mas[] = $i;\r\n            }\r\n            $result = \"1-\".implode(\",\", $number_mas).\" серия\";\r\n        }\r\n    }\r\n    elseif ( $type == 81 ) {\r\n        if ( $number == 1 ) $result = \"1 серия\";\r\n        elseif ( $number > 1 AND $number <= 5 ) {\r\n            $number_mas = array();\r\n            for ($i = 1; $i <= $number; $i++) {\r\n                $number_mas[] = $i;\r\n            }\r\n            $result = implode(\",\", $number_mas).\" серия\";\r\n        }\r\n        elseif ( $number > 5 ) {\r\n            $number_mas = array();\r\n            for ($i = $number-2; $i <= $number; $i++) {\r\n                $number_mas[] = $i;\r\n            }\r\n            $result = \"1-\".implode(\",\", $number_mas).\" серия\";\r\n        }\r\n    }\r\n    return $result;\r\n}\r\n\r\nfunction check_if_alloha($check_value, $dataArray) {\r\n    foreach($dataArray as $named => $zna4enie) {\r\n        if (strpos($check_value, \'[data_\'.$named.\']\') !== false) {\r\n            if ($zna4enie) $check_value = preg_replace(\';\\[data_\'.$named.\'\\](.*?)\\[\\/data_\'.$named.\'\\];is\', $dataArray[$named], $check_value);\r\n            else $check_value = preg_replace(\';\\[data_\'.$named.\'\\](.*?)\\[\\/data_\'.$named.\'\\];is\', \'\', $check_value);\r\n        }\r\n        if (strpos($check_value, \'[nodata_\'.$named.\']\') !== false) {\r\n            if ($zna4enie) $check_value = preg_replace(\';\\[nodata_\'.$named.\'\\](.*?)\\[\\/nodata_\'.$named.\'\\];is\', \'\', $check_value);\r\n            else $check_value = preg_replace(\';\\[nodata_\'.$named.\'\\](.*?)\\[\\/nodata_\'.$named.\'\\];is\', \'$1\', $check_value);\r\n        }\r\n    }\r\n\r\n    return $check_value;\r\n}\r\n\r\n\r\n\r\n\r\nfunction check_license_alloha() {\r\n \r\n}\r\n\r\n\r\nfunction alloha_mass_series($news_id, $result, $last = false) {\r\n\r\n    global $db, $config_mod;\r\n\r\n    if (!$config_mod[\'mass_series\']) {\r\n        return;\r\n    }\r\n\r\n    if ($last) {\r\n\r\n        $season = intval($result[\'season\']);\r\n        $episode = intval($result[\'episode\']);\r\n\r\n        for ($ser=1; $ser <= $episode; $ser++) { \r\n\r\n            $db->query( \"INSERT IGNORE INTO \" . PREFIX . \"_serials (news_id, season, episode) VALUES(\'{$news_id}\', \'{$season}\', \'{$ser}\')\" );\r\n\r\n        }\r\n\r\n        return;\r\n\r\n    }\r\n\r\n    foreach ($result[\'seasons\'] as $value) {\r\n        \r\n        foreach ($value[\'episodes\'] as $val) {\r\n\r\n            $db->query( \"INSERT IGNORE INTO \" . PREFIX . \"_serials (news_id, season, episode) VALUES(\'{$news_id}\', \'{$value[\'season\']}\', \'{$val[\'episode\']}\')\" );\r\n\r\n        }\r\n\r\n    }\r\n\r\n}\r\n\r\ndefine( \'FOLDER_PREFIX\', date( \"Y-m\" ) );\r\n\r\nCheckDir(ROOT_DIR . \"/uploads/posts/\" . FOLDER_PREFIX .\'/\');\r\nCheckDir(ROOT_DIR . \"/uploads/posts/\" . FOLDER_PREFIX .\'/thumbs/\');\r\nCheckDir(ROOT_DIR . \"/uploads/posts/\" . FOLDER_PREFIX .\'/medium/\');\r\n\r\n?>', 1, 0, 0, 1, '', '==');
INSERT INTO `dle_plugins_files` (`id`, `plugin_id`, `file`, `action`, `searchcode`, `replacecode`, `active`, `searchcount`, `replacecount`, `filedisable`, `filedleversion`, `fileversioncompare`) VALUES
(222, 9, 'engine/classes/alloha.php', 'create', '', '<?php\r\n\r\n\r\nif(!defined(\'DATALIFEENGINE\')) {\r\n    header( \"HTTP/1.1 403 Forbidden\" );\r\n    header ( \'Location: ../../\' );\r\n    die( \"Hacking attempt!\" );\r\n}\r\n\r\nini_set(\"memory_limit\",\"256M\");\r\nini_set(\'max_execution_time\',200);\r\nignore_user_abort(true);\r\nset_time_limit(200);\r\nsession_write_close();\r\n\r\n\r\nrequire_once (ENGINE_DIR . \'/classes/plugins.class.php\');\r\n\r\n\r\nif (version_compare(\'15\', $config[\'version_id\'], \'<=\')) {\r\n    define(\'DLE15\', true);\r\n}\r\n\r\n\r\nif (defined(\'DLE15\')) {\r\n    include_once ENGINE_DIR . \'/classes/composer/vendor/autoload.php\';\r\n}\r\n\r\nelse {\r\n    include_once ENGINE_DIR . \'/classes/thumb.class.php\';\r\n}\r\n\r\nrequire_once DLEPlugins::Check(ENGINE_DIR . \'/modules/alloha.func.php\');\r\n\r\n\r\n\r\n$config_mod = unserialize( file_get_contents( ENGINE_DIR . \'/data/\' . $mod . \'.config\' ) );\r\n\r\nif ( !$config_mod ) $config_mod = array();\r\n\r\n\r\n$qual_list = [\r\n	\'TS 720p\'         => 0,\r\n	\'TS \'             => 1,	\r\n	\'CAMRip\'          => 2,\r\n	\'Workprint-AVC\'   => 3,\r\n	\'WEB-DLRip 720p\'  => 4,\r\n	\'WEB-DLRip 1080p\' => 5,\r\n	\'WEB-DLRip 1080p\' => 6,\r\n	\'WEB-DLRip\'       => 7,\r\n	\'WEBRip\'       => 7,\r\n	\'VHSRip\'          => 8,\r\n	\'TVRip 720p\'      => 9,\r\n	\'TVRip\'           => 10,\r\n	\'SuperTS\'         => 11,\r\n	\'SATRip\'          => 12,\r\n	\'Laserdisc-RIP\'   => 13,\r\n	\'IPTVRip\'         => 14,\r\n	\'DVDSrc\'          => 15,\r\n	\'DVDRip\'          => 16,\r\n	\'DVBRip 720p\'     => 17,\r\n	\'DVBRip\'          => 18,\r\n	\'DVB\'          => 18,\r\n	\'HDDVDRip 720p\'   => 19,\r\n	\'HDDVDRip 1080p\'  => 20,\r\n	\'HDDVDRip\'        => 21,\r\n	\'HDTVRip 720p\'    => 22,\r\n	\'HDTVRip 1080p\'   => 23,\r\n	\'HDTVRip\'         => 24,\r\n	\'HDRip 720p\'      => 25,\r\n	\'HDRip 1080p\'     => 26,\r\n	\'HDRip\'           => 27,\r\n	\'D-VHS\'           => 28,\r\n	\'BDRip 720p\'      => 29,\r\n	\'BDRip 1080p\'     => 30,\r\n	\'BDRip\'           => 31\r\n];\r\n\r\n\r\nclass Alloha {\r\n	\r\n	function __construct($type, $db) {\r\n		$this->log  = $this->getLog();\r\n		$this->next = empty($this->log[$type][\'next\']) ? \'\' : $this->log[$type][\'next\'];\r\n		\r\n		$this->db   = $db;\r\n		$this->type = $type;\r\n	}\r\n\r\n    public function start($url){\r\n      \r\n    	$request_url = $url;\r\n\r\n        for ($i=0; $i < 5; $i++) { \r\necho $request_url.\"<br>\";\r\n        	$result = request($request_url);\r\n        	$res = json_decode($result, true);\r\n     \r\n        	if(!$res) {\r\n        		die($result);\r\n        	}\r\n\r\n        	if ($res[\'status\']==\'error\') {\r\n        		die($res[\'error_info\']);\r\n        	}\r\n\r\n        	if(empty($res[\'data\'])) {\r\n        		$this->setLog($this->type, \'next\', \'\');\r\n        		die(\'empty results\');\r\n        	}\r\n\r\n            $this->render($res[\'data\']);\r\n\r\n            if($i==0 && $this->next) {\r\n            	$request_url = $url.\'&page=\'.$this->next;\r\n            } else {\r\n            	$request_url = $res[\'next_page\'] ? $url.\'&page=\'.$res[\'next_page\'] : \'\';\r\n            }\r\n\r\n      	    $this->setLog($this->type, \'next\', $res[\'next_page\'] ? $res[\'next_page\'] : \'\');\r\n            if(!$request_url) break;\r\n\r\n        }\r\n\r\n    }\r\n\r\n\r\n    private function render($data){\r\n		\r\n\r\n	    foreach ($data as $k => $value) {\r\n			if($this->type!=\"trailer\"){ //humbert\r\n				\r\n		  \r\n	        $kp_id        = intval($value[\'id_kp\']);\r\n	        $year         = intval($value[\'year\']);\r\n	        $type         = $this->type;\r\n	        $quality      = $this->db->safesql($value[\'quality\']);\r\n	        $episode      = $season = 0;\r\n\r\n	        if($kp_id<10) continue;\r\n\r\n	        if(in_array($this->type, [\'serial\', \'multserial\', \'animeserial\'])){\r\n	        	$season  = (int)$value[\'seasons_count\'];\r\n	        	$episode = (int)$value[\'last_episode\'];\r\n	        }\r\n\r\n	        global $qual_list;\r\n\r\n	        $row = $this->db->super_query( \"SELECT * FROM \" . PREFIX . \"_alloha WHERE kp_id=\'$kp_id\'\" );\r\n\r\n	        if ($row) {\r\n	            if($qual_list[$row[\'quality\']]<$qual_list[$quality] or $row[\'season\']<$season or $row[\'episode\']<$episode)\r\n	                $this->db->query( \"UPDATE \" . PREFIX . \"_alloha SET status=\'1\', quality=\'{$quality}\', episode=\'{$episode}\', season=\'{$season}\' WHERE kp_id=\'$kp_id\'\" );\r\n	            \r\n	        } else {\r\n	            $this->db->query( \"INSERT INTO \" . PREFIX . \"_alloha (kp_id, year, quality, type, episode, season) VALUES(\'{$kp_id}\', \'{$year}\', \'{$quality}\', \'{$type}\', \'{$episode}\', \'{$season}\')\" );\r\n	        }\r\n\r\n	    }\r\n	    else //humbert\r\n	   { \r\n		   global $config_mod, $db, $config;\r\n		   $global_config=$config_mod;\r\n		   \r\n		   $kl_next=0;\r\n		   \r\n		   foreach($data as $value_data)\r\n		   {\r\n			   $kl_next=1;\r\n			   $config_mod=$global_config;\r\n			   $value_data[\'country\'] = str_replace(\', \', \',\', $value_data[\'country\']);\r\n               $value_data[\'genre\'] = str_replace(\', \', \',\', $value_data[\'genre\']);\r\n\r\n\r\n               if( ($premiere = strtotime($value_data[\'premiere\']))!==false && $value_data[\'premiere\'] ){\r\n                   $value_data[\'premiere\'] = date(\'j\', $premiere).\' \'.$langdate[date(\'F\', $premiere)].\' \'.date(\'Y\', $premiere);\r\n               }\r\n               \r\n               if( ($premiere_ru = strtotime($value_data[\'premiere_ru\']))!==false && $value_data[\'premiere_ru\'] ){\r\n                   $value_data[\'premiere_ru\'] = date(\'j\', $premiere_ru).\' \'.$langdate[date(\'F\', $premiere_ru)].\' \'.date(\'Y\', $premiere_ru);\r\n               }\r\n\r\n               $request = [];\r\n\r\n               $is_serial = false;\r\n\r\n               if($value_data[\'seasons_count\']){\r\n				   $request[\'last_season\'] = $value_data[\'seasons_count\'];\r\n                   $request[\'last_episode\'] = $value_data[\'last_episode\'];\r\n\r\n                   $episodes = array_shift($value_data[\'seasons\']);\r\n                   $episodes = count($episodes[\'episodes\']);\r\n                   $request[\'episode_count\'] = $episodes;\r\n\r\n                   $request[\'last_translate\'] = trim( array_shift(explode(\',\', $value_data[\'translation\'])) );\r\n\r\n                   $is_serial = true;\r\n               }\r\n\r\n               $ex_genres = array();\r\n               $ex_genres[] = \"трейлер\";\r\n               $ex_genres[]=$value_data[\'category\'];\r\n\r\n               if ($value_data[\'category\']==\'1\' && mb_stripos($value_data[\'genre\'], \'мультфильм\')===false) {\r\n				   $ex_genres[] = \"фильм\"; $request[\'video_type\'] = \'фильм\';\r\n    \r\n               }\r\n\r\n               if ($value_data[\'category\']==\'5\') {\r\n                   $ex_genres[] = \"тв шоу\"; $request[\'video_type\'] = \'тв шоу\';\r\n               }\r\n\r\n               \r\n               if (mb_stripos($value_data[\'genre\'], \'мультфильм\')!==false) {\r\n                   if ($is_serial) {\r\n					   \r\n					   $request[\'video_type\'] = \"мультсериал\";\r\n                       $ex_genres[] = \"мультсериал\";\r\n\r\n\r\n                   } else {\r\n					   $request[\'video_type\'] = \'мультфильм\';\r\n                       $ex_genres[] = \"мультфильм\";\r\n\r\n\r\n                   }\r\n               }\r\n\r\n               if (mb_stripos($value_data[\'country\'], \'россия\')===false && mb_stripos($value_data[\'country\'], \'ссср\')===false) {\r\n				   $ex_genres[] = \"зарубежный\";\r\n               }\r\n\r\n               if ($value_data[\'category\']==\'4\') {\r\n				   $ex_genres[] = \"аниме сериал\"; $request[\'video_type\'] = \'аниме сериал\';\r\n			   }\r\n\r\n               if ($alloha[\'type\']==\'anime\') {\r\n				   $ex_genres[] = \"аниме\"; $request[\'video_type\'] = \'аниме\';\r\n               }\r\n               \r\n               \r\n               $genres = fixGenres(explode(\',\', $value_data[\'genre\']));\r\n\r\n\r\n               $inter = array_merge($ex_genres, $genres, explode(\',\', $value_data[\'country\']), array($value_data[\'year\']));\r\n\r\n               if ($request[\'video_type\'] == \'мультсериал\') {\r\n				   $inter = array_diff($inter, [\'мультфильм\']);\r\n               }\r\n\r\n               if ($value_data[\'category\']==\'3\') {\r\n				   $inter = array_diff($inter, [\'зарубежный\', \'мультфильм\']);\r\n               }\r\n\r\n               if ($value_data[\'category\']==\'4\') {\r\n				   $inter = array_diff($inter, [\'зарубежный\', \'мультсериал\', \'мультфильм\', \'аниме\']);\r\n               }\r\n               \r\n              \r\n    $cats=array();\r\n               \r\n     foreach ($config_mod[\'category\'] as $cat_id => $values) {\r\n    $f = true;\r\n\r\n    foreach ($values as $value) {\r\n        if ( !in_array($value, $inter) ) {\r\n            $f = false;\r\n            break;\r\n        }\r\n    }\r\n\r\n    if ( $f ) $cats[] = $cat_id;\r\n}\r\n \r\n               $config_mod[\'category\'] = implode(\",\", $cats); \r\n               \r\n              \r\n               if ($config_mod[\'max_actors\']) {\r\n				   \r\n				   $value_data[\'actors\'] = explode(\',\', $value_data[\'actors\']);\r\n                   $value_data[\'actors\'] = array_slice($value_data[\'actors\'], 0, intval($config_mod[\'max_actors\']));\r\n                   $value_data[\'actors\'] = implode(\',\', $value_data[\'actors\']);\r\n               }\r\n\r\n               if ($config_mod[\'max_directors\']) {\r\n				   \r\n				   $value_data[\'directors\'] = explode(\',\', $value_data[\'directors\']);\r\n                   $value_data[\'directors\'] = array_slice($value_data[\'directors\'], 0, intval($config_mod[\'max_directors\']));\r\n                   $value_data[\'directors\'] = implode(\',\', $value_data[\'directors\']);\r\n               }\r\n\r\n               $value_data[\'genre\'] = preg_replace_callback(\'/,([^,]|\\s+)/u\', function($m){\r\n				   \r\n				   return \',\'.(strpos(\' \', $m[1]) ? \' \' : \' \'.$m[1]);\r\n               }, $value_data[\'genre\']);\r\n\r\n               $value_data[\'country\'] = preg_replace_callback(\'/,([^,]|\\s+)/u\', function($m){\r\n				   return \',\'.(strpos(\' \', $m[1]) ? \' \' : \' \'.$m[1]);\r\n			   }, $value_data[\'country\']);\r\n\r\n			   $request[\'title_ru\']      = $value_data[\'name\'];\r\n               $request[\'title_en\']      = $value_data[\'original_name\'];\r\n               $request[\'title_alt\']     = $value_data[\'alternative_name\'];\r\n               $request[\'token_movie\']  = $value_data[\'token_movie\'];\r\n  			   $request[\'year\']          = $value_data[\'year\'];\r\n			   $request[\'description\']   = html_entity_decode($value_data[\'description\'], ENT_HTML5);\r\n			   $request[\'countries\']     = $value_data[\'country\'];\r\n               $request[\'genres\']        = $value_data[\'genre\'];\r\n               $request[\'actors\']        = $value_data[\'actors\'];\r\n			   $request[\'iframe_url\']    = \"\";\r\n			   $request[\'quality\']       = $value_data[\'quality\'];\r\n			   $request[\'slogan\']        = $value_data[\'tagline\'];\r\n			   $request[\'directors\']     = $value_data[\'directors\'];\r\n			   $request[\'producer\']      = $value_data[\'producers\'];\r\n			   $request[\'translator\']    = $value_data[\'translation\'];\r\n			   $request[\'trailer\']       = $value_data[\'iframe\'];\r\n\r\n			   $request[\'premiere_ru\']    = $value_data[\'premiere_ru\'];\r\n			   $request[\'premiere_world\'] = $value_data[\'premiere\'];\r\n\r\n			   $request[\'rating_kp\']        = $value_data[\'rating_kp\'];\r\n			   $request[\'rating_imdb\']      = $value_data[\'rating_imdb\'];\r\n			   $request[\'rating_world_art\'] = $value_data[\'world_art\'];\r\n			   $request[\'rate_mpaa\']        = $value_data[\'rating_mpaa\'];\r\n\r\n			   $request[\'kinopoisk_id\']     = $value_data[\'id_kp\'];\r\n			   $request[\'imdb_id\']          = $value_data[\'id_imdb\'];\r\n			   $request[\'tmdb_id\']          = $value_data[\'id_tmdb\'];\r\n			   $request[\'world_art_id\']     = $value_data[\'id_world_art\'];\r\n\r\n			   $request[\'age\']          = $value_data[\'age_restrictions\'];\r\n			   $request[\'time\']         = $value_data[\'time\'];\r\n			   $request[\'instream_ads\'] = ($value_data[\'ads\']==\'\') ? \'\' : 1;\r\n\r\n			   if($request[\'title_en\']==$request[\'title_ru\']) $request[\'title_en\']=\'\';\r\n			   \r\n			   $kp_id        = intval($request[\'kinopoisk_id\']);\r\n	           $year         = intval($request[\'year\']);\r\n	           $type         = \"trailer\";\r\n	           $quality      = $request[\'year\'];\r\n	           $episode      = $season = 1;\r\n\r\n\r\n			   $post_row = $db->super_query( \"SELECT id, title, xfields FROM \" . PREFIX . \"_post WHERE xfields LIKE \'%kinopoisk_id|{$value_data[\'id_kp\']}%\'\" );\r\n\r\n			   if(!$post_row) $alloha[\'news_id\']=0;\r\n			   else {$alloha[\'news_id\']=$post_row[\'id\'];}\r\n\r\n			   if(!$alloha[\'news_id\']){\r\n				   \r\n				   if ($config_mod[\'upload_poster\']) {\r\n					   \r\n					   $poster_file = $value_data[\'id_kp\'].\'_\'.time();\r\n					   $poster = request($value_data[\'poster\'], ROOT_DIR . \"/uploads/posts/\" . FOLDER_PREFIX.\'/\' .$poster_file);\r\n					   if($poster){\r\n						   \r\n						   if ($config_mod[\'poster_size\']) {\r\n							   \r\n							   $t_seite = intval($config[\'t_seite\']);\r\n							   $t_size = $config_mod[\'poster_size\'];\r\n							   \r\n							   $thumb = new thumbnail( $poster );\r\n\r\n							   if( $thumb->size_auto( $t_size, $t_seite ) ) {\r\n								   \r\n								   if (defined(\'DLE15\')) {\r\n									   $newFile = $thumb->save(str_replace(ROOT_DIR.\"/uploads/\" , \'\', $poster));\r\n\r\n									   $poster = ROOT_DIR . \"/uploads/posts/\" . FOLDER_PREFIX . \'/\' . $newFile; \r\n\r\n								   } else {\r\n									   $thumb->jpeg_quality( $config[\'jpeg_quality\'] );\r\n\r\n									   $thumb->save( $poster );\r\n							   }\r\n\r\n							   @chmod( $poster, 0666 );\r\n\r\n								/**************/\r\n\r\n\r\n							}\r\n\r\n						}\r\n\r\n						$request[\'poster\'] = str_replace(ROOT_DIR.\'/\' , $config[\'http_home_url\'], $poster);\r\n                        $poster = str_replace(ROOT_DIR.\"/uploads/posts/\" , \'\', $poster);\r\n					}\r\n				} else {\r\n					$request[\'poster\'] = $value_data[\'poster\'];\r\n				}\r\n			\r\n			\r\n			    $compile = template($config_mod, $request);\r\n			    \r\n			    $compile[\'metatitle\'] = check_if_alloha($compile[\'metatitle\'], $request);\r\n			    $compile[\'metatitle\'] = preg_replace(\'/\\s{2,}/\', \' \',  $compile[\'metatitle\']);\r\n\r\n\r\n			    if($compile[\'category\']==\'\') $compile[\'category\']=0;\r\n			    if(!$compile[\'tags\']) $compile[\'tags\'] = \'\';\r\n\r\n\r\n			    $compile[\'xfields\'] = !$alloha[\'news_id\'] ? xfcompile($compile[\'xfields\']) : xfcompile($xfdata);\r\n			    $compile[\'alt_name\'] = totranslit( stripslashes( $compile[\'alt_name\'] ), true, false );\r\n			    $compile[\'date\'] = date(\'Y-m-d H:i:s\');\r\n\r\n\r\n			    if (empty($compile[\'short_story\'])) {\r\n					$compile[\'short_story\'] = \'\';\r\n			    }\r\n\r\n			    if (empty($compile[\'full_story\'])) {\r\n					$compile[\'full_story\'] = \'\';\r\n			    }\r\n\r\n			    if (empty($compile[\'keywords\'])) {\r\n					$compile[\'keywords\'] = \'\';\r\n			    }\r\n\r\n			    if (empty($compile[\'descr\'])) {\r\n					$compile[\'descr\'] = \'\';\r\n			    }\r\n\r\n\r\n			    $approve =1;\r\n			    if($config_mod[\'go_moder_trailer\'])   $approve =0;\r\n\r\n\r\n\r\n			    $disable_index = 0;\r\n			    if (!empty($config_mod[\'disable_index\'])\r\n				    && (bool)$config_mod[\'disable_index\'] === true\r\n			    ) {\r\n				    $disable_index = 1;\r\n			    }\r\n\r\n			    $updateNewsDate = false;\r\n			    if (!empty($config_mod[\'update_news_date\'])\r\n				    && (bool)$config_mod[\'update_news_date\'] === true\r\n			    ) {\r\n				   $updateNewsDate = true;\r\n			    }\r\n\r\n			    $last_season = $request[\'last_season\'];\r\n			    $last_episode = $request[\'last_episode\'];\r\n			    $user_row = $db->super_query(\" SELECT user_id, name FROM \" . PREFIX . \"_users WHERE name=\'{$config_mod[\'author\']}\' \");\r\n\r\n\r\n			\r\n				$db->super_query( \"INSERT INTO \" . PREFIX . \"_alloha (kp_id, year, status, quality, type, episode, season) VALUES(\'{$kp_id}\', \'{$year}\', \'1\', \'{$quality}\', \'{$type}\', \'{$episode}\', \'{$season}\')\" );\r\n				\r\n				$db->query(db_query(\"INSERT INTO `\" . PREFIX . \"_post` (`autor`, `date`, `short_story`, `full_story`, `xfields`, `title`, `descr`, `keywords`, `category`, `alt_name`, `comm_num`, `allow_comm`, `allow_main`, `approve`, `fixed`, `allow_br`, `symbol`, `tags`, `metatitle`) VALUES (\'{$user_row[\'name\']}\', :date, :short_story, :full_story, :xfields, :title, :descr, :keywords, :category, :alt_name, 0, 1, 1, $approve, 0, 0, \'\', :tags, :metatitle);\", $compile));\r\n\r\n\r\n                \r\n				$news_id = $db->insert_id();\r\n				$db->query( \"INSERT INTO \" . PREFIX . \"_post_extras (news_id,user_id,disable_index) VALUES(\'$news_id\',\'{$user_row[\'user_id\']}\', \'$disable_index\')\" );\r\n\r\n				if($poster){\r\n					$db->query( \"INSERT INTO \" . PREFIX . \"_images (images,news_id,author,date) VALUES(\'{$poster}\',\'$news_id\',\'{$user_row[\'name\']}\',\'{$_TIME}\')\" );\r\n				}\r\n\r\n				alloha_mass_series($news_id, $result);\r\n\r\n				echo \"insert news --- $news_id --- {$value_data[\'name\']}\"; \r\n				\r\n			\r\n				\r\nif( $news_id){\r\n	$db->query(db_query(\"Update `\" . PREFIX . \"_post` set kinopoisk_id=\'\".$request[\'kinopoisk_id\'].\"\' where id=\'\".$news_id.\"\'\"));\r\n\r\n\r\n                \r\n    $ex_cats = explode(\',\', $compile[\'category\']);\r\n    foreach ($ex_cats as $ex_cat) {\r\n        $ex_cat = intval($ex_cat);\r\n        $db->query( \"INSERT INTO \" . PREFIX . \"_post_extras_cats (news_id, cat_id) VALUES (\'{$news_id}\', \'{$ex_cat}\')\" );\r\n    }\r\n}\r\n			}\r\n\r\n		   }\r\n		   \r\n		  if($kl_next) $res[\'next_page\']++;\r\n		  $config_mod=$global_config;\r\n	   } \r\n\r\n	   }\r\n	   \r\n    }\r\n\r\n    function getLog(){\r\n    	$log = unserialize( file_get_contents( ENGINE_DIR . \'/data/alloha.log\' ) );\r\n    	if (!$log) $log = array();\r\n    	return $log;\r\n    }\r\n\r\n    function setLog($type, $name, $val){\r\n    	$this->log[$type][$name] = $val;\r\n    	file_put_contents( ENGINE_DIR . \'/data/alloha.log\', serialize($this->log));\r\n    }\r\n\r\n}\r\n\r\n\r\n?>', 1, 0, 0, 1, '', '=='),
(223, 9, 'engine/ajax/alloha_rebuild.php', 'create', '', '<?php\r\n\r\n\r\nrequire_once DLEPlugins::Check(ENGINE_DIR . \'/modules/alloha.func.php\');\r\n\r\n$config_mod = unserialize( file_get_contents( ENGINE_DIR . \'/data/alloha.config\' ) );\r\nif ( !$config_mod ) $config_mod = array(); \r\n\r\ncheck_license_alloha();\r\n\r\nif ($member_id[\'user_group\']>1) {\r\n	die(\'{\"error\": \"for admin user only\"}\');\r\n}\r\n\r\n\r\n$last_file = ENGINE_DIR.\'/data/alloha.last.file\';\r\nif (!file_exists($last_file)) {\r\n	$startfrom = $rebuildcount = 0;\r\n	file_put_contents($log_file, \"0|0\");\r\n}\r\nelse {\r\n	$data = file_get_contents($last_file);\r\n	$data = explode(\'|\', $data);\r\n	$startfrom = $data[0];\r\n	$rebuildcount = $data[1];\r\n}\r\n\r\nfile_put_contents(\'log.txt\', \"$startfrom===$rebuildcount\\n\" , LOCK_EX|FILE_APPEND); \r\n\r\n\r\n$count_per_step = 10;\r\n\r\n$where = $startfrom ? \"WHERE id>\'{$startfrom}\'\" : \'\';\r\n\r\n\r\n$result = $db->query(\"SELECT id, date, xfields, category, alt_name, approve FROM \" . PREFIX . \"_post $where ORDER BY id LIMIT \".$count_per_step);\r\n\r\nwhile($row = $db->get_row($result))\r\n{\r\n	\r\n	$rebuildcount=$rebuildcount+1;\r\n\r\n	$xfields = xfieldsdataload(stripslashes($row[\'xfields\']));\r\n\r\n	$res = request(\'https://api.apbugall.org/?token=\'.$config_mod[\'api_token\'].\'&kp=\'.intval($xfields[\'kinopoisk_id\']));\r\n\r\n	$res = json_decode($res, true);\r\n\r\n	if(!count($res[\'data\'])) {\r\n		$startfrom = $row[\'id\'];\r\n		file_put_contents($last_file, \"{$startfrom}|{$rebuildcount}\", LOCK_EX); \r\n		continue;\r\n	} \r\n\r\n	if($res[\'status\']==\'error\') die(\'{\"error\": \"\'.$res[\'error_info\'].\'\"}\');\r\n\r\n	$res = $res[\'data\'];\r\n\r\n	$request = [];\r\n\r\n	$request[\'last_translate\'] = trim( @array_shift(explode(\',\', $res[\'translation\'])) );\r\n	$request[\'iframe_url\'] = $res[\'iframe\'];\r\n\r\n	$episodes = array_shift($res[\'seasons\']);\r\n	$episodes = count($episodes[\'episodes\']);\r\n	$request[\'episode_count\'] = $episodes;\r\n\r\n	$request[\'instream_ads\'] = ($res[\'ads\']==\'\') ? \'\' : 1;\r\n\r\n	$request[\'trailer\'] = $res[\'iframe_trailer\'];\r\n	$request[\'translator\']    = $res[\'translation\'];\r\n\r\n	$request[\'last_season\'] = $res[\'seasons_count\'];\r\n	$request[\'last_episode\'] = $res[\'last_episode\'];\r\n\r\n	$request[\'quality\'] = $res[\'quality\'];\r\n\r\n\r\n	$compile = template($config_mod, $request);\r\n\r\n	$new_xfields = array_diff($compile[\'xfields\'], [\' \', \'\']);\r\n	$new_xfields = array_replace($xfields,$new_xfields);\r\n\r\n	$xfields = $db->safesql(xfieldsdatasave($new_xfields));\r\n\r\n	$db->query( \"UPDATE \" . PREFIX . \"_post SET $date xfields=\'$xfields\' WHERE id=\'{$row[\'id\']}\'\" );\r\n\r\n	$startfrom =  $row[\'id\'];\r\n	file_put_contents($last_file, \"{$startfrom}|{$rebuildcount}\", LOCK_EX); \r\n	\r\n}\r\n\r\nclear_cache();\r\n\r\n$result = [\r\n	\'status\' => \'ok\',\r\n	\'startfrom\' => $startfrom,\r\n	\'rebuildcount\' => $rebuildcount\r\n];\r\n\r\necho json_encode($result);\r\n\r\n\r\n?>', 1, 0, 0, 1, '', '=='),
(224, 9, 'engine/ajax/alloha_playlist.php', 'create', '', '<?php\r\nheader(\'Content-Type: text/html; charset=utf-8\');\r\n\r\nfunction alloha_api($url) {\r\n	if ( $curl = curl_init())\r\n	{\r\n		$headers = array(\r\n        	\'User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.2924.87 Safari/537.36\',\r\n        	\'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8\',\r\n        	\'Accept-Language: ru-RU,ru;q=0.8,en-US;q=0.5,en;q=0.3\',\r\n        	\'Connection: keep-alive\',\r\n        	\'Cache-Control: max-age=0\',\r\n        	\'Upgrade-Insecure-Requests: 1\'\r\n    	);\r\n		curl_setopt($curl, CURLOPT_URL, $url);\r\n		curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);\r\n		curl_setopt($curl, CURLOPT_HTTPHEADER, $headers);\r\n		$out = curl_exec($curl);\r\n		$parse = json_decode($out, true);\r\n		curl_close($curl);\r\n	}\r\n	else {\r\n		$out = file_get_contents($url);\r\n		$parse = json_decode($out, true);\r\n	}\r\n	return $parse;\r\n}\r\n\r\n$config_mod = unserialize( file_get_contents( ENGINE_DIR . \'/data/alloha.config\' ) );\r\n\r\nif (isset($_POST[\'kinopoisk_id\'])) $kinopoisk_id = $_POST[\'kinopoisk_id\'];\r\nelse $kinopoisk_id = false;\r\nif (isset($_POST[\'imdb_id\'])) $imdb_id = $_POST[\'imdb_id\'];\r\nelse $imdb_id = false;\r\nif (isset($_POST[\'world_art_id\'])) $world_art_id = $_POST[\'world_art_id\'];\r\nelse $world_art_id = false;\r\nif (isset($_POST[\'tmdb_id\'])) $tmdb_id = $_POST[\'tmdb_id\'];\r\nelse $tmdb_id = false;\r\nif (isset($_POST[\'token_movie\'])) $token_movie = $_POST[\'token_movie\'];\r\nelse $token_movie = false;\r\nif (isset($_POST[\'last_translator\'])) $last_translator = $_POST[\'last_translator\'];\r\nelse $last_translator = false;\r\nif (isset($_POST[\'last_season\'])) $last_season = $_POST[\'last_season\'];\r\nelse $last_season = false;\r\nif (isset($_POST[\'last_episode\'])) $last_episode = $_POST[\'last_episode\'];\r\nelse $last_episode = false;\r\nif (isset($_POST[\'action\'])) $action = $_POST[\'action\'];\r\nelse $action = \'load_player\';\r\nif (isset($_POST[\'my_season\'])) $my_season = $_POST[\'my_season\'];\r\nelse $my_season = false;\r\nif (isset($_POST[\'cook\'])) $cook = $_POST[\'cook\'];\r\nelse $cook = 0;\r\nif (isset($_POST[\'news_id\'])) $news_id = $_POST[\'news_id\'];\r\nelse $news_id = false;\r\nif ( isset( $_POST[\'with_seasons\'] ) ) $with_seasons = $_POST[\'with_seasons\'];\r\nelse $with_seasons = 0;\r\nif ( isset( $_POST[\'api_token\'] ) ) $api_token = $_POST[\'api_token\'];\r\nelse $api_token = $config_mod[\'api_token\'];\r\nif (isset($_POST[\'this_season\'])) $this_season = $_POST[\'this_season\'];\r\nelse $this_season = 0;\r\nif (isset($_POST[\'this_episode\'])) $this_episode = $_POST[\'this_episode\'];\r\nelse $this_episode = 0;\r\nif (isset($_POST[\'this_translator\'])) $this_translator = $_POST[\'this_translator\'];\r\nelse $this_translator = 0;\r\n    \r\n$playlist = dle_cache(\'alloha_playlist\', $news_id, false);\r\n    \r\nif ( $playlist !== FALSE ) $playlist = json_decode($playlist, true);\r\nelseif ( $kinopoisk_id || $imdb_id || $tmdb_id || $world_art_id ) {\r\n\r\n	if ($imdb_id) {\r\n		$alloha = alloha_api(\'https://api.apbugall.org/?token=\'.$api_token.\'&imdb=\'.$imdb_id);\r\n	}\r\n\r\n	elseif ($tmdb_id) {\r\n		$alloha = alloha_api(\'https://api.apbugall.org/?token=\'.$api_token.\'&tmdb=\'.$tmdb_id);\r\n	}\r\n\r\n	elseif ($world_art_id) {\r\n		$alloha = alloha_api(\'https://api.apbugall.org/?token=\'.$api_token.\'&world_art=\'.$world_art_id);\r\n	}\r\n  \r\n	elseif ($token_movie) {\r\n		$alloha = alloha_api(\'https://api.apbugall.org/?token=\'.$api_token.\'&token_movie=\'.$token_movie);\r\n	}  \r\n\r\n	else {\r\n		$alloha = alloha_api(\'https://api.apbugall.org/?token=\'.$api_token.\'&kp=\'.$kinopoisk_id);\r\n	}\r\n// print_r($alloha);die();\r\n    if ( $alloha[\'status\'] == \'success\' ) {\r\n\r\n    	$seasons = [];\r\n\r\n    	foreach ($alloha[\'data\'][\'seasons\'] as $season => $episode) {\r\n    		foreach ($episode[\'episodes\'] as $ep_num => $episode_info) {\r\n    			foreach ($episode_info[\'translation\'] as $translator_id => $translation) {\r\n    				$seasons[$translator_id][\'translator_name\'] = $translation[\'translation\'];\r\n    				$seasons[$translator_id][\'seasons\'][$season][] = $ep_num;\r\n    				sort($seasons[$translator_id][\'seasons\'][$season]);\r\n    				ksort($seasons[$translator_id][\'seasons\']);\r\n    			}\r\n    			\r\n    		}\r\n    	}\r\n    	\r\n    	// print_r($seasons);die();\r\n\r\n    	$playlist = array();\r\n    	$max_episodes = array();\r\n    	$max_seasons = array();\r\n    	foreach ($seasons as $num => $translators) {\r\n    	    $playlist[$num][\'translator_name\'] = $translators[\'translator_name\'];\r\n    	    $playlist[$num][\'translator_id\'] = $num;\r\n    	    $playlist[$num][\'translator_link\'] = \'https://polygamist.as.alloeclub.com/?token_movie=\'.$alloha[\'data\'][\'token_movie\'].\'&token=\'.$config_mod[\'api_token\'];\r\n    	    $max_season = 0;\r\n    	    foreach ( $translators[\'seasons\'] as $season => $episode ) {\r\n    	        foreach ( $episode as $ep_num ) {\r\n    	            $playlist[$num][\'episodes\'][$season][] = $ep_num;\r\n    	            $max_episode = $ep_num;\r\n    	        }\r\n    	        $max_season = $season > $max_season ? $season : $max_season;\r\n    	    }\r\n    	    $playlist[$num][\'max_season\'] = $max_season;\r\n    	    $playlist[$num][\'max_episode\'] = $max_episode;\r\n    	    $max_seasons[] = $max_season;\r\n    	    $max_episodes[] = $max_episode;\r\n    	}\r\n    	//print_r($playlist);die();\r\n    	array_multisort($max_seasons, SORT_DESC, $max_episodes, SORT_DESC, $playlist);\r\n    	$playlist[0][\'serial_name\'] = $alloha[\'data\'][\'name\'];\r\n    	create_cache(\'alloha_playlist\', json_encode($playlist, JSON_UNESCAPED_UNICODE), $news_id, false);\r\n        unset($translators);\r\n        unset($episode);\r\n        unset($alloha);\r\n        unset($max_episodes);\r\n        unset($max_seasons);\r\n        unset($max_episode);\r\n        unset($max_season);\r\n    }\r\n}\r\n\r\n$serial_name = $playlist[0][\'serial_name\'];\r\n\r\nif ($playlist && $action == \'load_player\') {\r\n    \r\n    if ($playlist[0][\'translator_name\']) {\r\n        $translator_num = 0;\r\n        foreach ($playlist as $num => $translation) {\r\n            if ( $last_translator > 0 ) {\r\n                if ( $last_translator == $translation[\'translator_id\'] ) {\r\n                    $active_tr = \" active\";\r\n                    $translator_num = $num;\r\n                    $translator_title = $translation[\'translator_name\'];\r\n                }\r\n                else $active_tr = \"\";\r\n            }\r\n            else {\r\n                if ( $num == 0 ) $active_tr = \" active\";\r\n                else $active_tr = \"\";\r\n            }\r\n            $translators .= \'<li onclick=\"translates();\" class=\"b-translator__item\'.$active_tr.\'\" data-this_translator=\"\'.$translation[\'translator_id\'].\'\">\'.$translation[\'translator_name\'].\'</li>\';\r\n        }\r\n        $translators = \'<div class=\"b-translators__block\"><div class=\"b-translators__title\">В русской озвучке от:</div><ul id=\"translators-list\" class=\"b-translators__list\">\'.$translators.\'</ul></div>\';\r\n    }\r\n    if ($last_season > 0 && $last_translator > 0 && $last_episode > 0 && $cook > 0 && $with_seasons > 0) {\r\n        $lastepisodeout = \'<div class=\"b-post__lastepisodeout\"><h2><i class=\"fa fa-eye\" style=\"font-size: 20px !important;\"></i>  \' . $serial_name . \'<span id=\"les\">. Вы остановились на \' . $last_season . \' сезоне \' . $last_episode . \' серии в озвучке «\' . $translator_title . \'»</span><i class=\"fa fa-trash\" onclick=\"del();\" id=\"lesc\" title=\"Удалить отметку\"></i></h2> </div>\';\r\n    }\r\n    elseif ($last_season > 0 && $last_translator > 0 && $last_episode > 0 && $cook > 0 && $with_seasons == 0) {\r\n        $lastepisodeout = \'<div class=\"b-post__lastepisodeout\"><h2><i class=\"fa fa-eye\" style=\"font-size: 20px !important;\"></i>  \' . $serial_name . \'<span id=\"les\">. Вы остановились на \' . $last_episode . \' серии в озвучке «\' . $translator_title . \'»</span><i class=\"fa fa-trash\" onclick=\"del();\" id=\"lesc\" title=\"Удалить отметку\"></i></h2> </div>\';\r\n    }\r\n    else {\r\n        $lastepisodeout = \'<div class=\"b-post__lastepisodeout\"><h2><i class=\"fa fa-eye\" style=\"font-size: 20px !important;\"></i>  \' . $serial_name . \'<span id=\"ln\"> \' . $playlist[$translator_num][\'max_season\'] . \' сезон \' . $playlist[$translator_num][\'max_episode\'] . \' серия</span><span id=\"les\"></span></h2></div>\';\r\n    }\r\n    $ajax_player = \'<div id=\"player\" class=\"b-player\" style=\"text-align: center;\">\';\r\n    $seasons = \'<ul id=\"simple-seasons-tabs\" class=\"b-simple_seasons__list clearfix\">\';\r\n\r\n    foreach ($playlist[$translator_num][\'episodes\'] as $season => $episode) {\r\n            \r\n        if ( $last_season > 0 ) {\r\n            if ( $last_season == $season ) $active_szn = \" active\";\r\n            else $active_szn = \"\";\r\n        }\r\n        else {\r\n            if ( $playlist[$translator_num][\'max_season\'] == $season ) $active_szn = \" active\";\r\n            else $active_szn = \"\";\r\n        }\r\n                \r\n        $seasons .= \'<li onclick=\"seasons();\" class=\"b-simple_season__item\' . $active_szn . \'\" data-this_season=\"\' . $season . \'\" data-this_translator=\"\' . $playlist[$translator_num][\'translator_id\'] . \'\">Сезон \' . $season . \'</li>\';\r\n    }\r\n    $seasons .= \'</ul>\';\r\n    \r\n    $episodes = \'<div class=\"prenext\"><div class=\"prevpl\" onclick=\"prevpl();\">&lsaquo;</div><div id=\"simple-episodes-tabs\">\';\r\n    $episodes .= \'<ul id=\"simple-episodes-list\" class=\"b-simple_episodes__list clearfix\">\';\r\n    \r\n    if ( $last_season > 0 ) $season_num = $last_season;\r\n    else $season_num = $playlist[$translator_num][\'max_season\'];\r\n            \r\n    foreach ($playlist[$translator_num][\'episodes\'][$season_num] as $episode_num) {\r\n        if ( $last_episode > 0 ) {\r\n            if ( $last_episode == $episode_num ) $active_epzd = \" active\";\r\n            else $active_epzd = \"\";\r\n        }\r\n        else {\r\n            if ( $playlist[$translator_num][\'max_episode\'] == $episode_num ) $active_epzd = \" active\";\r\n            else $active_epzd = \"\";\r\n        }\r\n        \r\n        $episodes .= \'<li onclick=\"episodes();\" class=\"b-simple_episode__item\' . $active_epzd . \'\" data-this_season=\"\' . $season_num . \'\" data-this_episode=\"\' . $episode_num . \'\" data-this_translator=\"\' . $playlist[$translator_num][\'translator_id\'] . \'\">Серия \' . $episode_num . \'</li>\';\r\n    }\r\n    $episodes .= \'</ul>\';\r\n    $episodes .= \'</div><div class=\"nextpl\" onclick=\"nextpl();\">&rsaquo;</div></div>\';\r\n        \r\n    if ( $last_season > 0 ) $this_season = \"&season=\".$last_season;\r\n    else $this_season = \"&season=\".$playlist[$translator_num][\'max_season\'];\r\n    if ( $last_episode > 0 ) $this_episode = \"&episode=\".$last_episode;\r\n    else $this_episode = \"&episode=\".$playlist[$translator_num][\'max_episode\'];\r\n    if ( $last_translator > 0 ) $this_translator = \"&translation=\".$last_translator;\r\n    else $this_translator = \"&translation=\".$playlist[$translator_num][\'translator_id\'];\r\n        \r\n    $iframe_url = $playlist[$translator_num][\'translator_link\'].\'&hidden=season,episode,translation\';\r\n    $iframe .= \'<div id=\"ibox\"><div id=\"player-loader-overlay\"></div><div id=\"player_alloha\" style=\"height: 100%; margin: 0 auto; width: 100%;\"><iframe src=\"\'.$iframe_url.$this_season.$this_episode.$this_translator.\'\" width=\"724\" height=\"460\" frameborder=\"0\" allowfullscreen=\"\"></iframe></div>\';\r\n\r\n    if ( $with_seasons > 0 )\r\n        $ajax_player = $ajax_player . $seasons . $iframe . $episodes;\r\n    else\r\n        $ajax_player = $ajax_player . $iframe . $episodes;\r\n\r\n    $ajax_player .= \'</div></div>\';\r\n    $ajax_player = $lastepisodeout . $translators . $ajax_player;\r\n\r\n    echo $ajax_player;\r\n    \r\n}\r\n\r\nif ($playlist && $action == \'translates\') {\r\n\r\n    foreach ( $playlist as $pl ) {\r\n        if ( $pl[\'translator_id\'] == $this_translator ) {\r\n            $this_playlist = $pl;\r\n            break;\r\n        }\r\n    }\r\n\r\n    $seasons = \'<ul id=\"simple-seasons-tabs\" class=\"b-simple_seasons__list clearfix\">\';\r\n    foreach ($this_playlist[\'episodes\'] as $season => $episode) {\r\n            \r\n        if ( $this_playlist[\'max_season\'] == $season ) $active_szn = \" active\";\r\n        else $active_szn = \"\";\r\n                \r\n        $seasons .= \'<li onclick=\"seasons();\" class=\"b-simple_season__item\' . $active_szn . \'\" data-this_season=\"\' . $season . \'\" data-this_translator=\"\' . $this_translator . \'\">Сезон \' . $season . \'</li>\';\r\n            \r\n        if ( $this_playlist[\'max_season\'] == $season ) {\r\n            \r\n            $episodes = \'<div class=\"prenext\"><div class=\"prevpl\" onclick=\"prevpl();\">&lsaquo;</div><div id=\"simple-episodes-tabs\">\';\r\n            $episodes .= \'<ul id=\"simple-episodes-list\" class=\"b-simple_episodes__list clearfix\">\';\r\n            \r\n            foreach ($episode as $episode_num) {\r\n                if ( $this_playlist[\'max_episode\'] == $episode_num ) $active_epzd = \" active\";\r\n                else $active_epzd = \"\";\r\n            \r\n                $episodes .= \'<li onclick=\"episodes();\" class=\"b-simple_episode__item\' . $active_epzd . \'\" data-this_season=\"\' . $season . \'\" data-this_episode=\"\' . $episode_num . \'\" data-this_translator=\"\' . $this_translator . \'\">Серия \' . $episode_num . \'</li>\';\r\n            }\r\n            $episodes .= \'</ul>\';\r\n            $episodes .= \'</div><div class=\"nextpl\" onclick=\"nextpl();\">&rsaquo;</div></div>\';\r\n        }\r\n    }\r\n    $seasons .= \'</ul>\';\r\n        \r\n    if ( $last_season > 0 ) $this_season = \"&season=\".$last_season;\r\n    else $this_season = \"&season=\".$this_playlist[\'max_season\'];\r\n    if ( $last_episode > 0 ) $this_episode = \"&episode=\".$last_episode;\r\n    else $this_episode = \"&episode=\".$this_playlist[\'max_episode\'];\r\n    if ( $last_translator > 0 ) $this_translator = \"&translation=\".$last_translator;\r\n    else $this_translator = \"&translation=\".$this_translator;\r\n        \r\n    $iframe_url = $this_playlist[\'translator_link\'].\'&hidden=season,episode,translation\';\r\n    $iframe .= \'<div id=\"ibox\"><div id=\"player-loader-overlay\"></div><div id=\"player_alloha\" style=\"height: 100%; margin: 0 auto; width: 100%;\"><iframe src=\"\'.$iframe_url.$this_season.$this_translator.$this_episode.\'\" width=\"724\" height=\"460\" frameborder=\"0\" allowfullscreen=\"\"></iframe></div>\';\r\n\r\n    if ( $with_seasons > 0 )\r\n        $ajax_player = $seasons . $iframe . $episodes;\r\n    else\r\n        $ajax_player = $iframe . $episodes;\r\n\r\n    echo $ajax_player;\r\n}\r\n\r\nif ($playlist && $action == \'seasons\') {\r\n    \r\n    foreach ( $playlist as $pl ) {\r\n        if ( $pl[\'translator_id\'] == $this_translator ) {\r\n            $this_playlist = $pl;\r\n            break;\r\n        }\r\n    }\r\n            \r\n    $episodes = \'<div class=\"prenext\"><div class=\"prevpl\" onclick=\"prevpl();\">&lsaquo;</div><div id=\"simple-episodes-tabs\">\';\r\n    $episodes .= \'<ul id=\"simple-episodes-list\" class=\"b-simple_episodes__list clearfix\">\';\r\n            \r\n    foreach ($this_playlist[\'episodes\'][$this_season] as $episode_num) {\r\n        if ( min($this_playlist[\'episodes\'][$this_season]) == $episode_num ) {\r\n          $active_epzd = \" active\";\r\n          $min_episode = $episode_num;\r\n        }\r\n        else $active_epzd = \"\";\r\n            \r\n        $episodes .= \'<li onclick=\"episodes();\" class=\"b-simple_episode__item\' . $active_epzd . \'\" data-this_season=\"\' . $this_season . \'\" data-this_episode=\"\' . $episode_num . \'\" data-this_translator=\"\' . $this_translator . \'\">Серия \' . $episode_num . \'</li>\';\r\n    }\r\n    $episodes .= \'</ul>\';\r\n    $episodes .= \'</div><div class=\"nextpl\" onclick=\"nextpl();\">&rsaquo;</div></div>\';\r\n        \r\n    $this_season = \"&season=\".$this_season;\r\n    $this_episode = \"&episode=\".$min_episode;\r\n    $this_translator = \"&translation=\".$this_translator;\r\n        \r\n    $iframe_url = $this_playlist[\'translator_link\'].\'&hidden=season,episode,translation\';\r\n    $iframe .= \'<div id=\"ibox\"><div id=\"player-loader-overlay\"></div><div id=\"player_alloha\" style=\"height: 100%; margin: 0 auto; width: 100%;\"><iframe src=\"\'.$iframe_url.$this_season.$this_translator.$this_episode.\'\" width=\"724\" height=\"460\" frameborder=\"0\" allowfullscreen=\"\"></iframe></div>\';\r\n\r\n    $ajax_player = $iframe . $episodes;\r\n\r\n    echo $ajax_player;\r\n    \r\n}', 1, 0, 0, 1, '', '=='),
(225, 15, 'engine/classes/templates.class.php', 'after', 'class dle_template {', 'var $transfer = array ();', 0, 0, 0, 1, '', '=='),
(226, 15, 'engine/classes/templates.class.php', 'before', 'function get_real_time() {', '/* Глобализация данных */\r\n   function transfer_result($matches=array()){\r\n       $index   = $matches[2];\r\n       $itsdata = $matches[3];\r\n       $this->transfer[$index] = $itsdata;\r\n   }', 0, 0, 0, 1, '', '=='),
(227, 15, 'engine/classes/templates.class.php', 'before', 'if( isset( $this->result[$tpl] ) ) $this->result[$tpl] .= $this->copy_template;', 'if (strpos ($this->template, \"[transfer=\" ) !== false) {\r\n   preg_replace_callback( \"#\\\\[(transfer)=(.+?)\\\\](.*?)\\\\[/transfer\\\\]#is\",array( &$this, \'transfer_result\'), $this->copy_template);\r\n   foreach($this->transfer as $index => $itsdata) {\r\n           $this->result[\'transfer\'][$index][] = $itsdata;\r\n   }\r\n}\r\n$this->copy_template = preg_replace ( \"#\\\\[(transfer)=(.+?)\\\\](.*?)\\\\[/transfer\\\\]#is\", \"\", $this->copy_template);', 0, 0, 0, 1, '', '=='),
(228, 15, 'engine/classes/parse.class.php', 'after', '$source = str_ireplace( \"{custom\", \"&#123;custom\", $source );', '$source = str_ireplace( \"{transfer\", \"&#123;transfer\", $source );', 0, 0, 0, 1, '', '=='),
(229, 15, 'engine/modules/main.php', 'before', 'echo $tpl->result[\'main\'];', '/* Глобализация данных by rocksmart */\r\nif( count($tpl->result[\'transfer\']) > 0 ) {\r\n   foreach($tpl->result[\'transfer\'] as $index => $itsdata) {\r\n       $tpl->result[\'main\'] = str_replace ( \'{transfer_\' . $index . \'}\', implode($itsdata), $tpl->result[\'main\'] );\r\n   }\r\n}\r\n$tpl->result[\'main\'] = preg_replace( \"#\\\\{transfer_(.+?)\\\\}#i\", \"\", $tpl->result[\'main\']);', 0, 0, 0, 1, '', '=='),
(230, 5, 'engine/init.php', 'before', '//################# Definition of user groups', '//################# Definition of plugins\r\n$plugins_active = get_vars ( \"plugins_active\" );\r\n\r\nif (!is_array( $plugins_active )) {\r\n	$plugins_active = array ();\r\n\r\n	$db->query ( \"SELECT id, active FROM \" . USERPREFIX . \"_plugins ORDER BY id ASC\" );\r\n\r\n	while ( $row = $db->get_row () ) {\r\n\r\n		$plugins_active[$row[\'id\']] = $row[\'active\'];\r\n\r\n	}\r\n	set_vars ( \"plugins_active\", $plugins_active );\r\n	$db->free ();\r\n}', 1, 0, 0, 1, '', '=='),
(231, 5, 'engine/modules/main.php', 'before', 'if ( ($allow_active_news AND $news_found AND $config[\'allow_change_sort\'] AND $dle_module != \"userinfo\") OR defined(\'CUSTOMSORT\')) {', 'if (stripos ( $tpl->copy_template, \"[active-plugins=\" ) !== false) {\r\n	$tpl->copy_template = preg_replace_callback ( \"#\\\\[(active-plugins)=(\\d+?)\\\\](.*?)\\\\[/active-plugins\\\\]#is\", \"check_plugins\", $tpl->copy_template );\r\n}\r\n\r\nif (stripos ( $tpl->copy_template, \"[not-active-plugins=\" ) !== false) {\r\n	$tpl->copy_template = preg_replace_callback ( \"#\\\\[(not-active-plugins)=(\\d+?)\\\\](.*?)\\\\[/not-active-plugins\\\\]#is\", \"check_plugins\", $tpl->copy_template );\r\n}', 1, 0, 0, 1, '', '=='),
(232, 5, 'engine/modules/functions.php', 'before', 'function check_category( $matches=array() ) {', 'function check_plugins( $matches=array() ) {\r\n	global $plugins_active;\r\n\r\n	$block 		= $matches[3];\r\n	$id_plugins	= intval($matches[2]);\r\n	\r\n  	if( !isset($plugins_active[$id_plugins]) ) return \"\";\r\n\r\n	if ($matches[1] == \"active-plugins\") $action = true; else $action = false;\r\n	\r\n	$found = false;\r\n	\r\n  	if( $action ) {\r\n		\r\n		if( $plugins_active[$id_plugins] ) return $block;\r\n	\r\n  	} else {\r\n			\r\n		if( $plugins_active[$id_plugins] ) $found = true;\r\n		\r\n	}\r\n\r\n	if ( !$action AND !$found ) {	\r\n\r\n		return $block;\r\n	}\r\n\r\n	return \"\";\r\n\r\n}', 1, 0, 0, 1, '', '=='),
(233, 5, 'engine/inc/plugins.php', 'replace', 'class=\\\"img-lg section_icon\\\"></div>', 'class=\\\"img-lg section_icon\\\"><span style=\\\"color: #979696;text-align: center;display: inline-block;width: 100%;font-weight: 500;\\\">{$row[\'id\']}</span></div>', 1, 0, 0, 1, '', '=='),
(234, 5, 'engine/modules/show.full.php', 'before', 'if( $config[\'user_in_news\'] ) {', 'if (stripos ( $tpl->copy_template, \"[active-plugins=\" ) !== false) {\r\n	$tpl->copy_template = preg_replace_callback ( \"#\\\\[(active-plugins)=(\\d+?)\\\\](.*?)\\\\[/active-plugins\\\\]#is\", \"check_plugins\", $tpl->copy_template );\r\n}\r\n\r\nif (stripos ( $tpl->copy_template, \"[not-active-plugins=\" ) !== false) {\r\n	$tpl->copy_template = preg_replace_callback ( \"#\\\\[(not-active-plugins)=(\\d+?)\\\\](.*?)\\\\[/not-active-plugins\\\\]#is\", \"check_plugins\", $tpl->copy_template );\r\n}', 1, 0, 0, 1, '', '==');

-- --------------------------------------------------------

--
-- Структура таблицы `dle_plugins_logs`
--

CREATE TABLE `dle_plugins_logs` (
  `id` int(11) NOT NULL,
  `plugin_id` int(11) NOT NULL DEFAULT '0',
  `area` text NOT NULL,
  `error` text NOT NULL,
  `type` varchar(10) NOT NULL DEFAULT '',
  `action_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `dle_pm`
--

CREATE TABLE `dle_pm` (
  `id` int(11) UNSIGNED NOT NULL,
  `subj` varchar(255) NOT NULL DEFAULT '',
  `text` text NOT NULL,
  `user` mediumint(9) NOT NULL DEFAULT '0',
  `user_from` varchar(40) NOT NULL DEFAULT '',
  `date` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `pm_read` tinyint(1) NOT NULL DEFAULT '0',
  `folder` varchar(10) NOT NULL DEFAULT '',
  `reply` tinyint(1) NOT NULL DEFAULT '0',
  `sendid` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `dle_poll`
--

CREATE TABLE `dle_poll` (
  `id` mediumint(9) UNSIGNED NOT NULL,
  `news_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(200) NOT NULL DEFAULT '',
  `frage` varchar(200) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `votes` mediumint(9) NOT NULL DEFAULT '0',
  `multiple` tinyint(1) NOT NULL DEFAULT '0',
  `answer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `dle_poll_log`
--

CREATE TABLE `dle_poll_log` (
  `id` int(11) UNSIGNED NOT NULL,
  `news_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `member` varchar(40) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `dle_post`
--

CREATE TABLE `dle_post` (
  `id` int(11) NOT NULL,
  `autor` varchar(40) CHARACTER SET utf8mb4 NOT NULL DEFAULT '',
  `date` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  `short_story` mediumtext CHARACTER SET utf8mb4 NOT NULL,
  `full_story` mediumtext CHARACTER SET utf8mb4 NOT NULL,
  `xfields` mediumtext CHARACTER SET utf8mb4 NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 NOT NULL DEFAULT '',
  `descr` varchar(300) CHARACTER SET utf8mb4 NOT NULL DEFAULT '',
  `keywords` text CHARACTER SET utf8mb4 NOT NULL,
  `category` varchar(190) CHARACTER SET utf8mb4 NOT NULL DEFAULT '0',
  `alt_name` varchar(190) CHARACTER SET utf8mb4 NOT NULL DEFAULT '',
  `comm_num` mediumint(9) UNSIGNED NOT NULL DEFAULT '0',
  `allow_comm` tinyint(1) NOT NULL DEFAULT '1',
  `allow_main` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `approve` tinyint(1) NOT NULL DEFAULT '0',
  `fixed` tinyint(1) NOT NULL DEFAULT '0',
  `allow_br` tinyint(1) NOT NULL DEFAULT '1',
  `symbol` varchar(3) CHARACTER SET utf8mb4 NOT NULL DEFAULT '',
  `tags` varchar(255) CHARACTER SET utf8mb4 NOT NULL DEFAULT '',
  `kinopoisk_id` int(12) NOT NULL,
  `metatitle` varchar(255) CHARACTER SET utf8mb4 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `dle_post_extras`
--

CREATE TABLE `dle_post_extras` (
  `eid` int(11) NOT NULL,
  `news_id` int(11) NOT NULL DEFAULT '0',
  `news_read` int(11) NOT NULL DEFAULT '0',
  `allow_rate` tinyint(1) NOT NULL DEFAULT '1',
  `rating` int(11) NOT NULL DEFAULT '0',
  `vote_num` int(11) NOT NULL DEFAULT '0',
  `votes` tinyint(1) NOT NULL DEFAULT '0',
  `view_edit` tinyint(1) NOT NULL DEFAULT '0',
  `disable_index` tinyint(1) NOT NULL DEFAULT '0',
  `related_ids` varchar(255) CHARACTER SET utf8mb4 NOT NULL DEFAULT '',
  `access` varchar(150) CHARACTER SET utf8mb4 NOT NULL DEFAULT '',
  `editdate` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `editor` varchar(40) CHARACTER SET utf8mb4 NOT NULL DEFAULT '',
  `reason` varchar(255) CHARACTER SET utf8mb4 NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `disable_search` tinyint(1) NOT NULL DEFAULT '0',
  `need_pass` tinyint(1) NOT NULL DEFAULT '0',
  `allow_rss` tinyint(1) NOT NULL DEFAULT '1',
  `allow_rss_turbo` tinyint(1) NOT NULL DEFAULT '1',
  `allow_rss_dzen` tinyint(1) NOT NULL DEFAULT '1',
  `edited_now` varchar(100) CHARACTER SET utf8mb4 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `dle_post_extras_cats`
--

CREATE TABLE `dle_post_extras_cats` (
  `id` int(11) NOT NULL,
  `news_id` int(11) NOT NULL DEFAULT '0',
  `cat_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `dle_post_log`
--

CREATE TABLE `dle_post_log` (
  `id` int(11) NOT NULL,
  `news_id` int(11) NOT NULL DEFAULT '0',
  `expires` varchar(15) NOT NULL DEFAULT '',
  `action` tinyint(1) NOT NULL DEFAULT '0',
  `move_cat` varchar(190) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `dle_post_pass`
--

CREATE TABLE `dle_post_pass` (
  `id` int(11) NOT NULL,
  `news_id` int(11) NOT NULL DEFAULT '0',
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `dle_question`
--

CREATE TABLE `dle_question` (
  `id` int(11) NOT NULL,
  `question` varchar(255) NOT NULL DEFAULT '',
  `answer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `dle_read_log`
--

CREATE TABLE `dle_read_log` (
  `id` int(11) UNSIGNED NOT NULL,
  `news_id` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(46) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `dle_redirects`
--

CREATE TABLE `dle_redirects` (
  `id` int(11) UNSIGNED NOT NULL,
  `from` varchar(250) NOT NULL DEFAULT '',
  `to` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `dle_rss`
--

CREATE TABLE `dle_rss` (
  `id` smallint(6) NOT NULL,
  `url` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `allow_main` tinyint(1) NOT NULL DEFAULT '0',
  `allow_rating` tinyint(1) NOT NULL DEFAULT '0',
  `allow_comm` tinyint(1) NOT NULL DEFAULT '0',
  `text_type` tinyint(1) NOT NULL DEFAULT '0',
  `date` tinyint(1) NOT NULL DEFAULT '0',
  `search` text NOT NULL,
  `max_news` tinyint(3) NOT NULL DEFAULT '0',
  `cookie` text NOT NULL,
  `category` smallint(6) NOT NULL DEFAULT '0',
  `lastdate` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `dle_rss`
--

INSERT INTO `dle_rss` (`id`, `url`, `description`, `allow_main`, `allow_rating`, `allow_comm`, `text_type`, `date`, `search`, `max_news`, `cookie`, `category`, `lastdate`) VALUES
(1, 'https://sngkorea.ru/rss.xml', 'Официальный сайт', 1, 1, 1, 1, 1, '<div class=\"card-body post-body pl-4 pr-3 pb-4 pt-0\">{get}<div class=\"card-footer d-flex align-content-center pt-0 pl-0 pr-4 pb-3\">', 5, '', 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `dle_rssinform`
--

CREATE TABLE `dle_rssinform` (
  `id` smallint(6) NOT NULL,
  `tag` varchar(40) NOT NULL DEFAULT '',
  `descr` varchar(255) NOT NULL DEFAULT '',
  `category` varchar(200) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `template` varchar(40) NOT NULL DEFAULT '',
  `news_max` smallint(6) NOT NULL DEFAULT '0',
  `tmax` smallint(6) NOT NULL DEFAULT '0',
  `dmax` smallint(6) NOT NULL DEFAULT '0',
  `approve` tinyint(1) NOT NULL DEFAULT '1',
  `rss_date_format` varchar(20) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `dle_sendlog`
--

CREATE TABLE `dle_sendlog` (
  `id` int(11) UNSIGNED NOT NULL,
  `user` varchar(40) NOT NULL DEFAULT '',
  `date` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `flag` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `dle_social_login`
--

CREATE TABLE `dle_social_login` (
  `id` int(11) NOT NULL,
  `sid` varchar(40) CHARACTER SET utf8mb4 NOT NULL DEFAULT '',
  `uid` int(11) NOT NULL DEFAULT '0',
  `password` varchar(32) CHARACTER SET utf8mb4 NOT NULL DEFAULT '',
  `provider` varchar(15) CHARACTER SET utf8mb4 NOT NULL DEFAULT '',
  `wait` tinyint(1) NOT NULL DEFAULT '0',
  `waitlogin` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `dle_spam_log`
--

CREATE TABLE `dle_spam_log` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip` varchar(46) CHARACTER SET utf8mb4 NOT NULL DEFAULT '',
  `is_spammer` tinyint(1) NOT NULL DEFAULT '0',
  `email` varchar(50) CHARACTER SET utf8mb4 NOT NULL DEFAULT '',
  `date` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `dle_static`
--

CREATE TABLE `dle_static` (
  `id` mediumint(9) NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `descr` varchar(255) NOT NULL DEFAULT '',
  `template` mediumtext NOT NULL,
  `allow_br` tinyint(1) NOT NULL DEFAULT '0',
  `allow_template` tinyint(1) NOT NULL DEFAULT '0',
  `grouplevel` varchar(100) NOT NULL DEFAULT 'all',
  `tpl` varchar(255) NOT NULL DEFAULT '',
  `metadescr` varchar(300) NOT NULL DEFAULT '',
  `metakeys` text NOT NULL,
  `views` mediumint(9) NOT NULL DEFAULT '0',
  `template_folder` varchar(50) NOT NULL DEFAULT '',
  `date` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `metatitle` varchar(255) NOT NULL DEFAULT '',
  `allow_count` tinyint(1) NOT NULL DEFAULT '1',
  `sitemap` tinyint(1) NOT NULL DEFAULT '1',
  `disable_index` tinyint(1) NOT NULL DEFAULT '0',
  `disable_search` tinyint(1) NOT NULL DEFAULT '0',
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `dle_static`
--

INSERT INTO `dle_static` (`id`, `name`, `descr`, `template`, `allow_br`, `allow_template`, `grouplevel`, `tpl`, `metadescr`, `metakeys`, `views`, `template_folder`, `date`, `metatitle`, `allow_count`, `sitemap`, `disable_index`, `disable_search`, `password`) VALUES
(1, 'dle-rules-page', 'Общие правила на сайте', '<b>Общие правила поведения на сайте:</b><br><br>Начнем с того, что на сайте общаются сотни людей, разных религий и взглядов, и все они являются полноправными посетителями нашего сайта, поэтому если мы хотим чтобы это сообщество людей функционировало нам и необходимы правила. Мы настоятельно рекомендуем прочитать настоящие правила, это займет у вас всего минут пять, но сбережет нам и вам время и поможет сделать сайт более интересным и организованным.<br><br>Начнем с того, что на нашем сайте нужно вести себя уважительно ко всем посетителям сайта. Не надо оскорблений по отношению к участникам, это всегда лишнее. Если есть претензии - обращайтесь к Админам или Модераторам (воспользуйтесь личными сообщениями). Оскорбление других посетителей считается у нас одним из самых тяжких нарушений и строго наказывается администрацией. <b>У нас строго запрещен расизм, религиозные и политические высказывания.</b> Заранее благодарим вас за понимание и за желание сделать наш сайт более вежливым и дружелюбным.<br><br><b>На сайте строго запрещено:</b> <br><br>- сообщения, не относящиеся к содержанию статьи или к контексту обсуждения<br>- оскорбление и угрозы в адрес посетителей сайта<br>- в комментариях запрещаются выражения, содержащие ненормативную лексику, унижающие человеческое достоинство, разжигающие межнациональную рознь<br>- спам, а также реклама любых товаров и услуг, иных ресурсов, СМИ или событий, не относящихся к контексту обсуждения статьи<br><br>Давайте будем уважать друг друга и сайт, на который Вы и другие читатели приходят пообщаться и высказать свои мысли. Администрация сайта оставляет за собой право удалять комментарии или часть комментариев, если они не соответствуют данным требованиям.<br><br>При нарушении правил вам может быть дано <b>предупреждение</b>. В некоторых случаях может быть дан бан <b>без предупреждений</b>. По вопросам снятия бана писать администратору.<br><br><b>Оскорбление</b> администраторов или модераторов также караются <b>баном</b> - уважайте чужой труд.<br><br><div style=\"text-align:center;\">{ACCEPT-DECLINE}</div>', 1, 1, 'all', '', 'Общие правила на сайте', 'Общие правила на сайте', 4, '', 1681377181, '', 1, 1, 0, 0, ''),
(2, 'top', 'Топ кино за сутки', '<h2>Самые просматриваемые фильмы и сериалы за эти сутки</h2>', 1, 1, 'all', 'main-top', 'Самые просматриваемые фильмы и сериалы за эти сутки', 'Самые, просматриваемые, фильмы, сериалы, сутки', 15, '', 1683358827, 'Топ кино за сутки', 1, 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `dle_static_files`
--

CREATE TABLE `dle_static_files` (
  `id` int(11) NOT NULL,
  `static_id` int(11) NOT NULL DEFAULT '0',
  `author` varchar(40) NOT NULL DEFAULT '',
  `date` varchar(15) NOT NULL DEFAULT '',
  `name` varchar(200) NOT NULL DEFAULT '',
  `onserver` varchar(190) NOT NULL DEFAULT '',
  `dcount` int(11) NOT NULL DEFAULT '0',
  `size` bigint(20) NOT NULL DEFAULT '0',
  `checksum` char(32) NOT NULL DEFAULT '',
  `driver` tinyint(1) NOT NULL DEFAULT '0',
  `is_public` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `dle_subscribe`
--

CREATE TABLE `dle_subscribe` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(40) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `news_id` int(11) NOT NULL DEFAULT '0',
  `hash` varchar(32) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `dle_tags`
--

CREATE TABLE `dle_tags` (
  `id` int(11) NOT NULL,
  `news_id` int(11) NOT NULL DEFAULT '0',
  `tag` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `dle_twofactor`
--

CREATE TABLE `dle_twofactor` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `pin` varchar(10) NOT NULL DEFAULT '',
  `attempt` tinyint(1) NOT NULL DEFAULT '0',
  `date` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `dle_usergroups`
--

CREATE TABLE `dle_usergroups` (
  `id` smallint(6) NOT NULL,
  `group_name` varchar(50) NOT NULL DEFAULT '',
  `allow_cats` text NOT NULL,
  `allow_adds` tinyint(1) NOT NULL DEFAULT '1',
  `cat_add` text NOT NULL,
  `allow_admin` tinyint(1) NOT NULL DEFAULT '0',
  `allow_addc` tinyint(1) NOT NULL DEFAULT '0',
  `allow_editc` tinyint(1) NOT NULL DEFAULT '0',
  `allow_delc` tinyint(1) NOT NULL DEFAULT '0',
  `edit_allc` tinyint(1) NOT NULL DEFAULT '0',
  `del_allc` tinyint(1) NOT NULL DEFAULT '0',
  `moderation` tinyint(1) NOT NULL DEFAULT '0',
  `allow_all_edit` tinyint(1) NOT NULL DEFAULT '0',
  `allow_edit` tinyint(1) NOT NULL DEFAULT '0',
  `allow_pm` tinyint(1) NOT NULL DEFAULT '0',
  `max_pm` smallint(6) NOT NULL DEFAULT '0',
  `max_foto` varchar(10) NOT NULL DEFAULT '',
  `allow_files` tinyint(1) NOT NULL DEFAULT '0',
  `allow_hide` tinyint(1) NOT NULL DEFAULT '1',
  `allow_short` tinyint(1) NOT NULL DEFAULT '0',
  `time_limit` tinyint(1) NOT NULL DEFAULT '0',
  `rid` smallint(6) NOT NULL DEFAULT '0',
  `allow_fixed` tinyint(1) NOT NULL DEFAULT '0',
  `allow_feed` tinyint(1) NOT NULL DEFAULT '1',
  `allow_search` tinyint(1) NOT NULL DEFAULT '1',
  `allow_poll` tinyint(1) NOT NULL DEFAULT '1',
  `allow_main` tinyint(1) NOT NULL DEFAULT '1',
  `captcha` tinyint(1) NOT NULL DEFAULT '0',
  `icon` varchar(200) NOT NULL DEFAULT '',
  `allow_modc` tinyint(1) NOT NULL DEFAULT '0',
  `allow_rating` tinyint(1) NOT NULL DEFAULT '1',
  `allow_offline` tinyint(1) NOT NULL DEFAULT '0',
  `allow_image_upload` tinyint(1) NOT NULL DEFAULT '0',
  `allow_file_upload` tinyint(1) NOT NULL DEFAULT '0',
  `allow_signature` tinyint(1) NOT NULL DEFAULT '0',
  `allow_url` tinyint(1) NOT NULL DEFAULT '1',
  `news_sec_code` tinyint(1) NOT NULL DEFAULT '1',
  `allow_image` tinyint(1) NOT NULL DEFAULT '0',
  `max_signature` smallint(6) NOT NULL DEFAULT '0',
  `max_info` smallint(6) NOT NULL DEFAULT '0',
  `admin_addnews` tinyint(1) NOT NULL DEFAULT '0',
  `admin_editnews` tinyint(1) NOT NULL DEFAULT '0',
  `admin_comments` tinyint(1) NOT NULL DEFAULT '0',
  `admin_categories` tinyint(1) NOT NULL DEFAULT '0',
  `admin_editusers` tinyint(1) NOT NULL DEFAULT '0',
  `admin_wordfilter` tinyint(1) NOT NULL DEFAULT '0',
  `admin_xfields` tinyint(1) NOT NULL DEFAULT '0',
  `admin_userfields` tinyint(1) NOT NULL DEFAULT '0',
  `admin_static` tinyint(1) NOT NULL DEFAULT '0',
  `admin_editvote` tinyint(1) NOT NULL DEFAULT '0',
  `admin_newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `admin_blockip` tinyint(1) NOT NULL DEFAULT '0',
  `admin_banners` tinyint(1) NOT NULL DEFAULT '0',
  `admin_rss` tinyint(1) NOT NULL DEFAULT '0',
  `admin_iptools` tinyint(1) NOT NULL DEFAULT '0',
  `admin_rssinform` tinyint(1) NOT NULL DEFAULT '0',
  `admin_googlemap` tinyint(1) NOT NULL DEFAULT '0',
  `allow_html` tinyint(1) NOT NULL DEFAULT '1',
  `group_prefix` text NOT NULL,
  `group_suffix` text NOT NULL,
  `allow_subscribe` tinyint(1) NOT NULL DEFAULT '0',
  `allow_image_size` tinyint(1) NOT NULL DEFAULT '0',
  `cat_allow_addnews` text NOT NULL,
  `flood_news` smallint(6) NOT NULL DEFAULT '0',
  `max_day_news` smallint(6) NOT NULL DEFAULT '0',
  `force_leech` tinyint(1) NOT NULL DEFAULT '0',
  `edit_limit` smallint(6) NOT NULL DEFAULT '0',
  `captcha_pm` tinyint(1) NOT NULL DEFAULT '0',
  `max_pm_day` smallint(6) NOT NULL DEFAULT '0',
  `max_mail_day` smallint(6) NOT NULL DEFAULT '0',
  `admin_tagscloud` tinyint(1) NOT NULL DEFAULT '0',
  `allow_vote` tinyint(1) NOT NULL DEFAULT '0',
  `admin_complaint` tinyint(1) NOT NULL DEFAULT '0',
  `news_question` tinyint(1) NOT NULL DEFAULT '0',
  `comments_question` tinyint(1) NOT NULL DEFAULT '0',
  `max_comment_day` smallint(6) NOT NULL DEFAULT '0',
  `max_images` smallint(6) NOT NULL DEFAULT '0',
  `max_files` smallint(6) NOT NULL DEFAULT '0',
  `disable_news_captcha` smallint(6) NOT NULL DEFAULT '0',
  `disable_comments_captcha` smallint(6) NOT NULL DEFAULT '0',
  `pm_question` tinyint(1) NOT NULL DEFAULT '0',
  `captcha_feedback` tinyint(1) NOT NULL DEFAULT '1',
  `feedback_question` tinyint(1) NOT NULL DEFAULT '0',
  `files_type` varchar(255) NOT NULL DEFAULT '',
  `max_file_size` mediumint(9) NOT NULL DEFAULT '0',
  `files_max_speed` smallint(6) NOT NULL DEFAULT '0',
  `spamfilter` tinyint(1) NOT NULL DEFAULT '2',
  `allow_comments_rating` tinyint(1) NOT NULL DEFAULT '1',
  `max_edit_days` tinyint(1) NOT NULL DEFAULT '0',
  `spampmfilter` tinyint(1) NOT NULL DEFAULT '0',
  `force_reg` tinyint(1) NOT NULL DEFAULT '0',
  `force_reg_days` mediumint(9) NOT NULL DEFAULT '0',
  `force_reg_group` smallint(6) NOT NULL DEFAULT '4',
  `force_news` tinyint(1) NOT NULL DEFAULT '0',
  `force_news_count` mediumint(9) NOT NULL DEFAULT '0',
  `force_news_group` smallint(6) NOT NULL DEFAULT '4',
  `force_comments` tinyint(1) NOT NULL DEFAULT '0',
  `force_comments_count` mediumint(9) NOT NULL DEFAULT '0',
  `force_comments_group` smallint(6) NOT NULL DEFAULT '4',
  `force_rating` tinyint(1) NOT NULL DEFAULT '0',
  `force_rating_count` mediumint(9) NOT NULL DEFAULT '0',
  `force_rating_group` smallint(6) NOT NULL DEFAULT '4',
  `not_allow_cats` text NOT NULL,
  `allow_up_image` tinyint(1) NOT NULL DEFAULT '0',
  `allow_up_watermark` tinyint(1) NOT NULL DEFAULT '0',
  `allow_up_thumb` tinyint(1) NOT NULL DEFAULT '0',
  `up_count_image` smallint(6) NOT NULL DEFAULT '0',
  `up_image_side` varchar(20) NOT NULL DEFAULT '',
  `up_image_size` mediumint(9) NOT NULL DEFAULT '0',
  `up_thumb_size` varchar(20) NOT NULL DEFAULT '',
  `allow_mail_files` tinyint(1) NOT NULL DEFAULT '0',
  `max_mail_files` smallint(6) NOT NULL DEFAULT '0',
  `max_mail_allfiles` mediumint(9) NOT NULL DEFAULT '0',
  `mail_files_type` varchar(100) NOT NULL DEFAULT '',
  `video_comments` tinyint(1) NOT NULL DEFAULT '0',
  `media_comments` tinyint(1) NOT NULL DEFAULT '0',
  `min_image_side` varchar(20) NOT NULL DEFAULT '',
  `allow_public_file_upload` tinyint(1) NOT NULL DEFAULT '0',
  `force_comments_rating` tinyint(1) NOT NULL DEFAULT '0',
  `force_comments_rating_count` mediumint(9) NOT NULL DEFAULT '0',
  `force_comments_rating_group` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `dle_usergroups`
--

INSERT INTO `dle_usergroups` (`id`, `group_name`, `allow_cats`, `allow_adds`, `cat_add`, `allow_admin`, `allow_addc`, `allow_editc`, `allow_delc`, `edit_allc`, `del_allc`, `moderation`, `allow_all_edit`, `allow_edit`, `allow_pm`, `max_pm`, `max_foto`, `allow_files`, `allow_hide`, `allow_short`, `time_limit`, `rid`, `allow_fixed`, `allow_feed`, `allow_search`, `allow_poll`, `allow_main`, `captcha`, `icon`, `allow_modc`, `allow_rating`, `allow_offline`, `allow_image_upload`, `allow_file_upload`, `allow_signature`, `allow_url`, `news_sec_code`, `allow_image`, `max_signature`, `max_info`, `admin_addnews`, `admin_editnews`, `admin_comments`, `admin_categories`, `admin_editusers`, `admin_wordfilter`, `admin_xfields`, `admin_userfields`, `admin_static`, `admin_editvote`, `admin_newsletter`, `admin_blockip`, `admin_banners`, `admin_rss`, `admin_iptools`, `admin_rssinform`, `admin_googlemap`, `allow_html`, `group_prefix`, `group_suffix`, `allow_subscribe`, `allow_image_size`, `cat_allow_addnews`, `flood_news`, `max_day_news`, `force_leech`, `edit_limit`, `captcha_pm`, `max_pm_day`, `max_mail_day`, `admin_tagscloud`, `allow_vote`, `admin_complaint`, `news_question`, `comments_question`, `max_comment_day`, `max_images`, `max_files`, `disable_news_captcha`, `disable_comments_captcha`, `pm_question`, `captcha_feedback`, `feedback_question`, `files_type`, `max_file_size`, `files_max_speed`, `spamfilter`, `allow_comments_rating`, `max_edit_days`, `spampmfilter`, `force_reg`, `force_reg_days`, `force_reg_group`, `force_news`, `force_news_count`, `force_news_group`, `force_comments`, `force_comments_count`, `force_comments_group`, `force_rating`, `force_rating_count`, `force_rating_group`, `not_allow_cats`, `allow_up_image`, `allow_up_watermark`, `allow_up_thumb`, `up_count_image`, `up_image_side`, `up_image_size`, `up_thumb_size`, `allow_mail_files`, `max_mail_files`, `max_mail_allfiles`, `mail_files_type`, `video_comments`, `media_comments`, `min_image_side`, `allow_public_file_upload`, `force_comments_rating`, `force_comments_rating_count`, `force_comments_rating_group`) VALUES
(1, 'Администраторы', 'all', 1, 'all', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 50, '101', 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, '{THEME}/images/icon_1.gif', 0, 1, 1, 1, 1, 1, 1, 0, 1, 500, 1000, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '<b><span style=\"color:red\">', '</span></b>', 1, 1, 'all', 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 'torrent,zip,rar,doc,pdf,mp3,mp4,torrent', 9999, 0, 2, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, '', 1, 1, 1, 3, '800x600', 300, '200x150', 1, 3, 1000, 'jpg,png,zip,pdf', 1, 1, '10x10', 1, 0, 0, 4),
(2, 'Главные редакторы', 'all', 1, 'all', 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 50, '101', 1, 1, 1, 0, 2, 1, 1, 1, 1, 1, 0, '{THEME}/images/icon_2.gif', 0, 1, 0, 1, 1, 1, 1, 0, 1, 500, 1000, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', '', 1, 1, 'all', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 'zip,rar,doc,pdf,mp3,mp4', 4096, 0, 2, 1, 0, 0, 0, 0, 2, 0, 0, 2, 0, 0, 2, 0, 0, 2, '', 1, 1, 1, 3, '800x600', 300, '200x150', 1, 3, 1000, 'jpg,png,zip,pdf', 1, 1, '10x10', 1, 0, 0, 4),
(3, 'Журналисты', 'all', 1, 'all', 1, 1, 1, 1, 0, 0, 1, 0, 1, 1, 50, '101', 1, 1, 1, 0, 3, 0, 1, 1, 1, 1, 0, '{THEME}/images/icon_3.gif', 0, 1, 0, 1, 1, 1, 1, 0, 1, 500, 1000, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', '', 1, 1, 'all', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 'zip,rar,doc,pdf,mp3,mp4', 4096, 0, 2, 1, 0, 0, 0, 0, 3, 0, 0, 3, 0, 0, 3, 0, 0, 3, '', 1, 1, 1, 3, '800x600', 300, '200x150', 0, 3, 1000, 'jpg,png,zip,pdf', 1, 1, '10x10', 0, 0, 0, 4),
(4, 'Посетители', 'all', 1, 'all', 0, 1, 1, 1, 0, 0, 0, 0, 0, 1, 20, '101', 1, 1, 1, 0, 4, 0, 1, 1, 1, 1, 0, '{THEME}/images/icon_4.gif', 0, 1, 0, 1, 0, 1, 1, 1, 0, 500, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', '', 1, 0, 'all', 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 'zip,rar,doc,pdf,mp3,mp4', 4096, 0, 2, 1, 0, 2, 0, 0, 4, 0, 0, 4, 0, 0, 4, 0, 0, 4, '', 0, 0, 0, 1, '800x600', 300, '200x150', 0, 3, 1000, 'jpg,png,zip,pdf', 0, 0, '10x10', 0, 0, 0, 4),
(5, 'Гости', 'all', 0, 'all', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', 1, 0, 0, 0, 5, 0, 1, 1, 1, 0, 1, '{THEME}/images/icon_5.gif', 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 'all', 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 0, 0, 2, 1, 0, 2, 0, 0, 5, 0, 0, 5, 0, 0, 5, 0, 0, 5, '', 0, 0, 0, 1, '800x600', 300, '200x150', 0, 3, 1000, 'jpg,png,zip,pdf', 0, 0, '10x10', 0, 0, 0, 4);

-- --------------------------------------------------------

--
-- Структура таблицы `dle_users`
--

CREATE TABLE `dle_users` (
  `email` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(40) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL,
  `news_num` mediumint(9) NOT NULL DEFAULT '0',
  `comm_num` mediumint(9) NOT NULL DEFAULT '0',
  `user_group` smallint(6) NOT NULL DEFAULT '4',
  `lastdate` varchar(20) NOT NULL DEFAULT '',
  `reg_date` varchar(20) NOT NULL DEFAULT '',
  `banned` varchar(5) NOT NULL DEFAULT '',
  `allow_mail` tinyint(1) NOT NULL DEFAULT '1',
  `info` text NOT NULL,
  `signature` text NOT NULL,
  `foto` varchar(255) NOT NULL DEFAULT '',
  `fullname` varchar(100) NOT NULL DEFAULT '',
  `land` varchar(100) NOT NULL DEFAULT '',
  `favorites` text NOT NULL,
  `pm_all` smallint(6) NOT NULL DEFAULT '0',
  `pm_unread` smallint(6) NOT NULL DEFAULT '0',
  `time_limit` varchar(20) NOT NULL DEFAULT '',
  `xfields` text NOT NULL,
  `allowed_ip` varchar(255) NOT NULL DEFAULT '',
  `hash` varchar(32) NOT NULL DEFAULT '',
  `logged_ip` varchar(46) NOT NULL DEFAULT '',
  `restricted` tinyint(1) NOT NULL DEFAULT '0',
  `restricted_days` smallint(4) NOT NULL DEFAULT '0',
  `restricted_date` varchar(15) NOT NULL DEFAULT '',
  `timezone` varchar(100) NOT NULL DEFAULT '',
  `news_subscribe` tinyint(1) NOT NULL DEFAULT '0',
  `comments_reply_subscribe` tinyint(1) NOT NULL DEFAULT '0',
  `twofactor_auth` tinyint(1) NOT NULL DEFAULT '0',
  `cat_add` varchar(500) NOT NULL DEFAULT '',
  `cat_allow_addnews` varchar(500) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `dle_users`
--

INSERT INTO `dle_users` (`email`, `password`, `name`, `user_id`, `news_num`, `comm_num`, `user_group`, `lastdate`, `reg_date`, `banned`, `allow_mail`, `info`, `signature`, `foto`, `fullname`, `land`, `favorites`, `pm_all`, `pm_unread`, `time_limit`, `xfields`, `allowed_ip`, `hash`, `logged_ip`, `restricted`, `restricted_days`, `restricted_date`, `timezone`, `news_subscribe`, `comments_reply_subscribe`, `twofactor_auth`, `cat_add`, `cat_allow_addnews`) VALUES
('sngfilm@proton.me', '$2y$10$.B7neLDuG5ovSt3GqzKr6eQWzjVNXTrf46aZjHZ/i5owcs76jgNvG', 'sngfilm', 1, -4, 0, 1, '1687271548', '1681377181', '', 1, '', '', '', '', '', '', 0, 0, '', '', '', 'aaae3db21648fac82896e81556b7aca8', '127.0.0.1', 0, 0, '', '', 1, 1, 0, '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `dle_ustore_voice`
--

CREATE TABLE `dle_ustore_voice` (
  `id` int(11) NOT NULL,
  `voice_name` varchar(128) NOT NULL,
  `film_priority` int(11) NOT NULL DEFAULT '0',
  `serial_priority` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `dle_videocdn_voice`
--

CREATE TABLE `dle_videocdn_voice` (
  `id` int(11) NOT NULL,
  `voice_id` int(11) NOT NULL,
  `voice_name` varchar(128) NOT NULL,
  `film_priority` int(11) NOT NULL DEFAULT '0',
  `serial_priority` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `dle_views`
--

CREATE TABLE `dle_views` (
  `id` int(11) NOT NULL,
  `news_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `dle_vote`
--

CREATE TABLE `dle_vote` (
  `id` mediumint(9) NOT NULL,
  `category` text NOT NULL,
  `vote_num` mediumint(9) NOT NULL DEFAULT '0',
  `date` varchar(25) NOT NULL DEFAULT '0',
  `title` varchar(200) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `approve` tinyint(1) NOT NULL DEFAULT '1',
  `start` varchar(15) NOT NULL DEFAULT '',
  `end` varchar(15) NOT NULL DEFAULT '',
  `grouplevel` varchar(250) NOT NULL DEFAULT 'all'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `dle_vote`
--

INSERT INTO `dle_vote` (`id`, `category`, `vote_num`, `date`, `title`, `body`, `approve`, `start`, `end`, `grouplevel`) VALUES
(1, 'all', 0, '2023-04-13 12:13:01', 'Оцените работу движка', 'Лучший из новостных<br>Неплохой движок<br>Устраивает ... но ...<br>Встречал и получше<br>Совсем не понравился', 1, '', '', 'all');

-- --------------------------------------------------------

--
-- Структура таблицы `dle_vote_result`
--

CREATE TABLE `dle_vote_result` (
  `id` int(11) NOT NULL,
  `ip` varchar(46) NOT NULL DEFAULT '',
  `name` varchar(40) NOT NULL DEFAULT '',
  `vote_id` mediumint(9) NOT NULL DEFAULT '0',
  `answer` tinyint(3) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `dle_xfsearch`
--

CREATE TABLE `dle_xfsearch` (
  `id` int(11) NOT NULL,
  `news_id` int(11) NOT NULL DEFAULT '0',
  `tagname` varchar(50) NOT NULL DEFAULT '',
  `tagvalue` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `dle_admin_logs`
--
ALTER TABLE `dle_admin_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date` (`date`);

--
-- Индексы таблицы `dle_admin_sections`
--
ALTER TABLE `dle_admin_sections`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индексы таблицы `dle_alloha`
--
ALTER TABLE `dle_alloha`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`),
  ADD KEY `year` (`year`),
  ADD KEY `episode` (`episode`),
  ADD KEY `err_time` (`err_time`),
  ADD KEY `type` (`type`),
  ADD KEY `kp_id` (`kp_id`);

--
-- Индексы таблицы `dle_banned`
--
ALTER TABLE `dle_banned`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`users_id`);

--
-- Индексы таблицы `dle_banners`
--
ALTER TABLE `dle_banners`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `dle_banners_logs`
--
ALTER TABLE `dle_banners_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bid` (`bid`),
  ADD KEY `ip` (`ip`);

--
-- Индексы таблицы `dle_banners_rubrics`
--
ALTER TABLE `dle_banners_rubrics`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `dle_category`
--
ALTER TABLE `dle_category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `dle_ccdn_settings`
--
ALTER TABLE `dle_ccdn_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `key` (`key`);

--
-- Индексы таблицы `dle_comments`
--
ALTER TABLE `dle_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `approve` (`approve`),
  ADD KEY `parent` (`parent`),
  ADD KEY `rating` (`rating`);
ALTER TABLE `dle_comments` ADD FULLTEXT KEY `text` (`text`);

--
-- Индексы таблицы `dle_comments_files`
--
ALTER TABLE `dle_comments_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `c_id` (`c_id`),
  ADD KEY `author` (`author`);

--
-- Индексы таблицы `dle_comment_rating_log`
--
ALTER TABLE `dle_comment_rating_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `c_id` (`c_id`),
  ADD KEY `member` (`member`),
  ADD KEY `ip` (`ip`);

--
-- Индексы таблицы `dle_complaint`
--
ALTER TABLE `dle_complaint`
  ADD PRIMARY KEY (`id`),
  ADD KEY `c_id` (`c_id`),
  ADD KEY `p_id` (`p_id`),
  ADD KEY `n_id` (`n_id`);

--
-- Индексы таблицы `dle_email`
--
ALTER TABLE `dle_email`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `dle_files`
--
ALTER TABLE `dle_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_id` (`news_id`);

--
-- Индексы таблицы `dle_flood`
--
ALTER TABLE `dle_flood`
  ADD PRIMARY KEY (`f_id`),
  ADD KEY `ip` (`ip`),
  ADD KEY `id` (`id`),
  ADD KEY `flag` (`flag`);

--
-- Индексы таблицы `dle_hdvb_update`
--
ALTER TABLE `dle_hdvb_update`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `dle_hdvb_update_log`
--
ALTER TABLE `dle_hdvb_update_log`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `dle_hdvb_update_serials`
--
ALTER TABLE `dle_hdvb_update_serials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `token` (`token`(191)),
  ADD KEY `season` (`season`);

--
-- Индексы таблицы `dle_hdvb_update_vote`
--
ALTER TABLE `dle_hdvb_update_vote`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `dle_ignore_list`
--
ALTER TABLE `dle_ignore_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user` (`user`),
  ADD KEY `user_from` (`user_from`);

--
-- Индексы таблицы `dle_images`
--
ALTER TABLE `dle_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `author` (`author`),
  ADD KEY `news_id` (`news_id`);

--
-- Индексы таблицы `dle_kodik`
--
ALTER TABLE `dle_kodik`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`),
  ADD KEY `year` (`year`),
  ADD KEY `episode` (`episode`),
  ADD KEY `err_time` (`err_time`),
  ADD KEY `type` (`type`),
  ADD KEY `kodik_id` (`kodik_id`),
  ADD KEY `kp_id` (`kp_id`),
  ADD KEY `news_id` (`news_id`),
  ADD KEY `shikimori_id` (`shikimori_id`),
  ADD KEY `mdl_id` (`mdl_id`);

--
-- Индексы таблицы `dle_links`
--
ALTER TABLE `dle_links`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `dle_login_log`
--
ALTER TABLE `dle_login_log`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ip` (`ip`),
  ADD KEY `date` (`date`);

--
-- Индексы таблицы `dle_logs`
--
ALTER TABLE `dle_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_id` (`news_id`),
  ADD KEY `member` (`member`),
  ADD KEY `ip` (`ip`);

--
-- Индексы таблицы `dle_lostdb`
--
ALTER TABLE `dle_lostdb`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lostid` (`lostid`);

--
-- Индексы таблицы `dle_mail_log`
--
ALTER TABLE `dle_mail_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hash` (`hash`);

--
-- Индексы таблицы `dle_metatags`
--
ALTER TABLE `dle_metatags`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `dle_notice`
--
ALTER TABLE `dle_notice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `dle_plugins`
--
ALTER TABLE `dle_plugins`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `dle_plugins_files`
--
ALTER TABLE `dle_plugins_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `plugin_id` (`plugin_id`),
  ADD KEY `active` (`active`);

--
-- Индексы таблицы `dle_plugins_logs`
--
ALTER TABLE `dle_plugins_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `plugin_id` (`plugin_id`);

--
-- Индексы таблицы `dle_pm`
--
ALTER TABLE `dle_pm`
  ADD PRIMARY KEY (`id`),
  ADD KEY `folder` (`folder`),
  ADD KEY `user` (`user`),
  ADD KEY `user_from` (`user_from`),
  ADD KEY `pm_read` (`pm_read`);

--
-- Индексы таблицы `dle_poll`
--
ALTER TABLE `dle_poll`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_id` (`news_id`);

--
-- Индексы таблицы `dle_poll_log`
--
ALTER TABLE `dle_poll_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_id` (`news_id`),
  ADD KEY `member` (`member`);

--
-- Индексы таблицы `dle_post`
--
ALTER TABLE `dle_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `autor` (`autor`),
  ADD KEY `alt_name` (`alt_name`),
  ADD KEY `category` (`category`),
  ADD KEY `approve` (`approve`),
  ADD KEY `allow_main` (`allow_main`),
  ADD KEY `date` (`date`),
  ADD KEY `symbol` (`symbol`),
  ADD KEY `comm_num` (`comm_num`),
  ADD KEY `fixed` (`fixed`),
  ADD KEY `kinopoisk_id` (`kinopoisk_id`);
ALTER TABLE `dle_post` ADD FULLTEXT KEY `short_story` (`short_story`,`full_story`,`xfields`,`title`);

--
-- Индексы таблицы `dle_post_extras`
--
ALTER TABLE `dle_post_extras`
  ADD PRIMARY KEY (`eid`),
  ADD KEY `news_id` (`news_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `rating` (`rating`),
  ADD KEY `disable_search` (`disable_search`),
  ADD KEY `allow_rss` (`allow_rss`),
  ADD KEY `news_read` (`news_read`);

--
-- Индексы таблицы `dle_post_extras_cats`
--
ALTER TABLE `dle_post_extras_cats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_id` (`news_id`),
  ADD KEY `cat_id` (`cat_id`);

--
-- Индексы таблицы `dle_post_log`
--
ALTER TABLE `dle_post_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_id` (`news_id`),
  ADD KEY `expires` (`expires`);

--
-- Индексы таблицы `dle_post_pass`
--
ALTER TABLE `dle_post_pass`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_id` (`news_id`);

--
-- Индексы таблицы `dle_question`
--
ALTER TABLE `dle_question`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `dle_read_log`
--
ALTER TABLE `dle_read_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_id` (`news_id`),
  ADD KEY `ip` (`ip`);

--
-- Индексы таблицы `dle_redirects`
--
ALTER TABLE `dle_redirects`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `dle_rss`
--
ALTER TABLE `dle_rss`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `dle_rssinform`
--
ALTER TABLE `dle_rssinform`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `dle_sendlog`
--
ALTER TABLE `dle_sendlog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user` (`user`),
  ADD KEY `date` (`date`),
  ADD KEY `flag` (`flag`);

--
-- Индексы таблицы `dle_social_login`
--
ALTER TABLE `dle_social_login`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sid` (`sid`);

--
-- Индексы таблицы `dle_spam_log`
--
ALTER TABLE `dle_spam_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ip` (`ip`),
  ADD KEY `is_spammer` (`is_spammer`);

--
-- Индексы таблицы `dle_static`
--
ALTER TABLE `dle_static`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `disable_search` (`disable_search`);
ALTER TABLE `dle_static` ADD FULLTEXT KEY `template` (`template`);

--
-- Индексы таблицы `dle_static_files`
--
ALTER TABLE `dle_static_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `static_id` (`static_id`),
  ADD KEY `onserver` (`onserver`),
  ADD KEY `author` (`author`);

--
-- Индексы таблицы `dle_subscribe`
--
ALTER TABLE `dle_subscribe`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_id` (`news_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `dle_tags`
--
ALTER TABLE `dle_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_id` (`news_id`),
  ADD KEY `tag` (`tag`);

--
-- Индексы таблицы `dle_twofactor`
--
ALTER TABLE `dle_twofactor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pin` (`pin`),
  ADD KEY `date` (`date`);

--
-- Индексы таблицы `dle_usergroups`
--
ALTER TABLE `dle_usergroups`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `dle_users`
--
ALTER TABLE `dle_users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Индексы таблицы `dle_ustore_voice`
--
ALTER TABLE `dle_ustore_voice`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `dle_videocdn_voice`
--
ALTER TABLE `dle_videocdn_voice`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `dle_views`
--
ALTER TABLE `dle_views`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `dle_vote`
--
ALTER TABLE `dle_vote`
  ADD PRIMARY KEY (`id`),
  ADD KEY `approve` (`approve`);

--
-- Индексы таблицы `dle_vote_result`
--
ALTER TABLE `dle_vote_result`
  ADD PRIMARY KEY (`id`),
  ADD KEY `answer` (`answer`),
  ADD KEY `vote_id` (`vote_id`),
  ADD KEY `ip` (`ip`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `dle_xfsearch`
--
ALTER TABLE `dle_xfsearch`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_id` (`news_id`),
  ADD KEY `tagname` (`tagname`),
  ADD KEY `tagvalue` (`tagvalue`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `dle_admin_logs`
--
ALTER TABLE `dle_admin_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=719;

--
-- AUTO_INCREMENT для таблицы `dle_admin_sections`
--
ALTER TABLE `dle_admin_sections`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `dle_alloha`
--
ALTER TABLE `dle_alloha`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `dle_banned`
--
ALTER TABLE `dle_banned`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `dle_banners`
--
ALTER TABLE `dle_banners`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `dle_banners_logs`
--
ALTER TABLE `dle_banners_logs`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `dle_banners_rubrics`
--
ALTER TABLE `dle_banners_rubrics`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `dle_category`
--
ALTER TABLE `dle_category`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `dle_ccdn_settings`
--
ALTER TABLE `dle_ccdn_settings`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=174;

--
-- AUTO_INCREMENT для таблицы `dle_comments`
--
ALTER TABLE `dle_comments`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `dle_comments_files`
--
ALTER TABLE `dle_comments_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `dle_comment_rating_log`
--
ALTER TABLE `dle_comment_rating_log`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `dle_complaint`
--
ALTER TABLE `dle_complaint`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `dle_email`
--
ALTER TABLE `dle_email`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `dle_files`
--
ALTER TABLE `dle_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `dle_flood`
--
ALTER TABLE `dle_flood`
  MODIFY `f_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `dle_hdvb_update`
--
ALTER TABLE `dle_hdvb_update`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `dle_hdvb_update_log`
--
ALTER TABLE `dle_hdvb_update_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `dle_hdvb_update_serials`
--
ALTER TABLE `dle_hdvb_update_serials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `dle_hdvb_update_vote`
--
ALTER TABLE `dle_hdvb_update_vote`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `dle_ignore_list`
--
ALTER TABLE `dle_ignore_list`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `dle_images`
--
ALTER TABLE `dle_images`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT для таблицы `dle_kodik`
--
ALTER TABLE `dle_kodik`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `dle_links`
--
ALTER TABLE `dle_links`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `dle_login_log`
--
ALTER TABLE `dle_login_log`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `dle_logs`
--
ALTER TABLE `dle_logs`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `dle_lostdb`
--
ALTER TABLE `dle_lostdb`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `dle_mail_log`
--
ALTER TABLE `dle_mail_log`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `dle_metatags`
--
ALTER TABLE `dle_metatags`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `dle_notice`
--
ALTER TABLE `dle_notice`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `dle_plugins`
--
ALTER TABLE `dle_plugins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблицы `dle_plugins_files`
--
ALTER TABLE `dle_plugins_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=235;

--
-- AUTO_INCREMENT для таблицы `dle_plugins_logs`
--
ALTER TABLE `dle_plugins_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `dle_pm`
--
ALTER TABLE `dle_pm`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `dle_poll`
--
ALTER TABLE `dle_poll`
  MODIFY `id` mediumint(9) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `dle_poll_log`
--
ALTER TABLE `dle_poll_log`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `dle_post`
--
ALTER TABLE `dle_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `dle_post_extras`
--
ALTER TABLE `dle_post_extras`
  MODIFY `eid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `dle_post_extras_cats`
--
ALTER TABLE `dle_post_extras_cats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `dle_post_log`
--
ALTER TABLE `dle_post_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `dle_post_pass`
--
ALTER TABLE `dle_post_pass`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `dle_question`
--
ALTER TABLE `dle_question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `dle_read_log`
--
ALTER TABLE `dle_read_log`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `dle_redirects`
--
ALTER TABLE `dle_redirects`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `dle_rss`
--
ALTER TABLE `dle_rss`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `dle_rssinform`
--
ALTER TABLE `dle_rssinform`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `dle_sendlog`
--
ALTER TABLE `dle_sendlog`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `dle_social_login`
--
ALTER TABLE `dle_social_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `dle_spam_log`
--
ALTER TABLE `dle_spam_log`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `dle_static`
--
ALTER TABLE `dle_static`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `dle_static_files`
--
ALTER TABLE `dle_static_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `dle_subscribe`
--
ALTER TABLE `dle_subscribe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `dle_tags`
--
ALTER TABLE `dle_tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT для таблицы `dle_twofactor`
--
ALTER TABLE `dle_twofactor`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `dle_usergroups`
--
ALTER TABLE `dle_usergroups`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `dle_users`
--
ALTER TABLE `dle_users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `dle_ustore_voice`
--
ALTER TABLE `dle_ustore_voice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `dle_videocdn_voice`
--
ALTER TABLE `dle_videocdn_voice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `dle_views`
--
ALTER TABLE `dle_views`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `dle_vote`
--
ALTER TABLE `dle_vote`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `dle_vote_result`
--
ALTER TABLE `dle_vote_result`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `dle_xfsearch`
--
ALTER TABLE `dle_xfsearch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=334;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
