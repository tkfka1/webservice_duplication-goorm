-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 192.168.1.103
-- 생성 시간: 23-03-07 07:20
-- 서버 버전: 10.8.6-MariaDB-log
-- PHP 버전: 8.1.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 데이터베이스: `wordpress2`
--

-- --------------------------------------------------------

--
-- 테이블 구조 `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- 테이블 구조 `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- 테이블의 덤프 데이터 `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, '워드프레스 댓글 관리 도구', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2023-01-17 15:22:46', '2023-01-17 06:22:46', '안녕하세요, 이것은 댓글입니다.\n댓글의 검토, 편집, 삭제를 시작하려면 관리자 화면의 댓글 화면으\n댓글 작성자의 아바타는 <a href=\"https://en.gravatar.com/\">그라바타</a>에서 전송됩니다.', 0, '1', '', 'comment', 0, 0),
(2, 1, 'test', 'test@test.com', '', '211.225.75.149', '2023-01-18 00:53:53', '2023-01-17 15:53:53', 'test213231', 0, '1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'comment', 0, 0),
(3, 5, 'awfeefa', 'ffakj@fdksaj.com', 'http://fa', '211.225.75.149', '2023-01-18 01:13:45', '2023-01-17 16:13:45', 'teatas', 0, '1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'comment', 0, 0),
(4, 5, 'groom1', 'kogo28@gmail.com', 'http://118.46.50.135/wordpress', '211.225.75.149', '2023-01-18 01:19:07', '2023-01-17 16:19:07', 'test', 0, '1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'comment', 0, 1),
(5, 5, 'groom1', 'kogo28@gmail.com', 'http://118.46.50.135/wordpress', '211.225.75.149', '2023-01-18 02:06:11', '2023-01-17 17:06:11', 'test312', 0, '1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'comment', 0, 1),
(6, 5, 'groom1', 'kogo28@gmail.com', 'http://118.46.50.135/wordpress', '211.225.75.149', '2023-01-18 02:49:50', '2023-01-17 17:49:50', 'test324', 0, '1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'comment', 0, 1),
(7, 1, 'test2', 'test2@test2.com', '', '218.152.75.190', '2023-01-18 10:56:46', '2023-01-18 01:56:46', 'test2', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'comment', 0, 0),
(8, 33, 'groom1', 'kogo28@gmail.com', 'http://118.46.50.135/wordpress', '121.164.237.206', '2023-01-18 15:12:00', '2023-01-18 06:12:00', 'test test test', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'comment', 0, 1);

-- --------------------------------------------------------

--
-- 테이블 구조 `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- 테이블 구조 `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- 테이블의 덤프 데이터 `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://118.46.50.135/wordpress', 'yes'),
(2, 'home', 'http://118.46.50.135/wordpress', 'yes'),
(3, 'blogname', 'CumulusGoorm 5조', 'yes'),
(4, 'blogdescription', '뭉게구름 5조에 오신 것을 환영합니다!', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'kogo28@gmail.com', 'yes'),
(7, 'start_of_week', '0', 'yes'),
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
(23, 'date_format', 'm/d/Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'Y년 F j일 g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '', 'yes'),
(29, 'rewrite_rules', '', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:41:\"http-https-remover/http-https-remover.php\";i:1;s:43:\"themeisle-companion/themeisle-companion.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:67:\"/nfs-storage/localhost/wordpress/wp-content/themes/hestia/style.css\";i:2;s:0:\"\";}', 'no'),
(40, 'template', 'hestia', 'yes'),
(41, 'stylesheet', 'hestia', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '53496', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '0', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'posts', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:3:{i:0;i:33;i:1;i:67;i:2;i:88;}', 'yes'),
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:1:{s:41:\"http-https-remover/http-https-remover.php\";a:2:{i:0;s:15:\"Account\\Account\";i:1;s:25:\"onUninstallPluginListener\";}}', 'no'),
(80, 'timezone_string', 'Asia/Seoul', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '0', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1689488564', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '53496', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'WPLANG', 'ko_KR', 'yes'),
(103, 'user_count', '1', 'no'),
(104, 'widget_block', 'a:15:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:152:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>최신 글</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:225:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>최신 댓글</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:147:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>보관함</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:152:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>카테고리</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}i:7;a:1:{s:7:\"content\";s:286:\"<!-- wp:image {\"id\":15,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://118.46.50.135/wordpress/wp-content/uploads/2023/01/제목을-입력해주세요_-001-724x1024.jpg\" alt=\"\" class=\"wp-image-15\"/></figure>\n<!-- /wp:image -->\";}i:8;a:1:{s:7:\"content\";s:349:\"<!-- wp:image {\"id\":16,\"width\":667,\"height\":943,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large is-resized\"><img src=\"http://118.46.50.135/wordpress/wp-content/uploads/2023/01/제목을-입력해주세요_-001-1-724x1024.jpg\" alt=\"\" class=\"wp-image-16\" width=\"667\" height=\"943\"/></figure>\n<!-- /wp:image -->\";}s:12:\"_multiwidget\";i:1;i:10;a:1:{s:7:\"content\";s:241:\"<!-- wp:list -->\n<ul><!-- wp:list-item -->\n<li>수업후기</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>TIF</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>스터디 일지</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->\";}i:14;a:1:{s:7:\"content\";s:52:\"<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\";}i:11;a:1:{s:7:\"content\";s:98:\"<!-- wp:list -->\n<ul><!-- wp:list-item -->\n<li></li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->\";}i:12;a:1:{s:7:\"content\";s:98:\"<!-- wp:list -->\n<ul><!-- wp:list-item -->\n<li></li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->\";}i:15;a:1:{s:7:\"content\";s:98:\"<!-- wp:list -->\n<ul><!-- wp:list-item -->\n<li></li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->\";}i:17;a:1:{s:7:\"content\";s:339:\"<!-- wp:columns {\"verticalAlignment\":null} -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"verticalAlignment\":\"center\",\"width\":\"100%\"} -->\n<div class=\"wp-block-column is-vertically-aligned-center\" style=\"flex-basis:100%\"><!-- wp:heading -->\n<h2>Today I Felt</h2>\n<!-- /wp:heading --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\";}i:19;a:1:{s:7:\"content\";s:66:\"<!-- wp:heading -->\n<h2>스터디 일지</h2>\n<!-- /wp:heading -->\";}}', 'yes'),
(105, 'sidebars_widgets', 'a:11:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:8:\"block-14\";i:1;s:8:\"block-11\";i:2;s:8:\"block-12\";i:3;s:8:\"block-15\";i:4;s:7:\"block-7\";}s:9:\"sidebar-1\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:17:\"subscribe-widgets\";a:0:{}s:19:\"sidebar-woocommerce\";a:1:{i:0;s:7:\"block-8\";}s:15:\"sidebar-top-bar\";a:0:{}s:14:\"header-sidebar\";a:1:{i:0;s:8:\"block-10\";}s:17:\"sidebar-big-title\";a:2:{i:0;s:8:\"block-17\";i:1;s:8:\"block-19\";}s:18:\"footer-one-widgets\";a:0:{}s:18:\"footer-two-widgets\";a:0:{}s:20:\"footer-three-widgets\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(106, 'cron', 'a:8:{i:1678108970;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1678126970;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1678126982;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1678170169;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1678170181;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1678170185;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1678256570;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(107, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(120, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(122, 'recovery_keys', 'a:0:{}', 'yes'),
(123, 'https_detection_errors', 'a:1:{s:20:\"https_request_failed\";a:1:{i:0;s:20:\"HTTPS 요청 실패.\";}}', 'yes'),
(143, 'can_compress_scripts', '1', 'no'),
(152, 'theme_mods_twentytwentythree', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1673944065;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(163, 'finished_updating_comment_type', '1', 'yes'),
(168, 'wp_calendar_block_has_published_posts', '1', 'yes'),
(188, 'recently_activated', 'a:0:{}', 'yes'),
(194, 'hestia_install', '1673943609', 'yes'),
(197, 'theme_mods_hestia', 'a:27:{s:28:\"ti_about_recommended_plugins\";a:1:{s:19:\"themeisle-companion\";s:7:\"visible\";}s:31:\"hestia_feature_thumbnail_buffer\";s:78:\"http://118.46.50.135/wordpress/wp-content/themes/hestia/assets/img/contact.jpg\";s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:3:{s:7:\"primary\";i:7;s:6:\"footer\";i:0;s:12:\"top-bar-menu\";i:6;}s:28:\"zerif_frontpage_was_imported\";s:9:\"not-zerif\";s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1673945860;s:4:\"data\";a:10:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:17:\"subscribe-widgets\";a:0:{}s:19:\"sidebar-woocommerce\";a:0:{}s:15:\"sidebar-top-bar\";a:0:{}s:14:\"header-sidebar\";a:0:{}s:17:\"sidebar-big-title\";a:0:{}s:18:\"footer-one-widgets\";a:0:{}s:18:\"footer-two-widgets\";a:0:{}s:20:\"footer-three-widgets\";a:0:{}}}s:24:\"hestia_feature_thumbnail\";s:78:\"http://118.46.50.135/wordpress/wp-content/themes/hestia/assets/img/contact.jpg\";s:26:\"hestia_page_sidebar_layout\";s:10:\"full-width\";s:22:\"hestia_big_title_title\";s:27:\"[goorm5조] 뭉게구름조\";s:24:\"hestia_testimonials_hide\";b:0;s:18:\"hestia_ribbon_hide\";b:1;s:18:\"hestia_slider_type\";s:8:\"parallax\";s:12:\"accent_color\";s:7:\"#1da9e5\";s:20:\"hestia_headings_font\";s:21:\"ZCOOL QingKe HuangYou\";s:19:\"hestia_font_subsets\";a:1:{i:0;s:8:\"cyrillic\";}s:23:\"hestia_header_titles_fs\";s:35:\"{\"desktop\":3,\"tablet\":0,\"mobile\":0}\";s:28:\"hestia_post_page_headings_fs\";d:0;s:27:\"hestia_post_page_content_fs\";d:0;s:19:\"hestia_big_title_fs\";d:0;s:28:\"hestia_buttons_border_radius\";d:3;s:26:\"hestia_blog_sidebar_layout\";s:13:\"sidebar-right\";s:27:\"hestia_enable_scroll_to_top\";b:0;s:17:\"hestia_about_hide\";b:0;s:30:\"hestia_featured_posts_category\";a:1:{i:0;s:1:\"3\";}s:23:\"hestia_clients_bar_hide\";b:0;s:30:\"hestia_alternative_blog_layout\";s:18:\"blog_normal_layout\";s:16:\"background_image\";s:91:\"http://118.46.50.135/wordpress/wp-content/uploads/2023/01/Cloud2-1.jpg-1-e1674024440185.jpg\";}', 'yes'),
(198, 'hestia_load_shim', 'no', 'yes'),
(215, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/ko_KR/wordpress-6.1.1.zip\";s:6:\"locale\";s:5:\"ko_KR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/ko_KR/wordpress-6.1.1.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.1.1\";s:7:\"version\";s:5:\"6.1.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1678108524;s:15:\"version_checked\";s:5:\"6.1.1\";s:12:\"translations\";a:0:{}}', 'no'),
(218, 'current_theme', 'Hestia', 'yes'),
(219, 'theme_mods_twentynineteen', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1673944696;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}}', 'yes'),
(220, 'theme_switched', '', 'yes'),
(233, 'hestia_had_elementor', 'no', 'yes'),
(234, 'hestia_time_activated', '1674004111', 'yes'),
(268, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1678108526;s:7:\"checked\";a:6:{s:5:\"ample\";s:5:\"1.3.4\";s:6:\"hestia\";s:6:\"3.0.27\";s:14:\"twentynineteen\";s:3:\"2.4\";s:15:\"twentytwentyone\";s:3:\"1.7\";s:17:\"twentytwentythree\";s:3:\"1.0\";s:15:\"twentytwentytwo\";s:3:\"1.3\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:6:{s:5:\"ample\";a:6:{s:5:\"theme\";s:5:\"ample\";s:11:\"new_version\";s:5:\"1.3.4\";s:3:\"url\";s:35:\"https://wordpress.org/themes/ample/\";s:7:\"package\";s:53:\"https://downloads.wordpress.org/theme/ample.1.3.4.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";s:3:\"5.6\";}s:6:\"hestia\";a:6:{s:5:\"theme\";s:6:\"hestia\";s:11:\"new_version\";s:6:\"3.0.27\";s:3:\"url\";s:36:\"https://wordpress.org/themes/hestia/\";s:7:\"package\";s:55:\"https://downloads.wordpress.org/theme/hestia.3.0.27.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";s:5:\"5.4.0\";}s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"2.4\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.2.4.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.7.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.0\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/twentytwentythree.1.0.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.3\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.3.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(270, 'theme_mods_ample', 'a:7:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:7:\"primary\";i:4;s:6:\"footer\";i:4;}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:21;s:16:\"header_textcolor\";s:6:\"0a0a0a\";s:16:\"background_color\";s:6:\"f4f4f4\";s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1674004111;s:4:\"data\";a:10:{s:19:\"wp_inactive_widgets\";a:1:{i:0;s:7:\"block-7\";}s:19:\"ample_right_sidebar\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:18:\"ample_left_sidebar\";a:0:{}s:22:\"ample_business_sidebar\";a:1:{i:0;s:7:\"block-8\";}s:28:\"ample_error_404_page_sidebar\";a:0:{}s:26:\"ample_contact_page_sidebar\";a:0:{}s:21:\"ample_footer_sidebar1\";a:0:{}s:21:\"ample_footer_sidebar2\";a:0:{}s:21:\"ample_footer_sidebar3\";a:0:{}s:21:\"ample_footer_sidebar4\";a:0:{}}}}', 'yes'),
(271, 'ample_upgrade_notice_start_time', '1673945860', 'yes'),
(273, 'widget_ample_service_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(274, 'widget_ample_portfolio_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(275, 'widget_ample_call_to_action_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(276, 'widget_ample_featured_posts_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(281, 'new_admin_email', 'kogo28@gmail.com', 'yes'),
(313, 'site_logo', '21', 'yes'),
(314, 'ample', 'a:1:{s:27:\"ample_show_header_logo_text\";s:4:\"both\";}', 'yes'),
(410, 'module_check_time', '1674004189', 'yes'),
(411, 'obfx_new_user', 'yes', 'yes'),
(412, 'themeisle_companion_install', '1674004189', 'yes'),
(536, 'dismissed-hestia_info_woocommerce', '1', 'yes'),
(639, 'ftp_credentials', 'a:3:{s:8:\"hostname\";s:13:\"118.46.50.135\";s:8:\"username\";s:6:\"groom1\";s:15:\"connection_type\";s:3:\"ftp\";}', 'yes'),
(661, 'nav_menu_options', 'a:1:{s:8:\"auto_add\";a:0:{}}', 'yes'),
(733, '_transient_health-check-site-status-result', '{\"good\":17,\"recommended\":4,\"critical\":0}', 'yes'),
(873, 'neve_upsell_off_exp', '1674099491', 'yes'),
(966, 'category_children', 'a:0:{}', 'yes'),
(1273, 'analyst_cache', 's:6:\"a:0:{}\";', 'yes'),
(1274, '_transient_jr-wp-admin-notice', '1', 'yes'),
(1275, 'httpHttpsRemovalOptions', 'a:5:{s:13:\"enableDisable\";s:1:\"1\";s:14:\"fixGoogleFonts\";s:1:\"1\";s:10:\"ignoreURLs\";s:0:\"\";s:11:\"ignoreAdmin\";s:1:\"1\";s:19:\"manageTasteWPModule\";s:1:\"1\";}', 'yes'),
(1276, 'jr_plugin_version', '3.2.3', 'yes'),
(1278, '_tifm_feature_enabled', 'enabled', 'yes'),
(1360, '_transient_timeout_themeisle_companion_all_languages', '1678448091', 'no'),
(1361, '_transient_themeisle_companion_all_languages', 'a:1:{s:12:\"translations\";a:12:{i:0;a:7:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:7:\"2.10.22\";s:7:\"updated\";s:19:\"2020-09-24 11:43:29\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:88:\"https://downloads.wordpress.org/translation/plugin/themeisle-companion/2.10.22/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}}i:1;a:7:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:7:\"2.10.22\";s:7:\"updated\";s:19:\"2021-12-25 05:47:06\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:88:\"https://downloads.wordpress.org/translation/plugin/themeisle-companion/2.10.22/es_CO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}}i:2;a:7:{s:8:\"language\";s:5:\"es_EC\";s:7:\"version\";s:7:\"2.10.22\";s:7:\"updated\";s:19:\"2021-12-25 05:47:24\";s:12:\"english_name\";s:17:\"Spanish (Ecuador)\";s:11:\"native_name\";s:19:\"Español de Ecuador\";s:7:\"package\";s:88:\"https://downloads.wordpress.org/translation/plugin/themeisle-companion/2.10.22/es_EC.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}}i:3;a:7:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:7:\"2.10.22\";s:7:\"updated\";s:19:\"2021-12-26 20:11:51\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:88:\"https://downloads.wordpress.org/translation/plugin/themeisle-companion/2.10.22/es_MX.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}}i:4;a:7:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:7:\"2.10.22\";s:7:\"updated\";s:19:\"2022-09-02 17:19:38\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:88:\"https://downloads.wordpress.org/translation/plugin/themeisle-companion/2.10.22/es_ES.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}}i:5;a:7:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:7:\"2.10.22\";s:7:\"updated\";s:19:\"2022-06-12 20:21:03\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:88:\"https://downloads.wordpress.org/translation/plugin/themeisle-companion/2.10.22/es_VE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}}i:6;a:7:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:7:\"2.10.22\";s:7:\"updated\";s:19:\"2022-09-17 19:47:31\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:88:\"https://downloads.wordpress.org/translation/plugin/themeisle-companion/2.10.22/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}}i:7;a:7:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:7:\"2.10.22\";s:7:\"updated\";s:19:\"2022-07-18 10:12:33\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:88:\"https://downloads.wordpress.org/translation/plugin/themeisle-companion/2.10.22/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}}i:8;a:7:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:7:\"2.10.22\";s:7:\"updated\";s:19:\"2023-01-20 12:57:58\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:88:\"https://downloads.wordpress.org/translation/plugin/themeisle-companion/2.10.22/nl_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}}i:9;a:7:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:7:\"2.10.22\";s:7:\"updated\";s:19:\"2022-11-16 09:05:14\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:88:\"https://downloads.wordpress.org/translation/plugin/themeisle-companion/2.10.22/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}}i:10;a:7:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:7:\"2.10.22\";s:7:\"updated\";s:19:\"2022-11-21 16:34:38\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:88:\"https://downloads.wordpress.org/translation/plugin/themeisle-companion/2.10.22/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}}i:11;a:7:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:7:\"2.10.22\";s:7:\"updated\";s:19:\"2022-02-17 10:44:51\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:88:\"https://downloads.wordpress.org/translation/plugin/themeisle-companion/2.10.22/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}}}}', 'no'),
(1362, '_transient_timeout_hestia_all_languages', '1678448092', 'no'),
(1363, '_transient_hestia_all_languages', 'a:1:{s:12:\"translations\";a:51:{i:0;a:7:{s:8:\"language\";s:2:\"af\";s:7:\"version\";s:6:\"3.0.27\";s:7:\"updated\";s:19:\"2020-09-16 20:01:08\";s:12:\"english_name\";s:9:\"Afrikaans\";s:11:\"native_name\";s:9:\"Afrikaans\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/translation/theme/hestia/3.0.27/af.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"af\";i:2;s:3:\"afr\";}}i:1;a:7:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:6:\"3.0.27\";s:7:\"updated\";s:19:\"2022-10-12 13:49:54\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/translation/theme/hestia/3.0.27/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}}i:2;a:7:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:6:\"3.0.27\";s:7:\"updated\";s:19:\"2019-08-14 07:21:53\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/theme/hestia/3.0.27/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}}i:3;a:7:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:6:\"3.0.27\";s:7:\"updated\";s:19:\"2022-09-06 11:23:56\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/translation/theme/hestia/3.0.27/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}}i:4;a:7:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:6:\"3.0.27\";s:7:\"updated\";s:19:\"2022-12-26 16:36:11\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/theme/hestia/3.0.27/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}}i:5;a:7:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:6:\"3.0.27\";s:7:\"updated\";s:19:\"2022-07-29 19:16:44\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/theme/hestia/3.0.27/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}}i:6;a:7:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:6:\"3.0.27\";s:7:\"updated\";s:19:\"2023-02-22 15:27:04\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:80:\"https://downloads.wordpress.org/translation/theme/hestia/3.0.27/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}}i:7;a:7:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:6:\"3.0.27\";s:7:\"updated\";s:19:\"2020-04-06 18:09:13\";s:12:\"english_name\";s:30:\"German (Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:82:\"https://downloads.wordpress.org/translation/theme/hestia/3.0.27/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}}i:8;a:7:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:6:\"3.0.27\";s:7:\"updated\";s:19:\"2023-02-22 15:28:11\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/theme/hestia/3.0.27/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}}i:9;a:7:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:6:\"3.0.27\";s:7:\"updated\";s:19:\"2020-04-06 18:08:55\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/theme/hestia/3.0.27/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}}i:10;a:7:{s:8:\"language\";s:5:\"de_AT\";s:7:\"version\";s:6:\"3.0.27\";s:7:\"updated\";s:19:\"2020-04-06 18:08:23\";s:12:\"english_name\";s:16:\"German (Austria)\";s:11:\"native_name\";s:21:\"Deutsch (Österreich)\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/theme/hestia/3.0.27/de_AT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}}i:11;a:7:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:6:\"3.0.27\";s:7:\"updated\";s:19:\"2021-09-15 08:57:01\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/translation/theme/hestia/3.0.27/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}}i:12;a:7:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:6:\"3.0.27\";s:7:\"updated\";s:19:\"2022-04-01 12:00:06\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/theme/hestia/3.0.27/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}}i:13;a:7:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:6:\"3.0.27\";s:7:\"updated\";s:19:\"2020-06-17 11:45:30\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/theme/hestia/3.0.27/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}}i:14;a:7:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:6:\"3.0.27\";s:7:\"updated\";s:19:\"2019-07-24 23:01:38\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/theme/hestia/3.0.27/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}}i:15;a:7:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:6:\"3.0.27\";s:7:\"updated\";s:19:\"2021-03-14 00:42:55\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/theme/hestia/3.0.27/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}}i:16;a:7:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:6:\"3.0.27\";s:7:\"updated\";s:19:\"2019-08-14 11:23:48\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/theme/hestia/3.0.27/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}}i:17;a:7:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:6:\"3.0.27\";s:7:\"updated\";s:19:\"2022-07-06 15:06:36\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/theme/hestia/3.0.27/es_MX.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}}i:18;a:7:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:6:\"3.0.27\";s:7:\"updated\";s:19:\"2023-01-01 19:29:45\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/theme/hestia/3.0.27/es_ES.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}}i:19;a:7:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:6:\"3.0.27\";s:7:\"updated\";s:19:\"2019-04-15 15:28:52\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/theme/hestia/3.0.27/es_PE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}}i:20;a:7:{s:8:\"language\";s:5:\"es_EC\";s:7:\"version\";s:6:\"3.0.27\";s:7:\"updated\";s:19:\"2022-07-01 17:09:25\";s:12:\"english_name\";s:17:\"Spanish (Ecuador)\";s:11:\"native_name\";s:19:\"Español de Ecuador\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/theme/hestia/3.0.27/es_EC.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}}i:21;a:7:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:6:\"3.0.27\";s:7:\"updated\";s:19:\"2021-02-21 04:12:05\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/theme/hestia/3.0.27/es_AR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}}i:22;a:7:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:6:\"3.0.27\";s:7:\"updated\";s:19:\"2022-07-01 17:09:06\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/theme/hestia/3.0.27/es_CO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}}i:23;a:7:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:6:\"3.0.27\";s:7:\"updated\";s:19:\"2022-07-01 17:09:44\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/theme/hestia/3.0.27/es_VE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}}i:24;a:7:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:6:\"3.0.27\";s:7:\"updated\";s:19:\"2019-11-15 16:05:58\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/theme/hestia/3.0.27/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}}i:25;a:7:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:6:\"3.0.27\";s:7:\"updated\";s:19:\"2019-07-24 14:13:37\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/translation/theme/hestia/3.0.27/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}}i:26;a:7:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:6:\"3.0.27\";s:7:\"updated\";s:19:\"2019-07-25 06:21:46\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/theme/hestia/3.0.27/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}}i:27;a:7:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:6:\"3.0.27\";s:7:\"updated\";s:19:\"2020-11-22 00:31:36\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/theme/hestia/3.0.27/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}}i:28;a:7:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:6:\"3.0.27\";s:7:\"updated\";s:19:\"2023-01-05 00:58:58\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/theme/hestia/3.0.27/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}}i:29;a:7:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:6:\"3.0.27\";s:7:\"updated\";s:19:\"2019-09-07 15:48:28\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/theme/hestia/3.0.27/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}}i:30;a:7:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:6:\"3.0.27\";s:7:\"updated\";s:19:\"2022-12-16 13:42:26\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/theme/hestia/3.0.27/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}}i:31;a:7:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:6:\"3.0.27\";s:7:\"updated\";s:19:\"2019-03-14 03:21:33\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/theme/hestia/3.0.27/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}}i:32;a:7:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:6:\"3.0.27\";s:7:\"updated\";s:19:\"2023-01-03 21:24:59\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/theme/hestia/3.0.27/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}}i:33;a:7:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:6:\"3.0.27\";s:7:\"updated\";s:19:\"2023-01-03 01:55:16\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/translation/theme/hestia/3.0.27/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}}i:34;a:7:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:6:\"3.0.27\";s:7:\"updated\";s:19:\"2020-08-03 05:56:44\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/theme/hestia/3.0.27/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}}i:35;a:7:{s:8:\"language\";s:2:\"mr\";s:7:\"version\";s:6:\"3.0.27\";s:7:\"updated\";s:19:\"2018-11-12 07:35:23\";s:12:\"english_name\";s:7:\"Marathi\";s:11:\"native_name\";s:15:\"मराठी\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/translation/theme/hestia/3.0.27/mr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mr\";i:2;s:3:\"mar\";}}i:36;a:7:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:6:\"3.0.27\";s:7:\"updated\";s:19:\"2021-10-11 11:08:23\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/theme/hestia/3.0.27/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}}i:37;a:7:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:6:\"3.0.27\";s:7:\"updated\";s:19:\"2023-02-13 10:24:06\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/theme/hestia/3.0.27/nl_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}}i:38;a:7:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:6:\"3.0.27\";s:7:\"updated\";s:19:\"2023-01-14 10:53:31\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/theme/hestia/3.0.27/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}}i:39;a:7:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:6:\"3.0.27\";s:7:\"updated\";s:19:\"2022-07-05 10:17:26\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/theme/hestia/3.0.27/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}}i:40;a:7:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:6:\"3.0.27\";s:7:\"updated\";s:19:\"2018-12-19 12:52:09\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/theme/hestia/3.0.27/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}}i:41;a:7:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:6:\"3.0.27\";s:7:\"updated\";s:19:\"2019-10-09 22:04:35\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/theme/hestia/3.0.27/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}}i:42;a:7:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:6:\"3.0.27\";s:7:\"updated\";s:19:\"2023-01-02 18:04:45\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/theme/hestia/3.0.27/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}}i:43;a:7:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:6:\"3.0.27\";s:7:\"updated\";s:19:\"2023-02-20 18:29:16\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/theme/hestia/3.0.27/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}}i:44;a:7:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:6:\"3.0.27\";s:7:\"updated\";s:19:\"2019-08-01 04:47:12\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/theme/hestia/3.0.27/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}}i:45;a:7:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:6:\"3.0.27\";s:7:\"updated\";s:19:\"2020-04-02 16:37:40\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/theme/hestia/3.0.27/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}}i:46;a:7:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:6:\"3.0.27\";s:7:\"updated\";s:19:\"2022-12-25 11:04:15\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/theme/hestia/3.0.27/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}}i:47;a:7:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:6:\"3.0.27\";s:7:\"updated\";s:19:\"2019-08-01 15:09:33\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/theme/hestia/3.0.27/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}}i:48;a:7:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:6:\"3.0.27\";s:7:\"updated\";s:19:\"2020-11-15 13:33:33\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/translation/theme/hestia/3.0.27/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}}i:49;a:7:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:6:\"3.0.27\";s:7:\"updated\";s:19:\"2019-12-03 06:32:28\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/translation/theme/hestia/3.0.27/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}}i:50;a:7:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:6:\"3.0.27\";s:7:\"updated\";s:19:\"2020-11-17 12:01:13\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/theme/hestia/3.0.27/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}}}}', 'no'),
(1421, '_site_transient_timeout_theme_roots', '1678110325', 'no'),
(1422, '_site_transient_theme_roots', 'a:6:{s:5:\"ample\";s:7:\"/themes\";s:6:\"hestia\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1423, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1678108529;s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"5.0.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.5.0.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=2818463\";s:2:\"1x\";s:60:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=2818463\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";s:6:\"tested\";s:5:\"6.1.1\";s:12:\"requires_php\";s:3:\"5.2\";}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:6:{s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}s:41:\"http-https-remover/http-https-remover.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:32:\"w.org/plugins/http-https-remover\";s:4:\"slug\";s:18:\"http-https-remover\";s:6:\"plugin\";s:41:\"http-https-remover/http-https-remover.php\";s:11:\"new_version\";s:5:\"3.2.3\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/http-https-remover/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/http-https-remover.3.2.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/http-https-remover/assets/icon-256x256.jpg?rev=1515967\";s:2:\"1x\";s:71:\"https://ps.w.org/http-https-remover/assets/icon-128x128.jpg?rev=1515967\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:73:\"https://ps.w.org/http-https-remover/assets/banner-772x250.jpg?rev=1645125\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}s:43:\"themeisle-companion/themeisle-companion.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:33:\"w.org/plugins/themeisle-companion\";s:4:\"slug\";s:19:\"themeisle-companion\";s:6:\"plugin\";s:43:\"themeisle-companion/themeisle-companion.php\";s:11:\"new_version\";s:7:\"2.10.22\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/themeisle-companion/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/themeisle-companion.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:72:\"https://ps.w.org/themeisle-companion/assets/icon-128x128.png?rev=2237652\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:74:\"https://ps.w.org/themeisle-companion/assets/banner-772x250.png?rev=2606655\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";}s:27:\"remove-http/remove-http.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/remove-http\";s:4:\"slug\";s:11:\"remove-http\";s:6:\"plugin\";s:27:\"remove-http/remove-http.php\";s:11:\"new_version\";s:5:\"2.2.0\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/remove-http/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/remove-http.2.2.0.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:64:\"https://ps.w.org/remove-http/assets/icon-256x256.png?rev=2278617\";s:2:\"1x\";s:56:\"https://ps.w.org/remove-http/assets/icon.svg?rev=2278617\";s:3:\"svg\";s:56:\"https://ps.w.org/remove-http/assets/icon.svg?rev=2278617\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/remove-http/assets/banner-1544x500.png?rev=2278617\";s:2:\"1x\";s:66:\"https://ps.w.org/remove-http/assets/banner-772x250.png?rev=2278617\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:5:\"3.0.0\";}s:47:\"safe-redirect-manager/safe-redirect-manager.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:35:\"w.org/plugins/safe-redirect-manager\";s:4:\"slug\";s:21:\"safe-redirect-manager\";s:6:\"plugin\";s:47:\"safe-redirect-manager/safe-redirect-manager.php\";s:11:\"new_version\";s:6:\"1.11.1\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/safe-redirect-manager/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/safe-redirect-manager.1.11.1.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:74:\"https://ps.w.org/safe-redirect-manager/assets/icon-256x256.png?rev=2431073\";s:2:\"1x\";s:66:\"https://ps.w.org/safe-redirect-manager/assets/icon.svg?rev=2791413\";s:3:\"svg\";s:66:\"https://ps.w.org/safe-redirect-manager/assets/icon.svg?rev=2791413\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/safe-redirect-manager/assets/banner-1544x500.png?rev=2431073\";s:2:\"1x\";s:76:\"https://ps.w.org/safe-redirect-manager/assets/banner-772x250.png?rev=2431073\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}s:40:\"wp-force-https/wordpress-force-https.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/wp-force-https\";s:4:\"slug\";s:14:\"wp-force-https\";s:6:\"plugin\";s:40:\"wp-force-https/wordpress-force-https.php\";s:11:\"new_version\";s:5:\"0.1.4\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/wp-force-https/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/wp-force-https.0.1.4.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:58:\"https://s.w.org/plugins/geopattern-icon/wp-force-https.svg\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.5\";}}s:7:\"checked\";a:7:{s:19:\"akismet/akismet.php\";s:5:\"5.0.1\";s:9:\"hello.php\";s:5:\"1.7.2\";s:41:\"http-https-remover/http-https-remover.php\";s:5:\"3.2.3\";s:43:\"themeisle-companion/themeisle-companion.php\";s:7:\"2.10.22\";s:27:\"remove-http/remove-http.php\";s:5:\"2.2.0\";s:47:\"safe-redirect-manager/safe-redirect-manager.php\";s:6:\"1.11.1\";s:40:\"wp-force-https/wordpress-force-https.php\";s:5:\"0.1.4\";}}', 'no'),
(1424, '_site_transient_timeout_php_check_d0f8c44ddd5901bff1588223538812e8', '1678713332', 'no'),
(1425, '_site_transient_php_check_d0f8c44ddd5901bff1588223538812e8', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(1426, '_transient_timeout_global_styles_hestia', '1678108657', 'no'),
(1427, '_transient_global_styles_hestia', 'body{--wp--preset--color--black: #000000;--wp--preset--color--cyan-bluish-gray: #abb8c3;--wp--preset--color--white: #ffffff;--wp--preset--color--pale-pink: #f78da7;--wp--preset--color--vivid-red: #cf2e2e;--wp--preset--color--luminous-vivid-orange: #ff6900;--wp--preset--color--luminous-vivid-amber: #fcb900;--wp--preset--color--light-green-cyan: #7bdcb5;--wp--preset--color--vivid-green-cyan: #00d084;--wp--preset--color--pale-cyan-blue: #8ed1fc;--wp--preset--color--vivid-cyan-blue: #0693e3;--wp--preset--color--vivid-purple: #9b51e0;--wp--preset--color--accent: #1da9e5;--wp--preset--color--background-color: #E5E5E5;--wp--preset--color--header-gradient: #a81d84;--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple: linear-gradient(135deg,rgba(6,147,227,1) 0%,rgb(155,81,224) 100%);--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan: linear-gradient(135deg,rgb(122,220,180) 0%,rgb(0,208,130) 100%);--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange: linear-gradient(135deg,rgba(252,185,0,1) 0%,rgba(255,105,0,1) 100%);--wp--preset--gradient--luminous-vivid-orange-to-vivid-red: linear-gradient(135deg,rgba(255,105,0,1) 0%,rgb(207,46,46) 100%);--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray: linear-gradient(135deg,rgb(238,238,238) 0%,rgb(169,184,195) 100%);--wp--preset--gradient--cool-to-warm-spectrum: linear-gradient(135deg,rgb(74,234,220) 0%,rgb(151,120,209) 20%,rgb(207,42,186) 40%,rgb(238,44,130) 60%,rgb(251,105,98) 80%,rgb(254,248,76) 100%);--wp--preset--gradient--blush-light-purple: linear-gradient(135deg,rgb(255,206,236) 0%,rgb(152,150,240) 100%);--wp--preset--gradient--blush-bordeaux: linear-gradient(135deg,rgb(254,205,165) 0%,rgb(254,45,45) 50%,rgb(107,0,62) 100%);--wp--preset--gradient--luminous-dusk: linear-gradient(135deg,rgb(255,203,112) 0%,rgb(199,81,192) 50%,rgb(65,88,208) 100%);--wp--preset--gradient--pale-ocean: linear-gradient(135deg,rgb(255,245,203) 0%,rgb(182,227,212) 50%,rgb(51,167,181) 100%);--wp--preset--gradient--electric-grass: linear-gradient(135deg,rgb(202,248,128) 0%,rgb(113,206,126) 100%);--wp--preset--gradient--midnight: linear-gradient(135deg,rgb(2,3,129) 0%,rgb(40,116,252) 100%);--wp--preset--duotone--dark-grayscale: url(\'#wp-duotone-dark-grayscale\');--wp--preset--duotone--grayscale: url(\'#wp-duotone-grayscale\');--wp--preset--duotone--purple-yellow: url(\'#wp-duotone-purple-yellow\');--wp--preset--duotone--blue-red: url(\'#wp-duotone-blue-red\');--wp--preset--duotone--midnight: url(\'#wp-duotone-midnight\');--wp--preset--duotone--magenta-yellow: url(\'#wp-duotone-magenta-yellow\');--wp--preset--duotone--purple-green: url(\'#wp-duotone-purple-green\');--wp--preset--duotone--blue-orange: url(\'#wp-duotone-blue-orange\');--wp--preset--font-size--small: 13px;--wp--preset--font-size--medium: 20px;--wp--preset--font-size--large: 36px;--wp--preset--font-size--x-large: 42px;--wp--preset--spacing--20: 0.44rem;--wp--preset--spacing--30: 0.67rem;--wp--preset--spacing--40: 1rem;--wp--preset--spacing--50: 1.5rem;--wp--preset--spacing--60: 2.25rem;--wp--preset--spacing--70: 3.38rem;--wp--preset--spacing--80: 5.06rem;}:where(.is-layout-flex){gap: 0.5em;}body .is-layout-flow > .alignleft{float: left;margin-inline-start: 0;margin-inline-end: 2em;}body .is-layout-flow > .alignright{float: right;margin-inline-start: 2em;margin-inline-end: 0;}body .is-layout-flow > .aligncenter{margin-left: auto !important;margin-right: auto !important;}body .is-layout-constrained > .alignleft{float: left;margin-inline-start: 0;margin-inline-end: 2em;}body .is-layout-constrained > .alignright{float: right;margin-inline-start: 2em;margin-inline-end: 0;}body .is-layout-constrained > .aligncenter{margin-left: auto !important;margin-right: auto !important;}body .is-layout-constrained > :where(:not(.alignleft):not(.alignright):not(.alignfull)){max-width: var(--wp--style--global--content-size);margin-left: auto !important;margin-right: auto !important;}body .is-layout-constrained > .alignwide{max-width: var(--wp--style--global--wide-size);}body .is-layout-flex{display: flex;}body .is-layout-flex{flex-wrap: wrap;align-items: center;}body .is-layout-flex > *{margin: 0;}:where(.wp-block-columns.is-layout-flex){gap: 2em;}.has-black-color{color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-color{color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-color{color: var(--wp--preset--color--white) !important;}.has-pale-pink-color{color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-color{color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-color{color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-color{color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-color{color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-color{color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-color{color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-color{color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-color{color: var(--wp--preset--color--vivid-purple) !important;}.has-black-background-color{background-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-background-color{background-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-background-color{background-color: var(--wp--preset--color--white) !important;}.has-pale-pink-background-color{background-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-background-color{background-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-background-color{background-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-background-color{background-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-background-color{background-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-background-color{background-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-background-color{background-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-background-color{background-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-background-color{background-color: var(--wp--preset--color--vivid-purple) !important;}.has-black-border-color{border-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-border-color{border-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-border-color{border-color: var(--wp--preset--color--white) !important;}.has-pale-pink-border-color{border-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-border-color{border-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-border-color{border-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-border-color{border-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-border-color{border-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-border-color{border-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-border-color{border-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-border-color{border-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-border-color{border-color: var(--wp--preset--color--vivid-purple) !important;}.has-vivid-cyan-blue-to-vivid-purple-gradient-background{background: var(--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple) !important;}.has-light-green-cyan-to-vivid-green-cyan-gradient-background{background: var(--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan) !important;}.has-luminous-vivid-amber-to-luminous-vivid-orange-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange) !important;}.has-luminous-vivid-orange-to-vivid-red-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-orange-to-vivid-red) !important;}.has-very-light-gray-to-cyan-bluish-gray-gradient-background{background: var(--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray) !important;}.has-cool-to-warm-spectrum-gradient-background{background: var(--wp--preset--gradient--cool-to-warm-spectrum) !important;}.has-blush-light-purple-gradient-background{background: var(--wp--preset--gradient--blush-light-purple) !important;}.has-blush-bordeaux-gradient-background{background: var(--wp--preset--gradient--blush-bordeaux) !important;}.has-luminous-dusk-gradient-background{background: var(--wp--preset--gradient--luminous-dusk) !important;}.has-pale-ocean-gradient-background{background: var(--wp--preset--gradient--pale-ocean) !important;}.has-electric-grass-gradient-background{background: var(--wp--preset--gradient--electric-grass) !important;}.has-midnight-gradient-background{background: var(--wp--preset--gradient--midnight) !important;}.has-small-font-size{font-size: var(--wp--preset--font-size--small) !important;}.has-medium-font-size{font-size: var(--wp--preset--font-size--medium) !important;}.has-large-font-size{font-size: var(--wp--preset--font-size--large) !important;}.has-x-large-font-size{font-size: var(--wp--preset--font-size--x-large) !important;}', 'no'),
(1428, '_transient_timeout_global_styles_svg_filters_hestia', '1678108657', 'no'),
(1429, '_transient_global_styles_svg_filters_hestia', '<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-dark-grayscale\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 0.49803921568627\" /><feFuncG type=\"table\" tableValues=\"0 0.49803921568627\" /><feFuncB type=\"table\" tableValues=\"0 0.49803921568627\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-grayscale\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 1\" /><feFuncG type=\"table\" tableValues=\"0 1\" /><feFuncB type=\"table\" tableValues=\"0 1\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-purple-yellow\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.54901960784314 0.98823529411765\" /><feFuncG type=\"table\" tableValues=\"0 1\" /><feFuncB type=\"table\" tableValues=\"0.71764705882353 0.25490196078431\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-blue-red\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 1\" /><feFuncG type=\"table\" tableValues=\"0 0.27843137254902\" /><feFuncB type=\"table\" tableValues=\"0.5921568627451 0.27843137254902\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-midnight\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 0\" /><feFuncG type=\"table\" tableValues=\"0 0.64705882352941\" /><feFuncB type=\"table\" tableValues=\"0 1\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-magenta-yellow\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.78039215686275 1\" /><feFuncG type=\"table\" tableValues=\"0 0.94901960784314\" /><feFuncB type=\"table\" tableValues=\"0.35294117647059 0.47058823529412\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-purple-green\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.65098039215686 0.40392156862745\" /><feFuncG type=\"table\" tableValues=\"0 1\" /><feFuncB type=\"table\" tableValues=\"0.44705882352941 0.4\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-blue-orange\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.098039215686275 1\" /><feFuncG type=\"table\" tableValues=\"0 0.66274509803922\" /><feFuncB type=\"table\" tableValues=\"0.84705882352941 0.41960784313725\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg>', 'no');

-- --------------------------------------------------------

--
-- 테이블 구조 `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- 테이블의 덤프 데이터 `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(3, 5, '_edit_lock', '1673936733:1'),
(6, 9, '_wp_attached_file', '2023/01/Cloud2.jpg.jpg'),
(7, 9, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:800;s:6:\"height\";i:392;s:4:\"file\";s:22:\"2023/01/Cloud2.jpg.jpg\";s:8:\"filesize\";i:68486;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:22:\"Cloud2.jpg-300x147.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:147;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4005;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:22:\"Cloud2.jpg-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3018;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:22:\"Cloud2.jpg-768x376.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:376;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:12557;}s:11:\"hestia-blog\";a:5:{s:4:\"file\";s:22:\"Cloud2.jpg-360x240.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6163;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:13:\"Print - copie\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(12, 11, '_edit_lock', '1674118471:1'),
(13, 11, '_edit_last', '1'),
(14, 11, 'ample_page_layout', 'default_layout'),
(21, 15, '_wp_attached_file', '2023/01/제목을-입력해주세요_-001.jpg'),
(22, 15, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:891;s:6:\"height\";i:1260;s:4:\"file\";s:45:\"2023/01/제목을-입력해주세요_-001.jpg\";s:8:\"filesize\";i:196278;s:5:\"sizes\";a:7:{s:6:\"medium\";a:5:{s:4:\"file\";s:45:\"제목을-입력해주세요_-001-212x300.jpg\";s:5:\"width\";i:212;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8893;}s:5:\"large\";a:5:{s:4:\"file\";s:46:\"제목을-입력해주세요_-001-724x1024.jpg\";s:5:\"width\";i:724;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:49320;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:45:\"제목을-입력해주세요_-001-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5160;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:46:\"제목을-입력해주세요_-001-768x1086.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1086;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:54332;}s:25:\"ample-featured-blog-large\";a:5:{s:4:\"file\";s:45:\"제목을-입력해주세요_-001-710x300.jpg\";s:5:\"width\";i:710;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:22969;}s:25:\"ample-featured-blog-small\";a:5:{s:4:\"file\";s:45:\"제목을-입력해주세요_-001-230x230.jpg\";s:5:\"width\";i:230;s:6:\"height\";i:230;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9220;}s:21:\"ample-portfolio-image\";a:5:{s:4:\"file\";s:45:\"제목을-입력해주세요_-001-330x330.jpg\";s:5:\"width\";i:330;s:6:\"height\";i:330;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:15487;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(23, 16, '_wp_attached_file', '2023/01/제목을-입력해주세요_-001-1.jpg'),
(24, 16, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:891;s:6:\"height\";i:1260;s:4:\"file\";s:47:\"2023/01/제목을-입력해주세요_-001-1.jpg\";s:8:\"filesize\";i:196278;s:5:\"sizes\";a:7:{s:6:\"medium\";a:5:{s:4:\"file\";s:47:\"제목을-입력해주세요_-001-1-212x300.jpg\";s:5:\"width\";i:212;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8893;}s:5:\"large\";a:5:{s:4:\"file\";s:48:\"제목을-입력해주세요_-001-1-724x1024.jpg\";s:5:\"width\";i:724;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:49320;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:47:\"제목을-입력해주세요_-001-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5160;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:48:\"제목을-입력해주세요_-001-1-768x1086.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1086;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:54332;}s:25:\"ample-featured-blog-large\";a:5:{s:4:\"file\";s:47:\"제목을-입력해주세요_-001-1-710x300.jpg\";s:5:\"width\";i:710;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:22969;}s:25:\"ample-featured-blog-small\";a:5:{s:4:\"file\";s:47:\"제목을-입력해주세요_-001-1-230x230.jpg\";s:5:\"width\";i:230;s:6:\"height\";i:230;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9220;}s:21:\"ample-portfolio-image\";a:5:{s:4:\"file\";s:47:\"제목을-입력해주세요_-001-1-330x330.jpg\";s:5:\"width\";i:330;s:6:\"height\";i:330;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:15487;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(28, 18, '_wp_attached_file', '2023/01/cropped-iStock-666631174-1280x720-1.jpg'),
(29, 18, '_wp_attachment_context', 'custom-logo'),
(30, 18, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:755;s:6:\"height\";i:720;s:4:\"file\";s:47:\"2023/01/cropped-iStock-666631174-1280x720-1.jpg\";s:8:\"filesize\";i:30291;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:47:\"cropped-iStock-666631174-1280x720-1-300x286.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:286;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9197;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:47:\"cropped-iStock-666631174-1280x720-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4280;}s:25:\"ample-featured-blog-large\";a:5:{s:4:\"file\";s:47:\"cropped-iStock-666631174-1280x720-1-710x300.jpg\";s:5:\"width\";i:710;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:15021;}s:25:\"ample-featured-blog-small\";a:5:{s:4:\"file\";s:47:\"cropped-iStock-666631174-1280x720-1-230x230.jpg\";s:5:\"width\";i:230;s:6:\"height\";i:230;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6976;}s:21:\"ample-portfolio-image\";a:5:{s:4:\"file\";s:47:\"cropped-iStock-666631174-1280x720-1-330x330.jpg\";s:5:\"width\";i:330;s:6:\"height\";i:330;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:10510;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(34, 21, '_wp_attached_file', '2023/01/cropped-logoyogo-1-97.jpg'),
(35, 21, '_wp_attachment_context', 'custom-logo'),
(36, 21, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:869;s:6:\"height\";i:744;s:4:\"file\";s:33:\"2023/01/cropped-logoyogo-1-97.jpg\";s:8:\"filesize\";i:15560;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:33:\"cropped-logoyogo-1-97-300x257.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:257;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3320;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:33:\"cropped-logoyogo-1-97-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:1821;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:33:\"cropped-logoyogo-1-97-768x658.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:658;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:12591;}s:25:\"ample-featured-blog-large\";a:5:{s:4:\"file\";s:33:\"cropped-logoyogo-1-97-710x300.jpg\";s:5:\"width\";i:710;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7745;}s:25:\"ample-featured-blog-small\";a:5:{s:4:\"file\";s:33:\"cropped-logoyogo-1-97-230x230.jpg\";s:5:\"width\";i:230;s:6:\"height\";i:230;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2771;}s:21:\"ample-portfolio-image\";a:5:{s:4:\"file\";s:33:\"cropped-logoyogo-1-97-330x330.jpg\";s:5:\"width\";i:330;s:6:\"height\";i:330;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4220;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(63, 33, '_edit_lock', '1674111588:1'),
(65, 33, '_edit_last', '1'),
(66, 33, 'obfx-header-scripts', ''),
(67, 33, 'obfx-footer-scripts', ''),
(73, 38, '_customize_changeset_uuid', 'c3329e69-4b1d-4125-a1d5-0a61017a3a12'),
(74, 41, '_menu_item_type', 'custom'),
(75, 41, '_menu_item_menu_item_parent', '0'),
(76, 41, '_menu_item_object_id', '41'),
(77, 41, '_menu_item_object', 'custom'),
(78, 41, '_menu_item_target', ''),
(79, 41, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(80, 41, '_menu_item_xfn', ''),
(81, 41, '_menu_item_url', 'http://118.46.50.135/wordpress'),
(82, 42, '_menu_item_type', 'post_type'),
(83, 42, '_menu_item_menu_item_parent', '0'),
(84, 42, '_menu_item_object_id', '38'),
(85, 42, '_menu_item_object', 'page'),
(86, 42, '_menu_item_target', ''),
(87, 42, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(88, 42, '_menu_item_xfn', ''),
(89, 42, '_menu_item_url', ''),
(96, 45, '_menu_item_type', 'custom'),
(97, 45, '_menu_item_menu_item_parent', '0'),
(98, 45, '_menu_item_object_id', '45'),
(99, 45, '_menu_item_object', 'custom'),
(100, 45, '_menu_item_target', ''),
(101, 45, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(102, 45, '_menu_item_xfn', ''),
(103, 45, '_menu_item_url', 'http://118.46.50.135/wordpress'),
(112, 48, '_customize_changeset_uuid', 'ca39f7c4-ce54-49ad-a8b0-1f3b52084572'),
(113, 50, '_menu_item_type', 'post_type'),
(114, 50, '_menu_item_menu_item_parent', '0'),
(115, 50, '_menu_item_object_id', '11'),
(116, 50, '_menu_item_object', 'page'),
(117, 50, '_menu_item_target', ''),
(118, 50, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(119, 50, '_menu_item_xfn', ''),
(120, 50, '_menu_item_url', ''),
(121, 51, '_menu_item_type', 'post_type'),
(122, 51, '_menu_item_menu_item_parent', '0'),
(123, 51, '_menu_item_object_id', '38'),
(124, 51, '_menu_item_object', 'page'),
(125, 51, '_menu_item_target', ''),
(126, 51, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(127, 51, '_menu_item_xfn', ''),
(128, 51, '_menu_item_url', ''),
(129, 52, '_menu_item_type', 'post_type'),
(130, 52, '_menu_item_menu_item_parent', '0'),
(131, 52, '_menu_item_object_id', '48'),
(132, 52, '_menu_item_object', 'page'),
(133, 52, '_menu_item_target', ''),
(134, 52, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(135, 52, '_menu_item_xfn', ''),
(136, 52, '_menu_item_url', ''),
(137, 53, '_menu_item_type', 'custom'),
(138, 53, '_menu_item_menu_item_parent', '0'),
(139, 53, '_menu_item_object_id', '53'),
(140, 53, '_menu_item_object', 'custom'),
(141, 53, '_menu_item_target', ''),
(142, 53, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(143, 53, '_menu_item_xfn', ''),
(144, 53, '_menu_item_url', 'http://118.46.50.135/wordpress'),
(148, 38, '_edit_lock', '1674118463:1'),
(149, 56, '_wp_attached_file', '2023/01/felt.png'),
(150, 56, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:940;s:6:\"height\";i:540;s:4:\"file\";s:16:\"2023/01/felt.png\";s:8:\"filesize\";i:33431;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:16:\"felt-300x172.png\";s:5:\"width\";i:300;s:6:\"height\";i:172;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:5417;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:16:\"felt-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:4101;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:16:\"felt-768x441.png\";s:5:\"width\";i:768;s:6:\"height\";i:441;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:22408;}s:11:\"hestia-blog\";a:5:{s:4:\"file\";s:16:\"felt-360x240.png\";s:5:\"width\";i:360;s:6:\"height\";i:240;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:8704;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(151, 38, '_edit_last', '1'),
(152, 38, 'obfx-header-scripts', ''),
(153, 38, 'obfx-footer-scripts', ''),
(155, 9, '_wp_attachment_is_custom_background', 'hestia'),
(157, 59, '_wp_attached_file', '2023/01/Cloud2-1.jpg-1-e1674024440185.jpg'),
(158, 59, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:482;s:6:\"height\";i:260;s:4:\"file\";s:41:\"2023/01/Cloud2-1.jpg-1-e1674024440185.jpg\";s:8:\"filesize\";i:68486;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:41:\"Cloud2-1.jpg-1-e1674024440185-300x162.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:162;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5385;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:41:\"Cloud2-1.jpg-1-e1674024440185-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3000;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:26:\"Cloud2-1.jpg-1-768x376.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:376;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:12557;}s:11:\"hestia-blog\";a:5:{s:4:\"file\";s:41:\"Cloud2-1.jpg-1-e1674024440185-360x240.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6948;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:13:\"Print - copie\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(159, 18, '_wp_attachment_is_custom_background', 'hestia'),
(160, 21, '_wp_attachment_is_custom_background', 'hestia'),
(161, 59, '_wp_attachment_is_custom_background', 'hestia'),
(162, 59, '_edit_lock', '1674024305:1'),
(163, 59, '_wp_attachment_backup_sizes', 'a:5:{s:9:\"full-orig\";a:3:{s:5:\"width\";i:800;s:6:\"height\";i:392;s:4:\"file\";s:18:\"Cloud2-1.jpg-1.jpg\";}s:14:\"thumbnail-orig\";a:5:{s:4:\"file\";s:26:\"Cloud2-1.jpg-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3018;}s:11:\"medium-orig\";a:5:{s:4:\"file\";s:26:\"Cloud2-1.jpg-1-300x147.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:147;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4005;}s:17:\"medium_large-orig\";a:5:{s:4:\"file\";s:26:\"Cloud2-1.jpg-1-768x376.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:376;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:12557;}s:16:\"hestia-blog-orig\";a:5:{s:4:\"file\";s:26:\"Cloud2-1.jpg-1-360x240.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6163;}}'),
(170, 48, '_edit_lock', '1674118453:1'),
(171, 48, '_edit_last', '1'),
(172, 48, 'obfx-header-scripts', ''),
(173, 48, 'obfx-footer-scripts', ''),
(174, 67, '_edit_lock', '1674111928:1'),
(176, 67, '_edit_last', '1'),
(177, 67, 'obfx-header-scripts', ''),
(178, 67, 'obfx-footer-scripts', ''),
(180, 21, '_oembed_7e35e39aa9aba9eb3fccc6b241ab2dd3', '{{unknown}}'),
(184, 67, 'hestia_layout_select', 'full-width'),
(187, 33, 'hestia_layout_select', 'full-width'),
(197, 88, '_edit_lock', '1674113655:1'),
(198, 88, '_oembed_5ce9afb8e82ab85a9173c6a180445fc8', '{{unknown}}'),
(200, 88, '_edit_last', '1'),
(201, 88, 'obfx-header-scripts', ''),
(202, 88, 'obfx-footer-scripts', ''),
(205, 88, 'hestia_layout_select', 'full-width');

-- --------------------------------------------------------

--
-- 테이블 구조 `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- 테이블의 덤프 데이터 `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2023-01-17 15:22:46', '2023-01-17 06:22:46', '<!-- wp:paragraph -->\n<p>워드프레스에 오신 것을 환영합니다. 이것은 첫 글입니다. 바로 편집하거나 삭제한 다음 쓰기 시작하세요!</p>\n<!-- /wp:paragraph -->', '안녕하세요!', '', 'publish', 'open', 'open', '', '%ec%95%88%eb%85%95%ed%95%98%ec%84%b8%ec%9a%94', '', '', '2023-01-17 15:22:46', '2023-01-17 06:22:46', '', 0, 'http://118.46.50.135/wordpress/?p=1', 0, 'post', '', 3),
(5, 1, '2023-01-17 15:27:54', '2023-01-17 06:27:54', '<!-- wp:paragraph -->\n<p>test</p>\n<!-- /wp:paragraph -->', 'Test', '', 'publish', 'open', 'open', '', 'test', '', '', '2023-01-17 15:27:54', '2023-01-17 06:27:54', '', 0, 'http://118.46.50.135/wordpress/?p=5', 0, 'post', '', 4),
(6, 1, '2023-01-17 15:27:49', '2023-01-17 06:27:49', '{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-twentytwentythree', '', '', '2023-01-17 15:27:49', '2023-01-17 06:27:49', '', 0, 'http://118.46.50.135/wordpress/?p=6', 0, 'wp_global_styles', '', 0),
(7, 1, '2023-01-17 15:27:54', '2023-01-17 06:27:54', '<!-- wp:paragraph -->\n<p>test</p>\n<!-- /wp:paragraph -->', 'Test', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2023-01-17 15:27:54', '2023-01-17 06:27:54', '', 5, 'http://118.46.50.135/wordpress/?p=7', 0, 'revision', '', 0),
(9, 1, '2023-01-17 17:42:33', '2023-01-17 08:42:33', '', 'Print - copie', '', 'inherit', 'open', 'closed', '', 'print-copie', '', '', '2023-01-17 17:42:33', '2023-01-17 08:42:33', '', 0, 'http://118.46.50.135/wordpress/wp-content/uploads/2023/01/Cloud2.jpg.jpg', 0, 'attachment', 'image/jpeg', 0),
(11, 1, '2023-01-17 18:00:07', '2023-01-17 09:00:07', '', '수업 후기', '', 'publish', 'closed', 'closed', '', '%ec%88%98%ec%97%85-%ed%9b%84%ea%b8%b0', '', '', '2023-01-17 18:00:08', '2023-01-17 09:00:08', '', 0, 'http://118.46.50.135/wordpress/?page_id=11', 0, 'page', '', 0),
(12, 1, '2023-01-17 18:00:07', '2023-01-17 09:00:07', '', '수업 후기', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2023-01-17 18:00:07', '2023-01-17 09:00:07', '', 11, 'http://118.46.50.135/wordpress/?p=12', 0, 'revision', '', 0),
(15, 1, '2023-01-17 18:11:46', '2023-01-17 09:11:46', '', '제목을-입력해주세요_-001', '', 'inherit', 'open', 'closed', '', '%ec%a0%9c%eb%aa%a9%ec%9d%84-%ec%9e%85%eb%a0%a5%ed%95%b4%ec%a3%bc%ec%84%b8%ec%9a%94_-001', '', '', '2023-01-17 18:11:46', '2023-01-17 09:11:46', '', 0, 'http://118.46.50.135/wordpress/wp-content/uploads/2023/01/제목을-입력해주세요_-001.jpg', 0, 'attachment', 'image/jpeg', 0),
(16, 1, '2023-01-17 18:18:03', '2023-01-17 09:18:03', '', '제목을-입력해주세요_-001-1', '', 'inherit', 'open', 'closed', '', '%ec%a0%9c%eb%aa%a9%ec%9d%84-%ec%9e%85%eb%a0%a5%ed%95%b4%ec%a3%bc%ec%84%b8%ec%9a%94_-001-1', '', '', '2023-01-17 18:18:03', '2023-01-17 09:18:03', '', 0, 'http://118.46.50.135/wordpress/wp-content/uploads/2023/01/제목을-입력해주세요_-001-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(18, 1, '2023-01-17 18:23:12', '2023-01-17 09:23:12', 'http://118.46.50.135/wordpress/wp-content/uploads/2023/01/cropped-iStock-666631174-1280x720-1.jpg', 'iStock-666631174-1280x720', '', 'inherit', 'open', 'closed', '', 'istock-666631174-1280x720-2', '', '', '2023-01-17 18:23:12', '2023-01-17 09:23:12', '', 0, 'http://118.46.50.135/wordpress/wp-content/uploads/2023/01/cropped-iStock-666631174-1280x720-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(21, 1, '2023-01-17 18:25:19', '2023-01-17 09:25:19', 'http://118.46.50.135/wordpress/wp-content/uploads/2023/01/cropped-logoyogo-1-97.jpg', 'cropped-logoyogo-1-97.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-logoyogo-1-97-jpg', '', '', '2023-01-17 18:25:19', '2023-01-17 09:25:19', '', 0, 'http://118.46.50.135/wordpress/wp-content/uploads/2023/01/cropped-logoyogo-1-97.jpg', 0, 'attachment', 'image/jpeg', 0),
(33, 1, '2023-01-18 14:15:06', '2023-01-18 05:15:06', '<!-- wp:paragraph {\"backgroundColor\":\"background_color\",\"textColor\":\"black\"} -->\n<p class=\"has-black-color has-background-color-background-color has-text-color has-background\">5조 뭉게 구름 수업 내용 후기!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer -->\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:calendar /-->\n\n<!-- wp:separator {\"align\":\"wide\"} -->\n<hr class=\"wp-block-separator alignwide has-alpha-channel-opacity\"/>\n<!-- /wp:separator -->\n\n<!-- wp:post-date {\"textAlign\":\"center\"} /-->\n\n<!-- wp:group {\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group\"><!-- wp:group {\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group\"><!-- wp:avatar {\"size\":42} /-->\n\n<!-- wp:heading {\"level\":5} -->\n<h5>\"이승수\"</h5>\n<!-- /wp:heading -->\n\n<!-- wp:buttons {\"fontSize\":\"small\"} -->\n<div class=\"wp-block-buttons has-custom-font-size has-small-font-size\"><!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\">난이도 : 중</a></div>\n<!-- /wp:button -->\n\n<!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\">이해도 : 중</a></div>\n<!-- /wp:button -->\n\n<!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\">집중도 : 중</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><!-- wp:paragraph -->\n<p>후기 : sql, web service, http을 배우고 직접 사이트를 만들며 실습하였다. 처음 만들어보는 것이라 흥미로웠고 놓치지 않으려고 집중하여 들었다.</p>\n<!-- /wp:paragraph --></blockquote>\n<!-- /wp:quote --></div>\n<!-- /wp:group --></div>\n<!-- /wp:group -->\n\n<!-- wp:separator -->\n<hr class=\"wp-block-separator has-alpha-channel-opacity\"/>\n<!-- /wp:separator -->\n\n<!-- wp:avatar {\"size\":42} /-->\n\n<!-- wp:heading {\"level\":5} -->\n<h5>\"김지원\"</h5>\n<!-- /wp:heading -->\n\n<!-- wp:buttons {\"fontSize\":\"small\"} -->\n<div class=\"wp-block-buttons has-custom-font-size has-small-font-size\"><!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\">난이도 : 하</a></div>\n<!-- /wp:button -->\n\n<!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\">이해도 : 중</a></div>\n<!-- /wp:button -->\n\n<!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\">집중도 : 중</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><!-- wp:paragraph -->\n<p>후기 : selinux에 대해 공부했다. selinux의 기능과 사용법, 비활성화 등에 대해 배웠고, 그 후로는 DB에 대해 공부했다.</p>\n<!-- /wp:paragraph --></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:separator -->\n<hr class=\"wp-block-separator has-alpha-channel-opacity\"/>\n<!-- /wp:separator -->\n\n<!-- wp:avatar {\"size\":42} /-->\n\n<!-- wp:heading {\"level\":5} -->\n<h5>\"정한교\"</h5>\n<!-- /wp:heading -->\n\n<!-- wp:buttons {\"fontSize\":\"small\"} -->\n<div class=\"wp-block-buttons has-custom-font-size has-small-font-size\"><!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\">난이도 : 하</a></div>\n<!-- /wp:button -->\n\n<!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\">이해도 : 중</a></div>\n<!-- /wp:button -->\n\n<!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\">집중도 : 하</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><!-- wp:paragraph -->\n<p>후기 :mysql 기본설정과 제로보드 , 워드프레스 기본세팅을 배웠다</p>\n<!-- /wp:paragraph --></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:separator -->\n<hr class=\"wp-block-separator has-alpha-channel-opacity\"/>\n<!-- /wp:separator -->\n\n<!-- wp:avatar {\"size\":42} /-->\n\n<!-- wp:heading {\"level\":5} -->\n<h5>\"배수빈\"</h5>\n<!-- /wp:heading -->\n\n<!-- wp:buttons {\"fontSize\":\"small\"} -->\n<div class=\"wp-block-buttons has-custom-font-size has-small-font-size\"><!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\">난이도 : 하</a></div>\n<!-- /wp:button -->\n\n<!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\">이해도 : 중</a></div>\n<!-- /wp:button -->\n\n<!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\">집중도 : 중</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><!-- wp:paragraph -->\n<p>후기 : 웹 빌더 툴인 워드프레스를 통해 웹 페이지를 간단하게 만들어보았다. 리눅스를 통해 웹 사이트를 설정해 볼 수 있었다.</p>\n<!-- /wp:paragraph --></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:separator -->\n<hr class=\"wp-block-separator has-alpha-channel-opacity\"/>\n<!-- /wp:separator -->\n\n<!-- wp:avatar {\"size\":42} /-->\n\n<!-- wp:heading {\"level\":5} -->\n<h5>\"임세희\"</h5>\n<!-- /wp:heading -->\n\n<!-- wp:buttons {\"fontSize\":\"small\"} -->\n<div class=\"wp-block-buttons has-custom-font-size has-small-font-size\"><!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\">난이도 : 하</a></div>\n<!-- /wp:button -->\n\n<!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\">이해도 : 중</a></div>\n<!-- /wp:button -->\n\n<!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\">집중도 : 하</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><!-- wp:paragraph -->\n<p>후기 :DB관리 및 검색, 생성 등의 과정을 배우고 실습했다. 기존에 놓친 과정들이 있어서 실습에 어려움이 있었던 것 같다.</p>\n<!-- /wp:paragraph --></blockquote>\n<!-- /wp:quote -->', '[ 수업 후기 ]', '', 'publish', 'open', 'open', '', '%ec%88%98%ec%97%85-%ed%9b%84%ea%b8%b0', '', '', '2023-01-19 15:40:02', '2023-01-19 06:40:02', '', 0, 'http://118.46.50.135/wordpress/?p=33', 0, 'post', '', 1),
(34, 1, '2023-01-18 14:15:06', '2023-01-18 05:15:06', '', '[ 수업 후기 ]', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2023-01-18 14:15:06', '2023-01-18 05:15:06', '', 33, 'http://118.46.50.135/wordpress/?p=34', 0, 'revision', '', 0),
(36, 1, '2023-01-18 14:15:54', '2023-01-18 05:15:54', '<!-- wp:paragraph -->\n<p>5조 뭉게 구름 수업 내용 후기!</p>\n<!-- /wp:paragraph -->', '[ 수업 후기 ]', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2023-01-18 14:15:54', '2023-01-18 05:15:54', '', 33, 'http://118.46.50.135/wordpress/?p=36', 0, 'revision', '', 0),
(37, 1, '2023-01-18 14:16:19', '2023-01-18 05:16:19', '<!-- wp:paragraph {\"backgroundColor\":\"background_color\",\"textColor\":\"black\"} -->\n<p class=\"has-black-color has-background-color-background-color has-text-color has-background\">5조 뭉게 구름 수업 내용 후기!</p>\n<!-- /wp:paragraph -->', '[ 수업 후기 ]', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2023-01-18 14:16:19', '2023-01-18 05:16:19', '', 33, 'http://118.46.50.135/wordpress/?p=37', 0, 'revision', '', 0),
(38, 1, '2023-01-18 14:55:33', '2023-01-18 05:55:33', '<!-- wp:image {\"id\":56,\"width\":764,\"height\":437,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full is-resized\"><img src=\"http://118.46.50.135/wordpress/wp-content/uploads/2023/01/felt.png\" alt=\"\" class=\"wp-image-56\" width=\"764\" height=\"437\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:separator -->\n<hr class=\"wp-block-separator has-alpha-channel-opacity\"/>\n<!-- /wp:separator -->\n\n<!-- wp:calendar /-->', 'Today I Felt', '', 'publish', 'closed', 'closed', '', 'today-i-felt', '', '', '2023-01-19 14:42:40', '2023-01-19 05:42:40', '', 0, 'http://118.46.50.135/wordpress/?page_id=38', 0, 'page', '', 0),
(40, 1, '2023-01-18 14:55:33', '2023-01-18 05:55:33', '', 'Today I Felt', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2023-01-18 14:55:33', '2023-01-18 05:55:33', '', 38, 'http://118.46.50.135/wordpress/?p=40', 0, 'revision', '', 0),
(41, 1, '2023-01-18 15:01:50', '2023-01-18 05:55:33', '', '홈', '', 'publish', 'closed', 'closed', '', '%ed%99%88', '', '', '2023-01-18 15:01:50', '2023-01-18 06:01:50', '', 0, 'http://118.46.50.135/wordpress/?p=41', 1, 'nav_menu_item', '', 0),
(42, 1, '2023-01-18 15:01:50', '2023-01-18 05:55:33', ' ', '', '', 'publish', 'closed', 'closed', '', '42', '', '', '2023-01-18 15:01:50', '2023-01-18 06:01:50', '', 0, 'http://118.46.50.135/wordpress/?p=42', 2, 'nav_menu_item', '', 0),
(45, 1, '2023-01-18 15:07:19', '2023-01-18 06:07:19', '', '홈', '', 'publish', 'closed', 'closed', '', '%ed%99%88-2', '', '', '2023-01-18 15:07:19', '2023-01-18 06:07:19', '', 0, 'http://118.46.50.135/wordpress/?p=45', 1, 'nav_menu_item', '', 0),
(48, 1, '2023-01-18 15:24:28', '2023-01-18 06:24:28', '<!-- wp:calendar {\"fontSize\":\"medium\"} /-->', '스터디 일지', '', 'publish', 'closed', 'closed', '', '%ec%8a%a4%ed%84%b0%eb%94%94-%ec%9d%bc%ec%a7%80', '', '', '2023-01-19 14:39:23', '2023-01-19 05:39:23', '', 0, 'http://118.46.50.135/wordpress/?page_id=48', 0, 'page', '', 0),
(49, 1, '2023-01-18 15:24:28', '2023-01-18 06:24:28', '', '스터디 일지', '', 'inherit', 'closed', 'closed', '', '48-revision-v1', '', '', '2023-01-18 15:24:28', '2023-01-18 06:24:28', '', 48, 'http://118.46.50.135/wordpress/?p=49', 0, 'revision', '', 0),
(50, 1, '2023-01-18 15:24:29', '2023-01-18 06:24:29', ' ', '', '', 'publish', 'closed', 'closed', '', '50', '', '', '2023-01-18 15:24:29', '2023-01-18 06:24:29', '', 2, 'http://118.46.50.135/wordpress/?p=50', 2, 'nav_menu_item', '', 0),
(51, 1, '2023-01-18 15:24:29', '2023-01-18 06:24:29', ' ', '', '', 'publish', 'closed', 'closed', '', '51', '', '', '2023-01-18 15:24:29', '2023-01-18 06:24:29', '', 0, 'http://118.46.50.135/wordpress/?p=51', 3, 'nav_menu_item', '', 0),
(52, 1, '2023-01-18 15:24:29', '2023-01-18 06:24:29', ' ', '', '', 'publish', 'closed', 'closed', '', '52', '', '', '2023-01-18 15:24:29', '2023-01-18 06:24:29', '', 0, 'http://118.46.50.135/wordpress/?p=52', 4, 'nav_menu_item', '', 0),
(53, 1, '2023-01-18 15:24:29', '2023-01-18 06:24:29', '', '홈', '', 'publish', 'closed', 'closed', '', '%ed%99%88-3', '', '', '2023-01-18 15:24:29', '2023-01-18 06:24:29', '', 0, 'http://118.46.50.135/wordpress/?p=53', 5, 'nav_menu_item', '', 0),
(56, 1, '2023-01-18 15:44:21', '2023-01-18 06:44:21', '', 'felt', '', 'inherit', 'open', 'closed', '', 'felt', '', '', '2023-01-18 15:44:21', '2023-01-18 06:44:21', '', 38, 'http://118.46.50.135/wordpress/wp-content/uploads/2023/01/felt.png', 0, 'attachment', 'image/png', 0),
(57, 1, '2023-01-18 15:44:41', '2023-01-18 06:44:41', '<!-- wp:image {\"id\":56,\"width\":764,\"height\":437,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full is-resized\"><img src=\"http://118.46.50.135/wordpress/wp-content/uploads/2023/01/felt.png\" alt=\"\" class=\"wp-image-56\" width=\"764\" height=\"437\"/></figure>\n<!-- /wp:image -->', 'Today I Felt', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2023-01-18 15:44:41', '2023-01-18 06:44:41', '', 38, 'http://118.46.50.135/wordpress/?p=57', 0, 'revision', '', 0),
(59, 1, '2023-01-18 15:46:40', '2023-01-18 06:46:40', '', 'Print - copie', '', 'inherit', 'open', 'closed', '', 'print-copie-2', '', '', '2023-01-18 15:46:40', '2023-01-18 06:46:40', '', 0, 'http://118.46.50.135/wordpress/wp-content/uploads/2023/01/Cloud2-1.jpg-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(64, 1, '2023-01-19 14:39:23', '2023-01-19 05:39:23', '<!-- wp:calendar {\"fontSize\":\"medium\"} /-->', '스터디 일지', '', 'inherit', 'closed', 'closed', '', '48-revision-v1', '', '', '2023-01-19 14:39:23', '2023-01-19 05:39:23', '', 48, 'http://118.46.50.135/wordpress/?p=64', 0, 'revision', '', 0),
(66, 1, '2023-01-19 14:42:40', '2023-01-19 05:42:40', '<!-- wp:image {\"id\":56,\"width\":764,\"height\":437,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full is-resized\"><img src=\"http://118.46.50.135/wordpress/wp-content/uploads/2023/01/felt.png\" alt=\"\" class=\"wp-image-56\" width=\"764\" height=\"437\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:separator -->\n<hr class=\"wp-block-separator has-alpha-channel-opacity\"/>\n<!-- /wp:separator -->\n\n<!-- wp:calendar /-->', 'Today I Felt', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2023-01-19 14:42:40', '2023-01-19 05:42:40', '', 38, 'http://118.46.50.135/wordpress/?p=66', 0, 'revision', '', 0),
(67, 1, '2023-01-19 14:43:35', '2023-01-19 05:43:35', '<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column {\"width\":\"100%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:100%\"><!-- wp:table {\"className\":\"is-style-stripes\"} -->\n<figure class=\"wp-block-table is-style-stripes\"><table><thead><tr><th>일지</th><th>날짜</th><th>참여자</th><th>상태</th><th>수업</th></tr></thead><tbody><tr><td></td><td></td><td></td><td></td><td></td></tr><tr><td>📌스터디 일지 20회차<br> &amp; 세미프로젝트 2일</td><td>2023년 1월 16일</td><td><br>정한교<br>임세희<br>김지원<br>이승수<br>배수빈</td><td><br>Excellent</td><td><br>세미프로젝트 2일차</td></tr><tr><td>📌스터디 일지 19회차 <br>&amp; 세미프로젝트 1일</td><td>2023년 1월 15일</td><td><br>정한교<br>임세희<br>김지원<br>이승수<br>배수빈</td><td><br>Excellent</td><td><br>리눅스 기초 <br>16일차 세미프로젝트 1일차</td></tr><tr><td>📌 스터디 일지 18회차</td><td>2023년 1월 13일</td><td>정한교<br>임세희<br>김지원<br>이승수<br>배수빈</td><td><br>Excellent</td><td><br>리눅스 기초 15일차</td></tr><tr><td>📌 스터디 일지 17회차</td><td>2023년 1월 12일</td><td>정한교<br>임세희<br>김지원<br>이승수<br>배수빈</td><td><br>Excellent</td><td><br>리눅스 기초 14일차</td></tr></tbody></table></figure>\n<!-- /wp:table --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', '[스터디 일지]', '', 'publish', 'open', 'open', '', 'today-i-felt', '', '', '2023-01-19 16:01:48', '2023-01-19 07:01:48', '', 0, 'http://118.46.50.135/wordpress/?p=67', 0, 'post', '', 0),
(68, 1, '2023-01-19 14:43:35', '2023-01-19 05:43:35', '', '[Today I Felt]', '', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2023-01-19 14:43:35', '2023-01-19 05:43:35', '', 67, 'http://118.46.50.135/wordpress/?p=68', 0, 'revision', '', 0),
(70, 1, '2023-01-19 14:44:54', '2023-01-19 05:44:54', '<!-- wp:list -->\n<ul></ul>\n<!-- /wp:list -->\n\n<!-- wp:calendar /-->', '[Today I Felt]', '', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2023-01-19 14:44:54', '2023-01-19 05:44:54', '', 67, 'http://118.46.50.135/wordpress/?p=70', 0, 'revision', '', 0),
(72, 1, '2023-01-19 14:56:43', '2023-01-19 05:56:43', '<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column {\"width\":\"100%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:100%\"><!-- wp:table {\"className\":\"is-style-stripes\"} -->\n<figure class=\"wp-block-table is-style-stripes\"><table><tbody><tr><td>일지</td><td>날짜</td><td>참여자</td><td>상태 </td><td>수업</td></tr><tr><td>📌스터디 일지 20회차<br> &amp; 세미프로젝트 2일</td><td>2023년 1월 16일</td><td><br>정한교<br>임세희<br>김지원<br>이승수<br>배수빈</td><td><br>Excellent</td><td><br>세미프로젝트 2일차</td></tr><tr><td>📌스터디 일지 19회차 <br>&amp; 세미프로젝트 1일</td><td>2023년 1월 15일</td><td><br>정한교<br>임세희<br>김지원<br>이승수<br>배수빈</td><td><br>Excellent</td><td><br>리눅스 기초 <br>16일차 세미프로젝트 1일차</td></tr><tr><td>📌 스터디 일지 18회차</td><td>2023년 1월 13일</td><td>정한교<br>임세희<br>김지원<br>이승수<br>배수빈</td><td><br>Excellent</td><td><br>리눅스 기초 15일차</td></tr><tr><td>📌 스터디 일지 17회차</td><td>2023년 1월 12일</td><td>정한교<br>임세희<br>김지원<br>이승수<br>배수빈</td><td><br>Excellent</td><td><br>리눅스 기초 14일차</td></tr></tbody></table></figure>\n<!-- /wp:table --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', '[스터디 일지]', '', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2023-01-19 14:56:43', '2023-01-19 05:56:43', '', 67, 'http://118.46.50.135/wordpress/?p=72', 0, 'revision', '', 0),
(75, 1, '2023-01-19 15:03:56', '2023-01-19 06:03:56', '<!-- wp:paragraph {\"backgroundColor\":\"background_color\",\"textColor\":\"black\"} -->\n<p class=\"has-black-color has-background-color-background-color has-text-color has-background\">5조 뭉게 구름 수업 내용 후기!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer -->\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:calendar /-->', '[ 수업 후기 ]', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2023-01-19 15:03:56', '2023-01-19 06:03:56', '', 33, 'http://118.46.50.135/wordpress/?p=75', 0, 'revision', '', 0),
(77, 1, '2023-01-19 15:06:58', '2023-01-19 06:06:58', '<!-- wp:paragraph {\"backgroundColor\":\"background_color\",\"textColor\":\"black\"} -->\n<p class=\"has-black-color has-background-color-background-color has-text-color has-background\">5조 뭉게 구름 수업 내용 후기!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer -->\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:calendar /-->\n\n<!-- wp:separator {\"align\":\"wide\"} -->\n<hr class=\"wp-block-separator alignwide has-alpha-channel-opacity\"/>\n<!-- /wp:separator -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '[ 수업 후기 ]', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2023-01-19 15:06:58', '2023-01-19 06:06:58', '', 33, 'http://118.46.50.135/wordpress/?p=77', 0, 'revision', '', 0),
(80, 1, '2023-01-19 15:37:18', '2023-01-19 06:37:18', '<!-- wp:paragraph {\"backgroundColor\":\"background_color\",\"textColor\":\"black\"} -->\n<p class=\"has-black-color has-background-color-background-color has-text-color has-background\">5조 뭉게 구름 수업 내용 후기!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer -->\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:calendar /-->\n\n<!-- wp:separator {\"align\":\"wide\"} -->\n<hr class=\"wp-block-separator alignwide has-alpha-channel-opacity\"/>\n<!-- /wp:separator -->\n\n<!-- wp:post-date {\"textAlign\":\"center\"} /-->\n\n<!-- wp:group {\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group\"><!-- wp:group {\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group\"><!-- wp:avatar {\"size\":42} /-->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>\"이승수\"</h3>\n<!-- /wp:heading -->\n\n<!-- wp:buttons {\"fontSize\":\"small\"} -->\n<div class=\"wp-block-buttons has-custom-font-size has-small-font-size\"><!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\">난이도 : 중</a></div>\n<!-- /wp:button -->\n\n<!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\">이해도 : 중</a></div>\n<!-- /wp:button -->\n\n<!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\">집중도 : 중</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><!-- wp:paragraph -->\n<p>후기 : sql, web service, http을 배우고 직접 사이트를 만들며 실습하였다. 처음 만들어보는 것이라 흥미로웠고 놓치지 않으려고 집중하여 들었다.</p>\n<!-- /wp:paragraph --></blockquote>\n<!-- /wp:quote --></div>\n<!-- /wp:group --></div>\n<!-- /wp:group -->\n\n<!-- wp:avatar {\"size\":42} /-->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>\"김지원\"</h3>\n<!-- /wp:heading -->\n\n<!-- wp:buttons {\"fontSize\":\"small\"} -->\n<div class=\"wp-block-buttons has-custom-font-size has-small-font-size\"><!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\">난이도 : 하</a></div>\n<!-- /wp:button -->\n\n<!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\">이해도 : 중</a></div>\n<!-- /wp:button -->\n\n<!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\">집중도 : 중</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><!-- wp:paragraph -->\n<p>후기 : selinux에 대해 공부했다. selinux의 기능과 사용법, 비활성화 등에 대해 배웠고, 그 후로는 DB에 대해 공부했다.</p>\n<!-- /wp:paragraph --></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:avatar {\"size\":42} /-->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>\"정한교\"</h3>\n<!-- /wp:heading -->\n\n<!-- wp:buttons {\"fontSize\":\"small\"} -->\n<div class=\"wp-block-buttons has-custom-font-size has-small-font-size\"><!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\">난이도 : 하</a></div>\n<!-- /wp:button -->\n\n<!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\">이해도 : 중</a></div>\n<!-- /wp:button -->\n\n<!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\">집중도 : 하</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><!-- wp:paragraph -->\n<p>후기 :mysql 기본설정과 제로보드 , 워드프레스 기본세팅을 배웠다</p>\n<!-- /wp:paragraph --></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:avatar {\"size\":42} /-->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>\"배수빈\"</h3>\n<!-- /wp:heading -->\n\n<!-- wp:buttons {\"fontSize\":\"small\"} -->\n<div class=\"wp-block-buttons has-custom-font-size has-small-font-size\"><!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\">난이도 : 하</a></div>\n<!-- /wp:button -->\n\n<!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\">이해도 : 중</a></div>\n<!-- /wp:button -->\n\n<!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\">집중도 : 중</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><!-- wp:paragraph -->\n<p>후기 : 웹 빌더 툴인 워드프레스를 통해 웹 페이지를 간단하게 만들어보았다. 리눅스를 통해 웹 사이트를 설정해 볼 수 있었다.</p>\n<!-- /wp:paragraph --></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:avatar {\"size\":42} /-->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>\"임세희\"</h3>\n<!-- /wp:heading -->\n\n<!-- wp:buttons {\"fontSize\":\"small\"} -->\n<div class=\"wp-block-buttons has-custom-font-size has-small-font-size\"><!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\">난이도 : 하</a></div>\n<!-- /wp:button -->\n\n<!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\">이해도 : 중</a></div>\n<!-- /wp:button -->\n\n<!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\">집중도 : 하</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><!-- wp:paragraph -->\n<p>후기 :DB관리 및 검색, 생성 등의 과정을 배우고 실습했다. 기존에 놓친 과정들이 있어서 실습에 어려움이 있었던 것 같다.</p>\n<!-- /wp:paragraph --></blockquote>\n<!-- /wp:quote -->', '[ 수업 후기 ]', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2023-01-19 15:37:18', '2023-01-19 06:37:18', '', 33, 'http://118.46.50.135/wordpress/?p=80', 0, 'revision', '', 0),
(81, 1, '2023-01-19 15:38:01', '2023-01-19 06:38:01', '<!-- wp:paragraph {\"backgroundColor\":\"background_color\",\"textColor\":\"black\"} -->\n<p class=\"has-black-color has-background-color-background-color has-text-color has-background\">5조 뭉게 구름 수업 내용 후기!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer -->\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:calendar /-->\n\n<!-- wp:separator {\"align\":\"wide\"} -->\n<hr class=\"wp-block-separator alignwide has-alpha-channel-opacity\"/>\n<!-- /wp:separator -->\n\n<!-- wp:post-date {\"textAlign\":\"center\"} /-->\n\n<!-- wp:group {\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group\"><!-- wp:group {\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group\"><!-- wp:avatar {\"size\":42} /-->\n\n<!-- wp:heading {\"level\":4} -->\n<h4>\"이승수\"</h4>\n<!-- /wp:heading -->\n\n<!-- wp:buttons {\"fontSize\":\"small\"} -->\n<div class=\"wp-block-buttons has-custom-font-size has-small-font-size\"><!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\">난이도 : 중</a></div>\n<!-- /wp:button -->\n\n<!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\">이해도 : 중</a></div>\n<!-- /wp:button -->\n\n<!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\">집중도 : 중</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><!-- wp:paragraph -->\n<p>후기 : sql, web service, http을 배우고 직접 사이트를 만들며 실습하였다. 처음 만들어보는 것이라 흥미로웠고 놓치지 않으려고 집중하여 들었다.</p>\n<!-- /wp:paragraph --></blockquote>\n<!-- /wp:quote --></div>\n<!-- /wp:group --></div>\n<!-- /wp:group -->\n\n<!-- wp:avatar {\"size\":42} /-->\n\n<!-- wp:heading {\"level\":4} -->\n<h4>\"김지원\"</h4>\n<!-- /wp:heading -->\n\n<!-- wp:buttons {\"fontSize\":\"small\"} -->\n<div class=\"wp-block-buttons has-custom-font-size has-small-font-size\"><!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\">난이도 : 하</a></div>\n<!-- /wp:button -->\n\n<!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\">이해도 : 중</a></div>\n<!-- /wp:button -->\n\n<!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\">집중도 : 중</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><!-- wp:paragraph -->\n<p>후기 : selinux에 대해 공부했다. selinux의 기능과 사용법, 비활성화 등에 대해 배웠고, 그 후로는 DB에 대해 공부했다.</p>\n<!-- /wp:paragraph --></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:avatar {\"size\":42} /-->\n\n<!-- wp:heading {\"level\":4} -->\n<h4>\"정한교\"</h4>\n<!-- /wp:heading -->\n\n<!-- wp:buttons {\"fontSize\":\"small\"} -->\n<div class=\"wp-block-buttons has-custom-font-size has-small-font-size\"><!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\">난이도 : 하</a></div>\n<!-- /wp:button -->\n\n<!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\">이해도 : 중</a></div>\n<!-- /wp:button -->\n\n<!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\">집중도 : 하</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><!-- wp:paragraph -->\n<p>후기 :mysql 기본설정과 제로보드 , 워드프레스 기본세팅을 배웠다</p>\n<!-- /wp:paragraph --></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:avatar {\"size\":42} /-->\n\n<!-- wp:heading {\"level\":4} -->\n<h4>\"배수빈\"</h4>\n<!-- /wp:heading -->\n\n<!-- wp:buttons {\"fontSize\":\"small\"} -->\n<div class=\"wp-block-buttons has-custom-font-size has-small-font-size\"><!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\">난이도 : 하</a></div>\n<!-- /wp:button -->\n\n<!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\">이해도 : 중</a></div>\n<!-- /wp:button -->\n\n<!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\">집중도 : 중</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><!-- wp:paragraph -->\n<p>후기 : 웹 빌더 툴인 워드프레스를 통해 웹 페이지를 간단하게 만들어보았다. 리눅스를 통해 웹 사이트를 설정해 볼 수 있었다.</p>\n<!-- /wp:paragraph --></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:avatar {\"size\":42} /-->\n\n<!-- wp:heading {\"level\":4} -->\n<h4>\"임세희\"</h4>\n<!-- /wp:heading -->\n\n<!-- wp:buttons {\"fontSize\":\"small\"} -->\n<div class=\"wp-block-buttons has-custom-font-size has-small-font-size\"><!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\">난이도 : 하</a></div>\n<!-- /wp:button -->\n\n<!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\">이해도 : 중</a></div>\n<!-- /wp:button -->\n\n<!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\">집중도 : 하</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><!-- wp:paragraph -->\n<p>후기 :DB관리 및 검색, 생성 등의 과정을 배우고 실습했다. 기존에 놓친 과정들이 있어서 실습에 어려움이 있었던 것 같다.</p>\n<!-- /wp:paragraph --></blockquote>\n<!-- /wp:quote -->', '[ 수업 후기 ]', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2023-01-19 15:38:01', '2023-01-19 06:38:01', '', 33, 'http://118.46.50.135/wordpress/?p=81', 0, 'revision', '', 0),
(82, 1, '2023-01-19 15:38:27', '2023-01-19 06:38:27', '<!-- wp:paragraph {\"backgroundColor\":\"background_color\",\"textColor\":\"black\"} -->\n<p class=\"has-black-color has-background-color-background-color has-text-color has-background\">5조 뭉게 구름 수업 내용 후기!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer -->\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:calendar /-->\n\n<!-- wp:separator {\"align\":\"wide\"} -->\n<hr class=\"wp-block-separator alignwide has-alpha-channel-opacity\"/>\n<!-- /wp:separator -->\n\n<!-- wp:post-date {\"textAlign\":\"center\"} /-->\n\n<!-- wp:group {\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group\"><!-- wp:group {\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group\"><!-- wp:avatar {\"size\":42} /-->\n\n<!-- wp:heading {\"level\":5} -->\n<h5>\"이승수\"</h5>\n<!-- /wp:heading -->\n\n<!-- wp:buttons {\"fontSize\":\"small\"} -->\n<div class=\"wp-block-buttons has-custom-font-size has-small-font-size\"><!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\">난이도 : 중</a></div>\n<!-- /wp:button -->\n\n<!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\">이해도 : 중</a></div>\n<!-- /wp:button -->\n\n<!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\">집중도 : 중</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><!-- wp:paragraph -->\n<p>후기 : sql, web service, http을 배우고 직접 사이트를 만들며 실습하였다. 처음 만들어보는 것이라 흥미로웠고 놓치지 않으려고 집중하여 들었다.</p>\n<!-- /wp:paragraph --></blockquote>\n<!-- /wp:quote --></div>\n<!-- /wp:group --></div>\n<!-- /wp:group -->\n\n<!-- wp:avatar {\"size\":42} /-->\n\n<!-- wp:heading {\"level\":5} -->\n<h5>\"김지원\"</h5>\n<!-- /wp:heading -->\n\n<!-- wp:buttons {\"fontSize\":\"small\"} -->\n<div class=\"wp-block-buttons has-custom-font-size has-small-font-size\"><!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\">난이도 : 하</a></div>\n<!-- /wp:button -->\n\n<!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\">이해도 : 중</a></div>\n<!-- /wp:button -->\n\n<!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\">집중도 : 중</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><!-- wp:paragraph -->\n<p>후기 : selinux에 대해 공부했다. selinux의 기능과 사용법, 비활성화 등에 대해 배웠고, 그 후로는 DB에 대해 공부했다.</p>\n<!-- /wp:paragraph --></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:avatar {\"size\":42} /-->\n\n<!-- wp:heading {\"level\":5} -->\n<h5>\"정한교\"</h5>\n<!-- /wp:heading -->\n\n<!-- wp:buttons {\"fontSize\":\"small\"} -->\n<div class=\"wp-block-buttons has-custom-font-size has-small-font-size\"><!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\">난이도 : 하</a></div>\n<!-- /wp:button -->\n\n<!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\">이해도 : 중</a></div>\n<!-- /wp:button -->\n\n<!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\">집중도 : 하</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><!-- wp:paragraph -->\n<p>후기 :mysql 기본설정과 제로보드 , 워드프레스 기본세팅을 배웠다</p>\n<!-- /wp:paragraph --></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:avatar {\"size\":42} /-->\n\n<!-- wp:heading {\"level\":5} -->\n<h5>\"배수빈\"</h5>\n<!-- /wp:heading -->\n\n<!-- wp:buttons {\"fontSize\":\"small\"} -->\n<div class=\"wp-block-buttons has-custom-font-size has-small-font-size\"><!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\">난이도 : 하</a></div>\n<!-- /wp:button -->\n\n<!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\">이해도 : 중</a></div>\n<!-- /wp:button -->\n\n<!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\">집중도 : 중</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><!-- wp:paragraph -->\n<p>후기 : 웹 빌더 툴인 워드프레스를 통해 웹 페이지를 간단하게 만들어보았다. 리눅스를 통해 웹 사이트를 설정해 볼 수 있었다.</p>\n<!-- /wp:paragraph --></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:avatar {\"size\":42} /-->\n\n<!-- wp:heading {\"level\":5} -->\n<h5>\"임세희\"</h5>\n<!-- /wp:heading -->\n\n<!-- wp:buttons {\"fontSize\":\"small\"} -->\n<div class=\"wp-block-buttons has-custom-font-size has-small-font-size\"><!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\">난이도 : 하</a></div>\n<!-- /wp:button -->\n\n<!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\">이해도 : 중</a></div>\n<!-- /wp:button -->\n\n<!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\">집중도 : 하</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><!-- wp:paragraph -->\n<p>후기 :DB관리 및 검색, 생성 등의 과정을 배우고 실습했다. 기존에 놓친 과정들이 있어서 실습에 어려움이 있었던 것 같다.</p>\n<!-- /wp:paragraph --></blockquote>\n<!-- /wp:quote -->', '[ 수업 후기 ]', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2023-01-19 15:38:27', '2023-01-19 06:38:27', '', 33, 'http://118.46.50.135/wordpress/?p=82', 0, 'revision', '', 0),
(84, 1, '2023-01-19 15:40:02', '2023-01-19 06:40:02', '<!-- wp:paragraph {\"backgroundColor\":\"background_color\",\"textColor\":\"black\"} -->\n<p class=\"has-black-color has-background-color-background-color has-text-color has-background\">5조 뭉게 구름 수업 내용 후기!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer -->\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:calendar /-->\n\n<!-- wp:separator {\"align\":\"wide\"} -->\n<hr class=\"wp-block-separator alignwide has-alpha-channel-opacity\"/>\n<!-- /wp:separator -->\n\n<!-- wp:post-date {\"textAlign\":\"center\"} /-->\n\n<!-- wp:group {\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group\"><!-- wp:group {\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group\"><!-- wp:avatar {\"size\":42} /-->\n\n<!-- wp:heading {\"level\":5} -->\n<h5>\"이승수\"</h5>\n<!-- /wp:heading -->\n\n<!-- wp:buttons {\"fontSize\":\"small\"} -->\n<div class=\"wp-block-buttons has-custom-font-size has-small-font-size\"><!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\">난이도 : 중</a></div>\n<!-- /wp:button -->\n\n<!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\">이해도 : 중</a></div>\n<!-- /wp:button -->\n\n<!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\">집중도 : 중</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><!-- wp:paragraph -->\n<p>후기 : sql, web service, http을 배우고 직접 사이트를 만들며 실습하였다. 처음 만들어보는 것이라 흥미로웠고 놓치지 않으려고 집중하여 들었다.</p>\n<!-- /wp:paragraph --></blockquote>\n<!-- /wp:quote --></div>\n<!-- /wp:group --></div>\n<!-- /wp:group -->\n\n<!-- wp:separator -->\n<hr class=\"wp-block-separator has-alpha-channel-opacity\"/>\n<!-- /wp:separator -->\n\n<!-- wp:avatar {\"size\":42} /-->\n\n<!-- wp:heading {\"level\":5} -->\n<h5>\"김지원\"</h5>\n<!-- /wp:heading -->\n\n<!-- wp:buttons {\"fontSize\":\"small\"} -->\n<div class=\"wp-block-buttons has-custom-font-size has-small-font-size\"><!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\">난이도 : 하</a></div>\n<!-- /wp:button -->\n\n<!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\">이해도 : 중</a></div>\n<!-- /wp:button -->\n\n<!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\">집중도 : 중</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><!-- wp:paragraph -->\n<p>후기 : selinux에 대해 공부했다. selinux의 기능과 사용법, 비활성화 등에 대해 배웠고, 그 후로는 DB에 대해 공부했다.</p>\n<!-- /wp:paragraph --></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:separator -->\n<hr class=\"wp-block-separator has-alpha-channel-opacity\"/>\n<!-- /wp:separator -->\n\n<!-- wp:avatar {\"size\":42} /-->\n\n<!-- wp:heading {\"level\":5} -->\n<h5>\"정한교\"</h5>\n<!-- /wp:heading -->\n\n<!-- wp:buttons {\"fontSize\":\"small\"} -->\n<div class=\"wp-block-buttons has-custom-font-size has-small-font-size\"><!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\">난이도 : 하</a></div>\n<!-- /wp:button -->\n\n<!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\">이해도 : 중</a></div>\n<!-- /wp:button -->\n\n<!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\">집중도 : 하</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><!-- wp:paragraph -->\n<p>후기 :mysql 기본설정과 제로보드 , 워드프레스 기본세팅을 배웠다</p>\n<!-- /wp:paragraph --></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:separator -->\n<hr class=\"wp-block-separator has-alpha-channel-opacity\"/>\n<!-- /wp:separator -->\n\n<!-- wp:avatar {\"size\":42} /-->\n\n<!-- wp:heading {\"level\":5} -->\n<h5>\"배수빈\"</h5>\n<!-- /wp:heading -->\n\n<!-- wp:buttons {\"fontSize\":\"small\"} -->\n<div class=\"wp-block-buttons has-custom-font-size has-small-font-size\"><!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\">난이도 : 하</a></div>\n<!-- /wp:button -->\n\n<!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\">이해도 : 중</a></div>\n<!-- /wp:button -->\n\n<!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\">집중도 : 중</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><!-- wp:paragraph -->\n<p>후기 : 웹 빌더 툴인 워드프레스를 통해 웹 페이지를 간단하게 만들어보았다. 리눅스를 통해 웹 사이트를 설정해 볼 수 있었다.</p>\n<!-- /wp:paragraph --></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:separator -->\n<hr class=\"wp-block-separator has-alpha-channel-opacity\"/>\n<!-- /wp:separator -->\n\n<!-- wp:avatar {\"size\":42} /-->\n\n<!-- wp:heading {\"level\":5} -->\n<h5>\"임세희\"</h5>\n<!-- /wp:heading -->\n\n<!-- wp:buttons {\"fontSize\":\"small\"} -->\n<div class=\"wp-block-buttons has-custom-font-size has-small-font-size\"><!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\">난이도 : 하</a></div>\n<!-- /wp:button -->\n\n<!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\">이해도 : 중</a></div>\n<!-- /wp:button -->\n\n<!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\">집중도 : 하</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><!-- wp:paragraph -->\n<p>후기 :DB관리 및 검색, 생성 등의 과정을 배우고 실습했다. 기존에 놓친 과정들이 있어서 실습에 어려움이 있었던 것 같다.</p>\n<!-- /wp:paragraph --></blockquote>\n<!-- /wp:quote -->', '[ 수업 후기 ]', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2023-01-19 15:40:02', '2023-01-19 06:40:02', '', 33, 'http://118.46.50.135/wordpress/?p=84', 0, 'revision', '', 0),
(86, 1, '2023-01-19 16:01:48', '2023-01-19 07:01:48', '<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column {\"width\":\"100%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:100%\"><!-- wp:table {\"className\":\"is-style-stripes\"} -->\n<figure class=\"wp-block-table is-style-stripes\"><table><thead><tr><th>일지</th><th>날짜</th><th>참여자</th><th>상태</th><th>수업</th></tr></thead><tbody><tr><td></td><td></td><td></td><td></td><td></td></tr><tr><td>📌스터디 일지 20회차<br> &amp; 세미프로젝트 2일</td><td>2023년 1월 16일</td><td><br>정한교<br>임세희<br>김지원<br>이승수<br>배수빈</td><td><br>Excellent</td><td><br>세미프로젝트 2일차</td></tr><tr><td>📌스터디 일지 19회차 <br>&amp; 세미프로젝트 1일</td><td>2023년 1월 15일</td><td><br>정한교<br>임세희<br>김지원<br>이승수<br>배수빈</td><td><br>Excellent</td><td><br>리눅스 기초 <br>16일차 세미프로젝트 1일차</td></tr><tr><td>📌 스터디 일지 18회차</td><td>2023년 1월 13일</td><td>정한교<br>임세희<br>김지원<br>이승수<br>배수빈</td><td><br>Excellent</td><td><br>리눅스 기초 15일차</td></tr><tr><td>📌 스터디 일지 17회차</td><td>2023년 1월 12일</td><td>정한교<br>임세희<br>김지원<br>이승수<br>배수빈</td><td><br>Excellent</td><td><br>리눅스 기초 14일차</td></tr></tbody></table></figure>\n<!-- /wp:table --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', '[스터디 일지]', '', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2023-01-19 16:01:48', '2023-01-19 07:01:48', '', 67, 'http://118.46.50.135/wordpress/?p=86', 0, 'revision', '', 0),
(88, 1, '2023-01-19 16:31:02', '2023-01-19 07:31:02', '<!-- wp:list -->\n<ul><!-- wp:list-item -->\n<li><strong>오늘 수업 후기 적기 후 각자 정리</strong></li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li><strong>파이썬 알고리즘 스터디 (비타알고-코딩테스트-초급부터-중급까지) 하루 한개 후 깃 허브 커밋</strong><br><a rel=\"noreferrer noopener\" href=\"https://k-digital.goorm.io/\" target=\"_blank\">https://k-digital.goorm.io/</a></li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->\n\n<!-- wp:separator -->\n<hr class=\"wp-block-separator has-alpha-channel-opacity\"/>\n<!-- /wp:separator -->\n\n<!-- wp:heading {\"textAlign\":\"center\",\"level\":4} -->\n<h4 class=\"has-text-align-center\">알고리즘 깃 허브</h4>\n<!-- /wp:heading -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"100%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:100%\"><!-- wp:group {\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group\"><!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph -->\n<p>정한교</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><a href=\"https://github.com/tkfka1/cumulusclouds_algo\" target=\"_blank\" rel=\"noreferrer noopener\">https://github.com/tkfka1/cumulusclouds_algo</a></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph -->\n<p>김지원</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><a href=\"https://github.com/kogo28/python_coding_test\">https://github.com/kogo28/python_coding_test</a></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph -->\n<p>배수빈</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><a href=\"https://github.com/baexxbin/Algorithms\">https://github.com/baexxbin/Algorithms</a></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div>\n<!-- /wp:group --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', '📌스터디 시간 매일 할 것', '', 'publish', 'open', 'open', '', '%f0%9f%93%8c%ec%8a%a4%ed%84%b0%eb%94%94-%ec%8b%9c%ea%b0%84-%eb%a7%a4%ec%9d%bc-%ed%95%a0-%ea%b2%83', '', '', '2023-01-19 16:35:18', '2023-01-19 07:35:18', '', 0, 'http://118.46.50.135/wordpress/?p=88', 0, 'post', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(89, 1, '2023-01-19 16:31:02', '2023-01-19 07:31:02', '<!-- wp:list -->\n<ul><!-- wp:list-item -->\n<li>오늘 수업 후기 적기 후 각자 정리</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>파이썬 알고리즘 스터디 (비타알고-코딩테스트-초급부터-중급까지) 하루 한개 후 깃 허브 커밋<a rel=\"noreferrer noopener\" href=\"https://k-digital.goorm.io/\" target=\"_blank\">https://k-digital.goorm.io/</a></li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->\n\n<!-- wp:separator -->\n<hr class=\"wp-block-separator has-alpha-channel-opacity\"/>\n<!-- /wp:separator -->\n\n<!-- wp:heading {\"textAlign\":\"center\",\"level\":4} -->\n<h4 class=\"has-text-align-center\">알고리즘 깃 허브</h4>\n<!-- /wp:heading -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"100%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:100%\"><!-- wp:group {\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group\"><!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph -->\n<p>정한교</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><a href=\"https://github.com/tkfka1/cumulusclouds_algo\" target=\"_blank\" rel=\"noreferrer noopener\">https://github.com/tkfka1/cumulusclouds_algo</a></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph -->\n<p>김지원</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><a href=\"https://github.com/kogo28/python_coding_test\">https://github.com/kogo28/python_coding_test</a></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph -->\n<p>배수빈</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><a href=\"https://github.com/baexxbin/Algorithms\">https://github.com/baexxbin/Algorithms</a></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div>\n<!-- /wp:group --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', '📌스터디 시간 매일 할 것', '', 'inherit', 'closed', 'closed', '', '88-revision-v1', '', '', '2023-01-19 16:31:02', '2023-01-19 07:31:02', '', 88, 'http://118.46.50.135/wordpress/?p=89', 0, 'revision', '', 0),
(91, 1, '2023-01-19 16:34:32', '2023-01-19 07:34:32', '<!-- wp:list -->\n<ul><!-- wp:list-item -->\n<li><strong>오늘 수업 후기 적기 후 각자 정리</strong></li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li><strong>파이썬 알고리즘 스터디 (비타알고-코딩테스트-초급부터-중급까지) 하루 한개 후 깃 허브 커밋</strong><br><a rel=\"noreferrer noopener\" href=\"https://k-digital.goorm.io/\" target=\"_blank\">https://k-digital.goorm.io/</a></li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->\n\n<!-- wp:separator -->\n<hr class=\"wp-block-separator has-alpha-channel-opacity\"/>\n<!-- /wp:separator -->\n\n<!-- wp:heading {\"textAlign\":\"center\",\"level\":4} -->\n<h4 class=\"has-text-align-center\">알고리즘 깃 허브</h4>\n<!-- /wp:heading -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"100%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:100%\"><!-- wp:group {\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group\"><!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph -->\n<p>정한교</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><a href=\"https://github.com/tkfka1/cumulusclouds_algo\" target=\"_blank\" rel=\"noreferrer noopener\">https://github.com/tkfka1/cumulusclouds_algo</a></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph -->\n<p>김지원</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><a href=\"https://github.com/kogo28/python_coding_test\">https://github.com/kogo28/python_coding_test</a></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph -->\n<p>배수빈</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><a href=\"https://github.com/baexxbin/Algorithms\">https://github.com/baexxbin/Algorithms</a></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div>\n<!-- /wp:group --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', '📌스터디 시간 매일 할 것', '', 'inherit', 'closed', 'closed', '', '88-revision-v1', '', '', '2023-01-19 16:34:32', '2023-01-19 07:34:32', '', 88, 'http://118.46.50.135/wordpress/?p=91', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- 테이블 구조 `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- 테이블 구조 `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- 테이블의 덤프 데이터 `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, '방문 기록', '%eb%af%b8-%eb%b6%84%eb%a5%98', 0),
(2, 'twentytwentythree', 'twentytwentythree', 0),
(3, '수업 후기', '%ec%88%98%ec%97%85-%ed%9b%84%ea%b8%b0', 0),
(4, '수업 후기', '%ec%88%98%ec%97%85-%ed%9b%84%ea%b8%b0', 0),
(5, 'Today I Felt', 'today-i-felt', 0),
(6, '홈', '%ed%99%88', 0),
(7, '메뉴', '%eb%a9%94%eb%89%b4', 0),
(8, 'TIF', 'tif', 0),
(9, '스터디 일지', '%ec%8a%a4%ed%84%b0%eb%94%94-%ec%9d%bc%ec%a7%80', 0);

-- --------------------------------------------------------

--
-- 테이블 구조 `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- 테이블의 덤프 데이터 `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(5, 1, 0),
(6, 2, 0),
(33, 3, 0),
(41, 5, 0),
(42, 5, 0),
(45, 6, 0),
(50, 7, 0),
(51, 7, 0),
(52, 7, 0),
(53, 7, 0),
(67, 9, 0),
(88, 1, 0);

-- --------------------------------------------------------

--
-- 테이블 구조 `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- 테이블의 덤프 데이터 `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 3),
(2, 2, 'wp_theme', '', 0, 1),
(3, 3, 'category', '쿠버네티스 11회차 5조 팀원들의 하루하루 수업 후기를 적어 놓은 곳이다.', 0, 1),
(4, 4, 'nav_menu', '', 0, 0),
(5, 5, 'nav_menu', '', 0, 2),
(6, 6, 'nav_menu', '', 0, 1),
(7, 7, 'nav_menu', '', 0, 4),
(8, 8, 'category', '', 0, 0),
(9, 9, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- 테이블 구조 `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- 테이블의 덤프 데이터 `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'groom1'),
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
(14, 1, 'dismissed_wp_pointers', 'theme_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:10:{s:64:\"73ded25d7c2c3f5d82a7170a71f71fb237b93c84eb4243d99ea6e44ad02923fc\";a:4:{s:10:\"expiration\";i:1674180827;s:2:\"ip\";s:14:\"218.152.75.190\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36\";s:5:\"login\";i:1674008027;}s:64:\"2a196e4ad427d65b7df8f5704a6a8417116152e881dad96664d8adaa90272b4e\";a:4:{s:10:\"expiration\";i:1674182432;s:2:\"ip\";s:14:\"218.152.75.190\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36\";s:5:\"login\";i:1674009632;}s:64:\"d5f51d9cb51796827f72216ef70ec24c6326f8288a7e39f41abd3404aca19d2b\";a:4:{s:10:\"expiration\";i:1674182448;s:2:\"ip\";s:14:\"218.152.75.190\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36\";s:5:\"login\";i:1674009648;}s:64:\"a4e5aecb6754597bd4abd9587fb98294a5ee9ec24a2e2b2bb8950a7179d2315e\";a:4:{s:10:\"expiration\";i:1674182780;s:2:\"ip\";s:14:\"218.152.75.190\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36\";s:5:\"login\";i:1674009980;}s:64:\"bc84d6a37b6cf0cdffa239743f02b93582b55a8101c9c94755374302b32df096\";a:4:{s:10:\"expiration\";i:1674291543;s:2:\"ip\";s:15:\"121.164.237.206\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36\";s:5:\"login\";i:1674118743;}s:64:\"3da2c65117b6038b07839669f995b523232d94e097f1b0dbe79a86a8bdeb9d6b\";a:4:{s:10:\"expiration\";i:1674294618;s:2:\"ip\";s:14:\"218.152.75.190\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36\";s:5:\"login\";i:1674121818;}s:64:\"c172802bfe11595288fb4eafa001571ba11c05815b594bbfaaf07f3d4796725c\";a:4:{s:10:\"expiration\";i:1674350226;s:2:\"ip\";s:15:\"112.150.194.118\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36\";s:5:\"login\";i:1674177426;}s:64:\"7ba92fe55c6d95e71bfea49a2d8d1f4cf47d88464c14b32b89ece68f17388f64\";a:4:{s:10:\"expiration\";i:1674350573;s:2:\"ip\";s:14:\"218.152.75.190\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36\";s:5:\"login\";i:1674177773;}s:64:\"1b38c9b06d2b022a15dff0c9ccd1b4805629ec07cfd63cd25d669eef438c6ff9\";a:4:{s:10:\"expiration\";i:1674350695;s:2:\"ip\";s:15:\"121.164.237.206\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36\";s:5:\"login\";i:1674177895;}s:64:\"ffec1c2e83fbc5b808c370313b524365ae8f9c1c78dbb50981f99ec6f4ce0034\";a:4:{s:10:\"expiration\";i:1674350798;s:2:\"ip\";s:14:\"211.225.75.149\";s:2:\"ua\";s:117:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36\";s:5:\"login\";i:1674177998;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:12:\"211.225.75.0\";}'),
(19, 1, 'wp_persisted_preferences', 'a:5:{s:14:\"core/edit-post\";a:3:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;s:10:\"openPanels\";a:7:{i:0;s:23:\"taxonomy-panel-category\";i:1;s:14:\"featured-image\";i:2;s:15:\"page-attributes\";i:3;s:11:\"post-status\";i:4;s:23:\"taxonomy-panel-post_tag\";i:5;s:12:\"post-excerpt\";i:6;s:16:\"discussion-panel\";}}s:9:\"_modified\";s:24:\"2023-01-19T06:31:02.120Z\";s:14:\"core/edit-site\";a:1:{s:12:\"welcomeGuide\";b:0;}s:22:\"core/customize-widgets\";a:2:{s:12:\"welcomeGuide\";b:0;s:12:\"fixedToolbar\";b:1;}s:17:\"core/edit-widgets\";a:2:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;}}'),
(20, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:15:\"title-attribute\";i:2;s:11:\"css-classes\";i:3;s:3:\"xfn\";i:4;s:11:\"description\";}'),
(21, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(22, 1, 'wp_user-settings', 'libraryContent=browse'),
(23, 1, 'wp_user-settings-time', '1673945754'),
(24, 1, 'nav_menu_recently_edited', '4'),
(25, 1, 'closedpostboxes_post', 'a:1:{i:0;s:12:\"obfx-scripts\";}'),
(26, 1, 'metaboxhidden_post', 'a:1:{i:0;s:20:\"hestia-page-settings\";}'),
(27, 1, 'obfx_ignore_visit_dashboard_notice', 'true');

-- --------------------------------------------------------

--
-- 테이블 구조 `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- 테이블의 덤프 데이터 `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'groom1', '$P$BJooLTI.zfC3w.h8avfR.LExVTw5hU.', 'groom1', 'kogo28@gmail.com', 'http://118.46.50.135/wordpress', '2023-01-17 06:22:46', '', 0, 'groom1');

--
-- 덤프된 테이블의 인덱스
--

--
-- 테이블의 인덱스 `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- 테이블의 인덱스 `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- 테이블의 인덱스 `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- 테이블의 인덱스 `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- 테이블의 인덱스 `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- 테이블의 인덱스 `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- 테이블의 인덱스 `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- 테이블의 인덱스 `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- 테이블의 인덱스 `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- 테이블의 인덱스 `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- 테이블의 인덱스 `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- 테이블의 인덱스 `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- 덤프된 테이블의 AUTO_INCREMENT
--

--
-- 테이블의 AUTO_INCREMENT `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- 테이블의 AUTO_INCREMENT `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1430;

--
-- 테이블의 AUTO_INCREMENT `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=207;

--
-- 테이블의 AUTO_INCREMENT `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- 테이블의 AUTO_INCREMENT `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- 테이블의 AUTO_INCREMENT `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- 테이블의 AUTO_INCREMENT `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- 테이블의 AUTO_INCREMENT `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
