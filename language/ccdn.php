<?php

use CCDN\Helpers\Api\ApiHandler;
use CCDN\Helpers\Api\Response\Field\IframeUlrField;
use CCDN\Helpers\Api\Response\Field\SerialStatus;
use CCDN\Helpers\Caching\Cache;
use CCDN\Helpers\DB\Model;
use CCDN\Helpers\Entities\Post;
use CCDN\Helpers\Facade\Http\Request;
use CCDN\Helpers\Facade\Http\Response;
use CCDN\Helpers\Facade\Session\Session;
use CCDN\Helpers\Logger\LogType;
use CCDN\Helpers\Modules\CCDNModule;
use CCDN\Helpers\Modules\Module\NotSeasonsFranchiseAltUrl;
use CCDN\Helpers\Modules\Module\NotSeasonsFranchiseMetaTitle;
use CCDN\Helpers\Modules\Module\NotSeasonsFranchiseTitle;
use CCDN\Helpers\Modules\Module\SeasonsFranchiseAltUrl;
use CCDN\Helpers\Modules\Module\SeasonsFranchiseMetaTitle;
use CCDN\Helpers\Modules\Module\SeasonsFranchiseTitle;
use CCDN\Helpers\SearchResolver;
use CCDN\Helpers\SecondIn;
use CCDN\Helpers\Settings;


define('DATALIFEENGINE', true);
define('ROOT_DIR', __DIR__);
define('ENGINE_DIR', ROOT_DIR . '/engine');

require_once(ENGINE_DIR . '/classes/plugins.class.php');
require_once(DLEPlugins::Check(ENGINE_DIR . '/modules/functions.php'));

if ($config['date_adjust']) {
    date_default_timezone_set($config['date_adjust']);
}

if (!isset($mcache)) {
    if ($config['cache_type'] == "2") {
        include_once(DLEPlugins::Check(ENGINE_DIR . '/classes/redis.class.php'));
    } else {
        include_once(DLEPlugins::Check(ENGINE_DIR . '/classes/memcache.class.php'));
    }

    $dlefastcache = new dle_fastcache($config);
}

dle_session();

require_once(ENGINE_DIR . '/inc/CCDN/vendor/autoload.php');

if (!Request::isMethod('POST')) {
    Response::json(['ok' => false], 405);
    die();
}

if (!Session::csrfVerify(Request::post('csrf'))) {
    Response::json(['ok' => false], 419);
    die();
}

echo CCDNModule::run(LogType::MODULE, static function ($name, Cache $cache) {

    $postId = Request::post('post_id');
    $cacheTimeLife = SecondIn::DAY;

    if (empty($postId) && is_numeric($postId)) {
        return Response::json(['ok' => false], 400);
    }

    $cacheKey = $name . $postId;
    if ($cache->has($cacheKey)) {
        return Response::json(['ok' => true], 200);
    }

    $model = new Model();
    $post = $model->select(
        "SELECT `id`, `xfields`, `date`, `title`, `alt_name`, `metatitle`, `category` 
                FROM `{$model->getPrefix()}_post` WHERE `id` = {$model->getDb()->safesql($postId)}"
    );

    if (empty($post)) {
        $cache->set($cacheKey, '', SecondIn::WEEK);
        return Response::json(['ok' => false], 404);
    }

    $settings = Settings::all();
    $post = new Post($post);

    if ($post->getField($settings->post_status_field) === '0') {
        $cache->set($cacheKey, '', SecondIn::WEEK);
        return Response::json(['ok' => true], 200);
    }

    $searchResolver = new SearchResolver();
    $response = $searchResolver->singleHandler(new ApiHandler(), $post);

    if ($response === null) {
        $cache->set($cacheKey, '', $cacheTimeLife);
        return Response::json(['ok' => false], 404);
    }

    $season = '';
    $episode = '';
    $postVideoQuality = $post->getField($settings->video_quality_field);
    $postEpisodeCount = $post->getNumberFromField($settings->episode_count_field);
    $episodeCount = $response->getSeasons()->getAllEpisodesCount();
    $iframeUrl = $response->getIframeUrl()->get();

    if ($response->getType()->isSeasons()) {

        if (empty($settings->module_update_serial)) {
            $cache->set($cacheKey, '', SecondIn::WEEK);
            return Response::json(['ok' => true], 200);
        }

        $hasOnlyOriginalVoiceActing = $response->getSeasons()->getLast()->getEpisodes()->getLast()->getVoiceActing()->hasOnlyOriginalVoiceActing();

        if (empty($settings->update_post_by_original_voice_acting)) {
            if ($hasOnlyOriginalVoiceActing) {
                $cache->set($cacheKey, '', SecondIn::HOUR);
                return Response::json(['ok' => true], 200);
            }

            switch ($response->getSerialStatus()->get()) {
                case SerialStatus::PENDING:
                    $cacheTimeLife = SecondIn::hour(12);
                    break;

                case SerialStatus::PAUSED:
                    $cacheTimeLife = SecondIn::day(3);
                    break;

                case SerialStatus::OFFLINE:
                    $cacheTimeLife = 0;
                    break;
            }
        } else {
            if ($post->getField($settings->module_has_original_voice_acting_field) === '1') {
                if ($hasOnlyOriginalVoiceActing) {
                    $cache->set($cacheKey, '', SecondIn::HOUR);
                    return Response::json(['ok' => true], 200);
                }

                if (empty($settings->module_date_no_edit)) {
                    $post->date = date('Y-m-d H:i:s');
                }
            }

            if ($hasOnlyOriginalVoiceActing) {
                $post->setField($settings->module_has_original_voice_acting_field, '1');
            }

            $cacheTimeLife = SecondIn::HOUR;
        }

        if (!$hasOnlyOriginalVoiceActing) {
            $post->deleteField($settings->module_has_original_voice_acting_field);
        }

        $postSeasonFranchiseStatus = $post->getField($settings->season_franchise_status);
        if ($postSeasonFranchiseStatus !== null && $postSeasonFranchiseStatus !== $response->getSerialStatus()->toCyrillic()) {
            $serialStatusBundle = $settings->getJsonDecode('serial_status_bundle');
            $categories = explode(',', $post->category);
            foreach ($categories as $key => $category) {
                if (isset($serialStatusBundle[$category])) {
                    $categories[$key] = array_search($response->getSerialStatus()->get(), $serialStatusBundle, true);
                    $post->updateCategories($categories);
                    break;
                }
            }
        }

        $postSeasonNumber = $post->getNumberFromField($settings->serial_season_field);

        $seasonsNumber = $response->getSeasons()->getLast()->getNumber();
        $episodesNumber = $response->getSeasons()->getLast()->getEpisodes()->getLast()->getNumber();

        if ($postEpisodeCount !== $episodeCount) {

            if ($settings->module_update_serial === '1') {
                $iframeUrl = $response->getSeasons()->getLast()->getEpisodes()->getLast()->getIframeUrl()->get();
                $season = $seasonsNumber . ' ' . $settings->serial_season_field_suffix;
                $episode = $episodesNumber . ' ' . $settings->serial_episode_field_suffix;
            }

            if ($settings->module_update_serial === '2' && $seasonsNumber === $postSeasonNumber) {
                $episode = $episodesNumber . ' ' . $settings->serial_episode_field_suffix;
                $iframeUrl = $response->getSeasons()->get($episodesNumber)->getEpisodes()->getLast()->getIframeUrl()->get();
            }

            if (empty($settings->module_date_no_edit)) {
                $post->date = date('Y-m-d H:i:s');
            }
        }

        if ($settings->set_season_episode_to_embed === '0') {
            $iframeUrl = $response->getIframeUrl()->get();
        }

        if ($settings->module_update_serial === '1' || ($settings->module_update_serial === '2' && $seasonsNumber === $postSeasonNumber)) {
            $post->title = SeasonsFranchiseTitle::handler($settings, $response, $post);
            $post->alt_name = SeasonsFranchiseAltUrl::handler($settings, $response, $post);
            $post->metatitle = SeasonsFranchiseMetaTitle::handler($settings, $response, $post);
        }
    } else {
        $post->title = NotSeasonsFranchiseTitle::handler($settings, $response, $post);
        $post->alt_name = NotSeasonsFranchiseAltUrl::handler($settings, $response, $post);
        $post->metatitle = NotSeasonsFranchiseMetaTitle::handler($settings, $response, $post);

        if (empty($settings->module_date_no_edit)) {
            if ($settings->update_post_by_quality === '1' && ($response->getQuality() !== null && $postVideoQuality !== null) && $response->getQuality() !== $postVideoQuality) {
                $post->date = date('Y-m-d H:i:s');
            }
        }

        $cacheTimeLife = SecondIn::week(4);
    }

    $videoVoicesDisabled = (array)$settings->getJsonDecode('video_voices_disabled');

    if ($videoVoicesDisabled !== null) {
        $iframeUrlHandler = new IframeUlrField($iframeUrl);
        $iframeUrl = $iframeUrlHandler->addQueryParam('soundBlock', implode(',', $videoVoicesDisabled))->get();
    }

    $firstVoice = $response->getVoicesActing()->removeFromList($videoVoicesDisabled)
        ->getVoiceActingByPriority($settings->getJsonDecode('video_voice_priority'));


    $post->setField($settings->collaps_franchise_ads_status_field, (int)$response->getAds());
    $post->setField($settings->serial_season_field, $season);
    $post->setField($settings->serial_episode_field, $episode);
    $post->setField($settings->kinopoisk_id_field, $response->getKinopoiskId());
    $post->setField($settings->imdb_id_field, $response->getImdbId());
    $post->setField($settings->world_art_id_field, $response->getWorldArtId());
    $post->setField($settings->ccdn_id_field, $response->getId());
    $post->setField($settings->embed_field, $iframeUrl);
    $post->setField($settings->video_voice_field, $response->getVoicesActing()->implode());
    $post->setField($settings->video_first_voice_field, $firstVoice);
    $post->setField($settings->video_quality_field, $response->getQuality());
    $post->setField($settings->episode_count_field, $episodeCount);
    $post->setField($settings->button_rating_kinopoisk, $response->getKinopoiskRating());
    $post->setField($settings->button_rating_imdb, $response->getImdbRating());
    $post->setField($settings->button_rating_world_art, $response->getWorldArtRating());
    $post->setField($settings->season_franchise_status, $response->getSerialStatus()->toCyrillic());

    if ($settings->content_ads_filter === '1' && $response->getAds()) {
        $post->deleteField($settings->embed_field);
    }

    if ($settings->future_franchises_category !== null && !empty($response->getIframeUrl()->get())) {
        $categories = explode(',', $post->category);
        foreach ($categories as $key => $category) {
            if ($category === $settings->future_franchises_category) {
                unset($categories[$key]);
                $post->updateCategories($categories);
                break;
            }
        }
    }
    $post->updatePost();

    $cache->set($cacheKey, '', $cacheTimeLife);

    return Response::json(['ok' => true], 200);
});
die();
