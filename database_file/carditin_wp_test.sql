-- phpMyAdmin SQL Dump
-- version 4.0.10.7
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Oct 11, 2016 at 04:41 PM
-- Server version: 5.5.44-37.3
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `carditin_wp_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2016-10-11 04:48:35', '2016-10-11 04:48:35', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=184 ;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://cardit.in/test_server/wp_test', 'yes'),
(2, 'home', 'http://cardit.in/test_server/wp_test', 'yes'),
(3, 'blogname', 'Wp Test', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'lavdashottar@gmail.com', 'yes'),
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
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:108:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:13:"wp_product/?$";s:30:"index.php?post_type=wp_product";s:43:"wp_product/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?post_type=wp_product&feed=$matches[1]";s:38:"wp_product/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?post_type=wp_product&feed=$matches[1]";s:30:"wp_product/page/([0-9]{1,})/?$";s:48:"index.php?post_type=wp_product&paged=$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:38:"wp_product/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:48:"wp_product/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:68:"wp_product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:63:"wp_product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:63:"wp_product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:44:"wp_product/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:27:"wp_product/([^/]+)/embed/?$";s:43:"index.php?wp_product=$matches[1]&embed=true";s:31:"wp_product/([^/]+)/trackback/?$";s:37:"index.php?wp_product=$matches[1]&tb=1";s:51:"wp_product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?wp_product=$matches[1]&feed=$matches[2]";s:46:"wp_product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?wp_product=$matches[1]&feed=$matches[2]";s:39:"wp_product/([^/]+)/page/?([0-9]{1,})/?$";s:50:"index.php?wp_product=$matches[1]&paged=$matches[2]";s:46:"wp_product/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?wp_product=$matches[1]&cpage=$matches[2]";s:35:"wp_product/([^/]+)(?:/([0-9]+))?/?$";s:49:"index.php?wp_product=$matches[1]&page=$matches[2]";s:27:"wp_product/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"wp_product/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"wp_product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"wp_product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"wp_product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"wp_product/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:39:"index.php?&page_id=28&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'twentysixteen', 'yes'),
(41, 'stylesheet', 'wp-dev-test', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '37965', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
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
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:4:{i:1;a:0:{}i:2;a:3:{s:5:"title";s:7:"bottom1";s:4:"text";s:51:"[single_product_show product_id=''34'' bgcolor=''red'']";s:6:"filter";b:0;}i:3;a:3:{s:5:"title";s:8:"bottom 2";s:4:"text";s:51:"[single_product_show product_id=''34'' bgcolor=''red'']";s:6:"filter";b:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '28', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '37965', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'sidebars_widgets', 'a:5:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:1:{i:0;s:6:"text-2";}s:9:"sidebar-3";a:1:{i:0;s:6:"text-3";}s:13:"array_version";i:3;}', 'yes'),
(99, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'cron', 'a:4:{i:1476204517;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1476248609;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1476249104;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(115, '_transient_timeout_dash_88ae138922fe95674369b1cb3d215a2b', '1476204576', 'no'),
(112, 'can_compress_scripts', '0', 'no'),
(107, '_site_transient_update_core', 'O:8:"stdClass":3:{s:7:"updates";a:0:{}s:15:"version_checked";s:5:"4.6.1";s:12:"last_checked";i:1476161322;}', 'no'),
(113, '_transient_timeout_plugin_slugs', '1476247776', 'no'),
(114, '_transient_plugin_slugs', 'a:2:{i:0;s:19:"akismet/akismet.php";i:1;s:9:"hello.php";}', 'no'),
(108, '_site_transient_update_plugins', 'O:8:"stdClass":1:{s:12:"last_checked";i:1476161342;}', 'no'),
(150, '_site_transient_timeout_theme_roots', '1476188330', 'no'),
(151, '_site_transient_theme_roots', 'a:4:{s:13:"twentyfifteen";s:7:"/themes";s:14:"twentyfourteen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";s:11:"wp-dev-test";s:7:"/themes";}', 'no'),
(111, '_site_transient_update_themes', 'O:8:"stdClass":1:{s:12:"last_checked";i:1476186530;}', 'no'),
(116, '_transient_dash_88ae138922fe95674369b1cb3d215a2b', '<div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: cURL error 7: Failed to connect to wordpress.org port 80: Connection timed out</p></div><div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: cURL error 7: Failed to connect to planet.wordpress.org port 443: Connection timed out</p></div><div class="rss-widget"><ul></ul></div>', 'no'),
(118, 'theme_mods_twentysixteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1476162240;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(119, 'current_theme', 'wp dev test', 'yes'),
(120, 'theme_mods_wp-dev-test', 'a:3:{i:0;b:0;s:12:"header_image";s:13:"remove-header";s:18:"nav_menu_locations";a:1:{s:7:"primary";i:5;}}', 'yes'),
(121, 'theme_switched', '', 'yes'),
(134, 'category_children', 'a:0:{}', 'yes'),
(183, '_transient_is_multi_author', '0', 'yes'),
(157, 'nav_menu_options', 'a:1:{s:8:"auto_add";a:0:{}}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=134 ;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 5, '_edit_last', '1'),
(3, 5, '_edit_lock', '1476182616:1'),
(4, 6, '_wp_attached_file', '2016/10/black-tshirt.jpg'),
(5, 6, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:118;s:6:"height";i:118;s:4:"file";s:24:"2016/10/black-tshirt.jpg";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(6, 7, '_wp_attached_file', '2016/10/pink-tshirt.jpg'),
(7, 7, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:105;s:6:"height";i:124;s:4:"file";s:23:"2016/10/pink-tshirt.jpg";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(8, 8, '_wp_attached_file', '2016/10/red-blue-tshirt.jpg'),
(9, 8, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:120;s:6:"height";i:120;s:4:"file";s:27:"2016/10/red-blue-tshirt.jpg";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(10, 9, '_wp_attached_file', '2016/10/red-tshirt.jpg'),
(11, 9, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:134;s:6:"height";i:120;s:4:"file";s:22:"2016/10/red-tshirt.jpg";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(12, 10, '_wp_attached_file', '2016/10/white-tshirt.jpg'),
(13, 10, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:118;s:6:"height";i:118;s:4:"file";s:24:"2016/10/white-tshirt.jpg";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(14, 11, '_wp_attached_file', '2016/10/yellow-tshirt.jpg'),
(15, 11, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:122;s:6:"height";i:120;s:4:"file";s:25:"2016/10/yellow-tshirt.jpg";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(16, 5, '_thumbnail_id', '11'),
(18, 16, '_edit_last', '1'),
(19, 16, '_edit_lock', '1476169319:1'),
(20, 19, '_edit_last', '1'),
(21, 19, '_edit_lock', '1476169693:1'),
(22, 20, '_edit_last', '1'),
(23, 20, '_edit_lock', '1476170351:1'),
(24, 26, '_edit_last', '1'),
(25, 26, '_edit_lock', '1476169910:1'),
(26, 5, 'title_color', 'blue'),
(27, 27, '_edit_last', '1'),
(28, 27, '_edit_lock', '1476171441:1'),
(29, 5, 'my_meta_box_text', 'price 1 '),
(30, 5, 'my_meta_box_select', 'red'),
(31, 5, 'my_meta_box_check', 'on'),
(32, 5, 'my_meta_box_text_sale', 'sale price 2'),
(33, 5, 'my_meta_box_text_utube', 'GJmFG4ffJZU'),
(34, 5, 'my_meta_box_text_price', '65'),
(35, 5, 'my_meta_box_text_sale_price', '64'),
(36, 28, '_edit_last', '1'),
(37, 28, '_edit_lock', '1476177908:1'),
(38, 28, '_wp_page_template', 'template/template-home.php'),
(39, 30, '_edit_last', '1'),
(40, 30, '_edit_lock', '1476182611:1'),
(41, 30, '_oembed_9a56df33a05af7ae88c2c08e6d315ef7', '{{unknown}}'),
(42, 30, 'my_meta_box_text_price', '55'),
(43, 30, 'my_meta_box_text_sale_price', '54'),
(44, 30, 'my_meta_box_text_utube', 'GJmFG4ffJZU'),
(45, 30, 'my_meta_box_check', 'on'),
(46, 31, '_edit_last', '1'),
(47, 31, '_edit_lock', '1476182610:1'),
(48, 31, 'my_meta_box_text_price', '45'),
(49, 31, 'my_meta_box_text_sale_price', '44'),
(50, 31, 'my_meta_box_text_utube', 'GJmFG4ffJZU'),
(51, 31, 'my_meta_box_check', 'off'),
(52, 32, '_edit_last', '1'),
(53, 32, '_edit_lock', '1476196624:1'),
(54, 32, 'my_meta_box_text_price', '35'),
(55, 32, 'my_meta_box_text_sale_price', '34'),
(56, 32, 'my_meta_box_text_utube', 'GJmFG4ffJZU'),
(57, 32, 'my_meta_box_check', 'off'),
(58, 33, '_edit_last', '2'),
(59, 33, '_edit_lock', '1476199828:2'),
(60, 33, 'my_meta_box_text_price', '25'),
(61, 33, 'my_meta_box_text_sale_price', '24'),
(62, 33, 'my_meta_box_text_utube', 'GJmFG4ffJZU'),
(63, 33, 'my_meta_box_check', 'off'),
(64, 34, '_edit_last', '1'),
(65, 34, '_edit_lock', '1476198961:2'),
(66, 34, 'my_meta_box_text_price', '15'),
(67, 34, 'my_meta_box_text_sale_price', '14'),
(68, 34, 'my_meta_box_text_utube', 'GJmFG4ffJZU'),
(69, 34, 'my_meta_box_check', 'on'),
(70, 34, '_thumbnail_id', '10'),
(71, 33, '_thumbnail_id', '9'),
(72, 32, '_thumbnail_id', '8'),
(73, 31, '_thumbnail_id', '7'),
(74, 30, '_thumbnail_id', '9'),
(75, 43, '_edit_lock', '1476187102:1'),
(76, 43, '_edit_last', '1'),
(77, 1, '_edit_lock', '1476187193:1'),
(78, 1, '_edit_last', '1'),
(87, 47, '_edit_lock', '1476187432:1'),
(88, 48, '_edit_lock', '1476187624:1'),
(89, 49, '_wp_attached_file', '2016/10/froccalogosmall.gif'),
(90, 49, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:240;s:6:"height";i:88;s:4:"file";s:27:"2016/10/froccalogosmall.gif";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"froccalogosmall-150x88.gif";s:5:"width";i:150;s:6:"height";i:88;s:9:"mime-type";s:9:"image/gif";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(91, 50, '_wp_attached_file', '2016/10/cropped-froccalogosmall.gif'),
(92, 50, '_wp_attachment_context', 'custom-header'),
(93, 50, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1200;s:6:"height";i:440;s:4:"file";s:35:"2016/10/cropped-froccalogosmall.gif";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:35:"cropped-froccalogosmall-150x150.gif";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/gif";}s:6:"medium";a:4:{s:4:"file";s:35:"cropped-froccalogosmall-300x110.gif";s:5:"width";i:300;s:6:"height";i:110;s:9:"mime-type";s:9:"image/gif";}s:12:"medium_large";a:4:{s:4:"file";s:35:"cropped-froccalogosmall-768x282.gif";s:5:"width";i:768;s:6:"height";i:282;s:9:"mime-type";s:9:"image/gif";}s:5:"large";a:4:{s:4:"file";s:36:"cropped-froccalogosmall-1024x375.gif";s:5:"width";i:1024;s:6:"height";i:375;s:9:"mime-type";s:9:"image/gif";}s:14:"post-thumbnail";a:4:{s:4:"file";s:36:"cropped-froccalogosmall-1200x440.gif";s:5:"width";i:1200;s:6:"height";i:440;s:9:"mime-type";s:9:"image/gif";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(82, 1, '_xxxx_attached_image', '46'),
(83, 1, '_xxxx_attached_image_upload_feedback', ''),
(124, 80, '_menu_item_type', 'post_type'),
(125, 80, '_menu_item_menu_item_parent', '0'),
(126, 80, '_menu_item_object_id', '66'),
(127, 80, '_menu_item_object', 'page'),
(128, 80, '_menu_item_target', ''),
(129, 80, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(130, 80, '_menu_item_xfn', ''),
(131, 80, '_menu_item_url', ''),
(133, 33, 'gallery_data', 'a:1:{s:9:"image_url";a:2:{i:0;s:81:"http://cardit.in/test_server/wp_test/wp-content/uploads/2016/10/yellow-tshirt.jpg";i:1;s:79:"http://cardit.in/test_server/wp_test/wp-content/uploads/2016/10/pink-tshirt.jpg";}}'),
(94, 50, '_wp_attachment_custom_header_last_used_wp-dev-test', '1476187498'),
(95, 50, '_wp_attachment_is_custom_header', 'wp-dev-test'),
(96, 51, '_menu_item_type', 'post_type'),
(97, 51, '_menu_item_menu_item_parent', '0'),
(98, 51, '_menu_item_object_id', '28'),
(99, 51, '_menu_item_object', 'page'),
(100, 51, '_menu_item_target', ''),
(101, 51, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(102, 51, '_menu_item_xfn', ''),
(103, 51, '_menu_item_url', ''),
(104, 54, '_edit_lock', '1476187728:1'),
(105, 55, '_edit_lock', '1476187761:1'),
(106, 56, '_edit_lock', '1476187792:1'),
(107, 57, '_edit_lock', '1476187817:1'),
(108, 58, '_edit_lock', '1476187916:1'),
(109, 59, '_edit_lock', '1476187953:1'),
(110, 60, '_edit_lock', '1476187974:1'),
(111, 61, '_edit_lock', '1476188123:1'),
(112, 63, '_edit_lock', '1476188198:1'),
(113, 64, '_edit_lock', '1476188238:1'),
(114, 66, '_edit_lock', '1476197401:1'),
(115, 66, '_edit_last', '1'),
(116, 66, '_wp_page_template', 'template/template-product-shortcode.php'),
(117, 66, 'gallery_data', 'a:1:{s:9:"image_url";a:1:{i:0;s:83:"http://cardit.in/test_server/wp_test/wp-content/uploads/2016/10/froccalogosmall.gif";}}'),
(118, 68, '_edit_lock', '1476188328:1'),
(119, 69, '_edit_lock', '1476188346:1'),
(120, 70, '_edit_lock', '1476188387:1'),
(121, 72, '_wp_attached_file', '2016/10/Chrysanthemum.jpg'),
(122, 72, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:768;s:4:"file";s:25:"2016/10/Chrysanthemum.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"Chrysanthemum-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"Chrysanthemum-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:25:"Chrysanthemum-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:26:"Chrysanthemum-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:6:"Corbis";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1205503166";s:9:"copyright";s:32:"© Corbis.  All Rights Reserved.";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(123, 34, 'gallery_data', 'a:1:{s:9:"image_url";a:2:{i:0;s:89:"http://cardit.in/test_server/wp_test/wp-content/uploads/2016/10/Chrysanthemum-300x225.jpg";i:1;s:80:"http://cardit.in/test_server/wp_test/wp-content/uploads/2016/10/white-tshirt.jpg";}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=81 ;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2016-10-11 04:48:35', '2016-10-11 04:48:35', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2016-10-11 12:01:28', '2016-10-11 12:01:28', '', 0, 'http://cardit.in/test_server/wp_test/?p=1', 0, 'post', '', 1),
(2, 1, '2016-10-11 04:48:35', '2016-10-11 04:48:35', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://cardit.in/test_server/wp_test/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2016-10-11 04:48:35', '2016-10-11 04:48:35', '', 0, 'http://cardit.in/test_server/wp_test/?page_id=2', 0, 'page', '', 0),
(3, 1, '2016-10-11 04:49:11', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-10-11 04:49:11', '0000-00-00 00:00:00', '', 0, 'http://cardit.in/test_server/wp_test/?p=3', 0, 'post', '', 0),
(4, 1, '2016-10-11 04:49:17', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-10-11 04:49:17', '0000-00-00 00:00:00', '', 0, 'http://cardit.in/test_server/wp_test/?p=4', 0, 'post', '', 0),
(5, 1, '2016-10-11 05:25:29', '2016-10-11 05:25:29', 'Product 1 details. Product 1 details. Product 1 details. Product 1 details. Product 1 details. Product 1 details. Product 1 details. Product 1 details. Product 1 details. Product 1 details.', 'product 1', '', 'publish', 'closed', 'closed', '', 'product-1', '', '', '2016-10-11 10:45:48', '2016-10-11 10:45:48', '', 0, 'http://cardit.in/test_server/wp_test/?post_type=wp_product&#038;p=5', 0, 'wp_product', '', 0),
(6, 1, '2016-10-11 05:39:10', '2016-10-11 05:39:10', '', 'black-tshirt', '', 'inherit', 'open', 'closed', '', 'black-tshirt', '', '', '2016-10-11 05:39:10', '2016-10-11 05:39:10', '', 5, 'http://cardit.in/test_server/wp_test/wp-content/uploads/2016/10/black-tshirt.jpg', 0, 'attachment', 'image/jpeg', 0),
(7, 1, '2016-10-11 05:39:10', '2016-10-11 05:39:10', '', 'pink-tshirt', '', 'inherit', 'open', 'closed', '', 'pink-tshirt', '', '', '2016-10-11 05:39:10', '2016-10-11 05:39:10', '', 5, 'http://cardit.in/test_server/wp_test/wp-content/uploads/2016/10/pink-tshirt.jpg', 0, 'attachment', 'image/jpeg', 0),
(8, 1, '2016-10-11 05:39:10', '2016-10-11 05:39:10', '', 'red-blue-tshirt', '', 'inherit', 'open', 'closed', '', 'red-blue-tshirt', '', '', '2016-10-11 05:39:10', '2016-10-11 05:39:10', '', 5, 'http://cardit.in/test_server/wp_test/wp-content/uploads/2016/10/red-blue-tshirt.jpg', 0, 'attachment', 'image/jpeg', 0),
(9, 1, '2016-10-11 05:39:11', '2016-10-11 05:39:11', '', 'red-tshirt', '', 'inherit', 'open', 'closed', '', 'red-tshirt', '', '', '2016-10-11 05:39:11', '2016-10-11 05:39:11', '', 5, 'http://cardit.in/test_server/wp_test/wp-content/uploads/2016/10/red-tshirt.jpg', 0, 'attachment', 'image/jpeg', 0),
(10, 1, '2016-10-11 05:39:11', '2016-10-11 05:39:11', '', 'white-tshirt', '', 'inherit', 'open', 'closed', '', 'white-tshirt', '', '', '2016-10-11 05:39:11', '2016-10-11 05:39:11', '', 5, 'http://cardit.in/test_server/wp_test/wp-content/uploads/2016/10/white-tshirt.jpg', 0, 'attachment', 'image/jpeg', 0),
(11, 1, '2016-10-11 05:39:11', '2016-10-11 05:39:11', '', 'yellow-tshirt', '', 'inherit', 'open', 'closed', '', 'yellow-tshirt', '', '', '2016-10-11 05:39:11', '2016-10-11 05:39:11', '', 5, 'http://cardit.in/test_server/wp_test/wp-content/uploads/2016/10/yellow-tshirt.jpg', 0, 'attachment', 'image/jpeg', 0),
(12, 1, '2016-10-11 05:39:19', '2016-10-11 05:39:19', 'porduct 1 details.', 'product 1', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2016-10-11 05:39:19', '2016-10-11 05:39:19', '', 5, 'http://cardit.in/test_server/wp_test/5-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2016-10-11 05:58:15', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-10-11 05:58:15', '0000-00-00 00:00:00', '', 0, 'http://cardit.in/test_server/wp_test/?p=13', 0, 'post', '', 0),
(14, 1, '2016-10-11 05:58:56', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-10-11 05:58:56', '0000-00-00 00:00:00', '', 0, 'http://cardit.in/test_server/wp_test/?p=14', 0, 'post', '', 0),
(15, 1, '2016-10-11 06:06:35', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-10-11 06:06:35', '0000-00-00 00:00:00', '', 0, 'http://cardit.in/test_server/wp_test/?p=15', 0, 'post', '', 0),
(16, 1, '2016-10-11 07:01:58', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-10-11 07:01:58', '0000-00-00 00:00:00', '', 0, 'http://cardit.in/test_server/wp_test/?p=16', 0, 'post', '', 0),
(17, 1, '2016-10-11 07:02:16', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-10-11 07:02:16', '0000-00-00 00:00:00', '', 0, 'http://cardit.in/test_server/wp_test/?page_id=17', 0, 'page', '', 0),
(18, 1, '2016-10-11 07:04:10', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-10-11 07:04:10', '0000-00-00 00:00:00', '', 0, 'http://cardit.in/test_server/wp_test/?post_type=wp_product&p=18', 0, 'wp_product', '', 0),
(19, 1, '2016-10-11 07:08:12', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-10-11 07:08:12', '0000-00-00 00:00:00', '', 0, 'http://cardit.in/test_server/wp_test/?p=19', 0, 'post', '', 0),
(20, 1, '2016-10-11 07:08:26', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-10-11 07:08:26', '0000-00-00 00:00:00', '', 0, 'http://cardit.in/test_server/wp_test/?p=20', 0, 'post', '', 0),
(21, 1, '2016-10-11 07:10:39', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-10-11 07:10:39', '0000-00-00 00:00:00', '', 0, 'http://cardit.in/test_server/wp_test/?post_type=wp_product&p=21', 0, 'wp_product', '', 0),
(22, 1, '2016-10-11 07:11:26', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-10-11 07:11:26', '0000-00-00 00:00:00', '', 0, 'http://cardit.in/test_server/wp_test/?post_type=wp_product&p=22', 0, 'wp_product', '', 0),
(23, 1, '2016-10-11 07:11:51', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-10-11 07:11:51', '0000-00-00 00:00:00', '', 0, 'http://cardit.in/test_server/wp_test/?post_type=wp_product&p=23', 0, 'wp_product', '', 0),
(24, 1, '2016-10-11 07:13:20', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-10-11 07:13:20', '0000-00-00 00:00:00', '', 0, 'http://cardit.in/test_server/wp_test/?post_type=wp_product&p=24', 0, 'wp_product', '', 0),
(25, 1, '2016-10-11 07:13:33', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-10-11 07:13:33', '0000-00-00 00:00:00', '', 0, 'http://cardit.in/test_server/wp_test/?post_type=wp_product&p=25', 0, 'wp_product', '', 0),
(26, 1, '2016-10-11 07:14:06', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-10-11 07:14:06', '0000-00-00 00:00:00', '', 0, 'http://cardit.in/test_server/wp_test/?post_type=wp_product&p=26', 0, 'wp_product', '', 0),
(27, 1, '2016-10-11 07:37:19', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-10-11 07:37:19', '0000-00-00 00:00:00', '', 0, 'http://cardit.in/test_server/wp_test/?p=27', 0, 'post', '', 0),
(28, 1, '2016-10-11 08:33:35', '2016-10-11 08:33:35', '', 'Home Page', '', 'publish', 'closed', 'closed', '', 'home-page', '', '', '2016-10-11 08:33:35', '2016-10-11 08:33:35', '', 0, 'http://cardit.in/test_server/wp_test/?page_id=28', 0, 'page', '', 0),
(29, 1, '2016-10-11 08:33:35', '2016-10-11 08:33:35', '', 'Home Page', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2016-10-11 08:33:35', '2016-10-11 08:33:35', '', 28, 'http://cardit.in/test_server/wp_test/28-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2016-10-11 09:29:10', '2016-10-11 09:29:10', 'Product 2 details. Product 2 details. Product 2 details. Product 2 details. Product 2 details. Product 2 details. Product 2 details. Product 2 details. Product 2 details. Product 2 details. Product 2 details.', 'Product 2', '', 'publish', 'open', 'open', '', 'product-2', '', '', '2016-10-11 10:45:42', '2016-10-11 10:45:42', '', 0, 'http://cardit.in/test_server/wp_test/?post_type=wp_product&#038;p=30', 0, 'wp_product', '', 0),
(31, 1, '2016-10-11 09:30:10', '2016-10-11 09:30:10', 'Product 3 Details. Product 3 Details. Product 3 Details. Product 3 Details. Product 3 Details. Product 3 Details. Product 3 Details. Product 3 Details. Product 3 Details.', 'Product 3', '', 'publish', 'open', 'open', '', 'product-3', '', '', '2016-10-11 10:45:35', '2016-10-11 10:45:35', '', 0, 'http://cardit.in/test_server/wp_test/?post_type=wp_product&#038;p=31', 0, 'wp_product', '', 0),
(32, 1, '2016-10-11 09:31:47', '2016-10-11 09:31:47', 'Product 4 Details. Product 4 Details. Product 4 Details. Product 4 Details. Product 4 Details. Product 4 Details. Product 4 Details. Product 4 Details. Product 4 Details. Product 4 Details. Product 4 Details.', 'Product 4', '', 'publish', 'open', 'open', '', 'product-4', '', '', '2016-10-11 14:37:04', '2016-10-11 14:37:04', '', 0, 'http://cardit.in/test_server/wp_test/?post_type=wp_product&#038;p=32', 0, 'wp_product', '', 0),
(33, 1, '2016-10-11 09:32:22', '2016-10-11 09:32:22', 'Product 5 details. Product 5 details. Product 5 details. Product 5 details. Product 5 details. Product 5 details. Product 5 details. Product 5 details. Product 5 details. Product 5 details.', 'Product 5', '', 'publish', 'open', 'open', '', 'product-5', '', '', '2016-10-11 15:19:01', '2016-10-11 15:19:01', '', 0, 'http://cardit.in/test_server/wp_test/?post_type=wp_product&#038;p=33', 0, 'wp_product', '', 0),
(34, 1, '2016-10-11 09:32:52', '2016-10-11 09:32:52', 'Product 6 details. Product 6 details. Product 6 details. Product 6 details. Product 6 details. Product 6 details. Product 6 details. Product 6 details. Product 6 details. Product 6 details. Product 6 details. Product 6 details. Product 6 details.', 'Product 6', '', 'publish', 'open', 'open', '', 'product-6', '', '', '2016-10-11 12:49:16', '2016-10-11 12:49:16', '', 0, 'http://cardit.in/test_server/wp_test/?post_type=wp_product&#038;p=34', 0, 'wp_product', '', 0),
(35, 1, '2016-10-11 09:28:34', '2016-10-11 09:28:34', 'porduct 1 details.porduct 1 details.porduct 1 details.porduct 1 details.porduct 1 details.porduct 1 details.porduct 1 details.porduct 1 details.porduct 1 details.porduct 1 details.porduct 1 details.porduct 1 details.', 'product 1', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2016-10-11 09:28:34', '2016-10-11 09:28:34', '', 5, 'http://cardit.in/test_server/wp_test/5-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2016-10-11 09:29:10', '2016-10-11 09:29:10', 'Product 2 details.', 'Product 2', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2016-10-11 09:29:10', '2016-10-11 09:29:10', '', 30, 'http://cardit.in/test_server/wp_test/30-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2016-10-11 09:30:10', '2016-10-11 09:30:10', 'Product 3 Details. Product 3 Details. Product 3 Details. Product 3 Details. Product 3 Details. Product 3 Details. Product 3 Details. Product 3 Details. Product 3 Details.', 'Product 3', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2016-10-11 09:30:10', '2016-10-11 09:30:10', '', 31, 'http://cardit.in/test_server/wp_test/31-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2016-10-11 09:30:47', '2016-10-11 09:30:47', 'Product 1 details. Product 1 details. Product 1 details. Product 1 details. Product 1 details. Product 1 details. Product 1 details. Product 1 details. Product 1 details. Product 1 details.', 'product 1', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2016-10-11 09:30:47', '2016-10-11 09:30:47', '', 5, 'http://cardit.in/test_server/wp_test/5-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2016-10-11 09:30:59', '2016-10-11 09:30:59', 'Product 2 details. Product 2 details. Product 2 details. Product 2 details. Product 2 details. Product 2 details. Product 2 details. Product 2 details. Product 2 details. Product 2 details. Product 2 details.', 'Product 2', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2016-10-11 09:30:59', '2016-10-11 09:30:59', '', 30, 'http://cardit.in/test_server/wp_test/30-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2016-10-11 09:31:47', '2016-10-11 09:31:47', 'Product 4 Details. Product 4 Details. Product 4 Details. Product 4 Details. Product 4 Details. Product 4 Details. Product 4 Details. Product 4 Details. Product 4 Details. Product 4 Details. Product 4 Details.', 'Product 4', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2016-10-11 09:31:47', '2016-10-11 09:31:47', '', 32, 'http://cardit.in/test_server/wp_test/32-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2016-10-11 09:32:22', '2016-10-11 09:32:22', 'Product 5 details. Product 5 details. Product 5 details. Product 5 details. Product 5 details. Product 5 details. Product 5 details. Product 5 details. Product 5 details. Product 5 details.', 'Product 5', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2016-10-11 09:32:22', '2016-10-11 09:32:22', '', 33, 'http://cardit.in/test_server/wp_test/33-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2016-10-11 09:32:52', '2016-10-11 09:32:52', 'Product 6 details. Product 6 details. Product 6 details. Product 6 details. Product 6 details. Product 6 details. Product 6 details. Product 6 details. Product 6 details. Product 6 details. Product 6 details. Product 6 details. Product 6 details.', 'Product 6', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2016-10-11 09:32:52', '2016-10-11 09:32:52', '', 34, 'http://cardit.in/test_server/wp_test/34-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2016-10-11 12:00:18', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-10-11 12:00:18', '0000-00-00 00:00:00', '', 0, 'http://cardit.in/test_server/wp_test/?p=43', 0, 'post', '', 0),
(44, 1, '2016-10-11 12:01:00', '2016-10-11 12:01:00', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2016-10-11 12:01:00', '2016-10-11 12:01:00', '', 1, 'http://cardit.in/test_server/wp_test/1-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2016-10-11 12:02:18', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-10-11 12:02:18', '0000-00-00 00:00:00', '', 0, 'http://cardit.in/test_server/wp_test/?post_type=wp_product&p=47', 0, 'wp_product', '', 0),
(48, 1, '2016-10-11 12:03:53', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-10-11 12:03:53', '0000-00-00 00:00:00', '', 0, 'http://cardit.in/test_server/wp_test/?post_type=wp_product&p=48', 0, 'wp_product', '', 0),
(73, 1, '2016-10-11 13:03:10', '2016-10-11 13:03:10', '', 'Product Shortcode', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2016-10-11 13:03:10', '2016-10-11 13:03:10', '', 66, 'http://cardit.in/test_server/wp_test/66-revision-v1/', 0, 'revision', '', 0),
(49, 1, '2016-10-11 12:04:42', '2016-10-11 12:04:42', '', 'froccalogosmall', '', 'inherit', 'open', 'closed', '', 'froccalogosmall', '', '', '2016-10-11 12:04:42', '2016-10-11 12:04:42', '', 0, 'http://cardit.in/test_server/wp_test/wp-content/uploads/2016/10/froccalogosmall.gif', 0, 'attachment', 'image/gif', 0),
(50, 1, '2016-10-11 12:04:53', '2016-10-11 12:04:53', '', 'cropped-froccalogosmall.gif', '', 'inherit', 'open', 'closed', '', 'cropped-froccalogosmall-gif', '', '', '2016-10-11 12:04:53', '2016-10-11 12:04:53', '', 0, 'http://cardit.in/test_server/wp_test/wp-content/uploads/2016/10/cropped-froccalogosmall.gif', 0, 'attachment', 'image/gif', 0),
(51, 1, '2016-10-11 12:06:06', '2016-10-11 12:06:06', ' ', '', '', 'publish', 'closed', 'closed', '', '51', '', '', '2016-10-11 14:14:33', '2016-10-11 14:14:33', '', 0, 'http://cardit.in/test_server/wp_test/51/', 1, 'nav_menu_item', '', 0),
(52, 1, '2016-10-11 12:07:05', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-10-11 12:07:05', '0000-00-00 00:00:00', '', 0, 'http://cardit.in/test_server/wp_test/?post_type=wp_product&p=52', 0, 'wp_product', '', 0),
(53, 1, '2016-10-11 12:07:16', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-10-11 12:07:16', '0000-00-00 00:00:00', '', 0, 'http://cardit.in/test_server/wp_test/?post_type=wp_product&p=53', 0, 'wp_product', '', 0),
(54, 1, '2016-10-11 12:07:20', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-10-11 12:07:20', '0000-00-00 00:00:00', '', 0, 'http://cardit.in/test_server/wp_test/?p=54', 0, 'post', '', 0),
(55, 1, '2016-10-11 12:08:50', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-10-11 12:08:50', '0000-00-00 00:00:00', '', 0, 'http://cardit.in/test_server/wp_test/?p=55', 0, 'post', '', 0),
(56, 1, '2016-10-11 12:09:36', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-10-11 12:09:36', '0000-00-00 00:00:00', '', 0, 'http://cardit.in/test_server/wp_test/?p=56', 0, 'post', '', 0),
(57, 1, '2016-10-11 12:10:01', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-10-11 12:10:01', '0000-00-00 00:00:00', '', 0, 'http://cardit.in/test_server/wp_test/?p=57', 0, 'post', '', 0),
(58, 1, '2016-10-11 12:10:28', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-10-11 12:10:28', '0000-00-00 00:00:00', '', 0, 'http://cardit.in/test_server/wp_test/?p=58', 0, 'post', '', 0),
(59, 1, '2016-10-11 12:12:02', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-10-11 12:12:02', '0000-00-00 00:00:00', '', 0, 'http://cardit.in/test_server/wp_test/?page_id=59', 0, 'page', '', 0),
(60, 1, '2016-10-11 12:12:38', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-10-11 12:12:38', '0000-00-00 00:00:00', '', 0, 'http://cardit.in/test_server/wp_test/?page_id=60', 0, 'page', '', 0),
(61, 1, '2016-10-11 12:12:58', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-10-11 12:12:58', '0000-00-00 00:00:00', '', 0, 'http://cardit.in/test_server/wp_test/?page_id=61', 0, 'page', '', 0),
(62, 2, '2016-10-11 12:14:47', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-10-11 12:14:47', '0000-00-00 00:00:00', '', 0, 'http://cardit.in/test_server/wp_test/?p=62', 0, 'post', '', 0),
(63, 1, '2016-10-11 12:15:33', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-10-11 12:15:33', '0000-00-00 00:00:00', '', 0, 'http://cardit.in/test_server/wp_test/?page_id=63', 0, 'page', '', 0),
(64, 1, '2016-10-11 12:16:46', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-10-11 12:16:46', '0000-00-00 00:00:00', '', 0, 'http://cardit.in/test_server/wp_test/?page_id=64', 0, 'page', '', 0),
(65, 1, '2016-10-11 12:17:29', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-10-11 12:17:29', '0000-00-00 00:00:00', '', 0, 'http://cardit.in/test_server/wp_test/?page_id=65', 0, 'page', '', 0),
(66, 1, '2016-10-11 12:18:07', '2016-10-11 12:18:07', '[single_product_show product_id="34" bgcolor="red"]', 'Product Shortcode', '', 'publish', 'closed', 'closed', '', 'product-shortcode', '', '', '2016-10-11 14:14:15', '2016-10-11 14:14:15', '', 0, 'http://cardit.in/test_server/wp_test/?page_id=66', 0, 'page', '', 0),
(67, 1, '2016-10-11 12:18:07', '2016-10-11 12:18:07', '', 'ewrwerwerwwerwer', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2016-10-11 12:18:07', '2016-10-11 12:18:07', '', 66, 'http://cardit.in/test_server/wp_test/66-revision-v1/', 0, 'revision', '', 0),
(68, 1, '2016-10-11 12:18:32', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-10-11 12:18:32', '0000-00-00 00:00:00', '', 0, 'http://cardit.in/test_server/wp_test/?post_type=wp_product&p=68', 0, 'wp_product', '', 0),
(69, 1, '2016-10-11 12:18:50', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-10-11 12:18:50', '0000-00-00 00:00:00', '', 0, 'http://cardit.in/test_server/wp_test/?post_type=wp_product&p=69', 0, 'wp_product', '', 0),
(70, 1, '2016-10-11 12:19:14', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-10-11 12:19:14', '0000-00-00 00:00:00', '', 0, 'http://cardit.in/test_server/wp_test/?post_type=wp_product&p=70', 0, 'wp_product', '', 0),
(71, 1, '2016-10-11 12:19:56', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-10-11 12:19:56', '0000-00-00 00:00:00', '', 0, 'http://cardit.in/test_server/wp_test/?post_type=wp_product&p=71', 0, 'wp_product', '', 0),
(72, 1, '2016-10-11 12:20:42', '2016-10-11 12:20:42', '', 'chrysanthemum', '', 'inherit', 'open', 'closed', '', 'chrysanthemum', '', '', '2016-10-11 12:20:42', '2016-10-11 12:20:42', '', 0, 'http://cardit.in/test_server/wp_test/wp-content/uploads/2016/10/Chrysanthemum.jpg', 0, 'attachment', 'image/jpeg', 0),
(74, 1, '2016-10-11 13:04:23', '2016-10-11 13:04:23', '[single_product_show product_id="34" bgcolor="red"];', 'Product Shortcode', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2016-10-11 13:04:23', '2016-10-11 13:04:23', '', 66, 'http://cardit.in/test_server/wp_test/66-revision-v1/', 0, 'revision', '', 0),
(75, 1, '2016-10-11 13:04:39', '2016-10-11 13:04:39', '[single_product_show product_id="34" bgcolor="red"]', 'Product Shortcode', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2016-10-11 13:04:39', '2016-10-11 13:04:39', '', 66, 'http://cardit.in/test_server/wp_test/66-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2016-10-11 13:30:40', '2016-10-11 13:30:40', '[single_product_show product_id="34" bgcolor="red"];\n\n[]', 'Product Shortcode', '', 'inherit', 'closed', 'closed', '', '66-autosave-v1', '', '', '2016-10-11 13:30:40', '2016-10-11 13:30:40', '', 66, 'http://cardit.in/test_server/wp_test/66-autosave-v1/', 0, 'revision', '', 0),
(79, 1, '2016-10-11 14:14:15', '2016-10-11 14:14:15', '[single_product_show product_id="34" bgcolor="red"]', 'Product Shortcode', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2016-10-11 14:14:15', '2016-10-11 14:14:15', '', 66, 'http://cardit.in/test_server/wp_test/66-revision-v1/', 0, 'revision', '', 0),
(77, 1, '2016-10-11 13:30:46', '2016-10-11 13:30:46', '[single_product_show product_id="34" bgcolor="red"];\r\n\r\n[my-shortcode];', 'Product Shortcode', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2016-10-11 13:30:46', '2016-10-11 13:30:46', '', 66, 'http://cardit.in/test_server/wp_test/66-revision-v1/', 0, 'revision', '', 0),
(78, 1, '2016-10-11 13:31:30', '2016-10-11 13:31:30', '[single_product_show product_id="34" bgcolor="red"]\r\n\r\n[my-shortcode]', 'Product Shortcode', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2016-10-11 13:31:30', '2016-10-11 13:31:30', '', 66, 'http://cardit.in/test_server/wp_test/66-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2016-10-11 14:14:33', '2016-10-11 14:14:33', ' ', '', '', 'publish', 'closed', 'closed', '', '80', '', '', '2016-10-11 14:14:33', '2016-10-11 14:14:33', '', 0, 'http://cardit.in/test_server/wp_test/?p=80', 2, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'category 1', 'category-1', 0),
(3, 'category 2', 'category-2', 0),
(4, 'category 3', 'category-3', 0),
(5, 'primary menu', 'primary-menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(5, 2, 0),
(30, 2, 0),
(31, 3, 0),
(32, 3, 0),
(33, 4, 0),
(34, 4, 0),
(51, 5, 0),
(80, 5, 0),
(32, 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'category', '', 0, 2),
(3, 3, 'category', '', 0, 2),
(4, 4, 'category', '', 0, 3),
(5, 5, 'nav_menu', '', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=49 ;

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
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', ''),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'session_tokens', 'a:2:{s:64:"cb72b47f84497797cc0efdeefb716b121bc9ea1969283dba3aefb2536a35d301";a:4:{s:10:"expiration";i:1476334139;s:2:"ip";s:13:"114.143.69.29";s:2:"ua";s:109:"Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36";s:5:"login";i:1476161339;}s:64:"b57c49235be8a7b5d03a3516255067b370d6500b536c8e07099c7a7d881d57d5";a:4:{s:10:"expiration";i:1476360006;s:2:"ip";s:12:"103.42.194.6";s:2:"ua";s:109:"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36";s:5:"login";i:1476187206;}}'),
(15, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(16, 1, 'wp_user-settings', 'libraryContent=browse&editor=html'),
(17, 1, 'wp_user-settings-time', '1476191074'),
(18, 1, 'closedpostboxes_post', 'a:0:{}'),
(19, 1, 'metaboxhidden_post', 'a:0:{}'),
(38, 1, 'closedpostboxes_page', 'a:0:{}'),
(39, 1, 'metaboxhidden_page', 'a:3:{i:0;s:16:"commentstatusdiv";i:1;s:7:"slugdiv";i:2;s:9:"authordiv";}'),
(20, 1, 'closedpostboxes_wp_product', 'a:0:{}'),
(21, 1, 'metaboxhidden_wp_product', 'a:1:{i:0;s:7:"slugdiv";}'),
(22, 1, 'meta-box-order_wp_product', 'a:3:{s:4:"side";s:44:"submitdiv,formatdiv,categorydiv,postimagediv";s:6:"normal";s:99:"my-meta-box-id,postexcerpt,trackbacksdiv,post_gallery,postcustom,commentstatusdiv,slugdiv,authordiv";s:8:"advanced";s:0:"";}'),
(23, 1, 'screen_layout_wp_product', '2'),
(24, 2, 'nickname', 'wp-test'),
(25, 2, 'first_name', 'wp'),
(26, 2, 'last_name', 'test'),
(27, 2, 'description', ''),
(28, 2, 'rich_editing', 'true'),
(29, 2, 'comment_shortcuts', 'false'),
(30, 2, 'admin_color', 'fresh'),
(31, 2, 'use_ssl', '0'),
(32, 2, 'show_admin_bar_front', 'true'),
(33, 2, 'wp_capabilities', 'a:1:{s:6:"editor";b:1;}'),
(34, 2, 'wp_user_level', '7'),
(35, 2, 'dismissed_wp_pointers', ''),
(44, 2, 'session_tokens', 'a:1:{s:64:"5fbc887050ffce97c6eea7ed48ba97d4ada0f92bad450f0a9fb3855e9e592b43";a:4:{s:10:"expiration";i:1476370327;s:2:"ip";s:13:"114.143.69.29";s:2:"ua";s:109:"Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36";s:5:"login";i:1476197527;}}'),
(36, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(37, 1, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:24:"add-post-type-wp_product";i:1;s:12:"add-post_tag";i:2;s:15:"add-post_format";}'),
(41, 2, 'wp_dashboard_quick_press_last_post_id', '62'),
(43, 1, 'nav_menu_recently_edited', '5'),
(45, 2, 'closedpostboxes_wp_product', 'a:0:{}'),
(46, 2, 'metaboxhidden_wp_product', 'a:1:{i:0;s:7:"slugdiv";}'),
(47, 2, 'meta-box-order_wp_product', 'a:3:{s:4:"side";s:44:"submitdiv,formatdiv,categorydiv,postimagediv";s:6:"normal";s:111:"my-meta-box-id,post_gallery,postexcerpt,trackbacksdiv,postcustom,commentstatusdiv,commentsdiv,slugdiv,authordiv";s:8:"advanced";s:0:"";}'),
(48, 2, 'screen_layout_wp_product', '2');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BdNTo3UPci1koj4j1pedEThvt0.8SB0', 'admin', 'lavdashottar@gmail.com', '', '2016-10-11 04:48:35', '', 0, 'admin'),
(2, 'wp-test', '$P$BouMBoUqf8sferJfabQX4f5Qbq9wbW0', 'wp-test', 'wptest@arrechintu.com', '', '2016-10-11 10:47:54', '', 0, 'wp test');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
