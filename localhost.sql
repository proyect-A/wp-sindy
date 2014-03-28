-- phpMyAdmin SQL Dump
-- version 4.0.6deb1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 27-03-2014 a las 20:47:23
-- Versión del servidor: 5.5.35-0ubuntu0.13.10.2
-- Versión de PHP: 5.5.3-1ubuntu2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `wordpress`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=609 ;

--
-- Volcado de datos para la tabla `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://192.168.0.11/wordpress', 'yes'),
(2, 'blogname', 'Coaching Transformacional', 'yes'),
(3, 'blogdescription', '', 'yes'),
(4, 'users_can_register', '0', 'yes'),
(5, 'admin_email', 'andrespereztutor@gmail.com', 'yes'),
(6, 'start_of_week', '1', 'yes'),
(7, 'use_balanceTags', '', 'yes'),
(8, 'use_smilies', '1', 'yes'),
(9, 'require_name_email', '', 'yes'),
(10, 'comments_notify', '', 'yes'),
(11, 'posts_per_rss', '10', 'yes'),
(12, 'rss_use_excerpt', '1', 'yes'),
(13, 'mailserver_url', 'mail.example.com', 'yes'),
(14, 'mailserver_login', 'login@example.com', 'yes'),
(15, 'mailserver_pass', 'password', 'yes'),
(16, 'mailserver_port', '110', 'yes'),
(17, 'default_category', '1', 'yes'),
(18, 'default_comment_status', 'closed', 'yes'),
(19, 'default_ping_status', 'closed', 'yes'),
(20, 'default_pingback_flag', '', 'yes'),
(21, 'posts_per_page', '3', 'yes'),
(22, 'date_format', 'j F, Y', 'yes'),
(23, 'time_format', 'g:i a', 'yes'),
(24, 'links_updated_date_format', 'j F, Y g:i a', 'yes'),
(25, 'links_recently_updated_prepend', '<em>', 'yes'),
(26, 'links_recently_updated_append', '</em>', 'yes'),
(27, 'links_recently_updated_time', '120', 'yes'),
(28, 'comment_moderation', '', 'yes'),
(29, 'moderation_notify', '', 'yes'),
(30, 'permalink_structure', '', 'yes'),
(31, 'gzipcompression', '0', 'yes'),
(32, 'hack_file', '0', 'yes'),
(33, 'blog_charset', 'UTF-8', 'yes'),
(34, 'moderation_keys', '', 'no'),
(35, 'active_plugins', 'a:1:{i:0;s:33:"virtue-toolkit/virtue_toolkit.php";}', 'yes'),
(36, 'home', 'http://192.168.0.11/wordpress', 'yes'),
(37, 'category_base', '', 'yes'),
(38, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(39, 'advanced_edit', '0', 'yes'),
(40, 'comment_max_links', '2', 'yes'),
(41, 'gmt_offset', '0', 'yes'),
(42, 'default_email_category', '1', 'yes'),
(43, 'recently_edited', 'a:5:{i:0;s:53:"/var/www/wordpress/wp-content/themes/coller/style.css";i:2;s:53:"/var/www/wordpress/wp-content/themes/coller/image.php";i:3;s:54:"/var/www/wordpress/wp-content/themes/coller/header.php";i:4;s:53:"/var/www/wordpress/wp-content/themes/virtue/style.css";i:5;s:74:"/var/www/wordpress/wp-content/themes/wordpress-theme-black-white/style.css";}', 'no'),
(44, 'template', 'coller', 'yes'),
(45, 'stylesheet', 'coller', 'yes'),
(46, 'comment_whitelist', '', 'yes'),
(47, 'blacklist_keys', '', 'no'),
(48, 'comment_registration', '', 'yes'),
(49, 'html_type', 'text/html', 'yes'),
(50, 'use_trackback', '0', 'yes'),
(51, 'default_role', 'subscriber', 'yes'),
(52, 'db_version', '26691', 'yes'),
(53, 'uploads_use_yearmonth_folders', '1', 'yes'),
(54, 'upload_path', '', 'yes'),
(55, 'blog_public', '0', 'yes'),
(56, 'default_link_category', '0', 'yes'),
(57, 'show_on_front', 'posts', 'yes'),
(58, 'tag_base', '', 'yes'),
(59, 'show_avatars', '1', 'yes'),
(60, 'avatar_rating', 'G', 'yes'),
(61, 'upload_url_path', '', 'yes'),
(62, 'thumbnail_size_w', '150', 'yes'),
(63, 'thumbnail_size_h', '150', 'yes'),
(64, 'thumbnail_crop', '1', 'yes'),
(65, 'medium_size_w', '300', 'yes'),
(66, 'medium_size_h', '300', 'yes'),
(67, 'avatar_default', 'mystery', 'yes'),
(68, 'large_size_w', '1024', 'yes'),
(69, 'large_size_h', '1024', 'yes'),
(70, 'image_default_link_type', 'file', 'yes'),
(71, 'image_default_size', '', 'yes'),
(72, 'image_default_align', '', 'yes'),
(73, 'close_comments_for_old_posts', '', 'yes'),
(74, 'close_comments_days_old', '14', 'yes'),
(75, 'thread_comments', '', 'yes'),
(76, 'thread_comments_depth', '5', 'yes'),
(77, 'page_comments', '', 'yes'),
(78, 'comments_per_page', '50', 'yes'),
(79, 'default_comments_page', 'newest', 'yes'),
(80, 'comment_order', 'asc', 'yes'),
(81, 'sticky_posts', 'a:0:{}', 'yes'),
(82, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(83, 'widget_text', 'a:0:{}', 'yes'),
(84, 'widget_rss', 'a:0:{}', 'yes'),
(85, 'uninstall_plugins', 'a:0:{}', 'no'),
(86, 'timezone_string', '', 'yes'),
(87, 'page_for_posts', '0', 'yes'),
(88, 'page_on_front', '0', 'yes'),
(89, 'default_post_format', '0', 'yes'),
(90, 'link_manager_enabled', '0', 'yes'),
(91, 'initial_db_version', '26691', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'widget_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:4:{i:0;s:14:"recent-posts-2";i:1;s:17:"recent-comments-2";i:2;s:10:"archives-2";i:3;s:12:"categories-2";}s:13:"array_version";i:3;}', 'yes'),
(99, 'cron', 'a:6:{i:1395981058;a:1:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1395981059;a:2:{s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1395990480;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1396014405;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1396024290;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(101, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:2:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:49:"http://es.wordpress.org/wordpress-3.8.1-es_ES.zip";s:6:"locale";s:5:"es_ES";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:49:"http://es.wordpress.org/wordpress-3.8.1-es_ES.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"3.8.1";s:7:"version";s:5:"3.8.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"3.8";s:15:"partial_version";s:0:"";}i:1;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:41:"https://wordpress.org/wordpress-3.8.1.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:41:"https://wordpress.org/wordpress-3.8.1.zip";s:10:"no_content";s:52:"https://wordpress.org/wordpress-3.8.1-no-content.zip";s:11:"new_bundled";s:53:"https://wordpress.org/wordpress-3.8.1-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"3.8.1";s:7:"version";s:5:"3.8.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"3.8";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1395966908;s:15:"version_checked";s:5:"3.8.1";s:12:"translations";a:0:{}}', 'yes'),
(109, '_site_transient_timeout_browser_a36fadfe0b9a902ab0aaf7526d0cbc4d', '1392913869', 'yes'),
(110, '_site_transient_browser_a36fadfe0b9a902ab0aaf7526d0cbc4d', 'a:9:{s:8:"platform";s:5:"Linux";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"32.0.1700.102";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(111, 'can_compress_scripts', '0', 'yes'),
(129, '_transient_twentyfourteen_category_count', '1', 'yes'),
(155, 'recently_activated', 'a:0:{}', 'yes'),
(156, 'theme_mods_twentyfourteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1392383157;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(157, 'current_theme', 'Coller', 'yes'),
(158, 'theme_mods_sixteen', 'a:8:{i:0;b:0;s:16:"header_textcolor";s:3:"fff";s:16:"background_color";s:6:"e6e1c4";s:16:"background_image";s:0:"";s:17:"background_repeat";s:6:"repeat";s:21:"background_position_x";s:4:"left";s:21:"background_attachment";s:5:"fixed";s:16:"sidebars_widgets";a:2:{s:4:"time";i:1392387991;s:4:"data";a:5:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}s:9:"sidebar-4";N;}}}', 'yes'),
(159, 'theme_switched', '', 'yes'),
(160, 'optionsframework', 'a:2:{s:2:"id";s:23:"optionsframework_coller";s:12:"knownoptions";a:3:{i:0;s:24:"optionsframework_sixteen";i:1;s:13:"blackandwhite";i:2;s:23:"optionsframework_coller";}}', 'yes'),
(161, 'optionsframework_sixteen', 'a:26:{s:11:"footertext2";s:0:"";s:14:"sidebar-layout";s:5:"right";s:6:"style2";s:0:"";s:14:"slider_enabled";b:0;s:11:"slidetitle1";s:0:"";s:10:"slidedesc1";s:0:"";s:9:"slideurl1";s:0:"";s:11:"slidetitle2";s:0:"";s:10:"slidedesc2";s:0:"";s:9:"slideurl2";s:0:"";s:11:"slidetitle3";s:0:"";s:10:"slidedesc3";s:0:"";s:9:"slideurl3";s:0:"";s:11:"slidetitle4";s:0:"";s:10:"slidedesc4";s:0:"";s:9:"slideurl4";s:0:"";s:11:"slidetitle5";s:0:"";s:10:"slidedesc5";s:0:"";s:9:"slideurl5";s:0:"";s:8:"facebook";s:0:"";s:7:"twitter";s:0:"";s:6:"google";s:0:"";s:10:"feedburner";s:0:"";s:9:"instagram";s:0:"";s:6:"flickr";s:0:"";s:7:"credit1";b:0;}', 'yes'),
(170, 'theme_mods_Photum', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1392386131;s:4:"data";a:3:{s:19:"wp_inactive_widgets";a:0:{}s:19:"primary-widget-area";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:21:"blog-page-widget-area";a:0:{}}}}', 'yes'),
(171, 'of_template', 'a:3:{i:0;a:2:{s:4:"name";s:16:"General Settings";s:4:"type";s:7:"heading";}i:1;a:5:{s:4:"name";s:11:"Custom Logo";s:4:"desc";s:110:"Upload a logo for your theme, or specify the image address of your online logo. (http://yoursite.com/logo.png)";s:2:"id";s:7:"of_logo";s:3:"std";s:0:"";s:4:"type";s:6:"upload";}i:2;a:5:{s:4:"name";s:13:"Tracking Code";s:4:"desc";s:117:"Paste your Google Analytics (or other) tracking code here. This will be added into the footer template of your theme.";s:2:"id";s:19:"of_google_analytics";s:3:"std";s:0:"";s:4:"type";s:8:"textarea";}}', 'yes'),
(172, 'of_themename', 'Photum', 'yes'),
(173, 'of_shortname', 'of', 'yes'),
(174, '_is_widget_active_', '1', 'yes'),
(178, '_transient_timeout_presstrends_data', '1392472233', 'no'),
(179, '_transient_presstrends_data', 'a:7:{s:3:"url";s:18:"192.168.0.11wordpress";s:5:"posts";s:1:"2";s:8:"comments";i:1;s:13:"theme_version";s:3:"1.1";s:10:"theme_name";s:18:"Elmundoenimágenes";s:7:"plugins";i:0;s:9:"wpversion";s:5:"3.8.1";}', 'no'),
(180, 'of_logo', '', 'yes'),
(181, 'of_google_analytics', '', 'yes'),
(182, 'theme_mods_photographertheme', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1392392115;s:4:"data";a:5:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";N;s:9:"sidebar-4";N;}}}', 'yes'),
(188, '_transient_random_seed', '70ac0f53937cfe777e51fb095f8d4d57', 'yes'),
(196, 'theme_mods_wordpress-theme-black-white', 'a:9:{i:0;b:0;s:12:"header_image";s:13:"remove-header";s:16:"header_textcolor";s:0:"";s:16:"background_color";s:0:"";s:16:"background_image";s:83:"http://192.168.0.11/wordpress/wp-content/uploads/2014/02/11776858256_bb3e495f13_o2.jpg";s:17:"background_repeat";s:9:"no-repeat";s:21:"background_position_x";s:6:"center";s:21:"background_attachment";s:6:"scroll";s:16:"sidebars_widgets";a:2:{s:4:"time";i:1392693916;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(197, 'blackandwhite', 'a:41:{s:7:"ff_logo";s:0:"";s:12:"search_check";s:1:"1";s:15:"navigation_font";N;s:6:"h_font";N;s:16:"heading_fontsize";s:4:"22px";s:15:"sidebar_bgcolor";s:7:"#ffffff";s:13:"menu_fontsize";s:4:"12px";s:7:"a_color";s:7:"#2E70B1";s:7:"h_color";s:7:"#000000";s:9:"nav_color";s:7:"#000000";s:8:"hv_color";s:7:"#000000";s:14:"copyright_text";s:0:"";s:14:"enable_gallery";s:1:"0";s:15:"animation_speed";s:6:"normal";s:8:"pp_theme";s:11:"dark_square";s:11:"pp_autoplay";s:5:"false";s:13:"auto_interval";s:4:"5000";s:14:"slide_interval";s:4:"5000";s:17:"background_slider";s:4:"true";s:11:"slide_speed";s:3:"500";s:13:"slider_effect";s:1:"1";s:3:"bg1";s:83:"http://192.168.0.11/wordpress/wp-content/uploads/2014/02/11776858256_bb3e495f13_o3.jpg";s:3:"bg2";s:83:"http://192.168.0.11/wordpress/wp-content/uploads/2014/02/11792341973_62521e7a24_o3.jpg";s:3:"bg3";s:0:"";s:3:"bg4";s:0:"";s:3:"bg5";s:0:"";s:3:"bg6";s:0:"";s:3:"bg7";s:0:"";s:3:"bg8";s:0:"";s:13:"single_social";s:1:"1";s:13:"enable_social";s:1:"1";s:12:"facebook_url";s:41:"https://www.facebook.com/andrespereztutor";s:11:"twitter_url";s:31:"https://twitter.com/Andrestutor";s:10:"flickr_url";s:45:"http://www.flickr.com/photos/andrespereztutor";s:8:"digg_url";s:0:"";s:10:"reddit_url";s:0:"";s:11:"stumple_url";s:0:"";s:7:"rss_url";s:0:"";s:11:"youtube_url";s:0:"";s:12:"linkedin_url";s:0:"";s:14:"googleplus_url";s:0:"";}', 'yes'),
(204, 'category_children', 'a:0:{}', 'yes'),
(258, 'theme_mods_virtue', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:5:{s:20:"secondary_navigation";i:4;s:18:"primary_navigation";i:0;s:17:"mobile_navigation";i:4;s:17:"topbar_navigation";i:0;s:17:"footer_navigation";i:0;}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1392774191;s:4:"data";a:7:{s:19:"wp_inactive_widgets";a:0:{}s:15:"sidebar-primary";a:7:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";i:6;s:20:"kadence_image_grid-2";}s:8:"sidebar1";a:0:{}s:8:"footer_1";a:0:{}s:8:"footer_2";a:0:{}s:8:"footer_3";a:0:{}s:8:"footer_4";a:0:{}}}}', 'yes'),
(261, 'virtue', 'a:135:{s:8:"last_tab";s:0:"";s:12:"boxed_layout";s:4:"wide";s:13:"footer_layout";s:5:"fourc";s:11:"logo_layout";s:8:"logoleft";s:21:"x1_virtue_logo_upload";a:5:{s:3:"url";s:0:"";s:2:"id";s:0:"";s:6:"height";s:0:"";s:5:"width";s:0:"";s:9:"thumbnail";s:0:"";}s:21:"x2_virtue_logo_upload";a:5:{s:3:"url";s:0:"";s:2:"id";s:0:"";s:6:"height";s:0:"";s:5:"width";s:0:"";s:9:"thumbnail";s:0:"";}s:15:"font_logo_style";a:9:{s:11:"font-family";s:0:"";s:12:"font-options";s:0:"";s:6:"google";s:5:"false";s:11:"font-weight";s:3:"400";s:10:"font-style";s:0:"";s:7:"subsets";s:0:"";s:9:"font-size";s:4:"32px";s:11:"line-height";s:4:"40px";s:5:"color";s:0:"";}s:15:"logo_below_text";s:0:"";s:18:"font_tagline_style";a:9:{s:11:"font-family";s:0:"";s:12:"font-options";s:0:"";s:6:"google";s:5:"false";s:11:"font-weight";s:3:"400";s:10:"font-style";s:0:"";s:7:"subsets";s:0:"";s:9:"font-size";s:4:"14px";s:11:"line-height";s:4:"20px";s:5:"color";s:7:"#444444";}s:16:"logo_padding_top";s:2:"25";s:19:"logo_padding_bottom";s:2:"10";s:17:"logo_padding_left";s:1:"0";s:18:"logo_padding_right";s:1:"0";s:15:"menu_margin_top";s:2:"40";s:18:"menu_margin_bottom";s:2:"10";s:20:"virtue_banner_upload";a:5:{s:3:"url";s:0:"";s:2:"id";s:0:"";s:6:"height";s:0:"";s:5:"width";s:0:"";s:9:"thumbnail";s:0:"";}s:6:"topbar";s:1:"1";s:12:"topbar_icons";s:1:"1";s:16:"topbar_icon_menu";a:3:{i:0;a:11:{s:6:"icon_o";s:0:"";s:3:"url";s:0:"";s:5:"title";s:0:"";s:11:"description";s:0:"";s:4:"link";s:0:"";s:4:"sort";s:1:"0";s:13:"attachment_id";s:0:"";s:5:"thumb";s:0:"";s:5:"image";s:0:"";s:6:"height";s:0:"";s:5:"width";s:0:"";}i:1;a:11:{s:6:"icon_o";s:0:"";s:3:"url";s:0:"";s:5:"title";s:0:"";s:11:"description";s:0:"";s:4:"link";s:0:"";s:4:"sort";s:1:"1";s:13:"attachment_id";s:0:"";s:5:"thumb";s:0:"";s:5:"image";s:0:"";s:6:"height";s:0:"";s:5:"width";s:0:"";}i:2;a:11:{s:6:"icon_o";s:0:"";s:3:"url";s:0:"";s:5:"title";s:0:"";s:11:"description";s:0:"";s:4:"link";s:0:"";s:4:"sort";s:1:"2";s:13:"attachment_id";s:0:"";s:5:"thumb";s:0:"";s:5:"image";s:0:"";s:6:"height";s:0:"";s:5:"width";s:0:"";}}s:14:"show_cartcount";s:1:"1";s:13:"topbar_search";s:1:"1";s:13:"topbar_widget";s:1:"0";s:13:"topbar_layout";s:1:"0";s:13:"choose_slider";s:0:"";s:11:"home_slider";a:1:{i:0;a:10:{s:3:"url";s:0:"";s:5:"title";s:0:"";s:11:"description";s:0:"";s:4:"link";s:0:"";s:4:"sort";s:1:"0";s:13:"attachment_id";s:0:"";s:5:"thumb";s:0:"";s:5:"image";s:0:"";s:6:"height";s:0:"";s:5:"width";s:0:"";}}s:11:"slider_size";s:3:"400";s:17:"slider_size_width";s:4:"1170";s:15:"slider_autoplay";s:1:"1";s:16:"slider_pausetime";s:4:"7000";s:10:"trans_type";s:4:"fade";s:16:"slider_transtime";s:3:"600";s:15:"slider_captions";s:1:"0";s:11:"video_embed";s:0:"";s:13:"mobile_switch";s:1:"0";s:20:"choose_mobile_slider";s:4:"none";s:18:"home_mobile_slider";a:1:{i:0;a:10:{s:3:"url";s:0:"";s:5:"title";s:0:"";s:11:"description";s:0:"";s:4:"link";s:0:"";s:4:"sort";s:1:"0";s:13:"attachment_id";s:0:"";s:5:"thumb";s:0:"";s:5:"image";s:0:"";s:6:"height";s:0:"";s:5:"width";s:0:"";}}s:18:"mobile_slider_size";s:3:"300";s:24:"mobile_slider_size_width";s:3:"480";s:22:"mobile_slider_autoplay";s:1:"1";s:23:"mobile_slider_pausetime";s:4:"7000";s:17:"mobile_trans_type";s:4:"fade";s:23:"mobile_slider_transtime";s:3:"600";s:22:"mobile_slider_captions";s:1:"0";s:18:"mobile_video_embed";s:0:"";s:19:"home_sidebar_layout";s:4:"full";s:12:"home_sidebar";s:15:"sidebar-primary";s:15:"homepage_layout";a:2:{s:8:"disabled";a:4:{s:7:"placebo";s:7:"placebo";s:10:"block_five";s:17:"Últimas entradas";s:9:"block_six";s:18:"Portfolio Carousel";s:11:"block_seven";s:21:"Iconos Página Inicio";}s:7:"enabled";a:3:{s:7:"placebo";s:7:"placebo";s:9:"block_one";s:15:"Título Página";s:10:"block_four";s:17:"Contenido Página";}}s:10:"blog_title";s:0:"";s:15:"home_post_count";s:1:"4";s:14:"home_post_type";s:0:"";s:15:"portfolio_title";s:0:"";s:29:"home_portfolio_carousel_count";s:1:"6";s:20:"home_portfolio_order";s:10:"menu_order";s:19:"portfolio_show_type";s:1:"0";s:9:"icon_menu";a:1:{i:0;a:11:{s:6:"icon_o";s:0:"";s:3:"url";s:0:"";s:5:"title";s:0:"";s:11:"description";s:0:"";s:4:"link";s:0:"";s:4:"sort";s:1:"0";s:13:"attachment_id";s:0:"";s:5:"thumb";s:0:"";s:5:"image";s:0:"";s:6:"height";s:0:"";s:5:"width";s:0:"";}}s:21:"home_icon_menu_column";s:1:"3";s:17:"home_post_summery";s:7:"summery";s:11:"shop_layout";s:4:"full";s:12:"shop_sidebar";s:15:"sidebar-primary";s:17:"products_per_page";s:2:"12";s:11:"shop_rating";s:1:"1";s:15:"font_shop_title";a:9:{s:11:"font-family";s:0:"";s:12:"font-options";s:0:"";s:6:"google";s:5:"false";s:11:"font-weight";s:3:"700";s:10:"font-style";s:0:"";s:7:"subsets";s:0:"";s:9:"font-size";s:4:"16px";s:11:"line-height";s:4:"20px";s:5:"color";s:0:"";}s:20:"shop_title_uppercase";s:1:"1";s:21:"shop_title_min_height";s:2:"40";s:18:"product_img_resize";s:1:"1";s:19:"product_simg_resize";s:1:"1";s:12:"product_tabs";s:1:"1";s:16:"related_products";s:1:"1";s:15:"skin_stylesheet";s:11:"default.css";s:13:"primary_color";s:0:"";s:15:"primary20_color";s:0:"";s:15:"gray_font_color";s:0:"";s:16:"footerfont_color";s:0:"";s:16:"content_bg_color";s:0:"";s:17:"bg_content_bg_img";a:5:{s:3:"url";s:0:"";s:2:"id";s:0:"";s:6:"height";s:0:"";s:5:"width";s:0:"";s:9:"thumbnail";s:0:"";}s:17:"content_bg_repeat";s:0:"";s:21:"content_bg_placementx";s:0:"";s:21:"content_bg_placementy";s:0:"";s:15:"topbar_bg_color";s:0:"";s:16:"bg_topbar_bg_img";a:5:{s:3:"url";s:0:"";s:2:"id";s:0:"";s:6:"height";s:0:"";s:5:"width";s:0:"";s:9:"thumbnail";s:0:"";}s:16:"topbar_bg_repeat";s:0:"";s:20:"topbar_bg_placementx";s:0:"";s:20:"topbar_bg_placementy";s:0:"";s:15:"header_bg_color";s:0:"";s:16:"bg_header_bg_img";a:5:{s:3:"url";s:0:"";s:2:"id";s:0:"";s:6:"height";s:0:"";s:5:"width";s:0:"";s:9:"thumbnail";s:0:"";}s:16:"header_bg_repeat";s:0:"";s:20:"header_bg_placementx";s:0:"";s:20:"header_bg_placementy";s:0:"";s:13:"menu_bg_color";s:0:"";s:14:"bg_menu_bg_img";a:5:{s:3:"url";s:0:"";s:2:"id";s:0:"";s:6:"height";s:0:"";s:5:"width";s:0:"";s:9:"thumbnail";s:0:"";}s:14:"menu_bg_repeat";s:0:"";s:18:"menu_bg_placementx";s:0:"";s:18:"menu_bg_placementy";s:0:"";s:15:"mobile_bg_color";s:0:"";s:16:"bg_mobile_bg_img";a:5:{s:3:"url";s:0:"";s:2:"id";s:0:"";s:6:"height";s:0:"";s:5:"width";s:0:"";s:9:"thumbnail";s:0:"";}s:16:"mobile_bg_repeat";s:0:"";s:20:"mobile_bg_placementx";s:0:"";s:20:"mobile_bg_placementy";s:0:"";s:15:"footer_bg_color";s:0:"";s:16:"bg_footer_bg_img";a:5:{s:3:"url";s:0:"";s:2:"id";s:0:"";s:6:"height";s:0:"";s:5:"width";s:0:"";s:9:"thumbnail";s:0:"";}s:16:"footer_bg_repeat";s:0:"";s:20:"footer_bg_placementx";s:0:"";s:20:"footer_bg_placementy";s:0:"";s:14:"boxed_bg_color";s:0:"";s:15:"bg_boxed_bg_img";a:5:{s:3:"url";s:0:"";s:2:"id";s:0:"";s:6:"height";s:0:"";s:5:"width";s:0:"";s:9:"thumbnail";s:0:"";}s:15:"boxed_bg_repeat";s:0:"";s:19:"boxed_bg_placementx";s:0:"";s:19:"boxed_bg_placementy";s:0:"";s:14:"boxed_bg_fixed";s:0:"";s:7:"font_h1";a:9:{s:11:"font-family";s:0:"";s:12:"font-options";s:0:"";s:6:"google";s:5:"false";s:11:"font-weight";s:3:"400";s:10:"font-style";s:0:"";s:7:"subsets";s:0:"";s:9:"font-size";s:4:"38px";s:11:"line-height";s:4:"40px";s:5:"color";s:0:"";}s:7:"font_h2";a:9:{s:11:"font-family";s:0:"";s:12:"font-options";s:0:"";s:6:"google";s:5:"false";s:11:"font-weight";s:0:"";s:10:"font-style";s:0:"";s:7:"subsets";s:0:"";s:9:"font-size";s:4:"32px";s:11:"line-height";s:4:"40px";s:5:"color";s:0:"";}s:7:"font_h3";a:9:{s:11:"font-family";s:0:"";s:12:"font-options";s:0:"";s:6:"google";s:5:"false";s:11:"font-weight";s:3:"400";s:10:"font-style";s:0:"";s:7:"subsets";s:0:"";s:9:"font-size";s:4:"28px";s:11:"line-height";s:4:"40px";s:5:"color";s:0:"";}s:7:"font_h4";a:9:{s:11:"font-family";s:0:"";s:12:"font-options";s:0:"";s:6:"google";s:5:"false";s:11:"font-weight";s:3:"400";s:10:"font-style";s:0:"";s:7:"subsets";s:0:"";s:9:"font-size";s:4:"24px";s:11:"line-height";s:4:"40px";s:5:"color";s:0:"";}s:7:"font_h5";a:9:{s:11:"font-family";s:0:"";s:12:"font-options";s:0:"";s:6:"google";s:5:"false";s:11:"font-weight";s:3:"700";s:10:"font-style";s:0:"";s:7:"subsets";s:0:"";s:9:"font-size";s:4:"18px";s:11:"line-height";s:4:"24px";s:5:"color";s:0:"";}s:6:"font_p";a:9:{s:11:"font-family";s:27:"Verdana, Geneva, sans-serif";s:12:"font-options";s:99:"{"400":"Normal+400","700":"Bold+700","400italic":"Normal+400+Italic","700italic":"Bold+700+Italic"}";s:6:"google";s:5:"false";s:11:"font-weight";s:3:"400";s:10:"font-style";s:0:"";s:7:"subsets";s:0:"";s:9:"font-size";s:4:"14px";s:11:"line-height";s:4:"20px";s:5:"color";s:0:"";}s:17:"font_primary_menu";a:9:{s:11:"font-family";s:0:"";s:12:"font-options";s:0:"";s:6:"google";s:5:"false";s:11:"font-weight";s:3:"400";s:10:"font-style";s:0:"";s:7:"subsets";s:0:"";s:9:"font-size";s:4:"12px";s:11:"line-height";s:4:"18px";s:5:"color";s:0:"";}s:19:"font_secondary_menu";a:9:{s:11:"font-family";s:0:"";s:12:"font-options";s:0:"";s:6:"google";s:5:"false";s:11:"font-weight";s:3:"400";s:10:"font-style";s:0:"";s:7:"subsets";s:0:"";s:9:"font-size";s:4:"18px";s:11:"line-height";s:4:"22px";s:5:"color";s:0:"";}s:16:"font_mobile_menu";a:9:{s:11:"font-family";s:0:"";s:12:"font-options";s:0:"";s:6:"google";s:5:"false";s:11:"font-weight";s:3:"400";s:10:"font-style";s:0:"";s:7:"subsets";s:0:"";s:9:"font-size";s:4:"16px";s:11:"line-height";s:4:"20px";s:5:"color";s:0:"";}s:14:"portfolio_link";s:0:"";s:18:"portfolio_comments";s:1:"0";s:17:"hide_image_border";s:1:"0";s:17:"blog_archive_full";s:7:"summery";s:14:"close_comments";s:1:"0";s:11:"hide_author";s:1:"1";s:21:"virtue_custom_favicon";a:5:{s:3:"url";s:0:"";s:2:"id";s:0:"";s:6:"height";s:0:"";s:5:"width";s:0:"";s:9:"thumbnail";s:0:"";}s:13:"contact_email";s:13:"test@test.com";s:11:"footer_text";s:49:"[copyright] [the-year] [site-name] [theme-credit]";s:20:"post_summery_default";s:4:"text";s:13:"cust_sidebars";a:1:{i:0;s:0:"";}s:14:"virtue_gallery";s:1:"1";s:10:"custom_css";s:0:"";s:10:"import_old";s:1:"0";s:17:"old_options_child";s:0:"";s:16:"REDUX_last_saved";i:1392772961;s:14:"REDUX_imported";b:0;}', 'yes'),
(338, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(373, 'widget_kadence_image_grid', 'a:2:{i:2;a:5:{s:5:"title";s:0:"";s:6:"number";i:6;s:6:"thecat";s:0:"";s:7:"thetype";s:0:"";s:10:"gridchoice";s:4:"post";}s:12:"_multiwidget";i:1;}', 'yes'),
(401, '_site_transient_timeout_wporg_theme_feature_list', '1392784062', 'yes'),
(402, '_site_transient_wporg_theme_feature_list', 'a:5:{s:6:"Colors";a:15:{i:0;s:5:"black";i:1;s:4:"blue";i:2;s:5:"brown";i:3;s:4:"gray";i:4;s:5:"green";i:5;s:6:"orange";i:6;s:4:"pink";i:7;s:6:"purple";i:8;s:3:"red";i:9;s:6:"silver";i:10;s:3:"tan";i:11;s:5:"white";i:12;s:6:"yellow";i:13;s:4:"dark";i:14;s:5:"light";}s:7:"Columns";a:6:{i:0;s:10:"one-column";i:1;s:11:"two-columns";i:2;s:13:"three-columns";i:3;s:12:"four-columns";i:4;s:12:"left-sidebar";i:5;s:13:"right-sidebar";}s:6:"Layout";a:3:{i:0;s:12:"fixed-layout";i:1;s:12:"fluid-layout";i:2;s:17:"responsive-layout";}s:8:"Features";a:20:{i:0;s:19:"accessibility-ready";i:1;s:8:"blavatar";i:2;s:10:"buddypress";i:3;s:17:"custom-background";i:4;s:13:"custom-colors";i:5;s:13:"custom-header";i:6;s:11:"custom-menu";i:7;s:12:"editor-style";i:8;s:21:"featured-image-header";i:9;s:15:"featured-images";i:10;s:15:"flexible-header";i:11;s:20:"front-page-post-form";i:12;s:19:"full-width-template";i:13;s:12:"microformats";i:14;s:12:"post-formats";i:15;s:20:"rtl-language-support";i:16;s:11:"sticky-post";i:17;s:13:"theme-options";i:18;s:17:"threaded-comments";i:19;s:17:"translation-ready";}s:7:"Subject";a:3:{i:0;s:7:"holiday";i:1;s:13:"photoblogging";i:2;s:8:"seasonal";}}', 'yes'),
(403, 'theme_mods_coller', 'a:7:{i:0;b:0;s:16:"background_color";s:6:"ffffff";s:16:"background_image";s:0:"";s:17:"background_repeat";s:6:"repeat";s:21:"background_position_x";s:4:"left";s:21:"background_attachment";s:5:"fixed";s:18:"nav_menu_locations";a:2:{s:7:"primary";i:0;s:6:"footer";i:0;}}', 'yes'),
(404, 'optionsframework_coller', 'a:28:{s:4:"logo";s:0:"";s:11:"footertext2";s:0:"";s:10:"customcss1";s:0:"";s:14:"slider_enabled";s:1:"1";s:6:"slide1";s:85:"http://192.168.0.11/wordpress/wp-content/uploads/2014/03/file4681263246167-copia2.jpg";s:11:"slidetitle1";s:8:"mensaje1";s:9:"slideurl1";s:0:"";s:6:"slide2";s:84:"http://192.168.0.11/wordpress/wp-content/uploads/2014/03/file0001643876623-copia.jpg";s:11:"slidetitle2";s:8:"mensaje2";s:9:"slideurl2";s:0:"";s:6:"slide3";s:84:"http://192.168.0.11/wordpress/wp-content/uploads/2014/03/file5511311905470-copia.jpg";s:11:"slidetitle3";s:8:"mensaje3";s:9:"slideurl3";s:0:"";s:6:"slide4";s:84:"http://192.168.0.11/wordpress/wp-content/uploads/2014/03/file000533175307-copia1.jpg";s:11:"slidetitle4";s:8:"mensaje4";s:9:"slideurl4";s:0:"";s:6:"slide5";s:84:"http://192.168.0.11/wordpress/wp-content/uploads/2014/03/file2241264606664-copia.jpg";s:11:"slidetitle5";s:8:"mensaje5";s:9:"slideurl5";s:0:"";s:8:"facebook";s:46:"https://www.facebook.com/sindytatiana.guerrero";s:7:"twitter";s:9:"Statianag";s:6:"google";s:0:"";s:9:"pinterest";s:0:"";s:8:"linkedin";s:59:"http://co.linkedin.com/pub/sindy-tatiana-guerrero/50/23/816";s:9:"instagram";s:0:"";s:7:"youtube";s:0:"";s:10:"feedburner";s:0:"";s:7:"credit1";b:0;}', 'yes'),
(406, 'widget_coller_rp', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(518, '_site_transient_timeout_browser_60c63cc124d52a7233ca4fb2b49b3ff2', '1393893415', 'yes'),
(519, '_site_transient_browser_60c63cc124d52a7233ca4fb2b49b3ff2', 'a:9:{s:8:"platform";s:5:"Linux";s:4:"name";s:7:"Firefox";s:7:"version";s:4:"24.0";s:10:"update_url";s:23:"http://www.firefox.com/";s:7:"img_src";s:50:"http://s.wordpress.org/images/browsers/firefox.png";s:11:"img_src_ssl";s:49:"https://wordpress.org/images/browsers/firefox.png";s:15:"current_version";s:2:"16";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(562, '_site_transient_timeout_browser_242ebe9a0d7782caebcfda05641cdd4f', '1396406013', 'yes'),
(563, '_site_transient_browser_242ebe9a0d7782caebcfda05641cdd4f', 'a:9:{s:8:"platform";s:5:"Linux";s:4:"name";s:7:"Firefox";s:7:"version";s:4:"27.0";s:10:"update_url";s:23:"http://www.firefox.com/";s:7:"img_src";s:50:"http://s.wordpress.org/images/browsers/firefox.png";s:11:"img_src_ssl";s:49:"https://wordpress.org/images/browsers/firefox.png";s:15:"current_version";s:2:"16";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(589, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1395966911;s:7:"checked";a:9:{s:6:"Photum";s:3:"1.1";s:6:"coller";s:7:"1.1.8.1";s:17:"photographertheme";s:3:"2.0";s:7:"sixteen";s:7:"1.2.1.1";s:14:"twentyfourteen";s:3:"1.0";s:14:"twentythirteen";s:3:"1.1";s:12:"twentytwelve";s:3:"1.3";s:6:"virtue";s:5:"2.0.3";s:27:"wordpress-theme-black-white";s:3:"2.1";}s:8:"response";a:3:{s:6:"coller";a:3:{s:11:"new_version";s:7:"1.1.8.5";s:3:"url";s:35:"https://wordpress.org/themes/coller";s:7:"package";s:56:"https://wordpress.org/themes/download/coller.1.1.8.5.zip";}s:7:"sixteen";a:3:{s:11:"new_version";s:7:"1.2.1.4";s:3:"url";s:36:"https://wordpress.org/themes/sixteen";s:7:"package";s:57:"https://wordpress.org/themes/download/sixteen.1.2.1.4.zip";}s:6:"virtue";a:3:{s:11:"new_version";s:5:"2.1.0";s:3:"url";s:35:"https://wordpress.org/themes/virtue";s:7:"package";s:54:"https://wordpress.org/themes/download/virtue.2.1.0.zip";}}s:12:"translations";a:0:{}}', 'yes'),
(590, '_site_transient_update_plugins', 'O:8:"stdClass":3:{s:12:"last_checked";i:1395969575;s:8:"response";a:1:{s:19:"akismet/akismet.php";O:8:"stdClass":5:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:11:"new_version";s:5:"2.6.0";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.2.6.0.zip";}}s:12:"translations";a:0:{}}', 'yes'),
(592, '_transient_timeout_plugin_slugs', '1396055975', 'no'),
(593, '_transient_plugin_slugs', 'a:3:{i:0;s:19:"akismet/akismet.php";i:1;s:9:"hello.php";i:2;s:33:"virtue-toolkit/virtue_toolkit.php";}', 'no'),
(594, '_transient_timeout_dash_4077549d03da2e451c8b5f002294ff51', '1396012774', 'no'),
(595, '_transient_dash_4077549d03da2e451c8b5f002294ff51', '<div class="rss-widget"><p><strong>Error en el RSS:</strong> WP HTTP Error: 0: php_network_getaddresses: getaddrinfo failed: Name or service not known</p></div><div class="rss-widget"><p><strong>Error en el RSS:</strong> WP HTTP Error: 0: php_network_getaddresses: getaddrinfo failed: Name or service not known</p></div><div class="rss-widget"><ul></ul></div>', 'no'),
(596, '_site_transient_timeout_theme_roots', '1395971381', 'yes'),
(597, '_site_transient_theme_roots', 'a:9:{s:6:"Photum";s:7:"/themes";s:6:"coller";s:7:"/themes";s:17:"photographertheme";s:7:"/themes";s:7:"sixteen";s:7:"/themes";s:14:"twentyfourteen";s:7:"/themes";s:14:"twentythirteen";s:7:"/themes";s:12:"twentytwelve";s:7:"/themes";s:6:"virtue";s:7:"/themes";s:27:"wordpress-theme-black-white";s:7:"/themes";}', 'yes'),
(606, '_site_transient_timeout_browser_c81ac3e099685f27acf82c914726b755', '1396575359', 'yes'),
(607, '_site_transient_browser_c81ac3e099685f27acf82c914726b755', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"33.0.1750.154";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(608, '_transient_is_multi_author', '0', 'yes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=278 ;

--
-- Volcado de datos para la tabla `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(4, 5, '_menu_item_type', 'custom'),
(5, 5, '_menu_item_menu_item_parent', '0'),
(6, 5, '_menu_item_object_id', '5'),
(7, 5, '_menu_item_object', 'custom'),
(8, 5, '_menu_item_target', ''),
(9, 5, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(10, 5, '_menu_item_xfn', ''),
(11, 5, '_menu_item_url', 'http://192.168.0.11/wordpress/'),
(12, 5, '_menu_item_orphaned', '1392384492'),
(13, 6, '_menu_item_type', 'post_type'),
(14, 6, '_menu_item_menu_item_parent', '0'),
(15, 6, '_menu_item_object_id', '2'),
(16, 6, '_menu_item_object', 'page'),
(17, 6, '_menu_item_target', ''),
(18, 6, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(19, 6, '_menu_item_xfn', ''),
(20, 6, '_menu_item_url', ''),
(21, 6, '_menu_item_orphaned', '1392384493'),
(22, 7, '_wp_attached_file', '2014/02/11776858256_bb3e495f13_o.jpg'),
(23, 7, '_wp_attachment_context', 'custom-header'),
(24, 8, '_wp_attached_file', '2014/02/11792341973_62521e7a24_o.jpg'),
(25, 8, '_wp_attachment_context', 'custom-header'),
(26, 9, '_wp_attached_file', '2014/02/11792341973_62521e7a24_o1.jpg'),
(27, 9, '_wp_attachment_context', 'custom-background'),
(28, 9, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:2160;s:6:"height";i:1620;s:4:"file";s:37:"2014/02/11792341973_62521e7a24_o1.jpg";s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(29, 9, '_wp_attachment_is_custom_background', 'sixteen'),
(30, 10, '_wp_attached_file', '2014/02/11776858256_bb3e495f13_o1.jpg'),
(31, 10, '_wp_attachment_context', 'custom-header'),
(42, 16, '_wp_attached_file', '2014/02/twisted-sister-12.jpg'),
(43, 16, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:361;s:6:"height";i:365;s:4:"file";s:29:"2014/02/twisted-sister-12.jpg";s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(50, 20, '_menu_item_type', 'custom'),
(51, 20, '_menu_item_menu_item_parent', '0'),
(52, 20, '_menu_item_object_id', '20'),
(53, 20, '_menu_item_object', 'custom'),
(54, 20, '_menu_item_target', ''),
(55, 20, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(56, 20, '_menu_item_xfn', ''),
(57, 20, '_menu_item_url', 'http://192.168.0.11/wordpress/'),
(58, 20, '_menu_item_orphaned', '1392388098'),
(59, 21, '_menu_item_type', 'post_type'),
(60, 21, '_menu_item_menu_item_parent', '0'),
(61, 21, '_menu_item_object_id', '2'),
(62, 21, '_menu_item_object', 'page'),
(63, 21, '_menu_item_target', ''),
(64, 21, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(65, 21, '_menu_item_xfn', ''),
(66, 21, '_menu_item_url', ''),
(67, 21, '_menu_item_orphaned', '1392388098'),
(72, 33, '_wp_attached_file', '2014/02/twisted-sister-13.jpg'),
(73, 33, '_wp_attachment_context', 'custom-header'),
(74, 33, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:361;s:6:"height";i:365;s:4:"file";s:29:"2014/02/twisted-sister-13.jpg";s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(75, 33, '_wp_attachment_is_custom_header', 'wordpress-theme-black-white'),
(80, 36, '_wp_attached_file', '2014/02/11776858256_bb3e495f13_o2.jpg'),
(81, 36, '_wp_attachment_context', 'custom-background'),
(82, 36, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:2031;s:6:"height";i:1217;s:4:"file";s:37:"2014/02/11776858256_bb3e495f13_o2.jpg";s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(83, 36, '_wp_attachment_is_custom_background', 'wordpress-theme-black-white'),
(85, 39, '_menu_item_type', 'custom'),
(86, 39, '_menu_item_menu_item_parent', '0'),
(87, 39, '_menu_item_object_id', '39'),
(88, 39, '_menu_item_object', 'custom'),
(89, 39, '_menu_item_target', ''),
(90, 39, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(91, 39, '_menu_item_xfn', ''),
(92, 39, '_menu_item_url', 'http://192.168.0.11/wordpress/'),
(93, 39, '_menu_item_orphaned', '1392389048'),
(94, 40, '_menu_item_type', 'post_type'),
(95, 40, '_menu_item_menu_item_parent', '0'),
(96, 40, '_menu_item_object_id', '2'),
(97, 40, '_menu_item_object', 'page'),
(98, 40, '_menu_item_target', ''),
(99, 40, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(100, 40, '_menu_item_xfn', ''),
(101, 40, '_menu_item_url', ''),
(102, 40, '_menu_item_orphaned', '1392389049'),
(103, 41, '_menu_item_type', 'custom'),
(104, 41, '_menu_item_menu_item_parent', '0'),
(105, 41, '_menu_item_object_id', '41'),
(106, 41, '_menu_item_object', 'custom'),
(107, 41, '_menu_item_target', ''),
(108, 41, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(109, 41, '_menu_item_xfn', ''),
(110, 41, '_menu_item_url', 'http://192.168.0.11/wordpress/'),
(111, 41, '_menu_item_orphaned', '1392389056'),
(112, 42, '_menu_item_type', 'post_type'),
(113, 42, '_menu_item_menu_item_parent', '0'),
(114, 42, '_menu_item_object_id', '2'),
(115, 42, '_menu_item_object', 'page'),
(116, 42, '_menu_item_target', ''),
(117, 42, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(118, 42, '_menu_item_xfn', ''),
(119, 42, '_menu_item_url', ''),
(120, 42, '_menu_item_orphaned', '1392389057'),
(121, 44, '_wp_attached_file', '2014/02/11792341973_62521e7a24_o2.jpg'),
(122, 44, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:2160;s:6:"height";i:1620;s:4:"file";s:37:"2014/02/11792341973_62521e7a24_o2.jpg";s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(130, 56, '_wp_attached_file', '2014/02/11776858256_bb3e495f13_o3.jpg'),
(131, 56, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:2031;s:6:"height";i:1217;s:4:"file";s:37:"2014/02/11776858256_bb3e495f13_o3.jpg";s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(132, 57, '_wp_attached_file', '2014/02/11792341973_62521e7a24_o3.jpg'),
(133, 57, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:2160;s:6:"height";i:1620;s:4:"file";s:37:"2014/02/11792341973_62521e7a24_o3.jpg";s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(176, 62, '_edit_last', '1'),
(177, 62, '_edit_lock', '1392779866:1'),
(179, 62, '_kad_blog_head', 'none'),
(180, 62, '_kad_post_summery', 'default'),
(181, 62, '_kad_post_sidebar', 'yes'),
(182, 62, '_kad_sidebar_choice', 'sidebar1'),
(183, 62, '_kad_blog_author', 'no'),
(184, 62, '_kad_blog_carousel_similar', 'no'),
(191, 64, '_edit_last', '1'),
(192, 64, '_edit_lock', '1395970529:1'),
(193, 64, '_wp_page_template', 'default'),
(206, 64, '_kad_image_gallery', '44'),
(208, 64, '_kad_blog_cat', ''),
(209, 64, '_kad_blog_items', ''),
(210, 64, '_kad_blog_summery', ''),
(211, 64, '_kad_page_sidebar', ''),
(212, 66, '_menu_item_type', 'post_type'),
(213, 66, '_menu_item_menu_item_parent', '0'),
(214, 66, '_menu_item_object_id', '64'),
(215, 66, '_menu_item_object', 'page'),
(216, 66, '_menu_item_target', ''),
(217, 66, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(218, 66, '_menu_item_xfn', ''),
(219, 66, '_menu_item_url', ''),
(221, 64, '_kad_page_head', 'flex'),
(222, 64, '_kad_feature_img_lightbox', 'yes'),
(223, 67, '_edit_last', '1'),
(224, 67, '_edit_lock', '1393288916:1'),
(225, 67, '_wp_page_template', 'default'),
(226, 69, '_edit_last', '1'),
(227, 69, '_wp_page_template', 'default'),
(228, 69, '_edit_lock', '1393288929:1'),
(229, 71, '_edit_last', '1'),
(230, 71, '_wp_page_template', 'default'),
(231, 71, '_edit_lock', '1393288940:1'),
(232, 73, '_edit_last', '1'),
(233, 73, '_edit_lock', '1393288952:1'),
(234, 73, '_wp_page_template', 'default'),
(235, 76, '_edit_last', '1'),
(236, 76, '_wp_page_template', 'default'),
(237, 76, '_edit_lock', '1393289051:1'),
(238, 78, '_wp_attached_file', '2014/02/11779154256_b35c8df417_b.jpg'),
(239, 78, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:1024;s:6:"height";i:667;s:4:"file";s:36:"2014/02/11779154256_b35c8df417_b.jpg";s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(240, 79, '_wp_attached_file', '2014/02/11779154256_b35c8df417_b1.jpg'),
(241, 79, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:1024;s:6:"height";i:488;s:4:"file";s:37:"2014/02/11779154256_b35c8df417_b1.jpg";s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(242, 80, '_wp_attached_file', '2014/02/11779154256_b35c8df417_b2.jpg'),
(243, 80, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:1600;s:6:"height";i:657;s:4:"file";s:37:"2014/02/11779154256_b35c8df417_b2.jpg";s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(244, 81, '_wp_attached_file', '2014/02/11792686113_3edda5b8e2_h.jpg'),
(245, 81, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:1600;s:6:"height";i:657;s:4:"file";s:36:"2014/02/11792686113_3edda5b8e2_h.jpg";s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(246, 82, '_wp_attached_file', '2014/02/foto-3.jpg'),
(247, 82, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:1600;s:6:"height";i:657;s:4:"file";s:18:"2014/02/foto-3.jpg";s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(248, 62, '_thumbnail_id', '44'),
(252, 86, '_edit_last', '1'),
(253, 86, '_edit_lock', '1392779391:1'),
(255, 88, '_edit_last', '1'),
(256, 88, '_edit_lock', '1393292497:1'),
(257, 88, '_thumbnail_id', '80'),
(258, 94, '_wp_attached_file', '2014/03/file4681263246167.jpg'),
(259, 94, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:4672;s:6:"height";i:3104;s:4:"file";s:29:"2014/03/file4681263246167.jpg";s:10:"image_meta";a:10:{s:8:"aperture";d:4.5;s:6:"credit";s:0:"";s:6:"camera";s:11:"PENTAX K20D";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1212431860;s:9:"copyright";s:0:"";s:12:"focal_length";s:5:"38.75";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:18:"0.0055555555555556";s:5:"title";s:0:"";}}'),
(260, 95, '_wp_attached_file', '2014/03/file4681263246167-copia.jpg'),
(261, 95, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:4661;s:6:"height";i:1551;s:4:"file";s:35:"2014/03/file4681263246167-copia.jpg";s:10:"image_meta";a:10:{s:8:"aperture";d:4.5;s:6:"credit";s:0:"";s:6:"camera";s:11:"PENTAX K20D";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1212431860;s:9:"copyright";s:0:"";s:12:"focal_length";s:5:"38.75";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:18:"0.0055555555555556";s:5:"title";s:0:"";}}'),
(262, 96, '_wp_attached_file', '2014/03/file4681263246167-copia1.jpg'),
(263, 96, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:3005;s:6:"height";i:1000;s:4:"file";s:36:"2014/03/file4681263246167-copia1.jpg";s:10:"image_meta";a:10:{s:8:"aperture";d:4.5;s:6:"credit";s:0:"";s:6:"camera";s:11:"PENTAX K20D";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1212431860;s:9:"copyright";s:0:"";s:12:"focal_length";s:5:"38.75";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:18:"0.0055555555555556";s:5:"title";s:0:"";}}'),
(264, 97, '_wp_attached_file', '2014/03/file000533175307-copia.jpg'),
(265, 97, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:2222;s:6:"height";i:1000;s:4:"file";s:34:"2014/03/file000533175307-copia.jpg";s:10:"image_meta";a:10:{s:8:"aperture";d:4;s:6:"credit";s:0:"";s:6:"camera";s:20:"Canon PowerShot Pro1";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1114691678;s:9:"copyright";s:0:"";s:12:"focal_length";s:6:"9.6875";s:3:"iso";i:0;s:13:"shutter_speed";s:5:"0.004";s:5:"title";s:0:"";}}'),
(266, 98, '_wp_attached_file', '2014/03/file2241264606664.jpg'),
(267, 98, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:3801;s:6:"height";i:2534;s:4:"file";s:29:"2014/03/file2241264606664.jpg";s:10:"image_meta";a:10:{s:8:"aperture";d:8;s:6:"credit";s:0:"";s:6:"camera";s:6:"DSC-R1";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1194017224;s:9:"copyright";s:0:"";s:12:"focal_length";s:4:"64.5";s:3:"iso";s:3:"160";s:13:"shutter_speed";s:7:"0.00625";s:5:"title";s:0:"";}}'),
(268, 99, '_wp_attached_file', '2014/03/file2241264606664-copia.jpg'),
(269, 99, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:3000;s:6:"height";i:1000;s:4:"file";s:35:"2014/03/file2241264606664-copia.jpg";s:10:"image_meta";a:10:{s:8:"aperture";d:8;s:6:"credit";s:0:"";s:6:"camera";s:6:"DSC-R1";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1194017224;s:9:"copyright";s:0:"";s:12:"focal_length";s:4:"64.5";s:3:"iso";s:3:"160";s:13:"shutter_speed";s:7:"0.00625";s:5:"title";s:0:"";}}'),
(270, 100, '_wp_attached_file', '2014/03/file000533175307-copia1.jpg'),
(271, 100, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:2800;s:6:"height";i:1000;s:4:"file";s:35:"2014/03/file000533175307-copia1.jpg";s:10:"image_meta";a:10:{s:8:"aperture";d:4;s:6:"credit";s:0:"";s:6:"camera";s:20:"Canon PowerShot Pro1";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1114691678;s:9:"copyright";s:0:"";s:12:"focal_length";s:6:"9.6875";s:3:"iso";i:0;s:13:"shutter_speed";s:5:"0.004";s:5:"title";s:0:"";}}'),
(272, 101, '_wp_attached_file', '2014/03/file5511311905470-copia.jpg'),
(273, 101, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:3000;s:6:"height";i:996;s:4:"file";s:35:"2014/03/file5511311905470-copia.jpg";s:10:"image_meta";a:10:{s:8:"aperture";d:6.2999999999999998;s:6:"credit";s:0:"";s:6:"camera";s:11:"NIKON D7000";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1303805252;s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"50";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:2:"10";s:5:"title";s:0:"";}}'),
(274, 102, '_wp_attached_file', '2014/03/file0001643876623-copia.jpg'),
(275, 102, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:2496;s:6:"height";i:1000;s:4:"file";s:35:"2014/03/file0001643876623-copia.jpg";s:10:"image_meta";a:10:{s:8:"aperture";d:5.5999999999999996;s:6:"credit";s:0:"";s:6:"camera";s:26:"Canon EOS DIGITAL REBEL XT";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1147558636;s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"37";s:3:"iso";s:3:"800";s:13:"shutter_speed";s:3:"0.2";s:5:"title";s:0:"";}}'),
(276, 103, '_wp_attached_file', '2014/03/file4681263246167-copia2.jpg'),
(277, 103, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:3000;s:6:"height";i:1000;s:4:"file";s:36:"2014/03/file4681263246167-copia2.jpg";s:10:"image_meta";a:10:{s:8:"aperture";d:4.5;s:6:"credit";s:0:"";s:6:"camera";s:11:"PENTAX K20D";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1212431860;s:9:"copyright";s:0:"";s:12:"focal_length";s:5:"38.75";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:18:"0.0055555555555556";s:5:"title";s:0:"";}}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=105 ;

--
-- Volcado de datos para la tabla `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(5, 1, '2014-02-14 13:28:12', '0000-00-00 00:00:00', '', 'Inicio', '', 'draft', 'open', 'open', '', '', '', '', '2014-02-14 13:28:12', '0000-00-00 00:00:00', '', 0, 'http://192.168.0.11/wordpress/?p=5', 1, 'nav_menu_item', '', 0),
(6, 1, '2014-02-14 13:28:12', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2014-02-14 13:28:12', '0000-00-00 00:00:00', '', 0, 'http://192.168.0.11/wordpress/?p=6', 1, 'nav_menu_item', '', 0),
(7, 1, '2014-02-14 13:29:07', '2014-02-14 13:29:07', 'http://192.168.0.11/wordpress/wp-content/uploads/2014/02/11776858256_bb3e495f13_o.jpg', '11776858256_bb3e495f13_o.jpg', '', 'inherit', 'open', 'open', '', '11776858256_bb3e495f13_o-jpg', '', '', '2014-02-14 13:29:07', '2014-02-14 13:29:07', '', 0, 'http://192.168.0.11/wordpress/wp-content/uploads/2014/02/11776858256_bb3e495f13_o.jpg', 0, 'attachment', 'image/jpeg', 0),
(8, 1, '2014-02-14 13:42:11', '2014-02-14 13:42:11', 'http://192.168.0.11/wordpress/wp-content/uploads/2014/02/11792341973_62521e7a24_o.jpg', '11792341973_62521e7a24_o.jpg', '', 'inherit', 'open', 'open', '', '11792341973_62521e7a24_o-jpg', '', '', '2014-02-14 13:42:11', '2014-02-14 13:42:11', '', 0, 'http://192.168.0.11/wordpress/wp-content/uploads/2014/02/11792341973_62521e7a24_o.jpg', 0, 'attachment', 'image/jpeg', 0),
(9, 1, '2014-02-14 13:42:42', '2014-02-14 13:42:42', '', '11792341973_62521e7a24_o', '', 'inherit', 'open', 'open', '', '11792341973_62521e7a24_o', '', '', '2014-02-14 13:42:42', '2014-02-14 13:42:42', '', 0, 'http://192.168.0.11/wordpress/wp-content/uploads/2014/02/11792341973_62521e7a24_o1.jpg', 0, 'attachment', 'image/jpeg', 0),
(10, 1, '2014-02-14 13:44:28', '2014-02-14 13:44:28', 'http://192.168.0.11/wordpress/wp-content/uploads/2014/02/11776858256_bb3e495f13_o1.jpg', '11776858256_bb3e495f13_o1.jpg', '', 'inherit', 'open', 'open', '', '11776858256_bb3e495f13_o1-jpg', '', '', '2014-02-14 13:44:28', '2014-02-14 13:44:28', '', 0, 'http://192.168.0.11/wordpress/wp-content/uploads/2014/02/11776858256_bb3e495f13_o1.jpg', 0, 'attachment', 'image/jpeg', 0),
(16, 1, '2014-02-14 13:59:49', '2014-02-14 13:59:49', '', 'twisted-sister-1', '', 'inherit', 'open', 'open', '', 'twisted-sister-1', '', '', '2014-02-14 13:59:49', '2014-02-14 13:59:49', '', 0, 'http://192.168.0.11/wordpress/wp-content/uploads/2014/02/twisted-sister-12.jpg', 0, 'attachment', 'image/jpeg', 0),
(20, 1, '2014-02-14 14:28:17', '0000-00-00 00:00:00', '', 'Inicio', '', 'draft', 'open', 'open', '', '', '', '', '2014-02-14 14:28:17', '0000-00-00 00:00:00', '', 0, 'http://192.168.0.11/wordpress/?p=20', 1, 'nav_menu_item', '', 0),
(21, 1, '2014-02-14 14:28:18', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2014-02-14 14:28:18', '0000-00-00 00:00:00', '', 0, 'http://192.168.0.11/wordpress/?p=21', 1, 'nav_menu_item', '', 0),
(22, 1, '2014-02-14 14:28:22', '0000-00-00 00:00:00', '', 'Ff Logo', '', 'draft', 'closed', 'closed', '', 'of-ff_logo', '', '', '2014-02-14 14:28:22', '0000-00-00 00:00:00', '', 0, 'http://192.168.0.11/wordpress/?post_type=optionsframework&p=22', 0, 'optionsframework', '', 0),
(23, 1, '2014-02-14 14:28:22', '0000-00-00 00:00:00', '', 'Bg1', '', 'draft', 'closed', 'closed', '', 'of-bg1', '', '', '2014-02-14 14:28:22', '0000-00-00 00:00:00', '', 0, 'http://192.168.0.11/wordpress/?post_type=optionsframework&p=23', 0, 'optionsframework', '', 0),
(24, 1, '2014-02-14 14:28:22', '0000-00-00 00:00:00', '', 'Bg2', '', 'draft', 'closed', 'closed', '', 'of-bg2', '', '', '2014-02-14 14:28:22', '0000-00-00 00:00:00', '', 0, 'http://192.168.0.11/wordpress/?post_type=optionsframework&p=24', 0, 'optionsframework', '', 0),
(25, 1, '2014-02-14 14:28:22', '0000-00-00 00:00:00', '', 'Bg3', '', 'draft', 'closed', 'closed', '', 'of-bg3', '', '', '2014-02-14 14:28:22', '0000-00-00 00:00:00', '', 0, 'http://192.168.0.11/wordpress/?post_type=optionsframework&p=25', 0, 'optionsframework', '', 0),
(26, 1, '2014-02-14 14:28:22', '0000-00-00 00:00:00', '', 'Bg4', '', 'draft', 'closed', 'closed', '', 'of-bg4', '', '', '2014-02-14 14:28:22', '0000-00-00 00:00:00', '', 0, 'http://192.168.0.11/wordpress/?post_type=optionsframework&p=26', 0, 'optionsframework', '', 0),
(27, 1, '2014-02-14 14:28:22', '0000-00-00 00:00:00', '', 'Bg5', '', 'draft', 'closed', 'closed', '', 'of-bg5', '', '', '2014-02-14 14:28:22', '0000-00-00 00:00:00', '', 0, 'http://192.168.0.11/wordpress/?post_type=optionsframework&p=27', 0, 'optionsframework', '', 0),
(28, 1, '2014-02-14 14:28:22', '0000-00-00 00:00:00', '', 'Bg6', '', 'draft', 'closed', 'closed', '', 'of-bg6', '', '', '2014-02-14 14:28:22', '0000-00-00 00:00:00', '', 0, 'http://192.168.0.11/wordpress/?post_type=optionsframework&p=28', 0, 'optionsframework', '', 0),
(29, 1, '2014-02-14 14:28:22', '0000-00-00 00:00:00', '', 'Bg7', '', 'draft', 'closed', 'closed', '', 'of-bg7', '', '', '2014-02-14 14:28:22', '0000-00-00 00:00:00', '', 0, 'http://192.168.0.11/wordpress/?post_type=optionsframework&p=29', 0, 'optionsframework', '', 0),
(30, 1, '2014-02-14 14:28:22', '0000-00-00 00:00:00', '', 'Bg8', '', 'draft', 'closed', 'closed', '', 'of-bg8', '', '', '2014-02-14 14:28:22', '0000-00-00 00:00:00', '', 0, 'http://192.168.0.11/wordpress/?post_type=optionsframework&p=30', 0, 'optionsframework', '', 0),
(33, 1, '2014-02-14 14:34:49', '2014-02-14 14:34:49', 'http://192.168.0.11/wordpress/wp-content/uploads/2014/02/twisted-sister-13.jpg', 'twisted-sister-13.jpg', '', 'inherit', 'closed', 'open', '', 'twisted-sister-13-jpg', '', '', '2014-02-14 14:34:49', '2014-02-14 14:34:49', '', 0, 'http://192.168.0.11/wordpress/wp-content/uploads/2014/02/twisted-sister-13.jpg', 0, 'attachment', 'image/jpeg', 0),
(36, 1, '2014-02-14 14:40:32', '2014-02-14 14:40:32', '', '11776858256_bb3e495f13_o', '', 'inherit', 'open', 'open', '', '11776858256_bb3e495f13_o', '', '', '2014-02-14 14:40:32', '2014-02-14 14:40:32', '', 0, 'http://192.168.0.11/wordpress/wp-content/uploads/2014/02/11776858256_bb3e495f13_o2.jpg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2014-02-14 14:44:08', '0000-00-00 00:00:00', '', 'Inicio', '', 'draft', 'open', 'open', '', '', '', '', '2014-02-14 14:44:08', '0000-00-00 00:00:00', '', 0, 'http://192.168.0.11/wordpress/?p=39', 1, 'nav_menu_item', '', 0),
(40, 1, '2014-02-14 14:44:08', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2014-02-14 14:44:08', '0000-00-00 00:00:00', '', 0, 'http://192.168.0.11/wordpress/?p=40', 1, 'nav_menu_item', '', 0),
(41, 1, '2014-02-14 14:44:16', '0000-00-00 00:00:00', '', 'Inicio', '', 'draft', 'open', 'open', '', '', '', '', '2014-02-14 14:44:16', '0000-00-00 00:00:00', '', 0, 'http://192.168.0.11/wordpress/?p=41', 1, 'nav_menu_item', '', 0),
(42, 1, '2014-02-14 14:44:16', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2014-02-14 14:44:16', '0000-00-00 00:00:00', '', 0, 'http://192.168.0.11/wordpress/?p=42', 1, 'nav_menu_item', '', 0),
(44, 1, '2014-02-14 14:50:57', '2014-02-14 14:50:57', '', '11792341973_62521e7a24_o', 'texto prueba', 'inherit', 'open', 'open', '', '11792341973_62521e7a24_o-2', '', '', '2014-02-14 14:50:57', '2014-02-14 14:50:57', '', 0, 'http://192.168.0.11/wordpress/wp-content/uploads/2014/02/11792341973_62521e7a24_o2.jpg', 0, 'attachment', 'image/jpeg', 0),
(56, 1, '2014-02-14 15:27:12', '2014-02-14 15:27:12', '', '11776858256_bb3e495f13_o', '', 'inherit', 'open', 'open', '', '11776858256_bb3e495f13_o-2', '', '', '2014-02-14 15:27:12', '2014-02-14 15:27:12', '', 23, 'http://192.168.0.11/wordpress/wp-content/uploads/2014/02/11776858256_bb3e495f13_o3.jpg', 0, 'attachment', 'image/jpeg', 0),
(57, 1, '2014-02-14 15:27:25', '2014-02-14 15:27:25', '', '11792341973_62521e7a24_o', '', 'inherit', 'open', 'open', '', '11792341973_62521e7a24_o-3', '', '', '2014-02-14 15:27:25', '2014-02-14 15:27:25', '', 24, 'http://192.168.0.11/wordpress/wp-content/uploads/2014/02/11792341973_62521e7a24_o3.jpg', 0, 'attachment', 'image/jpeg', 0),
(62, 1, '2014-02-18 03:42:26', '2014-02-18 03:42:26', 'Esto es una entrada o post Esto es una entrada o post Esto es una entrada o post Esto es una entrada o post Esto es una entrada o post Esto es una entrada o post Esto es una entrada o post Esto es una entrada o post Esto es una entrada o Esto es una entrada o post Esto es una entrada o post Esto es una entrada o post Esto es una entrada o post Esto es una entrada o post Esto es una entrada o post Esto es una entrada o post Esto es una entrada o post Esto es una entrada o postEsto es una entrada o post Esto es una entrada o post Esto es una entrada o post Esto es una entrada o post Esto es una entrada o post Esto es una entrada o post Esto es una entrada o post Esto es una entrada o post Esto es una entrada o post', 'foto 1', '', 'publish', 'open', 'open', '', 'foto-1', '', '', '2014-02-19 03:19:17', '2014-02-19 03:19:17', '', 0, 'http://192.168.0.11/wordpress/?p=62', 0, 'post', '', 0),
(63, 1, '2014-02-18 03:42:26', '2014-02-18 03:42:26', '<a href="http://192.168.0.11/wordpress/wp-content/uploads/2014/02/11792341973_62521e7a24_o2.jpg"><img class="aligncenter size-full wp-image-44" alt="11792341973_62521e7a24_o" src="http://192.168.0.11/wordpress/wp-content/uploads/2014/02/11792341973_62521e7a24_o2.jpg" width="2160" height="1620" /></a>', 'foto 1', '', 'inherit', 'open', 'open', '', '62-revision-v1', '', '', '2014-02-18 03:42:26', '2014-02-18 03:42:26', '', 62, 'http://192.168.0.11/wordpress/?p=63', 0, 'revision', '', 0),
(64, 1, '2014-02-18 03:45:19', '2014-02-18 03:45:19', 'kjfdjfasdjfasdjfsdajfadjfladjfdjsfdls', 'Coaching de Vida', '', 'publish', 'closed', 'closed', '', 'pagina-prueba', '', '', '2014-03-28 01:36:58', '2014-03-28 01:36:58', '', 0, 'http://192.168.0.11/wordpress/?page_id=64', 1, 'page', '', 0),
(65, 1, '2014-02-18 03:45:19', '2014-02-18 03:45:19', 'pagina de prueba', 'pagina prueba', '', 'inherit', 'open', 'open', '', '64-revision-v1', '', '', '2014-02-18 03:45:19', '2014-02-18 03:45:19', '', 64, 'http://192.168.0.11/wordpress/?p=65', 0, 'revision', '', 0),
(66, 1, '2014-02-18 03:49:09', '2014-02-18 03:49:09', ' ', '', '', 'publish', 'open', 'open', '', '66', '', '', '2014-02-18 03:50:52', '2014-02-18 03:50:52', '', 0, 'http://192.168.0.11/wordpress/?p=66', 1, 'nav_menu_item', '', 0),
(67, 1, '2014-02-19 01:53:43', '2014-02-19 01:53:43', '', 'Coaching Ejecutivo', '', 'publish', 'closed', 'closed', '', 'coaching-ejecutivo', '', '', '2014-02-25 00:43:47', '2014-02-25 00:43:47', '', 0, 'http://192.168.0.11/wordpress/?page_id=67', 2, 'page', '', 0),
(68, 1, '2014-02-19 01:53:43', '2014-02-19 01:53:43', '', 'Coaching Ejecutivo', '', 'inherit', 'open', 'open', '', '67-revision-v1', '', '', '2014-02-19 01:53:43', '2014-02-19 01:53:43', '', 67, 'http://192.168.0.11/wordpress/?p=68', 0, 'revision', '', 0),
(69, 1, '2014-02-19 01:54:14', '2014-02-19 01:54:14', '', 'Coaching de Equipos', '', 'publish', 'closed', 'closed', '', 'coaching-de-equipos', '', '', '2014-02-25 00:44:03', '2014-02-25 00:44:03', '', 0, 'http://192.168.0.11/wordpress/?page_id=69', 3, 'page', '', 0),
(70, 1, '2014-02-19 01:54:14', '2014-02-19 01:54:14', '', 'Coaching de Equipos', '', 'inherit', 'open', 'open', '', '69-revision-v1', '', '', '2014-02-19 01:54:14', '2014-02-19 01:54:14', '', 69, 'http://192.168.0.11/wordpress/?p=70', 0, 'revision', '', 0),
(71, 1, '2014-02-19 01:57:35', '2014-02-19 01:57:35', '', 'Entrenamiento', '', 'publish', 'closed', 'closed', '', 'entrenamiento', '', '', '2014-02-25 00:44:13', '2014-02-25 00:44:13', '', 0, 'http://192.168.0.11/wordpress/?page_id=71', 4, 'page', '', 0),
(72, 1, '2014-02-19 01:57:35', '2014-02-19 01:57:35', '', 'Entrenamiento', '', 'inherit', 'open', 'open', '', '71-revision-v1', '', '', '2014-02-19 01:57:35', '2014-02-19 01:57:35', '', 71, 'http://192.168.0.11/wordpress/?p=72', 0, 'revision', '', 0),
(73, 1, '2014-02-19 02:00:34', '2014-02-19 02:00:34', '', 'Mi perfil', '', 'publish', 'closed', 'closed', '', 'mi-perfil', '', '', '2014-02-25 00:44:26', '2014-02-25 00:44:26', '', 0, 'http://192.168.0.11/wordpress/?page_id=73', 5, 'page', '', 0),
(74, 1, '2014-02-19 02:00:34', '2014-02-19 02:00:34', '', 'Mi perfil', '', 'inherit', 'open', 'open', '', '73-revision-v1', '', '', '2014-02-19 02:00:34', '2014-02-19 02:00:34', '', 73, 'http://192.168.0.11/wordpress/?p=74', 0, 'revision', '', 0),
(76, 1, '2014-02-19 02:02:40', '2014-02-19 02:02:40', '', 'Contacto', '', 'publish', 'closed', 'closed', '', 'contacto', '', '', '2014-02-25 00:44:35', '2014-02-25 00:44:35', '', 0, 'http://192.168.0.11/wordpress/?page_id=76', 6, 'page', '', 0),
(77, 1, '2014-02-19 02:02:40', '2014-02-19 02:02:40', '', 'Contacto', '', 'inherit', 'open', 'open', '', '76-revision-v1', '', '', '2014-02-19 02:02:40', '2014-02-19 02:02:40', '', 76, 'http://192.168.0.11/wordpress/?p=77', 0, 'revision', '', 0),
(78, 1, '2014-02-19 02:05:25', '2014-02-19 02:05:25', '', '11779154256_b35c8df417_b', '', 'inherit', 'open', 'open', '', '11779154256_b35c8df417_b', '', '', '2014-02-19 02:05:25', '2014-02-19 02:05:25', '', 0, 'http://192.168.0.11/wordpress/wp-content/uploads/2014/02/11779154256_b35c8df417_b.jpg', 0, 'attachment', 'image/jpeg', 0),
(79, 1, '2014-02-19 02:10:44', '2014-02-19 02:10:44', '', '11779154256_b35c8df417_b', '', 'inherit', 'open', 'open', '', '11779154256_b35c8df417_b-2', '', '', '2014-02-19 02:10:44', '2014-02-19 02:10:44', '', 0, 'http://192.168.0.11/wordpress/wp-content/uploads/2014/02/11779154256_b35c8df417_b1.jpg', 0, 'attachment', 'image/jpeg', 0),
(80, 1, '2014-02-19 02:37:00', '2014-02-19 02:37:00', '', '11779154256_b35c8df417_b', '', 'inherit', 'open', 'open', '', '11779154256_b35c8df417_b-3', '', '', '2014-02-19 02:37:00', '2014-02-19 02:37:00', '', 0, 'http://192.168.0.11/wordpress/wp-content/uploads/2014/02/11779154256_b35c8df417_b2.jpg', 0, 'attachment', 'image/jpeg', 0),
(81, 1, '2014-02-19 02:41:39', '2014-02-19 02:41:39', '', '11792686113_3edda5b8e2_h', '', 'inherit', 'open', 'open', '', '11792686113_3edda5b8e2_h', '', '', '2014-02-19 02:41:39', '2014-02-19 02:41:39', '', 0, 'http://192.168.0.11/wordpress/wp-content/uploads/2014/02/11792686113_3edda5b8e2_h.jpg', 0, 'attachment', 'image/jpeg', 0),
(82, 1, '2014-02-19 02:45:47', '2014-02-19 02:45:47', '', 'foto 3', '', 'inherit', 'open', 'open', '', 'foto-3', '', '', '2014-02-19 02:45:47', '2014-02-19 02:45:47', '', 0, 'http://192.168.0.11/wordpress/wp-content/uploads/2014/02/foto-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(84, 1, '2014-02-19 03:06:04', '2014-02-19 03:06:04', '<a href="http://192.168.0.11/wordpress/wp-content/uploads/2014/02/11792341973_62521e7a24_o2.jpg"><img class="aligncenter size-full wp-image-44" alt="11792341973_62521e7a24_o" src="http://192.168.0.11/wordpress/wp-content/uploads/2014/02/11792341973_62521e7a24_o2.jpg" width="2160" height="1620" /></a>\n\nsadlsakdlsadksaldkasda\n\nsadjskadsakjdsadkjsdka', 'foto 1', '', 'inherit', 'closed', 'closed', '', '62-revision-v1', '', '', '2014-02-19 03:06:04', '2014-02-19 03:06:04', '', 62, 'http://192.168.0.11/wordpress/?p=84', 0, 'revision', '', 0),
(85, 1, '2014-02-19 03:06:58', '2014-02-19 03:06:58', '<p style="text-align: center;"><a href="http://192.168.0.11/wordpress/wp-content/uploads/2014/02/11792341973_62521e7a24_o2.jpg"><img class="aligncenter size-full wp-image-44" alt="11792341973_62521e7a24_o" src="http://192.168.0.11/wordpress/wp-content/uploads/2014/02/11792341973_62521e7a24_o2.jpg" width="2160" height="1620" /></a></p>\nEsto es una entrada o post Esto es una entrada o post Esto es una entrada o post Esto es una entrada o post Esto es una entrada o post Esto es una entrada o post Esto es una entrada o post Esto es una entrada o post Esto es una entrada o Esto es una entrada o post Esto es una entrada o post Esto es una entrada o post Esto es una entrada o post Esto es una entrada o post Esto es una entrada o post Esto es una entrada o post Esto es una entrada o post Esto es una entrada o postEsto es una entrada o post Esto es una entrada o post Esto es una entrada o post Esto es una entrada o post Esto es una entrada o post Esto es una entrada o post Esto es una entrada o post Esto es una entrada o post Esto es una entrada o post', 'foto 1', '', 'inherit', 'closed', 'closed', '', '62-revision-v1', '', '', '2014-02-19 03:06:58', '2014-02-19 03:06:58', '', 62, 'http://192.168.0.11/wordpress/?p=85', 0, 'revision', '', 0),
(86, 1, '2014-02-19 03:08:27', '2014-02-19 03:08:27', 'prueba porta', 'portafolio', '', 'publish', 'closed', 'closed', '', 'portafolio', '', '', '2014-02-19 03:11:44', '2014-02-19 03:11:44', '', 0, 'http://192.168.0.11/wordpress/?post_type=portfolio&#038;p=86', 0, 'portfolio', '', 0),
(87, 1, '2014-02-19 03:10:24', '2014-02-19 03:10:24', 'Esto es una entrada o post Esto es una entrada o post Esto es una entrada o post Esto es una entrada o post Esto es una entrada o post Esto es una entrada o post Esto es una entrada o post Esto es una entrada o post Esto es una entrada o Esto es una entrada o post Esto es una entrada o post Esto es una entrada o post Esto es una entrada o post Esto es una entrada o post Esto es una entrada o post Esto es una entrada o post Esto es una entrada o post Esto es una entrada o postEsto es una entrada o post Esto es una entrada o post Esto es una entrada o post Esto es una entrada o post Esto es una entrada o post Esto es una entrada o post Esto es una entrada o post Esto es una entrada o post Esto es una entrada o post', 'foto 1', '', 'inherit', 'closed', 'closed', '', '62-revision-v1', '', '', '2014-02-19 03:10:24', '2014-02-19 03:10:24', '', 62, 'http://192.168.0.11/wordpress/?p=87', 0, 'revision', '', 0),
(88, 1, '2014-02-19 03:13:07', '2014-02-19 03:13:07', 'texto prueba texto prueba texto pruebatexto pruebatexto pruebatexto pruebatexto pruebatexto pruebatexto prueba\n\ntexto prueba texto prueba texto pruebatexto pruebatexto pruebatexto pruebatexto pruebatexto pruebatexto prueba\n\ntexto prueba texto prueba texto pruebatexto pruebatexto pruebatexto pruebatexto pruebatexto pruebatexto prueba\n\ntexto prueba texto prueba texto pruebatexto pruebatexto pruebatexto pruebatexto pruebatexto pruebatexto prueba\n\ntexto prueba texto prueba texto pruebatexto pruebatexto pruebatexto pruebatexto pruebatexto pruebatexto prueba\n\ntexto prueba texto prueba texto pruebatexto pruebatexto pruebatexto pruebatexto pruebatexto pruebatexto prueba\n\ntexto prueba texto prueba texto pruebatexto pruebatexto pruebatexto pruebatexto pruebatexto pruebatexto prueba\n\ntexto prueba texto prueba texto pruebatexto pruebatexto pruebatexto pruebatexto pruebatexto pruebatexto prueba\n\ntexto prueba texto prueba texto pruebatexto pruebatexto pruebatexto pruebatexto pruebatexto pruebatexto prueba\n\ntexto prueba texto prueba texto pruebatexto pruebatexto pruebatexto pruebatexto pruebatexto pruebatexto prueba\n\ntexto prueba texto prueba texto pruebatexto pruebatexto pruebatexto pruebatexto pruebatexto pruebatexto prueba\n\ntexto prueba texto prueba texto pruebatexto pruebatexto pruebatexto pruebatexto pruebatexto pruebatexto prueba\n\ntexto prueba texto prueba texto pruebatexto pruebatexto pruebatexto pruebatexto pruebatexto pruebatexto prueba\n\ntexto prueba texto prueba texto pruebatexto pruebatexto pruebatexto pruebatexto pruebatexto pruebatexto prueba\n\ntexto prueba texto prueba texto pruebatexto pruebatexto pruebatexto pruebatexto pruebatexto pruebatexto prueba\n\n&nbsp;', 'foto 2', '', 'publish', 'closed', 'closed', '', 'foto-2', '', '', '2014-02-25 01:30:55', '2014-02-25 01:30:55', '', 0, 'http://192.168.0.11/wordpress/?p=88', 0, 'post', '', 0),
(89, 1, '2014-02-19 03:13:07', '2014-02-19 03:13:07', 'texto prueba texto prueba texto pruebatexto pruebatexto pruebatexto pruebatexto pruebatexto pruebatexto prueba\r\n\r\ntexto prueba texto prueba texto pruebatexto pruebatexto pruebatexto pruebatexto pruebatexto pruebatexto prueba\r\n\r\ntexto prueba texto prueba texto pruebatexto pruebatexto pruebatexto pruebatexto pruebatexto pruebatexto prueba\r\n\r\ntexto prueba texto prueba texto pruebatexto pruebatexto pruebatexto pruebatexto pruebatexto pruebatexto prueba\r\n\r\ntexto prueba texto prueba texto pruebatexto pruebatexto pruebatexto pruebatexto pruebatexto pruebatexto prueba\r\n\r\n&nbsp;', 'foto 2', '', 'inherit', 'closed', 'closed', '', '88-revision-v1', '', '', '2014-02-19 03:13:07', '2014-02-19 03:13:07', '', 88, 'http://192.168.0.11/wordpress/?p=89', 0, 'revision', '', 0),
(91, 1, '2014-02-25 00:43:05', '2014-02-25 00:43:05', 'pagina de prueba', 'Coaching de Vida', '', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2014-02-25 00:43:05', '2014-02-25 00:43:05', '', 64, 'http://192.168.0.11/wordpress/?p=91', 0, 'revision', '', 0),
(92, 1, '2014-02-25 01:30:16', '2014-02-25 01:30:16', 'texto prueba texto prueba texto pruebatexto pruebatexto pruebatexto pruebatexto pruebatexto pruebatexto prueba\r\n\r\ntexto prueba texto prueba texto pruebatexto pruebatexto pruebatexto pruebatexto pruebatexto pruebatexto prueba\r\n\r\ntexto prueba texto prueba texto pruebatexto pruebatexto pruebatexto pruebatexto pruebatexto pruebatexto prueba\r\n\r\ntexto prueba texto prueba texto pruebatexto pruebatexto pruebatexto pruebatexto pruebatexto pruebatexto prueba\r\n\r\ntexto prueba texto prueba texto pruebatexto pruebatexto pruebatexto pruebatexto pruebatexto pruebatexto prueba\r\n\r\ntexto prueba texto prueba texto pruebatexto pruebatexto pruebatexto pruebatexto pruebatexto pruebatexto prueba\r\n\r\ntexto prueba texto prueba texto pruebatexto pruebatexto pruebatexto pruebatexto pruebatexto pruebatexto prueba\r\n\r\ntexto prueba texto prueba texto pruebatexto pruebatexto pruebatexto pruebatexto pruebatexto pruebatexto prueba\r\n\r\ntexto prueba texto prueba texto pruebatexto pruebatexto pruebatexto pruebatexto pruebatexto pruebatexto prueba\r\n\r\ntexto prueba texto prueba texto pruebatexto pruebatexto pruebatexto pruebatexto pruebatexto pruebatexto prueba\r\n\r\ntexto prueba texto prueba texto pruebatexto pruebatexto pruebatexto pruebatexto pruebatexto pruebatexto prueba\r\n\r\ntexto prueba texto prueba texto pruebatexto pruebatexto pruebatexto pruebatexto pruebatexto pruebatexto prueba\r\n\r\ntexto prueba texto prueba texto pruebatexto pruebatexto pruebatexto pruebatexto pruebatexto pruebatexto prueba\r\n\r\ntexto prueba texto prueba texto pruebatexto pruebatexto pruebatexto pruebatexto pruebatexto pruebatexto prueba\r\n\r\ntexto prueba texto prueba texto pruebatexto pruebatexto pruebatexto pruebatexto pruebatexto pruebatexto prueba\r\n\r\n&nbsp;', 'foto 2', '', 'inherit', 'closed', 'closed', '', '88-revision-v1', '', '', '2014-02-25 01:30:16', '2014-02-25 01:30:16', '', 88, 'http://192.168.0.11/wordpress/?p=92', 0, 'revision', '', 0),
(93, 1, '2014-03-26 02:33:33', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2014-03-26 02:33:33', '0000-00-00 00:00:00', '', 0, 'http://192.168.0.11/wordpress/?p=93', 0, 'post', '', 0),
(94, 1, '2014-03-26 02:38:54', '2014-03-26 02:38:54', '', 'file4681263246167', '', 'inherit', 'closed', 'closed', '', 'file4681263246167', '', '', '2014-03-26 02:38:54', '2014-03-26 02:38:54', '', 0, 'http://192.168.0.11/wordpress/wp-content/uploads/2014/03/file4681263246167.jpg', 0, 'attachment', 'image/jpeg', 0),
(95, 1, '2014-03-26 02:41:57', '2014-03-26 02:41:57', '', 'file4681263246167 (copia)', '', 'inherit', 'closed', 'closed', '', 'file4681263246167-copia', '', '', '2014-03-26 02:41:57', '2014-03-26 02:41:57', '', 0, 'http://192.168.0.11/wordpress/wp-content/uploads/2014/03/file4681263246167-copia.jpg', 0, 'attachment', 'image/jpeg', 0),
(96, 1, '2014-03-26 02:44:35', '2014-03-26 02:44:35', '', 'file4681263246167 (copia)', '', 'inherit', 'closed', 'closed', '', 'file4681263246167-copia-2', '', '', '2014-03-26 02:44:35', '2014-03-26 02:44:35', '', 0, 'http://192.168.0.11/wordpress/wp-content/uploads/2014/03/file4681263246167-copia1.jpg', 0, 'attachment', 'image/jpeg', 0),
(97, 1, '2014-03-26 03:08:08', '2014-03-26 03:08:08', '', 'file000533175307 (copia)', '', 'inherit', 'closed', 'closed', '', 'file000533175307-copia', '', '', '2014-03-26 03:08:08', '2014-03-26 03:08:08', '', 0, 'http://192.168.0.11/wordpress/wp-content/uploads/2014/03/file000533175307-copia.jpg', 0, 'attachment', 'image/jpeg', 0),
(98, 1, '2014-03-26 03:15:40', '2014-03-26 03:15:40', '', 'file2241264606664', '', 'inherit', 'closed', 'closed', '', 'file2241264606664', '', '', '2014-03-26 03:15:40', '2014-03-26 03:15:40', '', 0, 'http://192.168.0.11/wordpress/wp-content/uploads/2014/03/file2241264606664.jpg', 0, 'attachment', 'image/jpeg', 0),
(99, 1, '2014-03-26 03:21:57', '2014-03-26 03:21:57', '', 'file2241264606664 (copia)', '', 'inherit', 'closed', 'closed', '', 'file2241264606664-copia', '', '', '2014-03-26 03:21:57', '2014-03-26 03:21:57', '', 0, 'http://192.168.0.11/wordpress/wp-content/uploads/2014/03/file2241264606664-copia.jpg', 0, 'attachment', 'image/jpeg', 0),
(100, 1, '2014-03-26 03:26:33', '2014-03-26 03:26:33', '', 'file000533175307 (copia)', '', 'inherit', 'closed', 'closed', '', 'file000533175307-copia-2', '', '', '2014-03-26 03:26:33', '2014-03-26 03:26:33', '', 0, 'http://192.168.0.11/wordpress/wp-content/uploads/2014/03/file000533175307-copia1.jpg', 0, 'attachment', 'image/jpeg', 0),
(101, 1, '2014-03-26 03:43:15', '2014-03-26 03:43:15', '', 'file5511311905470 (copia)', '', 'inherit', 'closed', 'closed', '', 'file5511311905470-copia', '', '', '2014-03-26 03:43:15', '2014-03-26 03:43:15', '', 0, 'http://192.168.0.11/wordpress/wp-content/uploads/2014/03/file5511311905470-copia.jpg', 0, 'attachment', 'image/jpeg', 0),
(102, 1, '2014-03-26 03:47:14', '2014-03-26 03:47:14', '', 'file0001643876623 (copia)', '', 'inherit', 'closed', 'closed', '', 'file0001643876623-copia', '', '', '2014-03-26 03:47:14', '2014-03-26 03:47:14', '', 0, 'http://192.168.0.11/wordpress/wp-content/uploads/2014/03/file0001643876623-copia.jpg', 0, 'attachment', 'image/jpeg', 0),
(103, 1, '2014-03-26 03:49:29', '2014-03-26 03:49:29', '', 'file4681263246167 (copia)', '', 'inherit', 'closed', 'closed', '', 'file4681263246167-copia-3', '', '', '2014-03-26 03:49:29', '2014-03-26 03:49:29', '', 0, 'http://192.168.0.11/wordpress/wp-content/uploads/2014/03/file4681263246167-copia2.jpg', 0, 'attachment', 'image/jpeg', 0),
(104, 1, '2014-03-28 01:36:58', '2014-03-28 01:36:58', 'kjfdjfasdjfasdjfsdajfadjfladjfdjsfdls', 'Coaching de Vida', '', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2014-03-28 01:36:58', '2014-03-28 01:36:58', '', 64, 'http://192.168.0.11/wordpress/?p=104', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(62, 1, 0),
(66, 4, 0),
(88, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2),
(2, 2, 'category', '', 0, 0),
(3, 3, 'post_tag', '', 0, 0),
(4, 4, 'nav_menu', '', 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sin categoría', 'sin-categoria', 0),
(2, 'foto', 'foto', 0),
(3, 'uno', 'uno', 0),
(4, 'Paginas', 'paginas', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=24 ;

--
-- Volcado de datos para la tabla `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'first_name', ''),
(2, 1, 'last_name', ''),
(3, 1, 'nickname', 'root'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp330_toolbar,wp330_saving_widgets,wp340_choose_image_from_library,wp340_customize_current_theme_link,wp350_media,wp360_revisions,wp360_locks'),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'wp_dashboard_quick_press_last_post_id', '93'),
(15, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";}'),
(16, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:8:"add-post";i:1;s:12:"add-post_tag";}'),
(17, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce&align=center&mfold=o'),
(18, 1, 'wp_user-settings-time', '1392695862'),
(20, 1, 'nav_menu_recently_edited', '4'),
(21, 1, 'manageedit-pagecolumnshidden', 'a:1:{i:0;s:0:"";}'),
(22, 1, 'closedpostboxes_page', 'a:0:{}'),
(23, 1, 'metaboxhidden_page', 'a:3:{i:0;s:10:"postcustom";i:1;s:7:"slugdiv";i:2;s:9:"authordiv";}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'root', '$P$BqV5DGgMkwMSS7j9VPqHivWXn5pCpd.', 'root', 'andrespereztutor@gmail.com', '', '2014-02-13 16:30:42', '', 0, 'root');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
