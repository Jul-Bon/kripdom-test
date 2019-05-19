-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 19 2019 г., 22:13
-- Версия сервера: 5.6.38
-- Версия PHP: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `kripdom-test`
--

-- --------------------------------------------------------

--
-- Структура таблицы `kp_commentmeta`
--

CREATE TABLE `kp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `kp_comments`
--

CREATE TABLE `kp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `kp_comments`
--

INSERT INTO `kp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(2, 10, 'Jul', 'yulija.bon007@gmail.com', '', '127.0.0.1', '2019-05-18 19:23:10', '2019-05-18 19:23:10', 'TEST', 0, '1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', '', 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `kp_links`
--

CREATE TABLE `kp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `kp_options`
--

CREATE TABLE `kp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `kp_options`
--

INSERT INTO `kp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://kripdom', 'yes'),
(2, 'home', 'http://kripdom', 'yes'),
(3, 'blogname', 'Kripdom', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'yulija.bon007@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '1', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:122:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:40:\"testimonials/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:50:\"testimonials/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:70:\"testimonials/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"testimonials/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"testimonials/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:46:\"testimonials/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:29:\"testimonials/([^/]+)/embed/?$\";s:45:\"index.php?testimonials=$matches[1]&embed=true\";s:33:\"testimonials/([^/]+)/trackback/?$\";s:39:\"index.php?testimonials=$matches[1]&tb=1\";s:41:\"testimonials/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?testimonials=$matches[1]&paged=$matches[2]\";s:48:\"testimonials/([^/]+)/comment-page-([0-9]{1,})/?$\";s:52:\"index.php?testimonials=$matches[1]&cpage=$matches[2]\";s:37:\"testimonials/([^/]+)(?:/([0-9]+))?/?$\";s:51:\"index.php?testimonials=$matches[1]&page=$matches[2]\";s:29:\"testimonials/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:39:\"testimonials/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:59:\"testimonials/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"testimonials/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"testimonials/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:35:\"testimonials/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:32:\"logo/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"logo/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"logo/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"logo/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"logo/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"logo/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:21:\"logo/([^/]+)/embed/?$\";s:37:\"index.php?logo=$matches[1]&embed=true\";s:25:\"logo/([^/]+)/trackback/?$\";s:31:\"index.php?logo=$matches[1]&tb=1\";s:33:\"logo/([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?logo=$matches[1]&paged=$matches[2]\";s:40:\"logo/([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?logo=$matches[1]&cpage=$matches[2]\";s:29:\"logo/([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?logo=$matches[1]&page=$matches[2]\";s:21:\"logo/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:31:\"logo/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:51:\"logo/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"logo/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"logo/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:27:\"logo/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=16&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:31:\"wp-migrate-db/wp-migrate-db.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'kripdom-theme', 'yes'),
(41, 'stylesheet', 'kripdom-theme', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '44719', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '24', 'yes'),
(84, 'page_on_front', '16', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'initial_db_version', '44719', 'yes'),
(94, 'kp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(102, 'cron', 'a:6:{i:1558296071;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1558328471;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1558371670;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558371679;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558371680;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'recovery_keys', 'a:1:{s:22:\"XTsNhl733JjJG7Xkg0G4Y7\";a:2:{s:10:\"hashed_key\";s:34:\"$P$ByfZrTDHCkFPuDOy3SVk8TZzeFrgat0\";s:10:\"created_at\";i:1558247520;}}', 'yes'),
(115, 'theme_mods_twentynineteen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1558202056;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(120, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1558289947;s:7:\"checked\";a:2:{s:13:\"kripdom-theme\";s:5:\"0.0.1\";s:14:\"twentynineteen\";s:3:\"1.4\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(122, '_site_transient_timeout_browser_0adebb9cffd681f27bdbb5bee09697fe', '1558803679', 'no'),
(123, '_site_transient_browser_0adebb9cffd681f27bdbb5bee09697fe', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"59.0.3071.115\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(124, '_site_transient_timeout_php_check_b950940f5e4620923173741c164b7112', '1558803680', 'no'),
(125, '_site_transient_php_check_b950940f5e4620923173741c164b7112', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:0;s:13:\"is_acceptable\";b:1;}', 'no'),
(133, 'can_compress_scripts', '1', 'no'),
(140, '_site_transient_timeout_browser_3c349ca0659d9c685c069ffcc8c74139', '1558803713', 'no'),
(141, '_site_transient_browser_3c349ca0659d9c685c069ffcc8c74139', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"74.0.3729.157\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(144, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.2.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.2-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.2\";s:7:\"version\";s:3:\"5.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1558289946;s:15:\"version_checked\";s:3:\"5.2\";s:12:\"translations\";a:0:{}}', 'no'),
(150, 'current_theme', 'Kripdom Test', 'yes'),
(151, 'theme_mods_kripdom-theme', 'a:7:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:6:\"menu-1\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:46;s:18:\"header_text_button\";s:11:\"Client Area\";s:17:\"header_url_button\";s:1:\"#\";s:26:\"button_view_all_text_title\";s:13:\"View All Text\";}', 'yes'),
(152, 'theme_switched', '', 'yes'),
(153, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(164, 'category_children', 'a:0:{}', 'yes'),
(165, '_transient_timeout_plugin_slugs', '1558376363', 'no'),
(166, '_transient_plugin_slugs', 'a:3:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:19:\"akismet/akismet.php\";i:2;s:31:\"wp-migrate-db/wp-migrate-db.php\";}', 'no'),
(167, 'recently_activated', 'a:0:{}', 'yes'),
(175, 'acf_version', '5.8.0', 'yes'),
(186, 'recovery_mode_email_last_sent', '1558247520', 'yes'),
(205, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1558300359', 'no'),
(206, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:\"stdClass\":100:{s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4580;}s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:3429;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2619;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2486;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:1918;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:1735;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1727;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1467;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1436;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1432;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1430;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1364;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:1314;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1292;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1139;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:1105;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1092;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:1059;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:1001;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:931;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:853;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:842;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:835;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:785;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:735;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:731;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:725;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:714;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:703;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:698;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:688;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:683;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:672;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:651;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:651;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:650;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:629;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:620;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:620;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:618;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:587;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:572;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:569;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:563;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:560;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:553;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:542;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:538;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:529;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:526;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:524;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:515;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:509;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:504;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:501;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:497;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:479;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:476;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:476;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:469;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:468;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:465;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:457;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:451;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:435;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:430;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:421;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:417;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:416;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:414;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:407;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:398;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:394;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:390;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:390;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:387;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:380;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:378;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:374;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:369;}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";i:361;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:361;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:358;}s:3:\"url\";a:3:{s:4:\"name\";s:3:\"url\";s:4:\"slug\";s:3:\"url\";s:5:\"count\";i:355;}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";i:353;}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";i:348;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:346;}s:4:\"list\";a:3:{s:4:\"name\";s:4:\"list\";s:4:\"slug\";s:4:\"list\";s:5:\"count\";i:344;}s:14:\"contact-form-7\";a:3:{s:4:\"name\";s:14:\"contact form 7\";s:4:\"slug\";s:14:\"contact-form-7\";s:5:\"count\";i:340;}s:9:\"gutenberg\";a:3:{s:4:\"name\";s:9:\"gutenberg\";s:4:\"slug\";s:9:\"gutenberg\";s:5:\"count\";i:333;}s:11:\"performance\";a:3:{s:4:\"name\";s:11:\"performance\";s:4:\"slug\";s:11:\"performance\";s:5:\"count\";i:329;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:325;}s:11:\"advertising\";a:3:{s:4:\"name\";s:11:\"advertising\";s:4:\"slug\";s:11:\"advertising\";s:5:\"count\";i:323;}s:16:\"custom-post-type\";a:3:{s:4:\"name\";s:16:\"custom post type\";s:4:\"slug\";s:16:\"custom-post-type\";s:5:\"count\";i:319;}s:16:\"google-analytics\";a:3:{s:4:\"name\";s:16:\"google analytics\";s:4:\"slug\";s:16:\"google-analytics\";s:5:\"count\";i:318;}s:6:\"simple\";a:3:{s:4:\"name\";s:6:\"simple\";s:4:\"slug\";s:6:\"simple\";s:5:\"count\";i:316;}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";i:313;}s:7:\"adsense\";a:3:{s:4:\"name\";s:7:\"adsense\";s:4:\"slug\";s:7:\"adsense\";s:5:\"count\";i:310;}s:4:\"html\";a:3:{s:4:\"name\";s:4:\"html\";s:4:\"slug\";s:4:\"html\";s:5:\"count\";i:310;}s:6:\"author\";a:3:{s:4:\"name\";s:6:\"author\";s:4:\"slug\";s:6:\"author\";s:5:\"count\";i:309;}}', 'no'),
(208, '_site_transient_timeout_theme_roots', '1558291746', 'no'),
(209, '_site_transient_theme_roots', 'a:2:{s:13:\"kripdom-theme\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";}', 'no'),
(210, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1558289955;s:7:\"checked\";a:3:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.8.0\";s:19:\"akismet/akismet.php\";s:5:\"4.1.1\";s:31:\"wp-migrate-db/wp-migrate-db.php\";s:6:\"1.0.11\";}s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.2\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.8.0\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.8.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:31:\"wp-migrate-db/wp-migrate-db.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:27:\"w.org/plugins/wp-migrate-db\";s:4:\"slug\";s:13:\"wp-migrate-db\";s:6:\"plugin\";s:31:\"wp-migrate-db/wp-migrate-db.php\";s:11:\"new_version\";s:6:\"1.0.11\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/wp-migrate-db/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/wp-migrate-db.1.0.11.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/wp-migrate-db/assets/icon-256x256.jpg?rev=1809889\";s:2:\"1x\";s:66:\"https://ps.w.org/wp-migrate-db/assets/icon-128x128.jpg?rev=1809889\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/wp-migrate-db/assets/banner-1544x500.jpg?rev=1809889\";s:2:\"1x\";s:68:\"https://ps.w.org/wp-migrate-db/assets/banner-772x250.jpg?rev=1809889\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(211, 'wpmdb_settings', 'a:13:{s:3:\"key\";s:40:\"ExySRgIUq8auGNNlLZqJdKxhN6KV4pesYOibeyRA\";s:10:\"allow_pull\";b:0;s:10:\"allow_push\";b:0;s:8:\"profiles\";a:0:{}s:7:\"licence\";s:0:\"\";s:10:\"verify_ssl\";b:0;s:17:\"whitelist_plugins\";a:0:{}s:11:\"max_request\";i:1048576;s:22:\"delay_between_requests\";i:0;s:18:\"prog_tables_hidden\";b:1;s:21:\"pause_before_finalize\";b:0;s:14:\"allow_tracking\";N;s:28:\"compatibility_plugin_version\";s:3:\"1.2\";}', 'no'),
(212, 'wpmdb_schema_version', '2', 'no'),
(213, 'wpmdb_usage', 'a:2:{s:6:\"action\";s:8:\"savefile\";s:4:\"time\";i:1558292617;}', 'no'),
(214, 'wpmdb_state_timeout_5ce1a2435eef4', '1558377482', 'no'),
(215, 'wpmdb_state_5ce1a2435eef4', 'a:22:{s:6:\"action\";s:19:\"wpmdb_migrate_table\";s:6:\"intent\";s:8:\"savefile\";s:3:\"url\";s:0:\"\";s:9:\"form_data\";s:296:\"action=savefile&save_computer=1&gzip_file=1&connection_info=&replace_old%5B%5D=&replace_new%5B%5D=&replace_old%5B%5D=%2F%2Fkripdom&replace_new%5B%5D=%2F%2Fdev-test-jul-bon.pantheonsite.io&replace_guids=1&exclude_transients=1&save_migration_profile_option=new&create_new_profile=&remote_json_data=\";s:5:\"stage\";s:7:\"migrate\";s:5:\"nonce\";s:10:\"2957b367cd\";s:12:\"site_details\";a:1:{s:5:\"local\";a:10:{s:12:\"is_multisite\";s:5:\"false\";s:8:\"site_url\";s:14:\"http://kripdom\";s:8:\"home_url\";s:14:\"http://kripdom\";s:6:\"prefix\";s:3:\"kp_\";s:15:\"uploads_baseurl\";s:34:\"http://kripdom/wp-content/uploads/\";s:7:\"uploads\";a:6:{s:4:\"path\";s:71:\"D:\\FRONTEND\\openServ\\OSPanel\\domains\\kripdom/wp-content/uploads/2019/05\";s:3:\"url\";s:41:\"http://kripdom/wp-content/uploads/2019/05\";s:6:\"subdir\";s:8:\"/2019/05\";s:7:\"basedir\";s:63:\"D:\\FRONTEND\\openServ\\OSPanel\\domains\\kripdom/wp-content/uploads\";s:7:\"baseurl\";s:33:\"http://kripdom/wp-content/uploads\";s:5:\"error\";b:0;}s:11:\"uploads_dir\";s:33:\"wp-content/uploads/wp-migrate-db/\";s:8:\"subsites\";a:0:{}s:13:\"subsites_info\";a:0:{}s:20:\"is_subdomain_install\";s:5:\"false\";}}s:4:\"code\";i:200;s:7:\"message\";s:2:\"OK\";s:4:\"body\";s:11:\"{\"error\":0}\";s:9:\"dump_path\";s:126:\"D:\\FRONTEND\\openServ\\OSPanel\\domains\\kripdom\\wp-content\\uploads\\wp-migrate-db\\kripdom-test-migrate-20190519183651-38tlx.sql.gz\";s:13:\"dump_filename\";s:41:\"kripdom-test-migrate-20190519183651-38tlx\";s:8:\"dump_url\";s:96:\"http://kripdom/wp-content/uploads/wp-migrate-db/kripdom-test-migrate-20190519183651-1qako.sql.gz\";s:10:\"db_version\";s:6:\"5.6.38\";s:8:\"site_url\";s:14:\"http://kripdom\";s:18:\"find_replace_pairs\";a:2:{s:11:\"replace_old\";a:1:{i:1;s:9:\"//kripdom\";}s:11:\"replace_new\";a:1:{i:1;s:34:\"//dev-test-jul-bon.pantheonsite.io\";}}s:18:\"migration_state_id\";s:13:\"5ce1a2435eef4\";s:5:\"table\";s:8:\"kp_users\";s:11:\"current_row\";s:0:\"\";s:10:\"last_table\";s:1:\"1\";s:12:\"primary_keys\";s:0:\"\";s:4:\"gzip\";s:1:\"0\";}', 'no'),
(216, 'wpmdb_state_timeout_5ce1a6693a3fb', '1558378527', 'no'),
(217, 'wpmdb_state_5ce1a6693a3fb', 'a:22:{s:6:\"action\";s:19:\"wpmdb_migrate_table\";s:6:\"intent\";s:8:\"savefile\";s:3:\"url\";s:0:\"\";s:9:\"form_data\";s:296:\"action=savefile&save_computer=1&gzip_file=1&connection_info=&replace_old%5B%5D=&replace_new%5B%5D=&replace_old%5B%5D=%2F%2Fkripdom&replace_new%5B%5D=%2F%2Fdev-test-jul-bon.pantheonsite.io&replace_guids=1&exclude_transients=1&save_migration_profile_option=new&create_new_profile=&remote_json_data=\";s:5:\"stage\";s:7:\"migrate\";s:5:\"nonce\";s:10:\"2957b367cd\";s:12:\"site_details\";a:1:{s:5:\"local\";a:10:{s:12:\"is_multisite\";s:5:\"false\";s:8:\"site_url\";s:14:\"http://kripdom\";s:8:\"home_url\";s:14:\"http://kripdom\";s:6:\"prefix\";s:3:\"kp_\";s:15:\"uploads_baseurl\";s:34:\"http://kripdom/wp-content/uploads/\";s:7:\"uploads\";a:6:{s:4:\"path\";s:71:\"D:\\FRONTEND\\openServ\\OSPanel\\domains\\kripdom/wp-content/uploads/2019/05\";s:3:\"url\";s:41:\"http://kripdom/wp-content/uploads/2019/05\";s:6:\"subdir\";s:8:\"/2019/05\";s:7:\"basedir\";s:63:\"D:\\FRONTEND\\openServ\\OSPanel\\domains\\kripdom/wp-content/uploads\";s:7:\"baseurl\";s:33:\"http://kripdom/wp-content/uploads\";s:5:\"error\";b:0;}s:11:\"uploads_dir\";s:33:\"wp-content/uploads/wp-migrate-db/\";s:8:\"subsites\";a:0:{}s:13:\"subsites_info\";a:0:{}s:20:\"is_subdomain_install\";s:5:\"false\";}}s:4:\"code\";i:200;s:7:\"message\";s:2:\"OK\";s:4:\"body\";s:11:\"{\"error\":0}\";s:9:\"dump_path\";s:126:\"D:\\FRONTEND\\openServ\\OSPanel\\domains\\kripdom\\wp-content\\uploads\\wp-migrate-db\\kripdom-test-migrate-20190519185433-t6dz7.sql.gz\";s:13:\"dump_filename\";s:41:\"kripdom-test-migrate-20190519185433-t6dz7\";s:8:\"dump_url\";s:96:\"http://kripdom/wp-content/uploads/wp-migrate-db/kripdom-test-migrate-20190519185433-hdvie.sql.gz\";s:10:\"db_version\";s:6:\"5.6.38\";s:8:\"site_url\";s:14:\"http://kripdom\";s:18:\"find_replace_pairs\";a:2:{s:11:\"replace_old\";a:1:{i:1;s:9:\"//kripdom\";}s:11:\"replace_new\";a:1:{i:1;s:34:\"//dev-test-jul-bon.pantheonsite.io\";}}s:18:\"migration_state_id\";s:13:\"5ce1a6693a3fb\";s:5:\"table\";s:8:\"kp_users\";s:11:\"current_row\";s:0:\"\";s:10:\"last_table\";s:1:\"1\";s:12:\"primary_keys\";s:0:\"\";s:4:\"gzip\";s:1:\"0\";}', 'no'),
(219, 'wpmdb_state_timeout_5ce1a88967720', '1558379117', 'no'),
(220, 'wpmdb_state_5ce1a88967720', 'a:22:{s:6:\"action\";s:19:\"wpmdb_migrate_table\";s:6:\"intent\";s:8:\"savefile\";s:3:\"url\";s:0:\"\";s:9:\"form_data\";s:296:\"action=savefile&save_computer=1&gzip_file=1&connection_info=&replace_old%5B%5D=&replace_new%5B%5D=&replace_old%5B%5D=%2F%2Fkripdom&replace_new%5B%5D=%2F%2Fdev-jul-bon-test.pantheonsite.io&replace_guids=1&exclude_transients=1&save_migration_profile_option=new&create_new_profile=&remote_json_data=\";s:5:\"stage\";s:7:\"migrate\";s:5:\"nonce\";s:10:\"2957b367cd\";s:12:\"site_details\";a:1:{s:5:\"local\";a:10:{s:12:\"is_multisite\";s:5:\"false\";s:8:\"site_url\";s:14:\"http://kripdom\";s:8:\"home_url\";s:14:\"http://kripdom\";s:6:\"prefix\";s:3:\"kp_\";s:15:\"uploads_baseurl\";s:34:\"http://kripdom/wp-content/uploads/\";s:7:\"uploads\";a:6:{s:4:\"path\";s:71:\"D:\\FRONTEND\\openServ\\OSPanel\\domains\\kripdom/wp-content/uploads/2019/05\";s:3:\"url\";s:41:\"http://kripdom/wp-content/uploads/2019/05\";s:6:\"subdir\";s:8:\"/2019/05\";s:7:\"basedir\";s:63:\"D:\\FRONTEND\\openServ\\OSPanel\\domains\\kripdom/wp-content/uploads\";s:7:\"baseurl\";s:33:\"http://kripdom/wp-content/uploads\";s:5:\"error\";b:0;}s:11:\"uploads_dir\";s:33:\"wp-content/uploads/wp-migrate-db/\";s:8:\"subsites\";a:0:{}s:13:\"subsites_info\";a:0:{}s:20:\"is_subdomain_install\";s:5:\"false\";}}s:4:\"code\";i:200;s:7:\"message\";s:2:\"OK\";s:4:\"body\";s:11:\"{\"error\":0}\";s:9:\"dump_path\";s:126:\"D:\\FRONTEND\\openServ\\OSPanel\\domains\\kripdom\\wp-content\\uploads\\wp-migrate-db\\kripdom-test-migrate-20190519190337-9fsra.sql.gz\";s:13:\"dump_filename\";s:41:\"kripdom-test-migrate-20190519190337-9fsra\";s:8:\"dump_url\";s:96:\"http://kripdom/wp-content/uploads/wp-migrate-db/kripdom-test-migrate-20190519190337-sb5oj.sql.gz\";s:10:\"db_version\";s:6:\"5.6.38\";s:8:\"site_url\";s:14:\"http://kripdom\";s:18:\"find_replace_pairs\";a:2:{s:11:\"replace_old\";a:1:{i:1;s:9:\"//kripdom\";}s:11:\"replace_new\";a:1:{i:1;s:34:\"//dev-jul-bon-test.pantheonsite.io\";}}s:18:\"migration_state_id\";s:13:\"5ce1a88967720\";s:5:\"table\";s:8:\"kp_users\";s:11:\"current_row\";s:0:\"\";s:10:\"last_table\";s:1:\"1\";s:12:\"primary_keys\";s:0:\"\";s:4:\"gzip\";s:1:\"0\";}', 'no');

-- --------------------------------------------------------

--
-- Структура таблицы `kp_postmeta`
--

CREATE TABLE `kp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `kp_postmeta`
--

INSERT INTO `kp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(7, 6, '_edit_lock', '1558264088:1'),
(16, 10, '_edit_lock', '1558245446:1'),
(22, 13, '_edit_lock', '1558246467:1'),
(23, 14, '_wp_attached_file', '2019/05/post-3.jpg'),
(24, 14, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:554;s:4:\"file\";s:18:\"2019/05/post-3.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"post-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"post-3-300x162.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:162;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"post-3-768x416.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"post-3-1024x554.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:554;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(27, 13, '_thumbnail_id', '14'),
(28, 16, '_edit_lock', '1558289382:1'),
(29, 18, '_edit_lock', '1558201786:1'),
(30, 20, '_edit_lock', '1558201824:1'),
(31, 22, '_edit_lock', '1558201848:1'),
(32, 24, '_edit_lock', '1558201859:1'),
(33, 26, '_edit_lock', '1558201891:1'),
(44, 31, '_menu_item_type', 'post_type'),
(45, 31, '_menu_item_menu_item_parent', '0'),
(46, 31, '_menu_item_object_id', '24'),
(47, 31, '_menu_item_object', 'page'),
(48, 31, '_menu_item_target', ''),
(49, 31, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(50, 31, '_menu_item_xfn', ''),
(51, 31, '_menu_item_url', ''),
(53, 32, '_menu_item_type', 'post_type'),
(54, 32, '_menu_item_menu_item_parent', '0'),
(55, 32, '_menu_item_object_id', '26'),
(56, 32, '_menu_item_object', 'page'),
(57, 32, '_menu_item_target', ''),
(58, 32, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(59, 32, '_menu_item_xfn', ''),
(60, 32, '_menu_item_url', ''),
(62, 33, '_menu_item_type', 'post_type'),
(63, 33, '_menu_item_menu_item_parent', '0'),
(64, 33, '_menu_item_object_id', '18'),
(65, 33, '_menu_item_object', 'page'),
(66, 33, '_menu_item_target', ''),
(67, 33, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(68, 33, '_menu_item_xfn', ''),
(69, 33, '_menu_item_url', ''),
(80, 35, '_menu_item_type', 'post_type'),
(81, 35, '_menu_item_menu_item_parent', '0'),
(82, 35, '_menu_item_object_id', '2'),
(83, 35, '_menu_item_object', 'page'),
(84, 35, '_menu_item_target', ''),
(85, 35, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(86, 35, '_menu_item_xfn', ''),
(87, 35, '_menu_item_url', ''),
(89, 36, '_menu_item_type', 'post_type'),
(90, 36, '_menu_item_menu_item_parent', '0'),
(91, 36, '_menu_item_object_id', '22'),
(92, 36, '_menu_item_object', 'page'),
(93, 36, '_menu_item_target', ''),
(94, 36, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(95, 36, '_menu_item_xfn', ''),
(96, 36, '_menu_item_url', ''),
(107, 38, '_menu_item_type', 'post_type'),
(108, 38, '_menu_item_menu_item_parent', '0'),
(109, 38, '_menu_item_object_id', '20'),
(110, 38, '_menu_item_object', 'page'),
(111, 38, '_menu_item_target', ''),
(112, 38, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(113, 38, '_menu_item_xfn', ''),
(114, 38, '_menu_item_url', ''),
(119, 39, '_menu_item_type', 'post_type'),
(120, 39, '_menu_item_menu_item_parent', '0'),
(121, 39, '_menu_item_object_id', '16'),
(122, 39, '_menu_item_object', 'page'),
(123, 39, '_menu_item_target', ''),
(124, 39, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(125, 39, '_menu_item_xfn', ''),
(126, 39, '_menu_item_url', ''),
(128, 40, '_edit_lock', '1558209797:1'),
(132, 42, '_edit_lock', '1558263002:1'),
(135, 42, '_wp_old_date', '2019-05-18'),
(137, 44, '_wp_attached_file', '2019/05/post-2-1.jpg'),
(138, 44, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:443;s:4:\"file\";s:20:\"2019/05/post-2-1.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"post-2-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"post-2-1-300x130.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:130;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"post-2-1-768x332.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:332;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"post-2-1-1024x443.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:443;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"news-home-page-size\";a:4:{s:4:\"file\";s:20:\"post-2-1-600x324.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(141, 40, '_thumbnail_id', '44'),
(144, 10, '_thumbnail_id', '44'),
(150, 13, '_wp_old_date', '2019-05-14'),
(151, 45, '_edit_lock', '1558246471:1'),
(152, 46, '_wp_attached_file', '2019/05/logo-colorful.png'),
(153, 46, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:110;s:6:\"height\";i:24;s:4:\"file\";s:25:\"2019/05/logo-colorful.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(154, 45, '_customize_restore_dismissed', '1'),
(155, 47, '_wp_trash_meta_status', 'publish'),
(156, 47, '_wp_trash_meta_time', '1558246539'),
(159, 54, '_wp_trash_meta_status', 'publish'),
(160, 54, '_wp_trash_meta_time', '1558248021'),
(179, 55, '_wp_trash_meta_status', 'publish'),
(180, 55, '_wp_trash_meta_time', '1558248442'),
(181, 2, '_edit_lock', '1558254253:1'),
(182, 40, '_wp_trash_meta_status', 'publish'),
(183, 40, '_wp_trash_meta_time', '1558262862'),
(184, 40, '_wp_desired_post_slug', 'last-news'),
(185, 57, '_wp_attached_file', '2019/04/post-1.jpg'),
(186, 57, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:584;s:4:\"file\";s:18:\"2019/04/post-1.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"post-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"post-1-300x146.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:146;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"post-1-768x374.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:374;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"post-1-1024x498.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:498;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"news-home-page-size\";a:4:{s:4:\"file\";s:18:\"post-1-600x324.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(189, 42, '_thumbnail_id', '57'),
(192, 6, '_thumbnail_id', '57'),
(193, 60, '_edit_last', '1'),
(194, 60, '_edit_lock', '1558264746:1'),
(195, 16, '_edit_last', '1'),
(196, 16, 'section_title_latest_news', 'Latest News/Blog'),
(197, 16, '_section_title_latest_news', 'field_5ce13a116b276'),
(198, 16, 'section_description_latest_news', ' There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour\r\n                  '),
(199, 16, '_section_description_latest_news', 'field_5ce13a302df54'),
(200, 16, 'section_title_oldest_news', 'Oldest News'),
(201, 16, '_section_title_oldest_news', 'field_5ce13a83eeec9'),
(202, 16, 'section_description_oldest_news', ' There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour\r\n                  '),
(203, 16, '_section_description_oldest_news', 'field_5ce13a96eeeca'),
(204, 67, 'section_title_latest_news', 'Latest News/Blog'),
(205, 67, '_section_title_latest_news', 'field_5ce13a116b276'),
(206, 67, 'section_description_latest_news', ' There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour\r\n                  '),
(207, 67, '_section_description_latest_news', 'field_5ce13a302df54'),
(208, 67, 'section_title_oldest_news', 'Oldest News'),
(209, 67, '_section_title_oldest_news', 'field_5ce13a83eeec9'),
(210, 67, 'section_description_oldest_news', ' There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour\r\n                  '),
(211, 67, '_section_description_oldest_news', 'field_5ce13a96eeeca');

-- --------------------------------------------------------

--
-- Структура таблицы `kp_posts`
--

CREATE TABLE `kp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `kp_posts`
--

INSERT INTO `kp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(2, 1, '2019-05-18 17:01:10', '2019-05-18 17:01:10', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://kripdom/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Pages', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2019-05-19 08:26:19', '2019-05-19 08:26:19', '', 0, 'http://kripdom/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-05-18 17:01:10', '2019-05-18 17:01:10', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://kripdom.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2019-05-18 17:01:10', '2019-05-18 17:01:10', '', 0, 'http://kripdom/?page_id=3', 0, 'page', '', 0),
(4, 1, '2019-05-18 17:01:20', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-05-18 17:01:20', '0000-00-00 00:00:00', '', 0, 'http://kripdom/?p=4', 0, 'post', '', 0),
(6, 1, '2019-05-18 17:46:05', '2019-05-18 17:46:05', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam eget nulla ut sapien luctus consectetur. Ut accumsan faucibus sapien, commodo pharetra magna hendrerit vitae. Curabitur eu vulputate sapien, ac accumsan lorem. Vestibulum nunc arcu, tincidunt quis purus eget, ornare feugiat nisl. In convallis hendrerit hendrerit. Praesent tincidunt aliquam quam sit amet laoreet. Vivamus gravida nibh sed hendrerit aliquet. Vivamus ligula leo, feugiat et molestie at, lobortis in odio. Sed tincidunt enim vel efficitur mattis. Integer vel neque laoreet, hendrerit purus dignissim, sodales elit. Phasellus interdum iaculis consectetur. Vestibulum blandit interdum ultricies. Integer id iaculis ex. Donec neque eros, ullamcorper non neque ut, aliquam varius enim. Sed nec vehicula ipsum. Proin commodo eros non augue volutpat venenatis.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Curabitur vel erat vel velit tincidunt ultrices non sit amet tellus. Suspendisse potenti. Donec sapien libero, aliquam sed consequat et, pellentesque sed arcu. Curabitur dictum a mi sit amet commodo. Praesent eu magna ac augue condimentum consequat quis nec arcu. Quisque convallis mollis eros sit amet congue. Maecenas lacinia id felis nec pulvinar. In ultrices tincidunt augue, vitae tristique nisi mollis id.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Mauris blandit pellentesque leo, a feugiat enim molestie ut. Sed sit amet tellus lobortis, commodo neque ac, elementum ipsum. In nec volutpat nulla. Aliquam ullamcorper, libero nec auctor sollicitudin, arcu elit porttitor orci, vel gravida odio dolor vitae elit. Aliquam pretium dui vitae tellus tempor, sed fermentum mauris cursus. Quisque scelerisque varius auctor. Maecenas finibus nunc commodo, pulvinar tellus eget, accumsan justo. Donec maximus nunc orci, vitae tempus lorem scelerisque in. Integer dignissim accumsan lacus nec hendrerit. Integer mauris metus, fermentum at egestas in, tristique a neque. Nam imperdiet sem ullamcorper tortor facilisis, ut accumsan urna sagittis. Morbi accumsan id tortor et hendrerit.</p>\n<!-- /wp:paragraph -->', '5 Cloud Computing Predicions for 2018 that will define.', '', 'publish', 'open', 'open', '', '5-cloud-computing-predicions-for-2018-that-will-define', '', '', '2019-05-19 10:53:21', '2019-05-19 10:53:21', '', 0, 'http://kripdom/?p=6', 0, 'post', '', 0),
(9, 1, '2019-05-18 17:46:05', '2019-05-18 17:46:05', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam eget nulla ut sapien luctus consectetur. Ut accumsan faucibus sapien, commodo pharetra magna hendrerit vitae. Curabitur eu vulputate sapien, ac accumsan lorem. Vestibulum nunc arcu, tincidunt quis purus eget, ornare feugiat nisl. In convallis hendrerit hendrerit. Praesent tincidunt aliquam quam sit amet laoreet. Vivamus gravida nibh sed hendrerit aliquet. Vivamus ligula leo, feugiat et molestie at, lobortis in odio. Sed tincidunt enim vel efficitur mattis. Integer vel neque laoreet, hendrerit purus dignissim, sodales elit. Phasellus interdum iaculis consectetur. Vestibulum blandit interdum ultricies. Integer id iaculis ex. Donec neque eros, ullamcorper non neque ut, aliquam varius enim. Sed nec vehicula ipsum. Proin commodo eros non augue volutpat venenatis.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Curabitur vel erat vel velit tincidunt ultrices non sit amet tellus. Suspendisse potenti. Donec sapien libero, aliquam sed consequat et, pellentesque sed arcu. Curabitur dictum a mi sit amet commodo. Praesent eu magna ac augue condimentum consequat quis nec arcu. Quisque convallis mollis eros sit amet congue. Maecenas lacinia id felis nec pulvinar. In ultrices tincidunt augue, vitae tristique nisi mollis id.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Mauris blandit pellentesque leo, a feugiat enim molestie ut. Sed sit amet tellus lobortis, commodo neque ac, elementum ipsum. In nec volutpat nulla. Aliquam ullamcorper, libero nec auctor sollicitudin, arcu elit porttitor orci, vel gravida odio dolor vitae elit. Aliquam pretium dui vitae tellus tempor, sed fermentum mauris cursus. Quisque scelerisque varius auctor. Maecenas finibus nunc commodo, pulvinar tellus eget, accumsan justo. Donec maximus nunc orci, vitae tempus lorem scelerisque in. Integer dignissim accumsan lacus nec hendrerit. Integer mauris metus, fermentum at egestas in, tristique a neque. Nam imperdiet sem ullamcorper tortor facilisis, ut accumsan urna sagittis. Morbi accumsan id tortor et hendrerit.</p>\n<!-- /wp:paragraph -->', '5 Cloud Computing Predicions for 2018 that will define.', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2019-05-18 17:46:05', '2019-05-18 17:46:05', '', 6, 'http://kripdom/2019/05/18/6-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2019-05-18 17:47:59', '2019-05-18 17:47:59', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam eget nulla ut sapien luctus consectetur. Ut accumsan faucibus sapien, commodo pharetra magna hendrerit vitae. Curabitur eu vulputate sapien, ac accumsan lorem. Vestibulum nunc arcu, tincidunt quis purus eget, ornare feugiat nisl. In convallis hendrerit hendrerit. Praesent tincidunt aliquam quam sit amet laoreet. Vivamus gravida nibh sed hendrerit aliquet. Vivamus ligula leo, feugiat et molestie at, lobortis in odio. Sed tincidunt enim vel efficitur mattis. Integer vel neque laoreet, hendrerit purus dignissim, sodales elit. Phasellus interdum iaculis consectetur. Vestibulum blandit interdum ultricies. Integer id iaculis ex. Donec neque eros, ullamcorper non neque ut, aliquam varius enim. Sed nec vehicula ipsum. Proin commodo eros non augue volutpat venenatis.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Curabitur vel erat vel velit tincidunt ultrices non sit amet tellus. Suspendisse potenti. Donec sapien libero, aliquam sed consequat et, pellentesque sed arcu. Curabitur dictum a mi sit amet commodo. Praesent eu magna ac augue condimentum consequat quis nec arcu. Quisque convallis mollis eros sit amet congue. Maecenas lacinia id felis nec pulvinar. In ultrices tincidunt augue, vitae tristique nisi mollis id.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Mauris blandit pellentesque leo, a feugiat enim molestie ut. Sed sit amet tellus lobortis, commodo neque ac, elementum ipsum. In nec volutpat nulla. Aliquam ullamcorper, libero nec auctor sollicitudin, arcu elit porttitor orci, vel gravida odio dolor vitae elit. Aliquam pretium dui vitae tellus tempor, sed fermentum mauris cursus. Quisque scelerisque varius auctor. Maecenas finibus nunc commodo, pulvinar tellus eget, accumsan justo. Donec maximus nunc orci, vitae tempus lorem scelerisque in. Integer dignissim accumsan lacus nec hendrerit. Integer mauris metus, fermentum at egestas in, tristique a neque. Nam imperdiet sem ullamcorper tortor facilisis, ut accumsan urna sagittis. Morbi accumsan id tortor et hendrerit.</p>\n<!-- /wp:paragraph -->', 'Cisco unveils its own container platform for multicloud', '', 'publish', 'open', 'open', '', 'cisco-unveils-its-own-container-platform-for-multicloud', '', '', '2019-05-18 20:05:57', '2019-05-18 20:05:57', '', 0, 'http://kripdom/?p=10', 0, 'post', '', 1),
(12, 1, '2019-05-18 17:47:59', '2019-05-18 17:47:59', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam eget nulla ut sapien luctus consectetur. Ut accumsan faucibus sapien, commodo pharetra magna hendrerit vitae. Curabitur eu vulputate sapien, ac accumsan lorem. Vestibulum nunc arcu, tincidunt quis purus eget, ornare feugiat nisl. In convallis hendrerit hendrerit. Praesent tincidunt aliquam quam sit amet laoreet. Vivamus gravida nibh sed hendrerit aliquet. Vivamus ligula leo, feugiat et molestie at, lobortis in odio. Sed tincidunt enim vel efficitur mattis. Integer vel neque laoreet, hendrerit purus dignissim, sodales elit. Phasellus interdum iaculis consectetur. Vestibulum blandit interdum ultricies. Integer id iaculis ex. Donec neque eros, ullamcorper non neque ut, aliquam varius enim. Sed nec vehicula ipsum. Proin commodo eros non augue volutpat venenatis.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Curabitur vel erat vel velit tincidunt ultrices non sit amet tellus. Suspendisse potenti. Donec sapien libero, aliquam sed consequat et, pellentesque sed arcu. Curabitur dictum a mi sit amet commodo. Praesent eu magna ac augue condimentum consequat quis nec arcu. Quisque convallis mollis eros sit amet congue. Maecenas lacinia id felis nec pulvinar. In ultrices tincidunt augue, vitae tristique nisi mollis id.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Mauris blandit pellentesque leo, a feugiat enim molestie ut. Sed sit amet tellus lobortis, commodo neque ac, elementum ipsum. In nec volutpat nulla. Aliquam ullamcorper, libero nec auctor sollicitudin, arcu elit porttitor orci, vel gravida odio dolor vitae elit. Aliquam pretium dui vitae tellus tempor, sed fermentum mauris cursus. Quisque scelerisque varius auctor. Maecenas finibus nunc commodo, pulvinar tellus eget, accumsan justo. Donec maximus nunc orci, vitae tempus lorem scelerisque in. Integer dignissim accumsan lacus nec hendrerit. Integer mauris metus, fermentum at egestas in, tristique a neque. Nam imperdiet sem ullamcorper tortor facilisis, ut accumsan urna sagittis. Morbi accumsan id tortor et hendrerit.</p>\n<!-- /wp:paragraph -->', 'Cisco unveils its own container platform for multicloud', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2019-05-18 17:47:59', '2019-05-18 17:47:59', '', 10, 'http://kripdom/2019/05/18/10-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2019-05-18 17:49:41', '2019-05-18 17:49:41', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam eget nulla ut sapien luctus consectetur. Ut accumsan faucibus sapien, commodo pharetra magna hendrerit vitae. Curabitur eu vulputate sapien, ac accumsan lorem. Vestibulum nunc arcu, tincidunt quis purus eget, ornare feugiat nisl. In convallis hendrerit hendrerit. Praesent tincidunt aliquam quam sit amet laoreet. Vivamus gravida nibh sed hendrerit aliquet. Vivamus ligula leo, feugiat et molestie at, lobortis in odio. Sed tincidunt enim vel efficitur mattis. Integer vel neque laoreet, hendrerit purus dignissim, sodales elit. Phasellus interdum iaculis consectetur. Vestibulum blandit interdum ultricies. Integer id iaculis ex. Donec neque eros, ullamcorper non neque ut, aliquam varius enim. Sed nec vehicula ipsum. Proin commodo eros non augue volutpat venenatis.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Curabitur vel erat vel velit tincidunt ultrices non sit amet tellus. Suspendisse potenti. Donec sapien libero, aliquam sed consequat et, pellentesque sed arcu. Curabitur dictum a mi sit amet commodo. Praesent eu magna ac augue condimentum consequat quis nec arcu. Quisque convallis mollis eros sit amet congue. Maecenas lacinia id felis nec pulvinar. In ultrices tincidunt augue, vitae tristique nisi mollis id.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Mauris blandit pellentesque leo, a feugiat enim molestie ut. Sed sit amet tellus lobortis, commodo neque ac, elementum ipsum. In nec volutpat nulla. Aliquam ullamcorper, libero nec auctor sollicitudin, arcu elit porttitor orci, vel gravida odio dolor vitae elit. Aliquam pretium dui vitae tellus tempor, sed fermentum mauris cursus. Quisque scelerisque varius auctor. Maecenas finibus nunc commodo, pulvinar tellus eget, accumsan justo. Donec maximus nunc orci, vitae tempus lorem scelerisque in. Integer dignissim accumsan lacus nec hendrerit. Integer mauris metus, fermentum at egestas in, tristique a neque. Nam imperdiet sem ullamcorper tortor facilisis, ut accumsan urna sagittis. Morbi accumsan id tortor et hendrerit.</p>\n<!-- /wp:paragraph -->', 'Juniper and TIM collaborate to work infrastructure', '', 'publish', 'open', 'open', '', 'juniper-and-tim-collaborate-to-work-infrastructure', '', '', '2019-05-19 06:03:39', '2019-05-19 06:03:39', '', 0, 'http://kripdom/?p=13', 0, 'post', '', 0),
(14, 1, '2019-05-18 17:49:31', '2019-05-18 17:49:31', '', 'post-3', '', 'inherit', 'open', 'closed', '', 'post-3', '', '', '2019-05-18 17:49:31', '2019-05-18 17:49:31', '', 13, 'http://kripdom/wp-content/uploads/2019/05/post-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(15, 1, '2019-05-18 17:49:41', '2019-05-18 17:49:41', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam eget nulla ut sapien luctus consectetur. Ut accumsan faucibus sapien, commodo pharetra magna hendrerit vitae. Curabitur eu vulputate sapien, ac accumsan lorem. Vestibulum nunc arcu, tincidunt quis purus eget, ornare feugiat nisl. In convallis hendrerit hendrerit. Praesent tincidunt aliquam quam sit amet laoreet. Vivamus gravida nibh sed hendrerit aliquet. Vivamus ligula leo, feugiat et molestie at, lobortis in odio. Sed tincidunt enim vel efficitur mattis. Integer vel neque laoreet, hendrerit purus dignissim, sodales elit. Phasellus interdum iaculis consectetur. Vestibulum blandit interdum ultricies. Integer id iaculis ex. Donec neque eros, ullamcorper non neque ut, aliquam varius enim. Sed nec vehicula ipsum. Proin commodo eros non augue volutpat venenatis.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Curabitur vel erat vel velit tincidunt ultrices non sit amet tellus. Suspendisse potenti. Donec sapien libero, aliquam sed consequat et, pellentesque sed arcu. Curabitur dictum a mi sit amet commodo. Praesent eu magna ac augue condimentum consequat quis nec arcu. Quisque convallis mollis eros sit amet congue. Maecenas lacinia id felis nec pulvinar. In ultrices tincidunt augue, vitae tristique nisi mollis id.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Mauris blandit pellentesque leo, a feugiat enim molestie ut. Sed sit amet tellus lobortis, commodo neque ac, elementum ipsum. In nec volutpat nulla. Aliquam ullamcorper, libero nec auctor sollicitudin, arcu elit porttitor orci, vel gravida odio dolor vitae elit. Aliquam pretium dui vitae tellus tempor, sed fermentum mauris cursus. Quisque scelerisque varius auctor. Maecenas finibus nunc commodo, pulvinar tellus eget, accumsan justo. Donec maximus nunc orci, vitae tempus lorem scelerisque in. Integer dignissim accumsan lacus nec hendrerit. Integer mauris metus, fermentum at egestas in, tristique a neque. Nam imperdiet sem ullamcorper tortor facilisis, ut accumsan urna sagittis. Morbi accumsan id tortor et hendrerit.</p>\n<!-- /wp:paragraph -->', 'Juniper and TIM collaborate to work infrastructure', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2019-05-18 17:49:41', '2019-05-18 17:49:41', '', 13, 'http://kripdom/2019/05/18/13-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2019-05-18 17:50:52', '2019-05-18 17:50:52', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2019-05-19 11:20:37', '2019-05-19 11:20:37', '', 0, 'http://kripdom/?page_id=16', 0, 'page', '', 0),
(17, 1, '2019-05-18 17:50:52', '2019-05-18 17:50:52', '', 'Home', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2019-05-18 17:50:52', '2019-05-18 17:50:52', '', 16, 'http://kripdom/2019/05/18/16-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2019-05-18 17:51:47', '2019-05-18 17:51:47', '', 'Domain', '', 'publish', 'closed', 'closed', '', 'domain', '', '', '2019-05-18 17:51:47', '2019-05-18 17:51:47', '', 0, 'http://kripdom/?page_id=18', 0, 'page', '', 0),
(19, 1, '2019-05-18 17:51:47', '2019-05-18 17:51:47', '', 'Domain', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2019-05-18 17:51:47', '2019-05-18 17:51:47', '', 18, 'http://kripdom/2019/05/18/18-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2019-05-18 17:52:48', '2019-05-18 17:52:48', '', 'WHMCS', '', 'publish', 'closed', 'closed', '', 'whmcs', '', '', '2019-05-18 17:52:48', '2019-05-18 17:52:48', '', 0, 'http://kripdom/?page_id=20', 0, 'page', '', 0),
(21, 1, '2019-05-18 17:52:48', '2019-05-18 17:52:48', '', 'WHMCS', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2019-05-18 17:52:48', '2019-05-18 17:52:48', '', 20, 'http://kripdom/2019/05/18/20-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2019-05-18 17:53:11', '2019-05-18 17:53:11', '', 'Shop', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2019-05-18 17:53:11', '2019-05-18 17:53:11', '', 0, 'http://kripdom/?page_id=22', 0, 'page', '', 0),
(23, 1, '2019-05-18 17:53:11', '2019-05-18 17:53:11', '', 'Shop', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2019-05-18 17:53:11', '2019-05-18 17:53:11', '', 22, 'http://kripdom/2019/05/18/22-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2019-05-18 17:53:23', '2019-05-18 17:53:23', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2019-05-18 17:53:23', '2019-05-18 17:53:23', '', 0, 'http://kripdom/?page_id=24', 0, 'page', '', 0),
(25, 1, '2019-05-18 17:53:23', '2019-05-18 17:53:23', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2019-05-18 17:53:23', '2019-05-18 17:53:23', '', 24, 'http://kripdom/2019/05/18/24-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2019-05-18 17:53:40', '2019-05-18 17:53:40', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2019-05-18 17:53:40', '2019-05-18 17:53:40', '', 0, 'http://kripdom/?page_id=26', 0, 'page', '', 0),
(27, 1, '2019-05-18 17:53:40', '2019-05-18 17:53:40', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2019-05-18 17:53:40', '2019-05-18 17:53:40', '', 26, 'http://kripdom/2019/05/18/26-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2019-05-18 17:54:45', '2019-05-18 17:54:45', ' ', '', '', 'publish', 'closed', 'closed', '', '31', '', '', '2019-05-19 08:27:20', '2019-05-19 08:27:20', '', 0, 'http://kripdom/?p=31', 6, 'nav_menu_item', '', 0),
(32, 1, '2019-05-18 17:54:45', '2019-05-18 17:54:45', ' ', '', '', 'publish', 'closed', 'closed', '', '32', '', '', '2019-05-19 08:27:20', '2019-05-19 08:27:20', '', 0, 'http://kripdom/?p=32', 7, 'nav_menu_item', '', 0),
(33, 1, '2019-05-18 17:54:45', '2019-05-18 17:54:45', ' ', '', '', 'publish', 'closed', 'closed', '', '33', '', '', '2019-05-19 08:27:20', '2019-05-19 08:27:20', '', 0, 'http://kripdom/?p=33', 2, 'nav_menu_item', '', 0),
(35, 1, '2019-05-18 17:54:46', '2019-05-18 17:54:46', ' ', '', '', 'publish', 'closed', 'closed', '', '35', '', '', '2019-05-19 08:27:20', '2019-05-19 08:27:20', '', 0, 'http://kripdom/?p=35', 4, 'nav_menu_item', '', 0),
(36, 1, '2019-05-18 17:54:46', '2019-05-18 17:54:46', ' ', '', '', 'publish', 'closed', 'closed', '', '36', '', '', '2019-05-19 08:27:20', '2019-05-19 08:27:20', '', 0, 'http://kripdom/?p=36', 5, 'nav_menu_item', '', 0),
(38, 1, '2019-05-18 17:54:46', '2019-05-18 17:54:46', ' ', '', '', 'publish', 'closed', 'closed', '', '38', '', '', '2019-05-19 08:27:20', '2019-05-19 08:27:20', '', 0, 'http://kripdom/?p=38', 3, 'nav_menu_item', '', 0),
(39, 1, '2019-05-18 17:56:01', '2019-05-18 17:56:01', ' ', '', '', 'publish', 'closed', 'closed', '', '39', '', '', '2019-05-19 08:27:20', '2019-05-19 08:27:20', '', 0, 'http://kripdom/?p=39', 1, 'nav_menu_item', '', 0),
(40, 1, '2019-05-18 19:00:42', '2019-05-18 19:00:42', '', 'Last News', '', 'trash', 'open', 'open', '', 'last-news__trashed', '', '', '2019-05-19 10:47:42', '2019-05-19 10:47:42', '', 0, 'http://kripdom/?p=40', 0, 'post', '', 0),
(41, 1, '2019-05-18 19:00:42', '2019-05-18 19:00:42', '', 'Last News', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2019-05-18 19:00:42', '2019-05-18 19:00:42', '', 40, 'http://kripdom/40-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2019-04-18 19:01:19', '2019-04-18 19:01:19', '', 'First News', '', 'publish', 'open', 'open', '', 'first-news', '', '', '2019-05-19 10:52:09', '2019-05-19 10:52:09', '', 0, 'http://kripdom/?p=42', 0, 'post', '', 0),
(43, 1, '2019-05-18 19:02:18', '2019-05-18 19:02:18', '', 'First News', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2019-05-18 19:02:18', '2019-05-18 19:02:18', '', 42, 'http://kripdom/42-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2019-05-18 20:04:45', '2019-05-18 20:04:45', '', 'post-2', '', 'inherit', 'open', 'closed', '', 'post-2', '', '', '2019-05-18 20:04:45', '2019-05-18 20:04:45', '', 40, 'http://kripdom/wp-content/uploads/2019/05/post-2-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(45, 1, '2019-05-19 06:09:20', '0000-00-00 00:00:00', '{\n    \"blogdescription\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-05-19 06:09:20\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '6840f2dd-3ac8-44b0-948d-2e666f296307', '', '', '2019-05-19 06:09:20', '0000-00-00 00:00:00', '', 0, 'http://kripdom/?p=45', 0, 'customize_changeset', '', 0),
(46, 1, '2019-05-19 06:15:31', '2019-05-19 06:15:31', '', 'logo-colorful', '', 'inherit', 'open', 'closed', '', 'logo-colorful', '', '', '2019-05-19 06:15:31', '2019-05-19 06:15:31', '', 0, 'http://kripdom/wp-content/uploads/2019/05/logo-colorful.png', 0, 'attachment', 'image/png', 0),
(47, 1, '2019-05-19 06:15:39', '2019-05-19 06:15:39', '{\n    \"kripdom-theme::custom_logo\": {\n        \"value\": 46,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-05-19 06:15:39\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '3783ab6b-00a8-4daf-aab8-d4fe6ca656c5', '', '', '2019-05-19 06:15:39', '2019-05-19 06:15:39', '', 0, 'http://kripdom/3783ab6b-00a8-4daf-aab8-d4fe6ca656c5/', 0, 'customize_changeset', '', 0),
(54, 1, '2019-05-19 06:40:21', '2019-05-19 06:40:21', '{\n    \"kripdom-theme::header_text_button\": {\n        \"value\": \"Client Area\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-05-19 06:40:21\"\n    },\n    \"kripdom-theme::header_url_button\": {\n        \"value\": \"#\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-05-19 06:40:21\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '810c932a-cd70-4232-817c-38ee1e269b64', '', '', '2019-05-19 06:40:21', '2019-05-19 06:40:21', '', 0, 'http://kripdom/810c932a-cd70-4232-817c-38ee1e269b64/', 0, 'customize_changeset', '', 0),
(55, 1, '2019-05-19 06:47:22', '2019-05-19 06:47:22', '{\n    \"kripdom-theme::button_view_all_text_title\": {\n        \"value\": \"View All Text\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-05-19 06:47:22\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '105c602a-c9fa-437f-888c-52c5ea058806', '', '', '2019-05-19 06:47:22', '2019-05-19 06:47:22', '', 0, 'http://kripdom/105c602a-c9fa-437f-888c-52c5ea058806/', 0, 'customize_changeset', '', 0),
(56, 1, '2019-05-19 08:26:19', '2019-05-19 08:26:19', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://kripdom/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Pages', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-05-19 08:26:19', '2019-05-19 08:26:19', '', 2, 'http://kripdom/2-revision-v1/', 0, 'revision', '', 0),
(57, 1, '2019-05-19 10:51:56', '2019-05-19 10:51:56', '', 'post-1', '', 'inherit', 'open', 'closed', '', 'post-1', '', '', '2019-05-19 10:51:56', '2019-05-19 10:51:56', '', 42, 'http://kripdom/wp-content/uploads/2019/04/post-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(58, 1, '2019-05-19 11:10:51', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-05-19 11:10:51', '0000-00-00 00:00:00', '', 0, 'http://kripdom/?post_type=acf-field-group&p=58', 0, 'acf-field-group', '', 0),
(59, 1, '2019-05-19 11:10:52', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-05-19 11:10:52', '0000-00-00 00:00:00', '', 0, 'http://kripdom/?post_type=acf-field-group&p=59', 0, 'acf-field-group', '', 0),
(60, 1, '2019-05-19 11:12:08', '2019-05-19 11:12:08', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"page_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:10:\"front_page\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Latest News', 'latest-news', 'publish', 'closed', 'closed', '', 'group_5ce139c0d0ad6', '', '', '2019-05-19 11:19:02', '2019-05-19 11:19:02', '', 0, 'http://kripdom/?post_type=acf-field-group&#038;p=60', 0, 'acf-field-group', '', 0),
(61, 1, '2019-05-19 11:12:08', '2019-05-19 11:12:08', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Section Latest News', 'section_latest_news', 'publish', 'closed', 'closed', '', 'field_5ce139eeb9011', '', '', '2019-05-19 11:12:08', '2019-05-19 11:12:08', '', 60, 'http://kripdom/?post_type=acf-field&p=61', 0, 'acf-field', '', 0),
(62, 1, '2019-05-19 11:12:38', '2019-05-19 11:12:38', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Section title', 'section_title_latest_news', 'publish', 'closed', 'closed', '', 'field_5ce13a116b276', '', '', '2019-05-19 11:12:38', '2019-05-19 11:12:38', '', 60, 'http://kripdom/?post_type=acf-field&p=62', 1, 'acf-field', '', 0),
(63, 1, '2019-05-19 11:13:20', '2019-05-19 11:13:20', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:4:\"rows\";s:0:\"\";}', 'Section description', 'section_description_latest_news', 'publish', 'closed', 'closed', '', 'field_5ce13a302df54', '', '', '2019-05-19 11:15:22', '2019-05-19 11:15:22', '', 60, 'http://kripdom/?post_type=acf-field&#038;p=63', 2, 'acf-field', '', 0),
(64, 1, '2019-05-19 11:14:02', '2019-05-19 11:14:02', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Section Oldest News', 'section_oldest_new', 'publish', 'closed', 'closed', '', 'field_5ce13a5988fc8', '', '', '2019-05-19 11:14:02', '2019-05-19 11:14:02', '', 60, 'http://kripdom/?post_type=acf-field&p=64', 3, 'acf-field', '', 0),
(65, 1, '2019-05-19 11:15:22', '2019-05-19 11:15:22', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Section title', 'section_title_oldest_news', 'publish', 'closed', 'closed', '', 'field_5ce13a83eeec9', '', '', '2019-05-19 11:15:22', '2019-05-19 11:15:22', '', 60, 'http://kripdom/?post_type=acf-field&p=65', 4, 'acf-field', '', 0),
(66, 1, '2019-05-19 11:15:22', '2019-05-19 11:15:22', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Section description', 'section_description_oldest_news', 'publish', 'closed', 'closed', '', 'field_5ce13a96eeeca', '', '', '2019-05-19 11:15:22', '2019-05-19 11:15:22', '', 60, 'http://kripdom/?post_type=acf-field&p=66', 5, 'acf-field', '', 0),
(67, 1, '2019-05-19 11:20:37', '2019-05-19 11:20:37', '', 'Home', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2019-05-19 11:20:37', '2019-05-19 11:20:37', '', 16, 'http://kripdom/16-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `kp_termmeta`
--

CREATE TABLE `kp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `kp_terms`
--

CREATE TABLE `kp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `kp_terms`
--

INSERT INTO `kp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Main Menu', 'main-menu', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `kp_term_relationships`
--

CREATE TABLE `kp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `kp_term_relationships`
--

INSERT INTO `kp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(6, 1, 0),
(10, 1, 0),
(13, 1, 0),
(31, 2, 0),
(32, 2, 0),
(33, 2, 0),
(35, 2, 0),
(36, 2, 0),
(38, 2, 0),
(39, 2, 0),
(40, 1, 0),
(42, 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `kp_term_taxonomy`
--

CREATE TABLE `kp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `kp_term_taxonomy`
--

INSERT INTO `kp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 4),
(2, 2, 'nav_menu', '', 0, 7);

-- --------------------------------------------------------

--
-- Структура таблицы `kp_usermeta`
--

CREATE TABLE `kp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `kp_usermeta`
--

INSERT INTO `kp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'Jul'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'kp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'kp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:3:{s:64:\"4a0c0b79e5f2a4562e81332589d254721aa81ffa3be6eaf26d3d85ce17daa73f\";a:4:{s:10:\"expiration\";i:1558371678;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:109:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36\";s:5:\"login\";i:1558198878;}s:64:\"a2177b5ae5a6d1f5b2a8b3815fb19ea1450385eb859ebd1a1bf734532eb3c2da\";a:4:{s:10:\"expiration\";i:1558371712;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36\";s:5:\"login\";i:1558198912;}s:64:\"727957839e10c17fc393954ab1c22fd01d63e1b10acbde6caf3502a159bad568\";a:4:{s:10:\"expiration\";i:1558435627;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36\";s:5:\"login\";i:1558262827;}}'),
(17, 1, 'kp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'kp_user-settings', 'libraryContent=browse'),
(20, 1, 'kp_user-settings-time', '1558201418'),
(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:26:\"add-post-type-testimonials\";i:1;s:18:\"add-post-type-logo\";i:2;s:12:\"add-post_tag\";}'),
(23, 1, 'nav_menu_recently_edited', '2');

-- --------------------------------------------------------

--
-- Структура таблицы `kp_users`
--

CREATE TABLE `kp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `kp_users`
--

INSERT INTO `kp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'Jul', '$P$BqWjIEsuVU2mgQggRLuubRXTT9z9/d1', 'jul', 'yulija.bon007@gmail.com', '', '2019-05-18 17:01:10', '', 0, 'Jul');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `kp_commentmeta`
--
ALTER TABLE `kp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `kp_comments`
--
ALTER TABLE `kp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Индексы таблицы `kp_links`
--
ALTER TABLE `kp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Индексы таблицы `kp_options`
--
ALTER TABLE `kp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Индексы таблицы `kp_postmeta`
--
ALTER TABLE `kp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `kp_posts`
--
ALTER TABLE `kp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Индексы таблицы `kp_termmeta`
--
ALTER TABLE `kp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `kp_terms`
--
ALTER TABLE `kp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Индексы таблицы `kp_term_relationships`
--
ALTER TABLE `kp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Индексы таблицы `kp_term_taxonomy`
--
ALTER TABLE `kp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Индексы таблицы `kp_usermeta`
--
ALTER TABLE `kp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `kp_users`
--
ALTER TABLE `kp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `kp_commentmeta`
--
ALTER TABLE `kp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `kp_comments`
--
ALTER TABLE `kp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `kp_links`
--
ALTER TABLE `kp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `kp_options`
--
ALTER TABLE `kp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=221;

--
-- AUTO_INCREMENT для таблицы `kp_postmeta`
--
ALTER TABLE `kp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=212;

--
-- AUTO_INCREMENT для таблицы `kp_posts`
--
ALTER TABLE `kp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT для таблицы `kp_termmeta`
--
ALTER TABLE `kp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `kp_terms`
--
ALTER TABLE `kp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `kp_term_taxonomy`
--
ALTER TABLE `kp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `kp_usermeta`
--
ALTER TABLE `kp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT для таблицы `kp_users`
--
ALTER TABLE `kp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
