-- MySQL dump 10.13  Distrib 5.7.23, for Linux (x86_64)
--
-- Host: localhost    Database: local
-- ------------------------------------------------------
-- Server version	5.7.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_grp_google_place`
--

DROP TABLE IF EXISTS `wp_grp_google_place`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_grp_google_place` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `place_id` varchar(80) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `rating` double DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `updated` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `grp_place_id` (`place_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_grp_google_place`
--

LOCK TABLES `wp_grp_google_place` WRITE;
/*!40000 ALTER TABLE `wp_grp_google_place` DISABLE KEYS */;
INSERT INTO `wp_grp_google_place` VALUES (1,'ChIJ96nYCcjiBIgR65mJqUokcOY','7401 W Brown Deer Rd',NULL,'https://maps.gstatic.com/mapfiles/place_api/icons/geocode-71.png','7401 W Brown Deer Rd, Milwaukee, WI 53223, USA',NULL,'https://maps.google.com/?q=7401+W+Brown+Deer+Rd,+Milwaukee,+WI+53223,+USA&ftid=0x8804e2c809d8a9f7:0xe670244aa98999eb',NULL,NULL);
/*!40000 ALTER TABLE `wp_grp_google_place` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_grp_google_review`
--

DROP TABLE IF EXISTS `wp_grp_google_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_grp_google_review` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `google_place_id` bigint(20) unsigned NOT NULL,
  `hash` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `rating` int(11) NOT NULL,
  `text` varchar(10000) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `time` int(11) NOT NULL,
  `language` varchar(10) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `author_name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `author_url` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `profile_photo_url` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `grp_google_review_hash` (`hash`),
  KEY `grp_google_place_id` (`google_place_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_grp_google_review`
--

LOCK TABLES `wp_grp_google_review` WRITE;
/*!40000 ALTER TABLE `wp_grp_google_review` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_grp_google_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=1052 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://city-home-inspections.local','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://city-home-inspections.local','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','City Home Inspections','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','Serving Southeast Wisconsin Since 1998','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','dev-email@flywheel.local','yes');
INSERT INTO `wp_options` VALUES (7,'start_of_week','1','yes');
INSERT INTO `wp_options` VALUES (8,'use_balanceTags','0','yes');
INSERT INTO `wp_options` VALUES (9,'use_smilies','1','yes');
INSERT INTO `wp_options` VALUES (10,'require_name_email','1','yes');
INSERT INTO `wp_options` VALUES (11,'comments_notify','1','yes');
INSERT INTO `wp_options` VALUES (12,'posts_per_rss','10','yes');
INSERT INTO `wp_options` VALUES (13,'rss_use_excerpt','0','yes');
INSERT INTO `wp_options` VALUES (14,'mailserver_url','mail.example.com','yes');
INSERT INTO `wp_options` VALUES (15,'mailserver_login','login@example.com','yes');
INSERT INTO `wp_options` VALUES (16,'mailserver_pass','password','yes');
INSERT INTO `wp_options` VALUES (17,'mailserver_port','110','yes');
INSERT INTO `wp_options` VALUES (18,'default_category','1','yes');
INSERT INTO `wp_options` VALUES (19,'default_comment_status','closed','yes');
INSERT INTO `wp_options` VALUES (20,'default_ping_status','open','yes');
INSERT INTO `wp_options` VALUES (21,'default_pingback_flag','1','yes');
INSERT INTO `wp_options` VALUES (22,'posts_per_page','10','yes');
INSERT INTO `wp_options` VALUES (23,'date_format','F j, Y','yes');
INSERT INTO `wp_options` VALUES (24,'time_format','g:i a','yes');
INSERT INTO `wp_options` VALUES (25,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `wp_options` VALUES (26,'comment_moderation','','yes');
INSERT INTO `wp_options` VALUES (27,'moderation_notify','1','yes');
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/resources/%postname%/','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:6:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";i:2;s:39:\"manual-image-crop/manual-image-crop.php\";i:3;s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";i:4;s:24:\"wordpress-seo/wp-seo.php\";i:5;s:31:\"wp-migrate-db/wp-migrate-db.php\";}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','0','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','a:2:{i:0;s:61:\"/app/public/wp-content/plugins/advanced-custom-fields/acf.php\";i:1;s:0:\"\";}','no');
INSERT INTO `wp_options` VALUES (40,'template','cityhome-inspections v2','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','cityhome-inspections v2','yes');
INSERT INTO `wp_options` VALUES (42,'comment_whitelist','1','yes');
INSERT INTO `wp_options` VALUES (43,'blacklist_keys','','no');
INSERT INTO `wp_options` VALUES (44,'comment_registration','','yes');
INSERT INTO `wp_options` VALUES (45,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (46,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (47,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (48,'db_version','45805','yes');
INSERT INTO `wp_options` VALUES (49,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (50,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (51,'blog_public','1','yes');
INSERT INTO `wp_options` VALUES (52,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (53,'show_on_front','page','yes');
INSERT INTO `wp_options` VALUES (54,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (55,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (56,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (57,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (58,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (59,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (60,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (61,'medium_size_w','300','yes');
INSERT INTO `wp_options` VALUES (62,'medium_size_h','300','yes');
INSERT INTO `wp_options` VALUES (63,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (64,'large_size_w','1024','yes');
INSERT INTO `wp_options` VALUES (65,'large_size_h','1024','yes');
INSERT INTO `wp_options` VALUES (66,'image_default_link_type','none','yes');
INSERT INTO `wp_options` VALUES (67,'image_default_size','','yes');
INSERT INTO `wp_options` VALUES (68,'image_default_align','','yes');
INSERT INTO `wp_options` VALUES (69,'close_comments_for_old_posts','','yes');
INSERT INTO `wp_options` VALUES (70,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (71,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (72,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (73,'page_comments','','yes');
INSERT INTO `wp_options` VALUES (74,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (75,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (76,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (77,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (79,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (80,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (81,'uninstall_plugins','a:0:{}','no');
INSERT INTO `wp_options` VALUES (82,'timezone_string','','yes');
INSERT INTO `wp_options` VALUES (83,'page_for_posts','703','yes');
INSERT INTO `wp_options` VALUES (84,'page_on_front','701','yes');
INSERT INTO `wp_options` VALUES (85,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (86,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (87,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (88,'site_icon','1838','yes');
INSERT INTO `wp_options` VALUES (89,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (90,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (91,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (92,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (93,'initial_db_version','44719','yes');
INSERT INTO `wp_options` VALUES (94,'wp_user_roles','a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:20:\"wpseo_manage_options\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:35:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:13:\"wpseo_manager\";a:2:{s:4:\"name\";s:11:\"SEO Manager\";s:12:\"capabilities\";a:37:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;s:20:\"wpseo_manage_options\";b:1;}}s:12:\"wpseo_editor\";a:2:{s:4:\"name\";s:10:\"SEO Editor\";s:12:\"capabilities\";a:36:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (95,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (96,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (97,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (98,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (99,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (100,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (101,'sidebars_widgets','a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (102,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (103,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (104,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (105,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (106,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (107,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (108,'nonce_key','z=4v-cdl*x|?8yVf`JvTzrp+PjVj.U]UkSa UMwwN4S_adTLoM?p?0s6+pZ3>PXE','no');
INSERT INTO `wp_options` VALUES (109,'nonce_salt','DZd6-hy1t)>J;?u%!)SV~hai4H~m5#j2&xu%o9d!(gS}~,xlsR q,mRKoMM%J=,%','no');
INSERT INTO `wp_options` VALUES (110,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (111,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (112,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (113,'cron','a:7:{i:1583100668;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1583121486;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1583125868;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1583166543;a:1:{s:19:\"wpseo-reindex-links\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1583171334;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1583171335;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (116,'theme_mods_twentynineteen','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1555350548;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}','yes');
INSERT INTO `wp_options` VALUES (142,'current_theme','Starter Wordpress Theme','yes');
INSERT INTO `wp_options` VALUES (143,'theme_mods_understrap','a:8:{i:0;b:0;s:28:\"understrap_posts_index_style\";s:7:\"default\";s:27:\"understrap_sidebar_position\";s:5:\"right\";s:25:\"understrap_container_type\";s:9:\"container\";s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:178;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1555474820;s:4:\"data\";a:7:{s:19:\"wp_inactive_widgets\";a:0:{}s:13:\"right-sidebar\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:12:\"left-sidebar\";a:0:{}s:4:\"hero\";a:0:{}s:10:\"herocanvas\";a:0:{}s:10:\"statichero\";a:0:{}s:10:\"footerfull\";a:0:{}}}s:11:\"custom_logo\";i:1808;}','yes');
INSERT INTO `wp_options` VALUES (144,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (148,'theme_mods_blankslate','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1555353604;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:19:\"primary-widget-area\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}','yes');
INSERT INTO `wp_options` VALUES (155,'theme_mods_bootstrap-starter','a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1555382625;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}','yes');
INSERT INTO `wp_options` VALUES (158,'recently_activated','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (170,'widget_monster','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (201,'_site_transient_update_themes','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1583086716;s:7:\"checked\";a:2:{s:23:\"cityhome-inspections v2\";s:3:\"1.0\";s:20:\"cityhome-inspections\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (224,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (242,'_transient_understrap_categories','2','yes');
INSERT INTO `wp_options` VALUES (249,'theme_mods_cityhome-inspections','a:5:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:1842;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1583086722;s:4:\"data\";a:3:{s:9:\"sidebar-1\";a:1:{i:0;s:12:\"grw_widget-2\";}s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:15:\"reviews-section\";a:1:{i:0;s:12:\"grw_widget-3\";}}}}','yes');
INSERT INTO `wp_options` VALUES (330,'acf_version','5.8.7','yes');
INSERT INTO `wp_options` VALUES (343,'mic_make2x','true','yes');
INSERT INTO `wp_options` VALUES (395,'grw_is_multisite','','yes');
INSERT INTO `wp_options` VALUES (396,'grw_active','1','yes');
INSERT INTO `wp_options` VALUES (397,'grw_google_api_key','AIzaSyDk41miSlybS_guBf8qJT-zchK25P8UQys','yes');
INSERT INTO `wp_options` VALUES (398,'grw_version','1.7.3','yes');
INSERT INTO `wp_options` VALUES (399,'widget_grw_widget','a:3:{i:2;a:17:{s:5:\"title\";s:0:\"\";s:10:\"place_name\";s:20:\"7401 W Brown Deer Rd\";s:8:\"place_id\";s:27:\"ChIJ96nYCcjiBIgR65mJqUokcOY\";s:11:\"place_photo\";s:64:\"https://maps.gstatic.com/mapfiles/place_api/icons/geocode-71.png\";s:9:\"text_size\";s:3:\"120\";s:10:\"dark_theme\";s:0:\"\";s:9:\"view_mode\";s:4:\"list\";s:10:\"pagination\";s:1:\"5\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:15:\"refresh_reviews\";s:1:\"1\";s:8:\"centered\";s:0:\"\";s:19:\"reduce_avatars_size\";s:1:\"1\";s:9:\"open_link\";s:1:\"1\";s:13:\"nofollow_link\";s:1:\"1\";s:13:\"lazy_load_img\";s:1:\"1\";s:12:\"reviews_lang\";s:0:\"\";}i:3;a:17:{s:5:\"title\";s:0:\"\";s:10:\"place_name\";s:0:\"\";s:8:\"place_id\";s:0:\"\";s:11:\"place_photo\";s:0:\"\";s:9:\"text_size\";s:3:\"120\";s:10:\"dark_theme\";s:0:\"\";s:9:\"view_mode\";s:4:\"list\";s:10:\"pagination\";s:1:\"5\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:15:\"refresh_reviews\";s:1:\"1\";s:8:\"centered\";s:0:\"\";s:19:\"reduce_avatars_size\";s:1:\"1\";s:9:\"open_link\";s:1:\"1\";s:13:\"nofollow_link\";s:1:\"1\";s:13:\"lazy_load_img\";s:1:\"1\";s:12:\"reviews_lang\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (510,'wpseo','a:20:{s:15:\"ms_defaults_set\";b:0;s:7:\"version\";s:4:\"13.1\";s:20:\"disableadvanced_meta\";b:1;s:19:\"onpage_indexability\";b:1;s:11:\"baiduverify\";s:0:\"\";s:12:\"googleverify\";s:0:\"\";s:8:\"msverify\";s:0:\"\";s:12:\"yandexverify\";s:0:\"\";s:9:\"site_type\";s:0:\"\";s:20:\"has_multiple_authors\";s:0:\"\";s:16:\"environment_type\";s:0:\"\";s:23:\"content_analysis_active\";b:1;s:23:\"keyword_analysis_active\";b:1;s:21:\"enable_admin_bar_menu\";b:1;s:26:\"enable_cornerstone_content\";b:1;s:18:\"enable_xml_sitemap\";b:1;s:24:\"enable_text_link_counter\";b:1;s:22:\"show_onboarding_notice\";b:1;s:18:\"first_activated_on\";i:1556123343;s:13:\"myyoast-oauth\";b:0;}','yes');
INSERT INTO `wp_options` VALUES (511,'wpseo_titles','a:77:{s:10:\"title_test\";i:0;s:17:\"forcerewritetitle\";b:0;s:9:\"separator\";s:7:\"sc-pipe\";s:16:\"title-home-wpseo\";s:42:\"%%sitename%% %%page%% %%sep%% %%sitedesc%%\";s:18:\"title-author-wpseo\";s:41:\"%%name%%, Author at %%sitename%% %%page%%\";s:19:\"title-archive-wpseo\";s:38:\"%%date%% %%page%% %%sep%% %%sitename%%\";s:18:\"title-search-wpseo\";s:63:\"You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%\";s:15:\"title-404-wpseo\";s:35:\"Page not found %%sep%% %%sitename%%\";s:19:\"metadesc-home-wpseo\";s:0:\"\";s:21:\"metadesc-author-wpseo\";s:0:\"\";s:22:\"metadesc-archive-wpseo\";s:0:\"\";s:9:\"rssbefore\";s:0:\"\";s:8:\"rssafter\";s:53:\"The post %%POSTLINK%% appeared first on %%BLOGLINK%%.\";s:20:\"noindex-author-wpseo\";b:0;s:28:\"noindex-author-noposts-wpseo\";b:1;s:21:\"noindex-archive-wpseo\";b:1;s:14:\"disable-author\";b:0;s:12:\"disable-date\";b:0;s:19:\"disable-post_format\";b:0;s:18:\"disable-attachment\";b:1;s:23:\"is-media-purge-relevant\";b:0;s:20:\"breadcrumbs-404crumb\";s:25:\"Error 404: Page not found\";s:29:\"breadcrumbs-display-blog-page\";b:1;s:20:\"breadcrumbs-boldlast\";b:0;s:25:\"breadcrumbs-archiveprefix\";s:12:\"Archives for\";s:18:\"breadcrumbs-enable\";b:1;s:16:\"breadcrumbs-home\";s:10:\"Start Here\";s:18:\"breadcrumbs-prefix\";s:0:\"\";s:24:\"breadcrumbs-searchprefix\";s:16:\"You searched for\";s:15:\"breadcrumbs-sep\";s:1:\"/\";s:12:\"website_name\";s:0:\"\";s:11:\"person_name\";s:0:\"\";s:11:\"person_logo\";s:0:\"\";s:14:\"person_logo_id\";i:0;s:22:\"alternate_website_name\";s:0:\"\";s:12:\"company_logo\";s:98:\"http://city-home-inspections.local/wp-content/uploads/2019/04/city-home-inspections-logo-large.png\";s:15:\"company_logo_id\";i:1860;s:12:\"company_name\";s:21:\"City Home Inspections\";s:17:\"company_or_person\";s:7:\"company\";s:25:\"company_or_person_user_id\";b:0;s:17:\"stripcategorybase\";b:0;s:10:\"title-post\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-post\";s:0:\"\";s:12:\"noindex-post\";b:0;s:13:\"showdate-post\";b:0;s:23:\"display-metabox-pt-post\";b:1;s:23:\"post_types-post-maintax\";i:0;s:10:\"title-page\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-page\";s:0:\"\";s:12:\"noindex-page\";b:0;s:13:\"showdate-page\";b:0;s:23:\"display-metabox-pt-page\";b:1;s:23:\"post_types-page-maintax\";i:0;s:16:\"title-attachment\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:19:\"metadesc-attachment\";s:0:\"\";s:18:\"noindex-attachment\";b:0;s:19:\"showdate-attachment\";b:0;s:29:\"display-metabox-pt-attachment\";b:1;s:29:\"post_types-attachment-maintax\";i:0;s:11:\"title-slide\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:14:\"metadesc-slide\";s:0:\"\";s:13:\"noindex-slide\";b:0;s:14:\"showdate-slide\";b:0;s:24:\"display-metabox-pt-slide\";b:1;s:24:\"post_types-slide-maintax\";i:0;s:18:\"title-tax-category\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-category\";s:0:\"\";s:28:\"display-metabox-tax-category\";b:1;s:20:\"noindex-tax-category\";b:0;s:18:\"title-tax-post_tag\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-post_tag\";s:0:\"\";s:28:\"display-metabox-tax-post_tag\";b:1;s:20:\"noindex-tax-post_tag\";b:0;s:21:\"title-tax-post_format\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-post_format\";s:0:\"\";s:31:\"display-metabox-tax-post_format\";b:0;s:23:\"noindex-tax-post_format\";b:1;}','yes');
INSERT INTO `wp_options` VALUES (512,'wpseo_social','a:19:{s:13:\"facebook_site\";s:0:\"\";s:13:\"instagram_url\";s:0:\"\";s:12:\"linkedin_url\";s:0:\"\";s:11:\"myspace_url\";s:0:\"\";s:16:\"og_default_image\";s:0:\"\";s:19:\"og_default_image_id\";s:0:\"\";s:18:\"og_frontpage_title\";s:0:\"\";s:17:\"og_frontpage_desc\";s:0:\"\";s:18:\"og_frontpage_image\";s:0:\"\";s:21:\"og_frontpage_image_id\";s:0:\"\";s:9:\"opengraph\";b:1;s:13:\"pinterest_url\";s:0:\"\";s:15:\"pinterestverify\";s:0:\"\";s:7:\"twitter\";b:1;s:12:\"twitter_site\";s:0:\"\";s:17:\"twitter_card_type\";s:19:\"summary_large_image\";s:11:\"youtube_url\";s:0:\"\";s:13:\"wikipedia_url\";s:0:\"\";s:10:\"fbadminapp\";s:0:\"\";}','yes');
INSERT INTO `wp_options` VALUES (513,'wpseo_flush_rewrite','1','yes');
INSERT INTO `wp_options` VALUES (514,'_transient_timeout_wpseo_link_table_inaccessible','1587659343','no');
INSERT INTO `wp_options` VALUES (515,'_transient_wpseo_link_table_inaccessible','0','no');
INSERT INTO `wp_options` VALUES (516,'_transient_timeout_wpseo_meta_table_inaccessible','1587659343','no');
INSERT INTO `wp_options` VALUES (517,'_transient_wpseo_meta_table_inaccessible','0','no');
INSERT INTO `wp_options` VALUES (665,'wp_mail_smtp_initial_version','1.4.2','no');
INSERT INTO `wp_options` VALUES (666,'wp_mail_smtp_version','1.4.2','no');
INSERT INTO `wp_options` VALUES (667,'wp_mail_smtp','a:5:{s:4:\"mail\";a:6:{s:10:\"from_email\";s:20:\"jameelevans@live.com\";s:9:\"from_name\";s:21:\"City Home Inspections\";s:6:\"mailer\";s:4:\"mail\";s:11:\"return_path\";b:0;s:16:\"from_email_force\";b:0;s:15:\"from_name_force\";b:0;}s:4:\"smtp\";a:7:{s:7:\"autotls\";b:0;s:4:\"host\";s:21:\"smtp-mail.outlook.com\";s:10:\"encryption\";s:4:\"none\";s:4:\"port\";s:3:\"587\";s:4:\"auth\";b:0;s:4:\"user\";s:21:\"jameelevans@gmail.com\";s:4:\"pass\";s:11:\"Jdawan.12!@\";}s:5:\"gmail\";a:2:{s:9:\"client_id\";s:0:\"\";s:13:\"client_secret\";s:0:\"\";}s:7:\"mailgun\";a:3:{s:7:\"api_key\";s:0:\"\";s:6:\"domain\";s:0:\"\";s:6:\"region\";s:2:\"US\";}s:8:\"sendgrid\";a:1:{s:7:\"api_key\";s:0:\"\";}}','no');
INSERT INTO `wp_options` VALUES (668,'_amn_smtp_last_checked','1556496000','yes');
INSERT INTO `wp_options` VALUES (670,'wp_mail_smtp_debug','a:0:{}','no');
INSERT INTO `wp_options` VALUES (683,'wpforms_version','1.5.2.3','yes');
INSERT INTO `wp_options` VALUES (684,'wpforms_activated','a:1:{s:4:\"lite\";i:1556561259;}','yes');
INSERT INTO `wp_options` VALUES (687,'widget_wpforms-widget','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (688,'_amn_wpforms-lite_to_check','1557286204','yes');
INSERT INTO `wp_options` VALUES (689,'wpforms_review','a:2:{s:4:\"time\";i:1556561259;s:9:\"dismissed\";b:0;}','yes');
INSERT INTO `wp_options` VALUES (693,'wpcf7','a:2:{s:7:\"version\";s:5:\"5.1.6\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1556561930;s:7:\"version\";s:5:\"5.1.1\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}','yes');
INSERT INTO `wp_options` VALUES (711,'swpsmtp_options','a:8:{s:16:\"from_email_field\";s:21:\"jameelevans@gmail.com\";s:15:\"from_name_field\";s:6:\"Jameel\";s:23:\"force_from_name_replace\";i:1;s:13:\"smtp_settings\";a:9:{s:4:\"host\";s:14:\"smtp.gmail.com\";s:15:\"type_encryption\";s:3:\"ssl\";s:4:\"port\";s:3:\"587\";s:13:\"autentication\";s:3:\"yes\";s:8:\"username\";s:21:\"jameelevans@gmail.com\";s:8:\"password\";s:16:\"SmRhd2FuLjEyIUA=\";s:12:\"enable_debug\";b:0;s:12:\"insecure_ssl\";b:0;s:12:\"encrypt_pass\";b:0;}s:15:\"allowed_domains\";s:36:\"Y2l0eS1ob21lLWluc3BlY3Rpb25zLmxvY2Fs\";s:14:\"reply_to_email\";s:21:\"jameelevans@gmail.com\";s:17:\"email_ignore_list\";s:0:\"\";s:19:\"enable_domain_check\";b:0;}','yes');
INSERT INTO `wp_options` VALUES (712,'smtp_test_mail','a:3:{s:10:\"swpsmtp_to\";s:20:\"jameelevans@live.com\";s:15:\"swpsmtp_subject\";s:4:\"test\";s:15:\"swpsmtp_message\";s:7:\"testing\";}','yes');
INSERT INTO `wp_options` VALUES (879,'category_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (951,'wpmdb_settings','a:13:{s:3:\"key\";s:40:\"maizBqaAmpI9cdFMPgmIa5MeLfkNSWAGdcBgx1gq\";s:10:\"allow_pull\";b:0;s:10:\"allow_push\";b:0;s:8:\"profiles\";a:0:{}s:7:\"licence\";s:0:\"\";s:10:\"verify_ssl\";b:0;s:17:\"whitelist_plugins\";a:0:{}s:11:\"max_request\";i:1048576;s:22:\"delay_between_requests\";i:0;s:18:\"prog_tables_hidden\";b:1;s:21:\"pause_before_finalize\";b:0;s:14:\"allow_tracking\";N;s:28:\"compatibility_plugin_version\";s:3:\"1.2\";}','no');
INSERT INTO `wp_options` VALUES (952,'wpmdb_schema_version','2','no');
INSERT INTO `wp_options` VALUES (953,'wpmdb_usage','a:2:{s:6:\"action\";s:8:\"savefile\";s:4:\"time\";i:1556738693;}','no');
INSERT INTO `wp_options` VALUES (954,'wpmdb_state_timeout_5cc9f2859101d','1556825094','no');
INSERT INTO `wp_options` VALUES (955,'wpmdb_state_5cc9f2859101d','a:22:{s:6:\"action\";s:19:\"wpmdb_migrate_table\";s:6:\"intent\";s:8:\"savefile\";s:3:\"url\";s:0:\"\";s:9:\"form_data\";s:303:\"action=savefile&save_computer=1&gzip_file=1&connection_info=&replace_old%5B%5D=&replace_new%5B%5D=&replace_old%5B%5D=%2F%2Fcity-home-inspections.local&replace_new%5B%5D=%2F%2Fcityhomeinspect.net&replace_guids=1&exclude_transients=1&save_migration_profile_option=new&create_new_profile=&remote_json_data=\";s:5:\"stage\";s:7:\"migrate\";s:5:\"nonce\";s:10:\"dc06b64d7b\";s:12:\"site_details\";a:1:{s:5:\"local\";a:10:{s:12:\"is_multisite\";s:5:\"false\";s:8:\"site_url\";s:34:\"http://city-home-inspections.local\";s:8:\"home_url\";s:34:\"http://city-home-inspections.local\";s:6:\"prefix\";s:3:\"wp_\";s:15:\"uploads_baseurl\";s:54:\"http://city-home-inspections.local/wp-content/uploads/\";s:7:\"uploads\";a:6:{s:4:\"path\";s:38:\"/app/public/wp-content/uploads/2019/05\";s:3:\"url\";s:61:\"http://city-home-inspections.local/wp-content/uploads/2019/05\";s:6:\"subdir\";s:8:\"/2019/05\";s:7:\"basedir\";s:30:\"/app/public/wp-content/uploads\";s:7:\"baseurl\";s:53:\"http://city-home-inspections.local/wp-content/uploads\";s:5:\"error\";b:0;}s:11:\"uploads_dir\";s:33:\"wp-content/uploads/wp-migrate-db/\";s:8:\"subsites\";a:0:{}s:13:\"subsites_info\";a:0:{}s:20:\"is_subdomain_install\";s:5:\"false\";}}s:4:\"code\";i:200;s:7:\"message\";s:2:\"OK\";s:4:\"body\";s:11:\"{\"error\":0}\";s:9:\"dump_path\";s:86:\"/app/public/wp-content/uploads/wp-migrate-db/local-migrate-20190501192453-3bwbf.sql.gz\";s:13:\"dump_filename\";s:34:\"local-migrate-20190501192453-3bwbf\";s:8:\"dump_url\";s:109:\"http://city-home-inspections.local/wp-content/uploads/wp-migrate-db/local-migrate-20190501192453-chnkl.sql.gz\";s:10:\"db_version\";s:6:\"5.7.23\";s:8:\"site_url\";s:34:\"http://city-home-inspections.local\";s:18:\"find_replace_pairs\";a:2:{s:11:\"replace_old\";a:1:{i:1;s:29:\"//city-home-inspections.local\";}s:11:\"replace_new\";a:1:{i:1;s:21:\"//cityhomeinspect.net\";}}s:18:\"migration_state_id\";s:13:\"5cc9f2859101d\";s:5:\"table\";s:17:\"wp_yoast_seo_meta\";s:11:\"current_row\";s:0:\"\";s:10:\"last_table\";s:1:\"1\";s:12:\"primary_keys\";s:0:\"\";s:4:\"gzip\";s:1:\"0\";}','no');
INSERT INTO `wp_options` VALUES (990,'auto_core_update_notified','a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:24:\"dev-email@flywheel.local\";s:7:\"version\";s:5:\"5.1.4\";s:9:\"timestamp\";i:1581652553;}','no');
INSERT INTO `wp_options` VALUES (997,'core_updater.lock','1581652579','no');
INSERT INTO `wp_options` VALUES (999,'recovery_keys','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (1000,'admin_email_lifespan','1597204701','yes');
INSERT INTO `wp_options` VALUES (1001,'db_upgraded','','yes');
INSERT INTO `wp_options` VALUES (1002,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.3.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.3.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.2\";s:7:\"version\";s:5:\"5.3.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1585000269;s:15:\"version_checked\";s:5:\"5.3.2\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (1005,'can_compress_scripts','1','no');
INSERT INTO `wp_options` VALUES (1032,'_site_transient_timeout_browser_6366f33429777c01a08823c24bddafe9','1583099818','no');
INSERT INTO `wp_options` VALUES (1033,'_site_transient_browser_6366f33429777c01a08823c24bddafe9','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"79.0.3945.130\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no');
INSERT INTO `wp_options` VALUES (1034,'_site_transient_timeout_php_check_20c231c3d6703efba5d948822e1d1da6','1583099819','no');
INSERT INTO `wp_options` VALUES (1035,'_site_transient_php_check_20c231c3d6703efba5d948822e1d1da6','a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no');
INSERT INTO `wp_options` VALUES (1038,'_site_transient_update_plugins','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1583083732;s:8:\"response\";a:1:{s:31:\"wp-migrate-db/wp-migrate-db.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:27:\"w.org/plugins/wp-migrate-db\";s:4:\"slug\";s:13:\"wp-migrate-db\";s:6:\"plugin\";s:31:\"wp-migrate-db/wp-migrate-db.php\";s:11:\"new_version\";s:6:\"1.0.12\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/wp-migrate-db/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/wp-migrate-db.1.0.12.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/wp-migrate-db/assets/icon-256x256.jpg?rev=1809889\";s:2:\"1x\";s:66:\"https://ps.w.org/wp-migrate-db/assets/icon-128x128.jpg?rev=1809889\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/wp-migrate-db/assets/banner-1544x500.jpg?rev=1809889\";s:2:\"1x\";s:68:\"https://ps.w.org/wp-migrate-db/assets/banner-772x250.jpg?rev=1809889\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.3.2\";s:12:\"requires_php\";s:3:\"5.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:5:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.8.7\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.8.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.1.6\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}s:39:\"manual-image-crop/manual-image-crop.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:31:\"w.org/plugins/manual-image-crop\";s:4:\"slug\";s:17:\"manual-image-crop\";s:6:\"plugin\";s:39:\"manual-image-crop/manual-image-crop.php\";s:11:\"new_version\";s:4:\"1.12\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/manual-image-crop/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/manual-image-crop.1.12.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/manual-image-crop/assets/icon-256x256.png?rev=1154913\";s:2:\"1x\";s:70:\"https://ps.w.org/manual-image-crop/assets/icon-128x128.png?rev=1154913\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/manual-image-crop/assets/banner-1544x500.jpg?rev=781224\";s:2:\"1x\";s:71:\"https://ps.w.org/manual-image-crop/assets/banner-772x250.jpg?rev=781224\";}s:11:\"banners_rtl\";a:0:{}}s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:35:\"w.org/plugins/regenerate-thumbnails\";s:4:\"slug\";s:21:\"regenerate-thumbnails\";s:6:\"plugin\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:11:\"new_version\";s:5:\"3.1.3\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/regenerate-thumbnails/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/regenerate-thumbnails.3.1.3.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:74:\"https://ps.w.org/regenerate-thumbnails/assets/icon-128x128.png?rev=1753390\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/regenerate-thumbnails/assets/banner-1544x500.jpg?rev=1753390\";s:2:\"1x\";s:76:\"https://ps.w.org/regenerate-thumbnails/assets/banner-772x250.jpg?rev=1753390\";}s:11:\"banners_rtl\";a:0:{}}s:24:\"wordpress-seo/wp-seo.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:27:\"w.org/plugins/wordpress-seo\";s:4:\"slug\";s:13:\"wordpress-seo\";s:6:\"plugin\";s:24:\"wordpress-seo/wp-seo.php\";s:11:\"new_version\";s:4:\"13.1\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/wordpress-seo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/wordpress-seo.13.1.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:66:\"https://ps.w.org/wordpress-seo/assets/icon-256x256.png?rev=1834347\";s:2:\"1x\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=1946641\";s:3:\"svg\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=1946641\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500.png?rev=1843435\";s:2:\"1x\";s:68:\"https://ps.w.org/wordpress-seo/assets/banner-772x250.png?rev=1843435\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500-rtl.png?rev=1843435\";s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-seo/assets/banner-772x250-rtl.png?rev=1843435\";}}}}','no');
INSERT INTO `wp_options` VALUES (1039,'rewrite_rules','a:108:{s:19:\"sitemap_index\\.xml$\";s:19:\"index.php?sitemap=1\";s:31:\"([^/]+?)-sitemap([0-9]+)?\\.xml$\";s:51:\"index.php?sitemap=$matches[1]&sitemap_n=$matches[2]\";s:24:\"([a-z]+)?-?sitemap\\.xsl$\";s:39:\"index.php?yoast-sitemap-xsl=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:57:\"resources/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:52:\"resources/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:33:\"resources/category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:45:\"resources/category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:27:\"resources/category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:54:\"resources/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:49:\"resources/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:30:\"resources/tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:42:\"resources/tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:24:\"resources/tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:55:\"resources/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:50:\"resources/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:31:\"resources/type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:43:\"resources/type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:25:\"resources/type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:43:\"resources/slide/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:53:\"resources/slide/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:73:\"resources/slide/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:68:\"resources/slide/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:68:\"resources/slide/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:49:\"resources/slide/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:32:\"resources/slide/([^/]+)/embed/?$\";s:38:\"index.php?slide=$matches[1]&embed=true\";s:36:\"resources/slide/([^/]+)/trackback/?$\";s:32:\"index.php?slide=$matches[1]&tb=1\";s:44:\"resources/slide/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?slide=$matches[1]&paged=$matches[2]\";s:51:\"resources/slide/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?slide=$matches[1]&cpage=$matches[2]\";s:40:\"resources/slide/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?slide=$matches[1]&page=$matches[2]\";s:32:\"resources/slide/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"resources/slide/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"resources/slide/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"resources/slide/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"resources/slide/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"resources/slide/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:40:\"index.php?&page_id=701&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:57:\"resources/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:52:\"resources/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:33:\"resources/author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:45:\"resources/author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:27:\"resources/author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:79:\"resources/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:74:\"resources/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:55:\"resources/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:67:\"resources/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:49:\"resources/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:66:\"resources/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:61:\"resources/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:42:\"resources/([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:54:\"resources/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:36:\"resources/([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:53:\"resources/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:48:\"resources/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:29:\"resources/([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:41:\"resources/([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:23:\"resources/([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:37:\"resources/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"resources/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"resources/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"resources/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"resources/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"resources/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"resources/([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:30:\"resources/([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:50:\"resources/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:45:\"resources/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:38:\"resources/([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:45:\"resources/([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:34:\"resources/([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:26:\"resources/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"resources/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"resources/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"resources/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"resources/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"resources/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes');
INSERT INTO `wp_options` VALUES (1045,'_transient_timeout_wpseo-statistics-totals','1583173076','no');
INSERT INTO `wp_options` VALUES (1046,'_transient_wpseo-statistics-totals','a:1:{i:1;a:2:{s:6:\"scores\";a:1:{i:0;a:4:{s:8:\"seo_rank\";s:2:\"na\";s:5:\"label\";s:48:\"Posts <strong>without</strong> a focus keyphrase\";s:5:\"count\";i:3;s:4:\"link\";s:111:\"http://city-home-inspections.local/wp-admin/edit.php?post_status=publish&#038;post_type=post&#038;seo_filter=na\";}}s:8:\"division\";a:5:{s:3:\"bad\";i:0;s:2:\"ok\";i:0;s:4:\"good\";i:0;s:2:\"na\";i:1;s:7:\"noindex\";i:0;}}}','no');
INSERT INTO `wp_options` VALUES (1047,'_site_transient_timeout_theme_roots','1583088516','no');
INSERT INTO `wp_options` VALUES (1048,'_site_transient_theme_roots','a:2:{s:23:\"cityhome-inspections v2\";s:7:\"/themes\";s:20:\"cityhome-inspections\";s:7:\"/themes\";}','no');
INSERT INTO `wp_options` VALUES (1050,'theme_mods_cityhome-inspections v2','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}','yes');
INSERT INTO `wp_options` VALUES (1051,'_transient_doing_cron','1590508458.5020430088043212890625','yes');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=1275 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (51,762,'_wp_attached_file','2011/07/dsc20051220_160808_102.jpg');
INSERT INTO `wp_postmeta` VALUES (52,762,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:1066;s:4:\"file\";s:34:\"2011/07/dsc20051220_160808_102.jpg\";s:5:\"sizes\";a:7:{s:10:\"pageBanner\";a:4:{s:4:\"file\";s:35:\"dsc20051220_160808_102-1500x350.jpg\";s:5:\"width\";i:1500;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"dsc20051220_160808_102-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"dsc20051220_160808_102-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:34:\"dsc20051220_160808_102-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:35:\"dsc20051220_160808_102-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"bannerLogo\";a:4:{s:4:\"file\";s:34:\"dsc20051220_160808_102-600x143.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:143;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"resourceImage\";a:4:{s:4:\"file\";s:34:\"dsc20051220_160808_102-620x278.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:278;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"2.5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 10D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1135094888\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"400\";s:13:\"shutter_speed\";s:17:\"0.016666666666667\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (53,762,'_wp_attachment_image_alt','Antique Farm Machinery');
INSERT INTO `wp_postmeta` VALUES (54,762,'_attachment_original_parent_id','555');
INSERT INTO `wp_postmeta` VALUES (132,1726,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (133,1726,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (134,1726,'_menu_item_object_id','1726');
INSERT INTO `wp_postmeta` VALUES (135,1726,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (136,1726,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (137,1726,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (138,1726,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (139,1726,'_menu_item_url','#');
INSERT INTO `wp_postmeta` VALUES (140,1727,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (141,1727,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (142,1727,'_menu_item_object_id','1727');
INSERT INTO `wp_postmeta` VALUES (143,1727,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (144,1727,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (145,1727,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (146,1727,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (147,1727,'_menu_item_url','#');
INSERT INTO `wp_postmeta` VALUES (156,1729,'_menu_item_type','taxonomy');
INSERT INTO `wp_postmeta` VALUES (157,1729,'_menu_item_menu_item_parent','1727');
INSERT INTO `wp_postmeta` VALUES (158,1729,'_menu_item_object_id','136');
INSERT INTO `wp_postmeta` VALUES (159,1729,'_menu_item_object','category');
INSERT INTO `wp_postmeta` VALUES (160,1729,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (161,1729,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (162,1729,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (163,1729,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (172,1731,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (173,1731,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (174,1731,'_menu_item_object_id','1731');
INSERT INTO `wp_postmeta` VALUES (175,1731,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (176,1731,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (177,1731,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (178,1731,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (179,1731,'_menu_item_url','#');
INSERT INTO `wp_postmeta` VALUES (180,1732,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (181,1732,'_menu_item_menu_item_parent','1731');
INSERT INTO `wp_postmeta` VALUES (182,1732,'_menu_item_object_id','1732');
INSERT INTO `wp_postmeta` VALUES (183,1732,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (184,1732,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (185,1732,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (186,1732,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (187,1732,'_menu_item_url','#');
INSERT INTO `wp_postmeta` VALUES (188,1733,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (189,1733,'_menu_item_menu_item_parent','1732');
INSERT INTO `wp_postmeta` VALUES (190,1733,'_menu_item_object_id','1733');
INSERT INTO `wp_postmeta` VALUES (191,1733,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (192,1733,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (193,1733,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (194,1733,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (195,1733,'_menu_item_url','#');
INSERT INTO `wp_postmeta` VALUES (196,1734,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (197,1734,'_menu_item_menu_item_parent','1733');
INSERT INTO `wp_postmeta` VALUES (198,1734,'_menu_item_object_id','1734');
INSERT INTO `wp_postmeta` VALUES (199,1734,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (200,1734,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (201,1734,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (202,1734,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (203,1734,'_menu_item_url','#');
INSERT INTO `wp_postmeta` VALUES (204,1735,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (205,1735,'_menu_item_menu_item_parent','1734');
INSERT INTO `wp_postmeta` VALUES (206,1735,'_menu_item_object_id','1735');
INSERT INTO `wp_postmeta` VALUES (207,1735,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (208,1735,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (209,1735,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (210,1735,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (211,1735,'_menu_item_url','#');
INSERT INTO `wp_postmeta` VALUES (212,1736,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (213,1736,'_menu_item_menu_item_parent','1735');
INSERT INTO `wp_postmeta` VALUES (214,1736,'_menu_item_object_id','1736');
INSERT INTO `wp_postmeta` VALUES (215,1736,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (216,1736,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (217,1736,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (218,1736,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (219,1736,'_menu_item_url','#');
INSERT INTO `wp_postmeta` VALUES (220,1737,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (221,1737,'_menu_item_menu_item_parent','1736');
INSERT INTO `wp_postmeta` VALUES (222,1737,'_menu_item_object_id','1737');
INSERT INTO `wp_postmeta` VALUES (223,1737,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (224,1737,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (225,1737,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (226,1737,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (227,1737,'_menu_item_url','#');
INSERT INTO `wp_postmeta` VALUES (228,1738,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (229,1738,'_menu_item_menu_item_parent','1737');
INSERT INTO `wp_postmeta` VALUES (230,1738,'_menu_item_object_id','1738');
INSERT INTO `wp_postmeta` VALUES (231,1738,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (232,1738,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (233,1738,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (234,1738,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (235,1738,'_menu_item_url','#');
INSERT INTO `wp_postmeta` VALUES (236,1739,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (237,1739,'_menu_item_menu_item_parent','1738');
INSERT INTO `wp_postmeta` VALUES (238,1739,'_menu_item_object_id','1739');
INSERT INTO `wp_postmeta` VALUES (239,1739,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (240,1739,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (241,1739,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (242,1739,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (243,1739,'_menu_item_url','#');
INSERT INTO `wp_postmeta` VALUES (244,1740,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (245,1740,'_menu_item_menu_item_parent','1739');
INSERT INTO `wp_postmeta` VALUES (246,1740,'_menu_item_object_id','1740');
INSERT INTO `wp_postmeta` VALUES (247,1740,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (248,1740,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (249,1740,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (250,1740,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (251,1740,'_menu_item_url','#');
INSERT INTO `wp_postmeta` VALUES (252,1741,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (253,1741,'_menu_item_menu_item_parent','1740');
INSERT INTO `wp_postmeta` VALUES (254,1741,'_menu_item_object_id','1741');
INSERT INTO `wp_postmeta` VALUES (255,1741,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (256,1741,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (257,1741,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (258,1741,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (259,1741,'_menu_item_url','#');
INSERT INTO `wp_postmeta` VALUES (260,1742,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (261,1742,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (262,1742,'_menu_item_object_id','1742');
INSERT INTO `wp_postmeta` VALUES (263,1742,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (264,1742,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (265,1742,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (266,1742,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (267,1742,'_menu_item_url','#');
INSERT INTO `wp_postmeta` VALUES (268,1743,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (269,1743,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (270,1743,'_menu_item_object_id','1743');
INSERT INTO `wp_postmeta` VALUES (271,1743,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (272,1743,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (273,1743,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (274,1743,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (275,1743,'_menu_item_url','#');
INSERT INTO `wp_postmeta` VALUES (276,1744,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (277,1744,'_menu_item_menu_item_parent','1742');
INSERT INTO `wp_postmeta` VALUES (278,1744,'_menu_item_object_id','1744');
INSERT INTO `wp_postmeta` VALUES (279,1744,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (280,1744,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (281,1744,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (282,1744,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (283,1744,'_menu_item_url','#');
INSERT INTO `wp_postmeta` VALUES (284,1745,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (285,1745,'_menu_item_menu_item_parent','1742');
INSERT INTO `wp_postmeta` VALUES (286,1745,'_menu_item_object_id','1745');
INSERT INTO `wp_postmeta` VALUES (287,1745,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (288,1745,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (289,1745,'_menu_item_classes','a:1:{i:0;s:21:\"custom-menu-css-class\";}');
INSERT INTO `wp_postmeta` VALUES (290,1745,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (291,1745,'_menu_item_url','#');
INSERT INTO `wp_postmeta` VALUES (292,1746,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (293,1746,'_menu_item_menu_item_parent','1742');
INSERT INTO `wp_postmeta` VALUES (294,1746,'_menu_item_object_id','1746');
INSERT INTO `wp_postmeta` VALUES (295,1746,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (296,1746,'_menu_item_target','_blank');
INSERT INTO `wp_postmeta` VALUES (297,1746,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (298,1746,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (299,1746,'_menu_item_url','https://wordpressfoundation.org/');
INSERT INTO `wp_postmeta` VALUES (300,1747,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (301,1747,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (302,1747,'_menu_item_object_id','1747');
INSERT INTO `wp_postmeta` VALUES (303,1747,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (304,1747,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (305,1747,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (306,1747,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (307,1747,'_menu_item_url','https://twitter.com/wordpress');
INSERT INTO `wp_postmeta` VALUES (308,1748,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (309,1748,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (310,1748,'_menu_item_object_id','1748');
INSERT INTO `wp_postmeta` VALUES (311,1748,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (312,1748,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (313,1748,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (314,1748,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (315,1748,'_menu_item_url','https://www.facebook.com/WordPress/');
INSERT INTO `wp_postmeta` VALUES (316,1749,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (317,1749,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (318,1749,'_menu_item_object_id','1749');
INSERT INTO `wp_postmeta` VALUES (319,1749,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (320,1749,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (321,1749,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (322,1749,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (323,1749,'_menu_item_url','https://github.com/WordPress/');
INSERT INTO `wp_postmeta` VALUES (324,1750,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (325,1750,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (326,1750,'_menu_item_object_id','1750');
INSERT INTO `wp_postmeta` VALUES (327,1750,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (328,1750,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (329,1750,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (330,1750,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (331,1750,'_menu_item_url','https://www.instagram.com/photomatt/');
INSERT INTO `wp_postmeta` VALUES (332,1751,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (333,1751,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (334,1751,'_menu_item_object_id','1751');
INSERT INTO `wp_postmeta` VALUES (335,1751,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (336,1751,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (337,1751,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (338,1751,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (339,1751,'_menu_item_url','https://www.linkedin.com/company/wordpress/');
INSERT INTO `wp_postmeta` VALUES (342,1752,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (343,1752,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (344,1752,'_menu_item_object_id','703');
INSERT INTO `wp_postmeta` VALUES (345,1752,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (346,1752,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (347,1752,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (348,1752,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (349,1752,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (390,1758,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (391,1758,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (392,1758,'_menu_item_object_id','703');
INSERT INTO `wp_postmeta` VALUES (393,1758,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (394,1758,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (395,1758,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (396,1758,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (397,1758,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (398,1759,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (399,1759,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (400,1759,'_menu_item_object_id','701');
INSERT INTO `wp_postmeta` VALUES (401,1759,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (402,1759,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (403,1759,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (404,1759,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (405,1759,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (751,1808,'_wp_attached_file','2019/04/city-home-inspections-logo.png');
INSERT INTO `wp_postmeta` VALUES (752,1808,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:302;s:6:\"height\";i:43;s:4:\"file\";s:38:\"2019/04/city-home-inspections-logo.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"city-home-inspections-logo-150x43.png\";s:5:\"width\";i:150;s:6:\"height\";i:43;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:37:\"city-home-inspections-logo-300x43.png\";s:5:\"width\";i:300;s:6:\"height\";i:43;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (755,1809,'_edit_lock','1556340816:1');
INSERT INTO `wp_postmeta` VALUES (756,1811,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (757,1811,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (758,1811,'_menu_item_object_id','1809');
INSERT INTO `wp_postmeta` VALUES (759,1811,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (760,1811,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (761,1811,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (762,1811,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (763,1811,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (765,1812,'_edit_lock','1556135940:1');
INSERT INTO `wp_postmeta` VALUES (766,1814,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (767,1814,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (768,1814,'_menu_item_object_id','1812');
INSERT INTO `wp_postmeta` VALUES (769,1814,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (770,1814,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (771,1814,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (772,1814,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (773,1814,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (776,701,'_edit_lock','1556341822:1');
INSERT INTO `wp_postmeta` VALUES (786,703,'_edit_lock','1556478987:1');
INSERT INTO `wp_postmeta` VALUES (843,1837,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (844,1837,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (845,1837,'_menu_item_object_id','701');
INSERT INTO `wp_postmeta` VALUES (846,1837,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (847,1837,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (848,1837,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (849,1837,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (850,1837,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (852,1838,'_wp_attached_file','2019/04/favicon.png');
INSERT INTO `wp_postmeta` VALUES (853,1838,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:32;s:6:\"height\";i:32;s:4:\"file\";s:19:\"2019/04/favicon.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (858,1842,'_wp_attached_file','2019/04/city-home-inspections-logo-1.png');
INSERT INTO `wp_postmeta` VALUES (859,1842,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:160;s:6:\"height\";i:43;s:4:\"file\";s:40:\"2019/04/city-home-inspections-logo-1.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:39:\"city-home-inspections-logo-1-150x43.png\";s:5:\"width\";i:150;s:6:\"height\";i:43;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (860,1842,'_wp_attachment_image_alt','City Home Inspections Logo');
INSERT INTO `wp_postmeta` VALUES (864,703,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (865,1847,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (866,1847,'_edit_lock','1555941846:1');
INSERT INTO `wp_postmeta` VALUES (867,1852,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (868,1852,'_edit_lock','1556737152:1');
INSERT INTO `wp_postmeta` VALUES (869,1853,'_wp_attached_file','2019/04/city-home-inspections-truck.jpg');
INSERT INTO `wp_postmeta` VALUES (870,1853,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:4032;s:6:\"height\";i:3024;s:4:\"file\";s:39:\"2019/04/city-home-inspections-truck.jpg\";s:5:\"sizes\";a:8:{s:10:\"pageBanner\";a:4:{s:4:\"file\";s:40:\"city-home-inspections-truck-1500x350.jpg\";s:5:\"width\";i:1500;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"resourceImage\";a:4:{s:4:\"file\";s:41:\"city-home-inspections-truck-1600x1066.jpg\";s:5:\"width\";i:1600;s:6:\"height\";i:1066;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:39:\"city-home-inspections-truck-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:39:\"city-home-inspections-truck-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:39:\"city-home-inspections-truck-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:40:\"city-home-inspections-truck-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"bannerLogo\";a:4:{s:4:\"file\";s:39:\"city-home-inspections-truck-600x143.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:143;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"resourceImage_old_620x278\";a:4:{s:4:\"file\";s:39:\"city-home-inspections-truck-620x278.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:278;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"2.2\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:14:\"iPhone 6s Plus\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1456672637\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:4:\"4.15\";s:3:\"iso\";s:2:\"40\";s:13:\"shutter_speed\";s:18:\"0.0083333333333333\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (871,1852,'slide_title','Pre-Purchase Home Inspections');
INSERT INTO `wp_postmeta` VALUES (872,1852,'_slide_title','field_5cb9ed09255e8');
INSERT INTO `wp_postmeta` VALUES (873,1852,'slide_description','We\'ll give you a clear, unbiased inspection of your home\'s condition. Fees may vary by size and complexity of the property inspected.  Additional charges will apply to properties over 2,500 square feet.');
INSERT INTO `wp_postmeta` VALUES (874,1852,'_slide_description','field_5cb9ed3c255e9');
INSERT INTO `wp_postmeta` VALUES (875,1852,'slide_image','1853');
INSERT INTO `wp_postmeta` VALUES (876,1852,'_slide_image','field_5cb9ed6e255ea');
INSERT INTO `wp_postmeta` VALUES (877,1852,'slide_link','a:3:{s:5:\"title\";s:17:\"What’s Included\";s:3:\"url\";s:32:\"//localhost:3000/whats-included/\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (878,1852,'_slide_link','field_5cb9edee255eb');
INSERT INTO `wp_postmeta` VALUES (879,1854,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (880,1854,'_edit_lock','1556673962:1');
INSERT INTO `wp_postmeta` VALUES (883,1854,'slide_title','Make Your Move Confidently');
INSERT INTO `wp_postmeta` VALUES (884,1854,'_slide_title','field_5cb9ed09255e8');
INSERT INTO `wp_postmeta` VALUES (885,1854,'slide_description','Trusted by thousands in the Southeastern Wisconsin area. Veteran owned, licensed, insured and bonded serving thousands in Milwaukee, Waukesha, Racine and all of southeast Wisconsin since 1998. ');
INSERT INTO `wp_postmeta` VALUES (886,1854,'_slide_description','field_5cb9ed3c255e9');
INSERT INTO `wp_postmeta` VALUES (887,1854,'slide_image','');
INSERT INTO `wp_postmeta` VALUES (888,1854,'_slide_image','field_5cb9ed6e255ea');
INSERT INTO `wp_postmeta` VALUES (889,1854,'slide_link','a:3:{s:5:\"title\";s:18:\"Request Inspection\";s:3:\"url\";s:54:\"http://city-home-inspections.local/request-inspection/\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (890,1854,'_slide_link','field_5cb9edee255eb');
INSERT INTO `wp_postmeta` VALUES (894,1852,'_wp_old_slug','make-your-move-confidently__trashed');
INSERT INTO `wp_postmeta` VALUES (895,1858,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (896,1858,'_edit_lock','1555941831:1');
INSERT INTO `wp_postmeta` VALUES (897,1860,'_wp_attached_file','2019/04/city-home-inspections-logo-large.png');
INSERT INTO `wp_postmeta` VALUES (898,1860,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:600;s:6:\"height\";i:143;s:4:\"file\";s:44:\"2019/04/city-home-inspections-logo-large.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"city-home-inspections-logo-large-150x143.png\";s:5:\"width\";i:150;s:6:\"height\";i:143;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:43:\"city-home-inspections-logo-large-300x72.png\";s:5:\"width\";i:300;s:6:\"height\";i:72;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (899,1860,'_wp_attachment_image_alt','City Home Inspections Logo Large');
INSERT INTO `wp_postmeta` VALUES (900,701,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (901,701,'banner_logo','1860');
INSERT INTO `wp_postmeta` VALUES (902,701,'_banner_logo','field_5cbcdf2b270a2');
INSERT INTO `wp_postmeta` VALUES (1114,1809,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (1115,1809,'_yoast_wpseo_content_score','60');
INSERT INTO `wp_postmeta` VALUES (1116,1812,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (1117,1812,'_yoast_wpseo_content_score','30');
INSERT INTO `wp_postmeta` VALUES (1118,1927,'_wp_attached_file','2019/04/jameel-dawan.jpg');
INSERT INTO `wp_postmeta` VALUES (1119,1927,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:492;s:6:\"height\";i:597;s:4:\"file\";s:24:\"2019/04/jameel-dawan.jpg\";s:5:\"sizes\";a:4:{s:10:\"pageBanner\";a:4:{s:4:\"file\";s:24:\"jameel-dawan-492x350.jpg\";s:5:\"width\";i:492;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"jameel-dawan-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"jameel-dawan-247x300.jpg\";s:5:\"width\";i:247;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"bannerLogo\";a:4:{s:4:\"file\";s:24:\"jameel-dawan-492x143.jpg\";s:5:\"width\";i:492;s:6:\"height\";i:143;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (1120,1927,'_wp_attachment_image_alt','Jameel Dawan the founder of City Home Inspections');
INSERT INTO `wp_postmeta` VALUES (1129,3,'_edit_lock','1556163304:1');
INSERT INTO `wp_postmeta` VALUES (1130,1854,'_yoast_wpseo_content_score','30');
INSERT INTO `wp_postmeta` VALUES (1131,1852,'_yoast_wpseo_content_score','30');
INSERT INTO `wp_postmeta` VALUES (1132,701,'_yoast_wpseo_title','%%sitename%% %%sep%% %%sitedesc%%');
INSERT INTO `wp_postmeta` VALUES (1133,701,'_yoast_wpseo_content_score','30');
INSERT INTO `wp_postmeta` VALUES (1147,1947,'_edit_lock','1556644956:1');
INSERT INTO `wp_postmeta` VALUES (1148,1947,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (1149,1947,'_yoast_wpseo_content_score','30');
INSERT INTO `wp_postmeta` VALUES (1150,1947,'_yoast_wpseo_meta-robots-nofollow','1');
INSERT INTO `wp_postmeta` VALUES (1151,1953,'_form','<h4>Contact Information</h4>\n<div class=\"modal__inner-form--name\">\n[text* fullname  class:modal__inner-form--item placeholder \"Full Name\"]\n</div>\n<div class=\"modal__inner-form--email\">\n[text* email class:modal__inner-form--item placeholder \"Email\"]\n</div>\n<div class=\"modal__inner-form--number\">\n[text* number  class:modal__inner-form--item placeholder \"Number\"]\n</div>\n\n<h4>Inspection Address</h4>\n<div class=\"modal__inner-form--address\">\n[text address class:modal__inner-form--item placeholder \"Address\"]\n</div>\n<div class=\"modal__inner-form--city-zip\">\n[text city class:modal__inner-form--item placeholder \"City\"][text zipcode class:modal__inner-form--item placeholder \"Zip Code\"]\n</div>\n\n<h4><label for=\"date\">Desired Inspection Date</label></h4>\n<div class=\"modal__inner-form--date\">\n[text date class:modal__inner-form--item placeholder \"mm/dd/yy\"]\n</div>\n<div class=\"modal__inner-form--time\">\n[select time class:modal__inner-form--item \"Morning\" \"Noon\" \"Afternoon\"]\n</div>\n\n<h4><label for=\"type\">Type of Inspection</label></h4>\n<div class=\"modal__inner-form--type\">\n[select type class:modal__inner-form--item \"Home Buyer\" \"Home Seller\"]\n</div>\n\n\n[submit class:btn class:btn--green-outline \"Send\"]');
INSERT INTO `wp_postmeta` VALUES (1152,1953,'_mail','a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:45:\"You have a inspection request from [fullname]\";s:6:\"sender\";s:61:\"City Home Inspections <wordpress@city-home-inspections.local>\";s:9:\"recipient\";s:20:\"jameelevans@live.com\";s:4:\"body\";s:666:\"<html><body>\nHello, you have an inspection request from [fullname]<br />\n<table rules=\"all\" style=\"border-color: #666;\" cellpadding=\"10\">\'<tr style=\'background: #eee;\'><td><strong>Name:</strong> </td><td>[fullname]</td></tr>\n<tr><td><strong>Number:</strong> </td><td>[number]</td></tr>\n<tr><td><strong>Email:</strong> </td><td>[email]</td></tr>\n<tr><td><strong>Inspection Type:</strong> </td><td>[type]</td></tr>\n<tr><td><strong>Inspection Address:</strong> </td><td>[address] [city] [zipcode]</td></tr>\n<tr><td><strong>Desired Inspection Date:</strong> </td><td>[date]</td></tr>\n<tr><td><strong>Desired Time of Day:</strong> </td><td>[time]</td></tr>\n</body></html>\";s:18:\"additional_headers\";s:30:\"Reply-To: jameelevans@live.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:1;s:13:\"exclude_blank\";b:0;}');
INSERT INTO `wp_postmeta` VALUES (1153,1953,'_mail_2','a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"City Home Inspections no-reply\";s:6:\"sender\";s:61:\"City Home Inspections <wordpress@city-home-inspections.local>\";s:9:\"recipient\";s:7:\"[email]\";s:4:\"body\";s:200:\"Message Body:\nCity Home Inspections has received your request. We\'ll be in contact shortly. \n\n-- \nThis e-mail was sent from a contact form on City Home Inspections (http://city-home-inspections.local)\";s:18:\"additional_headers\";s:34:\"Reply-To: dev-email@flywheel.local\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}');
INSERT INTO `wp_postmeta` VALUES (1154,1953,'_messages','a:23:{s:12:\"mail_sent_ok\";s:51:\"Your request was sent. We\'ll be in contact shortly.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:17:\"captcha_not_match\";s:31:\"Your entered code is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}');
INSERT INTO `wp_postmeta` VALUES (1155,1953,'_additional_settings','');
INSERT INTO `wp_postmeta` VALUES (1156,1953,'_locale','en_US');
INSERT INTO `wp_postmeta` VALUES (1172,1957,'_edit_lock','1556673246:1');
INSERT INTO `wp_postmeta` VALUES (1175,1957,'_thumbnail_id','1960');
INSERT INTO `wp_postmeta` VALUES (1176,1957,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (1179,1957,'_yoast_wpseo_primary_category','194');
INSERT INTO `wp_postmeta` VALUES (1180,1957,'_yoast_wpseo_content_score','30');
INSERT INTO `wp_postmeta` VALUES (1185,1960,'_wp_attached_file','2019/04/home-inspection-stamp-1.jpeg');
INSERT INTO `wp_postmeta` VALUES (1186,1960,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:6000;s:6:\"height\";i:3000;s:4:\"file\";s:36:\"2019/04/home-inspection-stamp-1.jpeg\";s:5:\"sizes\";a:8:{s:13:\"resourceImage\";a:4:{s:4:\"file\";s:38:\"home-inspection-stamp-1-1600x1066.jpeg\";s:5:\"width\";i:1600;s:6:\"height\";i:1066;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"home-inspection-stamp-1-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"home-inspection-stamp-1-300x150.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:36:\"home-inspection-stamp-1-768x384.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:384;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"home-inspection-stamp-1-1024x512.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"bannerLogo\";a:4:{s:4:\"file\";s:36:\"home-inspection-stamp-1-600x143.jpeg\";s:5:\"width\";i:600;s:6:\"height\";i:143;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"pageBanner\";a:4:{s:4:\"file\";s:37:\"home-inspection-stamp-1-1500x350.jpeg\";s:5:\"width\";i:1500;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"resourceImage_old_620x620\";a:4:{s:4:\"file\";s:36:\"home-inspection-stamp-1-620x620.jpeg\";s:5:\"width\";i:620;s:6:\"height\";i:620;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:33:\"Olivier Le Moal - stock.adobe.com\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:90:\"3D illustration of home inspector business card with rubber stamp, magnifier and blueprint\";s:17:\"created_timestamp\";s:10:\"1526200784\";s:9:\"copyright\";s:35:\"©Olivier Le Moal - stock.adobe.com\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:52:\"Home inspector, Buyer or Seller Property inspection.\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:36:{i:0;s:15:\"home inspection\";i:1;s:9:\"inspector\";i:2;s:8:\"property\";i:3;s:5:\"buyer\";i:4;s:6:\"seller\";i:5;s:12:\"pre-delivery\";i:6;s:10:\"structural\";i:7;s:6:\"verify\";i:8;s:9:\"condition\";i:9;s:7:\"concept\";i:10;s:4:\"sign\";i:11;s:12:\"rubber stamp\";i:12;s:4:\"seal\";i:13;s:17:\"magnifyiing glass\";i:14;s:9:\"magnifier\";i:15;s:3:\"job\";i:16;s:10:\"conceptual\";i:17;s:15:\"3D illustration\";i:18;s:15:\"home inspection\";i:19;s:9:\"inspector\";i:20;s:8:\"property\";i:21;s:5:\"buyer\";i:22;s:6:\"seller\";i:23;s:12:\"pre-delivery\";i:24;s:10:\"structural\";i:25;s:6:\"verify\";i:26;s:9:\"condition\";i:27;s:7:\"concept\";i:28;s:4:\"sign\";i:29;s:12:\"rubber stamp\";i:30;s:4:\"seal\";i:31;s:17:\"magnifyiing glass\";i:32;s:9:\"magnifier\";i:33;s:3:\"job\";i:34;s:10:\"conceptual\";i:35;s:15:\"3d illustration\";}}}');
INSERT INTO `wp_postmeta` VALUES (1206,1962,'_edit_lock','1556677304:1');
INSERT INTO `wp_postmeta` VALUES (1207,1963,'_wp_attached_file','2019/05/home-magnify-glass.jpeg');
INSERT INTO `wp_postmeta` VALUES (1208,1963,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:7360;s:6:\"height\";i:4912;s:4:\"file\";s:31:\"2019/05/home-magnify-glass.jpeg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"home-magnify-glass-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"home-magnify-glass-300x200.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"home-magnify-glass-768x513.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:32:\"home-magnify-glass-1024x683.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"bannerLogo\";a:4:{s:4:\"file\";s:31:\"home-magnify-glass-600x143.jpeg\";s:5:\"width\";i:600;s:6:\"height\";i:143;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"pageBanner\";a:4:{s:4:\"file\";s:32:\"home-magnify-glass-1500x350.jpeg\";s:5:\"width\";i:1500;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"resourceImage\";a:4:{s:4:\"file\";s:33:\"home-magnify-glass-1600x1066.jpeg\";s:5:\"width\";i:1600;s:6:\"height\";i:1066;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:2:\"16\";s:6:\"credit\";s:34:\"PR Image Factory - stock.adobe.com\";s:6:\"camera\";s:11:\"NIKON D800E\";s:7:\"caption\";s:77:\"paper house and key with Magnifying Glass, House hunting on wooden background\";s:17:\"created_timestamp\";s:10:\"1447928363\";s:9:\"copyright\";s:36:\"©PR Image Factory - stock.adobe.com\";s:12:\"focal_length\";s:2:\"70\";s:3:\"iso\";s:3:\"125\";s:13:\"shutter_speed\";s:5:\"0.005\";s:5:\"title\";s:56:\"paper house and key with Magnifying Glass, House hunting\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:82:{i:0;s:9:\"Analyzing\";i:1;s:10:\"Copy Space\";i:2;s:19:\"Housing Development\";i:3;s:9:\"Magnifier\";i:4;s:6:\"Modern\";i:5;s:8:\"Scrutiny\";i:6;s:9:\"Searching\";i:7;s:4:\"Wood\";i:8;s:13:\"architectural\";i:9;s:12:\"architecture\";i:10;s:10:\"background\";i:11;s:7:\"concept\";i:12;s:4:\"desk\";i:13;s:7:\"enlarge\";i:14;s:11:\"enlargement\";i:15;s:6:\"estate\";i:16;s:7:\"examine\";i:17;s:9:\"examining\";i:18;s:5:\"glass\";i:19;s:4:\"home\";i:20;s:5:\"house\";i:21;s:7:\"housing\";i:22;s:7:\"hunting\";i:23;s:10:\"inspection\";i:24;s:9:\"inspector\";i:25;s:8:\"isolated\";i:26;s:3:\"key\";i:27;s:4:\"look\";i:28;s:7:\"looking\";i:29;s:7:\"magnify\";i:30;s:10:\"magnifying\";i:31;s:6:\"object\";i:32;s:5:\"paper\";i:33;s:8:\"renovate\";i:34;s:11:\"residential\";i:35;s:4:\"sale\";i:36;s:9:\"structure\";i:37;s:5:\"table\";i:38;s:5:\"white\";i:39;s:6:\"wooden\";i:40;s:4:\"zoom\";i:41;s:9:\"analyzing\";i:42;s:10:\"copy space\";i:43;s:19:\"housing development\";i:44;s:9:\"magnifier\";i:45;s:6:\"modern\";i:46;s:8:\"scrutiny\";i:47;s:9:\"searching\";i:48;s:4:\"wood\";i:49;s:13:\"architectural\";i:50;s:12:\"architecture\";i:51;s:10:\"background\";i:52;s:7:\"concept\";i:53;s:4:\"desk\";i:54;s:7:\"enlarge\";i:55;s:11:\"enlargement\";i:56;s:6:\"estate\";i:57;s:7:\"examine\";i:58;s:9:\"examining\";i:59;s:5:\"glass\";i:60;s:4:\"home\";i:61;s:5:\"house\";i:62;s:7:\"housing\";i:63;s:7:\"hunting\";i:64;s:10:\"inspection\";i:65;s:9:\"inspector\";i:66;s:8:\"isolated\";i:67;s:3:\"key\";i:68;s:4:\"look\";i:69;s:7:\"looking\";i:70;s:7:\"magnify\";i:71;s:10:\"magnifying\";i:72;s:6:\"object\";i:73;s:5:\"paper\";i:74;s:8:\"renovate\";i:75;s:11:\"residential\";i:76;s:4:\"sale\";i:77;s:9:\"structure\";i:78;s:5:\"table\";i:79;s:5:\"white\";i:80;s:6:\"wooden\";i:81;s:4:\"zoom\";}}}');
INSERT INTO `wp_postmeta` VALUES (1211,1962,'_thumbnail_id','1963');
INSERT INTO `wp_postmeta` VALUES (1212,1962,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (1215,1962,'_yoast_wpseo_primary_category','194');
INSERT INTO `wp_postmeta` VALUES (1216,1962,'_yoast_wpseo_content_score','60');
INSERT INTO `wp_postmeta` VALUES (1217,1965,'_edit_lock','1556736973:1');
INSERT INTO `wp_postmeta` VALUES (1220,1965,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (1223,1965,'_yoast_wpseo_primary_category','195');
INSERT INTO `wp_postmeta` VALUES (1224,1965,'_yoast_wpseo_content_score','30');
INSERT INTO `wp_postmeta` VALUES (1270,1979,'_wp_attached_file','2019/05/cutout-home-check-blurred-home.jpeg');
INSERT INTO `wp_postmeta` VALUES (1271,1979,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:5472;s:6:\"height\";i:3224;s:4:\"file\";s:43:\"2019/05/cutout-home-check-blurred-home.jpeg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:43:\"cutout-home-check-blurred-home-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:43:\"cutout-home-check-blurred-home-300x177.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:177;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:43:\"cutout-home-check-blurred-home-768x452.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:452;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:44:\"cutout-home-check-blurred-home-1024x603.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:603;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"bannerLogo\";a:4:{s:4:\"file\";s:43:\"cutout-home-check-blurred-home-600x143.jpeg\";s:5:\"width\";i:600;s:6:\"height\";i:143;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"pageBanner\";a:4:{s:4:\"file\";s:44:\"cutout-home-check-blurred-home-1500x350.jpeg\";s:5:\"width\";i:1500;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"resourceImage\";a:4:{s:4:\"file\";s:45:\"cutout-home-check-blurred-home-1600x1066.jpeg\";s:5:\"width\";i:1600;s:6:\"height\";i:1066;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"2.8\";s:6:\"credit\";s:27:\"jeffy1139 - stock.adobe.com\";s:6:\"camera\";s:11:\"DSC-RX100M4\";s:7:\"caption\";s:42:\"Hand holding brown paper , Home inspection\";s:17:\"created_timestamp\";s:10:\"1494083336\";s:9:\"copyright\";s:29:\"©jeffy1139 - stock.adobe.com\";s:12:\"focal_length\";s:3:\"8.8\";s:3:\"iso\";s:2:\"80\";s:13:\"shutter_speed\";s:8:\"0.003125\";s:5:\"title\";s:42:\"Hand holding brown paper , Home inspection\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:60:{i:0;s:5:\"house\";i:1;s:4:\"home\";i:2;s:5:\"check\";i:3;s:6:\"estate\";i:4;s:6:\"survey\";i:5;s:4:\"real\";i:6;s:8:\"property\";i:7;s:4:\"loan\";i:8;s:9:\"appraisal\";i:9;s:9:\"inspector\";i:10;s:12:\"construction\";i:11;s:4:\"icon\";i:12;s:8:\"business\";i:13;s:10:\"inspection\";i:14;s:8:\"building\";i:15;s:7:\"concept\";i:16;s:5:\"green\";i:17;s:4:\"sign\";i:18;s:12:\"architecture\";i:19;s:4:\"mark\";i:20;s:6:\"person\";i:21;s:6:\"symbol\";i:22;s:4:\"hand\";i:23;s:8:\"document\";i:24;s:7:\"inspect\";i:25;s:10:\"background\";i:26;s:9:\"financial\";i:27;s:6:\"choice\";i:28;s:7:\"finance\";i:29;s:9:\"agreement\";i:30;s:5:\"house\";i:31;s:4:\"home\";i:32;s:5:\"check\";i:33;s:6:\"estate\";i:34;s:6:\"survey\";i:35;s:4:\"real\";i:36;s:8:\"property\";i:37;s:4:\"loan\";i:38;s:9:\"appraisal\";i:39;s:9:\"inspector\";i:40;s:12:\"construction\";i:41;s:4:\"icon\";i:42;s:8:\"business\";i:43;s:10:\"inspection\";i:44;s:8:\"building\";i:45;s:7:\"concept\";i:46;s:5:\"green\";i:47;s:4:\"sign\";i:48;s:12:\"architecture\";i:49;s:4:\"mark\";i:50;s:6:\"person\";i:51;s:6:\"symbol\";i:52;s:4:\"hand\";i:53;s:8:\"document\";i:54;s:7:\"inspect\";i:55;s:10:\"background\";i:56;s:9:\"financial\";i:57;s:6:\"choice\";i:58;s:7:\"finance\";i:59;s:9:\"agreement\";}}}');
INSERT INTO `wp_postmeta` VALUES (1274,1965,'_thumbnail_id','1979');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=1985 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (3,1,'2019-04-15 17:11:06','2019-04-15 17:11:06','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://city-home-inspections.local.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->','Privacy Policy','','draft','closed','open','','privacy-policy','','','2019-04-15 17:11:06','2019-04-15 17:11:06','',0,'http://city-home-inspections.local/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (701,1,'2011-05-20 18:49:43','2011-05-21 01:49:43','Use this static Page to test the Theme\'s handling of the Front Page template file.\n\nThis is the Front Page content. Use this static Page to test the Front Page output of the Theme. The Theme should properly handle both Blog Posts Index as Front Page and static Page as Front Page.\n\nIf the site is set to display the Blog Posts Index as the Front Page, then this text should not be visible. If the site is set to display a static Page as the Front Page, then this text may or may not be visible. If the Theme does not include a front-page.php template file, then this text should appear on the Front Page when set to display a static Page. If the Theme does include a front-page.php template file, then this text may or may not appear.','Start Here','','publish','open','closed','','start-here','','','2019-04-27 05:01:18','2019-04-27 05:01:18','',0,'https://wpthemetestdata.wordpress.com/?page_id=701',0,'page','',0);
INSERT INTO `wp_posts` VALUES (703,1,'2011-05-20 18:51:43','2011-05-20 18:51:43','Use this static Page to test the Theme\'s handling of the Blog Posts Index page. If the site is set to display a static Page on the Front Page, and this Page is set to display the Blog Posts Index, then this text should not appear. The title might, so make sure the theme is not supplying a hard-coded title for the Blog Post Index.','Resources','','publish','open','closed','','resources','','','2019-04-24 16:10:27','2019-04-24 16:10:27','',0,'https://wpthemetestdata.wordpress.com/?page_id=703',0,'page','',0);
INSERT INTO `wp_posts` VALUES (762,1,'2011-07-15 14:41:45','2011-07-15 21:41:45','Public domain via https://www.burningwell.org/gallery2/v/Objects/dsc20051220_160808_102.jpg.html','Antique Farm Machinery','Antique farm machinery, Mount Barker Museum, Western Australia','inherit','open','closed','','dsc20051220_160808_102','','','2011-07-15 14:41:45','2011-07-15 21:41:45','',0,'http://city-home-inspections.local/wp-content/uploads/2011/07/dsc20051220_160808_102.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (1726,1,'2019-04-15 18:52:00','2019-04-15 18:52:00','','Pages','','publish','closed','closed','','pages','','','2019-04-15 18:52:00','2019-04-15 18:52:00','',0,'http://city-home-inspections.local/pages/',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (1727,1,'2019-04-15 18:52:00','2019-04-15 18:52:00','','Categories','','publish','closed','closed','','categories','','','2019-04-15 18:52:00','2019-04-15 18:52:00','',0,'http://city-home-inspections.local/categories/',10,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (1729,1,'2019-04-15 18:52:00','2019-04-15 18:52:00','Posts in this category test post formats.','','','publish','closed','closed','','1729','','','2019-04-15 18:52:00','2019-04-15 18:52:00','',0,'http://city-home-inspections.local/',24,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (1731,1,'2019-04-15 18:52:00','2019-04-15 18:52:00','','Depth','','publish','closed','closed','','depth','','','2019-04-15 18:52:00','2019-04-15 18:52:00','',0,'http://city-home-inspections.local/depth/',29,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (1732,1,'2019-04-15 18:52:00','2019-04-15 18:52:00','','Level 01','','publish','closed','closed','','level-01','','','2019-04-15 18:52:00','2019-04-15 18:52:00','',0,'http://city-home-inspections.local/level-01/',30,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (1733,1,'2019-04-15 18:52:00','2019-04-15 18:52:00','','Level 02','','publish','closed','closed','','level-02','','','2019-04-15 18:52:00','2019-04-15 18:52:00','',0,'http://city-home-inspections.local/level-02/',31,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (1734,1,'2019-04-15 18:52:00','2019-04-15 18:52:00','','Level 03','','publish','closed','closed','','level-03','','','2019-04-15 18:52:00','2019-04-15 18:52:00','',0,'http://city-home-inspections.local/level-03/',32,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (1735,1,'2019-04-15 18:52:00','2019-04-15 18:52:00','','Level 04','','publish','closed','closed','','level-04','','','2019-04-15 18:52:00','2019-04-15 18:52:00','',0,'http://city-home-inspections.local/level-04/',33,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (1736,1,'2019-04-15 18:52:00','2019-04-15 18:52:00','','Level 05','','publish','closed','closed','','level-05','','','2019-04-15 18:52:00','2019-04-15 18:52:00','',0,'http://city-home-inspections.local/level-05/',34,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (1737,1,'2019-04-15 18:52:00','2019-04-15 18:52:00','','Level 06','','publish','closed','closed','','level-06','','','2019-04-15 18:52:00','2019-04-15 18:52:00','',0,'http://city-home-inspections.local/level-06/',35,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (1738,1,'2019-04-15 18:52:00','2019-04-15 18:52:00','','Level 07','','publish','closed','closed','','level-07','','','2019-04-15 18:52:00','2019-04-15 18:52:00','',0,'http://city-home-inspections.local/level-07/',36,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (1739,1,'2019-04-15 18:52:00','2019-04-15 18:52:00','','Level 08','','publish','closed','closed','','level-08','','','2019-04-15 18:52:00','2019-04-15 18:52:00','',0,'http://city-home-inspections.local/level-08/',37,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (1740,1,'2019-04-15 18:52:00','2019-04-15 18:52:00','','Level 09','','publish','closed','closed','','level-09','','','2019-04-15 18:52:00','2019-04-15 18:52:00','',0,'http://city-home-inspections.local/level-09/',38,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (1741,1,'2019-04-15 18:52:00','2019-04-15 18:52:00','','Level 10','','publish','closed','closed','','level-10','','','2019-04-15 18:52:00','2019-04-15 18:52:00','',0,'http://city-home-inspections.local/level-10/',39,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (1742,1,'2019-04-15 18:52:00','2019-04-15 18:52:00','','Advanced','','publish','closed','closed','','advanced','','','2019-04-15 18:52:00','2019-04-15 18:52:00','',0,'http://city-home-inspections.local/advanced/',40,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (1743,1,'2019-04-15 18:52:00','2019-04-15 18:52:00','Custom Menu Description','Menu Description','','publish','closed','closed','','menu-description','','','2019-04-15 18:52:00','2019-04-15 18:52:00','',0,'http://city-home-inspections.local/menu-description/',44,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (1744,1,'2019-04-15 18:52:01','2019-04-15 18:52:01','','Menu Title Attribute','Custom Title Attribute','publish','closed','closed','','menu-title-attribute','','','2019-04-15 18:52:01','2019-04-15 18:52:01','',0,'http://city-home-inspections.local/menu-title-attribute/',41,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (1745,1,'2019-04-15 18:52:01','2019-04-15 18:52:01','','Menu CSS Class','','publish','closed','closed','','menu-css-class','','','2019-04-15 18:52:01','2019-04-15 18:52:01','',0,'http://city-home-inspections.local/menu-css-class/',42,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (1746,1,'2019-04-15 18:52:01','2019-04-15 18:52:01','','New Window / Tab','','publish','closed','closed','','new-window-tab','','','2019-04-15 18:52:01','2019-04-15 18:52:01','',0,'http://city-home-inspections.local/new-window-tab/',43,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (1747,1,'2019-04-15 18:52:01','2019-04-15 18:52:01','','twitter.com','','publish','closed','closed','','twitter-com','','','2019-04-15 18:52:01','2019-04-15 18:52:01','',0,'http://city-home-inspections.local/twitter-com/',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (1748,1,'2019-04-15 18:52:01','2019-04-15 18:52:01','','facebook.com','','publish','closed','closed','','facebook-com','','','2019-04-15 18:52:01','2019-04-15 18:52:01','',0,'http://city-home-inspections.local/facebook-com/',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (1749,1,'2019-04-15 18:52:01','2019-04-15 18:52:01','','github.com','','publish','closed','closed','','github-com','','','2019-04-15 18:52:01','2019-04-15 18:52:01','',0,'http://city-home-inspections.local/github-com/',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (1750,1,'2019-04-15 18:52:01','2019-04-15 18:52:01','','instagram.com','','publish','closed','closed','','instagram-com','','','2019-04-15 18:52:01','2019-04-15 18:52:01','',0,'http://city-home-inspections.local/instagram-com/',5,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (1751,1,'2019-04-15 18:52:01','2019-04-15 18:52:01','','linkedin.com','','publish','closed','closed','','linkedin-com','','','2019-04-15 18:52:01','2019-04-15 18:52:01','',0,'http://city-home-inspections.local/linkedin-com/',4,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (1752,1,'2019-04-15 18:52:01','2019-04-15 18:52:01',' ','','','publish','closed','closed','','1752','','','2019-04-15 18:52:01','2019-04-15 18:52:01','',0,'http://city-home-inspections.local/',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (1758,1,'2019-04-15 18:52:01','2019-04-15 18:52:01',' ','','','publish','closed','closed','','1758','','','2019-04-15 18:52:01','2019-04-15 18:52:01','',0,'http://city-home-inspections.local/',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (1759,1,'2019-04-15 18:52:01','2019-04-15 18:52:01',' ','','','publish','closed','closed','','1759','','','2019-04-15 18:52:01','2019-04-15 18:52:01','',0,'http://city-home-inspections.local/',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (1808,1,'2019-04-16 19:22:47','2019-04-16 19:22:47','','city-home-inspections-logo','','inherit','open','closed','','city-home-inspections-logo','','','2019-04-16 19:22:47','2019-04-16 19:22:47','',0,'http://city-home-inspections.local/wp-content/uploads/2019/04/city-home-inspections-logo.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (1809,1,'2019-04-16 20:35:59','2019-04-16 20:35:59','<!-- wp:heading {\"level\":3,\"align\":\"center\"} -->\n<h3 style=\"text-align:center\"><i class=\"icon icon-shield\"></i>&nbsp;&nbsp;General</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p style=\"text-align:center\">We inspect all general areas including driveways, walkways, garages for moisture damage, mold and pest infiltration.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:separator -->\n<hr class=\"wp-block-separator\"/>\n<!-- /wp:separator -->\n\n<!-- wp:heading {\"level\":3,\"align\":\"center\"} -->\n<h3 style=\"text-align:center\"><i class=\"icon icon-home-alt\"></i>&nbsp;&nbsp;Property and Site</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p style=\"text-align:center\">We inspect the home’s exterior, grounds and associated structures adjacent to the home.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:separator -->\n<hr class=\"wp-block-separator\"/>\n<!-- /wp:separator -->\n\n<!-- wp:heading {\"level\":3,\"align\":\"center\"} -->\n<h3 style=\"text-align:center\"><i class=\"icon icon-bricks\"></i>&nbsp;&nbsp;Structure and Foundation</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p style=\"text-align:center\">From the foundation to the framing, we conduct an inspection of visible components for signs of major defects or non-performance.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:separator -->\n<hr class=\"wp-block-separator\"/>\n<!-- /wp:separator -->\n\n<!-- wp:heading {\"level\":3,\"align\":\"center\"} -->\n<h3 style=\"text-align:center\"><i class=\"icon icon-bolt\"></i>&nbsp;&nbsp;Electrical Systems</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p style=\"text-align:center\">Inspectors conduct an examination of the service entrance, main disconnects, distribution panel, breakers, fuses and a representative number of receptacles.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:separator -->\n<hr class=\"wp-block-separator\"/>\n<!-- /wp:separator -->\n\n<!-- wp:heading {\"level\":3,\"align\":\"center\"} -->\n<h3 style=\"text-align:center\"><i class=\"icon icon-house-flood\"></i>&nbsp;&nbsp;Plumbing Systems</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p style=\"text-align:center\">We’ll inspect your plumbing fixtures and fittings and perform functional flow and functional drainage tests to ensure that the system is performing properly.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:separator -->\n<hr class=\"wp-block-separator\"/>\n<!-- /wp:separator -->\n\n<!-- wp:heading {\"level\":3,\"align\":\"center\"} -->\n<h3 style=\"text-align:center\"><i class=\"icon icon-roof\"></i>&nbsp;&nbsp;Roofs and Attics</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p style=\"text-align:center\">We inspect shingles, flashings and skylights to determine their condition.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:separator -->\n<hr class=\"wp-block-separator\"/>\n<!-- /wp:separator -->\n\n<!-- wp:heading {\"level\":3,\"align\":\"center\"} -->\n<h3 style=\"text-align:center\"><i class=\"icon icon-thermometer\"></i>&nbsp;&nbsp;Heating, Ventilation and Air Conditioning</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p style=\"text-align:center\">We’ll inspect the physical condition of all systems and perform operational checks when it is safe to do so dependent upon season and outside temperature.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:separator -->\n<hr class=\"wp-block-separator\"/>\n<!-- /wp:separator -->\n\n<!-- wp:heading {\"level\":3,\"align\":\"center\"} -->\n<h3 style=\"text-align:center\"><i class=\"icon icon-user\"></i>&nbsp;&nbsp;Expert Inspector</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p style=\"text-align:center\">Our expert inspector has over 20 years of home inspection experience.</p>\n<!-- /wp:paragraph -->','What\'s Included','','publish','closed','closed','','whats-included','','','2019-04-26 21:29:02','2019-04-26 21:29:02','',0,'http://city-home-inspections.local/?page_id=1809',0,'page','',0);
INSERT INTO `wp_posts` VALUES (1811,1,'2019-04-16 20:38:02','2019-04-16 20:38:02','','What\'s Included','','publish','closed','closed','','whats-included','','','2019-04-17 02:38:55','2019-04-17 02:38:55','',0,'http://city-home-inspections.local/?p=1811',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (1812,1,'2019-04-16 20:38:23','2019-04-16 20:38:23','<!-- wp:image {\"id\":1927,\"align\":\"left\",\"width\":180,\"height\":218} -->\n<div class=\"wp-block-image\"><figure class=\"alignleft is-resized\"><img src=\"http://city-home-inspections.local/wp-content/uploads/2019/04/jameel-dawan.jpg\" alt=\"Jameel Dawan the founder of City Home Inspections\" class=\"wp-image-1927\" width=\"180\" height=\"218\"/><figcaption>Jameel Dawan the founder of City Home Inspections</figcaption></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>City Home Inspections -Trusted by thousands in the Southeastern Wisconsin area. Veteran owned, licensed, insured and bonded serving thousands in Milwaukee, Waukesha, Racine and all of southeast Wisconsin since 1998. <br>We conduct pre-purchase home &amp; property inspections, radon testing, lead in paint &amp; water testing, residential rehab advisor, and public speaking.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>City Home Inspections is owned and operated by Jameel Dawan.&nbsp; Jameel is licensed by the State of Wisconsin, insured and bonded.&nbsp; He is also a member of WAHI (Wisconsin Association of Home Inspectors), BBB (Better Business Bureau Wisconsin) and ASHI (The American Society of Home Inspectors).</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The purchase of a home is one of the most significant investments for most people.&nbsp; A small investment in a high quality pre-purchase home inspection can put home buyers at ease and extend their investments well into the future</p>\n<!-- /wp:paragraph -->','Our Story','','publish','closed','closed','','our-story','','','2019-04-24 19:52:01','2019-04-24 19:52:01','',0,'http://city-home-inspections.local/?page_id=1812',0,'page','',0);
INSERT INTO `wp_posts` VALUES (1814,1,'2019-04-16 20:39:18','2019-04-16 20:39:18',' ','','','publish','closed','closed','','1814','','','2019-04-17 02:38:55','2019-04-17 02:38:55','',0,'http://city-home-inspections.local/?p=1814',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (1837,1,'2019-04-16 20:46:36','2019-04-16 20:46:36','','Start Here','','publish','closed','closed','','1837','','','2019-04-17 02:38:55','2019-04-17 02:38:55','',0,'http://city-home-inspections.local/?p=1837',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (1838,1,'2019-04-17 03:12:59','2019-04-17 03:12:59','','favicon','','inherit','open','closed','','favicon','','','2019-04-17 03:12:59','2019-04-17 03:12:59','',0,'http://city-home-inspections.local/wp-content/uploads/2019/04/favicon.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (1842,1,'2019-04-17 20:16:33','2019-04-17 20:16:33','City Home Inspections Logo','City Home Inspections Logo','City Home Inspections Logo','inherit','open','closed','','city-home-inspections-logo-2','','','2019-04-17 20:16:56','2019-04-17 20:16:56','',0,'http://city-home-inspections.local/wp-content/uploads/2019/04/city-home-inspections-logo-1.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (1847,1,'2019-04-19 15:49:49','2019-04-19 15:49:49','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"slide\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Slides','slides','publish','closed','closed','','group_5cb9ec45635b9','','','2019-04-22 14:06:29','2019-04-22 14:06:29','',0,'http://city-home-inspections.local/?post_type=acf-field-group&#038;p=1847',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (1848,1,'2019-04-19 15:49:49','2019-04-19 15:49:49','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:29:\"Enter the title of your slide\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Slide Title','slide_title','publish','closed','closed','','field_5cb9ed09255e8','','','2019-04-19 15:49:49','2019-04-19 15:49:49','',1847,'http://city-home-inspections.local/?post_type=acf-field&p=1848',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (1849,1,'2019-04-19 15:49:49','2019-04-19 15:49:49','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:42:\"Please enter the description of your slide\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Slide Description','slide_description','publish','closed','closed','','field_5cb9ed3c255e9','','','2019-04-19 15:49:49','2019-04-19 15:49:49','',1847,'http://city-home-inspections.local/?post_type=acf-field&p=1849',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (1851,1,'2019-04-19 15:49:49','2019-04-19 15:49:49','a:6:{s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";}','Slide Link','slide_link','publish','closed','closed','','field_5cb9edee255eb','','','2019-04-22 14:06:29','2019-04-22 14:06:29','',1847,'http://city-home-inspections.local/?post_type=acf-field&#038;p=1851',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (1852,1,'2019-04-19 15:57:30','2019-04-19 15:57:30','','Pre-Purchase Home Inspections','','publish','closed','closed','','make-your-move-confidently','','','2019-05-01 19:00:38','2019-05-01 19:00:38','',0,'http://city-home-inspections.local/?post_type=slide&#038;p=1852',0,'slide','',0);
INSERT INTO `wp_posts` VALUES (1853,1,'2019-04-19 15:56:13','2019-04-19 15:56:13','','city-home-inspections-truck','','inherit','open','closed','','city-home-inspections-truck','','','2019-04-19 15:56:13','2019-04-19 15:56:13','',1852,'http://city-home-inspections.local/wp-content/uploads/2019/04/city-home-inspections-truck.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (1854,1,'2019-04-19 16:44:22','2019-04-19 16:44:22','','Make Your Move Confidently','','publish','closed','closed','','move-confidently','','','2019-04-30 04:03:13','2019-04-30 04:03:13','',0,'http://city-home-inspections.local/?post_type=slide&#038;p=1854',0,'slide','',0);
INSERT INTO `wp_posts` VALUES (1858,1,'2019-04-21 21:24:29','2019-04-21 21:24:29','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:3:\"701\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Banner Logo','banner-logo','publish','closed','closed','','group_5cbcdf2297b35','','','2019-04-22 02:05:03','2019-04-22 02:05:03','',0,'http://city-home-inspections.local/?post_type=acf-field-group&#038;p=1858',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (1859,1,'2019-04-21 21:24:29','2019-04-21 21:24:29','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:25:\"Please upload banner logo\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:10:\"bannerLogo\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:14:\"png, jpg, jpeg\";}','Banner Logo','banner_logo','publish','closed','closed','','field_5cbcdf2b270a2','','','2019-04-21 22:01:29','2019-04-21 22:01:29','',1858,'http://city-home-inspections.local/?post_type=acf-field&#038;p=1859',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (1860,1,'2019-04-21 21:50:46','2019-04-21 21:50:46','City Home Inspections Logo Large','City Home Inspections Logo Large','City Home Inspections Logo Large','inherit','open','closed','','city-home-inspections-logo-large','','','2019-04-21 21:51:51','2019-04-21 21:51:51','',701,'http://city-home-inspections.local/wp-content/uploads/2019/04/city-home-inspections-logo-large.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (1927,1,'2019-04-24 18:13:57','2019-04-24 18:13:57','Jameel Dawan the founder of City Home Inspections','Jameel Dawan','Jameel Dawan the founder of City Home Inspections','inherit','open','closed','','jameel-dawan','','','2019-04-24 18:16:40','2019-04-24 18:16:40','',1812,'http://city-home-inspections.local/wp-content/uploads/2019/04/jameel-dawan.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (1947,1,'2019-04-29 04:18:47','2019-04-29 04:18:47','<!-- wp:paragraph -->\n<p>[contact-form-7 id=\"1953\" title=\"Contact form 1\"]</p>\n<!-- /wp:paragraph -->','Request Inspection','','publish','closed','closed','','request-inspection','','','2019-04-30 04:03:59','2019-04-30 04:03:59','',0,'http://city-home-inspections.local/?page_id=1947',0,'page','',0);
INSERT INTO `wp_posts` VALUES (1952,1,'2019-04-29 18:08:20','2019-04-29 18:08:20','{\"id\":\"1952\",\"field_id\":5,\"fields\":{\"3\":{\"id\":\"3\",\"type\":\"text\",\"label\":\"Full Name\",\"description\":\"\",\"required\":\"1\",\"size\":\"medium\",\"placeholder\":\"\",\"default_value\":\"\",\"css\":\"wpforms-one-third wpforms-first\",\"input_mask\":\"\"},\"2\":{\"id\":\"2\",\"type\":\"text\",\"label\":\"Email Address\",\"description\":\"\",\"required\":\"1\",\"size\":\"medium\",\"placeholder\":\"\",\"default_value\":\"\",\"css\":\"wpforms-one-third\",\"input_mask\":\"\"},\"1\":{\"id\":\"1\",\"type\":\"text\",\"label\":\"Phone Number\",\"description\":\"\",\"required\":\"1\",\"size\":\"medium\",\"placeholder\":\"\",\"default_value\":\"\",\"css\":\"wpforms-one-third\",\"input_mask\":\"\"},\"4\":{\"id\":\"4\",\"type\":\"text\",\"label\":\"Single Line Text\",\"description\":\"\",\"size\":\"medium\",\"placeholder\":\"\",\"default_value\":\"\",\"css\":\"\",\"input_mask\":\"\"}},\"settings\":{\"form_title\":\"Request Inspection\",\"form_desc\":\"\",\"form_class\":\"\",\"submit_text\":\"Submit\",\"submit_text_processing\":\"Sending...\",\"submit_class\":\"\",\"honeypot\":\"1\",\"notification_enable\":\"1\",\"notifications\":{\"1\":{\"email\":\"{admin_email}\",\"subject\":\"New Request Inspection Entry\",\"sender_name\":\"City Home Inspections\",\"sender_address\":\"{admin_email}\",\"replyto\":\"\",\"message\":\"{all_fields}\"}},\"confirmations\":{\"1\":{\"type\":\"message\",\"message\":\"<p>Thanks for contacting us! We will be in touch with you shortly.<\\/p>\",\"message_scroll\":\"1\",\"page\":\"1812\",\"redirect\":\"\"}}},\"meta\":{\"template\":\"blank\"}}','Request Inspection','','publish','closed','closed','','request-inspection','','','2019-04-29 18:17:51','2019-04-29 18:17:51','',0,'http://city-home-inspections.local/?post_type=wpforms&#038;p=1952',0,'wpforms','',0);
INSERT INTO `wp_posts` VALUES (1953,1,'2019-04-29 18:18:50','2019-04-29 18:18:50','<h4>Contact Information</h4>\r\n<div class=\"modal__inner-form--name\">\r\n[text* fullname  class:modal__inner-form--item placeholder \"Full Name\"]\r\n</div>\r\n<div class=\"modal__inner-form--email\">\r\n[text* email class:modal__inner-form--item placeholder \"Email\"]\r\n</div>\r\n<div class=\"modal__inner-form--number\">\r\n[text* number  class:modal__inner-form--item placeholder \"Number\"]\r\n</div>\r\n\r\n<h4>Inspection Address</h4>\r\n<div class=\"modal__inner-form--address\">\r\n[text address class:modal__inner-form--item placeholder \"Address\"]\r\n</div>\r\n<div class=\"modal__inner-form--city-zip\">\r\n[text city class:modal__inner-form--item placeholder \"City\"][text zipcode class:modal__inner-form--item placeholder \"Zip Code\"]\r\n</div>\r\n\r\n<h4><label for=\"date\">Desired Inspection Date</label></h4>\r\n<div class=\"modal__inner-form--date\">\r\n[text date class:modal__inner-form--item placeholder \"mm/dd/yy\"]\r\n</div>\r\n<div class=\"modal__inner-form--time\">\r\n[select time class:modal__inner-form--item \"Morning\" \"Noon\" \"Afternoon\"]\r\n</div>\r\n\r\n<h4><label for=\"type\">Type of Inspection</label></h4>\r\n<div class=\"modal__inner-form--type\">\r\n[select type class:modal__inner-form--item \"Home Buyer\" \"Home Seller\"]\r\n</div>\r\n\r\n\r\n[submit class:btn class:btn--green-outline \"Send\"]\n1\nYou have a inspection request from [fullname]\nCity Home Inspections <wordpress@city-home-inspections.local>\njameelevans@live.com\n<html><body>\r\nHello, you have an inspection request from [fullname]<br />\r\n<table rules=\"all\" style=\"border-color: #666;\" cellpadding=\"10\">\'<tr style=\'background: #eee;\'><td><strong>Name:</strong> </td><td>[fullname]</td></tr>\r\n<tr><td><strong>Number:</strong> </td><td>[number]</td></tr>\r\n<tr><td><strong>Email:</strong> </td><td>[email]</td></tr>\r\n<tr><td><strong>Inspection Type:</strong> </td><td>[type]</td></tr>\r\n<tr><td><strong>Inspection Address:</strong> </td><td>[address] [city] [zipcode]</td></tr>\r\n<tr><td><strong>Desired Inspection Date:</strong> </td><td>[date]</td></tr>\r\n<tr><td><strong>Desired Time of Day:</strong> </td><td>[time]</td></tr>\r\n</body></html>\nReply-To: jameelevans@live.com\n\n1\n\n\nCity Home Inspections no-reply\nCity Home Inspections <wordpress@city-home-inspections.local>\n[email]\nMessage Body:\r\nCity Home Inspections has received your request. We\'ll be in contact shortly. \r\n\r\n-- \r\nThis e-mail was sent from a contact form on City Home Inspections (http://city-home-inspections.local)\nReply-To: dev-email@flywheel.local\n\n\n\nYour request was sent. We\'ll be in contact shortly.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.','Contact form 1','','publish','closed','closed','','contact-form-1','','','2019-04-30 03:55:10','2019-04-30 03:55:10','',0,'http://city-home-inspections.local/?post_type=wpcf7_contact_form&#038;p=1953',0,'wpcf7_contact_form','',0);
INSERT INTO `wp_posts` VALUES (1957,1,'2019-04-30 21:56:36','2019-04-30 21:56:36','<!-- wp:paragraph -->\n<p>What Does a Home Inspection Entail? This is arguably one of most asked questions about home inspections. There are four basic steps to the home inspection.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>First, the inspector arrives at the property, makes general introductions and both explains what is going to take place and asks about any special questions or requests.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Next, while the inspection agreement is being reviewed, the inspector will make a quick circuit of the property to size up the scope of the inspection.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Then, there will be an in-depth walk-through inspection with the client. This involves inspecting all visible areas and reviewing all accessible items and areas, including the heating system, central air conditioning system, interior plumbing and electrical systems, the roof, attic space and all visible insulation, the walls, ceilings, floors, doors, windows, basement or crawlspace area, and the foundation and all visible structural components.</p>\n<!-- /wp:paragraph -->','What Does a Home Inspection Entail?','','publish','closed','open','','what-does-a-home-inspection-entail','','','2019-05-01 01:15:38','2019-05-01 01:15:38','',0,'http://city-home-inspections.local/?p=1957',0,'post','',0);
INSERT INTO `wp_posts` VALUES (1958,1,'2019-04-30 21:56:36','2019-04-30 21:56:36','<!-- wp:paragraph -->\n<p>What Does a Home Inspection Entail? This is arguably one of most asked questions about home inspections. There are four basic steps to the home inspection. First, the inspector arrives at the property, makes general introductions and both explains what is going to take place and asks about any special questions or requests. Next, while the inspection agreement is being reviewed, the inspector will make a quick circuit of the property to size up the scope of the inspection. Then, there will be an in-depth walk-through inspection with the client. This involves inspecting all visible areas and reviewing all accessible items and areas, including the heating system, central air conditioning system, interior plumbing and electrical systems, the roof, attic space and all visible insulation, the walls, ceilings, floors, doors, windows, basement or crawlspace area, and the foundation and all visible structural components.</p>\n<!-- /wp:paragraph -->','What Does a Home Inspection Entail?','','inherit','closed','closed','','1957-revision-v1','','','2019-04-30 21:56:36','2019-04-30 21:56:36','',1957,'http://city-home-inspections.local/resources/1957-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (1959,1,'2019-04-30 21:57:36','2019-04-30 21:57:36','<!-- wp:paragraph -->\n<p>What Does a Home Inspection Entail? This is arguably one of most asked questions about home inspections. There are four basic steps to the home inspection.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>First, the inspector arrives at the property, makes general introductions and both explains what is going to take place and asks about any special questions or requests.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Next, while the inspection agreement is being reviewed, the inspector will make a quick circuit of the property to size up the scope of the inspection.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Then, there will be an in-depth walk-through inspection with the client. This involves inspecting all visible areas and reviewing all accessible items and areas, including the heating system, central air conditioning system, interior plumbing and electrical systems, the roof, attic space and all visible insulation, the walls, ceilings, floors, doors, windows, basement or crawlspace area, and the foundation and all visible structural components.</p>\n<!-- /wp:paragraph -->','What Does a Home Inspection Entail?','','inherit','closed','closed','','1957-revision-v1','','','2019-04-30 21:57:36','2019-04-30 21:57:36','',1957,'http://city-home-inspections.local/resources/1957-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (1960,1,'2019-05-01 00:21:11','2019-05-01 00:21:11','','Home inspector, Buyer or Seller Property inspection.','3D illustration of home inspector business card with rubber stamp, magnifier and blueprint','inherit','closed','closed','','home-inspector-buyer-or-seller-property-inspection-2','','','2019-05-01 00:21:11','2019-05-01 00:21:11','',1957,'http://city-home-inspections.local/wp-content/uploads/2019/04/home-inspection-stamp-1.jpeg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (1962,1,'2019-05-01 02:11:36','2019-05-01 02:11:36','<!-- wp:paragraph -->\n<p>An average home inspection will take between 2 and 3 hours, depending on the size of the house. Larger and more complex houses will take longer for the inspector to completely and accurately evaluate. Another factor that may affect the inspection time is the condition of the components at the property. If the house and appliances have not been properly maintained, the inspector may need additional time to explain to the buyer what options they may have to either maintain or replace the item.</p>\n<!-- /wp:paragraph -->','How Long Does a Home Inspection Take?','','publish','closed','open','','how-long-does-a-home-inspection-take','','','2019-05-01 02:11:36','2019-05-01 02:11:36','',0,'http://city-home-inspections.local/?p=1962',0,'post','',0);
INSERT INTO `wp_posts` VALUES (1963,1,'2019-05-01 02:10:33','2019-05-01 02:10:33','','paper house and key with Magnifying Glass, House hunting','paper house and key with Magnifying Glass, House hunting on wooden background','inherit','closed','closed','','paper-house-and-key-with-magnifying-glass-house-hunting','','','2019-05-01 02:10:33','2019-05-01 02:10:33','',1962,'http://city-home-inspections.local/wp-content/uploads/2019/05/home-magnify-glass.jpeg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (1964,1,'2019-05-01 02:11:36','2019-05-01 02:11:36','<!-- wp:paragraph -->\n<p>An average home inspection will take between 2 and 3 hours, depending on the size of the house. Larger and more complex houses will take longer for the inspector to completely and accurately evaluate. Another factor that may affect the inspection time is the condition of the components at the property. If the house and appliances have not been properly maintained, the inspector may need additional time to explain to the buyer what options they may have to either maintain or replace the item.</p>\n<!-- /wp:paragraph -->','How Long Does a Home Inspection Take?','','inherit','closed','closed','','1962-revision-v1','','','2019-05-01 02:11:36','2019-05-01 02:11:36','',1962,'http://city-home-inspections.local/resources/1962-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (1965,1,'2019-05-01 02:25:22','2019-05-01 02:25:22','<!-- wp:paragraph -->\n<p>The purchase of a home is probably one of the single largest investments you will ever make. You should be as informed and educated as you possibly can while considering a home purchase, a home inspection can provide that education. Also, many mortgage lenders, recommend that a home inspection be performed.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>The Home Inspector is Looking Out for Your Best Interest</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>In the whole house buying process the only professional truly looking out for your best interest is an independent home inspector. You do not want an inspector pushed on you by your realtor, such inspectors work more for realtor referrals than home buyers. The realtors are <em>primarily</em>&nbsp;looking out for themselves, because their commissions are on the line. They want the deal to go through smoothly so they can get paid. The bank’s inspector is looking out for the best interest of the bank. You hire the home inspector for the express purpose of giving you an unbiased report of the condition of the house, he gets paid whether you buy the house or not, and an honest inspector is beholden to no realtor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Take Advantage of the Contingency Clause</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>The main purpose of a home inspection is to reveal critical information about the condition of a home and its systems. This makes the buyer aware of safety issues and costs of repairs and maintenance the home may require immediately, and overtime. Purchase agreements contain a contingency clause allowing the buyer to opt out based on unsatisfactory results from a home inspection. If a buyer isn’t comfortable with the findings of the home inspection, it usually presents the only opportunity to back out of the offer without having to forfeit your deposit or more. A good home inspection could save you thousands of dollars and potential legal hassles. Many a disgruntled seller has sued the buyer trying to force them to follow through with the purchase agreement. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Safety</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>A home inspection can report on electrical, structural construction and other safety issues you may not be aware of. As of late mold seems to be a big deal with the banks and if during the bank inspection significant signs of mold are found (usually in a basement or attic), they require the mold to be remediated, which can cost upwards of $5,000 to $10,000 or more. Best to hire a home inspector who is certified in mold testing if needed. Make sure that your home-buying contract states that if such environmental hazards are detected, you have the option to cancel the offer to buy.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Protection</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Home inspections are even more critical if you are buying an “as-is” foreclosed property or short sale. Dwellings that have been boarded often develop hazardous mold problems, which are costly to remedy and pose health concerns. If a home is not properly winterized there could be broken pipes or radiators that are difficult to detect by an untrained eye when the water is turned off.&nbsp; Due to high prices paid for scrap metal in today’s economy, it’s common for home inspectors to find that copper plumbing and other metal has been removed by thieves selling the metal for scrap to recyclers for tens of dollars but causing thousands of dollars in damage.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Negotiating Tool</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong><br></strong>A realtor will tell you the home inspection report presents an opportunity to ask for repairs and/or request a price reduction or credit from the seller. This is for significant conditions reported that you were unaware of prior to the inspection, which can represent hundreds or thousands of dollars. If a radon test (a separate contingency from the home inspection) finds the radon level at 4.0pCi/L or higher most sellers will pay to have a radon mitigation system installed or offer a credit for the work which averages about $1200. Based on the findings of the home inspection report, if needed, your realtor will work with you to re-negotiate in your favor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Deferred Cost Estimates</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong><br></strong>A good home inspector can approximate the installation age of major systems and estimate the remaining service life of the buildings components such as decks, roofs, furnace, water heater, air conditioning and more. This is helpful information in budgeting for future replacement of major components.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Fix-It-Up or Not</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>A lot of homes are listed as fix-er-upers. Experienced home inspectors with construction background will be most qualified to help buyers identify how much work or additional money it will take to get the home into the condition they want or need. If you find it is actually more than you were aware of, this can be your out. Perhaps it is best to keep looking for a more affordable house or one that needs less work.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Valuable Information</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>The good home inspector is a valuable educational resource. They can suggest specific steps and tips on how to maintain the home, which could ultimately save you thousands of dollars in the long term. Our home inspections and reports are very detailed and filled with maintenance recommendations, links to articles and how to information specific to your home.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Impartial Evaluation</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>People will often fall in love with a house based on the style, color, layout, location or something else; and are often completely blind to the issues that can make that dream home a nightmare. I explain to home buyers the important issues, things that are often overlooked during the initial decision to buy.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Avoid Insurance and Mortgage Denials</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Some insurance companies will not insure a home if certain conditions are found. For example it has been my experience in central New York that many insurance companies will not insure a home with 4 or more layers of roofing material and some will not insure a home with 3 or more layers (I’ve inspected homes with up to 8 layers of roofing). Some insurance companies will not insure a home if there is live knob and tube wiring present anywhere on the property and many insurance companies will not insure it if there is knob and tube wiring in the attic that is covered with insulation (fire hazard).</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Likewise with mortgage companies, some will not carry the loan if they determine high cost repairs are needed such as a new roof. Likewise if &nbsp;soon or hazardous probability situations such as visual observation of significant mold or if high level of radon gas, mold or asbestos have been tested in the home.” Qualified home inspectors will let you know what ancillary testing might be warranted and conduct them at same time as their other services and save the home buyer time and money in the long run.”</p>\n<!-- /wp:paragraph -->','10 Reasons Why You Need a Home Inspection','','publish','closed','open','','6-reasons-why-you-absolutely-need-a-home-inspection','','','2019-05-01 17:27:43','2019-05-01 17:27:43','',0,'http://city-home-inspections.local/?p=1965',0,'post','',0);
INSERT INTO `wp_posts` VALUES (1966,1,'2019-05-01 02:25:22','2019-05-01 02:25:22','<!-- wp:paragraph -->\n<p>The purchase of a home is probably one of the single largest investments you will ever make. You should be as informed and educated as you possibly can while considering a home purchase, a home inspection can provide that education. Also, many mortgage lenders, recommend that a home inspection be performed.</p>\n<!-- /wp:paragraph -->','6 Reasons Why You Absolutely Need a Home Inspection','','inherit','closed','closed','','1965-revision-v1','','','2019-05-01 02:25:22','2019-05-01 02:25:22','',1965,'http://city-home-inspections.local/resources/1965-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (1971,1,'2019-05-01 15:54:03','2019-05-01 15:54:03','<!-- wp:paragraph -->\n<p>The purchase of a home is probably one of the single largest investments you will ever make. You should be as informed and educated as you possibly can while considering a home purchase, a home inspection can provide that education. Also, many mortgage lenders, recommend that a home inspection be performed.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Leaks</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>A new roof can cost $10,000 or more to replace and is one of the more expensive maintenance costs of owning a home. The inspector will look at the roof and identify the roof’s age in order to decide whether it is in proper working order. The report will point out any problems with the roof.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Safety</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>An important part of the home inspection is to make sure the home is safe. The inspector will look at the electrical system and make sure it is in proper working order. You don’t want to live in a home with an unsafe electrical system. If you choose to get a radon test, you will understand if the radon levels in the house are at safe levels. Radon is an odorless gas that can cause lung disease.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2><strong>Don’t Judge a Home by Its Facade</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Especially for those buying newer construction, a home inspection may feel like a waste of money. No matter the age of the home, there can be costly troubles unknown to the average buyer. Problems with wiring, plumbing or structural issues may not be visible during a showing and you’ll want to get an expert opinion. Even before you get to the interior, you can do your own preliminary inspection. Simply walk around the home’s exterior and look for&nbsp;<a href=\"https://www.veteransunited.com/realestate/how-to-scout-a-homes-exterior-for-4-va-appraisal-problems/\">these four potential problems</a>.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2><strong>Save Money</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Home inspection costs vary but a good rule of thumb would be to expect to pay&nbsp;from $300 to $500 depending on size and age of the home. That’s a good sum, but perhaps think of it this way: Those who skip out on the expense may realize in a few years that an inspection is much cheaper than rewiring the entire house.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2><strong>Negotiate</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>One of the advantages of having a home inspection performed before you buy is the power it might give you to&nbsp;<a href=\"https://www.veteransunited.com/education/homebuying/negotiations/\">negotiate a lower price.</a>&nbsp;If a home you’re really interested in is on the edge of your price range, information gathered during the home inspection may give you the bargaining power to talk down the price.&nbsp;You can also insert language into a purchase contract that allows you to back out of an agreement if the inspection turns up problems.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2><strong>Seller’s Repairs</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Not only are you able to negotiate a lower price, many buyers include clauses in their contract requiring the seller to make the repairs necessary before any money is exchanged. If the seller is unwilling to complete the repairs, estimate the cost and ask them to take that amount off the total. Solid facts about the quality and condition of the home can give you valuable bargaining power.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Maintenance Costs</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>A home requires ongoing maintenance. Things wear out and break. When putting together a budget for buying a home, you need to include maintenance costs. The amount of money that you budget will depend on the home’s condition. A newer home is less likely to need maintenance than an older home. “Most inspection reports include the cost of deferred maintenance,” Leslie said. “These are things that will have pending replacements in the next five years.”</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Remember that a seller’s repairs are not eligible to be included in seller concessions. VA guidelines allow the value of &nbsp;seller concessions to equal up to 4 percent of the selling price, but that 4 percent comes is in addition to any negotiated repairs.&nbsp;<a href=\"https://www.veteransunited.com/futurehomeowners/what-is-the-va-seller-concession-rule/\">Learn more about seller concessions here.</a></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2><strong>Know What You’re Buying</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>In the end the most important reason to have a home inspection before you buy is to really know what you’re buying. Research your potential home like you would any other major purchase. The more you know, the fewer surprises there will be down the road. Home inspectors can <a href=\"https://www.veteransunited.com/futurehomeowners/what-is-the-va-seller-concession-rule/\">help you make a decision based on your current budget</a> as well as your future time and money investment.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Peace of Mind</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>An inspection report guarantees that you understand the condition of the home when the sale finalizes which can ultimately bring you peace of mind. All in all, you don’t want any major surprises shortly after moving into your new home.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>“Peace of mind can’t be overrated,” Leslie said. “You have actual physical documentation that informs you of the condition of the home. This is true even on new construction. For example, the air ducts could not be placed correctly.”</p>\n<!-- /wp:paragraph -->','6 Reasons Why You Absolutely Need a Home Inspection','','inherit','closed','closed','','1965-revision-v1','','','2019-05-01 15:54:03','2019-05-01 15:54:03','',1965,'http://city-home-inspections.local/resources/1965-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (1974,1,'2019-05-01 15:55:01','2019-05-01 15:55:01','<!-- wp:paragraph -->\n<p>The purchase of a home is probably one of the single largest investments you will ever make. You should be as informed and educated as you possibly can while considering a home purchase, a home inspection can provide that education. Also, many mortgage lenders, recommend that a home inspection be performed.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Leaks</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>A new roof can cost $10,000 or more to replace and is one of the more expensive maintenance costs of owning a home. The inspector will look at the roof and identify the roof’s age in order to decide whether it is in proper working order. The report will point out any problems with the roof.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Safety</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>An important part of the home inspection is to make sure the home is safe. The inspector will look at the electrical system and make sure it is in proper working order. You don’t want to live in a home with an unsafe electrical system. If you choose to get a radon test, you will understand if the radon levels in the house are at safe levels. Radon is an odorless gas that can cause lung disease.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3><strong>Don’t Judge a Home by Its Facade</strong></h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Especially for those buying newer construction, a home inspection may feel like a waste of money. No matter the age of the home, there can be costly troubles unknown to the average buyer. Problems with wiring, plumbing or structural issues may not be visible during a showing and you’ll want to get an expert opinion. Even before you get to the interior, you can do your own preliminary inspection. Simply walk around the home’s exterior and look for&nbsp;<a href=\"https://www.veteransunited.com/realestate/how-to-scout-a-homes-exterior-for-4-va-appraisal-problems/\">these four potential problems</a>.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3><strong>Save Money</strong></h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Home inspection costs vary but a good rule of thumb would be to expect to pay&nbsp;from $300 to $500 depending on size and age of the home. That’s a good sum, but perhaps think of it this way: Those who skip out on the expense may realize in a few years that an inspection is much cheaper than rewiring the entire house.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3><strong>Negotiate</strong></h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>One of the advantages of having a home inspection performed before you buy is the power it might give you to&nbsp;<a href=\"https://www.veteransunited.com/education/homebuying/negotiations/\">negotiate a lower price.</a>&nbsp;If a home you’re really interested in is on the edge of your price range, information gathered during the home inspection may give you the bargaining power to talk down the price.&nbsp;You can also insert language into a purchase contract that allows you to back out of an agreement if the inspection turns up problems.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3><strong>Seller’s Repairs</strong></h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Not only are you able to negotiate a lower price, many buyers include clauses in their contract requiring the seller to make the repairs necessary before any money is exchanged. If the seller is unwilling to complete the repairs, estimate the cost and ask them to take that amount off the total. Solid facts about the quality and condition of the home can give you valuable bargaining power.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Maintenance Costs</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>A home requires ongoing maintenance. Things wear out and break. When putting together a budget for buying a home, you need to include maintenance costs. The amount of money that you budget will depend on the home’s condition. A newer home is less likely to need maintenance than an older home. “Most inspection reports include the cost of deferred maintenance,” Leslie said. “These are things that will have pending replacements in the next five years.”</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Remember that a seller’s repairs are not eligible to be included in seller concessions. VA guidelines allow the value of &nbsp;seller concessions to equal up to 4 percent of the selling price, but that 4 percent comes is in addition to any negotiated repairs.&nbsp;<a href=\"https://www.veteransunited.com/futurehomeowners/what-is-the-va-seller-concession-rule/\">Learn more about seller concessions here.</a></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3><strong>Know What You’re Buying</strong></h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>In the end the most important reason to have a home inspection before you buy is to really know what you’re buying. Research your potential home like you would any other major purchase. The more you know, the fewer surprises there will be down the road. Home inspectors can <a href=\"https://www.veteransunited.com/futurehomeowners/what-is-the-va-seller-concession-rule/\">help you make a decision based on your current budget</a> as well as your future time and money investment.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Peace of Mind</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>An inspection report guarantees that you understand the condition of the home when the sale finalizes which can ultimately bring you peace of mind. All in all, you don’t want any major surprises shortly after moving into your new home.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>“Peace of mind can’t be overrated,” Leslie said. “You have actual physical documentation that informs you of the condition of the home. This is true even on new construction. For example, the air ducts could not be placed correctly.”</p>\n<!-- /wp:paragraph -->','6 Reasons Why You Absolutely Need a Home Inspection','','inherit','closed','closed','','1965-revision-v1','','','2019-05-01 15:55:01','2019-05-01 15:55:01','',1965,'http://city-home-inspections.local/resources/1965-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (1975,1,'2019-05-01 15:55:37','2019-05-01 15:55:37','<!-- wp:paragraph -->\n<p>The purchase of a home is probably one of the single largest investments you will ever make. You should be as informed and educated as you possibly can while considering a home purchase, a home inspection can provide that education. Also, many mortgage lenders, recommend that a home inspection be performed.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Leaks</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>A new roof can cost $10,000 or more to replace and is one of the more expensive maintenance costs of owning a home. The inspector will look at the roof and identify the roof’s age in order to decide whether it is in proper working order. The report will point out any problems with the roof.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Safety</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>An important part of the home inspection is to make sure the home is safe. The inspector will look at the electrical system and make sure it is in proper working order. You don’t want to live in a home with an unsafe electrical system. If you choose to get a radon test, you will understand if the radon levels in the house are at safe levels. Radon is an odorless gas that can cause lung disease.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Don’t Judge a Home by Its Facade</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Especially for those buying newer construction, a home inspection may feel like a waste of money. No matter the age of the home, there can be costly troubles unknown to the average buyer. Problems with wiring, plumbing or structural issues may not be visible during a showing and you’ll want to get an expert opinion. Even before you get to the interior, you can do your own preliminary inspection. Simply walk around the home’s exterior and look for&nbsp;<a href=\"https://www.veteransunited.com/realestate/how-to-scout-a-homes-exterior-for-4-va-appraisal-problems/\">these four potential problems</a>.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3><strong>Save Money</strong></h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Home inspection costs vary but a good rule of thumb would be to expect to pay&nbsp;from $300 to $500 depending on size and age of the home. That’s a good sum, but perhaps think of it this way: Those who skip out on the expense may realize in a few years that an inspection is much cheaper than rewiring the entire house.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3><strong>Negotiate</strong></h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>One of the advantages of having a home inspection performed before you buy is the power it might give you to&nbsp;<a href=\"https://www.veteransunited.com/education/homebuying/negotiations/\">negotiate a lower price.</a>&nbsp;If a home you’re really interested in is on the edge of your price range, information gathered during the home inspection may give you the bargaining power to talk down the price.&nbsp;You can also insert language into a purchase contract that allows you to back out of an agreement if the inspection turns up problems.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Seller’s Repairs</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Not only are you able to negotiate a lower price, many buyers include clauses in their contract requiring the seller to make the repairs necessary before any money is exchanged. If the seller is unwilling to complete the repairs, estimate the cost and ask them to take that amount off the total. Solid facts about the quality and condition of the home can give you valuable bargaining power.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Maintenance Costs</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>A home requires ongoing maintenance. Things wear out and break. When putting together a budget for buying a home, you need to include maintenance costs. The amount of money that you budget will depend on the home’s condition. A newer home is less likely to need maintenance than an older home. “Most inspection reports include the cost of deferred maintenance,” Leslie said. “These are things that will have pending replacements in the next five years.”</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Remember that a seller’s repairs are not eligible to be included in seller concessions. VA guidelines allow the value of &nbsp;seller concessions to equal up to 4 percent of the selling price, but that 4 percent comes is in addition to any negotiated repairs.&nbsp;<a href=\"https://www.veteransunited.com/futurehomeowners/what-is-the-va-seller-concession-rule/\">Learn more about seller concessions here.</a></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Know What You’re Buying</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>In the end the most important reason to have a home inspection before you buy is to really know what you’re buying. Research your potential home like you would any other major purchase. The more you know, the fewer surprises there will be down the road. Home inspectors can <a href=\"https://www.veteransunited.com/futurehomeowners/what-is-the-va-seller-concession-rule/\">help you make a decision based on your current budget</a> as well as your future time and money investment.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Peace of Mind</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>An inspection report guarantees that you understand the condition of the home when the sale finalizes which can ultimately bring you peace of mind. All in all, you don’t want any major surprises shortly after moving into your new home.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>“Peace of mind can’t be overrated,” Leslie said. “You have actual physical documentation that informs you of the condition of the home. This is true even on new construction. For example, the air ducts could not be placed correctly.”</p>\n<!-- /wp:paragraph -->','6 Reasons Why You Absolutely Need a Home Inspection','','inherit','closed','closed','','1965-revision-v1','','','2019-05-01 15:55:37','2019-05-01 15:55:37','',1965,'http://city-home-inspections.local/resources/1965-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (1976,1,'2019-05-01 15:56:18','2019-05-01 15:56:18','<!-- wp:paragraph -->\n<p>The purchase of a home is probably one of the single largest investments you will ever make. You should be as informed and educated as you possibly can while considering a home purchase, a home inspection can provide that education. Also, many mortgage lenders, recommend that a home inspection be performed.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Leaks</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>A new roof can cost $10,000 or more to replace and is one of the more expensive maintenance costs of owning a home. The inspector will look at the roof and identify the roof’s age in order to decide whether it is in proper working order. The report will point out any problems with the roof.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Safety</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>An important part of the home inspection is to make sure the home is safe. The inspector will look at the electrical system and make sure it is in proper working order. You don’t want to live in a home with an unsafe electrical system. If you choose to get a radon test, you will understand if the radon levels in the house are at safe levels. Radon is an odorless gas that can cause lung disease.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Don’t Judge a Home by Its Facade</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Especially for those buying newer construction, a home inspection may feel like a waste of money. No matter the age of the home, there can be costly troubles unknown to the average buyer. Problems with wiring, plumbing or structural issues may not be visible during a showing and you’ll want to get an expert opinion. Even before you get to the interior, you can do your own preliminary inspection. Simply walk around the home’s exterior and look for&nbsp;<a href=\"https://www.veteransunited.com/realestate/how-to-scout-a-homes-exterior-for-4-va-appraisal-problems/\">these four potential problems</a>.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Save Money</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Home inspection costs vary but a good rule of thumb would be to expect to pay&nbsp;from $300 to $500 depending on size and age of the home. That’s a good sum, but perhaps think of it this way: Those who skip out on the expense may realize in a few years that an inspection is much cheaper than rewiring the entire house.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Negotiate</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>One of the advantages of having a home inspection performed before you buy is the power it might give you to&nbsp;<a href=\"https://www.veteransunited.com/education/homebuying/negotiations/\">negotiate a lower price.</a>&nbsp;If a home you’re really interested in is on the edge of your price range, information gathered during the home inspection may give you the bargaining power to talk down the price.&nbsp;You can also insert language into a purchase contract that allows you to back out of an agreement if the inspection turns up problems.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Seller’s Repairs</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Not only are you able to negotiate a lower price, many buyers include clauses in their contract requiring the seller to make the repairs necessary before any money is exchanged. If the seller is unwilling to complete the repairs, estimate the cost and ask them to take that amount off the total. Solid facts about the quality and condition of the home can give you valuable bargaining power.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Maintenance Costs</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>A home requires ongoing maintenance. Things wear out and break. When putting together a budget for buying a home, you need to include maintenance costs. The amount of money that you budget will depend on the home’s condition. A newer home is less likely to need maintenance than an older home. “Most inspection reports include the cost of deferred maintenance,” Leslie said. “These are things that will have pending replacements in the next five years.”</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Remember that a seller’s repairs are not eligible to be included in seller concessions. VA guidelines allow the value of &nbsp;seller concessions to equal up to 4 percent of the selling price, but that 4 percent comes is in addition to any negotiated repairs.&nbsp;<a href=\"https://www.veteransunited.com/futurehomeowners/what-is-the-va-seller-concession-rule/\">Learn more about seller concessions here.</a></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Know What You’re Buying</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>In the end the most important reason to have a home inspection before you buy is to really know what you’re buying. Research your potential home like you would any other major purchase. The more you know, the fewer surprises there will be down the road. Home inspectors can <a href=\"https://www.veteransunited.com/futurehomeowners/what-is-the-va-seller-concession-rule/\">help you make a decision based on your current budget</a> as well as your future time and money investment.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Peace of Mind</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>An inspection report guarantees that you understand the condition of the home when the sale finalizes which can ultimately bring you peace of mind. All in all, you don’t want any major surprises shortly after moving into your new home.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>“Peace of mind can’t be overrated,” Leslie said. “You have actual physical documentation that informs you of the condition of the home. This is true even on new construction. For example, the air ducts could not be placed correctly.”</p>\n<!-- /wp:paragraph -->','6 Reasons Why You Absolutely Need a Home Inspection','','inherit','closed','closed','','1965-revision-v1','','','2019-05-01 15:56:18','2019-05-01 15:56:18','',1965,'http://city-home-inspections.local/resources/1965-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (1977,1,'2019-05-01 15:57:32','2019-05-01 15:57:32','<!-- wp:paragraph -->\n<p>The purchase of a home is probably one of the single largest investments you will ever make. You should be as informed and educated as you possibly can while considering a home purchase, a home inspection can provide that education. Also, many mortgage lenders, recommend that a home inspection be performed.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Leaks</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>A new roof can cost $10,000 or more to replace and is one of the more expensive maintenance costs of owning a home. The inspector will look at the roof and identify the roof’s age in order to decide whether it is in proper working order. The report will point out any problems with the roof.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Safety</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>An important part of the home inspection is to make sure the home is safe. The inspector will look at the electrical system and make sure it is in proper working order. You don’t want to live in a home with an unsafe electrical system. If you choose to get a radon test, you will understand if the radon levels in the house are at safe levels. Radon is an odorless gas that can cause lung disease.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Save Money</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Home inspection costs vary but a good rule of thumb would be to expect to pay&nbsp;from $300 to $500 depending on size and age of the home. That’s a good sum, but perhaps think of it this way: Those who skip out on the expense may realize in a few years that an inspection is much cheaper than rewiring the entire house.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Negotiate</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>One of the advantages of having a home inspection performed before you buy is the power it might give you to&nbsp;<a href=\"https://www.veteransunited.com/education/homebuying/negotiations/\">negotiate a lower price.</a>&nbsp;If a home you’re really interested in is on the edge of your price range, information gathered during the home inspection may give you the bargaining power to talk down the price.&nbsp;You can also insert language into a purchase contract that allows you to back out of an agreement if the inspection turns up problems.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Seller’s Repairs</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Not only are you able to negotiate a lower price, many buyers include clauses in their contract requiring the seller to make the repairs necessary before any money is exchanged. If the seller is unwilling to complete the repairs, estimate the cost and ask them to take that amount off the total. Solid facts about the quality and condition of the home can give you valuable bargaining power.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Maintenance Costs</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>A home requires ongoing maintenance. Things wear out and break. When putting together a budget for buying a home, you need to include maintenance costs. The amount of money that you budget will depend on the home’s condition. A newer home is less likely to need maintenance than an older home. “Most inspection reports include the cost of deferred maintenance,” Leslie said. “These are things that will have pending replacements in the next five years.”</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Remember that a seller’s repairs are not eligible to be included in seller concessions. VA guidelines allow the value of &nbsp;seller concessions to equal up to 4 percent of the selling price, but that 4 percent comes is in addition to any negotiated repairs.&nbsp;<a href=\"https://www.veteransunited.com/futurehomeowners/what-is-the-va-seller-concession-rule/\">Learn more about seller concessions here.</a></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Know What You’re Buying</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>In the end the most important reason to have a home inspection before you buy is to really know what you’re buying. Research your potential home like you would any other major purchase. The more you know, the fewer surprises there will be down the road. Home inspectors can <a href=\"https://www.veteransunited.com/futurehomeowners/what-is-the-va-seller-concession-rule/\">help you make a decision based on your current budget</a> as well as your future time and money investment.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Peace of Mind</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>An inspection report guarantees that you understand the condition of the home when the sale finalizes which can ultimately bring you peace of mind. All in all, you don’t want any major surprises shortly after moving into your new home.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>“Peace of mind can’t be overrated,” Leslie said. “You have actual physical documentation that informs you of the condition of the home. This is true even on new construction. For example, the air ducts could not be placed correctly.”</p>\n<!-- /wp:paragraph -->','6 Reasons Why You Absolutely Need a Home Inspection','','inherit','closed','closed','','1965-revision-v1','','','2019-05-01 15:57:32','2019-05-01 15:57:32','',1965,'http://city-home-inspections.local/resources/1965-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (1978,1,'2019-05-01 15:58:03','2019-05-01 15:58:03','<!-- wp:paragraph -->\n<p>The purchase of a home is probably one of the single largest investments you will ever make. You should be as informed and educated as you possibly can while considering a home purchase, a home inspection can provide that education. Also, many mortgage lenders, recommend that a home inspection be performed.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Leaks</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>A new roof can cost $10,000 or more to replace and is one of the more expensive maintenance costs of owning a home. The inspector will look at the roof and identify the roof’s age in order to decide whether it is in proper working order. The report will point out any problems with the roof.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Safety</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>An important part of the home inspection is to make sure the home is safe. The inspector will look at the electrical system and make sure it is in proper working order. You don’t want to live in a home with an unsafe electrical system. If you choose to get a radon test, you will understand if the radon levels in the house are at safe levels. Radon is an odorless gas that can cause lung disease.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Save Money</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Home inspection costs vary but a good rule of thumb would be to expect to pay&nbsp;from $300 to $500 depending on size and age of the home. That’s a good sum, but perhaps think of it this way: Those who skip out on the expense may realize in a few years that an inspection is much cheaper than rewiring the entire house.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Negotiate</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>One of the advantages of having a home inspection performed before you buy is the power it might give you to&nbsp;<a href=\"https://www.veteransunited.com/education/homebuying/negotiations/\">negotiate a lower price.</a>&nbsp;If a home you’re really interested in is on the edge of your price range, information gathered during the home inspection may give you the bargaining power to talk down the price.&nbsp;You can also insert language into a purchase contract that allows you to back out of an agreement if the inspection turns up problems.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Not only are you able to negotiate a lower price, many buyers include clauses in their contract requiring the seller to make the repairs necessary before any money is exchanged. If the seller is unwilling to complete the repairs, estimate the cost and ask them to take that amount off the total. Solid facts about the quality and condition of the home can give you valuable bargaining power.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Maintenance Costs</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>A home requires ongoing maintenance. Things wear out and break. When putting together a budget for buying a home, you need to include maintenance costs. The amount of money that you budget will depend on the home’s condition. A newer home is less likely to need maintenance than an older home. “Most inspection reports include the cost of deferred maintenance,” Leslie said. “These are things that will have pending replacements in the next five years.”</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Remember that a seller’s repairs are not eligible to be included in seller concessions. VA guidelines allow the value of &nbsp;seller concessions to equal up to 4 percent of the selling price, but that 4 percent comes is in addition to any negotiated repairs.&nbsp;<a href=\"https://www.veteransunited.com/futurehomeowners/what-is-the-va-seller-concession-rule/\">Learn more about seller concessions here.</a></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Know What You’re Buying</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>In the end the most important reason to have a home inspection before you buy is to really know what you’re buying. Research your potential home like you would any other major purchase. The more you know, the fewer surprises there will be down the road. Home inspectors can <a href=\"https://www.veteransunited.com/futurehomeowners/what-is-the-va-seller-concession-rule/\">help you make a decision based on your current budget</a> as well as your future time and money investment.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Peace of Mind</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>An inspection report guarantees that you understand the condition of the home when the sale finalizes which can ultimately bring you peace of mind. All in all, you don’t want any major surprises shortly after moving into your new home.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>“Peace of mind can’t be overrated,” Leslie said. “You have actual physical documentation that informs you of the condition of the home. This is true even on new construction. For example, the air ducts could not be placed correctly.”</p>\n<!-- /wp:paragraph -->','6 Reasons Why You Absolutely Need a Home Inspection','','inherit','closed','closed','','1965-revision-v1','','','2019-05-01 15:58:03','2019-05-01 15:58:03','',1965,'http://city-home-inspections.local/resources/1965-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (1979,1,'2019-05-01 16:16:33','2019-05-01 16:16:33','','Hand holding brown paper , Home inspection','Hand holding brown paper , Home inspection','inherit','closed','closed','','hand-holding-brown-paper-home-inspection','','','2019-05-01 16:16:33','2019-05-01 16:16:33','',1965,'http://city-home-inspections.local/wp-content/uploads/2019/05/cutout-home-check-blurred-home.jpeg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (1981,1,'2019-05-01 17:22:47','2019-05-01 17:22:47','<!-- wp:heading {\"level\":3} -->\n<h3>The Home Inspector is Looking Out for Your Best Interest</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>In the whole house buying process the only professional truly looking out for your best interest is an independent home inspector. You do not want an inspector pushed on you by your realtor, such inspectors work more for realtor referrals than home buyers. The realtors are <em>primarily</em> looking out for themselves, because their commissions are on the line. They want the deal to go through smoothly so they can get paid. The bank’s inspector is looking out for the best interest of the bank. You hire the home inspector for the express purpose of giving you an unbiased report of the condition of the house, he gets paid whether you buy the house or not, and an honest inspector is beholden to no realtor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Take Advantage of the Contingency Clause</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>The main purpose of a home inspection is to reveal critical information about the condition of a home and its systems. This makes the buyer aware of safety issues and costs of repairs and maintenance the home may require immediately, and overtime. Purchase agreements contain a contingency clause allowing the buyer to opt out based on unsatisfactory results from a home inspection. If a buyer isn’t comfortable with the findings of the home inspection, it usually presents the only opportunity to back out of the offer without having to forfeit your deposit or more. A good home inspection could save you thousands of dollars and potential legal hassles. Many a disgruntled seller has sued the buyer trying to force them to follow through with the purchase agreement. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Safety</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>A home inspection can report on electrical, structural construction and other safety issues you may not be aware of. As of late mold seems to be a big deal with the banks and if during the bank inspection significant signs of mold are found (usually in a basement or attic), they require the mold to be remediated, which can cost upwards of $5,000 to $10,000 or more. Best to hire a home inspector who is certified in mold testing if needed. Make sure that your home-buying contract states that if such environmental hazards are detected, you have the option to cancel the offer to buy.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Protection</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Home inspections are even more critical if you are buying an “as-is” foreclosed property or short sale. Dwellings that have been boarded often develop hazardous mold problems, which are costly to remedy and pose health concerns. If a home is not properly winterized there could be broken pipes or radiators that are difficult to detect by an untrained eye when the water is turned off.  Due to high prices paid for scrap metal in today’s economy, it’s common for home inspectors to find that copper plumbing and other metal has been removed by thieves selling the metal for scrap to recyclers for tens of dollars but causing thousands of dollars in damage.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Negotiating Tool</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong><br></strong>A realtor will tell you the home inspection report presents an opportunity to ask for repairs and/or request a price reduction or credit from the seller. This is for significant conditions reported that you were unaware of prior to the inspection, which can represent hundreds or thousands of dollars. If a radon test (a separate contingency from the home inspection) finds the radon level at 4.0pCi/L or higher most sellers will pay to have a radon mitigation system installed or offer a credit for the work which averages about $1200. Based on the findings of the home inspection report, if needed, your realtor will work with you to re-negotiate in your favor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Deferred Cost Estimates</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong><br></strong>A good home inspector can approximate the installation age of major systems and estimate the remaining service life of the buildings components such as decks, roofs, furnace, water heater, air conditioning and more. This is helpful information in budgeting for future replacement of major components.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Fix-It-Up or Not</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>A lot of homes are listed as fix-er-upers. Experienced home inspectors with construction background will be most qualified to help buyers identify how much work or additional money it will take to get the home into the condition they want or need. If you find it is actually more than you were aware of, this can be your out. Perhaps it is best to keep looking for a more affordable house or one that needs less work.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Valuable Information</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>The good home inspector is a valuable educational resource. They can suggest specific steps and tips on how to maintain the home, which could ultimately save you thousands of dollars in the long term. Our home inspections and reports are very detailed and filled with maintenance recommendations, links to articles and how to information specific to your home.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Impartial Evaluation</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>People will often fall in love with a house based on the style, color, layout, location or something else; and are often completely blind to the issues that can make that dream home a nightmare. I explain to home buyers the important issues, things that are often overlooked during the initial decision to buy.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Avoid Insurance and Mortgage Denials</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Some insurance companies will not insure a home if certain conditions are found. For example it has been my experience in central New York that many insurance companies will not insure a home with 4 or more layers of roofing material and some will not insure a home with 3 or more layers (I’ve inspected homes with up to 8 layers of roofing). Some insurance companies will not insure a home if there is live knob and tube wiring present anywhere on the property and many insurance companies will not insure it if there is knob and tube wiring in the attic that is covered with insulation (fire hazard).</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Likewise with mortgage companies, some will not carry the loan if they determine high cost repairs are needed such as a new roof. Likewise if &nbsp;soon or hazardous probability situations such as visual observation of significant mold or if high level of radon gas, mold or asbestos have been tested in the home.” Qualified home inspectors will let you know what ancillary testing might be warranted and conduct them at same time as their other services and save the home buyer time and money in the long run.”</p>\n<!-- /wp:paragraph -->','10 Reasons Why You Need a Home Inspection','','inherit','closed','closed','','1965-revision-v1','','','2019-05-01 17:22:47','2019-05-01 17:22:47','',1965,'http://city-home-inspections.local/resources/1965-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (1982,1,'2019-05-01 17:27:43','2019-05-01 17:27:43','<!-- wp:paragraph -->\n<p>The purchase of a home is probably one of the single largest investments you will ever make. You should be as informed and educated as you possibly can while considering a home purchase, a home inspection can provide that education. Also, many mortgage lenders, recommend that a home inspection be performed.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>The Home Inspector is Looking Out for Your Best Interest</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>In the whole house buying process the only professional truly looking out for your best interest is an independent home inspector. You do not want an inspector pushed on you by your realtor, such inspectors work more for realtor referrals than home buyers. The realtors are <em>primarily</em>&nbsp;looking out for themselves, because their commissions are on the line. They want the deal to go through smoothly so they can get paid. The bank’s inspector is looking out for the best interest of the bank. You hire the home inspector for the express purpose of giving you an unbiased report of the condition of the house, he gets paid whether you buy the house or not, and an honest inspector is beholden to no realtor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Take Advantage of the Contingency Clause</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>The main purpose of a home inspection is to reveal critical information about the condition of a home and its systems. This makes the buyer aware of safety issues and costs of repairs and maintenance the home may require immediately, and overtime. Purchase agreements contain a contingency clause allowing the buyer to opt out based on unsatisfactory results from a home inspection. If a buyer isn’t comfortable with the findings of the home inspection, it usually presents the only opportunity to back out of the offer without having to forfeit your deposit or more. A good home inspection could save you thousands of dollars and potential legal hassles. Many a disgruntled seller has sued the buyer trying to force them to follow through with the purchase agreement. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Safety</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>A home inspection can report on electrical, structural construction and other safety issues you may not be aware of. As of late mold seems to be a big deal with the banks and if during the bank inspection significant signs of mold are found (usually in a basement or attic), they require the mold to be remediated, which can cost upwards of $5,000 to $10,000 or more. Best to hire a home inspector who is certified in mold testing if needed. Make sure that your home-buying contract states that if such environmental hazards are detected, you have the option to cancel the offer to buy.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Protection</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Home inspections are even more critical if you are buying an “as-is” foreclosed property or short sale. Dwellings that have been boarded often develop hazardous mold problems, which are costly to remedy and pose health concerns. If a home is not properly winterized there could be broken pipes or radiators that are difficult to detect by an untrained eye when the water is turned off.&nbsp; Due to high prices paid for scrap metal in today’s economy, it’s common for home inspectors to find that copper plumbing and other metal has been removed by thieves selling the metal for scrap to recyclers for tens of dollars but causing thousands of dollars in damage.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Negotiating Tool</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong><br></strong>A realtor will tell you the home inspection report presents an opportunity to ask for repairs and/or request a price reduction or credit from the seller. This is for significant conditions reported that you were unaware of prior to the inspection, which can represent hundreds or thousands of dollars. If a radon test (a separate contingency from the home inspection) finds the radon level at 4.0pCi/L or higher most sellers will pay to have a radon mitigation system installed or offer a credit for the work which averages about $1200. Based on the findings of the home inspection report, if needed, your realtor will work with you to re-negotiate in your favor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Deferred Cost Estimates</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong><br></strong>A good home inspector can approximate the installation age of major systems and estimate the remaining service life of the buildings components such as decks, roofs, furnace, water heater, air conditioning and more. This is helpful information in budgeting for future replacement of major components.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Fix-It-Up or Not</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>A lot of homes are listed as fix-er-upers. Experienced home inspectors with construction background will be most qualified to help buyers identify how much work or additional money it will take to get the home into the condition they want or need. If you find it is actually more than you were aware of, this can be your out. Perhaps it is best to keep looking for a more affordable house or one that needs less work.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Valuable Information</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>The good home inspector is a valuable educational resource. They can suggest specific steps and tips on how to maintain the home, which could ultimately save you thousands of dollars in the long term. Our home inspections and reports are very detailed and filled with maintenance recommendations, links to articles and how to information specific to your home.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Impartial Evaluation</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>People will often fall in love with a house based on the style, color, layout, location or something else; and are often completely blind to the issues that can make that dream home a nightmare. I explain to home buyers the important issues, things that are often overlooked during the initial decision to buy.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Avoid Insurance and Mortgage Denials</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Some insurance companies will not insure a home if certain conditions are found. For example it has been my experience in central New York that many insurance companies will not insure a home with 4 or more layers of roofing material and some will not insure a home with 3 or more layers (I’ve inspected homes with up to 8 layers of roofing). Some insurance companies will not insure a home if there is live knob and tube wiring present anywhere on the property and many insurance companies will not insure it if there is knob and tube wiring in the attic that is covered with insulation (fire hazard).</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Likewise with mortgage companies, some will not carry the loan if they determine high cost repairs are needed such as a new roof. Likewise if &nbsp;soon or hazardous probability situations such as visual observation of significant mold or if high level of radon gas, mold or asbestos have been tested in the home.” Qualified home inspectors will let you know what ancillary testing might be warranted and conduct them at same time as their other services and save the home buyer time and money in the long run.”</p>\n<!-- /wp:paragraph -->','10 Reasons Why You Need a Home Inspection','','inherit','closed','closed','','1965-revision-v1','','','2019-05-01 17:27:43','2019-05-01 17:27:43','',1965,'http://city-home-inspections.local/resources/1965-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (1984,1,'2020-02-23 21:56:59','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','open','','','','','2020-02-23 21:56:59','0000-00-00 00:00:00','',0,'http://city-home-inspections.local/?p=1984',0,'post','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1726,182,0);
INSERT INTO `wp_term_relationships` VALUES (1727,182,0);
INSERT INTO `wp_term_relationships` VALUES (1729,182,0);
INSERT INTO `wp_term_relationships` VALUES (1731,182,0);
INSERT INTO `wp_term_relationships` VALUES (1732,182,0);
INSERT INTO `wp_term_relationships` VALUES (1733,182,0);
INSERT INTO `wp_term_relationships` VALUES (1734,182,0);
INSERT INTO `wp_term_relationships` VALUES (1735,182,0);
INSERT INTO `wp_term_relationships` VALUES (1736,182,0);
INSERT INTO `wp_term_relationships` VALUES (1737,182,0);
INSERT INTO `wp_term_relationships` VALUES (1738,182,0);
INSERT INTO `wp_term_relationships` VALUES (1739,182,0);
INSERT INTO `wp_term_relationships` VALUES (1740,182,0);
INSERT INTO `wp_term_relationships` VALUES (1741,182,0);
INSERT INTO `wp_term_relationships` VALUES (1742,182,0);
INSERT INTO `wp_term_relationships` VALUES (1743,182,0);
INSERT INTO `wp_term_relationships` VALUES (1744,182,0);
INSERT INTO `wp_term_relationships` VALUES (1745,182,0);
INSERT INTO `wp_term_relationships` VALUES (1746,182,0);
INSERT INTO `wp_term_relationships` VALUES (1747,183,0);
INSERT INTO `wp_term_relationships` VALUES (1748,183,0);
INSERT INTO `wp_term_relationships` VALUES (1749,183,0);
INSERT INTO `wp_term_relationships` VALUES (1750,183,0);
INSERT INTO `wp_term_relationships` VALUES (1751,183,0);
INSERT INTO `wp_term_relationships` VALUES (1752,181,0);
INSERT INTO `wp_term_relationships` VALUES (1758,179,0);
INSERT INTO `wp_term_relationships` VALUES (1759,179,0);
INSERT INTO `wp_term_relationships` VALUES (1811,178,0);
INSERT INTO `wp_term_relationships` VALUES (1814,178,0);
INSERT INTO `wp_term_relationships` VALUES (1837,178,0);
INSERT INTO `wp_term_relationships` VALUES (1957,194,0);
INSERT INTO `wp_term_relationships` VALUES (1962,194,0);
INSERT INTO `wp_term_relationships` VALUES (1965,195,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=196 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (178,178,'nav_menu','',0,3);
INSERT INTO `wp_term_taxonomy` VALUES (179,179,'nav_menu','',0,2);
INSERT INTO `wp_term_taxonomy` VALUES (181,181,'nav_menu','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (182,182,'nav_menu','',0,19);
INSERT INTO `wp_term_taxonomy` VALUES (183,183,'nav_menu','',0,5);
INSERT INTO `wp_term_taxonomy` VALUES (193,193,'post_tag','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (194,194,'category','Frequently asked questions about home inspections',0,2);
INSERT INTO `wp_term_taxonomy` VALUES (195,195,'category','',0,1);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=196 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (178,'All Pages','all-pages',0);
INSERT INTO `wp_terms` VALUES (179,'All Pages Flat','all-pages-flat',0);
INSERT INTO `wp_terms` VALUES (181,'Short','short',0);
INSERT INTO `wp_terms` VALUES (182,'Testing Menu','testing-menu',0);
INSERT INTO `wp_terms` VALUES (183,'Social menu','social-menu',0);
INSERT INTO `wp_terms` VALUES (193,'Columns','columns',0);
INSERT INTO `wp_terms` VALUES (194,'FAQs','faqs',0);
INSERT INTO `wp_terms` VALUES (195,'Tips','tips',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','jameelevans');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','Jameel');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','Evans');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','false');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','wp496_privacy,plugin_editor_notice');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','0');
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:1:{s:64:\"e032ed1c7796f70f8c356c275881a284fcafcb651416d23897a7eb654550066f\";a:4:{s:10:\"expiration\";i:1583259474;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36\";s:5:\"login\";i:1583086674;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','1984');
INSERT INTO `wp_usermeta` VALUES (18,1,'community-events-location','a:1:{s:2:\"ip\";s:12:\"192.168.95.0\";}');
INSERT INTO `wp_usermeta` VALUES (19,1,'wp_user-settings','unfold=1&mfold=o&libraryContent=browse');
INSERT INTO `wp_usermeta` VALUES (20,1,'wp_user-settings-time','1555442325');
INSERT INTO `wp_usermeta` VALUES (21,1,'nav_menu_recently_edited','178');
INSERT INTO `wp_usermeta` VALUES (22,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}');
INSERT INTO `wp_usermeta` VALUES (23,1,'metaboxhidden_nav-menus','a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}');
INSERT INTO `wp_usermeta` VALUES (25,1,'closedpostboxes_dashboard','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (26,1,'metaboxhidden_dashboard','a:1:{i:0;s:17:\"dashboard_primary\";}');
INSERT INTO `wp_usermeta` VALUES (27,1,'_yoast_wpseo_profile_updated','1583086722');
INSERT INTO `wp_usermeta` VALUES (28,1,'wpseo_title','');
INSERT INTO `wp_usermeta` VALUES (29,1,'wpseo_metadesc','');
INSERT INTO `wp_usermeta` VALUES (30,1,'wpseo_noindex_author','');
INSERT INTO `wp_usermeta` VALUES (31,1,'wpseo_content_analysis_disable','');
INSERT INTO `wp_usermeta` VALUES (32,1,'wpseo_keyword_analysis_disable','');
INSERT INTO `wp_usermeta` VALUES (33,1,'_new_email','a:2:{s:4:\"hash\";s:32:\"70e65ea1a4acd60b0848101eb3b99352\";s:8:\"newemail\";s:20:\"jameelevans@live.com\";}');
INSERT INTO `wp_usermeta` VALUES (34,1,'facebook','');
INSERT INTO `wp_usermeta` VALUES (35,1,'instagram','Jameel D Evans');
INSERT INTO `wp_usermeta` VALUES (36,1,'linkedin','');
INSERT INTO `wp_usermeta` VALUES (37,1,'myspace','');
INSERT INTO `wp_usermeta` VALUES (38,1,'pinterest','');
INSERT INTO `wp_usermeta` VALUES (39,1,'soundcloud','');
INSERT INTO `wp_usermeta` VALUES (40,1,'tumblr','');
INSERT INTO `wp_usermeta` VALUES (41,1,'twitter','');
INSERT INTO `wp_usermeta` VALUES (42,1,'youtube','');
INSERT INTO `wp_usermeta` VALUES (43,1,'wikipedia','');
INSERT INTO `wp_usermeta` VALUES (45,2,'nickname','Testing123');
INSERT INTO `wp_usermeta` VALUES (46,2,'first_name','Jameel');
INSERT INTO `wp_usermeta` VALUES (47,2,'last_name','Testing');
INSERT INTO `wp_usermeta` VALUES (48,2,'description','');
INSERT INTO `wp_usermeta` VALUES (49,2,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (50,2,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (51,2,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (52,2,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (53,2,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (54,2,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (55,2,'locale','');
INSERT INTO `wp_usermeta` VALUES (56,2,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (57,2,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (58,2,'_yoast_wpseo_profile_updated','1583086722');
INSERT INTO `wp_usermeta` VALUES (59,2,'dismissed_wp_pointers','wp496_privacy');
INSERT INTO `wp_usermeta` VALUES (60,1,'closedpostboxes_page','a:1:{i:0;s:10:\"wpseo_meta\";}');
INSERT INTO `wp_usermeta` VALUES (61,1,'metaboxhidden_page','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (62,1,'closedpostboxes_slide','a:1:{i:0;s:10:\"wpseo_meta\";}');
INSERT INTO `wp_usermeta` VALUES (63,1,'metaboxhidden_slide','a:2:{i:0;s:10:\"wpseo_meta\";i:1;s:7:\"slugdiv\";}');
INSERT INTO `wp_usermeta` VALUES (65,1,'wp_media_library_mode','list');
INSERT INTO `wp_usermeta` VALUES (66,1,'wp_yoast_notifications','a:1:{i:0;a:2:{s:7:\"message\";s:542:\"Yoast SEO and Advanced Custom Fields can work together a lot better by adding a helper plugin. Please install <a href=\"http://city-home-inspections.local/wp-admin/update.php?action=install-plugin&amp;plugin=acf-content-analysis-for-yoast-seo&amp;_wpnonce=3cdc22b003\">ACF Content Analysis for Yoast SEO</a> to make your life better. <a href=\"https://wordpress.org/plugins/acf-content-analysis-for-yoast-seo/\" aria-label=\"More information about ACF Content Analysis for Yoast SEO\" target=\"_blank\" rel=\"noopener noreferrer\">More information</a>.\";s:7:\"options\";a:10:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:41:\"wpseo-suggested-plugin-yoast-acf-analysis\";s:4:\"user\";O:7:\"WP_User\":8:{s:4:\"data\";O:8:\"stdClass\":10:{s:2:\"ID\";s:1:\"1\";s:10:\"user_login\";s:11:\"jameelevans\";s:9:\"user_pass\";s:34:\"$P$BG7IUI0HCX9st1W1hpMdHENPbuaKAj.\";s:13:\"user_nicename\";s:11:\"jameelevans\";s:10:\"user_email\";s:24:\"dev-email@flywheel.local\";s:8:\"user_url\";s:0:\"\";s:15:\"user_registered\";s:19:\"2019-04-15 17:11:06\";s:19:\"user_activation_key\";s:0:\"\";s:11:\"user_status\";s:1:\"0\";s:12:\"display_name\";s:6:\"Jameel\";}s:2:\"ID\";i:1;s:4:\"caps\";a:1:{s:13:\"administrator\";b:1;}s:7:\"cap_key\";s:15:\"wp_capabilities\";s:5:\"roles\";a:1:{i:0;s:13:\"administrator\";}s:7:\"allcaps\";a:63:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:20:\"wpseo_manage_options\";b:1;s:13:\"administrator\";b:1;}s:6:\"filter\";N;s:16:\"\0WP_User\0site_id\";i:1;}s:5:\"nonce\";N;s:8:\"priority\";d:0.5;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";a:1:{i:0;s:15:\"install_plugins\";}s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}}');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'jameelevans','$P$BG7IUI0HCX9st1W1hpMdHENPbuaKAj.','jameelevans','dev-email@flywheel.local','','2019-04-15 17:11:06','',0,'Jameel');
INSERT INTO `wp_users` VALUES (2,'Testing123','$P$BgVmPtaXB/WEZZrrideM//ZzubAKUE.','testing123','jameelevans@live.com','','2019-04-29 03:55:34','1556510134:$P$B3c.6rDb6vx1wk4BtB7W2Cb/owpMeM.',0,'Jameel Testing');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_yoast_seo_links`
--

DROP TABLE IF EXISTS `wp_yoast_seo_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_yoast_seo_links` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL,
  `target_post_id` bigint(20) unsigned NOT NULL,
  `type` varchar(8) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `link_direction` (`post_id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_yoast_seo_links`
--

LOCK TABLES `wp_yoast_seo_links` WRITE;
/*!40000 ALTER TABLE `wp_yoast_seo_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_yoast_seo_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_yoast_seo_meta`
--

DROP TABLE IF EXISTS `wp_yoast_seo_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_yoast_seo_meta` (
  `object_id` bigint(20) unsigned NOT NULL,
  `internal_link_count` int(10) unsigned DEFAULT NULL,
  `incoming_link_count` int(10) unsigned DEFAULT NULL,
  UNIQUE KEY `object_id` (`object_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_yoast_seo_meta`
--

LOCK TABLES `wp_yoast_seo_meta` WRITE;
/*!40000 ALTER TABLE `wp_yoast_seo_meta` DISABLE KEYS */;
INSERT INTO `wp_yoast_seo_meta` VALUES (1,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (2,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (146,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (155,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (156,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (172,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (173,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (174,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (501,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (611,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (616,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (617,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (701,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (733,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (735,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (742,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (744,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (746,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (748,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (754,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (755,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (756,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (757,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (758,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (759,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (760,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (761,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (763,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (764,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (765,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (766,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (767,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (768,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (769,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (770,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (771,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (807,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (811,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (821,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (827,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (967,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (968,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1022,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1023,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1025,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1027,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1029,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1045,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1133,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1134,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1241,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1628,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1686,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1687,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1690,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1691,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1692,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1725,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1728,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1730,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1753,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1754,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1755,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1756,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1757,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1760,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1761,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1762,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1763,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1764,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1765,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1766,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1767,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1783,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1789,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1790,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1791,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1792,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1793,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1794,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1795,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1796,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1797,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1798,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1807,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1809,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1810,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1812,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1813,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1815,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1816,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1817,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1818,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1819,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1820,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1821,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1822,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1823,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1824,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1825,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1826,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1827,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1828,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1829,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1830,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1831,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1832,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1833,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1834,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1835,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1836,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1839,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1840,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1841,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1843,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1844,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1845,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1846,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1852,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1854,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1855,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1856,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1857,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1861,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1862,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1863,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1865,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1868,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1869,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1870,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1871,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1918,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1919,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1920,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1921,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1922,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1923,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1924,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1925,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1926,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1928,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1929,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1930,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1931,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1932,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1933,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1934,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1935,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1936,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1937,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1938,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1939,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1940,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1941,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1942,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1943,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1944,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1945,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1946,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1947,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1948,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1949,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1950,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1951,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1954,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1955,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1957,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1961,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1962,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1965,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1967,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1968,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1969,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1970,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1972,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1973,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1980,0,0);
INSERT INTO `wp_yoast_seo_meta` VALUES (1983,0,0);
/*!40000 ALTER TABLE `wp_yoast_seo_meta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-26 15:54:24
