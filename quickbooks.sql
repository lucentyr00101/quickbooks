-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 18, 2017 at 05:21 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quickbooks`
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
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2017-11-15 04:07:24', '2017-11-15 04:07:24', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

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
(1, 'siteurl', 'http://localhost/quickbooks/', 'yes'),
(2, 'home', 'http://localhost/quickbooks/', 'yes'),
(3, 'blogname', 'Quickbooks', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'email@email.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
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
(29, 'rewrite_rules', 'a:87:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=5&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:5:{i:0;s:41:\"advanced-custom-fields-pro-master/acf.php\";i:1;s:56:\"advanced-custom-fields-recaptcha-field/acf-recaptcha.php\";i:2;s:14:\"clearcache.php\";i:3;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";i:4;s:35:\"responsive-menu/responsive-menu.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:5:{i:0;s:102:\"/home/weblinuxcpnel/public_html/www.quickbooksplus.ph/wp-content/themes/twentythirteen-child/style.css\";i:1;s:129:\"/home/weblinuxcpnel/public_html/www.quickbooksplus.ph/wp-content/plugins/advanced-custom-fields-recaptcha-field/acf-recaptcha.php\";i:2;s:109:\"/home/weblinuxcpnel/public_html/www.quickbooksplus.ph/wp-content/themes/twentythirteen-child/EmployerPage.php\";i:4;s:103:\"/home/weblinuxcpnel/public_html/www.quickbooksplus.ph/wp-content/themes/twentythirteen-child/footer.php\";i:5;s:103:\"/home/weblinuxcpnel/public_html/www.quickbooksplus.ph/wp-content/themes/twentythirteen-child/header.php\";}', 'no'),
(40, 'template', 'twentythirteen', 'yes'),
(41, 'stylesheet', 'twentythirteen-child', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
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
(78, 'widget_categories', 'a:3:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}i:3;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '5', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:3:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}i:3;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:5:{i:0;s:17:\"recent-comments-3\";i:1;s:13:\"custom_html-2\";i:2;s:7:\"pages-2\";i:3;s:13:\"media_audio-2\";i:4;s:12:\"categories-3\";}s:13:\"array_version\";i:3;}', 'yes'),
(100, 'widget_pages', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:6:\"sortby\";s:10:\"post_title\";s:7:\"exclude\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_media_audio', 'a:2:{i:2;a:8:{s:13:\"attachment_id\";i:0;s:3:\"url\";s:0:\"\";s:5:\"title\";s:0:\"\";s:7:\"preload\";s:4:\"none\";s:3:\"mp3\";s:0:\"\";s:3:\"ogg\";s:0:\"\";s:3:\"m4a\";s:0:\"\";s:3:\"wav\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_custom_html', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:7:\"content\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'cron', 'a:5:{i:1510978881;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1510978903;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1511013643;a:1:{s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1511021245;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}s:7:\"version\";i:2;}', 'yes'),
(109, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1510725302;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(113, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-4.9.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-4.9.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-4.9-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-4.9-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"4.9\";s:7:\"version\";s:3:\"4.9\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1510978651;s:15:\"version_checked\";s:3:\"4.9\";s:12:\"translations\";a:0:{}}', 'no'),
(120, '_site_transient_timeout_browser_2c7afd74200035be5fac3b47741b9a6e', '1511323664', 'no'),
(121, '_site_transient_browser_2c7afd74200035be5fac3b47741b9a6e', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"62.0.3202.89\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(122, 'can_compress_scripts', '1', 'no'),
(148, 'recently_activated', 'a:1:{s:60:\"ACF-auto-generated-value-master/acf-auto_generated_value.php\";i:1510812599;}', 'yes'),
(149, 'acf_version', '5.6.3', 'yes'),
(151, '_transient_timeout_plugin_slugs', '1511062906', 'no'),
(152, '_transient_plugin_slugs', 'a:7:{i:0;s:56:\"advanced-custom-fields-recaptcha-field/acf-recaptcha.php\";i:1;s:41:\"advanced-custom-fields-pro-master/acf.php\";i:2;s:19:\"akismet/akismet.php\";i:3;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";i:4;s:9:\"hello.php\";i:5;s:35:\"responsive-menu/responsive-menu.php\";i:6;s:14:\"clearcache.php\";}', 'no'),
(157, 'current_theme', 'Twenty Thirteen Child', 'yes'),
(158, 'theme_mods_twentythirteen', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:7:{s:7:\"primary\";i:2;s:10:\"other-menu\";i:3;s:13:\"features-menu\";i:3;s:15:\"accountant-menu\";i:4;s:12:\"support-menu\";i:5;s:10:\"about-menu\";i:6;s:12:\"account-menu\";i:7;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1510880353;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}}}}', 'yes'),
(159, 'theme_switched', '', 'yes'),
(160, 'theme_mods_twentythirteen - child', 'a:4:{i:0;b:0;s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:7:{s:7:\"primary\";i:2;s:10:\"other-menu\";i:3;s:13:\"features-menu\";i:3;s:15:\"accountant-menu\";i:4;s:12:\"support-menu\";i:5;s:10:\"about-menu\";i:6;s:12:\"account-menu\";i:7;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1510880349;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}}}}', 'yes'),
(163, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(171, '_site_transient_timeout_browser_cb0f25941c7ee58acd15fece4d84c18b', '1511408822', 'no'),
(172, '_site_transient_browser_cb0f25941c7ee58acd15fece4d84c18b', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"62.0.3202.94\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(195, 'category_children', 'a:0:{}', 'yes'),
(205, 'cptui_new_install', 'false', 'yes'),
(208, 'cptui_post_types', 'a:0:{}', 'yes'),
(214, 'nonce_key', '{yYG$A~%KuDuQX|5R!zM]$,T:=H4ZMkSv5Bk~?yAWgNIW,v=)cHUOU9S*BG;Hv!F', 'no'),
(215, 'nonce_salt', 'ohXsLC/7yDXc9}RU_{b*>5t%$a+)D[Z`Ov-6oRn[@KYL+qasFWtqY5-%9byX}Vbj', 'no'),
(216, 'auth_key', 'Eiy,JzQ#K6m1iNsU1h|k(Mk~_fpz[73aDI6Nw5KmaDf4[??G4%.-Xt/6$/oU#J<#', 'no'),
(217, 'auth_salt', ';w-813#VDUC5,6QpEcZL.Pwbc-<3CZlKJ?a%y[2#RUSYB8Fc{h#kJZ2 V$yFNzq|', 'no'),
(218, 'logged_in_key', 'gI9xH}PaGCn Mae4$$P%c<K^5YHe.ajO2d+A;,!?:qg!Yn|j`u#hsnZ&hLc-P&:;', 'no'),
(219, 'logged_in_salt', 'vgnY,`%j{(A@@uaJg6oT=(UW.!UFEQ2tL%7XzNdIA1}2&;*dqFT(SdV42z4wUL7P', 'no'),
(232, 'theme_mods_twentythirteen-child', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:7:{s:7:\"primary\";i:2;s:10:\"other-menu\";i:3;s:13:\"features-menu\";i:3;s:15:\"accountant-menu\";i:4;s:12:\"support-menu\";i:5;s:10:\"about-menu\";i:6;s:12:\"account-menu\";i:7;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(236, 'WPLANG', '', 'yes'),
(254, 'responsive_menu_version', '3.1.8', 'yes'),
(255, 'responsive_menu_current_page', 'technical', 'yes'),
(270, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(271, '_site_transient_timeout_browser_f4b342427dc93e6e5fd5c14ef1fb74ec', '1511532045', 'no'),
(272, '_site_transient_browser_f4b342427dc93e6e5fd5c14ef1fb74ec', 'a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"57.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:24:\"https://www.firefox.com/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(274, '_site_transient_timeout_available_translations', '1510938049', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(275, '_site_transient_available_translations', 'a:111:{s:2:\"af\";a:8:{s:8:\"language\";s:2:\"af\";s:7:\"version\";s:3:\"4.9\";s:7:\"updated\";s:19:\"2017-11-15 09:52:08\";s:12:\"english_name\";s:9:\"Afrikaans\";s:11:\"native_name\";s:9:\"Afrikaans\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/4.9/af.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"af\";i:2;s:3:\"afr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Gaan voort\";}}s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:3:\"4.9\";s:7:\"updated\";s:19:\"2017-11-16 17:03:45\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/4.9/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:3:\"ary\";a:8:{s:8:\"language\";s:3:\"ary\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-01-26 15:42:35\";s:12:\"english_name\";s:15:\"Moroccan Arabic\";s:11:\"native_name\";s:31:\"العربية المغربية\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.7/ary.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:3;s:3:\"ary\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:2:\"as\";a:8:{s:8:\"language\";s:2:\"as\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-22 18:59:07\";s:12:\"english_name\";s:8:\"Assamese\";s:11:\"native_name\";s:21:\"অসমীয়া\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/as.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"as\";i:2;s:3:\"asm\";i:3;s:3:\"asm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-06 00:09:27\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"Azərbaycan dili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:3:\"azb\";a:8:{s:8:\"language\";s:3:\"azb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-12 20:34:31\";s:12:\"english_name\";s:17:\"South Azerbaijani\";s:11:\"native_name\";s:29:\"گؤنئی آذربایجان\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/azb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:3;s:3:\"azb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:3:\"bel\";a:8:{s:8:\"language\";s:3:\"bel\";s:7:\"version\";s:3:\"4.9\";s:7:\"updated\";s:19:\"2017-11-14 06:19:36\";s:12:\"english_name\";s:10:\"Belarusian\";s:11:\"native_name\";s:29:\"Беларуская мова\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/translation/core/4.9/bel.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"be\";i:2;s:3:\"bel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Працягнуць\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:3:\"4.9\";s:7:\"updated\";s:19:\"2017-11-15 09:53:15\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Напред\";}}s:5:\"bn_BD\";a:8:{s:8:\"language\";s:5:\"bn_BD\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-10-01 12:57:10\";s:12:\"english_name\";s:7:\"Bengali\";s:11:\"native_name\";s:15:\"বাংলা\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.3/bn_BD.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"bn\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:23:\"এগিয়ে চল.\";}}s:2:\"bo\";a:8:{s:8:\"language\";s:2:\"bo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-05 09:44:12\";s:12:\"english_name\";s:7:\"Tibetan\";s:11:\"native_name\";s:21:\"བོད་ཡིག\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/bo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bo\";i:2;s:3:\"tib\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"མུ་མཐུད།\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-04 20:20:28\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:3:\"4.9\";s:7:\"updated\";s:19:\"2017-11-16 05:33:14\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/4.9/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:3:\"ceb\";a:8:{s:8:\"language\";s:3:\"ceb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-02 17:25:51\";s:12:\"english_name\";s:7:\"Cebuano\";s:11:\"native_name\";s:7:\"Cebuano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"ceb\";i:3;s:3:\"ceb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Padayun\";}}s:5:\"cs_CZ\";a:8:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-12 08:46:26\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:12:\"Čeština‎\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Pokračovat\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-11-13 20:49:00\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.8.3/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:3:\"4.9\";s:7:\"updated\";s:19:\"2017-11-16 22:58:49\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsæt\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:3:\"4.9\";s:7:\"updated\";s:19:\"2017-11-16 11:54:16\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:12:\"de_DE_formal\";a:8:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:3:\"4.9\";s:7:\"updated\";s:19:\"2017-11-17 10:03:17\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/core/4.9/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:14:\"de_CH_informal\";a:8:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:3:\"4.9\";s:7:\"updated\";s:19:\"2017-11-16 11:54:38\";s:12:\"english_name\";s:30:\"German (Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/4.9/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:3:\"4.9\";s:7:\"updated\";s:19:\"2017-11-17 10:01:29\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:3:\"dzo\";a:8:{s:8:\"language\";s:3:\"dzo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-06-29 08:59:03\";s:12:\"english_name\";s:8:\"Dzongkha\";s:11:\"native_name\";s:18:\"རྫོང་ཁ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"dz\";i:2;s:3:\"dzo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-10-25 16:30:54\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.8.3/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Συνέχεια\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:3:\"4.9\";s:7:\"updated\";s:19:\"2017-11-15 14:51:39\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_ZA\";a:8:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:3:\"4.9\";s:7:\"updated\";s:19:\"2017-11-15 09:54:30\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_NZ\";a:8:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:3:\"4.9\";s:7:\"updated\";s:19:\"2017-11-14 07:34:41\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:3:\"4.9\";s:7:\"updated\";s:19:\"2017-11-14 18:44:22\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:3:\"4.9\";s:7:\"updated\";s:19:\"2017-11-14 02:06:55\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:3:\"4.9\";s:7:\"updated\";s:19:\"2017-11-14 01:23:37\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/4.9/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Daŭrigi\";}}s:5:\"es_AR\";a:8:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:3:\"4.9\";s:7:\"updated\";s:19:\"2017-11-16 03:15:17\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9/es_AR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"es\";i:2;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CO\";a:8:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:3:\"4.9\";s:7:\"updated\";s:19:\"2017-11-15 23:17:08\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9/es_CO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"es\";i:2;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:3:\"4.9\";s:7:\"updated\";s:19:\"2017-11-16 10:39:24\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9/es_ES.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"es\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CR\";a:8:{s:8:\"language\";s:5:\"es_CR\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-10-01 17:54:52\";s:12:\"english_name\";s:20:\"Spanish (Costa Rica)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.3/es_CR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"es\";i:2;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-07-31 15:12:02\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.3/es_MX.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"es\";i:2;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_VE\";a:8:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-07-30 16:09:17\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.3/es_VE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"es\";i:2;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-09 09:36:22\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/es_PE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"es\";i:2;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-28 20:09:49\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"Español de Chile\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/es_CL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"es\";i:2;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_GT\";a:8:{s:8:\"language\";s:5:\"es_GT\";s:7:\"version\";s:3:\"4.9\";s:7:\"updated\";s:19:\"2017-11-15 15:03:42\";s:12:\"english_name\";s:19:\"Spanish (Guatemala)\";s:11:\"native_name\";s:21:\"Español de Guatemala\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9/es_GT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"es\";i:2;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"et\";a:8:{s:8:\"language\";s:2:\"et\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 16:37:11\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/et.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"et\";i:2;s:3:\"est\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Jätka\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:3:\"4.9\";s:7:\"updated\";s:19:\"2017-11-16 15:30:44\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/4.9/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:3:\"4.8\";s:7:\"updated\";s:19:\"2017-06-09 15:50:45\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:3:\"4.9\";s:7:\"updated\";s:19:\"2017-11-15 09:48:14\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/4.9/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_BE\";a:8:{s:8:\"language\";s:5:\"fr_BE\";s:7:\"version\";s:3:\"4.9\";s:7:\"updated\";s:19:\"2017-11-15 21:50:23\";s:12:\"english_name\";s:16:\"French (Belgium)\";s:11:\"native_name\";s:21:\"Français de Belgique\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9/fr_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:3:\"4.9\";s:7:\"updated\";s:19:\"2017-11-17 11:40:02\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_CA\";a:8:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-07-28 12:37:07\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.3/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-08-23 17:41:37\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"Gàidhlig\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:3:\"4.9\";s:7:\"updated\";s:19:\"2017-11-16 10:40:05\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"gu\";a:8:{s:8:\"language\";s:2:\"gu\";s:7:\"version\";s:3:\"4.9\";s:7:\"updated\";s:19:\"2017-11-16 11:06:53\";s:12:\"english_name\";s:8:\"Gujarati\";s:11:\"native_name\";s:21:\"ગુજરાતી\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/4.9/gu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gu\";i:2;s:3:\"guj\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:31:\"ચાલુ રાખવું\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:5:\"4.4.2\";s:7:\"updated\";s:19:\"2015-12-05 00:59:09\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"هزاره گی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.4.2/haz.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-11-13 06:33:35\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.3/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"המשך\";}}s:5:\"hi_IN\";a:8:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:3:\"4.9\";s:7:\"updated\";s:19:\"2017-11-15 12:27:15\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"जारी\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:3:\"4.9\";s:7:\"updated\";s:19:\"2017-11-14 13:03:07\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/4.9/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:48:39\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Folytatás\";}}s:2:\"hy\";a:8:{s:8:\"language\";s:2:\"hy\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-03 16:21:10\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hy\";i:2;s:3:\"hye\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Շարունակել\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:3:\"4.9\";s:7:\"updated\";s:19:\"2017-11-14 11:09:49\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-04-13 13:55:54\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.7/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Áfram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:3:\"4.9\";s:7:\"updated\";s:19:\"2017-11-16 18:32:32\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:3:\"4.9\";s:7:\"updated\";s:19:\"2017-11-17 09:56:44\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/4.9/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"続ける\";}}s:5:\"jv_ID\";a:8:{s:8:\"language\";s:5:\"jv_ID\";s:7:\"version\";s:3:\"4.9\";s:7:\"updated\";s:19:\"2017-11-14 11:47:57\";s:12:\"english_name\";s:8:\"Javanese\";s:11:\"native_name\";s:9:\"Basa Jawa\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9/jv_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"jv\";i:2;s:3:\"jav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Nerusaké\";}}s:5:\"ka_GE\";a:8:{s:8:\"language\";s:5:\"ka_GE\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-10-09 06:06:41\";s:12:\"english_name\";s:8:\"Georgian\";s:11:\"native_name\";s:21:\"ქართული\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.3/ka_GE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ka\";i:2;s:3:\"kat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"გაგრძელება\";}}s:3:\"kab\";a:8:{s:8:\"language\";s:3:\"kab\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-08-22 15:33:00\";s:12:\"english_name\";s:6:\"Kabyle\";s:11:\"native_name\";s:9:\"Taqbaylit\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.3/kab.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"kab\";i:3;s:3:\"kab\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Kemmel\";}}s:2:\"km\";a:8:{s:8:\"language\";s:2:\"km\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-07 02:07:59\";s:12:\"english_name\";s:5:\"Khmer\";s:11:\"native_name\";s:27:\"ភាសាខ្មែរ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/km.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"km\";i:2;s:3:\"khm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"បន្ត\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:3:\"4.9\";s:7:\"updated\";s:19:\"2017-11-16 02:03:48\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"계속\";}}s:3:\"ckb\";a:8:{s:8:\"language\";s:3:\"ckb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:48:25\";s:12:\"english_name\";s:16:\"Kurdish (Sorani)\";s:11:\"native_name\";s:13:\"كوردی‎\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ckb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ku\";i:3;s:3:\"ckb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"به‌رده‌وام به‌\";}}s:2:\"lo\";a:8:{s:8:\"language\";s:2:\"lo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 09:59:23\";s:12:\"english_name\";s:3:\"Lao\";s:11:\"native_name\";s:21:\"ພາສາລາວ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lo\";i:2;s:3:\"lao\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"ຕໍ່​ໄປ\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:3:\"4.9\";s:7:\"updated\";s:19:\"2017-11-15 19:40:23\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"Lietuvių kalba\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Tęsti\";}}s:2:\"lv\";a:8:{s:8:\"language\";s:2:\"lv\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-03-17 20:40:40\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:16:\"Latviešu valoda\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.7/lv.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lv\";i:2;s:3:\"lav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Turpināt\";}}s:5:\"mk_MK\";a:8:{s:8:\"language\";s:5:\"mk_MK\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-01-26 15:54:41\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:31:\"Македонски јазик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.7/mk_MK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mk\";i:2;s:3:\"mkd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Продолжи\";}}s:5:\"ml_IN\";a:8:{s:8:\"language\";s:5:\"ml_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:43:32\";s:12:\"english_name\";s:9:\"Malayalam\";s:11:\"native_name\";s:18:\"മലയാളം\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ml\";i:2;s:3:\"mal\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"തുടരുക\";}}s:2:\"mn\";a:8:{s:8:\"language\";s:2:\"mn\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-12 07:29:35\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:12:\"Монгол\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/mn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mn\";i:2;s:3:\"mon\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"Үргэлжлүүлэх\";}}s:2:\"mr\";a:8:{s:8:\"language\";s:2:\"mr\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-09-30 06:25:41\";s:12:\"english_name\";s:7:\"Marathi\";s:11:\"native_name\";s:15:\"मराठी\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.8.3/mr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mr\";i:2;s:3:\"mar\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"सुरु ठेवा\";}}s:5:\"ms_MY\";a:8:{s:8:\"language\";s:5:\"ms_MY\";s:7:\"version\";s:3:\"4.9\";s:7:\"updated\";s:19:\"2017-11-15 14:08:10\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:13:\"Bahasa Melayu\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9/ms_MY.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ms\";i:2;s:3:\"msa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Teruskan\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:6:\"4.1.20\";s:7:\"updated\";s:19:\"2015-03-26 15:57:42\";s:12:\"english_name\";s:17:\"Myanmar (Burmese)\";s:11:\"native_name\";s:15:\"ဗမာစာ\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.1.20/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"ဆက်လက်လုပ်ဆောင်ပါ။\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-08-02 21:02:39\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.3/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"ne_NP\";a:8:{s:8:\"language\";s:5:\"ne_NP\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-10-05 06:45:20\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:18:\"नेपाली\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.3/ne_NP.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ne\";i:2;s:3:\"nep\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:43:\"जारी राख्नुहोस्\";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:3:\"4.9\";s:7:\"updated\";s:19:\"2017-11-15 10:57:16\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_BE\";a:8:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:3:\"4.9\";s:7:\"updated\";s:19:\"2017-11-16 17:20:20\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9/nl_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:12:\"nl_NL_formal\";a:8:{s:8:\"language\";s:12:\"nl_NL_formal\";s:7:\"version\";s:3:\"4.9\";s:7:\"updated\";s:19:\"2017-11-16 15:44:47\";s:12:\"english_name\";s:14:\"Dutch (Formal)\";s:11:\"native_name\";s:20:\"Nederlands (Formeel)\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/core/4.9/nl_NL_formal.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nn_NO\";a:8:{s:8:\"language\";s:5:\"nn_NO\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-09-25 10:02:16\";s:12:\"english_name\";s:19:\"Norwegian (Nynorsk)\";s:11:\"native_name\";s:13:\"Norsk nynorsk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.3/nn_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nn\";i:2;s:3:\"nno\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Hald fram\";}}s:3:\"oci\";a:8:{s:8:\"language\";s:3:\"oci\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-08-25 10:03:08\";s:12:\"english_name\";s:7:\"Occitan\";s:11:\"native_name\";s:7:\"Occitan\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.3/oci.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"oc\";i:2;s:3:\"oci\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Contunhar\";}}s:5:\"pa_IN\";a:8:{s:8:\"language\";s:5:\"pa_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-16 05:19:43\";s:12:\"english_name\";s:7:\"Punjabi\";s:11:\"native_name\";s:18:\"ਪੰਜਾਬੀ\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pa\";i:2;s:3:\"pan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ਜਾਰੀ ਰੱਖੋ\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-09-20 08:02:58\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.3/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:2:\"ps\";a:8:{s:8:\"language\";s:2:\"ps\";s:7:\"version\";s:6:\"4.1.20\";s:7:\"updated\";s:19:\"2015-03-29 22:19:48\";s:12:\"english_name\";s:6:\"Pashto\";s:11:\"native_name\";s:8:\"پښتو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.1.20/ps.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ps\";i:2;s:3:\"pus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"دوام ورکړه\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:3:\"4.9\";s:7:\"updated\";s:19:\"2017-11-17 09:19:04\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:10:\"pt_PT_ao90\";a:8:{s:8:\"language\";s:10:\"pt_PT_ao90\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-09-29 08:57:23\";s:12:\"english_name\";s:27:\"Portuguese (Portugal, AO90)\";s:11:\"native_name\";s:17:\"Português (AO90)\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/core/4.8.3/pt_PT_ao90.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:3:\"4.9\";s:7:\"updated\";s:19:\"2017-11-14 20:53:34\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:3:\"rhg\";a:8:{s:8:\"language\";s:3:\"rhg\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-16 13:03:18\";s:12:\"english_name\";s:8:\"Rohingya\";s:11:\"native_name\";s:8:\"Ruáinga\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"rhg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:3:\"4.9\";s:7:\"updated\";s:19:\"2017-11-16 09:41:32\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuă\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:3:\"4.9\";s:7:\"updated\";s:19:\"2017-11-14 16:08:28\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:3:\"sah\";a:8:{s:8:\"language\";s:3:\"sah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-21 02:06:41\";s:12:\"english_name\";s:5:\"Sakha\";s:11:\"native_name\";s:14:\"Сахалыы\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"sah\";i:3;s:3:\"sah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Салҕаа\";}}s:5:\"si_LK\";a:8:{s:8:\"language\";s:5:\"si_LK\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 06:00:52\";s:12:\"english_name\";s:7:\"Sinhala\";s:11:\"native_name\";s:15:\"සිංහල\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"si\";i:2;s:3:\"sin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:44:\"දිගටම කරගෙන යන්න\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-10-29 12:16:07\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.3/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Pokračovať\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:3:\"4.9\";s:7:\"updated\";s:19:\"2017-11-16 18:38:56\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Nadaljuj\";}}s:2:\"sq\";a:8:{s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:3:\"4.9\";s:7:\"updated\";s:19:\"2017-11-14 19:14:08\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:5:\"Shqip\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/4.9/sq.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sq\";i:2;s:3:\"sqi\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Vazhdo\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:3:\"4.9\";s:7:\"updated\";s:19:\"2017-11-15 23:19:48\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Настави\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:3:\"4.9\";s:7:\"updated\";s:19:\"2017-11-16 14:18:23\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Fortsätt\";}}s:3:\"szl\";a:8:{s:8:\"language\";s:3:\"szl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-24 19:58:14\";s:12:\"english_name\";s:8:\"Silesian\";s:11:\"native_name\";s:17:\"Ślōnskŏ gŏdka\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"szl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:13:\"Kōntynuować\";}}s:5:\"ta_IN\";a:8:{s:8:\"language\";s:5:\"ta_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:22:47\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"தொடரவும்\";}}s:2:\"te\";a:8:{s:8:\"language\";s:2:\"te\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:47:39\";s:12:\"english_name\";s:6:\"Telugu\";s:11:\"native_name\";s:18:\"తెలుగు\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/te.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"te\";i:2;s:3:\"tel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"కొనసాగించు\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-10-07 02:08:56\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.8.3/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"ต่อไป\";}}s:2:\"tl\";a:8:{s:8:\"language\";s:2:\"tl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-30 02:38:08\";s:12:\"english_name\";s:7:\"Tagalog\";s:11:\"native_name\";s:7:\"Tagalog\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/tl.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tl\";i:2;s:3:\"tgl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Magpatuloy\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:3:\"4.9\";s:7:\"updated\";s:19:\"2017-11-16 21:31:13\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"tt_RU\";a:8:{s:8:\"language\";s:5:\"tt_RU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-20 20:20:50\";s:12:\"english_name\";s:5:\"Tatar\";s:11:\"native_name\";s:19:\"Татар теле\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tt\";i:2;s:3:\"tat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"дәвам итү\";}}s:3:\"tah\";a:8:{s:8:\"language\";s:3:\"tah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-06 18:39:39\";s:12:\"english_name\";s:8:\"Tahitian\";s:11:\"native_name\";s:10:\"Reo Tahiti\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ty\";i:2;s:3:\"tah\";i:3;s:3:\"tah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-05 09:23:39\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:9:\"Uyƣurqə\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"داۋاملاشتۇرۇش\";}}s:2:\"uk\";a:8:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-11-02 17:05:02\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.8.3/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продовжити\";}}s:2:\"ur\";a:8:{s:8:\"language\";s:2:\"ur\";s:7:\"version\";s:3:\"4.9\";s:7:\"updated\";s:19:\"2017-11-17 05:58:04\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:8:\"اردو\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/4.9/ur.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ur\";i:2;s:3:\"urd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"جاری رکھیں\";}}s:5:\"uz_UZ\";a:8:{s:8:\"language\";s:5:\"uz_UZ\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-10-15 05:40:58\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:11:\"O‘zbekcha\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.3/uz_UZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uz\";i:2;s:3:\"uzb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Davom etish\";}}s:2:\"vi\";a:8:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:3:\"4.9\";s:7:\"updated\";s:19:\"2017-11-15 10:43:28\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/4.9/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Tiếp tục\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:3:\"4.9\";s:7:\"updated\";s:19:\"2017-11-15 21:19:26\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"继续\";}}s:5:\"zh_HK\";a:8:{s:8:\"language\";s:5:\"zh_HK\";s:7:\"version\";s:3:\"4.9\";s:7:\"updated\";s:19:\"2017-11-16 16:36:23\";s:12:\"english_name\";s:19:\"Chinese (Hong Kong)\";s:11:\"native_name\";s:16:\"香港中文版	\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9/zh_HK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-09-12 11:35:05\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"繁體中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.3/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}}', 'no'),
(290, '_transient_is_multi_author', '0', 'yes'),
(297, '_transient_timeout_files_0301a82ee0bb0dafd88c9c690ea3febbdc9c50699a3df3e892e4fdb', '1510980102', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(298, '_transient_files_0301a82ee0bb0dafd88c9c690ea3febbdc9c50699a3df3e892e4fdb', 'a:85:{s:18:\"AccountantPage.php\";s:84:\"C:\\xampp\\htdocs\\quickbooks/wp-content/themes/twentythirteen-child/AccountantPage.php\";s:16:\"EmployerPage.php\";s:82:\"C:\\xampp\\htdocs\\quickbooks/wp-content/themes/twentythirteen-child/EmployerPage.php\";s:33:\"acf-json/group_5a0d274e8bb90.json\";s:99:\"C:\\xampp\\htdocs\\quickbooks/wp-content/themes/twentythirteen-child/acf-json/group_5a0d274e8bb90.json\";s:33:\"acf-json/group_5a0d2ce18602f.json\";s:99:\"C:\\xampp\\htdocs\\quickbooks/wp-content/themes/twentythirteen-child/acf-json/group_5a0d2ce18602f.json\";s:33:\"acf-json/group_5a0d2e6b55a69.json\";s:99:\"C:\\xampp\\htdocs\\quickbooks/wp-content/themes/twentythirteen-child/acf-json/group_5a0d2e6b55a69.json\";s:15:\"css/animate.css\";s:81:\"C:\\xampp\\htdocs\\quickbooks/wp-content/themes/twentythirteen-child/css/animate.css\";s:35:\"fonts/quicksand/QuicksandMedium.css\";s:101:\"C:\\xampp\\htdocs\\quickbooks/wp-content/themes/twentythirteen-child/fonts/quicksand/QuicksandMedium.css\";s:41:\"fonts/quicksand/fonts/QuicksandMedium.eot\";s:107:\"C:\\xampp\\htdocs\\quickbooks/wp-content/themes/twentythirteen-child/fonts/quicksand/fonts/QuicksandMedium.eot\";s:41:\"fonts/quicksand/fonts/QuicksandMedium.svg\";s:107:\"C:\\xampp\\htdocs\\quickbooks/wp-content/themes/twentythirteen-child/fonts/quicksand/fonts/QuicksandMedium.svg\";s:41:\"fonts/quicksand/fonts/QuicksandMedium.ttf\";s:107:\"C:\\xampp\\htdocs\\quickbooks/wp-content/themes/twentythirteen-child/fonts/quicksand/fonts/QuicksandMedium.ttf\";s:42:\"fonts/quicksand/fonts/QuicksandMedium.woff\";s:108:\"C:\\xampp\\htdocs\\quickbooks/wp-content/themes/twentythirteen-child/fonts/quicksand/fonts/QuicksandMedium.woff\";s:43:\"fonts/quicksand/fonts/QuicksandMedium.woff2\";s:109:\"C:\\xampp\\htdocs\\quickbooks/wp-content/themes/twentythirteen-child/fonts/quicksand/fonts/QuicksandMedium.woff2\";s:10:\"footer.php\";s:76:\"C:\\xampp\\htdocs\\quickbooks/wp-content/themes/twentythirteen-child/footer.php\";s:13:\"functions.php\";s:79:\"C:\\xampp\\htdocs\\quickbooks/wp-content/themes/twentythirteen-child/functions.php\";s:10:\"header.php\";s:76:\"C:\\xampp\\htdocs\\quickbooks/wp-content/themes/twentythirteen-child/header.php\";s:8:\"home.php\";s:74:\"C:\\xampp\\htdocs\\quickbooks/wp-content/themes/twentythirteen-child/home.php\";s:9:\"img/5.png\";s:75:\"C:\\xampp\\htdocs\\quickbooks/wp-content/themes/twentythirteen-child/img/5.png\";s:11:\"img/aaa.png\";s:77:\"C:\\xampp\\htdocs\\quickbooks/wp-content/themes/twentythirteen-child/img/aaa.png\";s:15:\"img/favicon.ico\";s:81:\"C:\\xampp\\htdocs\\quickbooks/wp-content/themes/twentythirteen-child/img/favicon.ico\";s:14:\"img/intuit.png\";s:80:\"C:\\xampp\\htdocs\\quickbooks/wp-content/themes/twentythirteen-child/img/intuit.png\";s:12:\"img/logo.png\";s:78:\"C:\\xampp\\htdocs\\quickbooks/wp-content/themes/twentythirteen-child/img/logo.png\";s:19:\"img/pricing-img.png\";s:85:\"C:\\xampp\\htdocs\\quickbooks/wp-content/themes/twentythirteen-child/img/pricing-img.png\";s:11:\"img/tab.png\";s:77:\"C:\\xampp\\htdocs\\quickbooks/wp-content/themes/twentythirteen-child/img/tab.png\";s:11:\"img/top.png\";s:77:\"C:\\xampp\\htdocs\\quickbooks/wp-content/themes/twentythirteen-child/img/top.png\";s:12:\"img/top2.png\";s:78:\"C:\\xampp\\htdocs\\quickbooks/wp-content/themes/twentythirteen-child/img/top2.png\";s:9:\"index.php\";s:75:\"C:\\xampp\\htdocs\\quickbooks/wp-content/themes/twentythirteen-child/index.php\";s:12:\"js/enllax.js\";s:78:\"C:\\xampp\\htdocs\\quickbooks/wp-content/themes/twentythirteen-child/js/enllax.js\";s:8:\"page.php\";s:74:\"C:\\xampp\\htdocs\\quickbooks/wp-content/themes/twentythirteen-child/page.php\";s:14:\"screenshot.png\";s:80:\"C:\\xampp\\htdocs\\quickbooks/wp-content/themes/twentythirteen-child/screenshot.png\";s:9:\"style.css\";s:75:\"C:\\xampp\\htdocs\\quickbooks/wp-content/themes/twentythirteen-child/style.css\";s:8:\"test.php\";s:74:\"C:\\xampp\\htdocs\\quickbooks/wp-content/themes/twentythirteen-child/test.php\";s:7:\"404.php\";s:67:\"C:\\xampp\\htdocs\\quickbooks/wp-content/themes/twentythirteen/404.php\";s:11:\"archive.php\";s:71:\"C:\\xampp\\htdocs\\quickbooks/wp-content/themes/twentythirteen/archive.php\";s:14:\"author-bio.php\";s:74:\"C:\\xampp\\htdocs\\quickbooks/wp-content/themes/twentythirteen/author-bio.php\";s:10:\"author.php\";s:70:\"C:\\xampp\\htdocs\\quickbooks/wp-content/themes/twentythirteen/author.php\";s:12:\"category.php\";s:72:\"C:\\xampp\\htdocs\\quickbooks/wp-content/themes/twentythirteen/category.php\";s:12:\"comments.php\";s:72:\"C:\\xampp\\htdocs\\quickbooks/wp-content/themes/twentythirteen/comments.php\";s:17:\"content-aside.php\";s:77:\"C:\\xampp\\htdocs\\quickbooks/wp-content/themes/twentythirteen/content-aside.php\";s:17:\"content-audio.php\";s:77:\"C:\\xampp\\htdocs\\quickbooks/wp-content/themes/twentythirteen/content-audio.php\";s:16:\"content-chat.php\";s:76:\"C:\\xampp\\htdocs\\quickbooks/wp-content/themes/twentythirteen/content-chat.php\";s:19:\"content-gallery.php\";s:79:\"C:\\xampp\\htdocs\\quickbooks/wp-content/themes/twentythirteen/content-gallery.php\";s:17:\"content-image.php\";s:77:\"C:\\xampp\\htdocs\\quickbooks/wp-content/themes/twentythirteen/content-image.php\";s:16:\"content-link.php\";s:76:\"C:\\xampp\\htdocs\\quickbooks/wp-content/themes/twentythirteen/content-link.php\";s:16:\"content-none.php\";s:76:\"C:\\xampp\\htdocs\\quickbooks/wp-content/themes/twentythirteen/content-none.php\";s:17:\"content-quote.php\";s:77:\"C:\\xampp\\htdocs\\quickbooks/wp-content/themes/twentythirteen/content-quote.php\";s:18:\"content-status.php\";s:78:\"C:\\xampp\\htdocs\\quickbooks/wp-content/themes/twentythirteen/content-status.php\";s:17:\"content-video.php\";s:77:\"C:\\xampp\\htdocs\\quickbooks/wp-content/themes/twentythirteen/content-video.php\";s:11:\"content.php\";s:71:\"C:\\xampp\\htdocs\\quickbooks/wp-content/themes/twentythirteen/content.php\";s:20:\"css/editor-style.css\";s:80:\"C:\\xampp\\htdocs\\quickbooks/wp-content/themes/twentythirteen/css/editor-style.css\";s:10:\"css/ie.css\";s:70:\"C:\\xampp\\htdocs\\quickbooks/wp-content/themes/twentythirteen/css/ie.css\";s:22:\"genericons/COPYING.txt\";s:82:\"C:\\xampp\\htdocs\\quickbooks/wp-content/themes/twentythirteen/genericons/COPYING.txt\";s:33:\"genericons/Genericons-Regular.otf\";s:93:\"C:\\xampp\\htdocs\\quickbooks/wp-content/themes/twentythirteen/genericons/Genericons-Regular.otf\";s:22:\"genericons/LICENSE.txt\";s:82:\"C:\\xampp\\htdocs\\quickbooks/wp-content/themes/twentythirteen/genericons/LICENSE.txt\";s:21:\"genericons/README.txt\";s:81:\"C:\\xampp\\htdocs\\quickbooks/wp-content/themes/twentythirteen/genericons/README.txt\";s:46:\"genericons/font/genericons-regular-webfont.eot\";s:106:\"C:\\xampp\\htdocs\\quickbooks/wp-content/themes/twentythirteen/genericons/font/genericons-regular-webfont.eot\";s:46:\"genericons/font/genericons-regular-webfont.svg\";s:106:\"C:\\xampp\\htdocs\\quickbooks/wp-content/themes/twentythirteen/genericons/font/genericons-regular-webfont.svg\";s:46:\"genericons/font/genericons-regular-webfont.ttf\";s:106:\"C:\\xampp\\htdocs\\quickbooks/wp-content/themes/twentythirteen/genericons/font/genericons-regular-webfont.ttf\";s:47:\"genericons/font/genericons-regular-webfont.woff\";s:107:\"C:\\xampp\\htdocs\\quickbooks/wp-content/themes/twentythirteen/genericons/font/genericons-regular-webfont.woff\";s:25:\"genericons/genericons.css\";s:85:\"C:\\xampp\\htdocs\\quickbooks/wp-content/themes/twentythirteen/genericons/genericons.css\";s:9:\"image.php\";s:69:\"C:\\xampp\\htdocs\\quickbooks/wp-content/themes/twentythirteen/image.php\";s:25:\"images/dotted-line-2x.png\";s:85:\"C:\\xampp\\htdocs\\quickbooks/wp-content/themes/twentythirteen/images/dotted-line-2x.png\";s:31:\"images/dotted-line-light-2x.png\";s:91:\"C:\\xampp\\htdocs\\quickbooks/wp-content/themes/twentythirteen/images/dotted-line-light-2x.png\";s:28:\"images/dotted-line-light.png\";s:88:\"C:\\xampp\\htdocs\\quickbooks/wp-content/themes/twentythirteen/images/dotted-line-light.png\";s:22:\"images/dotted-line.png\";s:82:\"C:\\xampp\\htdocs\\quickbooks/wp-content/themes/twentythirteen/images/dotted-line.png\";s:35:\"images/headers/circle-thumbnail.png\";s:95:\"C:\\xampp\\htdocs\\quickbooks/wp-content/themes/twentythirteen/images/headers/circle-thumbnail.png\";s:25:\"images/headers/circle.png\";s:85:\"C:\\xampp\\htdocs\\quickbooks/wp-content/themes/twentythirteen/images/headers/circle.png\";s:36:\"images/headers/diamond-thumbnail.png\";s:96:\"C:\\xampp\\htdocs\\quickbooks/wp-content/themes/twentythirteen/images/headers/diamond-thumbnail.png\";s:26:\"images/headers/diamond.png\";s:86:\"C:\\xampp\\htdocs\\quickbooks/wp-content/themes/twentythirteen/images/headers/diamond.png\";s:33:\"images/headers/star-thumbnail.png\";s:93:\"C:\\xampp\\htdocs\\quickbooks/wp-content/themes/twentythirteen/images/headers/star-thumbnail.png\";s:23:\"images/headers/star.png\";s:83:\"C:\\xampp\\htdocs\\quickbooks/wp-content/themes/twentythirteen/images/headers/star.png\";s:25:\"images/search-icon-2x.png\";s:85:\"C:\\xampp\\htdocs\\quickbooks/wp-content/themes/twentythirteen/images/search-icon-2x.png\";s:22:\"images/search-icon.png\";s:82:\"C:\\xampp\\htdocs\\quickbooks/wp-content/themes/twentythirteen/images/search-icon.png\";s:19:\"inc/back-compat.php\";s:79:\"C:\\xampp\\htdocs\\quickbooks/wp-content/themes/twentythirteen/inc/back-compat.php\";s:21:\"inc/custom-header.php\";s:81:\"C:\\xampp\\htdocs\\quickbooks/wp-content/themes/twentythirteen/inc/custom-header.php\";s:15:\"js/functions.js\";s:75:\"C:\\xampp\\htdocs\\quickbooks/wp-content/themes/twentythirteen/js/functions.js\";s:11:\"js/html5.js\";s:71:\"C:\\xampp\\htdocs\\quickbooks/wp-content/themes/twentythirteen/js/html5.js\";s:22:\"js/theme-customizer.js\";s:82:\"C:\\xampp\\htdocs\\quickbooks/wp-content/themes/twentythirteen/js/theme-customizer.js\";s:10:\"readme.txt\";s:70:\"C:\\xampp\\htdocs\\quickbooks/wp-content/themes/twentythirteen/readme.txt\";s:7:\"rtl.css\";s:67:\"C:\\xampp\\htdocs\\quickbooks/wp-content/themes/twentythirteen/rtl.css\";s:10:\"search.php\";s:70:\"C:\\xampp\\htdocs\\quickbooks/wp-content/themes/twentythirteen/search.php\";s:16:\"sidebar-main.php\";s:76:\"C:\\xampp\\htdocs\\quickbooks/wp-content/themes/twentythirteen/sidebar-main.php\";s:11:\"sidebar.php\";s:71:\"C:\\xampp\\htdocs\\quickbooks/wp-content/themes/twentythirteen/sidebar.php\";s:10:\"single.php\";s:70:\"C:\\xampp\\htdocs\\quickbooks/wp-content/themes/twentythirteen/single.php\";s:7:\"tag.php\";s:67:\"C:\\xampp\\htdocs\\quickbooks/wp-content/themes/twentythirteen/tag.php\";s:24:\"taxonomy-post_format.php\";s:84:\"C:\\xampp\\htdocs\\quickbooks/wp-content/themes/twentythirteen/taxonomy-post_format.php\";}', 'no'),
(301, '_site_transient_timeout_theme_roots', '1510980454', 'no'),
(302, '_site_transient_theme_roots', 'a:2:{s:20:\"twentythirteen-child\";s:7:\"/themes\";s:14:\"twentythirteen\";s:7:\"/themes\";}', 'no'),
(303, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1510978660;s:7:\"checked\";a:2:{s:20:\"twentythirteen-child\";s:5:\"1.0.0\";s:14:\"twentythirteen\";s:3:\"2.2\";}s:8:\"response\";a:1:{s:14:\"twentythirteen\";a:4:{s:5:\"theme\";s:14:\"twentythirteen\";s:11:\"new_version\";s:3:\"2.3\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentythirteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentythirteen.2.3.zip\";}}s:12:\"translations\";a:0:{}}', 'no'),
(304, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1510978658;s:8:\"response\";a:2:{s:35:\"responsive-menu/responsive-menu.php\";O:8:\"stdClass\":11:{s:2:\"id\";s:29:\"w.org/plugins/responsive-menu\";s:4:\"slug\";s:15:\"responsive-menu\";s:6:\"plugin\";s:35:\"responsive-menu/responsive-menu.php\";s:11:\"new_version\";s:5:\"3.1.9\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/responsive-menu/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/responsive-menu.3.1.9.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:67:\"https://ps.w.org/responsive-menu/assets/icon-128x128.png?rev=978632\";s:2:\"2x\";s:67:\"https://ps.w.org/responsive-menu/assets/icon-256x256.png?rev=978632\";s:7:\"default\";s:67:\"https://ps.w.org/responsive-menu/assets/icon-256x256.png?rev=978632\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:70:\"https://ps.w.org/responsive-menu/assets/banner-772x250.png?rev=1500270\";s:7:\"default\";s:70:\"https://ps.w.org/responsive-menu/assets/banner-772x250.png?rev=1500270\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"4.9\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:41:\"advanced-custom-fields-pro-master/acf.php\";O:8:\"stdClass\":6:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:41:\"advanced-custom-fields-pro-master/acf.php\";s:11:\"new_version\";s:5:\"5.6.5\";s:3:\"url\";s:37:\"https://www.advancedcustomfields.com/\";s:6:\"tested\";s:5:\"4.9.0\";s:7:\"package\";s:0:\"\";}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:56:\"advanced-custom-fields-recaptcha-field/acf-recaptcha.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:52:\"w.org/plugins/advanced-custom-fields-recaptcha-field\";s:4:\"slug\";s:38:\"advanced-custom-fields-recaptcha-field\";s:6:\"plugin\";s:56:\"advanced-custom-fields-recaptcha-field/acf-recaptcha.php\";s:11:\"new_version\";s:5:\"1.2.1\";s:3:\"url\";s:69:\"https://wordpress.org/plugins/advanced-custom-fields-recaptcha-field/\";s:7:\"package\";s:87:\"https://downloads.wordpress.org/plugin/advanced-custom-fields-recaptcha-field.1.2.1.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:91:\"https://ps.w.org/advanced-custom-fields-recaptcha-field/assets/icon-128x128.png?rev=1682143\";s:2:\"2x\";s:91:\"https://ps.w.org/advanced-custom-fields-recaptcha-field/assets/icon-256x256.png?rev=1682143\";s:7:\"default\";s:91:\"https://ps.w.org/advanced-custom-fields-recaptcha-field/assets/icon-256x256.png?rev=1682143\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:94:\"https://ps.w.org/advanced-custom-fields-recaptcha-field/assets/banner-1544x500.png?rev=1682143\";s:2:\"1x\";s:93:\"https://ps.w.org/advanced-custom-fields-recaptcha-field/assets/banner-772x250.png?rev=1682143\";s:7:\"default\";s:94:\"https://ps.w.org/advanced-custom-fields-recaptcha-field/assets/banner-1544x500.png?rev=1682143\";}s:11:\"banners_rtl\";a:0:{}}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.1.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:7:\"default\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";s:7:\"default\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:43:\"custom-post-type-ui/custom-post-type-ui.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:33:\"w.org/plugins/custom-post-type-ui\";s:4:\"slug\";s:19:\"custom-post-type-ui\";s:6:\"plugin\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:11:\"new_version\";s:5:\"1.5.6\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/custom-post-type-ui/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.5.6.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-128x128.png?rev=1069557\";s:2:\"2x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=1069557\";s:7:\"default\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=1069557\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:75:\"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=1069557\";s:2:\"1x\";s:74:\"https://ps.w.org/custom-post-type-ui/assets/banner-772x250.png?rev=1069557\";s:7:\"default\";s:75:\"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=1069557\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

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
(5, 5, '_edit_last', '1'),
(6, 5, '_edit_lock', '1510929351:1'),
(9, 8, '_menu_item_type', 'post_type'),
(10, 8, '_menu_item_menu_item_parent', '0'),
(11, 8, '_menu_item_object_id', '5'),
(12, 8, '_menu_item_object', 'page'),
(13, 8, '_menu_item_target', ''),
(14, 8, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(15, 8, '_menu_item_xfn', ''),
(16, 8, '_menu_item_url', ''),
(18, 9, '_menu_item_type', 'post_type'),
(19, 9, '_menu_item_menu_item_parent', '0'),
(20, 9, '_menu_item_object_id', '5'),
(21, 9, '_menu_item_object', 'page'),
(22, 9, '_menu_item_target', ''),
(23, 9, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(24, 9, '_menu_item_xfn', ''),
(25, 9, '_menu_item_url', ''),
(26, 9, '_menu_item_orphaned', '1510726616'),
(27, 10, '_menu_item_type', 'custom'),
(28, 10, '_menu_item_menu_item_parent', '0'),
(29, 10, '_menu_item_object_id', '10'),
(30, 10, '_menu_item_object', 'custom'),
(31, 10, '_menu_item_target', ''),
(32, 10, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(33, 10, '_menu_item_xfn', ''),
(34, 10, '_menu_item_url', '#'),
(36, 11, '_menu_item_type', 'custom'),
(37, 11, '_menu_item_menu_item_parent', '0'),
(38, 11, '_menu_item_object_id', '11'),
(39, 11, '_menu_item_object', 'custom'),
(40, 11, '_menu_item_target', ''),
(41, 11, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(42, 11, '_menu_item_xfn', ''),
(43, 11, '_menu_item_url', '#'),
(45, 12, '_menu_item_type', 'custom'),
(46, 12, '_menu_item_menu_item_parent', '0'),
(47, 12, '_menu_item_object_id', '12'),
(48, 12, '_menu_item_object', 'custom'),
(49, 12, '_menu_item_target', ''),
(50, 12, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(51, 12, '_menu_item_xfn', ''),
(52, 12, '_menu_item_url', '#'),
(54, 13, '_menu_item_type', 'custom'),
(55, 13, '_menu_item_menu_item_parent', '0'),
(56, 13, '_menu_item_object_id', '13'),
(57, 13, '_menu_item_object', 'custom'),
(58, 13, '_menu_item_target', ''),
(59, 13, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(60, 13, '_menu_item_xfn', ''),
(61, 13, '_menu_item_url', '#'),
(63, 14, '_menu_item_type', 'custom'),
(64, 14, '_menu_item_menu_item_parent', '0'),
(65, 14, '_menu_item_object_id', '14'),
(66, 14, '_menu_item_object', 'custom'),
(67, 14, '_menu_item_target', ''),
(68, 14, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(69, 14, '_menu_item_xfn', ''),
(70, 14, '_menu_item_url', '#'),
(71, 15, '_menu_item_type', 'custom'),
(72, 15, '_menu_item_menu_item_parent', '0'),
(73, 15, '_menu_item_object_id', '15'),
(74, 15, '_menu_item_object', 'custom'),
(75, 15, '_menu_item_target', ''),
(76, 15, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(77, 15, '_menu_item_xfn', ''),
(78, 15, '_menu_item_url', '#'),
(80, 16, '_menu_item_type', 'custom'),
(81, 16, '_menu_item_menu_item_parent', '0'),
(82, 16, '_menu_item_object_id', '16'),
(83, 16, '_menu_item_object', 'custom'),
(84, 16, '_menu_item_target', ''),
(85, 16, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(86, 16, '_menu_item_xfn', ''),
(87, 16, '_menu_item_url', '#'),
(89, 17, '_menu_item_type', 'custom'),
(90, 17, '_menu_item_menu_item_parent', '0'),
(91, 17, '_menu_item_object_id', '17'),
(92, 17, '_menu_item_object', 'custom'),
(93, 17, '_menu_item_target', ''),
(94, 17, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(95, 17, '_menu_item_xfn', ''),
(96, 17, '_menu_item_url', '#'),
(98, 18, '_menu_item_type', 'custom'),
(99, 18, '_menu_item_menu_item_parent', '0'),
(100, 18, '_menu_item_object_id', '18'),
(101, 18, '_menu_item_object', 'custom'),
(102, 18, '_menu_item_target', ''),
(103, 18, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(104, 18, '_menu_item_xfn', ''),
(105, 18, '_menu_item_url', '#'),
(107, 19, '_menu_item_type', 'custom'),
(108, 19, '_menu_item_menu_item_parent', '0'),
(109, 19, '_menu_item_object_id', '19'),
(110, 19, '_menu_item_object', 'custom'),
(111, 19, '_menu_item_target', ''),
(112, 19, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(113, 19, '_menu_item_xfn', ''),
(114, 19, '_menu_item_url', '#'),
(116, 20, '_menu_item_type', 'custom'),
(117, 20, '_menu_item_menu_item_parent', '0'),
(118, 20, '_menu_item_object_id', '20'),
(119, 20, '_menu_item_object', 'custom'),
(120, 20, '_menu_item_target', ''),
(121, 20, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(122, 20, '_menu_item_xfn', ''),
(123, 20, '_menu_item_url', '#'),
(125, 21, '_menu_item_type', 'custom'),
(126, 21, '_menu_item_menu_item_parent', '0'),
(127, 21, '_menu_item_object_id', '21'),
(128, 21, '_menu_item_object', 'custom'),
(129, 21, '_menu_item_target', ''),
(130, 21, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(131, 21, '_menu_item_xfn', ''),
(132, 21, '_menu_item_url', '#'),
(134, 22, '_menu_item_type', 'custom'),
(135, 22, '_menu_item_menu_item_parent', '0'),
(136, 22, '_menu_item_object_id', '22'),
(137, 22, '_menu_item_object', 'custom'),
(138, 22, '_menu_item_target', ''),
(139, 22, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(140, 22, '_menu_item_xfn', ''),
(141, 22, '_menu_item_url', '#'),
(143, 23, '_menu_item_type', 'custom'),
(144, 23, '_menu_item_menu_item_parent', '0'),
(145, 23, '_menu_item_object_id', '23'),
(146, 23, '_menu_item_object', 'custom'),
(147, 23, '_menu_item_target', ''),
(148, 23, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(149, 23, '_menu_item_xfn', ''),
(150, 23, '_menu_item_url', '#'),
(152, 24, '_menu_item_type', 'custom'),
(153, 24, '_menu_item_menu_item_parent', '0'),
(154, 24, '_menu_item_object_id', '24'),
(155, 24, '_menu_item_object', 'custom'),
(156, 24, '_menu_item_target', ''),
(157, 24, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(158, 24, '_menu_item_xfn', ''),
(159, 24, '_menu_item_url', '#'),
(161, 25, '_menu_item_type', 'custom'),
(162, 25, '_menu_item_menu_item_parent', '0'),
(163, 25, '_menu_item_object_id', '25'),
(164, 25, '_menu_item_object', 'custom'),
(165, 25, '_menu_item_target', ''),
(166, 25, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(167, 25, '_menu_item_xfn', ''),
(168, 25, '_menu_item_url', '#'),
(170, 26, '_menu_item_type', 'custom'),
(171, 26, '_menu_item_menu_item_parent', '0'),
(172, 26, '_menu_item_object_id', '26'),
(173, 26, '_menu_item_object', 'custom'),
(174, 26, '_menu_item_target', ''),
(175, 26, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(176, 26, '_menu_item_xfn', ''),
(177, 26, '_menu_item_url', '#'),
(179, 27, '_menu_item_type', 'custom'),
(180, 27, '_menu_item_menu_item_parent', '0'),
(181, 27, '_menu_item_object_id', '27'),
(182, 27, '_menu_item_object', 'custom'),
(183, 27, '_menu_item_target', ''),
(184, 27, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(185, 27, '_menu_item_xfn', ''),
(186, 27, '_menu_item_url', '#'),
(194, 33, '_edit_last', '1'),
(195, 33, '_edit_lock', '1510903431:1'),
(196, 43, '_edit_last', '1'),
(197, 43, '_edit_lock', '1510812731:1'),
(198, 58, '_edit_last', '1'),
(199, 58, '_edit_lock', '1510904411:1'),
(200, 59, '_edit_last', '1'),
(201, 59, '_edit_lock', '1510905830:1'),
(202, 73, '_edit_last', '1'),
(203, 73, '_edit_lock', '1510813913:1'),
(204, 75, '_edit_last', '1'),
(205, 75, '_wp_page_template', 'AccountantPage.php'),
(206, 75, '_edit_lock', '1510976369:1'),
(207, 43, '_wp_trash_meta_status', 'publish'),
(208, 43, '_wp_trash_meta_time', '1510814278'),
(209, 43, '_wp_desired_post_slug', 'registration'),
(210, 59, '_wp_page_template', 'EmployerPage.php'),
(211, 79, '_menu_item_type', 'post_type'),
(212, 79, '_menu_item_menu_item_parent', '0'),
(213, 79, '_menu_item_object_id', '5'),
(214, 79, '_menu_item_object', 'page'),
(215, 79, '_menu_item_target', ''),
(216, 79, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(217, 79, '_menu_item_xfn', ''),
(218, 79, '_menu_item_url', ''),
(219, 79, '_menu_item_orphaned', '1510927810'),
(220, 5, '_wp_page_template', 'home.php');

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
(1, 1, '2017-11-15 04:07:24', '2017-11-15 04:07:24', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2017-11-15 04:07:24', '2017-11-15 04:07:24', '', 0, 'http://localhost/quickbooks/?p=1', 0, 'post', '', 1),
(3, 1, '2017-11-15 04:07:44', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-11-15 04:07:44', '0000-00-00 00:00:00', '', 0, 'http://localhost/quickbooks/?p=3', 0, 'post', '', 0),
(5, 1, '2017-11-15 04:21:55', '2017-11-15 04:21:55', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2017-11-17 14:25:57', '2017-11-17 14:25:57', '', 0, 'http://localhost/quickbooks/?page_id=5', 0, 'page', '', 0),
(6, 1, '2017-11-15 04:21:55', '2017-11-15 04:21:55', '', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2017-11-15 04:21:55', '2017-11-15 04:21:55', '', 5, 'http://localhost/quickbooks/2017/11/15/5-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2017-11-15 06:17:52', '2017-11-15 06:17:52', ' ', '', '', 'publish', 'closed', 'closed', '', '8', '', '', '2017-11-15 06:18:08', '2017-11-15 06:18:08', '', 0, 'http://localhost/quickbooks/?p=8', 1, 'nav_menu_item', '', 0),
(9, 1, '2017-11-15 06:16:56', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-11-15 06:16:56', '0000-00-00 00:00:00', '', 0, 'http://localhost/quickbooks/?p=9', 1, 'nav_menu_item', '', 0),
(10, 1, '2017-11-15 06:17:52', '2017-11-15 06:17:52', '', 'About Quickbooks', '', 'publish', 'closed', 'closed', '', 'about-quickbooks', '', '', '2017-11-15 06:18:08', '2017-11-15 06:18:08', '', 0, 'http://localhost/quickbooks/?p=10', 2, 'nav_menu_item', '', 0),
(11, 1, '2017-11-15 06:17:52', '2017-11-15 06:17:52', '', 'Features', '', 'publish', 'closed', 'closed', '', 'features', '', '', '2017-11-15 06:18:08', '2017-11-15 06:18:08', '', 0, 'http://localhost/quickbooks/?p=11', 3, 'nav_menu_item', '', 0),
(12, 1, '2017-11-15 06:17:52', '2017-11-15 06:17:52', '', 'Our Company', '', 'publish', 'closed', 'closed', '', 'our-company', '', '', '2017-11-15 06:18:08', '2017-11-15 06:18:08', '', 0, 'http://localhost/quickbooks/?p=12', 4, 'nav_menu_item', '', 0),
(13, 1, '2017-11-15 06:17:52', '2017-11-15 06:17:52', '', 'Pricing', '', 'publish', 'closed', 'closed', '', 'pricing', '', '', '2017-11-15 06:18:08', '2017-11-15 06:18:08', '', 0, 'http://localhost/quickbooks/?p=13', 5, 'nav_menu_item', '', 0),
(14, 1, '2017-11-15 06:17:53', '2017-11-15 06:17:53', '', 'Find Accountant', '', 'publish', 'closed', 'closed', '', 'find-accountant', '', '', '2017-11-15 06:18:08', '2017-11-15 06:18:08', '', 0, 'http://localhost/quickbooks/?p=14', 6, 'nav_menu_item', '', 0),
(15, 1, '2017-11-16 03:50:53', '2017-11-16 03:50:53', '', 'Cloud Accounting', '', 'publish', 'closed', 'closed', '', 'cloud-accounting', '', '', '2017-11-16 04:38:22', '2017-11-16 04:38:22', '', 0, 'http://localhost/quickbooks/?p=15', 1, 'nav_menu_item', '', 0),
(16, 1, '2017-11-16 03:50:53', '2017-11-16 03:50:53', '', 'Invoicing', '', 'publish', 'closed', 'closed', '', 'invoicing', '', '', '2017-11-16 04:38:22', '2017-11-16 04:38:22', '', 0, 'http://localhost/quickbooks/?p=16', 2, 'nav_menu_item', '', 0),
(17, 1, '2017-11-16 03:50:53', '2017-11-16 03:50:53', '', 'Accounting Reports', '', 'publish', 'closed', 'closed', '', 'accounting-reports', '', '', '2017-11-16 04:38:22', '2017-11-16 04:38:22', '', 0, 'http://localhost/quickbooks/?p=17', 3, 'nav_menu_item', '', 0),
(18, 1, '2017-11-16 03:50:53', '2017-11-16 03:50:53', '', 'Inventory Management', '', 'publish', 'closed', 'closed', '', 'inventory-management', '', '', '2017-11-16 04:38:23', '2017-11-16 04:38:23', '', 0, 'http://localhost/quickbooks/?p=18', 4, 'nav_menu_item', '', 0),
(19, 1, '2017-11-16 03:50:54', '2017-11-16 03:50:54', '', 'Apps', '', 'publish', 'closed', 'closed', '', 'apps', '', '', '2017-11-16 04:38:23', '2017-11-16 04:38:23', '', 0, 'http://localhost/quickbooks/?p=19', 5, 'nav_menu_item', '', 0),
(20, 1, '2017-11-16 03:51:49', '2017-11-16 03:51:49', '', 'Grow Your Practice Online', '', 'publish', 'closed', 'closed', '', 'grow-your-practice-online', '', '', '2017-11-16 04:49:56', '2017-11-16 04:49:56', '', 0, 'http://localhost/quickbooks/?p=20', 1, 'nav_menu_item', '', 0),
(21, 1, '2017-11-16 03:52:38', '2017-11-16 03:52:38', '', 'QuickBooks Online Support', '', 'publish', 'closed', 'closed', '', 'quickbooks-online-support', '', '', '2017-11-16 04:42:22', '2017-11-16 04:42:22', '', 0, 'http://localhost/quickbooks/?p=21', 1, 'nav_menu_item', '', 0),
(22, 1, '2017-11-16 03:52:39', '2017-11-16 03:52:39', '', 'Contact QuickBooks Online Support', '', 'publish', 'closed', 'closed', '', 'contact-quickbooks-online-support', '', '', '2017-11-16 04:42:23', '2017-11-16 04:42:23', '', 0, 'http://localhost/quickbooks/?p=22', 2, 'nav_menu_item', '', 0),
(23, 1, '2017-11-16 03:52:39', '2017-11-16 03:52:39', '', 'QuickBooks Online FAQ', '', 'publish', 'closed', 'closed', '', 'quickbooks-online-faq', '', '', '2017-11-16 04:42:23', '2017-11-16 04:42:23', '', 0, 'http://localhost/quickbooks/?p=23', 3, 'nav_menu_item', '', 0),
(24, 1, '2017-11-16 03:53:11', '2017-11-16 03:53:11', '', 'Company Profile', '', 'publish', 'closed', 'closed', '', 'company-profile', '', '', '2017-11-16 04:43:11', '2017-11-16 04:43:11', '', 0, 'http://localhost/quickbooks/?p=24', 1, 'nav_menu_item', '', 0),
(25, 1, '2017-11-16 03:53:11', '2017-11-16 03:53:11', '', 'Company’s Website', '', 'publish', 'closed', 'closed', '', 'companys-website', '', '', '2017-11-16 04:43:11', '2017-11-16 04:43:11', '', 0, 'http://localhost/quickbooks/?p=25', 2, 'nav_menu_item', '', 0),
(26, 1, '2017-11-16 03:53:11', '2017-11-16 03:53:11', '', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2017-11-16 04:43:11', '2017-11-16 04:43:11', '', 0, 'http://localhost/quickbooks/?p=26', 3, 'nav_menu_item', '', 0),
(27, 1, '2017-11-16 03:53:38', '2017-11-16 03:53:38', '', 'Login', '', 'publish', 'closed', 'closed', '', 'login', '', '', '2017-11-16 04:44:29', '2017-11-16 04:44:29', '', 0, 'http://localhost/quickbooks/?p=27', 1, 'nav_menu_item', '', 0),
(28, 1, '2017-11-16 05:08:36', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-11-16 05:08:36', '0000-00-00 00:00:00', '', 0, 'http://localhost/quickbooks/?post_type=acf-field-group&p=28', 0, 'acf-field-group', '', 0),
(31, 1, '2017-11-16 05:44:38', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-11-16 05:44:38', '0000-00-00 00:00:00', '', 0, 'http://localhost/quickbooks/?post_type=acf-field-group&p=31', 0, 'acf-field-group', '', 0),
(32, 1, '2017-11-16 05:47:01', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-11-16 05:47:01', '0000-00-00 00:00:00', '', 0, 'http://localhost/quickbooks/?post_type=acf-field-group&p=32', 0, 'acf-field-group', '', 0),
(33, 1, '2017-11-16 05:54:57', '2017-11-16 05:54:57', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"75\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:14:{i:0;s:11:\"the_content\";i:1;s:7:\"excerpt\";i:2;s:13:\"custom_fields\";i:3;s:10:\"discussion\";i:4;s:8:\"comments\";i:5;s:9:\"revisions\";i:6;s:4:\"slug\";i:7;s:6:\"author\";i:8;s:6:\"format\";i:9;s:15:\"page_attributes\";i:10;s:14:\"featured_image\";i:11;s:10:\"categories\";i:12;s:4:\"tags\";i:13;s:15:\"send-trackbacks\";}s:11:\"description\";s:0:\"\";s:9:\"recaptcha\";i:0;}', 'Accountant', 'accountant', 'publish', 'closed', 'closed', '', 'group_5a0d274e8bb90', '', '', '2017-11-17 07:23:32', '2017-11-17 07:23:32', '', 0, 'http://localhost/quickbooks/?post_type=acf-field-group&#038;p=33', 0, 'acf-field-group', '', 0),
(34, 1, '2017-11-16 05:54:57', '2017-11-16 05:54:57', 'a:16:{s:4:\"type\";s:5:\"image\";s:5:\"value\";N;s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Upload Picture', 'upload_picture', 'publish', 'closed', 'closed', '', 'field_5a0d2753ae5ed', '', '', '2017-11-16 06:08:02', '2017-11-16 06:08:02', '', 33, 'http://localhost/quickbooks/?post_type=acf-field&#038;p=34', 0, 'acf-field', '', 0),
(35, 1, '2017-11-16 05:54:57', '2017-11-16 05:54:57', 'a:11:{s:4:\"type\";s:4:\"text\";s:5:\"value\";N;s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Last Name', 'last_name', 'publish', 'closed', 'closed', '', 'field_5a0d2796ae5ee', '', '', '2017-11-16 05:54:57', '2017-11-16 05:54:57', '', 33, 'http://localhost/quickbooks/?post_type=acf-field&p=35', 1, 'acf-field', '', 0),
(36, 1, '2017-11-16 05:54:57', '2017-11-16 05:54:57', 'a:11:{s:4:\"type\";s:4:\"text\";s:5:\"value\";N;s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Middle Name', 'middle_name', 'publish', 'closed', 'closed', '', 'field_5a0d279eae5ef', '', '', '2017-11-16 05:54:57', '2017-11-16 05:54:57', '', 33, 'http://localhost/quickbooks/?post_type=acf-field&p=36', 2, 'acf-field', '', 0),
(37, 1, '2017-11-16 05:54:57', '2017-11-16 05:54:57', 'a:11:{s:4:\"type\";s:4:\"text\";s:5:\"value\";N;s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'First Name', 'first_name', 'publish', 'closed', 'closed', '', 'field_5a0d27a6ae5f0', '', '', '2017-11-16 05:54:57', '2017-11-16 05:54:57', '', 33, 'http://localhost/quickbooks/?post_type=acf-field&p=37', 3, 'acf-field', '', 0),
(38, 1, '2017-11-16 05:54:57', '2017-11-16 05:54:57', 'a:14:{s:4:\"type\";s:6:\"select\";s:5:\"value\";N;s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:2:{s:4:\"Male\";s:4:\"Male\";s:6:\"Female\";s:6:\"Female\";}s:13:\"default_value\";a:0:{}s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:2:\"ui\";i:0;s:4:\"ajax\";i:0;s:13:\"return_format\";s:5:\"value\";s:11:\"placeholder\";s:0:\"\";}', 'Gender', 'gender', 'publish', 'closed', 'closed', '', 'field_5a0d27b4ae5f1', '', '', '2017-11-16 05:54:57', '2017-11-16 05:54:57', '', 33, 'http://localhost/quickbooks/?post_type=acf-field&p=38', 4, 'acf-field', '', 0),
(39, 1, '2017-11-16 05:54:57', '2017-11-16 05:54:57', 'a:9:{s:4:\"type\";s:11:\"date_picker\";s:5:\"value\";N;s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:5:\"d/m/Y\";s:13:\"return_format\";s:5:\"d/m/Y\";s:9:\"first_day\";i:0;}', 'Birthday', 'birthday', 'publish', 'closed', 'closed', '', 'field_5a0d27ccae5f2', '', '', '2017-11-16 05:54:57', '2017-11-16 05:54:57', '', 33, 'http://localhost/quickbooks/?post_type=acf-field&p=39', 5, 'acf-field', '', 0),
(40, 1, '2017-11-16 05:54:57', '2017-11-16 05:54:57', 'a:11:{s:4:\"type\";s:4:\"text\";s:5:\"value\";N;s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Address', 'address', 'publish', 'closed', 'closed', '', 'field_5a0d2806ae5f3', '', '', '2017-11-16 05:54:57', '2017-11-16 05:54:57', '', 33, 'http://localhost/quickbooks/?post_type=acf-field&p=40', 6, 'acf-field', '', 0),
(41, 1, '2017-11-16 05:54:57', '2017-11-16 05:54:57', 'a:11:{s:4:\"type\";s:8:\"repeater\";s:5:\"value\";N;s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Work Experience', 'work_experience', 'publish', 'closed', 'closed', '', 'field_5a0d280dae5f4', '', '', '2017-11-16 05:55:48', '2017-11-16 05:55:48', '', 33, 'http://localhost/quickbooks/?post_type=acf-field&#038;p=41', 7, 'acf-field', '', 0),
(43, 1, '2017-11-16 05:55:12', '2017-11-16 05:55:12', '', 'Accountant Registration', '', 'trash', 'closed', 'closed', '', 'registration__trashed', '', '', '2017-11-16 06:37:58', '2017-11-16 06:37:58', '', 0, 'http://localhost/quickbooks/?page_id=43', 0, 'page', '', 0),
(44, 1, '2017-11-16 05:55:12', '2017-11-16 05:55:12', '', 'Registration', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2017-11-16 05:55:12', '2017-11-16 05:55:12', '', 43, 'http://localhost/quickbooks/43-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2017-11-16 05:56:45', '2017-11-16 05:56:45', 'a:11:{s:4:\"type\";s:4:\"text\";s:5:\"value\";N;s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Company', 'company', 'publish', 'closed', 'closed', '', 'field_5a0d28732de2c', '', '', '2017-11-16 05:56:45', '2017-11-16 05:56:45', '', 41, 'http://localhost/quickbooks/?post_type=acf-field&p=45', 0, 'acf-field', '', 0),
(46, 1, '2017-11-16 05:56:45', '2017-11-16 05:56:45', 'a:11:{s:4:\"type\";s:4:\"text\";s:5:\"value\";N;s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Years of Experience', 'years_of_experience', 'publish', 'closed', 'closed', '', 'field_5a0d287e2de2d', '', '', '2017-11-16 05:56:45', '2017-11-16 05:56:45', '', 41, 'http://localhost/quickbooks/?post_type=acf-field&p=46', 1, 'acf-field', '', 0),
(47, 1, '2017-11-16 05:56:45', '2017-11-16 05:56:45', 'a:11:{s:4:\"type\";s:4:\"text\";s:5:\"value\";N;s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Position', 'position', 'publish', 'closed', 'closed', '', 'field_5a0d28902de2e', '', '', '2017-11-16 05:56:45', '2017-11-16 05:56:45', '', 41, 'http://localhost/quickbooks/?post_type=acf-field&p=47', 2, 'acf-field', '', 0),
(48, 1, '2017-11-16 05:59:19', '2017-11-16 05:59:19', 'a:8:{s:4:\"type\";s:5:\"group\";s:5:\"value\";N;s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Skills', 'skills', 'publish', 'closed', 'closed', '', 'field_5a0d291dd377f', '', '', '2017-11-16 06:03:06', '2017-11-16 06:03:06', '', 33, 'http://localhost/quickbooks/?post_type=acf-field&#038;p=48', 8, 'acf-field', '', 0),
(49, 1, '2017-11-16 06:01:50', '2017-11-16 06:01:50', 'a:13:{s:4:\"type\";s:8:\"checkbox\";s:5:\"value\";N;s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:9:{s:16:\"Account Analysis\";s:16:\"Account Analysis\";s:22:\"Account Reconciliation\";s:22:\"Account Reconciliation\";s:30:\"Accounting Information Systems\";s:30:\"Accounting Information Systems\";s:7:\"Payroll\";s:7:\"Payroll\";s:8:\"Taxation\";s:8:\"Taxation\";s:18:\"Financial Analysis\";s:18:\"Financial Analysis\";s:19:\"Financial Reporting\";s:19:\"Financial Reporting\";s:18:\"Financial Software\";s:18:\"Financial Software\";s:20:\"Financial Statements\";s:20:\"Financial Statements\";}s:12:\"allow_custom\";i:0;s:11:\"save_custom\";i:0;s:13:\"default_value\";a:0:{}s:6:\"layout\";s:8:\"vertical\";s:6:\"toggle\";i:0;s:13:\"return_format\";s:5:\"value\";s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_5a0d27b4ae5f1\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"Male\";}}}}', '', 'skills_check', 'publish', 'closed', 'closed', '', 'field_5a0d2982e5eea', '', '', '2017-11-16 06:03:06', '2017-11-16 06:03:06', '', 48, 'http://localhost/quickbooks/?post_type=acf-field&#038;p=49', 0, 'acf-field', '', 0),
(50, 1, '2017-11-16 06:01:50', '2017-11-16 06:01:50', 'a:11:{s:4:\"type\";s:8:\"textarea\";s:5:\"value\";N;s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Other', 'other_skills', 'publish', 'closed', 'closed', '', 'field_5a0d29c0e5eec', '', '', '2017-11-16 06:04:25', '2017-11-16 06:04:25', '', 48, 'http://localhost/quickbooks/?post_type=acf-field&#038;p=50', 2, 'acf-field', '', 0),
(51, 1, '2017-11-16 06:04:25', '2017-11-16 06:04:25', 'a:11:{s:4:\"type\";s:4:\"text\";s:5:\"value\";N;s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_5a0d2982e5eea\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:18:\"Financial Software\";}}}}', 'What kind of financial software?', 'what_kind_of_software', 'publish', 'closed', 'closed', '', 'field_5a0d2a46a905d', '', '', '2017-11-16 06:05:31', '2017-11-16 06:05:31', '', 48, 'http://localhost/quickbooks/?post_type=acf-field&#038;p=51', 1, 'acf-field', '', 0),
(52, 1, '2017-11-16 06:08:02', '2017-11-16 06:08:02', 'a:11:{s:4:\"type\";s:4:\"file\";s:5:\"value\";N;s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:8:\"min_size\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Upload Resume', 'upload_resume', 'publish', 'closed', 'closed', '', 'field_5a0d2ab4b76a9', '', '', '2017-11-16 07:01:35', '2017-11-16 07:01:35', '', 33, 'http://localhost/quickbooks/?post_type=acf-field&#038;p=52', 10, 'acf-field', '', 0),
(53, 1, '2017-11-16 06:08:02', '2017-11-16 06:08:02', 'a:11:{s:4:\"type\";s:4:\"text\";s:5:\"value\";N;s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Username', 'username', 'publish', 'closed', 'closed', '', 'field_5a0d2ad2b76aa', '', '', '2017-11-16 07:01:35', '2017-11-16 07:01:35', '', 33, 'http://localhost/quickbooks/?post_type=acf-field&#038;p=53', 9, 'acf-field', '', 0),
(56, 1, '2017-11-16 06:13:06', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-11-16 06:13:06', '0000-00-00 00:00:00', '', 0, 'http://localhost/quickbooks/?post_type=acf-field-group&p=56', 0, 'acf-field-group', '', 0),
(57, 1, '2017-11-16 06:14:32', '2017-11-16 06:14:32', '', 'Accountant Registration', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2017-11-16 06:14:32', '2017-11-16 06:14:32', '', 43, 'http://localhost/quickbooks/43-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2017-11-16 06:15:11', '2017-11-16 06:15:11', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"59\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:14:{i:0;s:11:\"the_content\";i:1;s:7:\"excerpt\";i:2;s:13:\"custom_fields\";i:3;s:10:\"discussion\";i:4;s:8:\"comments\";i:5;s:9:\"revisions\";i:6;s:4:\"slug\";i:7;s:6:\"author\";i:8;s:6:\"format\";i:9;s:15:\"page_attributes\";i:10;s:14:\"featured_image\";i:11;s:10:\"categories\";i:12;s:4:\"tags\";i:13;s:15:\"send-trackbacks\";}s:11:\"description\";s:0:\"\";s:9:\"recaptcha\";i:0;}', 'Employer', 'employer', 'publish', 'closed', 'closed', '', 'group_5a0d2ce18602f', '', '', '2017-11-17 07:31:10', '2017-11-17 07:31:10', '', 0, 'http://localhost/quickbooks/?post_type=acf-field-group&#038;p=58', 0, 'acf-field-group', '', 0),
(59, 1, '2017-11-16 06:15:25', '2017-11-16 06:15:25', '', 'Employer Registration', '', 'publish', 'closed', 'closed', '', 'employer-registration', '', '', '2017-11-17 07:29:11', '2017-11-17 07:29:11', '', 0, 'http://localhost/quickbooks/?page_id=59', 0, 'page', '', 0),
(60, 1, '2017-11-16 06:15:25', '2017-11-16 06:15:25', '', 'Employer Registration', '', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2017-11-16 06:15:25', '2017-11-16 06:15:25', '', 59, 'http://localhost/quickbooks/59-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2017-11-16 06:18:43', '2017-11-16 06:18:43', 'a:11:{s:4:\"type\";s:4:\"text\";s:5:\"value\";N;s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Company Name', 'company_name', 'publish', 'closed', 'closed', '', 'field_5a0d2d0fe66db', '', '', '2017-11-16 06:18:43', '2017-11-16 06:18:43', '', 58, 'http://localhost/quickbooks/?post_type=acf-field&p=61', 0, 'acf-field', '', 0),
(62, 1, '2017-11-16 06:18:43', '2017-11-16 06:18:43', 'a:14:{s:4:\"type\";s:6:\"select\";s:5:\"value\";N;s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:7:{s:19:\"Sole Proprietorship\";s:19:\"Sole Proprietorship\";s:11:\"Partnership\";s:11:\"Partnership\";s:19:\"Limited Partnership\";s:19:\"Limited Partnership\";s:11:\"Corporation\";s:11:\"Corporation\";s:25:\"Limited Liability Company\";s:25:\"Limited Liability Company\";s:22:\"Nonprofit Organization\";s:22:\"Nonprofit Organization\";s:11:\"Cooperative\";s:11:\"Cooperative\";}s:13:\"default_value\";a:0:{}s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:2:\"ui\";i:0;s:4:\"ajax\";i:0;s:13:\"return_format\";s:5:\"value\";s:11:\"placeholder\";s:0:\"\";}', 'Business Type', 'business_type', 'publish', 'closed', 'closed', '', 'field_5a0d2d18e66dc', '', '', '2017-11-16 06:18:43', '2017-11-16 06:18:43', '', 58, 'http://localhost/quickbooks/?post_type=acf-field&p=62', 1, 'acf-field', '', 0),
(63, 1, '2017-11-16 06:18:43', '2017-11-16 06:18:43', 'a:11:{s:4:\"type\";s:4:\"text\";s:5:\"value\";N;s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Services', 'services', 'publish', 'closed', 'closed', '', 'field_5a0d2d34e66dd', '', '', '2017-11-16 06:18:43', '2017-11-16 06:18:43', '', 58, 'http://localhost/quickbooks/?post_type=acf-field&p=63', 2, 'acf-field', '', 0),
(64, 1, '2017-11-16 06:18:43', '2017-11-16 06:18:43', 'a:8:{s:4:\"type\";s:5:\"group\";s:5:\"value\";N;s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Contact Information', 'contact_information', 'publish', 'closed', 'closed', '', 'field_5a0d2d3fe66de', '', '', '2017-11-16 06:18:43', '2017-11-16 06:18:43', '', 58, 'http://localhost/quickbooks/?post_type=acf-field&p=64', 3, 'acf-field', '', 0),
(65, 1, '2017-11-16 06:18:43', '2017-11-16 06:18:43', 'a:11:{s:4:\"type\";s:4:\"text\";s:5:\"value\";N;s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Name', 'name', 'publish', 'closed', 'closed', '', 'field_5a0d2d52e66e0', '', '', '2017-11-16 06:18:43', '2017-11-16 06:18:43', '', 64, 'http://localhost/quickbooks/?post_type=acf-field&p=65', 0, 'acf-field', '', 0),
(66, 1, '2017-11-16 06:18:44', '2017-11-16 06:18:44', 'a:11:{s:4:\"type\";s:4:\"text\";s:5:\"value\";N;s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Contact Number', 'contact_number', 'publish', 'closed', 'closed', '', 'field_5a0d2d5be66e1', '', '', '2017-11-16 06:18:44', '2017-11-16 06:18:44', '', 64, 'http://localhost/quickbooks/?post_type=acf-field&p=66', 1, 'acf-field', '', 0),
(67, 1, '2017-11-16 06:18:44', '2017-11-16 06:18:44', 'a:11:{s:4:\"type\";s:4:\"text\";s:5:\"value\";N;s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Email Address', 'email_address', 'publish', 'closed', 'closed', '', 'field_5a0d2d6ae66e2', '', '', '2017-11-16 06:18:44', '2017-11-16 06:18:44', '', 64, 'http://localhost/quickbooks/?post_type=acf-field&p=67', 2, 'acf-field', '', 0),
(68, 1, '2017-11-16 06:18:44', '2017-11-16 06:18:44', 'a:11:{s:4:\"type\";s:4:\"text\";s:5:\"value\";N;s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Business Address', 'business_address', 'publish', 'closed', 'closed', '', 'field_5a0d2d74e66e3', '', '', '2017-11-16 06:18:44', '2017-11-16 06:18:44', '', 64, 'http://localhost/quickbooks/?post_type=acf-field&p=68', 3, 'acf-field', '', 0),
(69, 1, '2017-11-16 06:18:44', '2017-11-16 06:18:44', 'a:8:{s:4:\"type\";s:5:\"group\";s:5:\"value\";N;s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Login Information', 'login_information', 'publish', 'closed', 'closed', '', 'field_5a0d2d86e66e4', '', '', '2017-11-16 06:18:44', '2017-11-16 06:18:44', '', 58, 'http://localhost/quickbooks/?post_type=acf-field&p=69', 4, 'acf-field', '', 0),
(70, 1, '2017-11-16 06:18:44', '2017-11-16 06:18:44', 'a:11:{s:4:\"type\";s:4:\"text\";s:5:\"value\";N;s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Username', 'username', 'publish', 'closed', 'closed', '', 'field_5a0d2d92e66e5', '', '', '2017-11-16 06:18:44', '2017-11-16 06:18:44', '', 69, 'http://localhost/quickbooks/?post_type=acf-field&p=70', 0, 'acf-field', '', 0),
(71, 1, '2017-11-16 06:18:44', '2017-11-16 06:18:44', 'a:11:{s:4:\"type\";s:4:\"text\";s:5:\"value\";N;s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Auto Generated Password', 'auto_generated_password', 'publish', 'closed', 'closed', '', 'field_5a0d2dabe66e6', '', '', '2017-11-16 06:18:44', '2017-11-16 06:18:44', '', 69, 'http://localhost/quickbooks/?post_type=acf-field&p=71', 1, 'acf-field', '', 0),
(72, 1, '2017-11-16 06:18:44', '2017-11-16 06:18:44', 'a:11:{s:4:\"type\";s:4:\"text\";s:5:\"value\";N;s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'What accountant you are looking for?', 'what_accountant_you_are_looking_for', 'publish', 'closed', 'closed', '', 'field_5a0d2db4e66e7', '', '', '2017-11-16 06:18:44', '2017-11-16 06:18:44', '', 69, 'http://localhost/quickbooks/?post_type=acf-field&p=72', 2, 'acf-field', '', 0),
(73, 1, '2017-11-16 06:21:43', '2017-11-16 06:21:43', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:9:\"recaptcha\";i:0;}', 'reCaptcha', 'recaptcha', 'publish', 'closed', 'closed', '', 'group_5a0d2e6b55a69', '', '', '2017-11-16 06:33:47', '2017-11-16 06:33:47', '', 0, 'http://localhost/quickbooks/?post_type=acf-field-group&#038;p=73', 0, 'acf-field-group', '', 0),
(74, 1, '2017-11-16 06:21:43', '2017-11-16 06:21:43', 'a:11:{s:4:\"type\";s:9:\"recaptcha\";s:5:\"value\";N;s:12:\"instructions\";s:87:\"<div class=\"g-recaptcha\" data-sitekey=\"6Le89DgUAAAAACkNjdetWT3MPS7XhcU8xA7u__7N\"></div>\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:8:\"site_key\";s:40:\"6Le89DgUAAAAACkNjdetWT3MPS7XhcU8xA7u__7N\";s:10:\"secret_key\";s:40:\"6Le89DgUAAAAAI2Ho2ssbL1tEzt2Xe0x6dGKuGNs\";s:8:\"re_theme\";s:5:\"light\";s:7:\"re_type\";s:5:\"image\";s:7:\"re_size\";s:6:\"normal\";}', 'reCaptcha', 'recaptcha', 'publish', 'closed', 'closed', '', 'field_5a0d2e7150ce0', '', '', '2017-11-16 06:26:08', '2017-11-16 06:26:08', '', 73, 'http://localhost/quickbooks/?post_type=acf-field&#038;p=74', 0, 'acf-field', '', 0),
(75, 1, '2017-11-16 06:30:32', '2017-11-16 06:30:32', '', 'Accountant Form Application', '', 'publish', 'closed', 'closed', '', 'accountant-form-application', '', '', '2017-11-16 06:30:32', '2017-11-16 06:30:32', '', 0, 'http://localhost/quickbooks/?page_id=75', 0, 'page', '', 0),
(76, 1, '2017-11-16 06:30:32', '2017-11-16 06:30:32', '', 'Accountant Form Application', '', 'inherit', 'closed', 'closed', '', '75-revision-v1', '', '', '2017-11-16 06:30:32', '2017-11-16 06:30:32', '', 75, 'http://localhost/quickbooks/75-revision-v1/', 0, 'revision', '', 0),
(77, 1, '2017-11-16 08:11:21', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-11-16 08:11:21', '0000-00-00 00:00:00', '', 0, 'http://localhost/quickbooks/?post_type=accountant&p=77', 0, 'accountant', '', 0),
(78, 1, '2017-11-17 07:28:33', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-11-17 07:28:33', '0000-00-00 00:00:00', '', 0, 'http://localhost/quickbooks/?page_id=78', 0, 'page', '', 0),
(79, 1, '2017-11-17 14:10:10', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-11-17 14:10:10', '0000-00-00 00:00:00', '', 0, 'http://localhost/quickbooks/?p=79', 1, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_responsive_menu`
--

CREATE TABLE `wp_responsive_menu` (
  `name` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_responsive_menu`
--

INSERT INTO `wp_responsive_menu` (`name`, `value`) VALUES
('breakpoint', '1123'),
('menu_to_hide', '.nav-menu'),
('menu_depth', '5'),
('menu_depth_side', 'left'),
('menu_depth_0', '5'),
('menu_depth_1', '10'),
('menu_depth_2', '15'),
('menu_depth_3', '20'),
('menu_depth_4', '25'),
('menu_depth_5', '30'),
('menu_depth_0_unit', '%'),
('menu_depth_1_unit', '%'),
('menu_depth_2_unit', '%'),
('menu_depth_3_unit', '%'),
('menu_depth_4_unit', '%'),
('menu_depth_5_unit', '%'),
('menu_to_use', 'top-menu'),
('theme_location_menu', ''),
('show_menu_on_page_load', ''),
('keyboard_shortcut_close_menu', '27,37'),
('keyboard_shortcut_open_menu', '32,39'),
('button_title', ''),
('button_title_open', ''),
('button_image', ''),
('button_image_alt', ''),
('button_image_when_clicked', ''),
('button_image_alt_when_clicked', ''),
('button_font', ''),
('button_font_icon', ''),
('button_font_icon_type', 'font-awesome'),
('button_font_icon_when_clicked', ''),
('button_font_icon_when_clicked_type', 'font-awesome'),
('button_trigger_type', 'click'),
('button_click_trigger', '#responsive-menu-button'),
('button_title_position', 'left'),
('button_title_line_height', '13'),
('button_title_line_height_unit', 'px'),
('button_background_colour', '#2ca01c'),
('button_background_colour_hover', '#393a3d'),
('button_background_colour_active', '#393a3d'),
('button_click_animation', 'boring'),
('button_line_colour', '#ffffff'),
('button_line_colour_hover', '#2ca01c'),
('button_line_colour_active', '#ffffff'),
('button_text_colour', '#ffffff'),
('button_transparent_background', 'off'),
('button_width', '35'),
('button_width_unit', 'px'),
('button_height', '35'),
('button_height_unit', 'px'),
('button_line_margin', '5'),
('button_line_margin_unit', 'px'),
('button_line_height', '5'),
('button_line_height_unit', 'px'),
('button_line_width', '25'),
('button_line_width_unit', 'px'),
('button_top', '5'),
('button_top_unit', 'px'),
('button_distance_from_side', '5'),
('button_distance_from_side_unit', '%'),
('button_left_or_right', 'right'),
('button_position_type', 'absolute'),
('button_push_with_animation', 'off'),
('button_font_size', '14'),
('button_font_size_unit', 'px'),
('animation_type', 'push'),
('page_wrapper', '#page'),
('animation_speed', '0.5'),
('transition_speed', '0.5'),
('active_arrow_shape', '▲'),
('inactive_arrow_shape', '▼'),
('active_arrow_image', ''),
('active_arrow_image_alt', ''),
('inactive_arrow_image', ''),
('inactive_arrow_image_alt', ''),
('active_arrow_font_icon', ''),
('active_arrow_font_icon_type', 'font-awesome'),
('inactive_arrow_font_icon', ''),
('inactive_arrow_font_icon_type', 'font-awesome'),
('arrow_position', 'right'),
('submenu_arrow_width', '40'),
('submenu_arrow_width_unit', 'px'),
('submenu_arrow_height', '40'),
('submenu_arrow_height_unit', 'px'),
('submenu_descriptions_on', ''),
('accordion_animation', 'off'),
('auto_expand_all_submenus', 'off'),
('auto_expand_current_submenus', 'off'),
('menu_background_colour', '#3f3f3f'),
('menu_container_background_colour', '#3f3f3f'),
('menu_background_image', ''),
('menu_item_background_colour', '#3f3f3f'),
('menu_item_background_hover_colour', '#2ca01c'),
('menu_item_border_colour', '#3f3f3f'),
('menu_item_border_colour_hover', '#2ca01c'),
('menu_title_background_colour', '#393a3d'),
('menu_title_background_hover_colour', '#212121'),
('menu_current_item_background_colour', '#2ca01c'),
('menu_current_item_background_hover_colour', '#3f3f3f'),
('menu_current_item_border_colour', '#2ca01c'),
('menu_current_item_border_hover_colour', '#2ca01c'),
('menu_title_colour', '#ffffff'),
('menu_title_hover_colour', '#ffffff'),
('menu_link_colour', '#ffffff'),
('menu_link_hover_colour', '#ffffff'),
('menu_current_link_colour', '#ffffff'),
('menu_current_link_hover_colour', '#ffffff'),
('menu_sub_arrow_border_colour', '#212121'),
('menu_sub_arrow_border_hover_colour', '#3f3f3f'),
('menu_sub_arrow_border_colour_active', '#212121'),
('menu_sub_arrow_border_hover_colour_active', '#3f3f3f'),
('menu_sub_arrow_background_colour', '#212121'),
('menu_sub_arrow_background_hover_colour', '#3f3f3f'),
('menu_sub_arrow_background_colour_active', '#212121'),
('menu_sub_arrow_background_hover_colour_active', '#3f3f3f'),
('menu_sub_arrow_shape_colour', '#ffffff'),
('menu_sub_arrow_shape_hover_colour', '#ffffff'),
('menu_sub_arrow_shape_colour_active', '#ffffff'),
('menu_sub_arrow_shape_hover_colour_active', '#ffffff'),
('menu_font', 'QuicksandMedium'),
('menu_font_size', '13'),
('menu_font_size_unit', 'px'),
('menu_title_font_size', '13'),
('menu_title_font_size_unit', 'px'),
('menu_text_alignment', 'center'),
('menu_links_height', '40'),
('menu_links_height_unit', 'px'),
('menu_border_width', '1'),
('menu_border_width_unit', 'px'),
('menu_minimum_width', ''),
('menu_minimum_width_unit', 'px'),
('menu_maximum_width', '300'),
('menu_maximum_width_unit', 'px'),
('menu_auto_height', 'off'),
('menu_adjust_for_wp_admin_bar', 'off'),
('menu_additional_content', ''),
('menu_additional_content_colour', '#ffffff'),
('menu_title', ''),
('menu_title_image', ''),
('menu_title_image_alt', ''),
('menu_title_font_icon', ''),
('menu_title_font_icon_type', 'font-awesome'),
('menu_appear_from', 'left'),
('menu_title_link', ''),
('menu_title_link_location', '_self'),
('menu_width', '48'),
('menu_width_unit', '%'),
('menu_close_on_link_click', 'on'),
('menu_close_on_body_click', 'on'),
('enable_touch_gestures', ''),
('menu_item_click_to_trigger_submenu', 'off'),
('menu_disable_scrolling', 'off'),
('menu_overlay', 'off'),
('menu_overlay_colour', 'rgba(0, 0, 0, 0.7)'),
('menu_font_icons', '{\"id\":[\"\"],\"icon\":[\"\"],\"type\":[\"\"]}'),
('menu_search_box_text', 'Search'),
('menu_search_box_text_colour', '#333333'),
('menu_search_box_border_colour', '#dadada'),
('menu_search_box_background_colour', '#ffffff'),
('menu_search_box_placeholder_colour', '#c7c7cd'),
('menu_word_wrap', 'off'),
('minify_scripts', 'off'),
('scripts_in_footer', 'off'),
('external_files', 'off'),
('remove_fontawesome', ''),
('remove_bootstrap', ''),
('shortcode', 'off'),
('mobile_only', 'off'),
('custom_walker', ''),
('custom_css', ''),
('use_desktop_menu', ''),
('desktop_menu_options', '{\"8\":{\"type\":\"standard\",\"width\":\"auto\",\"parent_background_colour\":\"\",\"parent_background_image\":\"\"},\"10\":{\"type\":\"standard\",\"width\":\"auto\",\"parent_background_colour\":\"\",\"parent_background_image\":\"\"},\"11\":{\"type\":\"standard\",\"width\":\"auto\",\"parent_background_colour\":\"\",\"parent_background_image\":\"\"},\"12\":{\"type\":\"standard\",\"width\":\"auto\",\"parent_background_colour\":\"\",\"parent_background_image\":\"\"},\"13\":{\"type\":\"standard\",\"width\":\"auto\",\"parent_background_colour\":\"\",\"parent_background_image\":\"\"},\"14\":{\"type\":\"standard\",\"width\":\"auto\",\"parent_background_colour\":\"\",\"parent_background_image\":\"\"}}'),
('desktop_menu_positioning', 'fixed'),
('desktop_menu_width', ''),
('desktop_menu_width_unit', '%'),
('desktop_menu_side', ''),
('single_menu_height', '80'),
('single_menu_height_unit', 'px'),
('single_menu_font', ''),
('single_menu_font_size', '14'),
('single_menu_font_size_unit', 'px'),
('single_menu_submenu_height', '40'),
('single_menu_submenu_height_unit', 'px'),
('single_menu_submenu_font', ''),
('single_menu_submenu_font_size', '12'),
('single_menu_submenu_font_size_unit', 'px'),
('single_menu_item_link_colour', '#000000'),
('single_menu_item_link_colour_hover', '#000000'),
('single_menu_item_background_colour', '#ffffff'),
('single_menu_item_background_colour_hover', '#ffffff'),
('single_menu_item_submenu_link_colour', '#000000'),
('single_menu_item_submenu_link_colour_hover', '#000000'),
('single_menu_item_submenu_background_colour', '#ffffff'),
('single_menu_item_submenu_background_colour_hover', '#ffffff'),
('use_header_bar', 'off'),
('header_bar_breakpoint', '800'),
('header_bar_logo', ''),
('header_bar_logo_alt', ''),
('header_bar_logo_link', ''),
('header_bar_title', ''),
('header_bar_html_content', ''),
('header_bar_height', '80'),
('header_bar_height_unit', 'px'),
('header_bar_font_size', '14'),
('header_bar_font_size_unit', 'px'),
('header_bar_font', ''),
('header_bar_background_color', '#ffffff'),
('header_bar_text_color', '#ffffff'),
('header_bar_position_type', 'fixed'),
('items_order', '{\"title\":\"on\",\"menu\":\"on\",\"search\":\"\",\"additional content\":\"on\"}'),
('header_bar_items_order', '{\"logo\":\"on\",\"title\":\"on\",\"search\":\"on\",\"html content\":\"on\"}'),
('fade_submenus', 'off'),
('fade_submenus_side', 'left'),
('fade_submenus_delay', '100'),
('fade_submenus_speed', '500'),
('use_slide_effect', 'off'),
('slide_effect_back_to_text', 'Back'),
('admin_theme', 'dark');

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
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Top Menu', 'top-menu', 0),
(3, 'Footer - Features &amp; Benefits', 'footer-features-benefits', 0),
(4, 'Footer - Accountant and Bookkeepers', 'footer-accountant-and-bookkeepers', 0),
(5, 'Footer - Learn &amp; Support', 'footer-learn-support', 0),
(6, 'Footer - About the Company', 'footer-about-the-company', 0),
(7, 'Footer - My Account', 'footer-my-account', 0);

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
(8, 2, 0),
(10, 2, 0),
(11, 2, 0),
(12, 2, 0),
(13, 2, 0),
(14, 2, 0),
(15, 3, 0),
(16, 3, 0),
(17, 3, 0),
(18, 3, 0),
(19, 3, 0),
(20, 4, 0),
(21, 5, 0),
(22, 5, 0),
(23, 5, 0),
(24, 6, 0),
(25, 6, 0),
(26, 6, 0),
(27, 7, 0);

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
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 6),
(3, 3, 'nav_menu', '', 0, 5),
(4, 4, 'nav_menu', '', 0, 1),
(5, 5, 'nav_menu', '', 0, 3),
(6, 6, 'nav_menu', '', 0, 3),
(7, 7, 'nav_menu', '', 0, 1);

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
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'locale', ''),
(11, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(12, 1, 'wp_user_level', '10'),
(13, 1, 'dismissed_wp_pointers', ''),
(14, 1, 'show_welcome_panel', '0'),
(15, 1, 'session_tokens', 'a:5:{s:64:\"30cdabbea8edfd52e4d2c6276e7e1110c7ce3361f2cc2593660eef025a763a56\";a:4:{s:10:\"expiration\";i:1510997394;s:2:\"ip\";s:13:\"58.69.149.143\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36\";s:5:\"login\";i:1510824594;}s:64:\"066c5504fdd2a93a716f7583141d3362c0a048039338154f82644d2a5940c029\";a:4:{s:10:\"expiration\";i:1511078622;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36\";s:5:\"login\";i:1510905822;}s:64:\"15d2e015aba4eba930192219b209d3b9fdb3b57c41f22f08ce92fc8437495404\";a:4:{s:10:\"expiration\";i:1511100043;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0) Gecko/20100101 Firefox/57.0\";s:5:\"login\";i:1510927243;}s:64:\"8d0b32349e75840e6d7d4d0536966a5040d95e96294a44594b78ee9e399923fe\";a:4:{s:10:\"expiration\";i:1511101381;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0) Gecko/20100101 Firefox/57.0\";s:5:\"login\";i:1510928581;}s:64:\"362fd6b3a3a2712b2195b17c4506f1cc495de5cb8744f3d52de45f36d4c89d74\";a:4:{s:10:\"expiration\";i:1511149286;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:57.0) Gecko/20100101 Firefox/57.0\";s:5:\"login\";i:1510976486;}}'),
(16, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(17, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:2:\"::\";}'),
(18, 1, 'meta-box-order_dashboard', 'a:4:{s:6:\"normal\";s:38:\"dashboard_right_now,dashboard_activity\";s:4:\"side\";s:39:\"dashboard_quick_press,dashboard_primary\";s:7:\"column3\";s:0:\"\";s:7:\"column4\";s:0:\"\";}'),
(19, 1, 'closedpostboxes_dashboard', 'a:0:{}'),
(20, 1, 'metaboxhidden_dashboard', 'a:4:{i:0;s:19:\"dashboard_right_now\";i:1;s:18:\"dashboard_activity\";i:2;s:21:\"dashboard_quick_press\";i:3;s:17:\"dashboard_primary\";}'),
(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}'),
(23, 1, 'nav_menu_recently_edited', '2'),
(24, 1, 'meta-box-order_acf-field-group', 'a:3:{s:4:\"side\";s:9:\"submitdiv\";s:6:\"normal\";s:80:\"acf-field-group-fields,acf-field-group-locations,acf-field-group-options,slugdiv\";s:8:\"advanced\";s:0:\"\";}'),
(25, 1, 'screen_layout_acf-field-group', '2'),
(26, 1, 'closedpostboxes_acf-field-group', 'a:0:{}'),
(27, 1, 'metaboxhidden_acf-field-group', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(28, 1, 'acf_user_settings', 'a:0:{}'),
(29, 1, 'closedpostboxes_page', 'a:0:{}'),
(30, 1, 'metaboxhidden_page', 'a:7:{i:0;s:12:\"postimagediv\";i:1;s:23:\"acf-group_5a0d274e8bb90\";i:2;s:23:\"acf-group_5a0d2e6b55a69\";i:3;s:16:\"commentstatusdiv\";i:4;s:11:\"commentsdiv\";i:5;s:7:\"slugdiv\";i:6;s:9:\"authordiv\";}');

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
(1, 'admin', '$P$BGFpRdbEi2Fkeimc.zG7x01ErDoE94/', 'admin', 'email@email.com', '', '2017-11-15 04:07:23', '', 0, 'admin');

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
-- Indexes for table `wp_responsive_menu`
--
ALTER TABLE `wp_responsive_menu`
  ADD PRIMARY KEY (`name`);

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
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=305;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=221;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
