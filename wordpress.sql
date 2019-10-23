-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 15, 2019 at 12:35 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wordpress`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Seorang Komentator WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-09-14 22:17:58', '2019-09-14 15:17:58', 'Hai, ini sebuah komentar.\nUntuk mulai memoderasi, mengedit, dan menghapus komentar, silakan kunjungi laman Komentar di dasbor.\nAvatar komentator diambil dari <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wordpress', 'yes'),
(2, 'home', 'http://localhost/wordpress', 'yes'),
(3, 'blogname', 'KILO KOE LOCE RENDA KENJERAN SURABAYA', 'yes'),
(4, 'blogdescription', 'Moto situs Anda bisa diletakkan di sini', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'wempimadu@yahoo.com', 'yes'),
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
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:89:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:59:\"meta-slider-schedule-slides/meta-slider-schedule-slides.php\";i:1;s:25:\"tablepress/tablepress.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '7', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:61:\"C:\\xampp\\htdocs\\wordpress/wp-content/themes/radiate/style.css\";i:2;s:0:\"\";}', 'no'),
(40, 'template', 'radiate', 'yes'),
(41, 'stylesheet', 'radiate', 'yes'),
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
(53, 'show_on_front', 'posts', 'yes'),
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
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'initial_db_version', '44719', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:72:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:22:\"tablepress_edit_tables\";b:1;s:24:\"tablepress_delete_tables\";b:1;s:22:\"tablepress_list_tables\";b:1;s:21:\"tablepress_add_tables\";b:1;s:22:\"tablepress_copy_tables\";b:1;s:24:\"tablepress_import_tables\";b:1;s:24:\"tablepress_export_tables\";b:1;s:32:\"tablepress_access_options_screen\";b:1;s:30:\"tablepress_access_about_screen\";b:1;s:29:\"tablepress_import_tables_wptr\";b:1;s:23:\"tablepress_edit_options\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:43:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:22:\"tablepress_edit_tables\";b:1;s:24:\"tablepress_delete_tables\";b:1;s:22:\"tablepress_list_tables\";b:1;s:21:\"tablepress_add_tables\";b:1;s:22:\"tablepress_copy_tables\";b:1;s:24:\"tablepress_import_tables\";b:1;s:24:\"tablepress_export_tables\";b:1;s:32:\"tablepress_access_options_screen\";b:1;s:30:\"tablepress_access_about_screen\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:19:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:22:\"tablepress_edit_tables\";b:1;s:24:\"tablepress_delete_tables\";b:1;s:22:\"tablepress_list_tables\";b:1;s:21:\"tablepress_add_tables\";b:1;s:22:\"tablepress_copy_tables\";b:1;s:24:\"tablepress_import_tables\";b:1;s:24:\"tablepress_export_tables\";b:1;s:32:\"tablepress_access_options_screen\";b:1;s:30:\"tablepress_access_about_screen\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'WPLANG', 'id_ID', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:7:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";i:6;s:13:\"media_video-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'cron', 'a:5:{i:1570979880;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1570979882;a:4:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1570980000;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1570980542;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(104, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_video', 'a:2:{i:2;a:11:{s:7:\"preload\";s:8:\"metadata\";s:4:\"loop\";b:0;s:7:\"content\";s:0:\"\";s:3:\"mp4\";s:0:\"\";s:3:\"m4v\";s:0:\"\";s:4:\"webm\";s:0:\"\";s:3:\"ogv\";s:0:\"\";s:3:\"flv\";s:0:\"\";s:13:\"attachment_id\";i:0;s:3:\"url\";s:0:\"\";s:5:\"title\";s:12:\"DESA WONTONG\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'recovery_keys', 'a:0:{}', 'yes'),
(115, 'theme_mods_twentynineteen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1568474689;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(131, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:19:\"wempimadu@yahoo.com\";s:7:\"version\";s:5:\"5.2.3\";s:9:\"timestamp\";i:1568474312;}', 'no'),
(134, 'can_compress_scripts', '1', 'no'),
(154, 'current_theme', 'Radiate', 'yes'),
(155, 'theme_mods_radiate', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:29:\"radiate_responsive_menu_style\";i:1;}', 'yes'),
(156, 'theme_switched', '', 'yes'),
(157, 'radiate_admin_notice_welcome', '1', 'yes'),
(167, 'category_children', 'a:0:{}', 'yes'),
(170, 'recently_activated', 'a:0:{}', 'yes'),
(174, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.3.zip\";s:6:\"locale\";s:5:\"id_ID\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.2.3-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.3\";s:7:\"version\";s:5:\"5.2.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1570969040;s:15:\"version_checked\";s:5:\"5.2.3\";s:12:\"translations\";a:0:{}}', 'no'),
(176, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1570969038;s:7:\"checked\";a:4:{s:7:\"radiate\";s:5:\"1.3.1\";s:14:\"twentynineteen\";s:3:\"1.4\";s:15:\"twentyseventeen\";s:3:\"2.2\";s:13:\"twentysixteen\";s:3:\"2.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(177, 'tablepress_plugin_options', '{\"plugin_options_db_version\":38,\"table_scheme_db_version\":3,\"prev_tablepress_version\":\"0\",\"tablepress_version\":\"1.9.2\",\"first_activation\":1568500932,\"message_plugin_update\":false,\"message_donation_nag\":true,\"use_custom_css\":true,\"use_custom_css_file\":true,\"custom_css\":\"\",\"custom_css_minified\":\"\",\"custom_css_version\":0}', 'yes'),
(180, 'tablepress_tables', '{\"last_id\":2,\"table_post\":{\"1\":17,\"2\":22}}', 'yes'),
(189, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(266, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1570969037;s:7:\"checked\";a:4:{s:19:\"akismet/akismet.php\";s:5:\"4.1.2\";s:9:\"hello.php\";s:5:\"1.7.2\";s:59:\"meta-slider-schedule-slides/meta-slider-schedule-slides.php\";s:5:\"1.0.4\";s:25:\"tablepress/tablepress.php\";s:5:\"1.9.2\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:4:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}s:59:\"meta-slider-schedule-slides/meta-slider-schedule-slides.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:41:\"w.org/plugins/meta-slider-schedule-slides\";s:4:\"slug\";s:27:\"meta-slider-schedule-slides\";s:6:\"plugin\";s:59:\"meta-slider-schedule-slides/meta-slider-schedule-slides.php\";s:11:\"new_version\";s:5:\"1.0.4\";s:3:\"url\";s:58:\"https://wordpress.org/plugins/meta-slider-schedule-slides/\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/plugin/meta-slider-schedule-slides.1.0.4.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:80:\"https://ps.w.org/meta-slider-schedule-slides/assets/icon-256x256.png?rev=1562480\";s:2:\"1x\";s:72:\"https://ps.w.org/meta-slider-schedule-slides/assets/icon.svg?rev=1562480\";s:3:\"svg\";s:72:\"https://ps.w.org/meta-slider-schedule-slides/assets/icon.svg?rev=1562480\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:82:\"https://ps.w.org/meta-slider-schedule-slides/assets/banner-772x250.png?rev=1562480\";}s:11:\"banners_rtl\";a:0:{}}s:25:\"tablepress/tablepress.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:24:\"w.org/plugins/tablepress\";s:4:\"slug\";s:10:\"tablepress\";s:6:\"plugin\";s:25:\"tablepress/tablepress.php\";s:11:\"new_version\";s:5:\"1.9.2\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/tablepress/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/plugin/tablepress.1.9.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/tablepress/assets/icon-256x256.png?rev=1064192\";s:2:\"1x\";s:63:\"https://ps.w.org/tablepress/assets/icon-128x128.png?rev=1064192\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/tablepress/assets/banner-1544x500.png?rev=1275767\";s:2:\"1x\";s:65:\"https://ps.w.org/tablepress/assets/banner-772x250.png?rev=1275767\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/tablepress/assets/banner-1544x500-rtl.png?rev=1275767\";s:2:\"1x\";s:69:\"https://ps.w.org/tablepress/assets/banner-772x250-rtl.png?rev=1275767\";}}}}', 'no'),
(281, '_site_transient_timeout_theme_roots', '1570970838', 'no'),
(282, '_site_transient_theme_roots', 'a:4:{s:7:\"radiate\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(283, '_transient_timeout_dash_v2_be061a787773cc7f8c0b12037a967a37', '1571012270', 'no'),
(284, '_transient_dash_v2_be061a787773cc7f8c0b12037a967a37', '<div class=\"rss-widget\"><p><strong>Masalah RSS:</strong> WP HTTP Error: cURL error 6: Could not resolve host: wordpress.org</p></div><div class=\"rss-widget\"><p><strong>Masalah RSS:</strong> WP HTTP Error: cURL error 6: Could not resolve host: planet.wordpress.org</p></div>', 'no'),
(288, 'new_admin_email', 'wempimadu@yahoo.com', 'yes'),
(319, '_transient_is_multi_author', '0', 'yes'),
(320, '_transient_all_the_cool_cats', '1', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_menu_item_type', 'custom'),
(4, 5, '_menu_item_menu_item_parent', '0'),
(5, 5, '_menu_item_object_id', '5'),
(6, 5, '_menu_item_object', 'custom'),
(7, 5, '_menu_item_target', ''),
(8, 5, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(9, 5, '_menu_item_xfn', ''),
(10, 5, '_menu_item_url', 'http://localhost/wordpress/'),
(11, 5, '_menu_item_orphaned', '1568474776'),
(12, 6, '_menu_item_type', 'post_type'),
(13, 6, '_menu_item_menu_item_parent', '0'),
(14, 6, '_menu_item_object_id', '2'),
(15, 6, '_menu_item_object', 'page'),
(16, 6, '_menu_item_target', ''),
(17, 6, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(18, 6, '_menu_item_xfn', ''),
(19, 6, '_menu_item_url', ''),
(20, 6, '_menu_item_orphaned', '1568474777'),
(21, 7, '_edit_lock', '1568475367:1'),
(22, 8, '_wp_attached_file', '2019/09/cunca1.jpg'),
(23, 8, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:420;s:6:\"height\";i:223;s:4:\"file\";s:18:\"2019/09/cunca1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"cunca1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"cunca1-300x159.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:159;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(28, 11, '_menu_item_type', 'custom'),
(29, 11, '_menu_item_menu_item_parent', '0'),
(30, 11, '_menu_item_object_id', '11'),
(31, 11, '_menu_item_object', 'custom'),
(32, 11, '_menu_item_target', ''),
(33, 11, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(34, 11, '_menu_item_xfn', ''),
(35, 11, '_menu_item_url', 'http://localhost/wordpress/'),
(36, 11, '_menu_item_orphaned', '1568475642'),
(37, 12, '_menu_item_type', 'post_type'),
(38, 12, '_menu_item_menu_item_parent', '0'),
(39, 12, '_menu_item_object_id', '2'),
(40, 12, '_menu_item_object', 'page'),
(41, 12, '_menu_item_target', ''),
(42, 12, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(43, 12, '_menu_item_xfn', ''),
(44, 12, '_menu_item_url', ''),
(45, 12, '_menu_item_orphaned', '1568475643'),
(46, 13, '_menu_item_type', 'custom'),
(47, 13, '_menu_item_menu_item_parent', '0'),
(48, 13, '_menu_item_object_id', '13'),
(49, 13, '_menu_item_object', 'custom'),
(50, 13, '_menu_item_target', ''),
(51, 13, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(52, 13, '_menu_item_xfn', ''),
(53, 13, '_menu_item_url', 'http://localhost/wordpress/'),
(54, 13, '_menu_item_orphaned', '1568475768'),
(55, 14, '_menu_item_type', 'post_type'),
(56, 14, '_menu_item_menu_item_parent', '0'),
(57, 14, '_menu_item_object_id', '2'),
(58, 14, '_menu_item_object', 'page'),
(59, 14, '_menu_item_target', ''),
(60, 14, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(61, 14, '_menu_item_xfn', ''),
(62, 14, '_menu_item_url', ''),
(63, 14, '_menu_item_orphaned', '1568475768'),
(64, 15, '_menu_item_type', 'custom'),
(65, 15, '_menu_item_menu_item_parent', '0'),
(66, 15, '_menu_item_object_id', '15'),
(67, 15, '_menu_item_object', 'custom'),
(68, 15, '_menu_item_target', ''),
(69, 15, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(70, 15, '_menu_item_xfn', ''),
(71, 15, '_menu_item_url', 'http://localhost/wordpress/'),
(72, 15, '_menu_item_orphaned', '1568475837'),
(73, 16, '_menu_item_type', 'post_type'),
(74, 16, '_menu_item_menu_item_parent', '0'),
(75, 16, '_menu_item_object_id', '2'),
(76, 16, '_menu_item_object', 'page'),
(77, 16, '_menu_item_target', ''),
(78, 16, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(79, 16, '_menu_item_xfn', ''),
(80, 16, '_menu_item_url', ''),
(81, 16, '_menu_item_orphaned', '1568475837'),
(82, 17, '_tablepress_table_options', '{\"last_editor\":1,\"table_head\":true,\"table_foot\":false,\"alternating_row_colors\":true,\"row_hover\":true,\"print_name\":false,\"print_name_position\":\"above\",\"print_description\":false,\"print_description_position\":\"below\",\"extra_css_classes\":\"\",\"use_datatables\":true,\"datatables_sort\":true,\"datatables_filter\":true,\"datatables_paginate\":true,\"datatables_lengthchange\":true,\"datatables_paginate_entries\":10,\"datatables_info\":true,\"datatables_scrollx\":false,\"datatables_custom_commands\":\"\"}'),
(83, 17, '_tablepress_table_visibility', '{\"rows\":[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],\"columns\":[1,1,1,1,1,1,1,1,1,1]}'),
(84, 19, '_menu_item_type', 'custom'),
(85, 19, '_menu_item_menu_item_parent', '0'),
(86, 19, '_menu_item_object_id', '19'),
(87, 19, '_menu_item_object', 'custom'),
(88, 19, '_menu_item_target', ''),
(89, 19, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(90, 19, '_menu_item_xfn', ''),
(91, 19, '_menu_item_url', 'http://localhost/wordpress/'),
(92, 19, '_menu_item_orphaned', '1568476263'),
(93, 20, '_menu_item_type', 'post_type'),
(94, 20, '_menu_item_menu_item_parent', '0'),
(95, 20, '_menu_item_object_id', '2'),
(96, 20, '_menu_item_object', 'page'),
(97, 20, '_menu_item_target', ''),
(98, 20, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(99, 20, '_menu_item_xfn', ''),
(100, 20, '_menu_item_url', ''),
(101, 20, '_menu_item_orphaned', '1568476264'),
(103, 22, '_tablepress_table_options', '{\"last_editor\":1,\"table_head\":true,\"table_foot\":true,\"alternating_row_colors\":true,\"row_hover\":true,\"print_name\":true,\"print_name_position\":\"above\",\"print_description\":true,\"print_description_position\":\"below\",\"extra_css_classes\":\"\",\"use_datatables\":true,\"datatables_sort\":true,\"datatables_filter\":true,\"datatables_paginate\":true,\"datatables_lengthchange\":true,\"datatables_paginate_entries\":10,\"datatables_info\":true,\"datatables_scrollx\":false,\"datatables_custom_commands\":\"\"}'),
(104, 22, '_tablepress_table_visibility', '{\"rows\":[1,1,1,1,1,1,1],\"columns\":[1,1,1,1,1,1,1]}'),
(106, 25, '_edit_lock', '1568477490:1'),
(107, 26, '_edit_lock', '1568478344:1'),
(110, 28, '_menu_item_type', 'custom'),
(111, 28, '_menu_item_menu_item_parent', '46'),
(112, 28, '_menu_item_object_id', '28'),
(113, 28, '_menu_item_object', 'custom'),
(114, 28, '_menu_item_target', ''),
(115, 28, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(116, 28, '_menu_item_xfn', ''),
(117, 28, '_menu_item_url', 'http://localhost/wordpress/'),
(154, 2, '_wp_trash_meta_status', 'publish'),
(155, 2, '_wp_trash_meta_time', '1568535346'),
(156, 2, '_wp_desired_post_slug', 'laman-contoh'),
(157, 1, '_wp_trash_meta_status', 'publish'),
(158, 1, '_wp_trash_meta_time', '1568535377'),
(159, 1, '_wp_desired_post_slug', 'halo-dunia'),
(160, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(161, 25, '_wp_trash_meta_status', 'draft'),
(162, 25, '_wp_trash_meta_time', '1568535404'),
(163, 25, '_wp_desired_post_slug', ''),
(164, 26, '_wp_trash_meta_status', 'publish'),
(165, 26, '_wp_trash_meta_time', '1568535457'),
(166, 26, '_wp_desired_post_slug', 'data-kilo-koe'),
(167, 7, '_wp_trash_meta_status', 'publish'),
(168, 7, '_wp_trash_meta_time', '1568535463'),
(169, 7, '_wp_desired_post_slug', 'destinasi-di-rahong-utaracunca-lega'),
(170, 36, '_edit_lock', '1568536145:1'),
(172, 37, '_customize_changeset_uuid', '48735ff0-a31c-4e07-94f9-e7b15110043d'),
(174, 38, '_customize_changeset_uuid', '48735ff0-a31c-4e07-94f9-e7b15110043d'),
(176, 39, '_customize_changeset_uuid', '48735ff0-a31c-4e07-94f9-e7b15110043d'),
(178, 40, '_customize_changeset_uuid', '48735ff0-a31c-4e07-94f9-e7b15110043d'),
(180, 41, '_customize_changeset_uuid', '48735ff0-a31c-4e07-94f9-e7b15110043d'),
(182, 42, '_customize_changeset_uuid', '48735ff0-a31c-4e07-94f9-e7b15110043d'),
(184, 43, '_customize_changeset_uuid', '48735ff0-a31c-4e07-94f9-e7b15110043d'),
(186, 44, '_customize_changeset_uuid', '48735ff0-a31c-4e07-94f9-e7b15110043d'),
(188, 45, '_customize_changeset_uuid', '48735ff0-a31c-4e07-94f9-e7b15110043d'),
(189, 46, '_menu_item_type', 'post_type'),
(190, 46, '_menu_item_menu_item_parent', '0'),
(191, 46, '_menu_item_object_id', '39'),
(192, 46, '_menu_item_object', 'page'),
(193, 46, '_menu_item_target', ''),
(194, 46, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(195, 46, '_menu_item_xfn', ''),
(196, 46, '_menu_item_url', ''),
(197, 56, '_menu_item_type', 'post_type'),
(198, 56, '_menu_item_menu_item_parent', '0'),
(199, 56, '_menu_item_object_id', '41'),
(200, 56, '_menu_item_object', 'page'),
(201, 56, '_menu_item_target', ''),
(202, 56, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(203, 56, '_menu_item_xfn', ''),
(204, 56, '_menu_item_url', ''),
(205, 57, '_menu_item_type', 'post_type'),
(206, 57, '_menu_item_menu_item_parent', '0'),
(207, 57, '_menu_item_object_id', '37'),
(208, 57, '_menu_item_object', 'page'),
(209, 57, '_menu_item_target', ''),
(210, 57, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(211, 57, '_menu_item_xfn', ''),
(212, 57, '_menu_item_url', ''),
(213, 58, '_menu_item_type', 'post_type'),
(214, 58, '_menu_item_menu_item_parent', '46'),
(215, 58, '_menu_item_object_id', '38'),
(216, 58, '_menu_item_object', 'page'),
(217, 58, '_menu_item_target', ''),
(218, 58, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(219, 58, '_menu_item_xfn', ''),
(220, 58, '_menu_item_url', ''),
(221, 59, '_menu_item_type', 'post_type'),
(222, 59, '_menu_item_menu_item_parent', '0'),
(223, 59, '_menu_item_object_id', '40'),
(224, 59, '_menu_item_object', 'page'),
(225, 59, '_menu_item_target', ''),
(226, 59, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(227, 59, '_menu_item_xfn', ''),
(228, 59, '_menu_item_url', ''),
(229, 60, '_menu_item_type', 'post_type'),
(230, 60, '_menu_item_menu_item_parent', '46'),
(231, 60, '_menu_item_object_id', '42'),
(232, 60, '_menu_item_object', 'page'),
(233, 60, '_menu_item_target', ''),
(234, 60, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(235, 60, '_menu_item_xfn', ''),
(236, 60, '_menu_item_url', ''),
(237, 61, '_menu_item_type', 'post_type'),
(238, 61, '_menu_item_menu_item_parent', '56'),
(239, 61, '_menu_item_object_id', '43'),
(240, 61, '_menu_item_object', 'page'),
(241, 61, '_menu_item_target', ''),
(242, 61, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(243, 61, '_menu_item_xfn', ''),
(244, 61, '_menu_item_url', ''),
(261, 36, '_wp_trash_meta_status', 'publish'),
(262, 36, '_wp_trash_meta_time', '1568536182'),
(265, 37, '_edit_lock', '1570969323:1'),
(266, 67, '_edit_lock', '1568536724:1'),
(269, 41, '_edit_lock', '1570969824:1'),
(271, 70, '_customize_changeset_uuid', 'a1d91758-4072-4eec-8770-34cebf5fd63f'),
(273, 71, '_customize_changeset_uuid', 'a1d91758-4072-4eec-8770-34cebf5fd63f'),
(275, 72, '_customize_changeset_uuid', 'a1d91758-4072-4eec-8770-34cebf5fd63f'),
(277, 73, '_customize_changeset_uuid', 'a1d91758-4072-4eec-8770-34cebf5fd63f'),
(279, 74, '_customize_changeset_uuid', 'a1d91758-4072-4eec-8770-34cebf5fd63f'),
(280, 75, '_edit_lock', '1568537261:1'),
(282, 76, '_customize_changeset_uuid', 'a1d91758-4072-4eec-8770-34cebf5fd63f'),
(307, 86, '_menu_item_type', 'post_type'),
(308, 86, '_menu_item_menu_item_parent', '57'),
(309, 86, '_menu_item_object_id', '73'),
(310, 86, '_menu_item_object', 'page'),
(311, 86, '_menu_item_target', ''),
(312, 86, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(313, 86, '_menu_item_xfn', ''),
(314, 86, '_menu_item_url', ''),
(315, 87, '_menu_item_type', 'post_type'),
(316, 87, '_menu_item_menu_item_parent', '57'),
(317, 87, '_menu_item_object_id', '74'),
(318, 87, '_menu_item_object', 'page'),
(319, 87, '_menu_item_target', ''),
(320, 87, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(321, 87, '_menu_item_xfn', ''),
(322, 87, '_menu_item_url', ''),
(323, 88, '_menu_item_type', 'post_type'),
(324, 88, '_menu_item_menu_item_parent', '57'),
(325, 88, '_menu_item_object_id', '76'),
(326, 88, '_menu_item_object', 'page'),
(327, 88, '_menu_item_target', ''),
(328, 88, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(329, 88, '_menu_item_xfn', ''),
(330, 88, '_menu_item_url', ''),
(331, 75, '_wp_trash_meta_status', 'publish'),
(332, 75, '_wp_trash_meta_time', '1568537297'),
(333, 89, '_edit_lock', '1568537441:1'),
(334, 89, '_wp_trash_meta_status', 'publish'),
(335, 89, '_wp_trash_meta_time', '1568537466'),
(336, 90, '_wp_trash_meta_status', 'publish'),
(337, 90, '_wp_trash_meta_time', '1568538899'),
(338, 92, '_edit_lock', '1569563718:1'),
(339, 37, '_edit_last', '1'),
(340, 74, '_edit_lock', '1570969147:1'),
(341, 45, '_wp_trash_meta_status', 'publish'),
(342, 45, '_wp_trash_meta_time', '1570969322'),
(343, 45, '_wp_desired_post_slug', 'geografis'),
(344, 76, '_wp_trash_meta_status', 'publish'),
(345, 76, '_wp_trash_meta_time', '1570969330'),
(346, 76, '_wp_desired_post_slug', 'jumlah-pegawai'),
(347, 70, '_wp_trash_meta_status', 'publish'),
(348, 70, '_wp_trash_meta_time', '1570969387'),
(349, 70, '_wp_desired_post_slug', 'rt-1'),
(350, 73, '_edit_lock', '1570975901:1'),
(351, 96, '_edit_lock', '1570970211:1'),
(354, 98, '_edit_lock', '1570970223:1'),
(355, 92, '_wp_trash_meta_status', 'publish'),
(356, 92, '_wp_trash_meta_time', '1570970374'),
(357, 92, '_wp_desired_post_slug', 'krisss'),
(358, 67, '_wp_trash_meta_status', 'publish'),
(359, 67, '_wp_trash_meta_time', '1570970379'),
(360, 67, '_wp_desired_post_slug', 'rencana-proyek-yang-akan-datang'),
(361, 39, '_edit_lock', '1570975646:1'),
(362, 99, '_wp_attached_file', '2019/10/wotolll.jpeg'),
(363, 99, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:771;s:4:\"file\";s:20:\"2019/10/wotolll.jpeg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"wotolll-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"wotolll-300x181.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:181;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"wotolll-768x463.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:463;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"wotolll-1024x617.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:617;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"featured-image-medium\";a:4:{s:4:\"file\";s:20:\"wotolll-768x350.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(364, 43, '_edit_lock', '1570975417:1'),
(365, 103, '_wp_attached_file', '2019/10/W.jpeg'),
(366, 103, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:260;s:6:\"height\";i:194;s:4:\"file\";s:14:\"2019/10/W.jpeg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"W-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(367, 112, '_edit_lock', '1570975655:1'),
(370, 116, '_edit_lock', '1570976193:1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-09-14 22:17:58', '2019-09-14 15:17:58', '<!-- wp:paragraph -->\n<p>Selamat datang di WordPress. Ini adalah pos pertama Anda. Edit atau hapus pos ini, lalu mulailah menulis!</p>\n<!-- /wp:paragraph -->', 'Halo dunia!', '', 'trash', 'open', 'open', '', 'halo-dunia__trashed', '', '', '2019-09-15 15:16:17', '2019-09-15 08:16:17', '', 0, 'http://localhost/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2019-09-14 22:17:58', '2019-09-14 15:17:58', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/wordpress/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Laman Contoh', '', 'trash', 'closed', 'open', '', 'laman-contoh__trashed', '', '', '2019-09-15 15:15:46', '2019-09-15 08:15:46', '', 0, 'http://localhost/wordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-09-14 22:17:58', '2019-09-14 15:17:58', '<!-- wp:heading --><h2>Siapa kami</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Alamat situs web kami adalah: http://localhost/wordpress.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Data pribadi apa yang kami kumpulkan dan mengapa kami mengumpulkannya</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Komentar</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Saat pengunjung meninggalkan komentar pada situs, kita mengumpulkan data yang ditampilkan pada form komentar, alamat IP pengunjung dan user agent browser untuk membantu pendeteksian spam.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>String anonim yang dibuat dari alamat email Anda (juga disebut hash) dapat diberikan ke layanan Gravatar untuk melihat apakah Anda menggunakannya. Kebijakan privasi layanan Gravatar tersedia di sini: https://automattic.com/privacy/. Setelah persetujuan atas komentar Anda, gambar profil Anda dapat dilihat oleh publik dalam konteks komentar Anda.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Jika Anda mengunggah gambar ke situs web, Anda harus menghindari mengunggah gambar dengan data lokasi tertanam (GPS EXIF) yang disertakan. Pengunjung ke situs web dapat mengunduh dan mengekstrak data lokasi apa pun dari gambar di situs web.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Formulir Kontak</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Jika Anda meninggalkan komentar di situs kami, Anda dapat memilih untuk menyimpan nama, alamat email, dan situs web Anda dalam cookie. Ini untuk kenyamanan Anda sehingga Anda tidak perlu mengisi detail Anda lagi ketika Anda meninggalkan komentar lain. Cookie ini akan bertahan selama satu tahun.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Saat Anda log masuk, kami akan menyiapkan beberapa cookie untuk menyimpan informasi log masuk Anda dan tampilan yang Anda pilih. Cookie log masuk berlaku selama dua hari, dan cookie pengaturan tampilan berlaku selama satu tahun. Jika Anda memilih &quot;Ingatkan Saya&quot;, log masuk anda akan bertahan selama dua minggu. Jika Anda log keluar dari akun, cookie log masuk akan dihapus.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Jika Anda menyunting atau menerbitkan artikel, cookie tambahan akan disimpan di browser Anda. Cookie ini tidak menyertakan data pribadi dan hanya menunjukkan ID posting dari artikel yang baru saja Anda sunting. Kadaluwarsa setelah 1 hari.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Konten yang disematkan dari situs web lain</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Artikel-artikel di dalam situs ini dapat menyertakan konten terembed (seperti video, gambar, artikel, dll). Konten terembed dari situs web lain akan berlaku sama dengan pengunjung yang mengunjungi situs web lain.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Situs-situs web ini dapat mengumpulkan data tentang Anda, menggunakan cookies, menanamkan pelacak dari pihak ketiga, dan memonitor interaksi Anda dengan muatan tertanam, termasuk menggunakannya untuk melacak interaksi Anda jika Anda memiliki sebuah akun dan masuk ke dalam situs web tersebut.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analitik</h3><!-- /wp:heading --><!-- wp:heading --><h2>Dengan siapa kami membagi data Anda</h2><!-- /wp:heading --><!-- wp:heading --><h2>Berapa lama kami menyimpan data Anda</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Jika Anda meninggalkan komentar, komentar dan metadatanya dipertahankan tanpa batas. Ini agar kami dapat mengenali dan menyetujui komentar tindak lanjut secara otomatis dan tidak menahannya dalam antrean moderasi.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Untuk pengguna yang mendaftar pada website kami (jika ada), kami juga menyimpan informasi pribadi yang mereka berikan dalam profil pengguna mereka. Semua pengguna dapat melihat, mengedit, atau menghapus informasi pribadi mereka kapan saja (kecuali mereka tidak dapat mengubah nama pengguna mereka). Administrator situs juga dapat melihat dan mengedit informasi tersebut.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Hak apa yang Anda miliki atas data ANda</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Jika anda mempunyai akun di situs ini, atau telah meninggalkan komentar, anda dapat meminta untuk mendapat data personal dalam file export dari kami, termasuk data yang anda berikan kepada kami. Anda juga dapat meminta kami menghapus data personal mengenai anda. Ini tidak termasuk data yang wajib kami simpan untuk keperluan administratif, hukum, atau keamanan.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Ke mana kami kirim data Anda</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Komentar pengunjung dapat diperiksa melalui layanan deteksi spam otomatis.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Informasi kontak Anda</h2><!-- /wp:heading --><!-- wp:heading --><h2>Informasi tambahan</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Bagaimana kami melindungi data Anda</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Apa prosedur kebocoran data yang kami miliki</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Pihak ketiga mana saja data yang kami terima berasal</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Apa pengambilan keputusan otomatis dan/atau profil yang kami lakukan dengan data pengguna</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Persyaratan pengungkapan regulasi industri</h3><!-- /wp:heading -->', 'Kebijakan Privasi', '', 'draft', 'closed', 'open', '', 'kebijakan-privasi', '', '', '2019-09-14 22:17:58', '2019-09-14 15:17:58', '', 0, 'http://localhost/wordpress/?page_id=3', 0, 'page', '', 0),
(5, 1, '2019-09-14 22:26:14', '0000-00-00 00:00:00', '', 'Beranda', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-09-14 22:26:14', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=5', 1, 'nav_menu_item', '', 0),
(6, 1, '2019-09-14 22:26:16', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-09-14 22:26:16', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=6', 1, 'nav_menu_item', '', 0),
(7, 1, '2019-09-14 22:31:34', '2019-09-14 15:31:34', '<!-- wp:gallery {\"ids\":[8]} -->\n<ul class=\"wp-block-gallery columns-1 is-cropped\"><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/wordpress/wp-content/uploads/2019/09/cunca1.jpg\" alt=\"\" data-id=\"8\" data-link=\"http://localhost/wordpress/2019/09/14/destinasi-di-rahong-utaracunca-lega/cunca1/\" class=\"wp-image-8\"/><figcaption>air terjun yang bertingkat, tidak kala bagus dengan wisata lainya, wisata ini belom di publikasikan oleh pemerintah setempat, karena masih ragu, dengan posisi area yang sangat jauh dari desa</figcaption></figure></li></ul>\n<!-- /wp:gallery -->', 'DESTINASI DI RAHONG UTARA,\"CUNCA LEGA', '', 'trash', 'open', 'open', '', 'destinasi-di-rahong-utaracunca-lega__trashed', '', '', '2019-09-15 15:17:43', '2019-09-15 08:17:43', '', 0, 'http://localhost/wordpress/?p=7', 0, 'post', '', 0),
(8, 1, '2019-09-14 22:29:55', '2019-09-14 15:29:55', '', 'cunca1', 'air terjun yang bertingkat, tidak kala bagus dengan wisata lainya, wisata ini belom di publikasikan oleh pemerintah setempat, karena masih ragu, dengan posisi area yang sangat jauh dari desa', 'inherit', 'open', 'closed', '', 'cunca1', '', '', '2019-09-14 22:35:42', '2019-09-14 15:35:42', '', 7, 'http://localhost/wordpress/wp-content/uploads/2019/09/cunca1.jpg', 0, 'attachment', 'image/jpeg', 0),
(9, 1, '2019-09-14 22:31:34', '2019-09-14 15:31:34', '<!-- wp:gallery {\"ids\":[8]} -->\n<ul class=\"wp-block-gallery columns-1 is-cropped\"><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/wordpress/wp-content/uploads/2019/09/cunca1.jpg\" alt=\"\" data-id=\"8\" data-link=\"http://localhost/wordpress/?attachment_id=8\" class=\"wp-image-8\"/></figure></li></ul>\n<!-- /wp:gallery -->', 'DESTINASI DI RAHONG UTARA,\"CUNCA LEGA', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2019-09-14 22:31:34', '2019-09-14 15:31:34', '', 7, 'http://localhost/wordpress/2019/09/14/7-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2019-09-14 22:35:50', '2019-09-14 15:35:50', '<!-- wp:gallery {\"ids\":[8]} -->\n<ul class=\"wp-block-gallery columns-1 is-cropped\"><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/wordpress/wp-content/uploads/2019/09/cunca1.jpg\" alt=\"\" data-id=\"8\" data-link=\"http://localhost/wordpress/2019/09/14/destinasi-di-rahong-utaracunca-lega/cunca1/\" class=\"wp-image-8\"/><figcaption>air terjun yang bertingkat, tidak kala bagus dengan wisata lainya, wisata ini belom di publikasikan oleh pemerintah setempat, karena masih ragu, dengan posisi area yang sangat jauh dari desa</figcaption></figure></li></ul>\n<!-- /wp:gallery -->', 'DESTINASI DI RAHONG UTARA,\"CUNCA LEGA', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2019-09-14 22:35:50', '2019-09-14 15:35:50', '', 7, 'http://localhost/wordpress/2019/09/14/7-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2019-09-14 22:40:41', '0000-00-00 00:00:00', '', 'Beranda', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-09-14 22:40:41', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=11', 1, 'nav_menu_item', '', 0),
(12, 1, '2019-09-14 22:40:42', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-09-14 22:40:42', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=12', 1, 'nav_menu_item', '', 0),
(13, 1, '2019-09-14 22:42:47', '0000-00-00 00:00:00', '', 'Beranda', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-09-14 22:42:47', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=13', 1, 'nav_menu_item', '', 0),
(14, 1, '2019-09-14 22:42:48', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-09-14 22:42:48', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=14', 1, 'nav_menu_item', '', 0),
(15, 1, '2019-09-14 22:43:56', '0000-00-00 00:00:00', '', 'Beranda', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-09-14 22:43:56', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=15', 1, 'nav_menu_item', '', 0),
(16, 1, '2019-09-14 22:43:57', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-09-14 22:43:57', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=16', 1, 'nav_menu_item', '', 0),
(17, 1, '2019-09-14 22:47:32', '2019-09-14 15:47:32', '[[\"no \",\"NAMA\",\"ALAMATA ASAL\",\"DOMISILI\",\"STATUS\",\"NO HP\",\"TANDA TANGAN\",\"\",\"\",\" \"],[\"1\",\"wempy\",\"dimpong, Rahut\",\"jln. Memet sastrowirio no 1\",\"kawin\",\"85231065372\",\"1\\u2026\",\"\",\"\",\"\"],[\"2\",\"Leonardus\",\"Beokina \",\"jln.tempurejo\",\"kawin\",\"\",\"\",\"2\\u2026\\u2026\",\"\",\"\"],[\"3\",\"V\",\"kaweng\",\"keputih\",\"kawin\",\"\",\"3\\u2026\\u2026.\",\"\",\"\",\"\"],[\"4\",\"Benyamin Jaggur\",\"Karot\",\"kalilom no 5\",\"kawin\",\"85234480648\",\"\",\"4\\u2026\\u2026\\u2026\\u2026.\",\"\",\"\"],[\"5\",\"Gabriel apung\",\"copu/ruteng\",\"mulyosary\",\"belom kawin\",\"81331832859\",\"5\\u2026\\u2026\\u2026\\u2026..\",\"\",\"\",\"\"],[\"6\",\"Nikodemus Randy\",\"Cibal lampis\",\"Kalilom timur\",\"belom kawin\",\"82331139963\",\"\",\"6\",\"\",\"\"],[\"7\",\"Paskalis B\",\"Kende, satarmese\",\"Lebak Jaya\",\"Kawin\",\"82330915620\",\"....7\",\"\",\"\",\"\"],[\"8\",\"Paulinus Ombot\",\"Watu cie\",\"Laguna\",\"Kawin\",\"81337223007\",\"\",\"8\",\"\",\"\"],[\"9\",\"Narsisius Mulyady\",\"G.Tenda\",\"suterejo\",\"b.kawin\",\"85331493190\",\"9\",\"\",\"\",\"\"],[\"10\",\"Ardianus Raisan\",\"Mebelar\",\"Labansari\",\"Kawin\",\"85235917441\",\"\",\"10\",\"\",\"\"],[\"11\",\"JECK\",\"Momol\",\"labansari\",\"kawin\",\"81330116386\",\"11\",\"\",\"\",\"\"],[\"12\",\"Domi\",\"?\",\"labansari\",\"b.kawin\",\"82351420151\",\"\",\"12\",\"\",\"\"],[\"13\",\"Remi\",\"pagal\",\"Bulak Rukem\",\"kawin\",\"81232531341\",\"13\",\"\",\"\",\"\"],[\"14\",\"Nansi\",\"Rentung\",\"Lebak timur\",\"B.kawin\",\"81340048811\",\"\",\"14\",\"\",\"\"],[\"15\",\"Michael\",\"Pacar\",\"Kalijudan\",\"kawin\",\"81358573625\",\"15\",\"\",\"\",\"\"],[\"16\",\"Nduk\",\"cancar\",\"kalijudan\",\"kawin\",\"82301675879\",\"\",\"16\",\"\",\"\"],[\"17\",\"Selly\",\"wudy\",\"kalijudan\",\"b.kawin\",\"81808383571\",\"17\",\"\",\"\",\"\"],[\"18\",\"Marsy\",\"Wudy\",\"kalijudan\",\"B..kawin\",\"81928527508\",\"\",\"18\",\"\",\"\"],[\"19\",\"Elvish\",\"Munda Kotakomba\",\"Perak\",\"belom kawin\",\"81233255551\",\"19\",\"\",\"\",\"\"],[\"20\",\"Ino\",\"Munda Kotakomba\",\"Perak\",\"belom kawin\",\"81239152586\",\"\",\"20\",\"\",\"\"],[\"21\",\"Dergo\",\"Tilir Borong\",\"Labansari\",\"belom kawin\",\"81235587788\",\"21\",\"\",\"\",\"\"],[\"22\",\"jefry\",\"kotakomba\",\"Kenjeran\",\"Kawin\",\"81230715804\",\"\",\"22\",\"\",\"\"],[\"23\",\"Jhonatan\",\"Kisol,kotakomba\",\"Kenjeran\",\"belom kawin\",\"85231329181\",\"23\",\"\",\"\",\"\"],[\"24\",\"Devetus\",\"kotakomba\",\"Kenjeran\",\"belom kawin\",\"82248190554\",\"\",\"24\",\"\",\"\"],[\"25\",\"Mus\",\"Racang Welak\",\"kalilom\",\"kawin\",\"\",\"25\",\"\",\"\",\"\"],[\"26\",\"bapa ciko\",\"deru,Mukun\",\"pantai kenjeran\",\"kawin\",\"82139449550\",\"\",\"26\",\"\",\"\"],[\"27\",\"Sius \",\"Ntaur\",\"l.indah Utara\",\"kawin\",\"81336559448\",\"27\",\"\",\"\",\"\"],[\"28\",\"Salva\",\"Ranggi\",\"Laguna\",\"belom kawin\",\"81232600914\",\"\",\"28\",\"\",\"\"],[\"29\",\"Rino\",\"Reo \",\"kalijudan\",\"belom kawin\",\"877081134870\",\"29\",\"\",\"\",\"\"],[\"30\",\"Herman\",\"Borong\",\"Kalijudan\",\"belom kawin\",\"82197630803\",\"\",\"30\",\"\",\"\"],[\"31\",\"Martin\",\"Reo \",\"kalijudan\",\"kawin\",\"81234455233\",\"31\",\"\",\"\",\"\"],[\"32\",\"Aventus\",\"sewar\",\"kenjeran\",\"belom kawin\",\"82234690485\",\"\",\"32\",\"\",\"\"],[\"\",\"Yulnus\",\"surabaya\",\"Kenjeran\",\"nikah\",\"8235612578\",\"33\",\"\",\"\",\"\"]]', 'data klokoe.xlsx', 'data klokoe.xlsx', 'publish', 'closed', 'closed', '', 'data-klokoe-xlsx', '', '', '2019-09-14 22:49:29', '2019-09-14 15:49:29', '', 0, 'http://localhost/wordpress/?post_type=tablepress_table&#038;p=17', 0, 'tablepress_table', 'application/json', 0),
(18, 1, '2019-09-14 22:47:47', '2019-09-14 15:47:47', '[[\"no \",\"NAMA\",\"ALAMATA ASAL\",\"DOMISILI\",\"STATUS\",\"NO HP\",\"TANDA TANGAN\",\"\",\"\",\" \"],[\"1\",\"wempy\",\"dimpong, Rahut\",\"jln. Memet sastrowirio no 1\",\"kawin\",\"85231065372\",\"1\\u2026\",\"\",\"\",\"\"],[\"2\",\"Leonardus\",\"Beokina \",\"jln.tempurejo\",\"kawin\",\"\",\"\",\"2\\u2026\\u2026\",\"\",\"\"],[\"3\",\"V\",\"kaweng\",\"keputih\",\"kawin\",\"\",\"3\\u2026\\u2026.\",\"\",\"\",\"\"],[\"4\",\"Benyamin Jaggur\",\"Karot\",\"kalilom no 5\",\"kawin\",\"85234480648\",\"\",\"4\\u2026\\u2026\\u2026\\u2026.\",\"\",\"\"],[\"5\",\"Gabriel apung\",\"copu/ruteng\",\"mulyosary\",\"belom kawin\",\"81331832859\",\"5\\u2026\\u2026\\u2026\\u2026..\",\"\",\"\",\"\"],[\"6\",\"Nikodemus Randy\",\"Cibal lampis\",\"Kalilom timur\",\"belom kawin\",\"82331139963\",\"\",\"6\",\"\",\"\"],[\"7\",\"Paskalis B\",\"Kende, satarmese\",\"Lebak Jaya\",\"Kawin\",\"82330915620\",\"....7\",\"\",\"\",\"\"],[\"8\",\"Paulinus Ombot\",\"Watu cie\",\"Laguna\",\"Kawin\",\"81337223007\",\"\",\"8\",\"\",\"\"],[\"9\",\"Narsisius Mulyady\",\"G.Tenda\",\"suterejo\",\"b.kawin\",\"85331493190\",\"9\",\"\",\"\",\"\"],[\"10\",\"Ardianus Raisan\",\"Mebelar\",\"Labansari\",\"Kawin\",\"85235917441\",\"\",\"10\",\"\",\"\"],[\"11\",\"JECK\",\"Momol\",\"labansari\",\"kawin\",\"81330116386\",\"11\",\"\",\"\",\"\"],[\"12\",\"Domi\",\"?\",\"labansari\",\"b.kawin\",\"82351420151\",\"\",\"12\",\"\",\"\"],[\"13\",\"Remi\",\"pagal\",\"Bulak Rukem\",\"kawin\",\"81232531341\",\"13\",\"\",\"\",\"\"],[\"14\",\"Nansi\",\"Rentung\",\"Lebak timur\",\"B.kawin\",\"81340048811\",\"\",\"14\",\"\",\"\"],[\"15\",\"Michael\",\"Pacar\",\"Kalijudan\",\"kawin\",\"81358573625\",\"15\",\"\",\"\",\"\"],[\"16\",\"Nduk\",\"cancar\",\"kalijudan\",\"kawin\",\"82301675879\",\"\",\"16\",\"\",\"\"],[\"17\",\"Selly\",\"wudy\",\"kalijudan\",\"b.kawin\",\"81808383571\",\"17\",\"\",\"\",\"\"],[\"18\",\"Marsy\",\"Wudy\",\"kalijudan\",\"B..kawin\",\"81928527508\",\"\",\"18\",\"\",\"\"],[\"19\",\"Elvish\",\"Munda Kotakomba\",\"Perak\",\"belom kawin\",\"81233255551\",\"19\",\"\",\"\",\"\"],[\"20\",\"Ino\",\"Munda Kotakomba\",\"Perak\",\"belom kawin\",\"81239152586\",\"\",\"20\",\"\",\"\"],[\"21\",\"Dergo\",\"Tilir Borong\",\"Labansari\",\"belom kawin\",\"81235587788\",\"21\",\"\",\"\",\"\"],[\"22\",\"jefry\",\"kotakomba\",\"Kenjeran\",\"Kawin\",\"81230715804\",\"\",\"22\",\"\",\"\"],[\"23\",\"Jhonatan\",\"Kisol,kotakomba\",\"Kenjeran\",\"belom kawin\",\"85231329181\",\"23\",\"\",\"\",\"\"],[\"24\",\"Devetus\",\"kotakomba\",\"Kenjeran\",\"belom kawin\",\"82248190554\",\"\",\"24\",\"\",\"\"],[\"25\",\"Mus\",\"Racang Welak\",\"kalilom\",\"kawin\",\"\",\"25\",\"\",\"\",\"\"],[\"26\",\"bapa ciko\",\"deru,Mukun\",\"pantai kenjeran\",\"kawin\",\"82139449550\",\"\",\"26\",\"\",\"\"],[\"27\",\"Sius \",\"Ntaur\",\"l.indah Utara\",\"kawin\",\"81336559448\",\"27\",\"\",\"\",\"\"],[\"28\",\"Salva\",\"Ranggi\",\"Laguna\",\"belom kawin\",\"81232600914\",\"\",\"28\",\"\",\"\"],[\"29\",\"Rino\",\"Reo \",\"kalijudan\",\"belom kawin\",\"877081134870\",\"29\",\"\",\"\",\"\"],[\"30\",\"Herman\",\"Borong\",\"Kalijudan\",\"belom kawin\",\"82197630803\",\"\",\"30\",\"\",\"\"],[\"31\",\"Martin\",\"Reo \",\"kalijudan\",\"kawin\",\"81234455233\",\"31\",\"\",\"\",\"\"],[\"32\",\"Aventus\",\"sewar\",\"kenjeran\",\"belom kawin\",\"82234690485\",\"\",\"32\",\"\",\"\"],[\"\",\"Yulnus\",\"surabaya\",\"Kenjeran\",\"nikah\",\"8235612578\",\"33\",\"\",\"\",\"\"]]', 'data klokoe.xlsx', 'data klokoe.xlsx', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2019-09-14 22:47:47', '2019-09-14 15:47:47', '', 17, 'http://localhost/wordpress/2019/09/14/17-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2019-09-14 22:51:03', '0000-00-00 00:00:00', '', 'Beranda', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-09-14 22:51:03', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=19', 1, 'nav_menu_item', '', 0),
(20, 1, '2019-09-14 22:51:04', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-09-14 22:51:04', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=20', 1, 'nav_menu_item', '', 0),
(22, 1, '2019-09-14 22:57:57', '2019-09-14 15:57:57', '[[\"paket\",\"harga\",\"bandwich\",\"discount\",\"disk space\",\"nama toko\",\"biaya trnasport\"],[\"karung\",\"rp 39.0000\",\"33930\",\"25%\",\"89790\",\"irian jaya\",\"rp 39.000\"],[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],[\"\",\"\",\"\",\"\",\"\",\"\",\"\"]]', 'perlengkapan yang mau di beli', 'perlenkapan ini adalah untuk kebutuhan desa', 'publish', 'closed', 'closed', '', 'perlengkapan-yang-mau-di-beli', '', '', '2019-09-14 23:03:03', '2019-09-14 16:03:03', '', 0, 'http://localhost/wordpress/?post_type=tablepress_table&#038;p=22', 0, 'tablepress_table', 'application/json', 0),
(23, 1, '2019-09-14 23:02:56', '2019-09-14 16:02:56', '[[\"paket\",\"harga\",\"bandwich\",\"discount\",\"disk space\",\"nama toko\",\"biaya trnasport\"],[\"karung\",\"rp 39.0000\",\"33930\",\"25%\",\"89790\",\"irian jaya\",\"rp 39.000\"],[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],[\"\",\"\",\"\",\"\",\"\",\"\",\"\"]]', 'perlengkapan yang mau di beli', 'perlenkapan ini adalah untuk kebutuhan desa', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2019-09-14 23:02:56', '2019-09-14 16:02:56', '', 22, 'http://localhost/wordpress/2019/09/14/22-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2019-09-15 15:16:44', '2019-09-15 08:16:44', '<!-- wp:table /-->', '', '', 'trash', 'open', 'open', '', '__trashed', '', '', '2019-09-15 15:16:44', '2019-09-15 08:16:44', '', 0, 'http://localhost/wordpress/?p=25', 0, 'post', '', 0),
(26, 1, '2019-09-14 23:26:52', '2019-09-14 16:26:52', '<!-- wp:heading -->\n<h2>DATA KILO KOE</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>[table id=1 /]</p>\n<!-- /wp:paragraph -->', 'DATA KILO KOE', '', 'trash', 'open', 'open', '', 'data-kilo-koe__trashed', '', '', '2019-09-15 15:17:37', '2019-09-15 08:17:37', '', 0, 'http://localhost/wordpress/?p=26', 0, 'post', '', 0),
(27, 1, '2019-09-14 23:26:52', '2019-09-14 16:26:52', '<!-- wp:heading -->\n<h2>DATA KILO KOE</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>[table id=1 /]</p>\n<!-- /wp:paragraph -->', 'DATA KILO KOE', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2019-09-14 23:26:52', '2019-09-14 16:26:52', '', 26, 'http://localhost/wordpress/2019/09/14/26-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2019-09-14 23:29:19', '2019-09-14 16:29:19', '', 'SEJARAH KILO KOE', '', 'publish', 'closed', 'closed', '', 'beranda', '', '', '2019-10-13 19:28:21', '2019-10-13 12:28:21', '', 0, 'http://localhost/wordpress/?p=28', 8, 'nav_menu_item', '', 0),
(33, 1, '2019-09-15 15:15:46', '2019-09-15 08:15:46', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/wordpress/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Laman Contoh', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-09-15 15:15:46', '2019-09-15 08:15:46', '', 2, 'http://localhost/wordpress/2019/09/15/2-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2019-09-15 15:16:17', '2019-09-15 08:16:17', '<!-- wp:paragraph -->\n<p>Selamat datang di WordPress. Ini adalah pos pertama Anda. Edit atau hapus pos ini, lalu mulailah menulis!</p>\n<!-- /wp:paragraph -->', 'Halo dunia!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2019-09-15 15:16:17', '2019-09-15 08:16:17', '', 1, 'http://localhost/wordpress/2019/09/15/1-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2019-09-15 15:16:44', '2019-09-15 08:16:44', '<!-- wp:table /-->', '', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2019-09-15 15:16:44', '2019-09-15 08:16:44', '', 25, 'http://localhost/wordpress/2019/09/15/25-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2019-09-15 15:29:29', '2019-09-15 08:29:29', '{\n    \"nav_menu_item[32]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-09-15 08:21:58\"\n    },\n    \"nav_menu_item[31]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-09-15 08:23:58\"\n    },\n    \"nav_menu_item[28]\": {\n        \"value\": {\n            \"menu_item_parent\": -560488724,\n            \"object_id\": 28,\n            \"object\": \"custom\",\n            \"type\": \"custom\",\n            \"type_label\": \"Tautan Tersuai\",\n            \"title\": \"SEJARAH DESA\",\n            \"url\": \"http://localhost/wordpress/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 2,\n            \"position\": 3,\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-09-15 08:27:58\"\n    },\n    \"nav_menu_item[30]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-09-15 08:21:58\"\n    },\n    \"nav_menu_item[29]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-09-15 08:21:58\"\n    },\n    \"nav_menus_created_posts\": {\n        \"value\": [\n            37,\n            38,\n            39,\n            40,\n            41,\n            42,\n            43,\n            44,\n            45\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-09-15 08:25:58\"\n    },\n    \"nav_menu_item[-1421147703]\": {\n        \"value\": {\n            \"object_id\": 37,\n            \"object\": \"page\",\n            \"menu_item_parent\": -1346909776,\n            \"position\": 6,\n            \"type\": \"post_type\",\n            \"title\": \"DATA DESA\",\n            \"url\": \"http://localhost/wordpress/?page_id=37\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"DATA DESA\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"Laman\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-09-15 08:29:29\"\n    },\n    \"nav_menu_item[-721980452]\": {\n        \"value\": {\n            \"object_id\": 38,\n            \"object\": \"page\",\n            \"menu_item_parent\": -560488724,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"FOTO\",\n            \"url\": \"http://localhost/wordpress/?page_id=38\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"FOTO\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"Laman\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-09-15 08:27:58\"\n    },\n    \"nav_menu_item[-560488724]\": {\n        \"value\": {\n            \"object_id\": 39,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"post_type\",\n            \"title\": \"PROFIL\",\n            \"url\": \"http://localhost/wordpress/?page_id=39\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"PROFIL\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"Laman\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-09-15 08:27:58\"\n    },\n    \"nav_menu_item[-2121719415]\": {\n        \"value\": {\n            \"object_id\": 40,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 4,\n            \"type\": \"post_type\",\n            \"title\": \"BERITA\",\n            \"url\": \"http://localhost/wordpress/?page_id=40\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"BERITA\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"Laman\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-09-15 08:27:58\"\n    },\n    \"nav_menu_item[-1346909776]\": {\n        \"value\": {\n            \"object_id\": 41,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 5,\n            \"type\": \"post_type\",\n            \"title\": \"AGENDA\",\n            \"url\": \"http://localhost/wordpress/?page_id=41\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"AGENDA\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"Laman\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-09-15 08:27:58\"\n    },\n    \"nav_menu_item[-1180478020]\": {\n        \"value\": {\n            \"object_id\": 42,\n            \"object\": \"page\",\n            \"menu_item_parent\": 30,\n            \"position\": 10,\n            \"type\": \"post_type\",\n            \"title\": \"KONTAK KAMI\",\n            \"url\": \"http://localhost/wordpress/?page_id=42\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"KONTAK KAMI\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"Laman\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-09-15 08:26:58\"\n    },\n    \"nav_menu_item[-1685469680]\": {\n        \"value\": {\n            \"object_id\": 43,\n            \"object\": \"page\",\n            \"menu_item_parent\": -1346909776,\n            \"position\": 7,\n            \"type\": \"post_type\",\n            \"title\": \"RENCANA PROYEK\",\n            \"url\": \"http://localhost/wordpress/?page_id=43\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"RENCANA PROYEK\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"Laman\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-09-15 08:29:29\"\n    },\n    \"nav_menu_item[-151073804]\": {\n        \"value\": {\n            \"object_id\": 44,\n            \"object\": \"page\",\n            \"menu_item_parent\": -1346909776,\n            \"position\": 8,\n            \"type\": \"post_type\",\n            \"title\": \"WISATA\",\n            \"url\": \"http://localhost/wordpress/?page_id=44\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"WISATA\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"Laman\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-09-15 08:27:58\"\n    },\n    \"nav_menu_item[-747536090]\": {\n        \"value\": {\n            \"object_id\": 45,\n            \"object\": \"page\",\n            \"menu_item_parent\": -1346909776,\n            \"position\": 9,\n            \"type\": \"post_type\",\n            \"title\": \"GEOGRAFIS\",\n            \"url\": \"http://localhost/wordpress/?page_id=45\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"GEOGRAFIS\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"Laman\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-09-15 08:27:58\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '48735ff0-a31c-4e07-94f9-e7b15110043d', '', '', '2019-09-15 15:29:29', '2019-09-15 08:29:29', '', 0, 'http://localhost/wordpress/?p=36', 0, 'customize_changeset', '', 0),
(37, 1, '2019-09-15 15:29:33', '2019-09-15 08:29:33', '<!-- wp:shortcode -->\n[table id=1 /]\n<!-- /wp:shortcode -->', 'DATA  KILO KOE', '', 'publish', 'closed', 'closed', '', 'data-desa', '', '', '2019-10-13 19:21:13', '2019-10-13 12:21:13', '', 0, 'http://localhost/wordpress/?page_id=37', 0, 'page', '', 0),
(38, 1, '2019-09-15 15:29:33', '2019-09-15 08:29:33', '', 'FOTO', '', 'publish', 'closed', 'closed', '', 'foto', '', '', '2019-09-15 15:29:33', '2019-09-15 08:29:33', '', 0, 'http://localhost/wordpress/?page_id=38', 0, 'page', '', 0),
(39, 1, '2019-09-15 15:29:34', '2019-09-15 08:29:34', '<!-- wp:image {\"id\":99} -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/wordpress/wp-content/uploads/2019/10/wotolll-1024x617.jpeg\" alt=\"\" class=\"wp-image-99\"/></figure>\n<!-- /wp:image -->', 'PROFIL', '', 'publish', 'closed', 'closed', '', 'profil', '', '', '2019-10-13 19:42:23', '2019-10-13 12:42:23', '', 0, 'http://localhost/wordpress/?page_id=39', 0, 'page', '', 0),
(40, 1, '2019-09-15 15:29:35', '2019-09-15 08:29:35', '', 'BERITA', '', 'publish', 'closed', 'closed', '', 'berita', '', '', '2019-09-15 15:29:35', '2019-09-15 08:29:35', '', 0, 'http://localhost/wordpress/?page_id=40', 0, 'page', '', 0),
(41, 1, '2019-09-15 15:29:35', '2019-09-15 08:29:35', '<!-- wp:list -->\n<ul><li>hari senin buka untuk bersama</li><li>hari selasa terima pengaduan masyarakat</li><li>hari rabu urus data desa</li><li>hari kamis terima tamu</li><li>hari jumaat membersihkan desa</li><li>hari sabtu menerima laporan proyek</li><li>hari minggu tutup</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'AGENDA', '', 'publish', 'closed', 'closed', '', 'agenda', '', '', '2019-09-15 15:44:04', '2019-09-15 08:44:04', '', 0, 'http://localhost/wordpress/?page_id=41', 0, 'page', '', 0),
(42, 1, '2019-09-15 15:29:35', '2019-09-15 08:29:35', '', 'KONTAK KAMI', '', 'publish', 'closed', 'closed', '', 'kontak-kami', '', '', '2019-09-15 15:29:35', '2019-09-15 08:29:35', '', 0, 'http://localhost/wordpress/?page_id=42', 0, 'page', '', 0),
(43, 1, '2019-09-15 15:29:35', '2019-09-15 08:29:35', '<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>MINGGU BERIKUTNYA  HARI MINGGU  TGL :  06 NOVEMBER 2019</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>dimohon untuk datang tepat waktu yang sudah di tentukan bersama</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p style=\"text-align:center\">akan merencanakan kerja bakti sosial tgl : 9 november 2019  (tgl merah)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>TEMPAT : GEREJA ST. MARINUS YOHANSE KENJERAN  WAKTU : 09 . 00 SAMAPI SELESAI</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>akan ada sanksi bagi yang tidak hadir   denda  Rp 25.000,</li><li> jadi dimohon untuk hadir semua , kita sepakati bersama</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>arisan seperti biasa yang sudah di rencanakan dari awal</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'AGENDA RENCANA KEDEPAN', '', 'publish', 'closed', 'closed', '', 'rencana-proyek', '', '', '2019-10-13 20:34:43', '2019-10-13 13:34:43', '', 0, 'http://localhost/wordpress/?page_id=43', 0, 'page', '', 0),
(44, 1, '2019-09-15 15:29:36', '2019-09-15 08:29:36', '', 'WISATA', '', 'publish', 'closed', 'closed', '', 'wisata', '', '', '2019-09-15 15:29:36', '2019-09-15 08:29:36', '', 0, 'http://localhost/wordpress/?page_id=44', 0, 'page', '', 0),
(45, 1, '2019-09-15 15:29:36', '2019-09-15 08:29:36', '', 'GEOGRAFIS', '', 'trash', 'closed', 'closed', '', 'geografis__trashed', '', '', '2019-10-13 19:22:02', '2019-10-13 12:22:02', '', 0, 'http://localhost/wordpress/?page_id=45', 0, 'page', '', 0),
(46, 1, '2019-09-15 15:29:31', '2019-09-15 08:29:31', ' ', '', '', 'publish', 'closed', 'closed', '', '46', '', '', '2019-10-13 19:28:20', '2019-10-13 12:28:20', '', 0, 'http://localhost/wordpress/2019/09/15/46/', 5, 'nav_menu_item', '', 0),
(47, 1, '2019-09-15 15:29:33', '2019-09-15 08:29:33', '', 'DATA DESA', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2019-09-15 15:29:33', '2019-09-15 08:29:33', '', 37, 'http://localhost/wordpress/2019/09/15/37-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2019-09-15 15:29:33', '2019-09-15 08:29:33', '', 'FOTO', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2019-09-15 15:29:33', '2019-09-15 08:29:33', '', 38, 'http://localhost/wordpress/2019/09/15/38-revision-v1/', 0, 'revision', '', 0),
(49, 1, '2019-09-15 15:29:34', '2019-09-15 08:29:34', '', 'PROFIL', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2019-09-15 15:29:34', '2019-09-15 08:29:34', '', 39, 'http://localhost/wordpress/2019/09/15/39-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2019-09-15 15:29:35', '2019-09-15 08:29:35', '', 'BERITA', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2019-09-15 15:29:35', '2019-09-15 08:29:35', '', 40, 'http://localhost/wordpress/2019/09/15/40-revision-v1/', 0, 'revision', '', 0),
(51, 1, '2019-09-15 15:29:35', '2019-09-15 08:29:35', '', 'AGENDA', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2019-09-15 15:29:35', '2019-09-15 08:29:35', '', 41, 'http://localhost/wordpress/2019/09/15/41-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2019-09-15 15:29:35', '2019-09-15 08:29:35', '', 'KONTAK KAMI', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2019-09-15 15:29:35', '2019-09-15 08:29:35', '', 42, 'http://localhost/wordpress/2019/09/15/42-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2019-09-15 15:29:35', '2019-09-15 08:29:35', '', 'RENCANA PROYEK', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2019-09-15 15:29:35', '2019-09-15 08:29:35', '', 43, 'http://localhost/wordpress/2019/09/15/43-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2019-09-15 15:29:36', '2019-09-15 08:29:36', '', 'WISATA', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2019-09-15 15:29:36', '2019-09-15 08:29:36', '', 44, 'http://localhost/wordpress/2019/09/15/44-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2019-09-15 15:29:36', '2019-09-15 08:29:36', '', 'GEOGRAFIS', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2019-09-15 15:29:36', '2019-09-15 08:29:36', '', 45, 'http://localhost/wordpress/2019/09/15/45-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2019-09-15 15:29:36', '2019-09-15 08:29:36', ' ', '', '', 'publish', 'closed', 'closed', '', '56', '', '', '2019-10-13 19:28:21', '2019-10-13 12:28:21', '', 0, 'http://localhost/wordpress/2019/09/15/56/', 10, 'nav_menu_item', '', 0),
(57, 1, '2019-09-15 15:29:37', '2019-09-15 08:29:37', ' ', '', '', 'publish', 'closed', 'closed', '', '57', '', '', '2019-10-13 19:28:20', '2019-10-13 12:28:20', '', 0, 'http://localhost/wordpress/2019/09/15/57/', 1, 'nav_menu_item', '', 0),
(58, 1, '2019-09-15 15:29:37', '2019-09-15 08:29:37', ' ', '', '', 'publish', 'closed', 'closed', '', '58', '', '', '2019-10-13 19:28:21', '2019-10-13 12:28:21', '', 0, 'http://localhost/wordpress/2019/09/15/58/', 7, 'nav_menu_item', '', 0),
(59, 1, '2019-09-15 15:29:38', '2019-09-15 08:29:38', ' ', '', '', 'publish', 'closed', 'closed', '', '59', '', '', '2019-10-13 19:28:21', '2019-10-13 12:28:21', '', 0, 'http://localhost/wordpress/2019/09/15/59/', 9, 'nav_menu_item', '', 0),
(60, 1, '2019-09-15 15:29:39', '2019-09-15 08:29:39', ' ', '', '', 'publish', 'closed', 'closed', '', '60', '', '', '2019-10-13 19:28:21', '2019-10-13 12:28:21', '', 0, 'http://localhost/wordpress/2019/09/15/60/', 6, 'nav_menu_item', '', 0),
(61, 1, '2019-09-15 15:29:40', '2019-09-15 08:29:40', '', 'RENCANA KEDEPAN', '', 'publish', 'closed', 'closed', '', '61', '', '', '2019-10-13 19:28:21', '2019-10-13 12:28:21', '', 0, 'http://localhost/wordpress/2019/09/15/61/', 11, 'nav_menu_item', '', 0),
(66, 1, '2019-09-15 15:34:37', '2019-09-15 08:34:37', '<!-- wp:shortcode -->\n[table id=1 /]\n<!-- /wp:shortcode -->', 'DATA DESA', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2019-09-15 15:34:37', '2019-09-15 08:34:37', '', 37, 'http://localhost/wordpress/2019/09/15/37-revision-v1/', 0, 'revision', '', 0),
(67, 1, '2019-09-15 15:41:04', '2019-09-15 08:41:04', '<!-- wp:paragraph -->\n<p>Saya sebagai kepala desa wontong  sudah menandatangani surat pengesahan yang sudah di sepakati oleh masyarakat , utnuk mulai rencana proyek yang kita jalani,</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list {\"ordered\":true} -->\n<ol><li>surat ini sudah ada himbauan untuk masyarakat bahawa kita semua harus siap siap tenaga untuk kerja sama dalam proyek ini , supaya cepat terealisasikan, </li><li>untuk pemudah yang saya banggakan mari kita gotong  royong untuk membangun desa secara bersama</li><li>.<img class=\"wp-image-8\" style=\"width: 150px;\" src=\"http://localhost/wordpress/wp-content/uploads/2019/09/cunca1.jpg\" alt=\"\"></li></ol>\n<!-- /wp:list -->', 'RENCANA PROYEK YANG AKAN DATANG', '', 'trash', 'open', 'open', '', 'rencana-proyek-yang-akan-datang__trashed', '', '', '2019-10-13 19:39:40', '2019-10-13 12:39:40', '', 0, 'http://localhost/wordpress/?p=67', 0, 'post', '', 0),
(68, 1, '2019-09-15 15:41:04', '2019-09-15 08:41:04', '<!-- wp:paragraph -->\n<p>Saya sebagai kepala desa wontong  sudah menandatangani surat pengesahan yang sudah di sepakati oleh masyarakat , utnuk mulai rencana proyek yang kita jalani,</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list {\"ordered\":true} -->\n<ol><li>surat ini sudah ada himbauan untuk masyarakat bahawa kita semua harus siap siap tenaga untuk kerja sama dalam proyek ini , supaya cepat terealisasikan, </li><li>untuk pemudah yang saya banggakan mari kita gotong  royong untuk membangun desa secara bersama</li><li>.<img class=\"wp-image-8\" style=\"width: 150px;\" src=\"http://localhost/wordpress/wp-content/uploads/2019/09/cunca1.jpg\" alt=\"\"></li></ol>\n<!-- /wp:list -->', 'RENCANA PROYEK YANG AKAN DATANG', '', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2019-09-15 15:41:04', '2019-09-15 08:41:04', '', 67, 'http://localhost/wordpress/2019/09/15/67-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2019-09-15 15:44:04', '2019-09-15 08:44:04', '<!-- wp:list -->\n<ul><li>hari senin buka untuk bersama</li><li>hari selasa terima pengaduan masyarakat</li><li>hari rabu urus data desa</li><li>hari kamis terima tamu</li><li>hari jumaat membersihkan desa</li><li>hari sabtu menerima laporan proyek</li><li>hari minggu tutup</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'AGENDA', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2019-09-15 15:44:04', '2019-09-15 08:44:04', '', 41, 'http://localhost/wordpress/2019/09/15/41-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2019-09-15 15:48:09', '2019-09-15 08:48:09', '', 'RT 1', '', 'trash', 'closed', 'closed', '', 'rt-1__trashed', '', '', '2019-10-13 19:23:07', '2019-10-13 12:23:07', '', 0, 'http://localhost/wordpress/?page_id=70', 0, 'page', '', 0),
(71, 1, '2019-09-15 15:48:09', '2019-09-15 08:48:09', '', 'RT 2', '', 'publish', 'closed', 'closed', '', 'rt-2', '', '', '2019-09-15 15:48:09', '2019-09-15 08:48:09', '', 0, 'http://localhost/wordpress/?page_id=71', 0, 'page', '', 0),
(72, 1, '2019-09-15 15:48:10', '2019-09-15 08:48:10', '', 'RT 3', '', 'publish', 'closed', 'closed', '', 'rt-3', '', '', '2019-09-15 15:48:10', '2019-09-15 08:48:10', '', 0, 'http://localhost/wordpress/?page_id=72', 0, 'page', '', 0),
(73, 1, '2019-09-15 15:48:10', '2019-09-15 08:48:10', '<!-- wp:paragraph -->\n<p>khas yang terkumpul Rp: 750.000</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>terbilang tuju ratus lima puluh ribu</p>\n<!-- /wp:paragraph -->', 'KHAS kilo koe yang terkumpul', '', 'publish', 'closed', 'closed', '', 'khas-desa', '', '', '2019-10-13 21:11:41', '2019-10-13 14:11:41', '', 0, 'http://localhost/wordpress/?page_id=73', 0, 'page', '', 0),
(74, 1, '2019-09-15 15:48:11', '2019-09-15 08:48:11', '', 'DATA PENDUDUK BARU MENIKAH', '', 'publish', 'closed', 'closed', '', 'data-penduduk-baru-menikah', '', '', '2019-09-15 15:48:11', '2019-09-15 08:48:11', '', 0, 'http://localhost/wordpress/?page_id=74', 0, 'page', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(75, 1, '2019-09-15 15:48:09', '2019-09-15 08:48:09', '{\n    \"nav_menus_created_posts\": {\n        \"value\": [\n            70,\n            71,\n            72,\n            73,\n            74,\n            76\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-09-15 08:48:09\"\n    },\n    \"nav_menu_item[-1938400386]\": {\n        \"value\": {\n            \"object_id\": 70,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 6,\n            \"type\": \"post_type\",\n            \"title\": \"RT 1\",\n            \"url\": \"http://localhost/wordpress/?page_id=70\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"RT 1\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"Laman\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-09-15 08:47:35\"\n    },\n    \"nav_menu_item[-883895504]\": {\n        \"value\": {\n            \"object_id\": 71,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 7,\n            \"type\": \"post_type\",\n            \"title\": \"RT 2\",\n            \"url\": \"http://localhost/wordpress/?page_id=71\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"RT 2\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"Laman\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-09-15 08:47:35\"\n    },\n    \"nav_menu_item[-1703437350]\": {\n        \"value\": {\n            \"object_id\": 72,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 8,\n            \"type\": \"post_type\",\n            \"title\": \"RT 3\",\n            \"url\": \"http://localhost/wordpress/?page_id=72\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"RT 3\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"Laman\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-09-15 08:47:35\"\n    },\n    \"nav_menu_item[-27069585]\": {\n        \"value\": {\n            \"object_id\": 73,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 9,\n            \"type\": \"post_type\",\n            \"title\": \"KHAS DESA\",\n            \"url\": \"http://localhost/wordpress/?page_id=73\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"KHAS DESA\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"Laman\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-09-15 08:47:35\"\n    },\n    \"nav_menu_item[-1340167420]\": {\n        \"value\": {\n            \"object_id\": 74,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 10,\n            \"type\": \"post_type\",\n            \"title\": \"DATA PENDUDUK BARU MENIKAH\",\n            \"url\": \"http://localhost/wordpress/?page_id=74\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"DATA PENDUDUK BARU MENIKAH\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"Laman\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-09-15 08:47:35\"\n    },\n    \"nav_menu_item[-712140136]\": {\n        \"value\": {\n            \"object_id\": 76,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 11,\n            \"type\": \"post_type\",\n            \"title\": \"JUMLAH PEGAWAI\",\n            \"url\": \"http://localhost/wordpress/?page_id=76\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"JUMLAH PEGAWAI\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"Laman\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-09-15 08:48:09\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'a1d91758-4072-4eec-8770-34cebf5fd63f', '', '', '2019-09-15 15:48:09', '2019-09-15 08:48:09', '', 0, 'http://localhost/wordpress/?p=75', 0, 'customize_changeset', '', 0),
(76, 1, '2019-09-15 15:48:11', '2019-09-15 08:48:11', '', 'JUMLAH PEGAWAI', '', 'trash', 'closed', 'closed', '', 'jumlah-pegawai__trashed', '', '', '2019-10-13 19:22:10', '2019-10-13 12:22:10', '', 0, 'http://localhost/wordpress/?page_id=76', 0, 'page', '', 0),
(77, 1, '2019-09-15 15:48:09', '2019-09-15 08:48:09', '', 'RT 1', '', 'inherit', 'closed', 'closed', '', '70-revision-v1', '', '', '2019-09-15 15:48:09', '2019-09-15 08:48:09', '', 70, 'http://localhost/wordpress/2019/09/15/70-revision-v1/', 0, 'revision', '', 0),
(78, 1, '2019-09-15 15:48:09', '2019-09-15 08:48:09', '', 'RT 2', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2019-09-15 15:48:09', '2019-09-15 08:48:09', '', 71, 'http://localhost/wordpress/2019/09/15/71-revision-v1/', 0, 'revision', '', 0),
(79, 1, '2019-09-15 15:48:10', '2019-09-15 08:48:10', '', 'RT 3', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2019-09-15 15:48:10', '2019-09-15 08:48:10', '', 72, 'http://localhost/wordpress/2019/09/15/72-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2019-09-15 15:48:10', '2019-09-15 08:48:10', '', 'KHAS DESA', '', 'inherit', 'closed', 'closed', '', '73-revision-v1', '', '', '2019-09-15 15:48:10', '2019-09-15 08:48:10', '', 73, 'http://localhost/wordpress/2019/09/15/73-revision-v1/', 0, 'revision', '', 0),
(81, 1, '2019-09-15 15:48:11', '2019-09-15 08:48:11', '', 'DATA PENDUDUK BARU MENIKAH', '', 'inherit', 'closed', 'closed', '', '74-revision-v1', '', '', '2019-09-15 15:48:11', '2019-09-15 08:48:11', '', 74, 'http://localhost/wordpress/2019/09/15/74-revision-v1/', 0, 'revision', '', 0),
(82, 1, '2019-09-15 15:48:11', '2019-09-15 08:48:11', '', 'JUMLAH PEGAWAI', '', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2019-09-15 15:48:11', '2019-09-15 08:48:11', '', 76, 'http://localhost/wordpress/2019/09/15/76-revision-v1/', 0, 'revision', '', 0),
(86, 1, '2019-09-15 15:48:14', '2019-09-15 08:48:14', '', 'KHAS KILO KOE', '', 'publish', 'closed', 'closed', '', '86', '', '', '2019-10-13 19:28:20', '2019-10-13 12:28:20', '', 0, 'http://localhost/wordpress/2019/09/15/86/', 2, 'nav_menu_item', '', 0),
(87, 1, '2019-09-15 15:48:15', '2019-09-15 08:48:15', '', 'DATA BARU', '', 'publish', 'closed', 'closed', '', '87', '', '', '2019-10-13 19:28:20', '2019-10-13 12:28:20', '', 0, 'http://localhost/wordpress/2019/09/15/87/', 4, 'nav_menu_item', '', 0),
(88, 1, '2019-09-15 15:48:16', '2019-09-15 08:48:16', ' ', '', '', 'publish', 'closed', 'closed', '', '88', '', '', '2019-10-13 19:28:20', '2019-10-13 12:28:20', '', 0, 'http://localhost/wordpress/2019/09/15/88/', 3, 'nav_menu_item', '', 0),
(89, 1, '2019-09-15 15:51:03', '2019-09-15 08:51:03', '{\n    \"nav_menu_item[61]\": {\n        \"value\": {\n            \"menu_item_parent\": 56,\n            \"object_id\": 43,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Laman\",\n            \"url\": \"http://localhost/wordpress/rencana-proyek/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 2,\n            \"position\": 7,\n            \"status\": \"publish\",\n            \"original_title\": \"RENCANA PROYEK\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-09-15 08:51:03\"\n    },\n    \"nav_menu_item[62]\": {\n        \"value\": {\n            \"menu_item_parent\": 56,\n            \"object_id\": 44,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Laman\",\n            \"url\": \"http://localhost/wordpress/wisata/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 2,\n            \"position\": 8,\n            \"status\": \"publish\",\n            \"original_title\": \"WISATA\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-09-15 08:51:03\"\n    },\n    \"nav_menu_item[63]\": {\n        \"value\": {\n            \"menu_item_parent\": 62,\n            \"object_id\": 45,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Laman\",\n            \"url\": \"http://localhost/wordpress/geografis/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 2,\n            \"position\": 9,\n            \"status\": \"publish\",\n            \"original_title\": \"GEOGRAFIS\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-09-15 08:51:03\"\n    },\n    \"nav_menu_item[60]\": {\n        \"value\": {\n            \"menu_item_parent\": 46,\n            \"object_id\": 42,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Laman\",\n            \"url\": \"http://localhost/wordpress/kontak-kami/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 2,\n            \"position\": 2,\n            \"status\": \"publish\",\n            \"original_title\": \"KONTAK KAMI\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-09-15 08:51:03\"\n    },\n    \"nav_menu_item[83]\": {\n        \"value\": {\n            \"object_id\": 70,\n            \"object\": \"page\",\n            \"menu_item_parent\": 57,\n            \"position\": 11,\n            \"type\": \"post_type\",\n            \"title\": \"RT 1\",\n            \"url\": \"http://localhost/wordpress/?page_id=70\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"RT 1\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"Laman\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-09-15 08:50:35\"\n    },\n    \"nav_menu_item[84]\": {\n        \"value\": {\n            \"object_id\": 71,\n            \"object\": \"page\",\n            \"menu_item_parent\": 57,\n            \"position\": 12,\n            \"type\": \"post_type\",\n            \"title\": \"RT 2\",\n            \"url\": \"http://localhost/wordpress/?page_id=71\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"RT 2\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"Laman\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-09-15 08:50:35\"\n    },\n    \"nav_menu_item[85]\": {\n        \"value\": {\n            \"object_id\": 72,\n            \"object\": \"page\",\n            \"menu_item_parent\": 57,\n            \"position\": 13,\n            \"type\": \"post_type\",\n            \"title\": \"RT 3\",\n            \"url\": \"http://localhost/wordpress/?page_id=72\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"RT 3\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"Laman\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-09-15 08:50:35\"\n    },\n    \"nav_menu_item[86]\": {\n        \"value\": {\n            \"object_id\": 73,\n            \"object\": \"page\",\n            \"menu_item_parent\": 57,\n            \"position\": 14,\n            \"type\": \"post_type\",\n            \"title\": \"KHAS DESA\",\n            \"url\": \"http://localhost/wordpress/?page_id=73\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"KHAS DESA\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"Laman\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-09-15 08:50:35\"\n    },\n    \"nav_menu_item[87]\": {\n        \"value\": {\n            \"object_id\": 74,\n            \"object\": \"page\",\n            \"menu_item_parent\": 57,\n            \"position\": 16,\n            \"type\": \"post_type\",\n            \"title\": \"DATA PENDUDUK BARU MENIKAH\",\n            \"url\": \"http://localhost/wordpress/?page_id=74\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"DATA PENDUDUK BARU MENIKAH\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"Laman\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-09-15 08:50:35\"\n    },\n    \"nav_menu_item[88]\": {\n        \"value\": {\n            \"object_id\": 76,\n            \"object\": \"page\",\n            \"menu_item_parent\": 57,\n            \"position\": 15,\n            \"type\": \"post_type\",\n            \"title\": \"JUMLAH PEGAWAI\",\n            \"url\": \"http://localhost/wordpress/?page_id=76\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"JUMLAH PEGAWAI\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"Laman\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-09-15 08:50:35\"\n    },\n    \"nav_menu_item[58]\": {\n        \"value\": {\n            \"menu_item_parent\": 46,\n            \"object_id\": 38,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Laman\",\n            \"url\": \"http://localhost/wordpress/foto/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 2,\n            \"position\": 3,\n            \"status\": \"publish\",\n            \"original_title\": \"FOTO\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-09-15 08:51:03\"\n    },\n    \"nav_menu_item[28]\": {\n        \"value\": {\n            \"menu_item_parent\": 46,\n            \"object_id\": 28,\n            \"object\": \"custom\",\n            \"type\": \"custom\",\n            \"type_label\": \"Tautan Tersuai\",\n            \"title\": \"SEJARAH DESA\",\n            \"url\": \"http://localhost/wordpress/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 2,\n            \"position\": 4,\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-09-15 08:51:03\"\n    },\n    \"nav_menu_item[59]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 40,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Laman\",\n            \"url\": \"http://localhost/wordpress/berita/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 2,\n            \"position\": 5,\n            \"status\": \"publish\",\n            \"original_title\": \"BERITA\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-09-15 08:51:03\"\n    },\n    \"nav_menu_item[56]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 41,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Laman\",\n            \"url\": \"http://localhost/wordpress/agenda/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 2,\n            \"position\": 6,\n            \"status\": \"publish\",\n            \"original_title\": \"AGENDA\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-09-15 08:51:03\"\n    },\n    \"nav_menu_item[57]\": {\n        \"value\": {\n            \"menu_item_parent\": 56,\n            \"object_id\": 37,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Laman\",\n            \"url\": \"http://localhost/wordpress/data-desa/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 2,\n            \"position\": 10,\n            \"status\": \"publish\",\n            \"original_title\": \"DATA DESA\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-09-15 08:50:35\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '3aeb7e56-525f-46ed-b703-b8d97e61c0a3', '', '', '2019-09-15 15:51:03', '2019-09-15 08:51:03', '', 0, 'http://localhost/wordpress/?p=89', 0, 'customize_changeset', '', 0),
(90, 1, '2019-09-15 16:14:59', '2019-09-15 09:14:59', '{\n    \"radiate::radiate_responsive_menu_style\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-09-15 09:14:59\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '6eaac697-b1f1-4277-b1cb-c074f4063acd', '', '', '2019-09-15 16:14:59', '2019-09-15 09:14:59', '', 0, 'http://localhost/wordpress/2019/09/15/6eaac697-b1f1-4277-b1cb-c074f4063acd/', 0, 'customize_changeset', '', 0),
(92, 1, '2019-09-27 12:52:56', '2019-09-27 05:52:56', '<!-- wp:paragraph -->\n<p>kris jualan </p>\n<!-- /wp:paragraph -->', 'krisss', '', 'trash', 'open', 'open', '', 'krisss__trashed', '', '', '2019-10-13 19:39:34', '2019-10-13 12:39:34', '', 0, 'http://localhost/wordpress/?p=92', 0, 'post', '', 0),
(93, 1, '2019-09-27 12:52:56', '2019-09-27 05:52:56', '<!-- wp:paragraph -->\n<p>kris jualan </p>\n<!-- /wp:paragraph -->', 'krisss', '', 'inherit', 'closed', 'closed', '', '92-revision-v1', '', '', '2019-09-27 12:52:56', '2019-09-27 05:52:56', '', 92, 'http://localhost/wordpress/2019/09/27/92-revision-v1/', 0, 'revision', '', 0),
(94, 1, '2019-10-13 19:17:47', '0000-00-00 00:00:00', '', 'Konsep Otomatis', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-10-13 19:17:47', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=94', 0, 'post', '', 0),
(95, 1, '2019-10-13 19:21:13', '2019-10-13 12:21:13', '<!-- wp:shortcode -->\n[table id=1 /]\n<!-- /wp:shortcode -->', 'DATA  KILO KOE', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2019-10-13 19:21:13', '2019-10-13 12:21:13', '', 37, 'http://localhost/wordpress/2019/10/13/37-revision-v1/', 0, 'revision', '', 0),
(96, 1, '2019-10-13 19:38:20', '2019-10-13 12:38:20', '<!-- wp:list -->\n<ul><li>HARI ini adalah hari yang sangat menyenanakna bagi kami semua naggota kilo koe  Loce renda surabaya</li></ul>\n<!-- /wp:list -->', 'PERTEMUAN KE 2 DALAM RANGKA ARISAN KILO KOE LOCE RENDA KENJERAN SURABYA', '', 'publish', 'open', 'open', '', 'pertemuan-ke-2-dalam-rangka-arisan-kilo-koe-loce-renda-kenjeran-surabya', '', '', '2019-10-13 19:38:20', '2019-10-13 12:38:20', '', 0, 'http://localhost/wordpress/?p=96', 0, 'post', '', 0),
(97, 1, '2019-10-13 19:35:30', '2019-10-13 12:35:30', '<!-- wp:list -->\n<ul><li>HARI ini adalah hari yang sangat menyenanakna bagi kami semua naggota kilo koe  Loce renda surabaya</li></ul>\n<!-- /wp:list -->', 'PERTEMUAN KE 2 DALAM RANGKA ARISAN KILO KOE LOCE RENDA KENJERAN SURABYA', '', 'inherit', 'closed', 'closed', '', '96-revision-v1', '', '', '2019-10-13 19:35:30', '2019-10-13 12:35:30', '', 96, 'http://localhost/wordpress/2019/10/13/96-revision-v1/', 0, 'revision', '', 0),
(98, 1, '2019-10-13 19:39:18', '0000-00-00 00:00:00', '', 'Konsep Otomatis', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-10-13 19:39:18', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=98', 0, 'post', '', 0),
(99, 1, '2019-10-13 19:42:10', '2019-10-13 12:42:10', '', 'wotolll', 'profile kilo koe', 'inherit', 'open', 'closed', '', 'wotolll', '', '', '2019-10-13 19:47:47', '2019-10-13 12:47:47', '', 39, 'http://localhost/wordpress/wp-content/uploads/2019/10/wotolll.jpeg', 0, 'attachment', 'image/jpeg', 0),
(100, 1, '2019-10-13 19:42:23', '2019-10-13 12:42:23', '<!-- wp:image {\"id\":99} -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/wordpress/wp-content/uploads/2019/10/wotolll-1024x617.jpeg\" alt=\"\" class=\"wp-image-99\"/></figure>\n<!-- /wp:image -->', 'PROFIL', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2019-10-13 19:42:23', '2019-10-13 12:42:23', '', 39, 'http://localhost/wordpress/2019/10/13/39-revision-v1/', 0, 'revision', '', 0),
(101, 1, '2019-10-13 19:45:16', '2019-10-13 12:45:16', '<!-- wp:paragraph -->\n<p>MINGGU BERIKUTNYA  HARI MINGGU  TGL 06 NOVEMBER 2019</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>dimohon untuk datang tepat waktu yang sudah di tentukan bersama</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'RENCANA KEDEPAN', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2019-10-13 19:45:16', '2019-10-13 12:45:16', '', 43, 'http://localhost/wordpress/2019/10/13/43-revision-v1/', 0, 'revision', '', 0),
(102, 1, '2019-10-13 19:46:08', '2019-10-13 12:46:08', '<!-- wp:paragraph -->\n<p>MINGGU BERIKUTNYA  HARI MINGGU  TGL :  06 NOVEMBER 2019</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>dimohon untuk datang tepat waktu yang sudah di tentukan bersama</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'RENCANA KEDEPAN', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2019-10-13 19:46:08', '2019-10-13 12:46:08', '', 43, 'http://localhost/wordpress/2019/10/13/43-revision-v1/', 0, 'revision', '', 0),
(103, 1, '2019-10-13 19:46:52', '2019-10-13 12:46:52', '', 'W', 'profile kilo koe', 'inherit', 'open', 'closed', '', 'w', '', '', '2019-10-13 19:47:39', '2019-10-13 12:47:39', '', 39, 'http://localhost/wordpress/wp-content/uploads/2019/10/W.jpeg', 0, 'attachment', 'image/jpeg', 0),
(104, 1, '2019-10-13 19:48:47', '2019-10-13 12:48:47', '<!-- wp:image {\"id\":99,\"align\":\"left\"} -->\n<div class=\"wp-block-image\"><figure class=\"alignleft\"><img src=\"http://localhost/wordpress/wp-content/uploads/2019/10/wotolll-1024x617.jpeg\" alt=\"\" class=\"wp-image-99\"/></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:gallery {\"ids\":[103,99]} -->\n<ul class=\"wp-block-gallery columns-2 is-cropped\"><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/wordpress/wp-content/uploads/2019/10/W.jpeg\" alt=\"\" data-id=\"103\" data-link=\"http://localhost/wordpress/profil/w/\" class=\"wp-image-103\"/><figcaption>profile kilo koe</figcaption></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/wordpress/wp-content/uploads/2019/10/wotolll-1024x617.jpeg\" alt=\"\" data-id=\"99\" data-link=\"http://localhost/wordpress/profil/wotolll/\" class=\"wp-image-99\"/><figcaption>profile kilo koe</figcaption></figure></li></ul>\n<!-- /wp:gallery -->', 'PROFIL', '', 'inherit', 'closed', 'closed', '', '39-autosave-v1', '', '', '2019-10-13 19:48:47', '2019-10-13 12:48:47', '', 39, 'http://localhost/wordpress/2019/10/13/39-autosave-v1/', 0, 'revision', '', 0),
(105, 1, '2019-10-13 20:13:32', '2019-10-13 13:13:32', '<!-- wp:paragraph -->\n<p>MINGGU BERIKUTNYA  HARI MINGGU  TGL :  06 NOVEMBER 2019</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>dimohon untuk datang tepat waktu yang sudah di tentukan bersama</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>akan merencanakan kerja bakti sosial tgl : 9 november 2019</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'RENCANA KEDEPAN', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2019-10-13 20:13:32', '2019-10-13 13:13:32', '', 43, 'http://localhost/wordpress/2019/10/13/43-revision-v1/', 0, 'revision', '', 0),
(106, 1, '2019-10-13 20:17:08', '2019-10-13 13:17:08', '<!-- wp:paragraph -->\n<p>MINGGU BERIKUTNYA  HARI MINGGU  TGL :  06 NOVEMBER 2019</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>dimohon untuk datang tepat waktu yang sudah di tentukan bersama</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"left\"} -->\n<p style=\"text-align:left\">akan merencanakan kerja bakti sosial tgl : 9 november 2019 </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>akan ada sanksi bagi yang tidak hadir   denda  Rp 25.000, jadi dimohon untuk hadir semua , kita sepakati bersama</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'RENCANA KEDEPAN', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2019-10-13 20:17:08', '2019-10-13 13:17:08', '', 43, 'http://localhost/wordpress/2019/10/13/43-revision-v1/', 0, 'revision', '', 0),
(107, 1, '2019-10-13 20:18:32', '2019-10-13 13:18:32', '<!-- wp:paragraph -->\n<p>MINGGU BERIKUTNYA  HARI MINGGU  TGL :  06 NOVEMBER 2019</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>dimohon untuk datang tepat waktu yang sudah di tentukan bersama</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"left\"} -->\n<p style=\"text-align:left\">akan merencanakan kerja bakti sosial tgl : 9 november 2019 </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>akan ada sanksi bagi yang tidak hadir   denda  Rp 25.000,</li><li> jadi dimohon untuk hadir semua , kita sepakati bersama</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'RENCANA KEDEPAN', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2019-10-13 20:18:32', '2019-10-13 13:18:32', '', 43, 'http://localhost/wordpress/2019/10/13/43-revision-v1/', 0, 'revision', '', 0),
(108, 1, '2019-10-13 20:20:25', '2019-10-13 13:20:25', '<!-- wp:paragraph -->\n<p>MINGGU BERIKUTNYA  HARI MINGGU  TGL :  06 NOVEMBER 2019</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>dimohon untuk datang tepat waktu yang sudah di tentukan bersama</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"left\"} -->\n<p style=\"text-align:left\">akan merencanakan kerja bakti sosial tgl : 9 november 2019 </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>akan ada sanksi bagi yang tidak hadir   denda  Rp 25.000,</li><li> jadi dimohon untuk hadir semua , kita sepakati bersama</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>arisan seperti biasa yang sudah di rencanakan dari awal</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'RENCANA KEDEPAN', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2019-10-13 20:20:25', '2019-10-13 13:20:25', '', 43, 'http://localhost/wordpress/2019/10/13/43-revision-v1/', 0, 'revision', '', 0),
(109, 1, '2019-10-13 20:21:28', '2019-10-13 13:21:28', '<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>MINGGU BERIKUTNYA  HARI MINGGU  TGL :  06 NOVEMBER 2019</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>dimohon untuk datang tepat waktu yang sudah di tentukan bersama</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"left\"} -->\n<p style=\"text-align:left\">akan merencanakan kerja bakti sosial tgl : 9 november 2019 </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>akan ada sanksi bagi yang tidak hadir   denda  Rp 25.000,</li><li> jadi dimohon untuk hadir semua , kita sepakati bersama</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>arisan seperti biasa yang sudah di rencanakan dari awal</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'AGENDA RENCANA KEDEPAN', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2019-10-13 20:21:28', '2019-10-13 13:21:28', '', 43, 'http://localhost/wordpress/2019/10/13/43-revision-v1/', 0, 'revision', '', 0),
(110, 1, '2019-10-13 20:24:55', '2019-10-13 13:24:55', '<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>MINGGU BERIKUTNYA  HARI MINGGU  TGL :  06 NOVEMBER 2019</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>dimohon untuk datang tepat waktu yang sudah di tentukan bersama</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"left\"} -->\n<p style=\"text-align:left\">akan merencanakan kerja bakti sosial tgl : 9 november 2019  </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>TEMPAT : GEREJA ST. MARINUS YOHANSE KENJERAN  WAKTU : 09 . 00 SAMAPI SELESAI</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>akan ada sanksi bagi yang tidak hadir   denda  Rp 25.000,</li><li> jadi dimohon untuk hadir semua , kita sepakati bersama</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>arisan seperti biasa yang sudah di rencanakan dari awal</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'AGENDA RENCANA KEDEPAN', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2019-10-13 20:24:55', '2019-10-13 13:24:55', '', 43, 'http://localhost/wordpress/2019/10/13/43-revision-v1/', 0, 'revision', '', 0),
(111, 1, '2019-10-13 20:34:43', '2019-10-13 13:34:43', '<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>MINGGU BERIKUTNYA  HARI MINGGU  TGL :  06 NOVEMBER 2019</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>dimohon untuk datang tepat waktu yang sudah di tentukan bersama</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p style=\"text-align:center\">akan merencanakan kerja bakti sosial tgl : 9 november 2019  (tgl merah)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>TEMPAT : GEREJA ST. MARINUS YOHANSE KENJERAN  WAKTU : 09 . 00 SAMAPI SELESAI</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>akan ada sanksi bagi yang tidak hadir   denda  Rp 25.000,</li><li> jadi dimohon untuk hadir semua , kita sepakati bersama</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>arisan seperti biasa yang sudah di rencanakan dari awal</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'AGENDA RENCANA KEDEPAN', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2019-10-13 20:34:43', '2019-10-13 13:34:43', '', 43, 'http://localhost/wordpress/2019/10/13/43-revision-v1/', 0, 'revision', '', 0),
(112, 1, '2019-10-13 21:08:47', '2019-10-13 14:08:47', '<!-- wp:paragraph -->\n<p>selamat bagi yang dapat arisan malam inni semoga bisa di gunakan dengan baik semestinya.</p>\n<!-- /wp:paragraph -->', 'hasil akhir pertemuan malam ini sukses untuk acara arisan', '', 'publish', 'open', 'open', '', 'hasil-akhir-pertemuan-malam-ini-sukses-untuk-acara-arisan', '', '', '2019-10-13 21:08:47', '2019-10-13 14:08:47', '', 0, 'http://localhost/wordpress/?p=112', 0, 'post', '', 0),
(113, 1, '2019-10-13 21:08:47', '2019-10-13 14:08:47', '<!-- wp:paragraph -->\n<p>selamat bagi yang dapat arisan malam inni semoga bisa di gunakan dengan baik semestinya.</p>\n<!-- /wp:paragraph -->', 'hasil akhir pertemuan malam ini sukses untuk acara arisan', '', 'inherit', 'closed', 'closed', '', '112-revision-v1', '', '', '2019-10-13 21:08:47', '2019-10-13 14:08:47', '', 112, 'http://localhost/wordpress/2019/10/13/112-revision-v1/', 0, 'revision', '', 0),
(114, 1, '2019-10-13 21:11:41', '2019-10-13 14:11:41', '<!-- wp:paragraph -->\n<p>khas yang terkumpul Rp: 750.000</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>terbilang tuju ratus lima puluh ribu</p>\n<!-- /wp:paragraph -->', 'KHAS kilo koe yang terkumpul', '', 'inherit', 'closed', 'closed', '', '73-revision-v1', '', '', '2019-10-13 21:11:41', '2019-10-13 14:11:41', '', 73, 'http://localhost/wordpress/2019/10/13/73-revision-v1/', 0, 'revision', '', 0),
(115, 1, '2019-10-13 21:11:46', '2019-10-13 14:11:46', '<!-- wp:paragraph -->\n<p>khas yang terkumpul Rp: 750.000</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>terbilang tuju ratus lima puluh ribu</p>\n<!-- /wp:paragraph -->', 'KHAS kilo koe yang terkumpul', '', 'inherit', 'closed', 'closed', '', '73-autosave-v1', '', '', '2019-10-13 21:11:46', '2019-10-13 14:11:46', '', 73, 'http://localhost/wordpress/2019/10/13/73-autosave-v1/', 0, 'revision', '', 0),
(116, 1, '2019-10-13 21:17:24', '0000-00-00 00:00:00', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Surabaya 30 juli 2019</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lampiran : </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Hal &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;: Ijin pemakaian Ruangan </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Kepada Yth &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;Romo kepala Paroki\nSt. Marinus Yohanes</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>“Salam sejahtera </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sehubungan dengan diadakanya pertemuan keluarga&nbsp; perantau asal manggarai di Surabaya Kenjeran,\nmaka kami selaku panitia mau mengajukan dan memohon kepada Romo paroki &nbsp;St. Marinus Yohanaes&nbsp; agar berkenan meminjamkan Ruangan kepada kami\nagar segala kegiatan ini dapat berjalan dengan Lancar.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Adapun kegiatan pertemuan tersebut akan kami selenggarakan\npada:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Hari/tgl &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :\nMinggu &nbsp;4 Agustus 2019</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Tempat &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :\nGereja St. Marinus Yohanes </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ruangan &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :\nWisma Marinus Yohanes</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>waktu                   :  19.00 setelah misa sore selesai setiap bulan </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Demikian surat permohonan ini kami buat dan atas perhatian\nRomo Paroki tak lupa kami ucapkan terimakasih.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ketua Panitia</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Leonardus Agas</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'proposal', '', 'draft', 'open', 'open', '', '', '', '', '2019-10-13 21:17:24', '2019-10-13 14:17:24', '', 0, 'http://localhost/wordpress/?p=116', 0, 'post', '', 0),
(117, 1, '2019-10-13 21:16:56', '2019-10-13 14:16:56', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Surabaya 30 juli 2019</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lampiran : </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Hal &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;: Ijin pemakaian Ruangan </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Kepada Yth &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;Romo kepala Paroki\nSt. Marinus Yohanes</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>“Salam sejahtera </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sehubungan dengan diadakanya pertemuan keluarga&nbsp; perantau asal manggarai di Surabaya Kenjeran,\nmaka kami selaku panitia mau mengajukan dan memohon kepada Romo paroki &nbsp;St. Marinus Yohanaes&nbsp; agar berkenan meminjamkan Ruangan kepada kami\nagar segala kegiatan ini dapat berjalan dengan Lancar.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Adapun kegiatan pertemuan tersebut akan kami selenggarakan\npada:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Hari/tgl &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :\nMinggu &nbsp;4 Agustus 2019</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Tempat &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :\nGereja St. Marinus Yohanes </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ruangan &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :\nWisma Marinus Yohanes</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>waktu                   :  19.00 setelah misa sore selesai setiap bulan </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Demikian surat permohonan ini kami buat dan atas perhatian\nRomo Paroki tak lupa kami ucapkan terimakasih.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ketua Panitia</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Leonardus Agas</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'proposal', '', 'inherit', 'closed', 'closed', '', '116-revision-v1', '', '', '2019-10-13 21:16:56', '2019-10-13 14:16:56', '', 116, 'http://localhost/wordpress/2019/10/13/116-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Tak Berkategori', 'tak-berkategori', 0),
(2, 'Menu 1', 'menu-1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(7, 1, 0),
(25, 1, 0),
(26, 1, 0),
(28, 2, 0),
(46, 2, 0),
(56, 2, 0),
(57, 2, 0),
(58, 2, 0),
(59, 2, 0),
(60, 2, 0),
(61, 2, 0),
(67, 1, 0),
(86, 2, 0),
(87, 2, 0),
(88, 2, 0),
(92, 1, 0),
(96, 1, 0),
(112, 1, 0),
(116, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2),
(2, 2, 'nav_menu', '', 0, 11);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'desawontong'),
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
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'theme_editor_notice,tp09_edit_drag_drop_sort'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"70b1fb9c82f411111d9688693100b2d9aa06da9cfbc8b7e82bf0e4033913f4cb\";a:4:{s:10:\"expiration\";i:1571141866;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36\";s:5:\"login\";i:1570969066;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '94'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}'),
(20, 1, 'wp_user-settings', 'libraryContent=browse&mfold=o'),
(21, 1, 'wp_user-settings-time', '1569563721'),
(22, 1, 'wp_tablepress_user_options', '{\"user_options_db_version\":38,\"admin_menu_parent_page\":\"middle\",\"message_first_visit\":true}'),
(23, 1, 'managetablepress_listcolumnshidden', 'a:1:{i:0;s:22:\"table_last_modified_by\";}'),
(24, 1, 'closedpostboxes_tablepress_edit', 'a:0:{}'),
(25, 1, 'metaboxhidden_tablepress_edit', 'a:0:{}'),
(26, 1, 'nav_menu_recently_edited', '2');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'desawontong', '$P$BmMWzOCNNtR5nnbfj3OYga5XXB8xOZ1', 'desawontong', 'wempimadu@yahoo.com', '', '2019-09-14 15:17:57', '', 0, 'desawontong');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=321;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=371;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
