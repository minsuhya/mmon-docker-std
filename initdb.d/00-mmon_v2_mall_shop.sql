-- MySQL dump 10.13  Distrib 8.1.0, for Linux (x86_64)
--
-- Host: localhost    Database: mall_shop
-- ------------------------------------------------------
-- Server version	8.1.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `mall_shop`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `mall_shop` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `mall_shop`;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mariner_index_log`
--

DROP TABLE IF EXISTS `mariner_index_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mariner_index_log` (
  `DQ_ID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `TYPE` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `FLAG` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`DQ_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='다이퀘스트 수집 추가색인용 테이블';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mariner_index_log`
--

LOCK TABLES `mariner_index_log` WRITE;
/*!40000 ALTER TABLE `mariner_index_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `mariner_index_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=419 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2019_12_14_000001_create_personal_access_tokens_table',1),(2,'2022_02_10_150253_add_accessable_columns_to_mm_cnf_ad_menus_table',1),(3,'2022_02_15_135954_create_mm_ord_orders_table',1),(4,'2022_02_23_132649_create_mm_ord_items_table',1),(5,'2022_02_23_143449_create_mm_ord_packs_table',1),(6,'2022_02_23_154516_create_mm_ord_item_status_changes',1),(7,'2022_02_23_160812_create_mm_ord_item_discounts_table',1),(8,'2022_02_23_160839_create_mm_ord_payments_table',1),(9,'2022_02_24_105652_create_mm_ord_payment_items_table',1),(10,'2022_02_24_114208_create_mm_ord_payment_item_extend_virtual_accounts_table',1),(11,'2022_02_24_114231_create_mm_ord_payment_item_extend_escrows_table',1),(12,'2022_02_24_114252_create_mm_ord_payment_item_extend_cards_table',1),(13,'2022_02_24_132739_create_mm_ord_sessions_table',1),(14,'2022_02_28_091344_create_mm_ord_scm_logs_table',1),(15,'2022_03_07_091222_create_mm_shp_shipping_centers_table',1),(16,'2022_03_07_092331_create_mm_shp_shipping_center_rule',1),(17,'2022_03_08_170407_create_mm_ord_releases_table',1),(18,'2022_03_15_153225_create_mm_ord_cash_receipts_table',1),(19,'2022_03_16_091108_create_mm_ord_cancels_table',1),(20,'2022_03_16_091127_create_mm_ord_cancel_targets_table',1),(21,'2022_03_17_140217_create_mm_ord_refunds_table',1),(22,'2022_03_17_143648_create_mm_ord_refund_items_table',1),(23,'2022_03_17_143943_create_mm_ord_pack_exempt_shipping_prices_table',1),(24,'2022_03_17_165641_create_mm_ord_returns_table',1),(25,'2022_03_17_165659_create_mm_ord_return_targets_table',1),(26,'2022_03_18_100300_create_mm_ord_retrieves_table',1),(27,'2022_03_18_110850_create_mm_ord_exchanges_table',1),(28,'2022_03_18_111952_create_mm_ord_exchange_targets_table',1),(29,'2022_03_22_090253_create_mm_ord_payment_item_extend_mobiles_table',1),(30,'2022_03_24_111250_create_mm_csc_order_memos_table',1),(31,'2022_03_30_141448_create_mm_shp_point_rules_table',1),(32,'2022_04_01_140048_create_mm_pnt_settings_table',1),(33,'2022_04_01_141734_create_mm_csc_complain_settings_table',1),(34,'2022_04_01_143725_create_mm_gds_headline_apply_brands_table',1),(35,'2022_04_01_143732_create_mm_gds_headline_apply_categories_table',1),(36,'2022_04_01_143738_create_mm_gds_headline_apply_goods_table',1),(37,'2022_04_01_143745_create_mm_gds_headline_apply_sellers_table',1),(38,'2022_04_01_143900_drop_mm_gds_headline_item_table',1),(39,'2022_04_01_144925_rename_mm_gds_gifts_table',1),(40,'2022_04_01_145013_rename_mm_gds_gift_apply_brands_table',1),(41,'2022_04_01_145110_rename_mm_gds_gift_apply_categories_table',1),(42,'2022_04_01_145131_rename_mm_gds_gift_apply_goods_table',1),(43,'2022_04_01_145146_rename_mm_gds_gift_apply_sellers_table',1),(44,'2022_04_01_153725_rename_mm_gds_gift_regists_table',1),(45,'2022_04_01_162436_rename_mm_gds_sets_table',1),(46,'2022_04_01_162633_create_mm_pnt_except_sellers_table',1),(47,'2022_04_01_163023_rename_mm_gds_item_set_table',1),(48,'2022_04_01_173618_add_created_and_updated_user_columns_to_mm_scm_seller_notices_table',1),(49,'2022_04_04_141525_add_modifier_columns_to_mm_scm_seller_popups_table',1),(50,'2022_04_04_171534_rename_columns_mm_gds_headlines_table',1),(51,'2022_04_05_142122_add_column_deleted_user_to_mm_gds_forbidden_words_table',1),(52,'2022_04_05_142341_add_fail_message_column_to_mm_mkt_app_pushes_table',1),(53,'2022_04_05_151702_add_column_deleted_user_to_mm_gds_forbidden_word_except_sellers_table',1),(54,'2022_04_07_094402_add_column_approval_reject_at_to_mm_gds_items_table',1),(55,'2022_04_07_155126_create_mm_sta_statistics_codes_table',1),(56,'2022_04_08_100404_remove_id_column_from_pivot_tables',1),(57,'2022_04_08_104611_drop_mm_shp_shipping_center_rule_table',1),(58,'2022_04_08_104902_add_columns_to_mm_shp_shipping_centers_table',1),(59,'2022_04_08_170523_create_mm_shp_seller_offdays_table',1),(60,'2022_04_12_095004_add_ordered_at_column_to_mm_ord_separates_table',1),(61,'2022_04_13_135749_rename_mm_gds_giveaway_table',1),(62,'2022_04_13_135753_add_column_seller_id_to_mm_gds_giveaways_table',1),(63,'2022_04_13_142717_add_column_middle_user_id_to_mm_gds_giveaways_table',1),(64,'2022_04_13_144930_rename_index_to_mm_gds_giveaways_table',1),(65,'2022_04_14_152420_update_columns_sale_date_to_mm_gds_item_sale_reserves',1),(66,'2022_04_14_193955_add_timestamp_columns_to_mm_ord_cancel_targets_table',1),(67,'2022_04_15_150956_add_retrieve_center_id_column_to_mm_ord_exchanges_table',1),(68,'2022_04_15_151033_add_retrieve_center_id_column_to_mm_ord_returns_table',1),(69,'2022_04_15_154948_add_status_and_timestamp_columns_to_mm_ord_return_targets_table',1),(70,'2022_04_15_155004_add_status_and_timestamp_columns_to_mm_ord_exchange_targets_table',1),(71,'2022_04_18_133910_add_seller_id_column_to_mm_ord_packs_table',1),(72,'2022_04_18_142038_add_seller_id_column_to_mm_ord_refunds_table',1),(73,'2022_04_18_153154_add_fail_message_to_mm_ord_refunds_table',1),(74,'2022_04_18_154316_add_force_finish_columns_to_mm_ord_refunds_table',1),(75,'2022_04_18_161240_add_columns_mm_shp_shipping_rules_table',1),(76,'2022_04_18_164023_add_exchange_holding_at_column_to_mm_ord_exchange_targets_table',1),(77,'2022_04_18_181450_add_pack_id_column_to_mm_ord_returns_table',1),(78,'2022_04_18_181528_add_pack_id_column_to_mm_ord_exchanges_table',1),(79,'2022_04_18_181730_add_pack_id_column_to_mm_ord_cancels_table',1),(80,'2022_04_19_111506_remove_order_item_detail_id_to_mm_csc_complains_table',1),(81,'2022_04_19_113110_add_transfered_exchange_id_column_to_mm_ord_returns_table',1),(82,'2022_04_19_161156_add_point_amount_column_to_mm_csc_complains_table',1),(83,'2022_04_22_115840_rename_mm_gds_giveaway_regists_table',1),(84,'2022_04_22_143917_add_discount_amount_columns_to_mm_sta_order_by_sellers_table',1),(85,'2022_04_25_114537_remove_reserved_user_type_column_to_mm_gds_item_change_price_reserves_table',1),(86,'2022_04_26_154744_add_hour_column_to_mm_sta_order_by_affiliates_table',1),(87,'2022_04_26_163210_add_md_id_column_to_mm_sta_order_by_affiliates_table',1),(88,'2022_04_26_163324_add_md_id_column_to_mm_sta_order_by_payment_methods_table',1),(89,'2022_04_27_135703_remove_order_from_column_to_mm_sta_order_by_payment_methods_table',1),(90,'2022_04_28_142552_add_grade_columns_to_mm_sta_member_by_grades_table',1),(91,'2022_04_29_124626_update_columns_to_mm_bod_notices',1),(92,'2022_04_29_142822_create_mm_sta_db_states_table',1),(93,'2022_05_02_094723_add_status_columns_to_mm_ord_scm_logs_table',1),(94,'2022_05_02_095128_set_nullable_to_mm_ord_item_status_changes_table_before_status_code_column',1),(95,'2022_05_02_142918_update_display_start_at_columns_to_mm_bod_notices',1),(96,'2022_05_03_102049_add_updated_user_column_to_mm_bod_faq_types',1),(97,'2022_05_03_160639_remove_export_columns_from_mm_ord_packs_table',1),(98,'2022_05_04_093752_update_columns_to_mm_bod_goods_reviews_table',1),(99,'2022_05_04_164104_rename_mm_bod_goods_review_template_details_table',1),(100,'2022_05_09_113950_create_mm_ord_item_sale_reserves_table',1),(101,'2022_05_09_160543_add_id_column_to_mm_shp_review_template_details_table',1),(102,'2022_05_11_094056_renew_mm_csc_cs_notifications_table',1),(103,'2022_05_11_094157_renew_mm_csc_cs_notification_comments_table',1),(104,'2022_05_11_123517_add_updated_user_column_to_mm_csc_qna_comments_table',1),(105,'2022_05_11_150154_create_mm_csc_qna_comment_logs_table',1),(106,'2022_05_11_150940_add_status_code_column_to_mm_ord_cancel_targets_table',1),(107,'2022_05_12_093039_create_mm_pnt_receipt_delays_table',1),(108,'2022_05_12_093202_create_mm_pnt_release_delays_table',1),(109,'2022_05_12_093224_create_mm_pnt_cancel_by_soldouts_table',1),(110,'2022_05_12_093248_create_mm_pnt_fake_releases_table',1),(111,'2022_05_12_093309_create_mm_pnt_return_delays_table',1),(112,'2022_05_12_093332_create_mm_pnt_exchange_delays_table',1),(113,'2022_05_12_103750_create_mm_csc_qna_comment_form_table',1),(114,'2022_05_12_144351_add_columns_to_mm_pnt_release_delays_table',1),(115,'2022_05_13_085600_add_is_apply_column_to_mm_pnt_cancel_by_soldouts_table',1),(116,'2022_05_13_093519_add_cost_minute_column_to_mm_pnt_cancel_by_soldouts_table',1),(117,'2022_05_13_110102_add_is_apply_column_to_mm_pnt_fake_releases_table',1),(118,'2022_05_13_110156_create_mm_pnt_fake_release_objections_table',1),(119,'2022_05_13_162835_add_reward_rate_column_to_mm_csc_complains_table',1),(120,'2022_05_17_085502_add_category_code_column_to_mm_csc_qna_table',1),(121,'2022_05_17_110507_rename_mm_csc_qna_comment_form_table',1),(122,'2022_05_17_114715_create_mm_gds_origins_table',1),(123,'2022_05_20_102833_create_mm_csc_complain_release_delays_table',1),(124,'2022_05_20_104319_create_mm_csc_complain_cancel_by_soldouts_table',1),(125,'2022_05_20_133130_drop_mm_csc_complains_table',1),(126,'2022_05_20_150233_change_column_name_mm_bod_goods_reviews_table',1),(127,'2022_05_23_135220_make_folder_id_nullable_mm_mem_wish_goods_table',1),(128,'2022_05_23_142231_add_column_shipping_center_id_to_mm_gds_items_table',1),(129,'2022_05_24_104324_add_column_is_display_to_mm_gds_options_table',1),(130,'2022_05_26_094257_drop_category_code_column_from_mm_mem_recent_view_goods_table',1),(131,'2022_05_26_105754_edit_column_names_at_mm_mem_grades_table',1),(132,'2022_05_30_140008_create_mm_gds_sale_reserve_change_logs_table',1),(133,'2022_05_30_140146_remove_user_columns_from_mm_exh_planning_event_goods_groups_table',1),(134,'2022_05_30_150854_create_sessions_table',1),(135,'2022_05_30_151010_create_cache_table',1),(136,'2022_05_30_160053_add_column_modifier_to_mm_gds_sale_reserve_change_logs_table',1),(137,'2022_05_30_160457_add_column_modifier_to_mm_gds_price_change_logs_table',1),(138,'2022_05_30_160538_add_column_modifier_to_mm_gds_option_change_logs_table',1),(139,'2022_05_30_160623_add_column_modifier_to_mm_gds_info_change_logs_table',1),(140,'2022_05_30_160710_add_column_modifier_to_mm_gds_approval_change_logs_table',1),(141,'2022_05_30_170016_add_id_column_to_mm_exh_area_goods_banners_table',1),(142,'2022_05_31_134203_change_columns_to_mm_bod_goods_reviews_table',1),(143,'2022_05_31_134434_create_mm_bod_goods_review_order_item_table',1),(144,'2022_05_31_153658_add_order_id_column_to_mm_bod_goods_reviews_table',1),(145,'2022_06_09_170430_create_jobs_table',1),(146,'2022_06_09_170512_create_failed_jobs_table',1),(147,'2022_06_10_100317_add_state_column_to_mm_ord_sessions_table',1),(148,'2022_06_14_163837_create_mm_prm_night_sale_apply_sellers_table',1),(149,'2022_06_14_163908_create_mm_prm_night_sale_apply_categories_table',1),(150,'2022_06_14_164007_create_mm_prm_immediately_sale_apply_sellers_table',1),(151,'2022_06_14_164023_create_mm_prm_immediately_sale_apply_categories_table',1),(152,'2022_06_21_104200_add_receive_address_id_to_mm_ord_orders_table',1),(153,'2022_06_21_141834_delete_columns_to_mm_gds_package_items_table',1),(154,'2022_06_24_094405_create_mm_stm_units_table',1),(155,'2022_06_24_101720_create_mm_stm_punch_sellings_table',1),(156,'2022_06_24_103525_create_mm_stm_punch_receipt_delays_table',1),(157,'2022_06_24_112000_create_mm_stm_punch_release_delays_table',1),(158,'2022_06_24_114846_create_mm_stm_punch_cancel_by_soldouts_table',1),(159,'2022_06_24_115345_create_mm_stm_punch_fake_releases_table',1),(160,'2022_06_24_121958_create_mm_stm_punch_return_delays_table',1),(161,'2022_06_24_133659_create_mm_stm_punch_exchange_delays_table',1),(162,'2022_06_24_143636_create_mm_stm_punch_shipping_prices_table',1),(163,'2022_06_27_153957_add_modifiers_column_to_mm_exh_brand_contents_categories_table',1),(164,'2022_06_28_133940_create_mm_prm_night_sale_except_categoires_table',1),(165,'2022_06_28_134144_create_mm_prm_night_sale_except_sellers_table',1),(166,'2022_06_28_134654_update_mm_prm_night_sale_apply_categories_table',1),(167,'2022_06_28_135803_create_mm_prm_immediately_sale_except_brands_table',1),(168,'2022_06_28_135825_create_mm_prm_immediately_sale_except_categories_table',1),(169,'2022_06_28_135843_create_mm_prm_immediately_sale_except_sellers_table',1),(170,'2022_06_28_145440_rename_price_column_to_mm_gds_options_table',1),(171,'2022_06_29_102927_create_mm_exh_codishot_categories_table',1),(172,'2022_06_29_103002_create_mm_exh_codishots_table',1),(173,'2022_06_29_112439_create_mm_exh_codishot_points_table',1),(174,'2022_06_30_110203_update_columns_to_mm_stm_units_table',1),(175,'2022_07_04_143012_add_order_seq_column_to_mm_exh_codishots_table',1),(176,'2022_07_04_154319_add_column_punched_at_to_mm_stm_punch_tables',1),(177,'2022_07_05_094051_add_paying_token_column_to_mm_ord_payment_items_table',1),(178,'2022_07_07_090650_add_colunm_pack_id_to_mm_stm_punch_shipping_prices_table',1),(179,'2022_07_08_152309_create_mm_ord_pack_initial_shipping_prices_table',1),(180,'2022_07_11_153431_add_is_timeattack_ coupon_sale_column_to_mm_gds_item_add_info_table',1),(181,'2022_07_11_161721_update_unit_id_column_to_tables',1),(182,'2022_07_12_093850_update_columns_to_mm_stm_punch_fake_releases_table',1),(183,'2022_07_12_100021_add_is_initial_shipping_price_refunded_column_to_mm_ord_packs_table',1),(184,'2022_07_12_113729_create_mm_mem_policy_agrees_table',1),(185,'2022_07_12_113836_create_mm_mem_adult_verifications_table',1),(186,'2022_07_14_105035_create_mm_shp_ranking_brand_table',1),(187,'2022_07_15_094842_add_desc_columns_to_mm_gds_item_shopping_info_table',1),(188,'2022_07_22_111644_change_column_to_mm_mem_edit_logs_table',1),(189,'2022_07_22_135355_add_shipping_price_columns_to_mm_ord_exchanges_table',1),(190,'2022_07_26_134945_add_columns_to_mm_stm_punch_sellings_table',1),(191,'2022_07_27_092235_add_columns_to_mm_stm_punch_selling_correction_logs_table',1),(192,'2022_07_28_144239_rename_penalty_id_to_punch_penalty_logs_tables',1),(193,'2022_08_01_145559_add_rgb_code_column_to_mm_mem_grades_table',1),(194,'2022_08_01_170140_add_column_release_id_to_mm_pnt_fake_releases_table',1),(195,'2022_08_08_170217_create_mm_stm_punch_selling_correction_logs_by_bundle_table',1),(196,'2022_08_09_143904_update_code_length_to_mm_scm_menus_table',1),(197,'2022_08_10_155200_add_columns_to_mm_stm_punch_sellings_table',1),(198,'2022_08_13_200909_alter_columns_to_mm_stm_punch_selling_correction_logs_by_bundle_table',1),(199,'2022_08_16_121847_add_columns_to_mm_stm_punch_selling_correction_logs_by_bundle_table',1),(200,'2022_08_17_104711_create_mm_exh_ranking_categories',1),(201,'2022_08_17_105011_create_mm_exh_ranking_category_map_gds_item_category',1),(202,'2022_08_17_113258_modify_mm_exh_ranking_goods_order_records_table_category_columns',1),(203,'2022_08_17_113447_modify_mm_exh_ranking_goods_wish_records_table_category_columns',1),(204,'2022_08_17_113513_modify_mm_exh_ranking_goods_view_records_table_category_columns',1),(205,'2022_08_17_114311_add_ranking_category_id_to_mm_shp_ranking_goods_order_table',1),(206,'2022_08_17_114338_add_ranking_category_id_to_mm_shp_ranking_goods_view_table',1),(207,'2022_08_17_114357_add_ranking_category_id_to_mm_shp_ranking_goods_wish_table',1),(208,'2022_08_18_113743_create_mm_stm_unit_tax_reports_table',1),(209,'2022_08_18_145340_remove_best_goods_id_concat_all_column_from_mm_shp_ranking_brand_table',1),(210,'2022_08_19_163543_modify_column_name_to_mm_mm_ord_exchange_targets_table',1),(211,'2022_08_19_163808_rename_column_depth_to_mm_gds_origins_table',1),(212,'2022_08_19_164159_modify_column_name_to_mm_ord_returns_table',1),(213,'2022_08_25_110646_change_name_column_size_to_mm_adm_managers_table',1),(214,'2022_08_30_115840_change_amount_column_size_to_mm_mem_points_table',1),(215,'2022_08_30_120049_change_amount_column_size_to_mm_mem_point_details_table',1),(216,'2022_08_31_101453_add_code_column_to_mm_gds_special_attribute_templates_table',1),(217,'2022_08_31_140944_change_amount_column_size_to_mm_prm_base_coupons_table',1),(218,'2022_09_01_093225_create_mm_exh_lego_pages',1),(219,'2022_09_01_093353_create_mm_exh_lego_containers',1),(220,'2022_09_01_093410_create_mm_exh_lego_blocks',1),(221,'2022_09_01_094637_create_mm_exh_lego_tabs',1),(222,'2022_09_01_094652_create_mm_exh_lego_banners',1),(223,'2022_09_01_094710_create_mm_exh_lego_goods_groups',1),(224,'2022_09_01_094726_create_mm_exh_lego_goods',1),(225,'2022_09_01_112130_change_amount_cloumn_size_to_mm_prm_extra_coupons_table',1),(226,'2022_09_01_112436_change_amount_column_size_to_mm_prm_immediately_sales_table',1),(227,'2022_09_01_112605_change_amount_column_size_to_mm_prm_night_sales_table',1),(228,'2022_09_02_151609_extend_column_sizes_to_mm_sta_points_table',1),(229,'2022_09_02_155437_add_columns_to_mm_gds_item_add_info_table',1),(230,'2022_09_02_164714_create_mm_ord_shipping_to_changes_table',1),(231,'2022_09_05_142131_add_gender_for_shoes_column_to_mm_mem_personalizations_table',1),(232,'2022_09_06_151346_create_mm_stm_unit_tax_report_by_days_table',1),(233,'2022_09_08_093050_create_mm_prm_affiliate_except_goods_table',1),(234,'2022_09_14_094432_add_discount_amount_column_to_mm_prm_affiliate_except_goods_table',1),(235,'2022_09_14_135918_create_mm_prm_affiliate_except_goods_apply_affiliates_table',1),(236,'2022_09_14_164434_create_mm_sta_delivered_days_table',1),(237,'2022_09_16_103604_add_root_category_code_column_to_mm_exh_ranking_goods_view_records_table',1),(238,'2022_09_16_103732_add_root_category_code_column_to_mm_exh_ranking_goods_order_records_table',1),(239,'2022_09_16_103806_add_root_category_code_column_to_mm_exh_ranking_goods_wish_records_table',1),(240,'2022_09_29_095604_add_partnershop_option_id_column_to_mm_gds_options_table',1),(241,'2022_10_05_101446_add_index_to_mm_gds_in_stock_notify_units_table',1),(242,'2022_10_05_101627_add_index_to_mm_gds_in_stock_notify_unit_requests_table',1),(243,'2022_10_17_113942_add_order_id_column_to_mm_exh_raffle_enter_members_table',1),(244,'2022_10_17_145751_create_mm_mem_member_my_pay_regists_table',1),(245,'2022_10_17_222600_add_index_to_mm_exh_lego_pages',1),(246,'2022_10_17_222615_add_index_to_mm_exh_lego_blocks',1),(247,'2022_10_17_222629_add_index_to_mm_exh_lego_banners',1),(248,'2022_10_17_222643_add_index_to_mm_exh_lego_tabs',1),(249,'2022_10_17_222655_add_index_to_mm_exh_lego_goods_groups',1),(250,'2022_10_17_222735_delete_columns_and_add_index_to_mm_exh_lego_goods',1),(251,'2022_10_19_161807_add_exempt_shipping_price_resolvable_column_to_mm_ord_packs_table',1),(252,'2022_10_28_102641_create_mm_gds_item_recent_sorts_table',1),(253,'2022_10_28_151218_add_option_json_to_mm_exh_lego_blocks',1),(254,'2022_10_31_172816_add_column_delivered_count_to_mm_sta_delivered_days_table',1),(255,'2022_11_02_135346_remove_column_eco_type_to_mm_gds_items_table',1),(256,'2022_11_09_104907_separation_colum_titles_to_mm_exh_lego_blocks',1),(257,'2022_11_24_151202_add_order_id_column_to_mm_exh_joint_purchase_applied_members_table',1),(258,'2022_11_30_112510_add_drag_image_count_index_to_mm_gds_items_table',1),(259,'2022_12_01_161925_add_ordered_at_index_to_mm_ord_orders_table',1),(260,'2022_12_08_095805_change_value_column_to_mm_api_goods_partnershop_values',1),(261,'2022_12_08_145405_add_banner_text_column_to_mm_exh_timesales',1),(262,'2022_12_12_160825_create_mm_api_goods_partnershop_logs_table',1),(263,'2022_12_13_092859_create_mm_api_order_partnershop_logs_table',1),(264,'2022_12_13_093028_create_mm_api_order_cancel_partnershop_logs_table',1),(265,'2022_12_13_094610_create_mm_api_order_return_partnershop_logs_table',1),(266,'2022_12_13_094640_create_mm_api_order_exchange_partnershop_logs_table',1),(267,'2022_12_13_094849_create_mm_api_cs_partnershop_logs_table',1),(268,'2022_12_15_155551_create_mm_api_goods_partnershop_options_mapping',1),(269,'2022_12_19_111500_add_column_mm_api_goods_partnershop_options_mapping',1),(270,'2022_12_19_112846_create_mm_api_goods_partnershop_options_mapping_fail',1),(271,'2022_12_20_114616_add_column_partnershop_group_no_to_mm_ord_orders_table',1),(272,'2022_12_21_101839_add_columns_to_mm_api_order_partnershop_logs_table',1),(273,'2022_12_21_114601_create_mm_api_order_collect_partnershop_logs_table',1),(274,'2022_12_21_132227_add_column_partnershop_pack_id_to_mm_ord_packs_table',1),(275,'2022_12_23_092823_add_column_mm_api_goods_partnershop_state',1),(276,'2022_12_23_115507_create_mm_api_goods_partnershop_option_mappings',1),(277,'2022_12_23_115654_create_mm_api_goods_partnershop_option_mapping_fails',1),(278,'2022_12_26_112530_add_latest_comeback_coupon_registed_at_to_mm_mem_system_information',1),(279,'2022_12_27_172811_drop_mm_api_goods_partnershop_states',1),(280,'2022_12_27_174028_create_mm_api_goods_partnershop_states',1),(281,'2022_12_28_120319_add_description_to_mm_gds_mandatory_templates',1),(282,'2022_12_30_120026_modify_column_type_to_mm_ord_packs_table',1),(283,'2022_12_30_140749_create_mm_api_goods_category_partnershop_mappings_table',1),(284,'2023_01_02_164447_create_mm_api_shipping_rule_partnershop_logs_table',1),(285,'2023_01_03_143151_add_column_partnershop_rule_id_to_mm_shp_shipping_rules_table',1),(286,'2023_01_03_143347_add_column_partnershop_center_id_to_mm_shp_shipping_centers_table',1),(287,'2023_01_03_151734_create_mm_api_shipping_center_partnershop_logs',1),(288,'2023_01_04_090206_change_column_mm_api_goods_partnershop_option_mappings',1),(289,'2023_01_04_093233_drop_mm_api_logs_dummy_tables',1),(290,'2023_01_04_093923_create_mm_api_goods_category_partnershop_logs_table',1),(291,'2023_01_04_112153_create_mm_api_goods_option_partnershop_mappings_table',1),(292,'2023_01_05_145901_change_column_partnershop_code_to_mm_api_goods_partnershop_logs_table',1),(293,'2023_01_06_100157_create_mm_api_goods_option_partnershop_logs',1),(294,'2023_01_06_145906_add_affiliate_tracking_id_column_to_mm_ord_orders_table',1),(295,'2023_01_06_153836_add_affiliate_access_token_column_to_mm_ord_orders_table',1),(296,'2023_01_09_104738_change_weight_column_to_mm_mem_personalizations',1),(297,'2023_01_10_094200_create_mm_api_seller_partnershop_logs_table',1),(298,'2023_01_10_120308_create_mm_api_partnershop_except_goods_table',1),(299,'2023_01_10_120357_create_mm_api_partnershop_except_sellers_table',1),(300,'2023_01_13_140157_rename_to_mm_api_tables',1),(301,'2023_01_13_145809_create_mm_api_partnershop_except_seller_targets_table',1),(302,'2023_01_16_093254_create_mm_api_partnershop_except_goods_targets_table',1),(303,'2023_01_16_154858_add_is_display_to_mm_gds_option_change_logs',1),(304,'2023_01_16_155405_create_mm_api_partnershop_brand_mappings_table',1),(305,'2023_01_16_164121_create_mm_api_partnershop_brand_logs_table',1),(306,'2023_01_18_112522_add_scm_user_code_to_mm_ord_scm_logs',1),(307,'2023_01_18_113812_add_scm_user_code_to_mm_mem_edit_logs',1),(308,'2023_01_18_162458_add_reserved_user_type_to_mm_gds_item_change_price_reserves',1),(309,'2023_01_19_092147_change_response_code_to_tables',1),(310,'2023_01_19_165353_drop_to_mm_api_goods_partnershop_tables',1),(311,'2023_01_20_111244_change_response_serialize_data_to_mm_api_partnershop_tables',1),(312,'2023_01_26_115938_create_mm_api_partnershop_order_cancel_collect_logs',1),(313,'2023_01_26_134341_add_column_partnershop_cancel_id_to_mm_ord_cancels_table',1),(314,'2023_01_27_152047_add_client_secret_to_mm_adm_sellers',1),(315,'2023_01_27_153948_add_client_secret_to_mm_adm_middle_users',1),(316,'2023_01_30_121953_add_columns_to_mm_api_partnershop_order_cancel_logs_table',1),(317,'2023_01_31_113747_drop_and_modify_mm_api_partnershop_tables',1),(318,'2023_01_31_120250_drop_column_partnershop_code_to_mm_api_partnershop_goods_logs_table',1),(319,'2023_01_31_135811_add_approval_state_to_mm_exh_planning_events',1),(320,'2023_02_01_095519_create_mm_api_partnershop_order_return_collect_logs_table',1),(321,'2023_02_01_103350_add_columns_partnershop_return_id_to_mm_ord_returns_table',1),(322,'2023_02_01_141242_rename_columns_to_mm_api_partnershop_order_return_logs_table',1),(323,'2023_02_02_090924_create_mm_api_partnershop_order_exchange_collect_logs_table',1),(324,'2023_02_02_110207_add_columns_partnershop_exchange_id_to_mm_ord_exchanges_table',1),(325,'2023_02_02_115447_rename_columns_to_mm_api_partnershop_order_exchange_logs_table',1),(326,'2023_02_02_153516_create_mm_api_partnershop_goods_to_batches_table',1),(327,'2023_02_06_092420_add_columns_to_mm_api_partnershop_goods_to_batches_table',1),(328,'2023_02_07_101433_add_columns_to_mm_ord_items_table',1),(329,'2023_02_07_141056_create_mm_sta_ep_goods_count_by_affiliates_table',1),(330,'2023_02_08_112423_create_mm_sta_naver_cps_table',1),(331,'2023_02_09_110829_update_return_columns_to_mm_api_partnershop_goods_logs_table',1),(332,'2023_02_09_151723_create_mm_api_partnershop_cs_qna_collect_logs_table',1),(333,'2023_02_13_133923_update_to_mm_api_partnershop_cs_logs_table',1),(334,'2023_02_13_143646_add_temp_mapping_option_id_to_mm_gds_options',1),(335,'2023_02_17_121139_add_column_method_code_mm_api_partnershop_logs_tables',1),(336,'2023_02_20_100917_rename_columns_to_mm_api_partnershop_order_logs_table',1),(337,'2023_02_20_142918_create_mm_mkt_unsubscribe_sms_table',1),(338,'2023_02_23_135429_add_column_partnershop_order_id_to_mm_ord_returns_table',1),(339,'2023_02_23_135731_rename_temp_mapping_id_column_to_mm_gds_items_table',1),(340,'2023_02_23_135919_rename_temp_mapping_id_column_to_mm_gds_options_table',1),(341,'2023_02_24_115856_update_column_result_code_mm_api_partnershop_tabels',1),(342,'2023_02_27_141942_create_table_mm_shp_bulk_message_templates',1),(343,'2023_02_27_160836_add_middle_user_id_to_mm_shp_shipping_rules',1),(344,'2023_02_27_171944_create_mm_shp_shipping_rule_basic_by_sellers',1),(345,'2023_02_28_095146_update_column_result_code_to_mm_api_partnershop_cs_qna_logs_table',1),(346,'2023_02_28_095703_drop_is_basic_template_to_mm_shp_shipping_rules',1),(347,'2023_02_28_121615_create_mm_api_partnershop_statistics_logs',1),(348,'2023_03_02_114658_add_middle_user_id_to_mm_shp_shipping_centers',1),(349,'2023_03_03_140737_remove_seller_id_to_mm_ord_packs',1),(350,'2023_03_03_143620_remove_seller_id_to_mm_ord_refunds',1),(351,'2023_03_07_114705_create_table_mm_shp_bulk_message_log',1),(352,'2023_03_10_092054_create_mm_exh_spot_themes_table',1),(353,'2023_03_10_092433_create_mm_exh_spot_theme_templates_table',1),(354,'2023_03_10_092633_create_mm_exh_spot_theme_goods_table',1),(355,'2023_03_16_150332_add_column_partnershop_order_id_to_mm_ord_exchanges_table',1),(356,'2023_03_17_112056_add_column_div_to_mm_adm_middle_user_details',1),(357,'2023_03_17_112653_add_column_div_to_mm_adm_seller_details',1),(358,'2023_03_17_141518_add_column_delivery_div_to_mm_shp_shipping_rules',1),(359,'2023_03_17_153019_update_column_purchase_point_rate_to_mm_shp_point_rules_table',1),(360,'2023_03_17_161447_update_column_purchase_point_rate_to_mm_mem_grades_table',1),(361,'2023_03_20_142858_change_columns_to_mm_api_partnershop_order_exchange_logs_table',1),(362,'2023_03_20_154248_create_mm_exh_top_banners_table',1),(363,'2023_03_21_105211_remove_delivery_div_to_mm_shp_shipping_rules',1),(364,'2023_03_21_121309_create_mm_exh_right_wing_banners_table',1),(365,'2023_03_22_113302_add_grade_holding_end_date_to_mm_mem_member_details',1),(366,'2023_03_22_150813_change_seller_id_to_mm_sta_delivered_days',1),(367,'2023_03_23_143421_update_column_mm_shp_bulk_message_tables',1),(368,'2023_03_24_143450_add_columns_to_mm_api_partnershop_goods_to_batches_table',1),(369,'2023_03_24_150258_add_index_partnershop_goods_id_to_mm_gds_items_table',1),(370,'2023_03_29_120202_nullable_middle_user_column_to_mm_api_partnershop_order_logs_table',1),(371,'2023_03_29_133719_nullable_middle_user_column_to_mm_api_partnershop_order_cancel_logs_table',1),(372,'2023_03_29_134339_nullable_middle_user_column_to_mm_api_partnershop_order_return_logs_table',1),(373,'2023_03_31_093153_remove_cache_type_column_to_mm_exh_special_events_table',1),(374,'2023_03_31_114009_add_has_image_column_to_mm_shp_brands_table',1),(375,'2023_03_31_155752_add_column_recanted_at_to_mm_ord_cancel_targets_table',1),(376,'2023_04_06_155923_is_editable_to_mm_bod_goods_reviews',1),(377,'2023_04_07_144155_modify_column_type_to_mm_exh_spot_theme_templates_table',1),(378,'2023_04_07_144809_modify_column_type_to_mm_exh_spot_theme_goods_table',1),(379,'2023_04_10_105649_add_ci_di_to_mm_mem_withdraws',1),(380,'2023_04_14_190947_create_mm_ord_transferred_confirm_purchase_to_naverpay',1),(381,'2023_04_17_091939_add_aggregate_date_column_to_mm_sta_naver_cps_table',1),(382,'2023_04_17_122851_add_columns_to_mm_shp_brands_table',1),(383,'2023_04_17_133402_create_mm_shp_brand_recommend_goods_table',1),(384,'2023_04_17_133834_create_table_mm_exh_onedepth',1),(385,'2023_04_17_161526_update_transferred_at_to_mm_ord_transferred_confirm_purchase_to_naverpay',1),(386,'2023_04_25_144723_create_mm_shp_bulk_message_receivers',1),(387,'2023_04_27_093354_add_column_partnershop_relation_cancel_id_to_mm_ord_cancels_table',1),(388,'2023_05_02_154900_add_column_to_mm_sta_order_by_sellers',1),(389,'2023_05_03_183314_add_index_method_code_to_mm_ord_payment_items_table',1),(390,'2023_05_11_115248_2023_05_11_update_table_mm_exh_onedepth',1),(391,'2023_05_18_165947_update_column_shipping_to_detail_address_to_mm_ord_orders_table',1),(392,'2023_05_24_113756_add_column_mm_shp_bulk_message_receivers',1),(393,'2023_05_25_151711_add_column_email_to_mm_stm_units_table',1),(394,'2023_05_30_162643_create_mm_shp_environments_table',1),(395,'2023_06_02_151047_create_mm_stm_punch_shipping_price_correction_logs_table',1),(396,'2023_06_07_172022_add_is_display_to_mm_sta_delivered_days',1),(397,'2023_06_12_144713_update_columns_to_mm_gds_info_change_logs_table',1),(398,'2023_06_12_165417_add_columns_to_mm_stm_punch_shipping_prices_table',1),(399,'2023_06_14_085821_change_column_ip_to_mm_ord_orders_table',1),(400,'2023_06_15_135313_add_columns_to_mm_sta_order_by_affiliates',1),(401,'2023_06_19_115526_modify_column_comment_to_mm_csc_qna_table',1),(402,'2023_06_22_145519_create_mm_csc_cs_notification_order_items_table',1),(403,'2023_06_30_121623_drop_column_order_item_id_to_mm_csc_cs_notifications_table',1),(404,'2023_06_30_142130_create_mm_csc_qna_order_items_table',1),(405,'2023_07_03_085737_add_column_partnershop_retrieve_shipping_price_pay_message_to_mm_ord_returns_table',1),(406,'2023_07_03_101029_add_column_partnershop_partnershop_retrieve_and_release_shipping_price_pay_message_to_mm_ord_exchanges_table',1),(407,'2023_07_04_161524_drop_column_order_item_id_to_mm_csc_qna_table',1),(408,'2023_07_10_164231_tax_free_shipping_price_to_mm_ord_packs',1),(409,'2023_07_19_093932_add_confirmed_at_to_mm_stm_units',1),(410,'2023_07_27_112907_create_table_mm_shp_bulk_message_update_log',1),(411,'2023_07_28_093332_add_column_to_mm_shp_bulk_message_log',1),(412,'2023_08_01_102815_add_index_order_item_id_to_mm_csc_cs_notification_order_items_table',1),(413,'2023_08_01_103127_add_index_order_item_id_to_mm_csc_qna_order_items_table',1),(414,'2023_08_04_094202_add_confirm_process_status_column_to_mm_stm_units_table',1),(415,'2023_08_04_143108_modify_confirm_process_status_column_to_mm_stm_units_table',1),(416,'2023_08_08_141643_change_column_mm_shp_brands',1),(417,'2023_08_08_154422_change_column_mm_exh_top_banners',1),(418,'2023_08_09_142333_change_column_mm_exh_onedepth_banner',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_adm_managers`
--

DROP TABLE IF EXISTS `mm_adm_managers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_adm_managers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '고유코드',
  `code` char(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '일련번호 (1000000x)',
  `login_id` varchar(35) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '회원 아이디',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '회원 비밀번호',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '관리자명',
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '이메일 주소',
  `enc_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '암호화된 휴대전화번호',
  `recent_logged_in_at` datetime DEFAULT NULL COMMENT '마지막 방문일',
  `fail_count` int unsigned NOT NULL DEFAULT '0' COMMENT '로그인실패 횟수',
  `div` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'SA' COMMENT '관리자 상세 분류 (SA: 최고관리자, MD: MD담당자)',
  `auth_template_id` bigint unsigned DEFAULT NULL COMMENT '관리자 권한 그룹 고유번호(mm_mem_adauth_group.id)',
  `is_active` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '계정 활성화여부 (1:활성화 상태, 0:비활성화 상태)',
  `state` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active' COMMENT '근무 상태(active: 재직, leave: 휴직, resignation: 퇴사)',
  `department_id` bigint unsigned DEFAULT NULL COMMENT '부서 키',
  `entry_at` datetime DEFAULT NULL COMMENT '입사일',
  `resignation_at` datetime DEFAULT NULL COMMENT '퇴사일',
  `created_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '등록 유저',
  `updated_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '수정 유저',
  `deleted_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '삭제 유저',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '등록 일시',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정 일시',
  `deleted_at` datetime DEFAULT NULL COMMENT '삭제 일시 (soft delete)',
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'laravel auth token 지정칼럼',
  `certification_date` datetime DEFAULT NULL COMMENT '문자 인증 일시',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code_unique` (`code`),
  KEY `login_id_index` (`login_id`),
  KEY `created_at_index` (`created_at`),
  KEY `certification_date_index` (`certification_date`),
  KEY `is_active_index` (`is_active`),
  KEY `state_index` (`state`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='최고(MD)관리자 기본 정보';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_adm_managers`
--

LOCK TABLES `mm_adm_managers` WRITE;
/*!40000 ALTER TABLE `mm_adm_managers` DISABLE KEYS */;
INSERT INTO `mm_adm_managers` VALUES (1,'10000001','mmonstar','$2y$10$7fWPefa2YJKIpB0L.M79BeNZZ1/.RvmoEDIncrTg5d5uAfF4Ulg4G','최고관리자',NULL,NULL,NULL,0,'SA',1,0,'active',NULL,NULL,NULL,'SYSTEM(INSTALL)','','','2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL);
/*!40000 ALTER TABLE `mm_adm_managers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_adm_middle_user_contacts`
--

DROP TABLE IF EXISTS `mm_adm_middle_user_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_adm_middle_user_contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '거래처 담당자 고유키',
  `middle_user_id` bigint unsigned NOT NULL COMMENT '일반관리자 id mm_adm_middle_users.id',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '이름',
  `type` tinyint unsigned NOT NULL COMMENT '담당자 유형 1: 계약, 2: 정산, 3: 영업, 4: CS',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '이메일',
  `tel` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '연락처',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `middle_user_id_index` (`middle_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_adm_middle_user_contacts`
--

LOCK TABLES `mm_adm_middle_user_contacts` WRITE;
/*!40000 ALTER TABLE `mm_adm_middle_user_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_adm_middle_user_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_adm_middle_user_contract_logs`
--

DROP TABLE IF EXISTS `mm_adm_middle_user_contract_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_adm_middle_user_contract_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '계약 수정 로그 고유키',
  `middle_user_id` bigint unsigned NOT NULL COMMENT '중간 관리자 고유키(mm_adm_middle_users.id)',
  `before_contract_type` tinyint unsigned NOT NULL COMMENT '변경 전 계약 상태 (0: 대기, 1: 승인, 2: 보류, 9: 종료)',
  `after_contract_type` tinyint unsigned NOT NULL COMMENT '변경 후 계약 상태 (0: 대기, 1: 승인, 2: 보류, 9: 종료)',
  `modifier_name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '변경자 이름',
  `modifier_login_id` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '변경자 id(로그인에 사용하는 아이디)',
  `modifier_id` bigint unsigned NOT NULL COMMENT '변경자 고유키(mm_adm_*_USER.id)',
  `modifier_ip_address` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '변경주체의 IP 주소',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '로그생성일시',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='중간 관리자 계약 수정 로그';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_adm_middle_user_contract_logs`
--

LOCK TABLES `mm_adm_middle_user_contract_logs` WRITE;
/*!40000 ALTER TABLE `mm_adm_middle_user_contract_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_adm_middle_user_contract_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_adm_middle_user_contract_memos`
--

DROP TABLE IF EXISTS `mm_adm_middle_user_contract_memos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_adm_middle_user_contract_memos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '계약 메모 고유키',
  `middle_user_id` bigint unsigned NOT NULL COMMENT '중간 관리자 고유키(mm_adm_middle_users.id)',
  `memo` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '비고',
  `created_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '등록자',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '등록일시',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `middle_user_id_index` (`middle_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='중간 관리자 계약 관리 메모';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_adm_middle_user_contract_memos`
--

LOCK TABLES `mm_adm_middle_user_contract_memos` WRITE;
/*!40000 ALTER TABLE `mm_adm_middle_user_contract_memos` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_adm_middle_user_contract_memos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_adm_middle_user_details`
--

DROP TABLE IF EXISTS `mm_adm_middle_user_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_adm_middle_user_details` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `middle_user_id` bigint unsigned NOT NULL COMMENT '일반관리자 id mm_adm_middle_users.id',
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '이메일 (암호화)',
  `zip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '우편번호',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '주소',
  `address_detail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '상세 주소 (암호화)',
  `tel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '전화번호 (암호화)',
  `bank_owner` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '예금주명 (암호화)',
  `bank_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '은행코드',
  `bank_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '계좌번호 (암호화)',
  `business_div` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '사업자유형(P:개인(일반과세자) S: 개인(간이과세자) R:법인사업자 E:면세사업자)',
  `div` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '구분',
  `ceo_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '대표자명',
  `business_status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '업태',
  `business_category` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '업종',
  `business_number` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '사업자등록번호(10자리 -제외)',
  `corporation_number` varchar(13) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '법인등록번호 (13자리 -제외)',
  `created_user` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '생성자',
  `updated_user` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '수정자',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '생성 일시',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '수정 일시',
  `deleted_at` datetime DEFAULT NULL COMMENT '삭제일시 (softDeletes)',
  `contract_state` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '계약 상태 (0: 대기, 1: 승인, 2: 보류, 9: 종료)',
  `contract_manager_id` bigint unsigned DEFAULT NULL COMMENT '계약 담당자 id (mm_adm_managers.id)',
  `contract_approved_at` datetime DEFAULT NULL COMMENT '계약 승일일시',
  `contract_hold_at` datetime DEFAULT NULL COMMENT '계약 보류일시',
  `contract_ended_at` datetime DEFAULT NULL COMMENT '계약 종료일시',
  `settled_deposit_month_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '정산된 금액 입금 예정월 타입(C: 당월 / N: 익월)',
  `settled_deposit_day` int DEFAULT NULL COMMENT '정산된 금액 입금 예정일',
  PRIMARY KEY (`id`),
  KEY `createdat_index` (`created_at`),
  KEY `middleuserid_index` (`middle_user_id`),
  KEY `deletedat_index` (`deleted_at`),
  KEY `contract_state_index` (`contract_state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='중간관리자 상세 테이블';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_adm_middle_user_details`
--

LOCK TABLES `mm_adm_middle_user_details` WRITE;
/*!40000 ALTER TABLE `mm_adm_middle_user_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_adm_middle_user_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_adm_middle_users`
--

DROP TABLE IF EXISTS `mm_adm_middle_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_adm_middle_users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '고유번호',
  `code` char(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '중간관리자 코드',
  `login_id` varchar(35) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '회원 아이디',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '회원 비밀번호',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '이름',
  `recent_logged_in_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '마지막 방문일',
  `fail_count` int NOT NULL DEFAULT '0' COMMENT '로그인실패 횟수',
  `use_dedicated_return` tinyint NOT NULL DEFAULT '0' COMMENT '전담반품 사용여부',
  `created_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '등록 사용자',
  `updated_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '수정 사용자',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '등록 일시',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '수정 일시',
  `deleted_at` datetime DEFAULT NULL COMMENT '삭제일시 (softDeletes)',
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'laravel auth token 지정칼럼',
  `certification_date` datetime DEFAULT NULL COMMENT '문자 인증 일시',
  `client_secret_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'API SECRET KEY',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code_unique` (`code`),
  KEY `login_id_index` (`login_id`),
  KEY `createdat_index` (`created_at`),
  KEY `deleted_at_index` (`deleted_at`),
  KEY `certification_date_index` (`certification_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='중간관리자(중간관리자) 기본 정보';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_adm_middle_users`
--

LOCK TABLES `mm_adm_middle_users` WRITE;
/*!40000 ALTER TABLE `mm_adm_middle_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_adm_middle_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_adm_seller_details`
--

DROP TABLE IF EXISTS `mm_adm_seller_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_adm_seller_details` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `seller_id` bigint unsigned NOT NULL COMMENT '셀러 id mm_adm_sellers.id',
  `statistics_code` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '000' COMMENT '매출/통계용 분류',
  `goods_gender_group` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'E' COMMENT '상품속성  E:공용, M:남성, F:여성',
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '이메일 (암호화)',
  `zip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '우편번호',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '주소',
  `address_detail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '상세 주소 (암호화)',
  `tel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '전화번호 (암호화)',
  `bank_owner` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '예금주명 (암호화)',
  `bank_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '은행코드',
  `bank_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '계좌번호 (암호화)',
  `business_div` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '사업자유형(P:개인(일반과세자) S: 개인(간이과세자) R:법인사업자 E:면세사업자)',
  `div` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '구분',
  `ceo_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '대표자명',
  `business_status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '업태',
  `business_category` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '업종',
  `business_number` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '사업자등록번호(10자리 -제외)',
  `corporation_number` varchar(13) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '법인등록번호 (13자리 -제외)',
  `margin_ratio` decimal(5,4) NOT NULL DEFAULT '0.0000' COMMENT '마진율 (0.1234 = 12.34%)',
  `discount_ratio` tinyint NOT NULL DEFAULT '0' COMMENT '1차할인율 (마진율 >= 할인율)',
  `mall_charge_ratio` tinyint NOT NULL DEFAULT '0' COMMENT '할인부담율 (본사)',
  `brand_charge_ratio` tinyint NOT NULL DEFAULT '0' COMMENT '할인부담율 (브랜드관리자)',
  `use_api` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '연동제휴사 json',
  `is_use_dedicated_return` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '전담반품사용여부',
  `is_use_global_shipping` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '해외배송 여부',
  `average_global_shipping_term_from` int NOT NULL DEFAULT '0' COMMENT '해외배송 평균배송일 from',
  `average_global_shipping_term_to` int NOT NULL DEFAULT '0' COMMENT '해외배송 평균배송일 to',
  `global_shipping_modify_date` datetime DEFAULT NULL COMMENT '해외배송 수정일',
  `is_use_custom_goods` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '주문제작 여부',
  `custom_goods_shipping_term` int NOT NULL DEFAULT '0' COMMENT '주문제작 배송기간',
  `custom_goods_modify_date` datetime DEFAULT NULL COMMENT '주문제작 수정일',
  `is_apply_penalty` tinyint unsigned NOT NULL DEFAULT '1' COMMENT '페널티 적용여부 0:페널티 미적용, 1:페널티 적용',
  `created_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '수정자',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '생성 일시',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '수정 일시',
  `deleted_at` datetime DEFAULT NULL COMMENT '삭제일시 (softDeletes)',
  PRIMARY KEY (`id`),
  KEY `createdat_index` (`created_at`),
  KEY `sellerid_index` (`seller_id`),
  KEY `deletedat_index` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='셀러 상세 정보 테이블';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_adm_seller_details`
--

LOCK TABLES `mm_adm_seller_details` WRITE;
/*!40000 ALTER TABLE `mm_adm_seller_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_adm_seller_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_adm_sellers`
--

DROP TABLE IF EXISTS `mm_adm_sellers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_adm_sellers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '고유번호',
  `middle_user_id` bigint unsigned NOT NULL COMMENT '일반관리자 고유번호 middle_user.id',
  `md_id` bigint unsigned DEFAULT NULL COMMENT '담당 MD 키',
  `brand_id` bigint unsigned DEFAULT NULL COMMENT '기본 진열브랜드 키',
  `code` char(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '셀러 코드',
  `login_id` varchar(35) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '회원 아이디',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '회원 비밀번호',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '이름',
  `recent_logged_in_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '마지막 방문일',
  `fail_count` int NOT NULL DEFAULT '0' COMMENT '로그인실패 횟수',
  `size_image_count` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '판매자별 사이즈 조견표 이미지 갯수',
  `created_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '등록 사용자',
  `updated_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '수정 사용자',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '등록 일시',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '수정 일시',
  `deleted_at` datetime DEFAULT NULL COMMENT '삭제일시 (softDeletes)',
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'laravel auth token 지정칼럼',
  `certification_date` datetime DEFAULT NULL COMMENT '문자 인증 일시',
  `client_secret_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'API SECRET KEY',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code_unique` (`code`),
  KEY `created_at_index` (`created_at`),
  KEY `deleted_at_index` (`deleted_at`),
  KEY `login_id_index` (`login_id`),
  KEY `certification_date_index` (`certification_date`),
  KEY `middle_user_id_index` (`middle_user_id`),
  KEY `md_id_index` (`md_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='셀러(브랜드)관리자 기본 정보';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_adm_sellers`
--

LOCK TABLES `mm_adm_sellers` WRITE;
/*!40000 ALTER TABLE `mm_adm_sellers` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_adm_sellers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_api_partnershop_brand_logs`
--

DROP TABLE IF EXISTS `mm_api_partnershop_brand_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_api_partnershop_brand_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `method_code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '처리 구분코드 enum@Partnershop/MethodCode',
  `endpoint` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '엔드포인트',
  `request_serialize_data` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'HTTP 요청 직렬화 데이터',
  `response_serialize_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'HTTP 응답 직렬화 데이터',
  `response_code` int unsigned DEFAULT NULL COMMENT 'HTTP 응답 코드',
  `result_success` tinyint(1) NOT NULL COMMENT '성공 여부',
  `result_code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '결과 코드',
  `result_message` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '결과 메시지',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mm_api_partnershop_brand_logs_endpoint_index` (`endpoint`),
  KEY `mm_api_partnershop_brand_logs_result_success_index` (`result_success`),
  KEY `mm_api_partnershop_brand_logs_method_code_index` (`method_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_api_partnershop_brand_logs`
--

LOCK TABLES `mm_api_partnershop_brand_logs` WRITE;
/*!40000 ALTER TABLE `mm_api_partnershop_brand_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_api_partnershop_brand_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_api_partnershop_brand_mappings`
--

DROP TABLE IF EXISTS `mm_api_partnershop_brand_mappings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_api_partnershop_brand_mappings` (
  `mall_brand_id` bigint unsigned NOT NULL COMMENT '자사몰 브랜드 고유번호(mm_shp_brands.id)',
  `partnershop_brand_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '파트너샵 브랜드 고유번호',
  `partnershop_brand_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '파트너샵 브랜드명',
  `sync_status` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '연동상태 enum@PartnershopApi/BrandMappingSyncStatusCode',
  `updated_user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '수정자',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `mm_api_partnershop_brand_mappings_mall_brand_id_index` (`mall_brand_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_api_partnershop_brand_mappings`
--

LOCK TABLES `mm_api_partnershop_brand_mappings` WRITE;
/*!40000 ALTER TABLE `mm_api_partnershop_brand_mappings` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_api_partnershop_brand_mappings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_api_partnershop_cs_qna_collect_logs`
--

DROP TABLE IF EXISTS `mm_api_partnershop_cs_qna_collect_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_api_partnershop_cs_qna_collect_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `partnershop_code` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '제외 파트너샵 구분코드 enum@Shop/Partnershop',
  `method_code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '처리 구분코드 enum@Partnershop/MethodCode',
  `endpoint` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '엔드포인트',
  `request_serialize_data` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'HTTP 요청 직렬화 데이터',
  `response_serialize_data` longtext COLLATE utf8mb4_unicode_ci COMMENT 'HTTP 응답 직렬화 데이터',
  `response_code` int unsigned DEFAULT NULL COMMENT 'HTTP 응답 코드',
  `result_success` tinyint(1) NOT NULL COMMENT '성공 여부',
  `result_code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '결과 코드',
  `result_message` mediumtext COLLATE utf8mb4_unicode_ci COMMENT '결과 메시지',
  `mall_qna_id` bigint unsigned DEFAULT NULL COMMENT '자사몰 상품 문의 번호',
  `partnershop_qna_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '제휴사 상품 문의 번호',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mm_api_partnershop_cs_qna_collect_logs_method_code_index` (`method_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_api_partnershop_cs_qna_collect_logs`
--

LOCK TABLES `mm_api_partnershop_cs_qna_collect_logs` WRITE;
/*!40000 ALTER TABLE `mm_api_partnershop_cs_qna_collect_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_api_partnershop_cs_qna_collect_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_api_partnershop_cs_qna_logs`
--

DROP TABLE IF EXISTS `mm_api_partnershop_cs_qna_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_api_partnershop_cs_qna_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `partnershop_code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '대상 파트너샵 구분코드 enum@Shop/Partnershop',
  `method_code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '처리 구분코드 enum@Partnershop/MethodCode',
  `endpoint` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '엔드포인트',
  `request_serialize_data` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'HTTP 요청 직렬화 데이터',
  `response_serialize_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'HTTP 응답 직렬화 데이터',
  `response_code` int unsigned DEFAULT NULL COMMENT 'HTTP 응답 코드',
  `result_success` tinyint(1) NOT NULL COMMENT '성공 여부',
  `result_code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '결과 코드',
  `result_message` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '결과 메시지',
  `mall_qna_id` bigint unsigned DEFAULT NULL COMMENT '자사몰 문의 번호',
  `partnershop_qna_id` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '제휴사 문의 번호',
  `middle_user_id` bigint unsigned NOT NULL COMMENT '중간관리자 고유번호',
  `seller_id` bigint unsigned NOT NULL COMMENT '셀러 고유번호',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mm_api_cs_partnershop_logs_partnershop_code_index` (`partnershop_code`),
  KEY `mm_api_cs_partnershop_logs_endpoint_index` (`endpoint`),
  KEY `mm_api_cs_partnershop_logs_result_success_index` (`result_success`),
  KEY `mm_api_cs_partnershop_logs_middle_user_id_index` (`middle_user_id`),
  KEY `mm_api_cs_partnershop_logs_seller_id_index` (`seller_id`),
  KEY `mm_api_partnershop_cs_logs_mall_qna_id_index` (`mall_qna_id`),
  KEY `mm_api_partnershop_cs_qna_logs_method_code_index` (`method_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_api_partnershop_cs_qna_logs`
--

LOCK TABLES `mm_api_partnershop_cs_qna_logs` WRITE;
/*!40000 ALTER TABLE `mm_api_partnershop_cs_qna_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_api_partnershop_cs_qna_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_api_partnershop_except_goods`
--

DROP TABLE IF EXISTS `mm_api_partnershop_except_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_api_partnershop_except_goods` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` bigint unsigned NOT NULL COMMENT '상품 고유 번호(mm_gds_items.id)',
  `department_id` bigint unsigned NOT NULL COMMENT '담당 부서 고유번호(mm_scm_departments.id)',
  `reason` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '제외 사유',
  `created_user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '생성주체',
  `updated_user` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '수정주체',
  `deleted_user` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '삭제주체',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mm_api_partnershop_except_goods_goods_id_index` (`goods_id`),
  KEY `mm_api_partnershop_except_goods_department_id_index` (`department_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_api_partnershop_except_goods`
--

LOCK TABLES `mm_api_partnershop_except_goods` WRITE;
/*!40000 ALTER TABLE `mm_api_partnershop_except_goods` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_api_partnershop_except_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_api_partnershop_except_goods_targets`
--

DROP TABLE IF EXISTS `mm_api_partnershop_except_goods_targets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_api_partnershop_except_goods_targets` (
  `except_goods_id` bigint unsigned NOT NULL COMMENT '연동 제외 고유번호(mm_api_partnershop_except_sellers.id)',
  `partnershop_code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '제휴사 코드 enum@Shop/Partnershop'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_api_partnershop_except_goods_targets`
--

LOCK TABLES `mm_api_partnershop_except_goods_targets` WRITE;
/*!40000 ALTER TABLE `mm_api_partnershop_except_goods_targets` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_api_partnershop_except_goods_targets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_api_partnershop_except_seller_targets`
--

DROP TABLE IF EXISTS `mm_api_partnershop_except_seller_targets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_api_partnershop_except_seller_targets` (
  `except_seller_id` bigint unsigned NOT NULL COMMENT '연동 제외 고유번호(mm_api_partnershop_except_sellers.id)',
  `partnershop_code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '제휴사 코드 enum@Shop/Partnershop'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_api_partnershop_except_seller_targets`
--

LOCK TABLES `mm_api_partnershop_except_seller_targets` WRITE;
/*!40000 ALTER TABLE `mm_api_partnershop_except_seller_targets` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_api_partnershop_except_seller_targets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_api_partnershop_except_sellers`
--

DROP TABLE IF EXISTS `mm_api_partnershop_except_sellers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_api_partnershop_except_sellers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `seller_id` bigint unsigned NOT NULL COMMENT '상품 고유 번호(mm_adm_sellers.id)',
  `department_id` bigint unsigned NOT NULL COMMENT '담당 부서 고유번호(mm_scm_departments.id)',
  `reason` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '제외 사유',
  `created_user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '생성주체',
  `updated_user` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '수정주체',
  `deleted_user` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '삭제주체',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mm_api_partnershop_except_sellers_seller_id_index` (`seller_id`),
  KEY `mm_api_partnershop_except_sellers_department_id_index` (`department_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_api_partnershop_except_sellers`
--

LOCK TABLES `mm_api_partnershop_except_sellers` WRITE;
/*!40000 ALTER TABLE `mm_api_partnershop_except_sellers` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_api_partnershop_except_sellers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_api_partnershop_goods_category_logs`
--

DROP TABLE IF EXISTS `mm_api_partnershop_goods_category_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_api_partnershop_goods_category_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `method_code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '처리 구분코드 enum@Partnershop/MethodCode',
  `endpoint` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '엔드포인트',
  `request_serialize_data` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'HTTP 요청 직렬화 데이터',
  `response_serialize_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'HTTP 응답 직렬화 데이터',
  `response_code` int unsigned DEFAULT NULL COMMENT 'HTTP 응답 코드',
  `result_success` tinyint(1) NOT NULL COMMENT '성공 여부',
  `result_code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '결과 코드',
  `result_message` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '결과 메시지',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mm_api_goods_category_partnershop_logs_endpoint_index` (`endpoint`),
  KEY `mm_api_goods_category_partnershop_logs_result_success_index` (`result_success`),
  KEY `mm_api_partnershop_goods_category_logs_method_code_index` (`method_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_api_partnershop_goods_category_logs`
--

LOCK TABLES `mm_api_partnershop_goods_category_logs` WRITE;
/*!40000 ALTER TABLE `mm_api_partnershop_goods_category_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_api_partnershop_goods_category_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_api_partnershop_goods_category_mappings`
--

DROP TABLE IF EXISTS `mm_api_partnershop_goods_category_mappings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_api_partnershop_goods_category_mappings` (
  `mall_category_code` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '카테고리 코드(mm_gds_categories.code)',
  `partnershop_category_code` char(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '파트너샵 카테고리 코드',
  `partnershop_category_full_path` char(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '파트너샵 카테고리 전체 경로',
  `sync_status` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '연동상태 enum@PartnershopApi/CategoryMappingSyncStatusCode',
  `updated_user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '수정자',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  UNIQUE KEY `mall_category_code_unique` (`mall_category_code`),
  KEY `mall_category_code_index` (`mall_category_code`),
  KEY `partnershop_category_code_index` (`partnershop_category_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_api_partnershop_goods_category_mappings`
--

LOCK TABLES `mm_api_partnershop_goods_category_mappings` WRITE;
/*!40000 ALTER TABLE `mm_api_partnershop_goods_category_mappings` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_api_partnershop_goods_category_mappings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_api_partnershop_goods_logs`
--

DROP TABLE IF EXISTS `mm_api_partnershop_goods_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_api_partnershop_goods_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `partnershop_code` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '대상 파트너샵 구분코드 enum@Shop/Partnershop',
  `method_code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '처리 구분코드 enum@Partnershop/MethodCode',
  `endpoint` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '엔드포인트',
  `request_serialize_data` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'HTTP 요청 직렬화 데이터',
  `response_serialize_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'HTTP 응답 직렬화 데이터',
  `response_code` int unsigned DEFAULT NULL COMMENT 'HTTP 응답 코드',
  `result_success` tinyint(1) NOT NULL COMMENT '성공 여부',
  `result_code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '결과 코드',
  `result_message` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '결과 메시지',
  `goods_id` bigint unsigned NOT NULL COMMENT '상품 고유번호',
  `middle_user_id` bigint unsigned NOT NULL COMMENT '중간관리자 고유번호',
  `seller_id` bigint unsigned NOT NULL COMMENT '셀러 고유번호',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mm_api_goods_partnershop_logs_endpoint_index` (`endpoint`),
  KEY `mm_api_goods_partnershop_logs_result_success_index` (`result_success`),
  KEY `mm_api_goods_partnershop_logs_goods_id_index` (`goods_id`),
  KEY `mm_api_goods_partnershop_logs_middle_user_id_index` (`middle_user_id`),
  KEY `mm_api_goods_partnershop_logs_seller_id_index` (`seller_id`),
  KEY `mm_api_partnershop_goods_logs_partnershop_code_index` (`partnershop_code`),
  KEY `mm_api_partnershop_goods_logs_method_code_index` (`method_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_api_partnershop_goods_logs`
--

LOCK TABLES `mm_api_partnershop_goods_logs` WRITE;
/*!40000 ALTER TABLE `mm_api_partnershop_goods_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_api_partnershop_goods_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_api_partnershop_goods_option_logs`
--

DROP TABLE IF EXISTS `mm_api_partnershop_goods_option_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_api_partnershop_goods_option_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `method_code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '처리 구분코드 enum@Partnershop/MethodCode',
  `endpoint` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '엔드포인트',
  `request_serialize_data` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'HTTP 요청 직렬화 데이터',
  `response_serialize_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'HTTP 응답 직렬화 데이터',
  `response_code` int unsigned DEFAULT NULL COMMENT 'HTTP 응답 코드',
  `result_success` tinyint(1) NOT NULL COMMENT '성공 여부',
  `result_code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '결과 코드',
  `result_message` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '결과 메시지',
  `goods_id` bigint unsigned NOT NULL COMMENT '상품 고유 번호',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mm_api_goods_option_partnershop_logs_endpoint_index` (`endpoint`),
  KEY `mm_api_goods_option_partnershop_logs_result_success_index` (`result_success`),
  KEY `mm_api_goods_option_partnershop_logs_goods_id_index` (`goods_id`),
  KEY `mm_api_partnershop_goods_option_logs_method_code_index` (`method_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_api_partnershop_goods_option_logs`
--

LOCK TABLES `mm_api_partnershop_goods_option_logs` WRITE;
/*!40000 ALTER TABLE `mm_api_partnershop_goods_option_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_api_partnershop_goods_option_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_api_partnershop_goods_to_batches`
--

DROP TABLE IF EXISTS `mm_api_partnershop_goods_to_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_api_partnershop_goods_to_batches` (
  `mall_goods_id` bigint unsigned NOT NULL COMMENT '상품 고유번호(mm_gds_items.id)',
  `partnershop_goods_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '제휴사 상품 고유번호',
  `top_banner_content` mediumtext COLLATE utf8mb4_unicode_ci COMMENT '상품 상단 배너 컨텐츠',
  `top_banner_content_index` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '상품 상단 배너 색인용 키(base64_encode(BID:{배너 고유번호}|RANGE:{"TOP 또는 BOTTOM"}|UDT:{수정 timestamp}|BID.....))',
  `bottom_banner_content` mediumtext COLLATE utf8mb4_unicode_ci COMMENT '상품 하단 배너 컨텐츠',
  `bottom_banner_content_index` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '상품 하단 배너 색인용 키(base64_encode(BID:{배너 고유번호}|RANGE:{"TOP 또는 BOTTOM"}|UDT:{수정 timestamp}|BID.....))',
  `sale_reserve_id` bigint unsigned DEFAULT NULL COMMENT '예약 판매 고유번호(mm_gds_item_sale_reserves.id)',
  `sale_reserve_start_at` datetime DEFAULT NULL COMMENT '예약 판매 시작일자',
  `sale_reserve_end_at` datetime DEFAULT NULL COMMENT '예약 판매 종료일자',
  `goods_partnershop_prices` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '제휴사별 전송 판매가 데이터',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  UNIQUE KEY `mm_api_partnershop_goods_to_batches_mall_goods_id_unique` (`mall_goods_id`),
  KEY `mm_api_partnershop_goods_to_batches_mall_goods_id_index` (`mall_goods_id`),
  KEY `mm_api_partnershop_goods_to_batches_top_banner_content_index` (`top_banner_content_index`),
  KEY `mm_api_partnershop_goods_to_batches_bottom_banner_content_index` (`bottom_banner_content_index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_api_partnershop_goods_to_batches`
--

LOCK TABLES `mm_api_partnershop_goods_to_batches` WRITE;
/*!40000 ALTER TABLE `mm_api_partnershop_goods_to_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_api_partnershop_goods_to_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_api_partnershop_order_cancel_collect_logs`
--

DROP TABLE IF EXISTS `mm_api_partnershop_order_cancel_collect_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_api_partnershop_order_cancel_collect_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `partnershop_code` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '제외 파트너샵 구분코드 enum@Shop/Partnershop',
  `method_code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '처리 구분코드 enum@Partnershop/MethodCode',
  `endpoint` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '엔드포인트',
  `request_serialize_data` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'HTTP 요청 직렬화 데이터',
  `response_serialize_data` longtext COLLATE utf8mb4_unicode_ci COMMENT 'HTTP 응답 직렬화 데이터',
  `response_code` int unsigned DEFAULT NULL COMMENT 'HTTP 응답 코드',
  `result_success` tinyint(1) NOT NULL COMMENT '성공 여부',
  `result_code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '결과 코드',
  `result_message` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '결과 메시지',
  `mall_order_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '자사몰 주문번호',
  `mall_cancel_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '자사몰 취소주문번호',
  `partnershop_order_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '제휴사 주문번호',
  `partnershop_cancel_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '제휴사 취소주문번호',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_cancel_collect_logs_partnershop_code_index` (`partnershop_code`),
  KEY `order_cancel_collect_logs_endpoint_index` (`endpoint`),
  KEY `order_cancel_collect_logs_result_success_index` (`result_success`),
  KEY `order_cancel_collect_logs_mall_order_id_index` (`mall_order_id`),
  KEY `order_cancel_collect_logs_mall_cancel_id_index` (`mall_cancel_id`),
  KEY `mm_api_partnershop_order_cancel_collect_logs_method_code_index` (`method_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_api_partnershop_order_cancel_collect_logs`
--

LOCK TABLES `mm_api_partnershop_order_cancel_collect_logs` WRITE;
/*!40000 ALTER TABLE `mm_api_partnershop_order_cancel_collect_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_api_partnershop_order_cancel_collect_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_api_partnershop_order_cancel_logs`
--

DROP TABLE IF EXISTS `mm_api_partnershop_order_cancel_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_api_partnershop_order_cancel_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `partnershop_code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '대상 파트너샵 구분코드 enum@Shop/Partnershop',
  `method_code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '처리 구분코드 enum@Partnershop/MethodCode',
  `endpoint` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '엔드포인트',
  `request_serialize_data` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'HTTP 요청 직렬화 데이터',
  `response_serialize_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'HTTP 응답 직렬화 데이터',
  `response_code` int unsigned DEFAULT NULL COMMENT 'HTTP 응답 코드',
  `result_success` tinyint(1) NOT NULL COMMENT '성공 여부',
  `result_code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '결과 코드',
  `result_message` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '결과 메시지',
  `mall_order_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '주문 고유번호',
  `mall_cancel_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '취소 주문 고유번호',
  `mall_cancel_target_id` bigint unsigned DEFAULT NULL COMMENT '취소 타겟 고유번호',
  `partnershop_order_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '제휴사 주문번호',
  `partnershop_cancel_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '제휴사 취소주문번호',
  `partnershop_cancel_target_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '제휴사 취소주문 아이템 번호',
  `middle_user_id` bigint unsigned DEFAULT NULL COMMENT '중간관리자 고유번호',
  `seller_id` bigint unsigned DEFAULT NULL COMMENT '셀러 고유번호',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mm_api_order_cancel_partnershop_logs_partnershop_code_index` (`partnershop_code`),
  KEY `mm_api_order_cancel_partnershop_logs_endpoint_index` (`endpoint`),
  KEY `mm_api_order_cancel_partnershop_logs_result_success_index` (`result_success`),
  KEY `mm_api_order_cancel_partnershop_logs_order_id_index` (`mall_order_id`),
  KEY `mm_api_order_cancel_partnershop_logs_cancel_id_index` (`mall_cancel_id`),
  KEY `mm_api_order_cancel_partnershop_logs_cancel_target_id_index` (`mall_cancel_target_id`),
  KEY `mm_api_order_cancel_partnershop_logs_middle_user_id_index` (`middle_user_id`),
  KEY `mm_api_order_cancel_partnershop_logs_seller_id_index` (`seller_id`),
  KEY `mm_api_partnershop_order_cancel_logs_method_code_index` (`method_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_api_partnershop_order_cancel_logs`
--

LOCK TABLES `mm_api_partnershop_order_cancel_logs` WRITE;
/*!40000 ALTER TABLE `mm_api_partnershop_order_cancel_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_api_partnershop_order_cancel_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_api_partnershop_order_collect_logs`
--

DROP TABLE IF EXISTS `mm_api_partnershop_order_collect_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_api_partnershop_order_collect_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `partnershop_code` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '대상 파트너샵 구분코드 enum@Shop/Partnershop',
  `method_code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '처리 구분코드 enum@Partnershop/MethodCode',
  `endpoint` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '엔드포인트',
  `request_serialize_data` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'HTTP 요청 직렬화 데이터',
  `response_serialize_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'HTTP 응답 직렬화 데이터',
  `response_code` int unsigned DEFAULT NULL COMMENT 'HTTP 응답 코드',
  `result_success` tinyint(1) NOT NULL COMMENT '성공 여부',
  `result_code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '결과 코드',
  `result_message` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '결과 메시지',
  `mall_order_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '주문 고유번호',
  `partnershop_order_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '제휴사 주문 고유번호',
  `partnershop_order_group_no` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '제휴사 주문 그룹번호',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mm_api_order_collect_partnershop_logs_partnershop_code_index` (`partnershop_code`),
  KEY `mm_api_order_collect_partnershop_logs_endpoint_index` (`endpoint`),
  KEY `mm_api_order_collect_partnershop_logs_result_success_index` (`result_success`),
  KEY `mm_api_order_collect_partnershop_logs_order_id_index` (`mall_order_id`),
  KEY `mm_api_partnershop_order_collect_logs_method_code_index` (`method_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_api_partnershop_order_collect_logs`
--

LOCK TABLES `mm_api_partnershop_order_collect_logs` WRITE;
/*!40000 ALTER TABLE `mm_api_partnershop_order_collect_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_api_partnershop_order_collect_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_api_partnershop_order_exchange_collect_logs`
--

DROP TABLE IF EXISTS `mm_api_partnershop_order_exchange_collect_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_api_partnershop_order_exchange_collect_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `partnershop_code` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '제외 파트너샵 구분코드 enum@Shop/Partnershop',
  `method_code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '처리 구분코드 enum@Partnershop/MethodCode',
  `endpoint` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '엔드포인트',
  `request_serialize_data` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'HTTP 요청 직렬화 데이터',
  `response_serialize_data` longtext COLLATE utf8mb4_unicode_ci COMMENT 'HTTP 응답 직렬화 데이터',
  `response_code` int unsigned DEFAULT NULL COMMENT 'HTTP 응답 코드',
  `result_success` tinyint(1) NOT NULL COMMENT '성공 여부',
  `result_code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '결과 코드',
  `result_message` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '결과 메시지',
  `mall_order_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '자사몰 주문번호',
  `mall_exchange_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '자사몰 교환주문번호',
  `partnershop_order_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '제휴사 주문번호',
  `partnershop_exchange_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '제휴사 교환주문번호',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_return_collect_logs_partnershop_code_index` (`partnershop_code`),
  KEY `order_return_collect_logs_endpoint_index` (`endpoint`),
  KEY `order_return_collect_logs_result_success_index` (`result_success`),
  KEY `order_return_collect_logs_mall_order_id_index` (`mall_order_id`),
  KEY `order_return_collect_logs_mall_exchange_id_index` (`mall_exchange_id`),
  KEY `mm_api_partnershop_order_exchange_collect_logs_method_code_index` (`method_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_api_partnershop_order_exchange_collect_logs`
--

LOCK TABLES `mm_api_partnershop_order_exchange_collect_logs` WRITE;
/*!40000 ALTER TABLE `mm_api_partnershop_order_exchange_collect_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_api_partnershop_order_exchange_collect_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_api_partnershop_order_exchange_logs`
--

DROP TABLE IF EXISTS `mm_api_partnershop_order_exchange_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_api_partnershop_order_exchange_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `partnershop_code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '대상 파트너샵 구분코드 enum@Shop/Partnershop',
  `method_code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '처리 구분코드 enum@Partnershop/MethodCode',
  `endpoint` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '엔드포인트',
  `request_serialize_data` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'HTTP 요청 직렬화 데이터',
  `response_serialize_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'HTTP 응답 직렬화 데이터',
  `response_code` int unsigned DEFAULT NULL COMMENT 'HTTP 응답 코드',
  `result_success` tinyint(1) NOT NULL COMMENT '성공 여부',
  `result_code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '결과 코드',
  `result_message` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '결과 메시지',
  `mall_order_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '주문 고유번호',
  `mall_exchange_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '교환 주문 고유번호',
  `mall_exchange_target_id` bigint unsigned DEFAULT NULL COMMENT '교환 주문 타겟 번호',
  `partnershop_order_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '제휴사 주문 번호',
  `partnershop_exchange_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '제휴사 반품 주문 번호',
  `partnershop_exchange_target_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '제휴사 반품 주문 타겟 번호',
  `middle_user_id` bigint unsigned DEFAULT NULL COMMENT '중간관리자 고유번호',
  `seller_id` bigint unsigned DEFAULT NULL COMMENT '셀러 고유번호',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mm_api_order_exchange_partnershop_logs_partnershop_code_index` (`partnershop_code`),
  KEY `mm_api_order_exchange_partnershop_logs_endpoint_index` (`endpoint`),
  KEY `mm_api_order_exchange_partnershop_logs_result_success_index` (`result_success`),
  KEY `mm_api_order_exchange_partnershop_logs_order_id_index` (`mall_order_id`),
  KEY `mm_api_order_exchange_partnershop_logs_exchange_id_index` (`mall_exchange_id`),
  KEY `mm_api_order_exchange_partnershop_logs_exchange_target_id_index` (`mall_exchange_target_id`),
  KEY `mm_api_order_exchange_partnershop_logs_middle_user_id_index` (`middle_user_id`),
  KEY `mm_api_order_exchange_partnershop_logs_seller_id_index` (`seller_id`),
  KEY `mm_api_partnershop_order_exchange_logs_method_code_index` (`method_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_api_partnershop_order_exchange_logs`
--

LOCK TABLES `mm_api_partnershop_order_exchange_logs` WRITE;
/*!40000 ALTER TABLE `mm_api_partnershop_order_exchange_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_api_partnershop_order_exchange_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_api_partnershop_order_logs`
--

DROP TABLE IF EXISTS `mm_api_partnershop_order_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_api_partnershop_order_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `partnershop_code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '대상 파트너샵 구분코드 enum@Shop/Partnershop',
  `method_code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '처리 구분코드 enum@Partnershop/MethodCode',
  `endpoint` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '엔드포인트',
  `request_serialize_data` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'HTTP 요청 직렬화 데이터',
  `response_serialize_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'HTTP 응답 직렬화 데이터',
  `response_code` int unsigned DEFAULT NULL COMMENT 'HTTP 응답 코드',
  `result_success` tinyint(1) NOT NULL COMMENT '성공 여부',
  `result_code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '결과 코드',
  `result_message` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '결과 메시지',
  `mall_order_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '주문 고유번호(DC2Type:guid)',
  `mall_order_item_id` bigint unsigned DEFAULT NULL COMMENT '주문 아이템 고유번호',
  `partnershop_order_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '제휴사 주문 고유번호',
  `partnershop_order_item_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '제휴사 주문 아이템 고유번호 ',
  `partnershop_order_group_no` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '제휴사 주문 그룹번호',
  `middle_user_id` bigint unsigned DEFAULT NULL COMMENT '중간관리자 고유번호',
  `seller_id` bigint unsigned DEFAULT NULL COMMENT '셀러 고유번호',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mm_api_order_partnershop_logs_partnershop_code_index` (`partnershop_code`),
  KEY `mm_api_order_partnershop_logs_endpoint_index` (`endpoint`),
  KEY `mm_api_order_partnershop_logs_result_success_index` (`result_success`),
  KEY `mm_api_order_partnershop_logs_order_id_index` (`mall_order_id`),
  KEY `mm_api_order_partnershop_logs_order_item_id_index` (`mall_order_item_id`),
  KEY `mm_api_order_partnershop_logs_middle_user_id_index` (`middle_user_id`),
  KEY `mm_api_order_partnershop_logs_seller_id_index` (`seller_id`),
  KEY `mm_api_partnershop_order_logs_method_code_index` (`method_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_api_partnershop_order_logs`
--

LOCK TABLES `mm_api_partnershop_order_logs` WRITE;
/*!40000 ALTER TABLE `mm_api_partnershop_order_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_api_partnershop_order_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_api_partnershop_order_return_collect_logs`
--

DROP TABLE IF EXISTS `mm_api_partnershop_order_return_collect_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_api_partnershop_order_return_collect_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `partnershop_code` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '제외 파트너샵 구분코드 enum@Shop/Partnershop',
  `method_code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '처리 구분코드 enum@Partnershop/MethodCode',
  `endpoint` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '엔드포인트',
  `request_serialize_data` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'HTTP 요청 직렬화 데이터',
  `response_serialize_data` longtext COLLATE utf8mb4_unicode_ci COMMENT 'HTTP 응답 직렬화 데이터',
  `response_code` int unsigned DEFAULT NULL COMMENT 'HTTP 응답 코드',
  `result_success` tinyint(1) NOT NULL COMMENT '성공 여부',
  `result_code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '결과 코드',
  `result_message` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '결과 메시지',
  `mall_order_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '자사몰 주문번호',
  `mall_return_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '자사몰 반품주문번호',
  `partnershop_order_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '제휴사 주문번호',
  `partnershop_return_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '제휴사 반품주문번호',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_return_collect_logs_partnershop_code_index` (`partnershop_code`),
  KEY `order_return_collect_logs_endpoint_index` (`endpoint`),
  KEY `order_return_collect_logs_result_success_index` (`result_success`),
  KEY `order_return_collect_logs_mall_order_id_index` (`mall_order_id`),
  KEY `order_return_collect_logs_mall_return_id_index` (`mall_return_id`),
  KEY `mm_api_partnershop_order_return_collect_logs_method_code_index` (`method_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_api_partnershop_order_return_collect_logs`
--

LOCK TABLES `mm_api_partnershop_order_return_collect_logs` WRITE;
/*!40000 ALTER TABLE `mm_api_partnershop_order_return_collect_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_api_partnershop_order_return_collect_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_api_partnershop_order_return_logs`
--

DROP TABLE IF EXISTS `mm_api_partnershop_order_return_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_api_partnershop_order_return_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `partnershop_code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '대상 파트너샵 구분코드 enum@Shop/Partnershop',
  `method_code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '처리 구분코드 enum@Partnershop/MethodCode',
  `endpoint` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '엔드포인트',
  `request_serialize_data` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'HTTP 요청 직렬화 데이터',
  `response_serialize_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'HTTP 응답 직렬화 데이터',
  `response_code` int unsigned DEFAULT NULL COMMENT 'HTTP 응답 코드',
  `result_success` tinyint(1) NOT NULL COMMENT '성공 여부',
  `result_code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '결과 코드',
  `result_message` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '결과 메시지',
  `mall_order_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '주문 고유번호',
  `mall_return_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '반품 주문 고유번호',
  `mall_return_target_id` bigint unsigned DEFAULT NULL COMMENT '반품 타켓 고유번호',
  `partnershop_order_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '제휴사 주문 번호',
  `partnershop_return_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '제휴사 반품 주문 번호',
  `partnershop_return_target_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '제휴사 반품 주문 타겟 번호',
  `middle_user_id` bigint unsigned DEFAULT NULL COMMENT '중간관리자 고유번호',
  `seller_id` bigint unsigned DEFAULT NULL COMMENT '셀러 고유번호',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mm_api_order_return_partnershop_logs_partnershop_code_index` (`partnershop_code`),
  KEY `mm_api_order_return_partnershop_logs_endpoint_index` (`endpoint`),
  KEY `mm_api_order_return_partnershop_logs_result_success_index` (`result_success`),
  KEY `mm_api_order_return_partnershop_logs_order_id_index` (`mall_order_id`),
  KEY `mm_api_order_return_partnershop_logs_return_id_index` (`mall_return_id`),
  KEY `mm_api_order_return_partnershop_logs_return_target_id_index` (`mall_return_target_id`),
  KEY `mm_api_order_return_partnershop_logs_middle_user_id_index` (`middle_user_id`),
  KEY `mm_api_order_return_partnershop_logs_seller_id_index` (`seller_id`),
  KEY `mm_api_partnershop_order_return_logs_method_code_index` (`method_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_api_partnershop_order_return_logs`
--

LOCK TABLES `mm_api_partnershop_order_return_logs` WRITE;
/*!40000 ALTER TABLE `mm_api_partnershop_order_return_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_api_partnershop_order_return_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_api_partnershop_seller_logs`
--

DROP TABLE IF EXISTS `mm_api_partnershop_seller_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_api_partnershop_seller_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `method_code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '처리 구분코드 enum@Partnershop/MethodCode',
  `endpoint` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '엔드포인트',
  `request_serialize_data` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'HTTP 요청 직렬화 데이터',
  `response_serialize_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'HTTP 응답 직렬화 데이터',
  `response_code` int unsigned DEFAULT NULL COMMENT 'HTTP 응답 코드',
  `result_success` tinyint(1) NOT NULL COMMENT '성공 여부',
  `result_code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '결과 코드',
  `result_message` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '결과 메시지',
  `seller_id` bigint unsigned NOT NULL COMMENT '셀러 고유 번호',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mm_api_seller_partnershop_logs_endpoint_index` (`endpoint`),
  KEY `mm_api_seller_partnershop_logs_result_success_index` (`result_success`),
  KEY `mm_api_partnershop_seller_logs_method_code_index` (`method_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_api_partnershop_seller_logs`
--

LOCK TABLES `mm_api_partnershop_seller_logs` WRITE;
/*!40000 ALTER TABLE `mm_api_partnershop_seller_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_api_partnershop_seller_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_api_partnershop_shipping_center_logs`
--

DROP TABLE IF EXISTS `mm_api_partnershop_shipping_center_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_api_partnershop_shipping_center_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `method_code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '처리 구분코드 enum@Partnershop/MethodCode',
  `endpoint` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '엔드포인트',
  `request_serialize_data` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'HTTP 요청 직렬화 데이터',
  `response_serialize_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'HTTP 응답 직렬화 데이터',
  `response_code` int unsigned DEFAULT NULL COMMENT 'HTTP 응답 코드',
  `result_success` tinyint(1) NOT NULL COMMENT '성공 여부',
  `result_code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '결과 코드',
  `result_message` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '결과 메시지',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mm_api_shipping_center_partnershop_logs_endpoint_index` (`endpoint`),
  KEY `mm_api_shipping_center_partnershop_logs_result_success_index` (`result_success`),
  KEY `mm_api_partnershop_shipping_center_logs_method_code_index` (`method_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_api_partnershop_shipping_center_logs`
--

LOCK TABLES `mm_api_partnershop_shipping_center_logs` WRITE;
/*!40000 ALTER TABLE `mm_api_partnershop_shipping_center_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_api_partnershop_shipping_center_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_api_partnershop_shipping_rule_logs`
--

DROP TABLE IF EXISTS `mm_api_partnershop_shipping_rule_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_api_partnershop_shipping_rule_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `partnershop_code` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '대상 파트너샵 구분코드 enum@Shop/Partnershop',
  `method_code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '처리 구분코드 enum@Partnershop/MethodCode',
  `endpoint` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '엔드포인트',
  `request_serialize_data` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'HTTP 요청 직렬화 데이터',
  `response_serialize_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'HTTP 응답 직렬화 데이터',
  `response_code` int unsigned DEFAULT NULL COMMENT 'HTTP 응답 코드',
  `result_success` tinyint(1) NOT NULL COMMENT '성공 여부',
  `result_code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '결과 코드',
  `result_message` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '결과 메시지',
  `mall_shipping_rule_id` bigint unsigned DEFAULT NULL COMMENT '자사몰 배송정책 고유번호(mm_shp_shipping_rules.id)',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mm_api_shipping_rule_partnershop_logs_endpoint_index` (`endpoint`),
  KEY `mm_api_shipping_rule_partnershop_logs_result_success_index` (`result_success`),
  KEY `mm_api_partnershop_shipping_rule_logs_partnershop_code_index` (`partnershop_code`),
  KEY `mm_api_partnershop_shipping_rule_logs_method_code_index` (`method_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_api_partnershop_shipping_rule_logs`
--

LOCK TABLES `mm_api_partnershop_shipping_rule_logs` WRITE;
/*!40000 ALTER TABLE `mm_api_partnershop_shipping_rule_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_api_partnershop_shipping_rule_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_api_partnershop_statistics_logs`
--

DROP TABLE IF EXISTS `mm_api_partnershop_statistics_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_api_partnershop_statistics_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `method_code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '처리 구분코드 enum@Partnershop/MethodCode',
  `endpoint` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '엔드포인트',
  `request_serialize_data` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'HTTP 요청 직렬화 데이터',
  `response_serialize_data` longtext COLLATE utf8mb4_unicode_ci COMMENT 'HTTP 응답 직렬화 데이터',
  `response_code` int unsigned DEFAULT NULL COMMENT 'HTTP 응답 코드',
  `result_success` tinyint(1) NOT NULL COMMENT '성공 여부',
  `result_code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '결과 코드',
  `result_message` mediumtext COLLATE utf8mb4_unicode_ci COMMENT '결과 메시지',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mm_api_partnershop_statistics_logs_method_code_index` (`method_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_api_partnershop_statistics_logs`
--

LOCK TABLES `mm_api_partnershop_statistics_logs` WRITE;
/*!40000 ALTER TABLE `mm_api_partnershop_statistics_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_api_partnershop_statistics_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_bod_faq`
--

DROP TABLE IF EXISTS `mm_bod_faq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_bod_faq` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT 'FAQ 고유번호',
  `type_id` bigint unsigned NOT NULL COMMENT 'FAQ 분류 테이블(mm_bod_faq_types)의 고유번호 저장',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'FAQ 제목',
  `contents` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'FAQ 내용',
  `order_seq` int NOT NULL DEFAULT '999',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '등록일시',
  `updated_at` datetime DEFAULT NULL COMMENT '수정일시',
  `deleted_at` datetime DEFAULT NULL COMMENT '삭제일시',
  `created_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mm_bod_faq_id` (`type_id`,`title`),
  KEY `mm_bod_faq_orderingseq_index` (`order_seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='FAQ 테이블';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_bod_faq`
--

LOCK TABLES `mm_bod_faq` WRITE;
/*!40000 ALTER TABLE `mm_bod_faq` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_bod_faq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_bod_faq_types`
--

DROP TABLE IF EXISTS `mm_bod_faq_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_bod_faq_types` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT 'FAQ 분류 고유번호',
  `name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'FAQ 분류 이름',
  `created_user` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '등록자 이름',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '등록일시',
  `updated_user` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '수정자 이름',
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '수정일시',
  `deleted_user` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '삭제자 이름',
  `deleted_at` datetime DEFAULT NULL COMMENT '삭제일시',
  PRIMARY KEY (`id`),
  KEY `mm_bod_faq_types_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='FAQ 분류 테이블';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_bod_faq_types`
--

LOCK TABLES `mm_bod_faq_types` WRITE;
/*!40000 ALTER TABLE `mm_bod_faq_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_bod_faq_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_bod_goods_review_order_item`
--

DROP TABLE IF EXISTS `mm_bod_goods_review_order_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_bod_goods_review_order_item` (
  `review_id` bigint unsigned NOT NULL COMMENT '리뷰 번호',
  `order_item_id` bigint unsigned NOT NULL COMMENT '대상 주문 아이템 번호'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_bod_goods_review_order_item`
--

LOCK TABLES `mm_bod_goods_review_order_item` WRITE;
/*!40000 ALTER TABLE `mm_bod_goods_review_order_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_bod_goods_review_order_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_bod_goods_review_template`
--

DROP TABLE IF EXISTS `mm_bod_goods_review_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_bod_goods_review_template` (
  `review_id` bigint unsigned NOT NULL COMMENT '리뷰 고유키(mm_bod_after.id)',
  `template_id` bigint unsigned NOT NULL COMMENT '리뷰 템플릿 고유키(mm_shp_review_templates.id)',
  `template_detail_id` bigint unsigned NOT NULL COMMENT '리뷰 하위분류 고유키(mm_bod_goods_review_template_details.id)',
  `goods_id` bigint unsigned NOT NULL COMMENT '상품 고유키(mm_gds_product.id)',
  UNIQUE KEY `mm_bod_goods_review_template_uq` (`review_id`,`template_id`),
  KEY `mm_bod_goods_review_template_review_id_index` (`review_id`),
  KEY `mm_bod_goods_review_template_template_id_index` (`template_id`),
  KEY `mm_bod_goods_review_template_detail_id_index` (`template_detail_id`),
  KEY `mm_bod_goods_review_template_goods_id_index` (`goods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='리뷰 <-> 리뷰 템플릿 하위분류 맵핑(n:n)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_bod_goods_review_template`
--

LOCK TABLES `mm_bod_goods_review_template` WRITE;
/*!40000 ALTER TABLE `mm_bod_goods_review_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_bod_goods_review_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_bod_goods_reviews`
--

DROP TABLE IF EXISTS `mm_bod_goods_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_bod_goods_reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '고유번호',
  `member_id` bigint unsigned NOT NULL COMMENT '회원 고유키 (mm_mem_members.id)',
  `middle_user_id` bigint unsigned NOT NULL COMMENT '중간관리자 mm_adm_middle_users 고유번호',
  `seller_id` bigint unsigned NOT NULL COMMENT '브랜드관리자 mm_adm_sellers 고유번호',
  `is_photo_review` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '포토리뷰 여부 (1: 포토리뷰, 0: 텍스트리뷰)',
  `contents` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '게시물 컨텐츠',
  `goods_id` bigint unsigned NOT NULL COMMENT '상품일련번호',
  `goods_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '상품명',
  `goods_option_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '대상 옵션 텍스트',
  `ip_addr` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '등록 사용자 IP Address',
  `gender_group` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'E' COMMENT '성별구분값(F: 여성, M: 남성, E: 기타)',
  `age` tinyint NOT NULL DEFAULT '0' COMMENT '나이구분값(10~120: 나이대, 0: 불명)',
  `rate` tinyint NOT NULL DEFAULT '0' COMMENT '리뷰 평점(0~5)',
  `height` int DEFAULT NULL COMMENT '신장',
  `weight` int DEFAULT NULL COMMENT '체중',
  `feet_size` int DEFAULT NULL COMMENT '신발 사이즈',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '등록 일시',
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '수정 일시',
  `deleted_at` datetime DEFAULT NULL COMMENT '삭제 일시',
  `photo_count` tinyint NOT NULL COMMENT '첨부된 사진 수량',
  `is_best_review` tinyint(1) NOT NULL DEFAULT '0' COMMENT '베스트 리뷰 여부',
  `best_picked_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '베스트 선정 관리자',
  `is_experience` tinyint(1) NOT NULL DEFAULT '0' COMMENT '체험단 후기 여부',
  `experience_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '체험단 후기 제목',
  `experience_state_changed_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '체험단 후기 승인상태 변경자 정보',
  `experience_state_changed_at` datetime DEFAULT NULL COMMENT '체험단 후기 승인상태 변경시',
  `view_count` bigint unsigned NOT NULL DEFAULT '0' COMMENT '조회수',
  `experience_state` tinyint unsigned DEFAULT '0' COMMENT '승인 상태 (0:승인요청 1:승인완료 8:반려 9:철회)',
  `given_point` int NOT NULL DEFAULT '0' COMMENT '지급되어있는 상품평 포인트',
  `option_id` bigint unsigned DEFAULT NULL COMMENT '옵션번호',
  `order_id` bigint unsigned DEFAULT NULL COMMENT '대상 주문번호',
  `is_editable` tinyint(1) NOT NULL DEFAULT '1' COMMENT '수정 가능 여부 (삭제는 영향받지 않음)',
  PRIMARY KEY (`id`),
  KEY `member_id_INDEX` (`member_id`),
  KEY `MIDDLE_USER_id_INDEX` (`middle_user_id`),
  KEY `seller_id_INDEX` (`seller_id`),
  KEY `IS_PHOTO_REVIEW_INDEX` (`is_photo_review`),
  KEY `GOODS_id_INDEX` (`goods_id`),
  KEY `mm_bod_goods_reviews_is_experience_index` (`is_experience`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_bod_goods_reviews`
--

LOCK TABLES `mm_bod_goods_reviews` WRITE;
/*!40000 ALTER TABLE `mm_bod_goods_reviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_bod_goods_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_bod_notices`
--

DROP TABLE IF EXISTS `mm_bod_notices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_bod_notices` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '공지사항 고유번호',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '공지사항 제목',
  `contents` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '공지사항 내용',
  `display_start_at` datetime DEFAULT NULL COMMENT '노출일(최고관리자에는 바로 노출되지만 프론트>고객센터>공지사항 페이지에는 노출일 도래하면 노출됨)',
  `is_important` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '중요 공지 플래그값',
  `created_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '등록자 이름',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '등록일시',
  `updated_user` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '수정자 이름',
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '수정일시',
  `deleted_at` datetime DEFAULT NULL COMMENT '삭제일시',
  PRIMARY KEY (`id`),
  KEY `mm_bod_notices_created_at_index` (`created_at`),
  KEY `mm_bod_notices_deleted_at_index` (`deleted_at`),
  KEY `mm_bod_notices_id` (`title`,`display_start_at`,`is_important`,`created_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='공지사항 테이블';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_bod_notices`
--

LOCK TABLES `mm_bod_notices` WRITE;
/*!40000 ALTER TABLE `mm_bod_notices` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_bod_notices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_csc_complain_cancel_by_soldouts`
--

DROP TABLE IF EXISTS `mm_csc_complain_cancel_by_soldouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_csc_complain_cancel_by_soldouts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_item_id` bigint unsigned NOT NULL COMMENT '보상대상 주문 아이템 번호',
  `state` int unsigned NOT NULL COMMENT '진행상태 enum@CS/ComplainState',
  `paid_at` timestamp NULL DEFAULT NULL,
  `applied_at` timestamp NOT NULL COMMENT '보상기준일시(품절 처리일)',
  `member_id` bigint unsigned NOT NULL COMMENT '신고회원 번호',
  `complain_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '신청자',
  `handled_at` timestamp NULL DEFAULT NULL COMMENT '처리일시',
  `handled_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '처리자',
  `applied_setting_id` bigint unsigned DEFAULT NULL COMMENT '적용된 설정값 번호',
  `applied_rate` int unsigned NOT NULL COMMENT '적용률',
  `applied_amount` int NOT NULL COMMENT '적용액',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_csc_complain_cancel_by_soldouts`
--

LOCK TABLES `mm_csc_complain_cancel_by_soldouts` WRITE;
/*!40000 ALTER TABLE `mm_csc_complain_cancel_by_soldouts` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_csc_complain_cancel_by_soldouts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_csc_complain_release_delays`
--

DROP TABLE IF EXISTS `mm_csc_complain_release_delays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_csc_complain_release_delays` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_item_id` bigint unsigned NOT NULL COMMENT '보상대상 주문 아이템 번호',
  `state` int unsigned NOT NULL COMMENT '진행상태 enum@CS/ComplainState',
  `will_release_at` timestamp NULL DEFAULT NULL,
  `paid_at` timestamp NULL DEFAULT NULL,
  `applied_at` timestamp NOT NULL COMMENT '보상기준일시',
  `released_at` timestamp NOT NULL COMMENT '배송 출발일',
  `member_id` bigint unsigned NOT NULL COMMENT '신고회원 번호',
  `complain_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '신청자',
  `handled_at` timestamp NULL DEFAULT NULL COMMENT '처리일시',
  `handled_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '처리자',
  `applied_setting_id` bigint unsigned DEFAULT NULL COMMENT '적용된 설정값 번호',
  `applied_rate` int unsigned NOT NULL COMMENT '적용률',
  `applied_amount` int NOT NULL COMMENT '적용액',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_csc_complain_release_delays`
--

LOCK TABLES `mm_csc_complain_release_delays` WRITE;
/*!40000 ALTER TABLE `mm_csc_complain_release_delays` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_csc_complain_release_delays` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_csc_complain_settings`
--

DROP TABLE IF EXISTS `mm_csc_complain_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_csc_complain_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `max_compensation_amount` int unsigned NOT NULL COMMENT '건당 최대 보상금액',
  `release_delay_compensation_s1_rate` int unsigned NOT NULL COMMENT '배송지연 1단계 보상률',
  `release_delay_compensation_s2_rate` int unsigned NOT NULL COMMENT '배송지연 2단계 보상률',
  `release_delay_compensation_s3_rate` int unsigned NOT NULL COMMENT '배송지연 3단계 보상률',
  `release_delay_compensation_s4_rate` int unsigned NOT NULL COMMENT '배송지연 4단계 보상률',
  `release_delay_compensation_s5_rate` int unsigned NOT NULL COMMENT '배송지연 5단계 보상률',
  `cancel_by_soldout_compensation_s1_rate` int unsigned NOT NULL COMMENT '품절로 인한 취소 1단계 보상률',
  `created_user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '생성관리자',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_csc_complain_settings`
--

LOCK TABLES `mm_csc_complain_settings` WRITE;
/*!40000 ALTER TABLE `mm_csc_complain_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_csc_complain_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_csc_cs_auto_notifications`
--

DROP TABLE IF EXISTS `mm_csc_cs_auto_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_csc_cs_auto_notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '고유번호',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '알리미 제목',
  `contents` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '알리미 제목',
  `type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '문의유형 Delivery: 배송문의,  Returnable: 반품가능여부문의, ReturnWarehousing: 반품입고여부문의, OrderCancel:  주문취소, OrderInfoUpdate : 주문정보수정, ExchangeHold: 교환문의(보류), Goods: 상품문의, Ect: 기타, LongTermUndelivered: 장기 미배송, Invoice: 진송장 문의, RefundByAuthority: 직권환불진행',
  `writer_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '작성자명',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '등록일시',
  `updated_at` datetime DEFAULT NULL COMMENT '수정일시',
  `deleted_at` datetime DEFAULT NULL COMMENT '삭제일시',
  PRIMARY KEY (`id`),
  KEY `mm_csc_cs_auto_notifications_title_index` (`title`) /*!80000 INVISIBLE */,
  KEY `mm_csc_cs_auto_notifications_type_index` (`type`) /*!80000 INVISIBLE */,
  KEY `mm_csc_cs_auto_notifications_created_at_index` (`created_at`) /*!80000 INVISIBLE */,
  KEY `mm_csc_cs_auto_notifications_deleted_at_index` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='자동 CS 알리미 테이블';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_csc_cs_auto_notifications`
--

LOCK TABLES `mm_csc_cs_auto_notifications` WRITE;
/*!40000 ALTER TABLE `mm_csc_cs_auto_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_csc_cs_auto_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_csc_cs_notification_comments`
--

DROP TABLE IF EXISTS `mm_csc_cs_notification_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_csc_cs_notification_comments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '고유번호',
  `cs_notification_id` bigint unsigned NOT NULL DEFAULT '0' COMMENT '알리미 고유번호(mm_csc_cs_notifications)',
  `sequence` int NOT NULL DEFAULT '0' COMMENT '답변 순서',
  `contents` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '답변내용',
  `commented_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '답변 등록자',
  `is_commented_by_shop` tinyint(1) NOT NULL DEFAULT '0' COMMENT '본사답변 여부',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mm_csc_cs_notification_comments_cs_notification_id_index` (`cs_notification_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='알리미(mm_csc_cs_notifications) 답변 테이블';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_csc_cs_notification_comments`
--

LOCK TABLES `mm_csc_cs_notification_comments` WRITE;
/*!40000 ALTER TABLE `mm_csc_cs_notification_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_csc_cs_notification_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_csc_cs_notification_order_items`
--

DROP TABLE IF EXISTS `mm_csc_cs_notification_order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_csc_cs_notification_order_items` (
  `cs_notification_id` bigint unsigned NOT NULL COMMENT 'CS알리미 번호',
  `order_item_id` bigint unsigned NOT NULL COMMENT '주문아이템 고유번호 (mm_shp_order_item.id)',
  KEY `mm_csc_cs_notification_order_items_order_item_id_index` (`order_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_csc_cs_notification_order_items`
--

LOCK TABLES `mm_csc_cs_notification_order_items` WRITE;
/*!40000 ALTER TABLE `mm_csc_cs_notification_order_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_csc_cs_notification_order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_csc_cs_notifications`
--

DROP TABLE IF EXISTS `mm_csc_cs_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_csc_cs_notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '문의 제목',
  `contents` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '문의 내용',
  `is_closed` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '문의 종료 여부',
  `order_id` bigint unsigned DEFAULT NULL COMMENT '주문번호 : 브랜드관리자/중간관리자가 올린 CS알리미 유형중 기타는 주문번호가 들어오지 않음',
  `seller_id` bigint unsigned NOT NULL COMMENT '셀러(브랜드관리자) 고유번호',
  `middle_user_id` bigint unsigned NOT NULL COMMENT '중간관리자(중간관리자) id ',
  `type` int unsigned NOT NULL COMMENT '문의 유형 enum@CS/CSNotificationType',
  `is_wait_for_comment` tinyint(1) NOT NULL DEFAULT '1' COMMENT '답변 대기 여부',
  `notified_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '알리미 등록자',
  `is_notified_by_shop` tinyint(1) NOT NULL DEFAULT '0' COMMENT '본사 등록여부',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mm_csc_cs_notifications_is_closed_index` (`is_closed`),
  KEY `mm_csc_cs_notifications_order_id_index` (`order_id`),
  KEY `mm_csc_cs_notifications_seller_id_index` (`seller_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='CS 알리미 테이블';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_csc_cs_notifications`
--

LOCK TABLES `mm_csc_cs_notifications` WRITE;
/*!40000 ALTER TABLE `mm_csc_cs_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_csc_cs_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_csc_order_memos`
--

DROP TABLE IF EXISTS `mm_csc_order_memos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_csc_order_memos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL COMMENT '주문번호',
  `manage_state` tinyint unsigned NOT NULL COMMENT '관리상태 enum@CS/OrderMemo/ManageState',
  `manage_reason` tinyint unsigned DEFAULT NULL COMMENT '관리사유 enum@CS/OrderMemo/ManageReason',
  `manage_at` timestamp NULL DEFAULT NULL COMMENT '관리일자',
  `has_content` tinyint(1) NOT NULL DEFAULT '1' COMMENT '세부내용 존재여부',
  `is_important` tinyint(1) NOT NULL DEFAULT '0' COMMENT '중요내용 존재여부',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '상담 내용',
  `inbound_from` tinyint unsigned DEFAULT NULL COMMENT '문의 인입 경로 enum@CS/OrderMemo/InboundFrom',
  `has_division` tinyint(1) NOT NULL DEFAULT '0' COMMENT '문의 세부유형 존재여부',
  `division_code` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '문의 세부유형 코드',
  `created_user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '등록자 정보',
  `updated_user` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '수정자 정보',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_csc_order_memos`
--

LOCK TABLES `mm_csc_order_memos` WRITE;
/*!40000 ALTER TABLE `mm_csc_order_memos` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_csc_order_memos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_csc_qna`
--

DROP TABLE IF EXISTS `mm_csc_qna`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_csc_qna` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '고유번호',
  `is_for_seller` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '판매자 답변책임 여부',
  `type_code` int unsigned NOT NULL DEFAULT '0' COMMENT '문의 유형 코드',
  `middle_user_id` bigint unsigned DEFAULT NULL COMMENT '중간관리자 mm_adm_middle_users 고유번호',
  `seller_id` bigint unsigned DEFAULT NULL COMMENT '브랜드관리자 mm_adm_sellers 고유번호',
  `seller_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '브랜드관리자 이름',
  `received_from` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '접수채널 (자사: self, 제휴사: 제휴사코드)',
  `order_id` bigint unsigned DEFAULT NULL COMMENT '주문번호',
  `partnershop_order_id` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'API 주문번호',
  `partnershop_qna_id` bigint unsigned DEFAULT NULL COMMENT 'API 문의 번호',
  `partnershop_cs_id` bigint unsigned DEFAULT NULL COMMENT 'API문의 ID',
  `partnershop_qna_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '제휴문의 유형(자사 문의 유형과 맵핑 없이 그대로 노출)',
  `goods_id` bigint unsigned DEFAULT NULL COMMENT '상품 코드(mm_gds_items.id)',
  `goods_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '상품 이름 (mm_gds_items.name)',
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '문의 제목',
  `contents` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '문의 내용',
  `is_reply` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '답변 여부',
  `is_transferred` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '이관여부',
  `from_transfer_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '이관 주체',
  `to_transfer_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '이관 대상',
  `transfer_reason` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '이관 사유',
  `transferred_at` datetime DEFAULT NULL COMMENT '이관일시',
  `is_private` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '판매자문의(상품QNA) 비밀문의 여부',
  `member_id` bigint unsigned DEFAULT NULL COMMENT '문의자 고유번호 (제휴문의의 경우 null)',
  `member_name` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '문의자 이름 (제휴문의의 경우 이름을 직접 저장해야하기에 mm_mem_members.code 아닌 회원명 직접 저장)',
  `member_login_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '문의자 아이디 (제휴문의, 비회원 주문일 경우 null)',
  `sort_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '미이관문의일 경우 등록일, 이관문의일 경우 이관일 기준으로 정렬',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '작성일시',
  `updated_at` datetime DEFAULT NULL COMMENT '수정일시',
  `deleted_at` datetime DEFAULT NULL,
  `category_code` int unsigned NOT NULL COMMENT '문의 대분류 enum@CS/QnaCategory',
  PRIMARY KEY (`id`),
  KEY `mm_csc_qna_is_for_seller_index` (`is_for_seller`),
  KEY `mm_csc_qna_type_code_index` (`type_code`),
  KEY `mm_csc_is_transferred_index` (`is_transferred`),
  KEY `mm_csc_is_reply_index` (`is_reply`),
  KEY `mm_csc_sort_date_index` (`sort_date`),
  KEY `mm_csc_seller_user_index` (`seller_id`),
  KEY `mm_csc_middle_user_index` (`middle_user_id`),
  KEY `mm_csc_received_from_index` (`received_from`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='QnA(일반) / 판매자(주문) 문의 (자사, 제휴 포함)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_csc_qna`
--

LOCK TABLES `mm_csc_qna` WRITE;
/*!40000 ALTER TABLE `mm_csc_qna` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_csc_qna` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_csc_qna_comment_forms`
--

DROP TABLE IF EXISTS `mm_csc_qna_comment_forms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_csc_qna_comment_forms` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '고유번호',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '제목',
  `contents` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '내용',
  `created_user` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '등록자',
  `updated_user` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '수정자',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_csc_qna_comment_forms`
--

LOCK TABLES `mm_csc_qna_comment_forms` WRITE;
/*!40000 ALTER TABLE `mm_csc_qna_comment_forms` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_csc_qna_comment_forms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_csc_qna_comment_logs`
--

DROP TABLE IF EXISTS `mm_csc_qna_comment_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_csc_qna_comment_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` int NOT NULL COMMENT '코멘트 고유번호(mm_csc_qna_comments)',
  `before_contents` mediumtext COLLATE utf8mb4_unicode_ci COMMENT '수정 전 답변',
  `after_contents` mediumtext COLLATE utf8mb4_unicode_ci COMMENT '수정 후 답변',
  `created_user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '코멘트 등록자/변경자',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_csc_qna_comment_logs`
--

LOCK TABLES `mm_csc_qna_comment_logs` WRITE;
/*!40000 ALTER TABLE `mm_csc_qna_comment_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_csc_qna_comment_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_csc_qna_comments`
--

DROP TABLE IF EXISTS `mm_csc_qna_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_csc_qna_comments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '고유번호',
  `qna_id` bigint unsigned NOT NULL COMMENT '문의 id',
  `contents` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '내용',
  `created_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '작성자',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '작성일',
  `updated_at` datetime DEFAULT NULL COMMENT '수정일',
  `updated_user` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '수정자',
  PRIMARY KEY (`id`),
  KEY `mm_csc_qna_comments_created_user_index` (`created_user`) USING BTREE,
  KEY `mm_csc_qna_comments_created_at_index` (`created_at`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='QnA(일반) / 판매자(주문) 문의 답변';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_csc_qna_comments`
--

LOCK TABLES `mm_csc_qna_comments` WRITE;
/*!40000 ALTER TABLE `mm_csc_qna_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_csc_qna_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_csc_qna_order_items`
--

DROP TABLE IF EXISTS `mm_csc_qna_order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_csc_qna_order_items` (
  `qna_id` bigint unsigned NOT NULL COMMENT 'QnA 번호',
  `order_item_id` bigint unsigned NOT NULL COMMENT '주문아이템 고유번호 (mm_shp_order_item.id)',
  KEY `mm_csc_qna_order_items_order_item_id_index` (`order_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_csc_qna_order_items`
--

LOCK TABLES `mm_csc_qna_order_items` WRITE;
/*!40000 ALTER TABLE `mm_csc_qna_order_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_csc_qna_order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_exh_area_apply_brands`
--

DROP TABLE IF EXISTS `mm_exh_area_apply_brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_exh_area_apply_brands` (
  `area_id` bigint unsigned NOT NULL COMMENT '영역 키(mm_exh_areas.id)',
  `brand_id` bigint unsigned NOT NULL COMMENT '대상 진열브랜드 고유코드(mm_shp_brands.id)',
  KEY `mm_exh_area_apply_brands_area_id_index` (`area_id`),
  KEY `mm_exh_area_apply_brands_brand_id_index` (`brand_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_exh_area_apply_brands`
--

LOCK TABLES `mm_exh_area_apply_brands` WRITE;
/*!40000 ALTER TABLE `mm_exh_area_apply_brands` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_exh_area_apply_brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_exh_area_apply_categories`
--

DROP TABLE IF EXISTS `mm_exh_area_apply_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_exh_area_apply_categories` (
  `area_id` bigint unsigned NOT NULL COMMENT '영역 키(mm_exh_areas.id)',
  `category_code` char(9) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '대상 카테고리 고유코드(mm_shp_category_inco.code)',
  KEY `mm_exh_area_apply_categories_area_id_index` (`area_id`),
  KEY `mm_exh_area_apply_categories_category_code_index` (`category_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_exh_area_apply_categories`
--

LOCK TABLES `mm_exh_area_apply_categories` WRITE;
/*!40000 ALTER TABLE `mm_exh_area_apply_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_exh_area_apply_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_exh_area_apply_goods`
--

DROP TABLE IF EXISTS `mm_exh_area_apply_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_exh_area_apply_goods` (
  `area_id` bigint unsigned NOT NULL COMMENT '영역 키(mm_exh_areas.id)',
  `goods_id` bigint unsigned NOT NULL COMMENT '대상 상품 고유키(mm_gds_items.id)',
  KEY `mm_exh_area_apply_goods_area_id_index` (`area_id`),
  KEY `mm_exh_area_apply_goods_goods_id_index` (`goods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_exh_area_apply_goods`
--

LOCK TABLES `mm_exh_area_apply_goods` WRITE;
/*!40000 ALTER TABLE `mm_exh_area_apply_goods` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_exh_area_apply_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_exh_area_apply_sellers`
--

DROP TABLE IF EXISTS `mm_exh_area_apply_sellers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_exh_area_apply_sellers` (
  `area_id` bigint unsigned NOT NULL COMMENT '영역 키(mm_exh_areas.id)',
  `seller_id` bigint unsigned NOT NULL COMMENT '대상 판매자 고유키(mm_adm_sellers.id)',
  KEY `mm_exh_area_apply_sellers_area_id_index` (`area_id`),
  KEY `mm_exh_area_apply_sellers_seller_id_index` (`seller_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_exh_area_apply_sellers`
--

LOCK TABLES `mm_exh_area_apply_sellers` WRITE;
/*!40000 ALTER TABLE `mm_exh_area_apply_sellers` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_exh_area_apply_sellers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_exh_area_banners`
--

DROP TABLE IF EXISTS `mm_exh_area_banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_exh_area_banners` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `area_id` bigint unsigned NOT NULL COMMENT '영역 키(mm_exh_areas.id)',
  `mobile_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '모바일 링크',
  `mobile_alt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '모바일 이미지 대체 텍스트',
  `mobile_text_1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '모바일 문구 1',
  `mobile_text_2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '모바일 문구 1',
  `is_pc_same_as_mobile` tinyint(1) NOT NULL DEFAULT '1' COMMENT '모바일 -> PC 공통사용여부',
  `pc_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'PC 링크',
  `pc_alt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'PC 이미지 대체 텍스트',
  `pc_text_1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'PC 문구 1',
  `pc_text_2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'PC 문구 1',
  `order_seq` int unsigned NOT NULL DEFAULT '0' COMMENT '정렬 순서값',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mm_exh_area_banners_area_id_index` (`area_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_exh_area_banners`
--

LOCK TABLES `mm_exh_area_banners` WRITE;
/*!40000 ALTER TABLE `mm_exh_area_banners` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_exh_area_banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_exh_area_except_brands`
--

DROP TABLE IF EXISTS `mm_exh_area_except_brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_exh_area_except_brands` (
  `area_id` bigint unsigned NOT NULL COMMENT '영역 키(mm_exh_areas.id)',
  `brand_id` bigint unsigned NOT NULL COMMENT '대상 진열브랜드 고유코드(mm_shp_brands.id)',
  KEY `mm_exh_area_except_brands_area_id_index` (`area_id`),
  KEY `mm_exh_area_except_brands_brand_id_index` (`brand_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_exh_area_except_brands`
--

LOCK TABLES `mm_exh_area_except_brands` WRITE;
/*!40000 ALTER TABLE `mm_exh_area_except_brands` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_exh_area_except_brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_exh_area_except_categories`
--

DROP TABLE IF EXISTS `mm_exh_area_except_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_exh_area_except_categories` (
  `area_id` bigint unsigned NOT NULL COMMENT '영역 키(mm_exh_areas.id)',
  `category_code` char(9) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '대상 카테고리 고유코드(mm_shp_category_inco.code)',
  KEY `mm_exh_area_except_categories_area_id_index` (`area_id`),
  KEY `mm_exh_area_except_categories_category_code_index` (`category_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_exh_area_except_categories`
--

LOCK TABLES `mm_exh_area_except_categories` WRITE;
/*!40000 ALTER TABLE `mm_exh_area_except_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_exh_area_except_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_exh_area_except_goods`
--

DROP TABLE IF EXISTS `mm_exh_area_except_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_exh_area_except_goods` (
  `area_id` bigint unsigned NOT NULL COMMENT '영역 키(mm_exh_areas.id)',
  `goods_id` bigint unsigned NOT NULL COMMENT '대상 상품 고유키(mm_gds_items.id)',
  KEY `mm_exh_area_except_goods_area_id_index` (`area_id`),
  KEY `mm_exh_area_except_goods_goods_id_index` (`goods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_exh_area_except_goods`
--

LOCK TABLES `mm_exh_area_except_goods` WRITE;
/*!40000 ALTER TABLE `mm_exh_area_except_goods` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_exh_area_except_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_exh_area_except_sellers`
--

DROP TABLE IF EXISTS `mm_exh_area_except_sellers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_exh_area_except_sellers` (
  `area_id` bigint unsigned NOT NULL COMMENT '영역 키(mm_exh_areas.id)',
  `seller_id` bigint unsigned NOT NULL COMMENT '대상 판매자 고유키(mm_adm_sellers.id)',
  KEY `mm_exh_area_except_sellers_area_id_index` (`area_id`),
  KEY `mm_exh_area_except_sellers_seller_id_index` (`seller_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_exh_area_except_sellers`
--

LOCK TABLES `mm_exh_area_except_sellers` WRITE;
/*!40000 ALTER TABLE `mm_exh_area_except_sellers` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_exh_area_except_sellers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_exh_area_goods_banners`
--

DROP TABLE IF EXISTS `mm_exh_area_goods_banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_exh_area_goods_banners` (
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '제목',
  `is_use` tinyint(1) NOT NULL DEFAULT '1' COMMENT '사용 여부',
  `display_start_at` datetime NOT NULL COMMENT '노출 시작시간',
  `display_end_at` datetime NOT NULL COMMENT '노출 종료시간',
  `display_range` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all' COMMENT '노출 영역(all: 상단 + 하단, top : 상단, bottom : 하단)',
  `contents_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '상세이미지 등록방식 image:이미지파일등록 , html:에디터 등록',
  `pc_contents` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'pc 상세이미지 (등록방식 1일때 file정보, 2일때 에디터 html)',
  `pc_contents_alt` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'pc 상세이미지 대체텍스트',
  `mobile_contents` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'mobile 상세이미지 (등록방식 1일때 file정보, 2일때 에디터 html)',
  `mobile_contents_alt` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'mobile 상세이미지 대체텍스트',
  `apply_range_type` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all' COMMENT '배너 적용 범위(all: 전체, goods: 상품, category: 카테고리, brand: 브랜드)',
  `created_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '등록 관리자',
  `updated_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '수정 관리자',
  `deleted_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '삭제 관리자',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `mm_exh_area_goods_banners_is_use_index` (`is_use`),
  KEY `mm_exh_area_goods_banners_display_start_at_index` (`display_start_at`),
  KEY `mm_exh_area_goods_banners_display_end_at_index` (`display_end_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_exh_area_goods_banners`
--

LOCK TABLES `mm_exh_area_goods_banners` WRITE;
/*!40000 ALTER TABLE `mm_exh_area_goods_banners` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_exh_area_goods_banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_exh_area_goods_banners_apply_brands`
--

DROP TABLE IF EXISTS `mm_exh_area_goods_banners_apply_brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_exh_area_goods_banners_apply_brands` (
  `banner_id` bigint unsigned NOT NULL COMMENT '영역 키(mm_exh_area_goods_banners.id)',
  `brand_id` bigint unsigned NOT NULL COMMENT '대상 진열브랜드 고유코드(mm_shp_brands.id)',
  KEY `mm_exh_area_goods_banners_apply_brands_banner_id_index` (`banner_id`),
  KEY `mm_exh_area_goods_banners_apply_brands_brand_id_index` (`brand_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_exh_area_goods_banners_apply_brands`
--

LOCK TABLES `mm_exh_area_goods_banners_apply_brands` WRITE;
/*!40000 ALTER TABLE `mm_exh_area_goods_banners_apply_brands` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_exh_area_goods_banners_apply_brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_exh_area_goods_banners_apply_categories`
--

DROP TABLE IF EXISTS `mm_exh_area_goods_banners_apply_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_exh_area_goods_banners_apply_categories` (
  `banner_id` bigint unsigned NOT NULL COMMENT '영역 키(mm_exh_area_goods_banners.id)',
  `category_code` char(9) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '대상 카테고리 고유코드(mm_shp_category_inco.code)',
  KEY `mm_exh_area_goods_banners_apply_categories_banner_id_index` (`banner_id`),
  KEY `mm_exh_area_goods_banners_apply_categories_category_code_index` (`category_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_exh_area_goods_banners_apply_categories`
--

LOCK TABLES `mm_exh_area_goods_banners_apply_categories` WRITE;
/*!40000 ALTER TABLE `mm_exh_area_goods_banners_apply_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_exh_area_goods_banners_apply_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_exh_area_goods_banners_apply_goods`
--

DROP TABLE IF EXISTS `mm_exh_area_goods_banners_apply_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_exh_area_goods_banners_apply_goods` (
  `banner_id` bigint unsigned NOT NULL COMMENT '영역 키(mm_exh_area_goods_banners.id)',
  `goods_id` bigint unsigned NOT NULL COMMENT '대상 상품 고유키(mm_gds_items.id)',
  KEY `mm_exh_area_goods_banners_apply_goods_banner_id_index` (`banner_id`),
  KEY `mm_exh_area_goods_banners_apply_goods_goods_id_index` (`goods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_exh_area_goods_banners_apply_goods`
--

LOCK TABLES `mm_exh_area_goods_banners_apply_goods` WRITE;
/*!40000 ALTER TABLE `mm_exh_area_goods_banners_apply_goods` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_exh_area_goods_banners_apply_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_exh_areas`
--

DROP TABLE IF EXISTS `mm_exh_areas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_exh_areas` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '영역 구분(goods_description: 상품 상세 공통, goods_detail_band: 상품 상세 띠배너, ...)',
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '제목(관리제목)',
  `is_use` tinyint(1) NOT NULL DEFAULT '1' COMMENT '사용 여부',
  `display_start_at` datetime NOT NULL COMMENT '노출 시작시간',
  `display_end_at` datetime NOT NULL COMMENT '노출 종료시간',
  `usable_device` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '사용 가능 디바이스(0: 불가, 1:PC,2:모바일웹,3:모바일앱,4:PC+모바일웹,5:PC+모바일앱,6:모바일웹+모바일앱,7:PC+모바일웹+모바일앱)',
  `html_contents_1` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '내용(HTML) 1',
  `html_contents_2` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '내용(HTML) 2',
  `apply_range_type` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all' COMMENT '쿠폰 적용 범위(seller: 판매자, goods: 상품, category: 카테고리, brand: 진열브랜드)',
  `is_except_by_seller` tinyint(1) NOT NULL DEFAULT '0' COMMENT '판매자 단위 제외적용 여부',
  `is_except_by_goods` tinyint(1) NOT NULL DEFAULT '0' COMMENT '상품 단위 제외적용 여부',
  `is_except_by_category` tinyint(1) NOT NULL DEFAULT '0' COMMENT '카테고리 단위 제외적용 여부',
  `is_except_by_brand` tinyint(1) NOT NULL DEFAULT '0' COMMENT '브랜드 단위 제외적용 여부',
  `created_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '등록 관리자',
  `updated_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '수정 관리자',
  `deleted_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '삭제 관리자',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mm_exh_areas_type_index` (`type`),
  KEY `mm_exh_areas_is_use_index` (`is_use`),
  KEY `mm_exh_areas_display_start_at_index` (`display_start_at`),
  KEY `mm_exh_areas_display_end_at_index` (`display_end_at`),
  KEY `mm_exh_areas_usable_device_index` (`usable_device`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_exh_areas`
--

LOCK TABLES `mm_exh_areas` WRITE;
/*!40000 ALTER TABLE `mm_exh_areas` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_exh_areas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_exh_brand_contents`
--

DROP TABLE IF EXISTS `mm_exh_brand_contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_exh_brand_contents` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '쇼케이스 고유키',
  `contents_category_id` bigint unsigned NOT NULL COMMENT '분류 키(mm_exh_brand_contents_categories.id)',
  `title` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '쇼케이스 제목',
  `sub_title` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '소제목',
  `is_use` tinyint unsigned NOT NULL DEFAULT '1' COMMENT '사용여부 0:미사용, 1:사용',
  `start_date` datetime NOT NULL COMMENT '노출시작일',
  `mobile_alt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '모바일 배너 이미지 파일 대체텍스트',
  `is_pc_same_as_mobile` tinyint unsigned NOT NULL DEFAULT '1' COMMENT 'mobile 과 동일한 이미지 사용',
  `pc_alt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'pc 배너 이미지 파일 대체텍스트',
  `main_text1` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '메인문구1',
  `main_text2` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '메인문구2',
  `contents` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '쇼케이스 상세내용',
  `is_use_video` tinyint(1) NOT NULL DEFAULT '0' COMMENT '동영상 사용여부 (boolean)',
  `video_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '동영상 주소(태그포함)',
  `brand_id` bigint unsigned DEFAULT NULL COMMENT '브랜드id mm_adm_seller_details.brand_id',
  `created_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '등록자',
  `updated_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '수정자',
  `deleted_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '등록일시',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '수정일시',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `showcase_category_id_index` (`contents_category_id`),
  KEY `title_index` (`title`),
  KEY `is_use_index` (`is_use`),
  KEY `start_date_index` (`start_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='브랜드 컨텐츠 (구 쇼케이스 테이블)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_exh_brand_contents`
--

LOCK TABLES `mm_exh_brand_contents` WRITE;
/*!40000 ALTER TABLE `mm_exh_brand_contents` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_exh_brand_contents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_exh_brand_contents_categories`
--

DROP TABLE IF EXISTS `mm_exh_brand_contents_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_exh_brand_contents_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '관리코드',
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '분류명',
  `is_display` tinyint(1) NOT NULL DEFAULT '1' COMMENT '노출 여부',
  `order_seq` int unsigned NOT NULL DEFAULT '0' COMMENT '정렬 순서값',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '등록자',
  `updated_user` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '수정자',
  `deleted_user` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '삭제자',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='브랜드 컨텐츠 분류 (구 쇼케이스 테이블)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_exh_brand_contents_categories`
--

LOCK TABLES `mm_exh_brand_contents_categories` WRITE;
/*!40000 ALTER TABLE `mm_exh_brand_contents_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_exh_brand_contents_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_exh_brand_contents_goods`
--

DROP TABLE IF EXISTS `mm_exh_brand_contents_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_exh_brand_contents_goods` (
  `contents_id` bigint unsigned NOT NULL COMMENT '브랜드 컨텐츠 id (mm_exh_brand_contents.id)',
  `contents_group_id` bigint unsigned NOT NULL COMMENT '브랜드 컨텐츠 그룹 id (mm_exh_brand_contents_groups.id)',
  `goods_id` bigint unsigned NOT NULL COMMENT '상품 코드(mm_gds_items.id)',
  `order_seq` int unsigned NOT NULL DEFAULT '4294967295' COMMENT '배치순서 (등록,수정시 순서변경용)',
  KEY `showcase_id_index` (`contents_id`),
  KEY `showcase_group_id_index` (`contents_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='브랜드 컨텐츠 그룹 연동 상품 (구 쇼케이스 테이블)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_exh_brand_contents_goods`
--

LOCK TABLES `mm_exh_brand_contents_goods` WRITE;
/*!40000 ALTER TABLE `mm_exh_brand_contents_goods` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_exh_brand_contents_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_exh_brand_contents_groups`
--

DROP TABLE IF EXISTS `mm_exh_brand_contents_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_exh_brand_contents_groups` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '고유번호',
  `contents_id` bigint unsigned NOT NULL COMMENT '브랜드 컨텐츠 id (mm_exh_brand_contents.id)',
  `mobile_alt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '모바일 상세이미지 대체 텍스트',
  `pc_alt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'pc 상세이미지 대체텍스트',
  `order_seq` int unsigned NOT NULL DEFAULT '4294967295' COMMENT '배치순서 (등록,수정시 순서변경용)',
  `is_display` tinyint(1) NOT NULL DEFAULT '1' COMMENT '노출여부 고정값(노출) 1:노출 (boolean)',
  `created_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '등록자',
  `updated_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '수정자',
  `deleted_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '삭제 관리자 정보',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '등록일시',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '수정일시',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='브랜드 컨텐츠 그룹 (구 쇼케이스 테이블)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_exh_brand_contents_groups`
--

LOCK TABLES `mm_exh_brand_contents_groups` WRITE;
/*!40000 ALTER TABLE `mm_exh_brand_contents_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_exh_brand_contents_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_exh_catalogue_contents`
--

DROP TABLE IF EXISTS `mm_exh_catalogue_contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_exh_catalogue_contents` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '매거진 고유키',
  `contents_category_id` bigint unsigned NOT NULL COMMENT '분류 키(mm_exh_catalogue_contents_categories.id)',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '제목',
  `is_use` tinyint(1) NOT NULL DEFAULT '0' COMMENT '사용여부',
  `display_start_at` datetime NOT NULL COMMENT '노출 시작일',
  `listing_type` tinyint unsigned NOT NULL COMMENT '리스트 노출타입(0: 이미지, 20: 동영상)',
  `vertical_alt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '리스트 노출타입이 이미지(0)일 때 세로 이미지 대체 텍스트',
  `horizontal_alt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '리스트 노출타입이 이미지(0)일 때 가로 이미지 대체 텍스트',
  `listing_video_source` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '리스트 노출타입이 동영상(20)일 때 동영상 삽입 태그<iframe>',
  `listing_title_1` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '리스팅 타이틀 1',
  `listing_title_2` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '리스팅 타이틀 2',
  `content_type` tinyint unsigned NOT NULL COMMENT '상세 컨텐츠 타입(0: 이미지, 10: 슬라이드 배너, 20: 동영상',
  `content_alt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '상세 컨텐츠 타입이 이미지(0)일 때 대체 텍스트',
  `content_image_count` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '상세 컨텐츠 타입이 슬라이드 배너(10)일 때 총 추가이미지 수)',
  `content_video_source` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '상세 컨텐츠 타입이 동영상(20)일 때 동영상 삽입 태그<iframe>',
  `content_main_text_1` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '상세 컨텐츠 메인 문구 1',
  `content_main_text_2` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '상세 컨텐츠 메인 문구 2',
  `content_sub_text` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '상세 컨텐츠 서브 문구',
  `content_html` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '상세 컨텐츠 에디터 소스(html)',
  `hashtag_concat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '콤마(,)로 concat 된 해시태그 문자열',
  `order_value` int unsigned NOT NULL DEFAULT '0' COMMENT '정렬 가중치(높을수록 상단 노출)',
  `created_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '등록관리자',
  `updated_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '최근 수정관리자',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mm_con_magazines_title_index` (`title`),
  KEY `mm_con_magazines_created_at_index` (`created_at`),
  KEY `mm_con_magazines_display_start_at_index` (`display_start_at`),
  KEY `mm_con_magazines_is_use_index` (`is_use`),
  KEY `mm_con_magazines_order_value_index` (`order_value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='카탈로그 컨텐츠 (구 매거진 테이블)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_exh_catalogue_contents`
--

LOCK TABLES `mm_exh_catalogue_contents` WRITE;
/*!40000 ALTER TABLE `mm_exh_catalogue_contents` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_exh_catalogue_contents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_exh_catalogue_contents_categories`
--

DROP TABLE IF EXISTS `mm_exh_catalogue_contents_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_exh_catalogue_contents_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '매거진 카테고리 고유키',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '매거진 카테고리명',
  `is_use` tinyint(1) NOT NULL DEFAULT '1' COMMENT '사용 여부',
  `order_seq` tinyint unsigned NOT NULL COMMENT '정렬 순서값',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='카탈로그 컨텐츠 분류 (구 매거진 테이블)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_exh_catalogue_contents_categories`
--

LOCK TABLES `mm_exh_catalogue_contents_categories` WRITE;
/*!40000 ALTER TABLE `mm_exh_catalogue_contents_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_exh_catalogue_contents_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_exh_catalogue_contents_update_logs`
--

DROP TABLE IF EXISTS `mm_exh_catalogue_contents_update_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_exh_catalogue_contents_update_logs` (
  `log_id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '로깅 고유키',
  `log_ip_address` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '수정자 ip 주소',
  `updated_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '수정자 아이디 또는 이름',
  `logged_at` datetime NOT NULL COMMENT '수정기록된 시간',
  `id` bigint unsigned NOT NULL COMMENT '매거진 고유키',
  `contents_category_id` bigint unsigned NOT NULL COMMENT '분류 키(mm_exh_catalogue_contents_categories.id)',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '제목',
  `is_use` tinyint(1) NOT NULL DEFAULT '0' COMMENT '사용여부',
  `display_start_at` datetime NOT NULL COMMENT '노출 시작일',
  `listing_type` tinyint unsigned NOT NULL COMMENT '리스트 노출타입(0: 이미지, 20: 동영상)',
  `vertical_alt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '리스트 노출타입이 이미지(0)일 때 세로 이미지 대체 텍스트',
  `horizontal_alt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '리스트 노출타입이 이미지(0)일 때 가로 이미지 대체 텍스트',
  `listing_video_source` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '리스트 노출타입이 동영상(20)일 때 동영상 삽입 태그<iframe>',
  `listing_title_1` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '리스팅 타이틀 1',
  `listing_title_2` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '리스팅 타이틀 2',
  `content_type` tinyint unsigned NOT NULL COMMENT '상세 컨텐츠 타입(0: 이미지, 10: 슬라이드 배너, 20: 동영상',
  `content_alt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '상세 컨텐츠 타입이 이미지(0)일 때 대체 텍스트',
  `content_image_count` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '상세 컨텐츠 타입이 슬라이드 배너(10)일 때 총 추가이미지 수)',
  `content_video_source` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '상세 컨텐츠 타입이 동영상(20)일 때 동영상 삽입 태그<iframe>',
  `content_main_text_1` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '상세 컨텐츠 메인 문구 1',
  `content_main_text_2` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '상세 컨텐츠 메인 문구 2',
  `content_sub_text` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '상세 컨텐츠 서브 문구',
  `content_html` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '상세 컨텐츠 에디터 소스(html)',
  `hashtag_concat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '콤마(,)로 concat 된 해시태그 문자열',
  `order_value` int unsigned NOT NULL DEFAULT '0' COMMENT '정렬 가중치(높을수록 상단 노출)',
  `created_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '등록관리자',
  `updated_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '최근 수정관리자',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='카탈로그 컨텐츠 업데이트 로그 (구 매거진 테이블)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_exh_catalogue_contents_update_logs`
--

LOCK TABLES `mm_exh_catalogue_contents_update_logs` WRITE;
/*!40000 ALTER TABLE `mm_exh_catalogue_contents_update_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_exh_catalogue_contents_update_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_exh_codishot_categories`
--

DROP TABLE IF EXISTS `mm_exh_codishot_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_exh_codishot_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `is_use` tinyint(1) NOT NULL COMMENT '사용여부',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '구분명',
  `created_user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '등록자',
  `updated_user` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '수정자',
  `deleted_user` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '삭제자',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_exh_codishot_categories`
--

LOCK TABLES `mm_exh_codishot_categories` WRITE;
/*!40000 ALTER TABLE `mm_exh_codishot_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_exh_codishot_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_exh_codishot_points`
--

DROP TABLE IF EXISTS `mm_exh_codishot_points`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_exh_codishot_points` (
  `codishot_id` bigint unsigned NOT NULL COMMENT '코디샷 번호',
  `x` decimal(4,2) unsigned NOT NULL COMMENT 'X 위치값(비율)',
  `y` decimal(4,2) unsigned NOT NULL COMMENT 'Y 위치값(비율)',
  `goods_id` bigint unsigned NOT NULL COMMENT '연결상품번호',
  `order_seq` int unsigned NOT NULL COMMENT '정렬 순서값',
  KEY `mm_exh_codishot_points_codishot_id_index` (`codishot_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_exh_codishot_points`
--

LOCK TABLES `mm_exh_codishot_points` WRITE;
/*!40000 ALTER TABLE `mm_exh_codishot_points` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_exh_codishot_points` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_exh_codishots`
--

DROP TABLE IF EXISTS `mm_exh_codishots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_exh_codishots` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `category_id` bigint unsigned NOT NULL COMMENT '구분 번호',
  `is_use` tinyint(1) NOT NULL COMMENT '사용 여부',
  `display_start_at` timestamp NOT NULL COMMENT '노출시작일시',
  `display_end_at` timestamp NOT NULL COMMENT '노출종료일시',
  `brand_text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '노출용 브랜드명(단순텍스트)',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '제목',
  `subtext` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '서브 문구',
  `alt` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '이미지 대체텍스트',
  `created_user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '등록자',
  `updated_user` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '수정자',
  `deleted_user` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '삭제자',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `order_seq` int unsigned NOT NULL DEFAULT '999' COMMENT '정렬 순서값',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_exh_codishots`
--

LOCK TABLES `mm_exh_codishots` WRITE;
/*!40000 ALTER TABLE `mm_exh_codishots` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_exh_codishots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_exh_edit_logs`
--

DROP TABLE IF EXISTS `mm_exh_edit_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_exh_edit_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `loggable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `loggable_id` bigint unsigned NOT NULL,
  `ip` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '수정자 IP',
  `server_machine_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '처리한 서버 머신명',
  `changes` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '변경내용',
  `modifier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '변경자 정보',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mm_exh_edit_logs_loggable_type_loggable_id_index` (`loggable_type`,`loggable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_exh_edit_logs`
--

LOCK TABLES `mm_exh_edit_logs` WRITE;
/*!40000 ALTER TABLE `mm_exh_edit_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_exh_edit_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_exh_influencer_contents`
--

DROP TABLE IF EXISTS `mm_exh_influencer_contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_exh_influencer_contents` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '제목(관리제목)',
  `is_use` tinyint(1) NOT NULL DEFAULT '1' COMMENT '사용 여부',
  `display_start_at` datetime NOT NULL COMMENT '노출 시작시간',
  `display_end_at` datetime NOT NULL COMMENT '노출 종료시간',
  `main_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '메인 문구',
  `sub_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '서브 문구',
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '링크 URL',
  `alt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_exh_influencer_contents`
--

LOCK TABLES `mm_exh_influencer_contents` WRITE;
/*!40000 ALTER TABLE `mm_exh_influencer_contents` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_exh_influencer_contents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_exh_influencer_contents_goods_category`
--

DROP TABLE IF EXISTS `mm_exh_influencer_contents_goods_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_exh_influencer_contents_goods_category` (
  `influencer_contents_id` bigint unsigned NOT NULL COMMENT '컨텐츠 키(mm_exh_influencer_contents.id)',
  `category_code` char(9) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '대상 카테고리 고유코드(mm_shp_category_inco.code)',
  KEY `influencer_contents_id_index` (`influencer_contents_id`),
  KEY `category_code_index` (`category_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_exh_influencer_contents_goods_category`
--

LOCK TABLES `mm_exh_influencer_contents_goods_category` WRITE;
/*!40000 ALTER TABLE `mm_exh_influencer_contents_goods_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_exh_influencer_contents_goods_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_exh_influencer_contents_mall`
--

DROP TABLE IF EXISTS `mm_exh_influencer_contents_mall`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_exh_influencer_contents_mall` (
  `influencer_contents_id` bigint unsigned NOT NULL COMMENT '컨텐츠 키(mm_exh_influencer_contents.id)',
  `mall_id` bigint unsigned NOT NULL COMMENT '대상 몰 키(mm_shp_malls.id)',
  KEY `influencer_contents_id_index` (`influencer_contents_id`),
  KEY `mall_id_index` (`mall_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_exh_influencer_contents_mall`
--

LOCK TABLES `mm_exh_influencer_contents_mall` WRITE;
/*!40000 ALTER TABLE `mm_exh_influencer_contents_mall` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_exh_influencer_contents_mall` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_exh_joint_purchase_applied_members`
--

DROP TABLE IF EXISTS `mm_exh_joint_purchase_applied_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_exh_joint_purchase_applied_members` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `joint_id` bigint unsigned NOT NULL COMMENT '공동구매 고유번호 (mm_exh_joint_purchases.id)',
  `member_id` bigint unsigned NOT NULL COMMENT '회원 고유번호 (mm_mem_members.id)',
  `goods_id` bigint unsigned NOT NULL COMMENT '상품 고유번호 (mm_gds_items.id)',
  `option_id` bigint unsigned NOT NULL COMMENT '옵션 고유번호 (mm_gds_options.id)',
  `ea` int unsigned NOT NULL COMMENT '옵션 수량',
  `is_sell` tinyint(1) NOT NULL DEFAULT '0' COMMENT '구매 여부 (0: 미구매, 1: 구매)',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order_id` bigint unsigned DEFAULT NULL COMMENT '공동구매 당첨상품 구매 주문번호',
  PRIMARY KEY (`id`),
  KEY `joint_id_index` (`joint_id`),
  KEY `member_id_index` (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='공동구매 참여 정보';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_exh_joint_purchase_applied_members`
--

LOCK TABLES `mm_exh_joint_purchase_applied_members` WRITE;
/*!40000 ALTER TABLE `mm_exh_joint_purchase_applied_members` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_exh_joint_purchase_applied_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_exh_joint_purchases`
--

DROP TABLE IF EXISTS `mm_exh_joint_purchases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_exh_joint_purchases` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` bigint unsigned NOT NULL COMMENT '상품 고유번호 (mm_gds_items.id)',
  `extra_coupon_id` bigint unsigned NOT NULL COMMENT '쿠폰 고유번호 (mm_prm_extra_coupons.id)',
  `is_use` tinyint(1) NOT NULL DEFAULT '1' COMMENT '사용 여부',
  `start_at` datetime NOT NULL COMMENT '진행 시작일시',
  `end_at` datetime NOT NULL COMMENT '진행 종료일시',
  `goal_amount` int unsigned NOT NULL DEFAULT '0' COMMENT '목표 수량',
  `created_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '등록 관리자',
  `updated_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '수정 관리자',
  `deleted_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '삭제 관리자',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mm_exh_joint_purchases_goods_id_index` (`goods_id`),
  KEY `mm_exh_joint_purchases_is_use_index` (`is_use`),
  KEY `mm_exh_joint_purchases_start_at_index` (`start_at`),
  KEY `mm_exh_joint_purchases_end_at_index` (`end_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='공동구매';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_exh_joint_purchases`
--

LOCK TABLES `mm_exh_joint_purchases` WRITE;
/*!40000 ALTER TABLE `mm_exh_joint_purchases` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_exh_joint_purchases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_exh_lego_banners`
--

DROP TABLE IF EXISTS `mm_exh_lego_banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_exh_lego_banners` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `page_id` bigint unsigned NOT NULL COMMENT '페이지 키 (mm_exh_lego_pages.id)',
  `container_id` bigint unsigned NOT NULL COMMENT '컨테이너 키 (mm_exh_lego_containers.id)',
  `block_id` bigint unsigned NOT NULL COMMENT '블럭 키 (mm_exh_lego_blocks.id)',
  `tab_id` bigint unsigned DEFAULT NULL COMMENT '탭 키 (mm_exh_lego_tabs.id)',
  `position` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '귀속 유형 (partition, tab ...)',
  `is_use` tinyint(1) NOT NULL DEFAULT '1' COMMENT '사용 여부',
  `display_start_at` datetime NOT NULL COMMENT '노출 시작일',
  `display_end_at` datetime NOT NULL COMMENT '노출 종료일',
  `has_mobile_image` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'MOBILE 이미지 존재여부',
  `mobile_alt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'MOBILE 이미지 대체텍스트',
  `is_use_mobile_text` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'MOBILE 문구 사용 여부',
  `mobile_text_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'MOBILE 문구 1',
  `mobile_text_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'MOBILE 문구 2',
  `mobile_text_3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'MOBILE 문구 3',
  `mobile_text_4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'MOBILE 문구 4',
  `is_use_mobile_text_color` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'MOBILE 문구 색상 사용 여부',
  `mobile_text_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'MOBILE 문구 색상',
  `mobile_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'MOBILE 링크 URL',
  `is_pc_same_as_mobile` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'MOBILE과 동일 사용 여부',
  `has_pc_image` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'PC 이미지 존재여부',
  `pc_alt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'PC 이미지 대체텍스트',
  `is_use_pc_text` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'PC 문구 사용 여부',
  `pc_text_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'PC 문구 1',
  `pc_text_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'PC 문구 2',
  `pc_text_3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'PC 문구 3',
  `pc_text_4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'PC 문구 4',
  `is_use_pc_text_color` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'PC 문구 색상 사용 여부',
  `pc_text_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'PC 문구 색상',
  `pc_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'PC 링크 URL',
  `has_tabs` tinyint(1) NOT NULL DEFAULT '0' COMMENT '탭 유무',
  `has_goods_groups` tinyint(1) NOT NULL DEFAULT '0' COMMENT '상품 그룹 유무',
  `order_seq` int NOT NULL DEFAULT '0' COMMENT '노출 순번',
  `created_user` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '등록자',
  `updated_user` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '수정자',
  `deleted_user` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '삭제자',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mm_exh_lego_banners_position_index` (`position`),
  KEY `mm_exh_lego_banners_display_start_at_index` (`display_start_at`),
  KEY `mm_exh_lego_banners_display_end_at_index` (`display_end_at`),
  KEY `mm_exh_lego_banners_has_tabs_index` (`has_tabs`),
  KEY `mm_exh_lego_banners_has_goods_groups_index` (`has_goods_groups`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_exh_lego_banners`
--

LOCK TABLES `mm_exh_lego_banners` WRITE;
/*!40000 ALTER TABLE `mm_exh_lego_banners` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_exh_lego_banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_exh_lego_blocks`
--

DROP TABLE IF EXISTS `mm_exh_lego_blocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_exh_lego_blocks` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `page_id` bigint unsigned NOT NULL COMMENT '페이지 키 (mm_exh_lego_pages.id)',
  `container_id` bigint unsigned NOT NULL COMMENT '컨테이너 키 (mm_exh_lego_containers.id)',
  `is_use` tinyint(1) NOT NULL DEFAULT '1' COMMENT '사용 여부',
  `mobile_mui_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'MOBILE 블럭 Dom 코드 (data-mui)',
  `is_display_on_mobile` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'MOBILE 노출 여부',
  `is_use_mobile_title_1` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'MOBILE 타이틀 1 사용 여부',
  `is_use_mobile_title_2` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'MOBILE 타이틀 2 사용 여부',
  `is_display_mobile_title_1` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'MOBILE 타이틀 1 노출 여부',
  `is_display_mobile_title_2` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'MOBILE 타이틀 2 노출 여부',
  `mobile_title_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'MOBILE 타이틀 1',
  `mobile_title_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'MOBILE 타이틀 2',
  `is_use_mobile_link` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'MOBILE 링크 사용 여부',
  `mobile_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'MOBILE 링크 (전체보기, 더보기 ...)',
  `mobile_title_class` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'MOBILE 타이틀 디자인 클래스',
  `mobile_option_json` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'MOBILE 개발 옵션 JSON',
  `is_pc_same_as_mobile` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'MOBILE과 동일 사용 여부',
  `pc_mui_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'PC 블럭 Dom 코드 (data-mui)',
  `is_display_on_pc` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'PC 노출 여부',
  `is_use_pc_title_1` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'PC 타이틀 1 사용 여부',
  `is_use_pc_title_2` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'PC 타이틀 2 사용 여부',
  `is_display_pc_title_1` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'PC 타이틀 1 노출 여부',
  `is_display_pc_title_2` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'PC 타이틀 2 노출 여부',
  `pc_title_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'PC 타이틀 1',
  `pc_title_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'PC 타이틀 2',
  `is_use_pc_link` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'PC 링크 사용 여부',
  `pc_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'PC 링크 (전체보기, 더보기 ...)',
  `pc_title_class` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'PC 타이틀 디자인 클래스',
  `pc_option_json` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'PC 개발 옵션 JSON',
  `manage_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '관리용 타이틀',
  `has_tabs` tinyint(1) NOT NULL DEFAULT '0' COMMENT '탭 유무',
  `has_banners` tinyint(1) NOT NULL DEFAULT '0' COMMENT '배너 유무',
  `has_goods_groups` tinyint(1) NOT NULL DEFAULT '0' COMMENT '상품 그룹 유무',
  `order_seq` int NOT NULL DEFAULT '0' COMMENT '노출 순번',
  `created_user` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '등록자',
  `updated_user` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '수정자',
  `deleted_user` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '삭제자',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mm_exh_lego_blocks_mobile_mui_code_index` (`mobile_mui_code`),
  KEY `mm_exh_lego_blocks_pc_mui_code_index` (`pc_mui_code`),
  KEY `mm_exh_lego_blocks_has_tabs_index` (`has_tabs`),
  KEY `mm_exh_lego_blocks_has_banners_index` (`has_banners`),
  KEY `mm_exh_lego_blocks_has_goods_groups_index` (`has_goods_groups`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_exh_lego_blocks`
--

LOCK TABLES `mm_exh_lego_blocks` WRITE;
/*!40000 ALTER TABLE `mm_exh_lego_blocks` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_exh_lego_blocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_exh_lego_containers`
--

DROP TABLE IF EXISTS `mm_exh_lego_containers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_exh_lego_containers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `page_id` bigint unsigned NOT NULL COMMENT '페이지 키 (mm_exh_lego_pages.id)',
  `block_count` int NOT NULL DEFAULT '0' COMMENT '블럭 조합 수',
  `order_seq` int NOT NULL DEFAULT '0' COMMENT '노출 순번',
  `created_user` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '등록자',
  `updated_user` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '수정자',
  `deleted_user` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '삭제자',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_exh_lego_containers`
--

LOCK TABLES `mm_exh_lego_containers` WRITE;
/*!40000 ALTER TABLE `mm_exh_lego_containers` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_exh_lego_containers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_exh_lego_goods`
--

DROP TABLE IF EXISTS `mm_exh_lego_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_exh_lego_goods` (
  `goods_group_id` bigint unsigned NOT NULL COMMENT '상품 그룹 키 (mm_exh_lego_goods_groups.id)',
  `goods_id` bigint unsigned NOT NULL COMMENT '상품 키 (mm_gds_items.id)',
  `order_seq` int NOT NULL DEFAULT '0' COMMENT '노출 순번',
  KEY `mm_exh_lego_goods_goods_group_id_index` (`goods_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_exh_lego_goods`
--

LOCK TABLES `mm_exh_lego_goods` WRITE;
/*!40000 ALTER TABLE `mm_exh_lego_goods` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_exh_lego_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_exh_lego_goods_groups`
--

DROP TABLE IF EXISTS `mm_exh_lego_goods_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_exh_lego_goods_groups` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `page_id` bigint unsigned NOT NULL COMMENT '페이지 키 (mm_exh_lego_pages.id)',
  `container_id` bigint unsigned NOT NULL COMMENT '컨테이너 키 (mm_exh_lego_containers.id)',
  `block_id` bigint unsigned NOT NULL COMMENT '블럭 키 (mm_exh_lego_blocks.id)',
  `tab_id` bigint unsigned DEFAULT NULL COMMENT '탭 키 (mm_exh_lego_tabs.id)',
  `banner_id` bigint unsigned DEFAULT NULL COMMENT '배너 키 (mm_exh_lego_banners.id)',
  `position` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '귀속 유형 (partition, tab, banner ...)',
  `is_use_mobile_text` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'MOBILE 문구 사용 여부',
  `mobile_text_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'MOBILE 문구 1',
  `mobile_text_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'MOBILE 문구 2',
  `mobile_text_3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'MOBILE 문구 3',
  `is_use_mobile_text_color` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'MOBILE 문구 색상 사용 여부',
  `mobile_text_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'MOBILE 문구 색상',
  `is_use_pc_text` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'PC 문구 사용 여부',
  `pc_text_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'PC 문구 1',
  `pc_text_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'PC 문구 2',
  `pc_text_3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'PC 문구 3',
  `is_use_pc_text_color` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'PC 문구 색상 사용 여부',
  `pc_text_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'PC 문구 색상',
  `order_seq` int NOT NULL DEFAULT '0' COMMENT '노출 순번',
  `created_user` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '등록자',
  `updated_user` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '수정자',
  `deleted_user` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '삭제자',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mm_exh_lego_goods_groups_position_index` (`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_exh_lego_goods_groups`
--

LOCK TABLES `mm_exh_lego_goods_groups` WRITE;
/*!40000 ALTER TABLE `mm_exh_lego_goods_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_exh_lego_goods_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_exh_lego_pages`
--

DROP TABLE IF EXISTS `mm_exh_lego_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_exh_lego_pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `is_use` tinyint(1) NOT NULL DEFAULT '1' COMMENT '사용 여부',
  `code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '페이지 코드 (mainpage, subpage, shoes, accessory ...)',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '페이지명 (메인페이지, 슈즈, 액세서리 ...)',
  `order_seq` int NOT NULL DEFAULT '0' COMMENT '노출 순번',
  `created_user` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '등록자',
  `updated_user` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '수정자',
  `deleted_user` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '삭제자',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mm_exh_lego_pages_code_index` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_exh_lego_pages`
--

LOCK TABLES `mm_exh_lego_pages` WRITE;
/*!40000 ALTER TABLE `mm_exh_lego_pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_exh_lego_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_exh_lego_tabs`
--

DROP TABLE IF EXISTS `mm_exh_lego_tabs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_exh_lego_tabs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `page_id` bigint unsigned NOT NULL COMMENT '페이지 키 (mm_exh_lego_pages.id)',
  `container_id` bigint unsigned NOT NULL COMMENT '컨테이너 키 (mm_exh_lego_containers.id)',
  `block_id` bigint unsigned NOT NULL COMMENT '블럭 키 (mm_exh_lego_blocks.id)',
  `banner_id` bigint unsigned DEFAULT NULL COMMENT '배너 키 (mm_exh_lego_banners.id)',
  `position` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '귀속 유형 (partition, banner ...)',
  `is_use` tinyint(1) NOT NULL DEFAULT '1' COMMENT '사용 여부',
  `display_start_at` datetime NOT NULL COMMENT '노출 시작일',
  `display_end_at` datetime NOT NULL COMMENT '노출 종료일',
  `is_use_mobile_text` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'MOBILE 문구 사용 여부',
  `mobile_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'MOBILE 문구',
  `mobile_background_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'MOBILE 탭 배경 색상',
  `mobile_text_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'MOBILE 문구 색상',
  `is_use_pc_text` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'PC 문구 사용 여부',
  `pc_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'PC 문구',
  `pc_background_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'PC 탭 배경 색상',
  `pc_text_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'PC 문구 색상',
  `has_banners` tinyint(1) NOT NULL DEFAULT '0' COMMENT '배너 유무',
  `has_goods_groups` tinyint(1) NOT NULL DEFAULT '0' COMMENT '상품 그룹 유무',
  `order_seq` int NOT NULL DEFAULT '0' COMMENT '노출 순번',
  `created_user` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '등록자',
  `updated_user` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '수정자',
  `deleted_user` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '삭제자',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mm_exh_lego_tabs_position_index` (`position`),
  KEY `mm_exh_lego_tabs_display_start_at_index` (`display_start_at`),
  KEY `mm_exh_lego_tabs_display_end_at_index` (`display_end_at`),
  KEY `mm_exh_lego_tabs_has_banners_index` (`has_banners`),
  KEY `mm_exh_lego_tabs_has_goods_groups_index` (`has_goods_groups`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_exh_lego_tabs`
--

LOCK TABLES `mm_exh_lego_tabs` WRITE;
/*!40000 ALTER TABLE `mm_exh_lego_tabs` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_exh_lego_tabs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_exh_lookbook_goods`
--

DROP TABLE IF EXISTS `mm_exh_lookbook_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_exh_lookbook_goods` (
  `lookbook_id` bigint unsigned NOT NULL COMMENT '룩북 코드(mm_exh_lookbooks.id)',
  `goods_id` bigint unsigned NOT NULL COMMENT '상품 코드(mm_gds_items.id)',
  `order_seq` int unsigned NOT NULL DEFAULT '0' COMMENT '정렬 순서값'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_exh_lookbook_goods`
--

LOCK TABLES `mm_exh_lookbook_goods` WRITE;
/*!40000 ALTER TABLE `mm_exh_lookbook_goods` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_exh_lookbook_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_exh_lookbooks`
--

DROP TABLE IF EXISTS `mm_exh_lookbooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_exh_lookbooks` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `is_use` tinyint(1) NOT NULL COMMENT '사용 여부',
  `display_start_at` datetime NOT NULL COMMENT '노출 시작시',
  `display_end_at` datetime NOT NULL COMMENT '노출 종료시',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '이벤트 제목',
  `main_text_1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '메인 문구 1',
  `main_text_2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '메인 문구 2',
  `mall_id` bigint unsigned NOT NULL DEFAULT '0' COMMENT '노출 몰 키(mm_shp_malls.id), 0이면 전체 노출',
  `contents_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '상세이미지 등록방식 image:이미지파일등록 , video_url:동영상url 등록',
  `mobile_contents_image_count` int unsigned NOT NULL DEFAULT '0' COMMENT '모바일 컨텐츠이미지 수',
  `pc_contents_image_count` int unsigned NOT NULL DEFAULT '0' COMMENT 'PC 컨텐츠이미지 수',
  `video_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '동영상 URL',
  `created_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_exh_lookbooks`
--

LOCK TABLES `mm_exh_lookbooks` WRITE;
/*!40000 ALTER TABLE `mm_exh_lookbooks` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_exh_lookbooks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_exh_onedepth`
--

DROP TABLE IF EXISTS `mm_exh_onedepth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_exh_onedepth` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `category_code` char(9) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '카테고리 코드',
  `created_user` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '등록자',
  `updated_user` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '수정자',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mm_exh_onedepth_category_code_index` (`category_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='전시관리 - 1DEPTH 페이지';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_exh_onedepth`
--

LOCK TABLES `mm_exh_onedepth` WRITE;
/*!40000 ALTER TABLE `mm_exh_onedepth` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_exh_onedepth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_exh_onedepth_area`
--

DROP TABLE IF EXISTS `mm_exh_onedepth_area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_exh_onedepth_area` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `onedepth_id` bigint NOT NULL,
  `area_type` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '영역 구분(main_banner, best_brand, md_choice, top_brand)',
  `mobile_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '모바일 타이틀',
  `pc_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'PC 타이틀',
  `is_pc_same_as_mobile` tinyint(1) DEFAULT NULL COMMENT 'mobile과 동일한 텍스트 사용',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='전시관리 - 1DEPTH 영역';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_exh_onedepth_area`
--

LOCK TABLES `mm_exh_onedepth_area` WRITE;
/*!40000 ALTER TABLE `mm_exh_onedepth_area` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_exh_onedepth_area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_exh_onedepth_banner`
--

DROP TABLE IF EXISTS `mm_exh_onedepth_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_exh_onedepth_banner` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `onedepth_area_id` bigint NOT NULL,
  `onedepth_id` bigint NOT NULL,
  `order_seq` int NOT NULL COMMENT '순서',
  `display_start_at` datetime NOT NULL COMMENT '노출 시작일',
  `display_end_at` datetime NOT NULL COMMENT '노출 종료일',
  `is_use` tinyint(1) NOT NULL COMMENT '사용 여부',
  `mobile_image_alt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '모바일 배너 이미지 대체 텍스트',
  `is_use_mobile_text` tinyint(1) NOT NULL COMMENT '모바일 텍스트 사용 여부',
  `mobile_banner_text_1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '모바일 배너 텍스트1',
  `mobile_banner_text_2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '모바일 배너 텍스트2',
  `mobile_banner_text_3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '모바일 배너 텍스트3',
  `mobile_banner_text_4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '모바일 배너 텍스트4',
  `mobile_banner_text_color` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '모바일 배너 문구 색상(W: 흰색, B: 검은색)',
  `mobile_link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '모바일 링크 URL',
  `is_pc_same_as_mobile` tinyint(1) NOT NULL COMMENT 'mobile과 동일한 텍스트 사용',
  `pc_image_alt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'PC 배너 이미지 대체 텍스트',
  `is_use_pc_text` tinyint(1) DEFAULT NULL COMMENT 'PC 텍스트 사용 여부',
  `pc_banner_text_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'PC 배너 텍스트1',
  `pc_banner_text_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'PC 배너 텍스트2',
  `pc_banner_text_3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'PC 배너 텍스트3',
  `pc_banner_text_4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'PC 배너 텍스트4',
  `pc_banner_text_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'PC 배너 문구 색상(W: 흰색, B: 검은색)',
  `pc_link_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'PC 링크 URL',
  `created_user` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '등록자',
  `updated_user` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '수정자',
  `deleted_user` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '삭제자',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mm_exh_onedepth_banner_onedepth_id_index` (`onedepth_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='전시관리 - 1DEPTH 배너';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_exh_onedepth_banner`
--

LOCK TABLES `mm_exh_onedepth_banner` WRITE;
/*!40000 ALTER TABLE `mm_exh_onedepth_banner` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_exh_onedepth_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_exh_onedepth_brands`
--

DROP TABLE IF EXISTS `mm_exh_onedepth_brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_exh_onedepth_brands` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `onedepth_area_id` bigint NOT NULL,
  `brands_id` bigint NOT NULL,
  `order_seq` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='전시관리 1DEPTH - 브랜드 연결';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_exh_onedepth_brands`
--

LOCK TABLES `mm_exh_onedepth_brands` WRITE;
/*!40000 ALTER TABLE `mm_exh_onedepth_brands` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_exh_onedepth_brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_exh_onedepth_goods`
--

DROP TABLE IF EXISTS `mm_exh_onedepth_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_exh_onedepth_goods` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `onedepth_area_id` bigint NOT NULL,
  `goods_id` bigint NOT NULL,
  `order_seq` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='전시관리 1DEPTH - 상품 연결';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_exh_onedepth_goods`
--

LOCK TABLES `mm_exh_onedepth_goods` WRITE;
/*!40000 ALTER TABLE `mm_exh_onedepth_goods` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_exh_onedepth_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_exh_planning_event_comments`
--

DROP TABLE IF EXISTS `mm_exh_planning_event_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_exh_planning_event_comments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `planning_event_id` bigint unsigned NOT NULL COMMENT '기획전 고유키',
  `member_id` bigint unsigned NOT NULL COMMENT '작성 회원 고유키',
  `contents` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '댓글 내용',
  `deleted_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '삭제한 사람 정보',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `is_private` tinyint(1) NOT NULL DEFAULT '0' COMMENT '비밀댓글 여부',
  PRIMARY KEY (`id`),
  KEY `mm_exh_planning_event_comments_planning_event_id_index` (`planning_event_id`),
  KEY `mm_exh_planning_event_comments_member_id_index` (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_exh_planning_event_comments`
--

LOCK TABLES `mm_exh_planning_event_comments` WRITE;
/*!40000 ALTER TABLE `mm_exh_planning_event_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_exh_planning_event_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_exh_planning_event_goods`
--

DROP TABLE IF EXISTS `mm_exh_planning_event_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_exh_planning_event_goods` (
  `planning_event_id` bigint unsigned NOT NULL,
  `planning_event_group_id` bigint unsigned NOT NULL COMMENT 'mm_exh_planning_event_goods_groups',
  `goods_id` bigint unsigned NOT NULL COMMENT '상품id',
  `order_seq` int unsigned NOT NULL DEFAULT '0' COMMENT '정렬순서',
  KEY `mm_exh_planning_event_goods` (`planning_event_group_id`),
  KEY `mm_exh_planning_event_goods_orderseq_index` (`order_seq`),
  KEY `mm_exh_planning_event_goods_goodsid_index` (`goods_id`),
  KEY `planning_event_id_index` (`planning_event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='전시관리 - 기획전 - 상품세트 - 상품연결 ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_exh_planning_event_goods`
--

LOCK TABLES `mm_exh_planning_event_goods` WRITE;
/*!40000 ALTER TABLE `mm_exh_planning_event_goods` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_exh_planning_event_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_exh_planning_event_goods_groups`
--

DROP TABLE IF EXISTS `mm_exh_planning_event_goods_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_exh_planning_event_goods_groups` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `planning_event_id` bigint unsigned NOT NULL COMMENT 'mm_exh_planning_events.id',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '상품그룹명',
  `mobile_alt` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '모바일 대체 텍스트',
  `pc_alt` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'PC 대체 텍스트',
  `order_seq` int unsigned NOT NULL DEFAULT '4294967295' COMMENT '배치순서 (등록,수정시 순서변경용)',
  `is_display` tinyint unsigned NOT NULL DEFAULT '1' COMMENT '노출여부 0:미노출, 1:노출',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '등록일시',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '수정일시',
  `deleted_at` datetime DEFAULT NULL COMMENT '삭제일시 (softDeletes)',
  `has_mobile_image` tinyint(1) NOT NULL DEFAULT '0' COMMENT '모바일 이미지 존재 여부',
  `has_pc_image` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'PC 이미지 존재 여부',
  `mobile_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '모바일 링크',
  `pc_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'PC 링크',
  PRIMARY KEY (`id`),
  KEY `mm_exh_planning_event_goods_groups_planning_event_id_index` (`planning_event_id`),
  KEY `mm_exh_planning_event_goods_groups_deletedat_index` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='전시관리 - 기획전 - 상품그룹';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_exh_planning_event_goods_groups`
--

LOCK TABLES `mm_exh_planning_event_goods_groups` WRITE;
/*!40000 ALTER TABLE `mm_exh_planning_event_goods_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_exh_planning_event_goods_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_exh_planning_event_main_goods`
--

DROP TABLE IF EXISTS `mm_exh_planning_event_main_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_exh_planning_event_main_goods` (
  `planning_event_id` bigint unsigned NOT NULL COMMENT '기획전 코드(mm_exh_planning_events.id)',
  `goods_id` bigint unsigned NOT NULL COMMENT '상품 코드(mm_gds_items.id)',
  `order_seq` int unsigned NOT NULL DEFAULT '0' COMMENT '정렬 순서값',
  KEY `planning_event_id_index` (`planning_event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_exh_planning_event_main_goods`
--

LOCK TABLES `mm_exh_planning_event_main_goods` WRITE;
/*!40000 ALTER TABLE `mm_exh_planning_event_main_goods` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_exh_planning_event_main_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_exh_planning_event_section_goods`
--

DROP TABLE IF EXISTS `mm_exh_planning_event_section_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_exh_planning_event_section_goods` (
  `section_id` bigint unsigned NOT NULL COMMENT '기획전 섹션 코드(mm_exh_planning_event_sections.id)',
  `goods_id` bigint unsigned NOT NULL COMMENT '상품 코드(mm_gds_items.id)',
  `order_seq` int unsigned NOT NULL DEFAULT '0' COMMENT '정렬 순서값',
  KEY `section_id_index` (`section_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_exh_planning_event_section_goods`
--

LOCK TABLES `mm_exh_planning_event_section_goods` WRITE;
/*!40000 ALTER TABLE `mm_exh_planning_event_section_goods` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_exh_planning_event_section_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_exh_planning_event_sections`
--

DROP TABLE IF EXISTS `mm_exh_planning_event_sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_exh_planning_event_sections` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `planning_event_id` bigint unsigned NOT NULL COMMENT '기획전 코드(mm_exh_planning_events.id)',
  `is_display` tinyint(1) NOT NULL DEFAULT '1' COMMENT '노출 여부',
  `mobile_html` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '모바일 HTML',
  `pc_html` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'PC HTML',
  `order_seq` int unsigned NOT NULL DEFAULT '0' COMMENT '정렬 순서값',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `planning_event_id_index` (`planning_event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_exh_planning_event_sections`
--

LOCK TABLES `mm_exh_planning_event_sections` WRITE;
/*!40000 ALTER TABLE `mm_exh_planning_event_sections` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_exh_planning_event_sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_exh_planning_events`
--

DROP TABLE IF EXISTS `mm_exh_planning_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_exh_planning_events` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '고유 번호',
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '기획전 제목',
  `is_use` tinyint unsigned NOT NULL DEFAULT '1' COMMENT '사용여부 0:미사용, 1:사용',
  `display_start_at` datetime NOT NULL COMMENT '노출시작일',
  `display_end_at` datetime NOT NULL COMMENT '노출종료일',
  `contents_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '상세이미지 등록방식 image:이미지파일등록 , html:에디터 등록',
  `cache_type` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'realtime' COMMENT '관련정보 캐싱 유형(realtime: 실시간, file: 파일 캐싱)',
  `pc_contents` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'pc 상세이미지 (등록방식 1일때 file정보, 2일때 에디터 html)',
  `pc_contents_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'pc 상세이미지 대체텍스트',
  `mobile_contents` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'mobile 상세이미지 (등록방식 1일때 file정보, 2일때 에디터 html)',
  `mobile_contents_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'mobile 상세이미지 대체텍스트',
  `is_commentable` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '댓글 사용여부',
  `created_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '등록자',
  `updated_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '수정자',
  `deleted_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '삭제 관리자 정보',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '등록일시',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '수정일시',
  `deleted_at` datetime DEFAULT NULL COMMENT '삭제일시 (softDeletes)',
  `use_custom_url` tinyint(1) NOT NULL DEFAULT '0' COMMENT '별도 상세 URL 사용여부',
  `custom_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '별도 상세 URL',
  `mall_id` bigint unsigned NOT NULL DEFAULT '0' COMMENT '노출 몰 키(mm_shp_malls.id), 0이면 전체 노출',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '기획전 소개 문구',
  `is_pc_same_as_mobile` tinyint(1) NOT NULL DEFAULT '1' COMMENT '모바일 -> PC 공통정보 사용여부',
  `approve_type` tinyint NOT NULL DEFAULT '0' COMMENT '승인 여부(0: 미승인, 1: 승인)',
  `approve_changed_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '승인여부 변경자 이름과 아이디',
  `approve_changed_at` timestamp NULL DEFAULT NULL COMMENT '승인여부 변경일시',
  `middle_user_id` int unsigned DEFAULT NULL COMMENT '셀러 고유 번호',
  `seller_id` int unsigned DEFAULT NULL COMMENT '중간관리자 고유 번호',
  PRIMARY KEY (`id`),
  KEY `mm_exh_planning_events_createdat_index` (`created_at`),
  KEY `mm_exh_planning_events_deletedat_index` (`deleted_at`),
  KEY `mm_exh_planning_events_display_start_at_index` (`display_start_at`),
  KEY `mm_exh_planning_events_display_end_at_index` (`display_end_at`),
  KEY `mm_exh_planning_events_isuse_index` (`is_use`),
  KEY `title_index` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='전시관리 - 기획전';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_exh_planning_events`
--

LOCK TABLES `mm_exh_planning_events` WRITE;
/*!40000 ALTER TABLE `mm_exh_planning_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_exh_planning_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_exh_popups`
--

DROP TABLE IF EXISTS `mm_exh_popups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_exh_popups` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '고유번호',
  `is_use` tinyint unsigned NOT NULL DEFAULT '1' COMMENT '사용 여부',
  `display_start_at` datetime NOT NULL COMMENT '팝업시작일',
  `display_end_at` datetime NOT NULL COMMENT '팝업종료일',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '제목',
  `link_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '링크 url',
  `mobile_image_file` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'mobile 이미지',
  `mobile_image_file_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'mobile 이미지 설명',
  `pc_image_file` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'pc 이미지',
  `pc_image_file_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'pc 이미지설명',
  `is_display_on_mobile` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'mobile 노출여부 boolean',
  `is_display_on_pc` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'pc 노출여부 boolean',
  `is_pc_same_as_mobile` tinyint(1) DEFAULT '1' COMMENT '모바일과 동일한 이미지 사용여부 0:pc별도입력, 1:모바일과 동일',
  `is_today_blind` tinyint(1) DEFAULT '1' COMMENT '오늘하루보지않기 기능 사용여부 0:미사용, 1:사용',
  `order_seq` int DEFAULT '0' COMMENT '노출순서',
  `created_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '등록자',
  `updated_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '수정자',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '등록 일시',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '수정 일시',
  `deleted_at` datetime DEFAULT NULL COMMENT '삭제 일시 (softDeletes)',
  PRIMARY KEY (`id`),
  KEY `mm_exh_popups_date_index` (`display_start_at`,`display_end_at`),
  KEY `mm_exh_popups_isuse_index` (`is_use`),
  KEY `mm_exh_popups_display_end_at_index` (`display_end_at`),
  KEY `mm_exh_popups_order_seq_index` (`order_seq`),
  KEY `mm_exh_popups_createdat_index` (`created_at`),
  KEY `mm_exh_popups_deletedat_index` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='전시관리 - 팝업';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_exh_popups`
--

LOCK TABLES `mm_exh_popups` WRITE;
/*!40000 ALTER TABLE `mm_exh_popups` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_exh_popups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_exh_raffle_enter_members`
--

DROP TABLE IF EXISTS `mm_exh_raffle_enter_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_exh_raffle_enter_members` (
  `raffle_id` bigint unsigned NOT NULL COMMENT '래플 고유키(mm_exh_raffles.id)',
  `member_id` bigint unsigned NOT NULL COMMENT '회원 고유키(mm_mem_members.id)',
  `is_winner` tinyint(1) NOT NULL DEFAULT '0' COMMENT '당첨 여부 1: 당첨 0: 미당첨',
  `is_ordered` tinyint(1) NOT NULL DEFAULT '0' COMMENT '구매 여부 1: 구매 0: 미구매',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `order_id` bigint unsigned DEFAULT NULL COMMENT '당첨상품 구매 주문번호',
  KEY `mm_exh_raffle_enter_members_member_id_index` (`member_id`),
  KEY `mm_exh_raffle_enter_members_is_winner_index` (`is_winner`),
  KEY `mm_exh_raffle_enter_members_is_ordered_index` (`is_ordered`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_exh_raffle_enter_members`
--

LOCK TABLES `mm_exh_raffle_enter_members` WRITE;
/*!40000 ALTER TABLE `mm_exh_raffle_enter_members` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_exh_raffle_enter_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_exh_raffles`
--

DROP TABLE IF EXISTS `mm_exh_raffles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_exh_raffles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '래플 고유번호',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '래플 제목',
  `goods_id` bigint unsigned NOT NULL COMMENT '상품 고유키(mm_gds_items.id)',
  `use_set_device` tinyint NOT NULL DEFAULT '0' COMMENT '디바이스 설정 (1:PC, 2:모바일웹, 3:모바일앱, 4:PC+모바일웹, 5:PC+모바일앱, 6:모바일웹+모바일앱, 7:PC+모바일웹+모바일앱)',
  `winner_limit_count` int NOT NULL COMMENT '당첨자 제한수',
  `is_display` tinyint(1) NOT NULL DEFAULT '1' COMMENT '노출 여부 1: 노출 0: 미노출',
  `is_employee_except` tinyint(1) NOT NULL DEFAULT '1' COMMENT '임직원 추첨 제외 여부 1: 제외 0: 포함',
  `is_confirmed_winner` tinyint(1) NOT NULL DEFAULT '0' COMMENT '당첨 확정 여부 1: 확정 0: 미확정',
  `start_at` datetime NOT NULL COMMENT '응모 시작 일시',
  `end_at` datetime NOT NULL COMMENT '응모 종료 일시',
  `notice_at` datetime NOT NULL COMMENT '발표 일시',
  `sell_start_at` datetime NOT NULL COMMENT '구매 시작 일시',
  `sell_end_at` datetime NOT NULL COMMENT '구매 종료 일시',
  `created_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '등록자',
  `updated_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '수정자',
  `deleted_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '삭제자',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mm_exh_raffles_title_index` (`title`),
  KEY `mm_exh_raffles_goods_id_index` (`goods_id`),
  KEY `mm_exh_raffles_is_display_index` (`is_display`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_exh_raffles`
--

LOCK TABLES `mm_exh_raffles` WRITE;
/*!40000 ALTER TABLE `mm_exh_raffles` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_exh_raffles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_exh_ranking_brand_records`
--

DROP TABLE IF EXISTS `mm_exh_ranking_brand_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_exh_ranking_brand_records` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '레코드 고유키',
  `brand_id` bigint unsigned NOT NULL COMMENT '브랜드 고유키(mm_shp_brand.id)',
  `created_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '등록자',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mm_exh_ranking_brand_records_brand_id_index` (`brand_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_exh_ranking_brand_records`
--

LOCK TABLES `mm_exh_ranking_brand_records` WRITE;
/*!40000 ALTER TABLE `mm_exh_ranking_brand_records` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_exh_ranking_brand_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_exh_ranking_categories`
--

DROP TABLE IF EXISTS `mm_exh_ranking_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_exh_ranking_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '관리코드',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '카테고리명',
  `order_seq` int unsigned NOT NULL DEFAULT '0' COMMENT '정렬순서값',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_exh_ranking_categories`
--

LOCK TABLES `mm_exh_ranking_categories` WRITE;
/*!40000 ALTER TABLE `mm_exh_ranking_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_exh_ranking_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_exh_ranking_category_map_gds_item_category`
--

DROP TABLE IF EXISTS `mm_exh_ranking_category_map_gds_item_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_exh_ranking_category_map_gds_item_category` (
  `ranking_category_id` bigint unsigned NOT NULL COMMENT '랭킹 카테고리번호',
  `category_code` bigint NOT NULL COMMENT '상품카테고리코드'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_exh_ranking_category_map_gds_item_category`
--

LOCK TABLES `mm_exh_ranking_category_map_gds_item_category` WRITE;
/*!40000 ALTER TABLE `mm_exh_ranking_category_map_gds_item_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_exh_ranking_category_map_gds_item_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_exh_ranking_config`
--

DROP TABLE IF EXISTS `mm_exh_ranking_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_exh_ranking_config` (
  `ranking_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '랭킹 타입(goods_order, goods_view, goods_wish, brand)',
  `is_auto` tinyint(1) NOT NULL DEFAULT '1' COMMENT '자동 여부',
  `created_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '등록자',
  `updated_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '수정자',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_exh_ranking_config`
--

LOCK TABLES `mm_exh_ranking_config` WRITE;
/*!40000 ALTER TABLE `mm_exh_ranking_config` DISABLE KEYS */;
INSERT INTO `mm_exh_ranking_config` VALUES ('goods-order',1,'SYSTEM(INSTALL)',NULL,'2023-10-05 23:38:23','2023-10-05 23:38:23'),('brand',1,'SYSTEM(INSTALL)',NULL,'2023-10-05 23:38:23','2023-10-05 23:38:23'),('goods-view',1,'SYSTEM(INSTALL)',NULL,'2023-10-05 23:38:23','2023-10-05 23:38:23'),('goods-wish',1,'SYSTEM(INSTALL)',NULL,'2023-10-05 23:38:23','2023-10-05 23:38:23');
/*!40000 ALTER TABLE `mm_exh_ranking_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_exh_ranking_goods_order_records`
--

DROP TABLE IF EXISTS `mm_exh_ranking_goods_order_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_exh_ranking_goods_order_records` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '레코드 고유키',
  `goods_id` bigint unsigned NOT NULL COMMENT '상품 고유키(mm_gds_items.id)',
  `created_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '등록자',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ranking_category_id` bigint unsigned DEFAULT NULL COMMENT '랭킹카테고리 번호',
  `root_category_code` char(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '상품1뎁스카테고리코드',
  PRIMARY KEY (`id`),
  KEY `mm_exh_ranking_goods_order_records_goods_id_index` (`goods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_exh_ranking_goods_order_records`
--

LOCK TABLES `mm_exh_ranking_goods_order_records` WRITE;
/*!40000 ALTER TABLE `mm_exh_ranking_goods_order_records` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_exh_ranking_goods_order_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_exh_ranking_goods_view_records`
--

DROP TABLE IF EXISTS `mm_exh_ranking_goods_view_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_exh_ranking_goods_view_records` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '레코드 고유키',
  `goods_id` bigint unsigned NOT NULL COMMENT '상품 고유키(mm_gds_items.id)',
  `created_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '등록자',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ranking_category_id` bigint unsigned DEFAULT NULL COMMENT '랭킹카테고리 번호',
  `root_category_code` char(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '상품1뎁스카테고리코드',
  PRIMARY KEY (`id`),
  KEY `mm_exh_ranking_goods_view_records_goods_id_index` (`goods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_exh_ranking_goods_view_records`
--

LOCK TABLES `mm_exh_ranking_goods_view_records` WRITE;
/*!40000 ALTER TABLE `mm_exh_ranking_goods_view_records` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_exh_ranking_goods_view_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_exh_ranking_goods_wish_records`
--

DROP TABLE IF EXISTS `mm_exh_ranking_goods_wish_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_exh_ranking_goods_wish_records` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '레코드 고유키',
  `goods_id` bigint unsigned NOT NULL COMMENT '상품 고유키(mm_gds_items.id)',
  `created_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '등록자',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ranking_category_id` bigint unsigned DEFAULT NULL COMMENT '랭킹카테고리 번호',
  `root_category_code` char(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '상품1뎁스카테고리코드',
  PRIMARY KEY (`id`),
  KEY `mm_exh_ranking_goods_wish_records_goods_id_index` (`goods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_exh_ranking_goods_wish_records`
--

LOCK TABLES `mm_exh_ranking_goods_wish_records` WRITE;
/*!40000 ALTER TABLE `mm_exh_ranking_goods_wish_records` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_exh_ranking_goods_wish_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_exh_recommend_searches`
--

DROP TABLE IF EXISTS `mm_exh_recommend_searches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_exh_recommend_searches` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '고유번호',
  `search_word` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '검색어',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '검색어 URL',
  `display_start_at` datetime NOT NULL COMMENT '노출기간 시작일',
  `display_end_at` datetime NOT NULL COMMENT '노출기간 종료일',
  `is_use` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '사용여부 {1:사용,0:미사용}}',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '등록 일시',
  `created_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '등록 유저',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '수정 일시',
  `updated_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '수정 유저',
  `deleted_at` datetime DEFAULT NULL COMMENT '삭제 일시',
  `deleted_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '삭제 유저',
  PRIMARY KEY (`id`),
  KEY `mm_exh_recommend_searches_display_end_at_index` (`display_end_at`),
  KEY `mm_exh_recommend_searches_display_start_at_index` (`display_start_at`),
  KEY `mm_exh_recommend_searches_is_use_index` (`is_use`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='전시관리 추천검색 관리';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_exh_recommend_searches`
--

LOCK TABLES `mm_exh_recommend_searches` WRITE;
/*!40000 ALTER TABLE `mm_exh_recommend_searches` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_exh_recommend_searches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_exh_right_wing_banners`
--

DROP TABLE IF EXISTS `mm_exh_right_wing_banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_exh_right_wing_banners` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '우측 배너 명',
  `is_use` tinyint(1) NOT NULL DEFAULT '1' COMMENT '사용 여부',
  `display_start_at` datetime NOT NULL COMMENT '노출 시작일',
  `display_end_at` datetime NOT NULL COMMENT '노출 종료일',
  `big_banner_alt` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '빅 배너 이미지 대체 텍스트',
  `wing_banner_alt` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '날개 배너 이미지 대체 텍스트',
  `custom_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '링크 URL',
  `created_user` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '등록자',
  `updated_user` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '수정자',
  `deleted_user` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '삭제자',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_exh_right_wing_banners`
--

LOCK TABLES `mm_exh_right_wing_banners` WRITE;
/*!40000 ALTER TABLE `mm_exh_right_wing_banners` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_exh_right_wing_banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_exh_special_event_comments`
--

DROP TABLE IF EXISTS `mm_exh_special_event_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_exh_special_event_comments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `special_event_id` bigint unsigned NOT NULL COMMENT '스페셜 이벤트 고유키(mm_exh_special_events.id)',
  `member_id` bigint unsigned NOT NULL COMMENT '작성 회원 고유키',
  `contents` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '댓글 내용',
  `deleted_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '삭제한 사람 정보',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `is_private` tinyint(1) NOT NULL DEFAULT '0' COMMENT '비공개 댓글 여부',
  PRIMARY KEY (`id`),
  KEY `mm_exh_special_event_comments_special_event_id_index` (`special_event_id`),
  KEY `mm_exh_special_event_comments_member_id_index` (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_exh_special_event_comments`
--

LOCK TABLES `mm_exh_special_event_comments` WRITE;
/*!40000 ALTER TABLE `mm_exh_special_event_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_exh_special_event_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_exh_special_event_goods`
--

DROP TABLE IF EXISTS `mm_exh_special_event_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_exh_special_event_goods` (
  `special_event_id` bigint unsigned NOT NULL COMMENT '스페셜 이벤트 코드(mm_exh_special_events.id)',
  `goods_id` bigint unsigned NOT NULL COMMENT '상품 코드(mm_gds_items.id)',
  `order_seq` int unsigned NOT NULL DEFAULT '0' COMMENT '정렬 순서값',
  KEY `special_event_id_index` (`special_event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_exh_special_event_goods`
--

LOCK TABLES `mm_exh_special_event_goods` WRITE;
/*!40000 ALTER TABLE `mm_exh_special_event_goods` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_exh_special_event_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_exh_special_event_goods_group_goods`
--

DROP TABLE IF EXISTS `mm_exh_special_event_goods_group_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_exh_special_event_goods_group_goods` (
  `special_event_id` bigint unsigned NOT NULL COMMENT '스페셜 이벤트 코드(mm_exh_special_events.id)',
  `goods_group_id` bigint unsigned NOT NULL COMMENT '스페셜 이벤트 상품그룹 코드(mm_exh_special_event_goods_groups.id)',
  `goods_id` bigint unsigned NOT NULL COMMENT '상품 코드(mm_gds_items.id)',
  `order_seq` int unsigned NOT NULL DEFAULT '0' COMMENT '정렬 순서값',
  KEY `special_event_id_index` (`special_event_id`),
  KEY `goods_group_id_index` (`goods_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_exh_special_event_goods_group_goods`
--

LOCK TABLES `mm_exh_special_event_goods_group_goods` WRITE;
/*!40000 ALTER TABLE `mm_exh_special_event_goods_group_goods` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_exh_special_event_goods_group_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_exh_special_event_goods_groups`
--

DROP TABLE IF EXISTS `mm_exh_special_event_goods_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_exh_special_event_goods_groups` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `special_event_id` bigint unsigned NOT NULL COMMENT '스페셜 이벤트 코드(mm_exh_special_events.id)',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '상품 그룹 제목',
  `order_seq` int unsigned NOT NULL DEFAULT '0' COMMENT '정렬 순서값',
  `is_display` tinyint(1) NOT NULL DEFAULT '1' COMMENT '노출 여부',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `special_event_id_index` (`special_event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_exh_special_event_goods_groups`
--

LOCK TABLES `mm_exh_special_event_goods_groups` WRITE;
/*!40000 ALTER TABLE `mm_exh_special_event_goods_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_exh_special_event_goods_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_exh_special_events`
--

DROP TABLE IF EXISTS `mm_exh_special_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_exh_special_events` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `is_use` tinyint(1) NOT NULL COMMENT '사용 여부',
  `display_start_at` datetime NOT NULL COMMENT '노출 시작시',
  `display_end_at` datetime NOT NULL COMMENT '노출 종료시',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '이벤트 제목',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '이벤트 소개',
  `mall_id` bigint unsigned NOT NULL DEFAULT '0' COMMENT '노출 몰 키(mm_shp_malls.id), 0이면 전체 노출',
  `mobile_alt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '모바일 이미지 대체텍스트',
  `is_pc_same_as_mobile` tinyint(1) NOT NULL DEFAULT '1' COMMENT '모바일 -> PC 공통정보 사용여부',
  `pc_alt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '모바일 이미지 대체텍스트',
  `use_custom_url` tinyint(1) NOT NULL DEFAULT '0' COMMENT '개별 URL 적용여부',
  `custom_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '개별 URL',
  `contents_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '상세이미지 등록방식 image:이미지파일등록 , html:에디터 등록',
  `mobile_contents` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '모바일 상세정보',
  `mobile_contents_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '모바일 상세정보',
  `pc_contents` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'PC 상세정보',
  `pc_contents_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'PC 상세정보',
  `is_commentable` tinyint(1) NOT NULL DEFAULT '0' COMMENT '댓글 사용 여부',
  `created_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_exh_special_events`
--

LOCK TABLES `mm_exh_special_events` WRITE;
/*!40000 ALTER TABLE `mm_exh_special_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_exh_special_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_exh_spot_theme_goods`
--

DROP TABLE IF EXISTS `mm_exh_spot_theme_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_exh_spot_theme_goods` (
  `template_id` bigint unsigned NOT NULL COMMENT '스팟성 테마 템플릿 키 (mm_exh_spot_theme_template.id)',
  `goods_id` bigint unsigned DEFAULT NULL COMMENT '상품 키 (mm_gds_items.id)',
  `order_seq` int NOT NULL DEFAULT '0' COMMENT '노출 순번'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_exh_spot_theme_goods`
--

LOCK TABLES `mm_exh_spot_theme_goods` WRITE;
/*!40000 ALTER TABLE `mm_exh_spot_theme_goods` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_exh_spot_theme_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_exh_spot_theme_templates`
--

DROP TABLE IF EXISTS `mm_exh_spot_theme_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_exh_spot_theme_templates` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `theme_id` bigint unsigned NOT NULL COMMENT '스팟성 테마 키 (mm_exh_spot_theme.id)',
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '템플릿 타입 (A, B, C)',
  `mobile_alt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '모바일 이미지 대체 텍스트',
  `pc_alt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'PC 이미지 대체 텍스트',
  `main_text_1` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '메인문구1',
  `main_text_2` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '메인문구2',
  `sub_text_1` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '서브문구1',
  `sub_text_2` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '서브문구2',
  `custom_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '개별 URL',
  `order_seq` int NOT NULL DEFAULT '0' COMMENT '노출 순번',
  `created_user` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '등록자',
  `updated_user` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '수정자',
  `deleted_user` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '삭제자',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_exh_spot_theme_templates`
--

LOCK TABLES `mm_exh_spot_theme_templates` WRITE;
/*!40000 ALTER TABLE `mm_exh_spot_theme_templates` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_exh_spot_theme_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_exh_spot_themes`
--

DROP TABLE IF EXISTS `mm_exh_spot_themes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_exh_spot_themes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '테마관 명',
  `is_use` tinyint(1) NOT NULL DEFAULT '1' COMMENT '사용 여부',
  `display_start_at` datetime NOT NULL COMMENT '노출 시작일',
  `display_end_at` datetime NOT NULL COMMENT '노출 종료일',
  `use_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '사용 방식',
  `custom_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'URL 등록 방식의 경우 입력되는 URL',
  `order_seq` int NOT NULL DEFAULT '0' COMMENT '노출 순번',
  `created_user` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '등록자',
  `updated_user` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '수정자',
  `deleted_user` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '삭제자',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_exh_spot_themes`
--

LOCK TABLES `mm_exh_spot_themes` WRITE;
/*!40000 ALTER TABLE `mm_exh_spot_themes` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_exh_spot_themes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_exh_timesales`
--

DROP TABLE IF EXISTS `mm_exh_timesales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_exh_timesales` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '고유번호',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '제목',
  `display_start_at` datetime NOT NULL COMMENT '노출기간 시작일',
  `display_end_at` datetime NOT NULL COMMENT '노출기간 종료일',
  `banner_display_start_at` datetime NOT NULL COMMENT '배너 노출기간 시작일',
  `mobile_alt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '모바일 저장 파일 대체 텍스트',
  `is_pc_same_as_mobile` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '모바일 이미지와 동일한 PC이미지 사용여부 {1:사용,0:미사용}',
  `pc_alt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'PC 저장 파일 대체 텍스트',
  `extra_coupon_id` bigint unsigned NOT NULL COMMENT '타임딜 쿠폰 연결',
  `goods_id` bigint unsigned NOT NULL COMMENT '타임딜 대상 상품 저장 (이력정보 실제사용은 프로모션에서함)',
  `is_use` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '사용여부 {1:사용,0:미사용}}',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '등록 일시',
  `created_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '등록 유저',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '수정 일시',
  `updated_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '수정 유저',
  `deleted_at` datetime DEFAULT NULL COMMENT '삭제 일시',
  `deleted_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '삭제 유저',
  `is_use_mobile_banner_text` tinyint(1) NOT NULL DEFAULT '0' COMMENT '모바일 배너 문구 사용 여부',
  `mobile_banner_text_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '모바일 배너 문구 1',
  `mobile_banner_text_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '모바일 배너 문구 2',
  `mobile_banner_text_3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '모바일 배너 문구 3',
  `mobile_banner_text_4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '모바일 배너 문구 4',
  `mobile_banner_text_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '모바일 배너 문구 색상',
  `is_use_pc_banner_text` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'PC 배너 문구 사용 여부',
  `pc_banner_text_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'PC 배너 문구 1',
  `pc_banner_text_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'PC 배너 문구 2',
  `pc_banner_text_3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'PC 배너 문구 3',
  `pc_banner_text_4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'PC 배너 문구 4',
  `pc_banner_text_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'PC 배너 문구 색상',
  PRIMARY KEY (`id`),
  KEY `mm_exh_timesales_display_end_at_index` (`display_end_at`),
  KEY `mm_exh_timesales_display_start_at_index` (`display_start_at`),
  KEY `mm_exh_timesales_is_use_index` (`is_use`),
  KEY `mm_exh_timesales_index` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='전시관리 타임딜';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_exh_timesales`
--

LOCK TABLES `mm_exh_timesales` WRITE;
/*!40000 ALTER TABLE `mm_exh_timesales` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_exh_timesales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_exh_top_banners`
--

DROP TABLE IF EXISTS `mm_exh_top_banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_exh_top_banners` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '탑 배너 명',
  `is_use` tinyint(1) NOT NULL DEFAULT '1' COMMENT '사용 여부',
  `display_start_at` datetime NOT NULL COMMENT '노출 시작일',
  `display_end_at` datetime NOT NULL COMMENT '노출 종료일',
  `custom_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '링크 URL',
  `mobile_banner_alt` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '모바일 이미지 대체 텍스트',
  `pc_banner_alt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'PC 이미지 대체 텍스트',
  `curtain_banner_alt` text COLLATE utf8mb4_unicode_ci COMMENT '탑배너 클릭 노출 커튼배너',
  `created_user` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '등록자',
  `updated_user` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '수정자',
  `deleted_user` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '삭제자',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_exh_top_banners`
--

LOCK TABLES `mm_exh_top_banners` WRITE;
/*!40000 ALTER TABLE `mm_exh_top_banners` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_exh_top_banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_exh_top_brands`
--

DROP TABLE IF EXISTS `mm_exh_top_brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_exh_top_brands` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '고유번호',
  `brand_id` bigint unsigned NOT NULL COMMENT '브랜드 고유번호 (mm_shp_brands.id)',
  `is_display` tinyint unsigned NOT NULL DEFAULT '1' COMMENT '노출 여부',
  `order_seq` tinyint unsigned NOT NULL COMMENT '노출 순서',
  `created_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '등록자',
  `updated_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '수정자',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_exh_top_brands`
--

LOCK TABLES `mm_exh_top_brands` WRITE;
/*!40000 ALTER TABLE `mm_exh_top_brands` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_exh_top_brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_gds_approval_change_logs`
--

DROP TABLE IF EXISTS `mm_gds_approval_change_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_gds_approval_change_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '고유번호',
  `goods_id` bigint unsigned NOT NULL COMMENT '상품 고유키(mm_gds_items.id)',
  `goods_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '로깅 시점의 상품명(mm_gds_items.name)',
  `before_state` tinyint NOT NULL COMMENT '변경 전 승인 상태',
  `after_state` tinyint NOT NULL COMMENT '변경 후 승인 상태',
  `modifier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '수정자 정보',
  `modifier_message` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '기타 관리메모(필요시 활용)',
  `modifier_ip_address` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '변경주체의 IP 주소',
  `created_at` datetime NOT NULL COMMENT '로그생성일시',
  `loggable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `loggable_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mm_gds_approval_change_logs_loggable_type_loggable_id_index` (`loggable_type`,`loggable_id`),
  KEY `mm_gds_approval_change_logs_goods_id_index` (`goods_id`),
  KEY `mm_gds_approval_change_logs_goods_name_index` (`goods_name`),
  KEY `mm_gds_approval_change_logs_created_at_index` (`created_at`),
  KEY `mm_gds_approval_change_logs_loggable_type_index` (`loggable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='상품 승인 상태 변경 로그 테이블';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_gds_approval_change_logs`
--

LOCK TABLES `mm_gds_approval_change_logs` WRITE;
/*!40000 ALTER TABLE `mm_gds_approval_change_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_gds_approval_change_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_gds_categories`
--

DROP TABLE IF EXISTS `mm_gds_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_gds_categories` (
  `code` char(9) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_code` char(9) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '상위 카테고리 코드',
  `child_seq` int NOT NULL COMMENT '동일한 부모를 가진 카테고리 사이에서의 생성순번',
  `depth` tinyint unsigned NOT NULL DEFAULT '1' COMMENT '카테고리 깊이',
  `order_seq` int unsigned NOT NULL DEFAULT '0' COMMENT '정렬 순서값',
  `full_path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '카테고리 전체 경로',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '카테고리명',
  `is_display` tinyint unsigned NOT NULL DEFAULT '1' COMMENT '노출여부',
  `is_use` tinyint(1) NOT NULL DEFAULT '1' COMMENT '사용여부',
  `mandatory_template_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '상품고시 정보 고유번호 (mm_gds_mandatory_templates.code)',
  `has_image` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '카테고리 이미지 존재여부',
  `alt` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '카테고리 이미지 대체텍스트',
  `api_interface_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'API Interface 맵핑코드',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '등록 일시',
  `updated_at` datetime DEFAULT NULL COMMENT '수정 일시',
  `deleted_at` datetime DEFAULT NULL COMMENT '삭제 일시',
  `created_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '등록관리자',
  `updated_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '수정관리자',
  `deleted_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '삭제관리자',
  `point_rate` decimal(5,4) NOT NULL DEFAULT '0.0000' COMMENT '구매적립율',
  `mobile_top_alt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '모바일 배너 이미지 대체 텍스트',
  `pc_top_alt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'PC 배너 이미지 대체 텍스트',
  `has_mobile_top_image` tinyint(1) NOT NULL DEFAULT '0' COMMENT '모바일 배너 이미지 존재 여부',
  `has_pc_top_image` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'PC 이미지 존재 여부',
  `is_available_sale_goods` tinyint(1) NOT NULL DEFAULT '1' COMMENT '해당 카테고리 상품 판매 가능 여부',
  PRIMARY KEY (`code`),
  KEY `mm_gds_categories_depth_index` (`depth`),
  KEY `mm_gds_categories_name_index` (`name`),
  KEY `mm_gds_categories_category_1_seq_index` (`child_seq`),
  KEY `mm_gds_categories_is_display_index` (`is_display`),
  KEY `mm_gds_categories_parent_code_index` (`parent_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='상품카테고리정보';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_gds_categories`
--

LOCK TABLES `mm_gds_categories` WRITE;
/*!40000 ALTER TABLE `mm_gds_categories` DISABLE KEYS */;
INSERT INTO `mm_gds_categories` VALUES ('001000000',NULL,1,1,0,'남성','남성',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('001001000','001000000',1,2,0,'남성 > 아우터','아우터',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('001001001','001001000',1,3,0,'남성 > 아우터 > 다운','다운',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('001001002','001001000',2,3,1,'남성 > 아우터 > 베스트','베스트',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('001001003','001001000',3,3,2,'남성 > 아우터 > 자켓','자켓',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('001002000','001000000',2,2,1,'남성 > 티셔츠','티셔츠',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('001002001','001002000',1,3,0,'남성 > 티셔츠 > 맨투맨','맨투맨',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('001002002','001002000',2,3,1,'남성 > 티셔츠 > 후디','후디',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('001002003','001002000',3,3,2,'남성 > 티셔츠 > 긴팔티셔츠','긴팔티셔츠',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('001002004','001002000',4,3,3,'남성 > 티셔츠 > 반팔티셔츠','반팔티셔츠',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('001003000','001000000',3,2,2,'남성 > 팬츠','팬츠',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('001003001','001003000',1,3,0,'남성 > 팬츠 > 롱팬츠','롱팬츠',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('001003002','001003000',2,3,1,'남성 > 팬츠 > 숏팬츠','숏팬츠',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('001003003','001003000',3,3,2,'남성 > 팬츠 > 트레이닝팬츠','트레이닝팬츠',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('001003004','001003000',4,3,3,'남성 > 팬츠 > 레깅스','레깅스',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('001004000','001000000',4,2,3,'남성 > 가방','가방',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('001004001','001004000',1,3,0,'남성 > 가방 > 비즈니스 라인','비즈니스 라인',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('001004002','001004000',2,3,1,'남성 > 가방 > 백팩','백팩',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('001004003','001004000',3,3,2,'남성 > 가방 > 슬링백/힙색','슬링백/힙색',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('001004004','001004000',4,3,3,'남성 > 가방 > 서브백','서브백',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('001004005','001004000',5,3,4,'남성 > 가방 > 멀티백','멀티백',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('001005000','001000000',5,2,4,'남성 > 신발','신발',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('001005001','001005000',1,3,0,'남성 > 신발 > 스니커즈','스니커즈',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('001005002','001005000',2,3,1,'남성 > 신발 > 슬리퍼','슬리퍼',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('001006000','001000000',6,2,5,'남성 > 모자','모자',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('001006001','001006000',1,3,0,'남성 > 모자 > 볼캡','볼캡',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('001006002','001006000',2,3,1,'남성 > 모자 > 햇','햇',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('001006003','001006000',3,3,2,'남성 > 모자 > 비니','비니',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('001007000','001000000',7,2,6,'남성 > 악세서리','악세서리',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('001007001','001007000',1,3,0,'남성 > 악세서리 > 악세서리','악세서리',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('001008000','001000000',8,2,7,'남성 > 서프웨어','서프웨어',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('001008001','001008000',1,3,0,'남성 > 서프웨어 > 서프웨어','서프웨어',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('002000000',NULL,2,1,1,'여성','여성',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('002001000','002000000',1,2,0,'여성 > 아우터','아우터',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('002001001','002001000',1,3,0,'여성 > 아우터 > 다운','다운',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('002001002','002001000',2,3,1,'여성 > 아우터 > 베스트','베스트',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('002001003','002001000',3,3,2,'여성 > 아우터 > 자켓','자켓',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('002002000','002000000',2,2,1,'여성 > 티셔츠','티셔츠',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('002002001','002002000',1,3,0,'여성 > 티셔츠 > 맨투맨','맨투맨',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('002002002','002002000',2,3,1,'여성 > 티셔츠 > 후디','후디',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('002002003','002002000',3,3,2,'여성 > 티셔츠 > 긴팔티셔츠','긴팔티셔츠',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('002002004','002002000',4,3,3,'여성 > 티셔츠 > 반팔티셔츠','반팔티셔츠',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('002003000','002000000',3,2,2,'여성 > 팬츠','팬츠',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('002003001','002003000',1,3,0,'여성 > 팬츠 > 롱팬츠','롱팬츠',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('002003002','002003000',2,3,1,'여성 > 팬츠 > 숏팬츠','숏팬츠',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('002003003','002003000',3,3,2,'여성 > 팬츠 > 트레이닝팬츠','트레이닝팬츠',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('002003004','002003000',4,3,3,'여성 > 팬츠 > 레깅스','레깅스',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('002004000','002000000',4,2,3,'여성 > 가방','가방',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('002004001','002004000',1,3,0,'여성 > 가방 > 백팩','백팩',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('002004002','002004000',2,3,1,'여성 > 가방 > 슬링백/힙색','슬링백/힙색',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('002004003','002004000',3,3,2,'여성 > 가방 > 서브백','서브백',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('002004004','002004000',4,3,3,'여성 > 가방 > 멀티백','멀티백',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('002005000','002000000',5,2,4,'여성 > 신발','신발',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('002005001','002005000',1,3,0,'여성 > 신발 > 스니커즈','스니커즈',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('002005002','002005000',2,3,1,'여성 > 신발 > 슬리퍼','슬리퍼',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('002006000','002000000',6,2,5,'여성 > 모자','모자',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('002006001','002006000',1,3,0,'여성 > 모자 > 볼캡','볼캡',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('002006002','002006000',2,3,1,'여성 > 모자 > 햇','햇',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('002006003','002006000',3,3,2,'여성 > 모자 > 비니','비니',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('002007000','002000000',7,2,6,'여성 > 악세서리','악세서리',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('002007001','002007000',1,3,0,'여성 > 악세서리 > 악세서리','악세서리',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('002008000','002000000',8,2,7,'여성 > 서프웨어','서프웨어',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('002008001','002008000',1,3,0,'여성 > 서프웨어 > 서프웨어','서프웨어',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('003000000',NULL,3,1,2,'키즈','키즈',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('003001000','003000000',1,2,0,'키즈 > 아우터','아우터',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('003001001','003001000',1,3,0,'키즈 > 아우터 > 다운','다운',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('003001002','003001000',2,3,1,'키즈 > 아우터 > 베스트','베스트',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('003001003','003001000',3,3,2,'키즈 > 아우터 > 자켓','자켓',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('003002000','003000000',2,2,1,'키즈 > 티셔츠','티셔츠',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('003002001','003002000',1,3,0,'키즈 > 티셔츠 > 맨투맨','맨투맨',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('003002002','003002000',2,3,1,'키즈 > 티셔츠 > 후디','후디',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('003002003','003002000',3,3,2,'키즈 > 티셔츠 > 긴팔티셔츠','긴팔티셔츠',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('003002004','003002000',4,3,3,'키즈 > 티셔츠 > 반팔티셔츠','반팔티셔츠',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('003003000','003000000',3,2,2,'키즈 > 팬츠','팬츠',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('003003001','003003000',1,3,0,'키즈 > 팬츠 > 롱팬츠','롱팬츠',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('003003002','003003000',2,3,1,'키즈 > 팬츠 > 숏팬츠','숏팬츠',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('003004000','003000000',4,2,3,'키즈 > 가방','가방',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('003004001','003004000',1,3,0,'키즈 > 가방 > 백팩','백팩',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('003004002','003004000',2,3,1,'키즈 > 가방 > 슬링백/힙색','슬링백/힙색',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('003004003','003004000',3,3,2,'키즈 > 가방 > 서브백','서브백',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('003005000','003000000',5,2,4,'키즈 > 신발','신발',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('003005001','003005000',1,3,0,'키즈 > 신발 > 신발','신발',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('003006000','003000000',6,2,5,'키즈 > 모자','모자',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('003006001','003006000',1,3,0,'키즈 > 모자 > 모자','모자',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('003007000','003000000',7,2,6,'키즈 > 악세서리','악세서리',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('003007001','003007000',1,3,0,'키즈 > 악세서리 > 악세서리','악세서리',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('004000000',NULL,4,1,3,'캠핑','캠핑',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('004001000','004000000',1,2,0,'캠핑 > 텐트','텐트',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('004001001','004001000',1,3,0,'캠핑 > 텐트 > 텐트','텐트',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('004002000','004000000',2,2,1,'캠핑 > 테이블','테이블',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('004002001','004002000',1,3,0,'캠핑 > 테이블 > 체어/테이블','체어/테이블',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('004003000','004000000',3,2,2,'캠핑 > 기타잡화','기타잡화',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('004003001','004003000',1,3,0,'캠핑 > 기타잡화 > 기타잡화','기타잡화',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('005000000',NULL,5,1,4,'뷰티&케어','뷰티&케어',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('005001000','005000000',1,2,0,'뷰티&케어 > 헤어&바디케어','헤어&바디케어',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('005001001','005001000',1,3,0,'뷰티&케어 > 헤어&바디케어 > 헤어&바디케어','헤어&바디케어',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('005002000','005000000',2,2,1,'뷰티&케어 > 스킨케어','스킨케어',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('005002001','005002000',1,3,0,'뷰티&케어 > 스킨케어 > 스킨케어','스킨케어',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('005003000','005000000',3,2,2,'뷰티&케어 > 기타','기타',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('005003001','005003000',1,3,0,'뷰티&케어 > 기타 > 기타','기타',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('006000000',NULL,6,1,5,'캐리어','캐리어',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('006001000','006000000',1,2,0,'캐리어 > 캐리어','캐리어',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('006001001','006001000',1,3,0,'캐리어 > 캐리어 > 세트','세트',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('006001002','006001000',2,3,1,'캐리어 > 캐리어 > 기내용','기내용',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('006001003','006001000',3,3,2,'캐리어 > 캐리어 > 화물용','화물용',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('007000000',NULL,7,1,6,'아울렛','아울렛',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('007001000','007000000',1,2,0,'아울렛 > 아우터','아우터',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('007001001','007001000',1,3,0,'아울렛 > 아우터 > 다운','다운',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('007001002','007001000',2,3,1,'아울렛 > 아우터 > 베스트','베스트',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('007001003','007001000',3,3,2,'아울렛 > 아우터 > 자켓','자켓',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('007002000','007000000',2,2,1,'아울렛 > 티셔츠','티셔츠',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('007002001','007002000',1,3,0,'아울렛 > 티셔츠 > 맨투맨','맨투맨',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('007002002','007002000',2,3,1,'아울렛 > 티셔츠 > 후디','후디',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('007002003','007002000',3,3,2,'아울렛 > 티셔츠 > 긴팔티셔츠','긴팔티셔츠',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('007002004','007002000',4,3,3,'아울렛 > 티셔츠 > 반팔티셔츠','반팔티셔츠',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('007003000','007000000',3,2,2,'아울렛 > 팬츠','팬츠',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('007003001','007003000',1,3,0,'아울렛 > 팬츠 > 롱팬츠','롱팬츠',0,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('007003002','007003000',2,3,1,'아울렛 > 팬츠 > 숏팬츠','숏팬츠',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('007003003','007003000',3,3,2,'아울렛 > 팬츠 > 트레이닝팬츠','트레이닝팬츠',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1),('007003004','007003000',4,3,3,'아울렛 > 팬츠 > 레깅스','레깅스',1,1,'1',0,'',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,NULL,NULL,NULL,0.0000,NULL,NULL,0,0,1);
/*!40000 ALTER TABLE `mm_gds_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_gds_category_by_brands`
--

DROP TABLE IF EXISTS `mm_gds_category_by_brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_gds_category_by_brands` (
  `brand_id` bigint unsigned NOT NULL COMMENT '브랜드 고유키(mm_shp_brand.id)',
  `category_depth` tinyint unsigned NOT NULL COMMENT '카테고리 뎁스',
  `category_code` char(9) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '카테고리 고유키(mm_gds_categories.code)',
  `goods_count` int unsigned NOT NULL DEFAULT '0' COMMENT '해당 카테고리(하위 포함)로 등록된 상품 갯수',
  `aggregated_at` datetime NOT NULL COMMENT '집계 생성일',
  PRIMARY KEY (`brand_id`,`category_code`),
  UNIQUE KEY `mm_gds_category_by_brands_unique` (`brand_id`,`category_code`),
  KEY `mm_gds_category_by_brands_brand_id_index` (`brand_id`),
  KEY `mm_gds_category_by_brands_aggregated_at_index` (`aggregated_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='브랜드별 카테고리';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_gds_category_by_brands`
--

LOCK TABLES `mm_gds_category_by_brands` WRITE;
/*!40000 ALTER TABLE `mm_gds_category_by_brands` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_gds_category_by_brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_gds_category_by_sellers`
--

DROP TABLE IF EXISTS `mm_gds_category_by_sellers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_gds_category_by_sellers` (
  `seller_id` bigint unsigned NOT NULL COMMENT '판매자 고유키(mm_adm_sellers.id)',
  `category_depth` tinyint unsigned NOT NULL COMMENT '카테고리 뎁스',
  `category_code` char(9) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '카테고리 고유키',
  `goods_count` int unsigned NOT NULL DEFAULT '0' COMMENT '해당 카테고리(하위 포함)로 등록된 상품 갯수',
  `aggregated_at` datetime NOT NULL COMMENT '집계데이터 생성시간',
  PRIMARY KEY (`seller_id`,`category_code`),
  UNIQUE KEY `mm_gds_category_by_sellers_unique` (`seller_id`,`category_code`),
  KEY `mm_gds_category_by_sellers_seller_id_index` (`seller_id`),
  KEY `mm_gds_category_by_sellers_aggregated_at_index` (`aggregated_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='셀러별 카테고리';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_gds_category_by_sellers`
--

LOCK TABLES `mm_gds_category_by_sellers` WRITE;
/*!40000 ALTER TABLE `mm_gds_category_by_sellers` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_gds_category_by_sellers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_gds_category_item`
--

DROP TABLE IF EXISTS `mm_gds_category_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_gds_category_item` (
  `category_code` char(9) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '카테고리 코드(mm_gds_categories.code)',
  `goods_id` bigint unsigned NOT NULL COMMENT '상품 고유번호 (mm_gds_items.id)',
  `is_basic` tinyint(1) NOT NULL DEFAULT '0' COMMENT '기본 카테고리 여부',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '등록 일시',
  `updated_at` datetime DEFAULT NULL COMMENT '수정시간',
  `category_1_code` char(9) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '000000000' COMMENT '카테고리 1 코드',
  `category_2_code` char(9) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '000000000' COMMENT '카테고리 2 코드',
  `category_3_code` char(9) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '000000000' COMMENT '카테고리 3 코드',
  KEY `mm_gds_category_item_basic_is_index` (`is_basic`),
  KEY `mm_gds_category_item_category_goods_id_index` (`category_code`,`goods_id`),
  KEY `mm_gds_category_item_created_at_index` (`created_at`),
  KEY `mm_gds_category_item_goods_id_index` (`goods_id`),
  KEY `mm_gds_category_item_category_code_index` (`category_code`),
  KEY `mm_gds_category_item_goods_category_code_index` (`goods_id`,`category_code`),
  KEY `mm_gds_category_item_category_1_code_index` (`category_1_code`),
  KEY `mm_gds_category_item_category_2_code_index` (`category_2_code`),
  KEY `mm_gds_category_item_category_3_code_index` (`category_3_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='카테고리 상품 연결정보';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_gds_category_item`
--

LOCK TABLES `mm_gds_category_item` WRITE;
/*!40000 ALTER TABLE `mm_gds_category_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_gds_category_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_gds_category_review_template`
--

DROP TABLE IF EXISTS `mm_gds_category_review_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_gds_category_review_template` (
  `category_code` char(9) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '카테고리 고유키(mm_gds_categories.code)',
  `template_id` bigint unsigned NOT NULL COMMENT '리뷰 템플릿 고유키(mm_shp_review_templates.id)',
  `order_seq` int NOT NULL DEFAULT '0' COMMENT '정렬순서값',
  UNIQUE KEY `mm_gds_category_review_template_unique` (`category_code`,`template_id`),
  KEY `mm_gds_category_review_template_category_id_index` (`category_code`),
  KEY `mm_gds_category_review_template_template_id_index` (`template_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='카테고리 3뎁스 <-> 리뷰 템플릿 맵핑(n:n)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_gds_category_review_template`
--

LOCK TABLES `mm_gds_category_review_template` WRITE;
/*!40000 ALTER TABLE `mm_gds_category_review_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_gds_category_review_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_gds_category_special_attribute_template`
--

DROP TABLE IF EXISTS `mm_gds_category_special_attribute_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_gds_category_special_attribute_template` (
  `category_code` char(9) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '카테고리 고유키(mm_gds_categories.code)',
  `template_id` bigint unsigned NOT NULL COMMENT '상품 특수속성 템플릿 고유키(mm_gds_special_attribute_templates.id)',
  `order_seq` int NOT NULL DEFAULT '0' COMMENT '정렬 순서값',
  UNIQUE KEY `mm_shp_cisat_unique` (`category_code`,`template_id`),
  KEY `mm_shp_cisat_template_id_index` (`template_id`),
  KEY `mm_shp_cisat_category_code_index` (`category_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='카테고리 <-> 상품 특수속성 맵핑테이블';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_gds_category_special_attribute_template`
--

LOCK TABLES `mm_gds_category_special_attribute_template` WRITE;
/*!40000 ALTER TABLE `mm_gds_category_special_attribute_template` DISABLE KEYS */;
INSERT INTO `mm_gds_category_special_attribute_template` VALUES ('001000000',1,0),('001000000',2,0),('001001000',1,0),('001001001',1,0),('001001002',1,0),('001001003',1,0),('001002000',1,0),('001002001',1,0),('001002002',1,0),('001002003',1,0),('001002004',1,0),('001005000',2,0),('001005001',2,0),('001005002',2,0),('002001000',1,0),('002001001',1,0),('002001002',1,0),('002001003',1,0),('002002000',1,0),('002002001',1,0),('002002002',1,0),('002002003',1,0),('002002004',1,0),('002005000',2,0),('002005001',2,0),('002005002',2,0),('007001000',1,0),('007001001',1,0),('007001002',1,0),('007001003',1,0),('007002000',1,0),('007002001',1,0),('007002002',1,0),('007002003',1,0),('007002004',1,0);
/*!40000 ALTER TABLE `mm_gds_category_special_attribute_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_gds_color_item`
--

DROP TABLE IF EXISTS `mm_gds_color_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_gds_color_item` (
  `goods_id` bigint unsigned NOT NULL COMMENT '상품 고유키(mm_gds_items.id)',
  `color_id` bigint unsigned NOT NULL COMMENT '상품 색상 고유키(mm_gds_colors.id)',
  `color_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '색상명',
  `rgb_code` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '색상코드(RGB)',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `mm_gds_color_item_rgb_code_index` (`rgb_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='상품 <-> 상품 색상 관리 맵핑 테이블';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_gds_color_item`
--

LOCK TABLES `mm_gds_color_item` WRITE;
/*!40000 ALTER TABLE `mm_gds_color_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_gds_color_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_gds_colors`
--

DROP TABLE IF EXISTS `mm_gds_colors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_gds_colors` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `is_use` tinyint(1) NOT NULL DEFAULT '1' COMMENT '사용 여부',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '색상명',
  `rgb_code` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '색상코드(RGB)',
  `order_seq` int unsigned NOT NULL DEFAULT '0' COMMENT '정렬 순서값',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mm_gds_colors_rgb_code_unique` (`rgb_code`),
  KEY `mm_gds_colors_is_use_index` (`is_use`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='상품 색상 관리 (필터)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_gds_colors`
--

LOCK TABLES `mm_gds_colors` WRITE;
/*!40000 ALTER TABLE `mm_gds_colors` DISABLE KEYS */;
INSERT INTO `mm_gds_colors` VALUES (1,1,'갈색','8E562E',1,'2023-10-05 23:38:23','2023-10-05 23:38:23',NULL),(2,1,'빨강','E91818',2,'2023-10-05 23:38:23','2023-10-05 23:38:23',NULL),(3,1,'연한 주황','F4AA24',3,'2023-10-05 23:38:23','2023-10-05 23:38:23',NULL),(4,1,'노란색','F2F325',4,'2023-10-05 23:38:23','2023-10-05 23:38:23',NULL),(5,1,'연두색','A4DC0C',5,'2023-10-05 23:38:23','2023-10-05 23:38:23',NULL),(6,1,'녹색','37B300',6,'2023-10-05 23:38:23','2023-10-05 23:38:23',NULL),(7,1,'카키색','6F822E',7,'2023-10-05 23:38:23','2023-10-05 23:38:23',NULL),(8,1,'하늘색','97D0E8',8,'2023-10-05 23:38:23','2023-10-05 23:38:23',NULL),(9,1,'남색','1E2C89',9,'2023-10-05 23:38:23','2023-10-05 23:38:23',NULL),(10,1,'연한 분홍','FDC4DA',10,'2023-10-05 23:38:23','2023-10-05 23:38:23',NULL),(11,1,'흰색','FFFFFF',11,'2023-10-05 23:38:23','2023-10-05 23:38:23',NULL),(12,1,'연한 회색','C5C5C6',12,'2023-10-05 23:38:23','2023-10-05 23:38:23',NULL),(13,1,'회색','8C8C8C',13,'2023-10-05 23:38:23','2023-10-05 23:38:23',NULL),(14,1,'검정색','191919',14,'2023-10-05 23:38:23','2023-10-05 23:38:23',NULL),(15,1,'베이지색','e9d8b8',15,'2023-10-05 23:38:23','2023-10-05 23:38:23',NULL),(16,1,'파란색','3030F8',16,'2023-10-05 23:38:23','2023-10-05 23:38:23',NULL),(17,1,'보라색','5f2c6e',17,'2023-10-05 23:38:23','2023-10-05 23:38:23',NULL),(18,1,'자주색','be1767',18,'2023-10-05 23:38:23','2023-10-05 23:38:23',NULL),(19,1,'은색','939499',19,'2023-10-05 23:38:23','2023-10-05 23:38:23',NULL),(20,1,'금색','a48252',20,'2023-10-05 23:38:23','2023-10-05 23:38:23',NULL),(21,1,'민트색','8de2d9',21,'2023-10-05 23:38:23','2023-10-05 23:38:23',NULL);
/*!40000 ALTER TABLE `mm_gds_colors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_gds_count_by_brands`
--

DROP TABLE IF EXISTS `mm_gds_count_by_brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_gds_count_by_brands` (
  `brand_id` bigint unsigned NOT NULL COMMENT '브랜드 고유키(mm_shp_brands.id)',
  `goods_count` int unsigned NOT NULL DEFAULT '0' COMMENT '해당 브랜드로 등록된 상품 수(진열 상태)',
  `aggregated_at` datetime NOT NULL,
  PRIMARY KEY (`brand_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='브랜드별 상품 수 집계';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_gds_count_by_brands`
--

LOCK TABLES `mm_gds_count_by_brands` WRITE;
/*!40000 ALTER TABLE `mm_gds_count_by_brands` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_gds_count_by_brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_gds_count_by_categories`
--

DROP TABLE IF EXISTS `mm_gds_count_by_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_gds_count_by_categories` (
  `category_code` char(9) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '카테고리 고유키',
  `depth` tinyint unsigned NOT NULL COMMENT '카테고리 뎁스',
  `goods_count` int unsigned NOT NULL COMMENT '해당 카테고리의 상품 갯수',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '카테고리명',
  `full_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '카테고리 전체경로',
  `aggregated_at` datetime NOT NULL COMMENT '집계일',
  PRIMARY KEY (`category_code`),
  UNIQUE KEY `mm_gds_count_by_categories_category_code_unique` (`category_code`) USING BTREE,
  KEY `mm_gds_count_by_categories_aggregated_at_index` (`aggregated_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='카테고리별 상품 수 집계테이블';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_gds_count_by_categories`
--

LOCK TABLES `mm_gds_count_by_categories` WRITE;
/*!40000 ALTER TABLE `mm_gds_count_by_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_gds_count_by_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_gds_forbidden_word_except_sellers`
--

DROP TABLE IF EXISTS `mm_gds_forbidden_word_except_sellers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_gds_forbidden_word_except_sellers` (
  `forbidden_word_id` bigint unsigned NOT NULL COMMENT '금지어 고유키(mm_gds_forbidden_words.id)',
  `seller_id` bigint unsigned NOT NULL COMMENT '셀러 고유키(mm_adm_sellers.id)',
  `created_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '등록관리자',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '생성일시',
  `deleted_user` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '삭제관리자',
  `deleted_at` timestamp NULL DEFAULT NULL,
  KEY `mm_gds_forbidden_word_except_sellers_forbidden_word_id_index` (`forbidden_word_id`),
  KEY `mm_gds_forbidden_word_except_sellers_seller_id_index` (`seller_id`),
  KEY `mm_gds_forbidden_word_except_sellers_created_at_index` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_gds_forbidden_word_except_sellers`
--

LOCK TABLES `mm_gds_forbidden_word_except_sellers` WRITE;
/*!40000 ALTER TABLE `mm_gds_forbidden_word_except_sellers` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_gds_forbidden_word_except_sellers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_gds_forbidden_words`
--

DROP TABLE IF EXISTS `mm_gds_forbidden_words`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_gds_forbidden_words` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '금지어 고유키',
  `word` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '금지어',
  `created_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '등록관리자',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '생성일시',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_user` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '삭제관리자',
  `release_possible_status` tinyint NOT NULL DEFAULT '1' COMMENT '금지어 해제 가능 여부(1:가능, 0:불가능)',
  `updated_at` datetime DEFAULT NULL COMMENT '수정일시',
  `updated_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '수정관리자',
  PRIMARY KEY (`id`),
  KEY `mm_gds_forbidden_words_word_index` (`word`),
  KEY `mm_gds_forbidden_words_created_at_index` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_gds_forbidden_words`
--

LOCK TABLES `mm_gds_forbidden_words` WRITE;
/*!40000 ALTER TABLE `mm_gds_forbidden_words` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_gds_forbidden_words` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_gds_funding_related_goods`
--

DROP TABLE IF EXISTS `mm_gds_funding_related_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_gds_funding_related_goods` (
  `funding_id` bigint unsigned NOT NULL COMMENT '펀딩 고유키(mm_gds_fundings.id)',
  `goods_id` bigint unsigned NOT NULL COMMENT '상품 고유키(mm_gds_items.id)',
  `order_seq` int unsigned NOT NULL DEFAULT '0' COMMENT '정렬 순서값',
  KEY `mm_gds_funding_related_goods_funding_id_index` (`funding_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='펀딩 > 관련 상품 테이블';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_gds_funding_related_goods`
--

LOCK TABLES `mm_gds_funding_related_goods` WRITE;
/*!40000 ALTER TABLE `mm_gds_funding_related_goods` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_gds_funding_related_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_gds_funding_turn_change_logs`
--

DROP TABLE IF EXISTS `mm_gds_funding_turn_change_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_gds_funding_turn_change_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '고유번호',
  `goods_id` bigint unsigned NOT NULL COMMENT '상품 고유키(mm_gds_items.id)',
  `goods_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '로깅 시점의 상품명(mm_gds_items.name)',
  `turn` int unsigned NOT NULL COMMENT '진행 차수',
  `main_text_1` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '펀딩 메인 문구 1',
  `main_text_2` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '펀딩 메인 문구 2',
  `start_at` datetime NOT NULL COMMENT '진행 시작일시',
  `end_at` datetime NOT NULL COMMENT '진행 종료일시',
  `delivery_start_at` datetime NOT NULL COMMENT '배송 시작일시',
  `is_auto_progress_rate` tinyint(1) NOT NULL DEFAULT '0' COMMENT '진행율 자동 계산 여부(0: 수동, 1: 자동)',
  `progress_rate` int unsigned NOT NULL DEFAULT '0' COMMENT '진행율 (%)',
  `goal_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'amount' COMMENT '진행율 계산 목표 유형 (price: 금액, amount: 수량)',
  `goal_price` int unsigned NOT NULL DEFAULT '0' COMMENT '목표 금액',
  `goal_amount` int unsigned NOT NULL DEFAULT '0' COMMENT '목표 수량',
  `modifier_message` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '기타 관리메모(필요시 활용)',
  `modifier_ip_address` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '변경주체의 IP 주소',
  `created_at` datetime NOT NULL COMMENT '로그생성일시',
  `loggable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `loggable_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mm_gds_funding_change_logs_loggable_type_loggable_id_index` (`loggable_type`,`loggable_id`),
  KEY `mm_gds_funding_change_logs_goods_id_index` (`goods_id`),
  KEY `mm_gds_funding_change_logs_goods_name_index` (`goods_name`),
  KEY `mm_gds_funding_change_logs_created_at_index` (`created_at`),
  KEY `mm_gds_funding_change_logs_loggable_type_index` (`loggable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='펀딩 상품 변경 로그 테이블';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_gds_funding_turn_change_logs`
--

LOCK TABLES `mm_gds_funding_turn_change_logs` WRITE;
/*!40000 ALTER TABLE `mm_gds_funding_turn_change_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_gds_funding_turn_change_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_gds_fundings`
--

DROP TABLE IF EXISTS `mm_gds_fundings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_gds_fundings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '펀딩 상세 고유번호',
  `goods_id` bigint unsigned NOT NULL COMMENT '상품 고유키(mm_gds_items.id)',
  `turn` int unsigned NOT NULL DEFAULT '1' COMMENT '현재 진행 차수',
  `is_ended` tinyint(1) NOT NULL DEFAULT '0' COMMENT '펀딩 종료 여부',
  `main_text_1` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '펀딩 메인 문구 1',
  `main_text_2` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '펀딩 메인 문구 2',
  `start_at` datetime NOT NULL COMMENT '진행 시작일시',
  `end_at` datetime NOT NULL COMMENT '진행 종료일시',
  `delivery_start_at` datetime NOT NULL COMMENT '배송 시작일시',
  `is_auto_progress_rate` tinyint(1) NOT NULL DEFAULT '0' COMMENT '진행율 자동 계산 여부(0: 수동, 1: 자동)',
  `progress_rate` int unsigned NOT NULL DEFAULT '0' COMMENT '진행율 (%)',
  `goal_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'amount' COMMENT '진행율 계산 목표 유형 (price: 금액, amount: 수량)',
  `goal_price` int unsigned NOT NULL DEFAULT '0' COMMENT '목표 금액',
  `goal_amount` int unsigned NOT NULL DEFAULT '0' COMMENT '목표 수량',
  `raw_material_cost` int unsigned NOT NULL DEFAULT '0' COMMENT '원자재/원단 (생산원가)',
  `subsidiary_material_cost` int unsigned NOT NULL DEFAULT '0' COMMENT '부자재 (생산원가)',
  `processing_cost` int unsigned NOT NULL DEFAULT '0' COMMENT '가공비 (생산원가)',
  `margin_cost` int unsigned NOT NULL DEFAULT '0' COMMENT '마진 (생산원가)',
  `marketing_cost` int unsigned NOT NULL DEFAULT '0' COMMENT '마케팅 (생산원가)',
  `kc_cost` int unsigned NOT NULL DEFAULT '0' COMMENT 'KC 인증 비용 (생산원가)',
  `packing_cost` int unsigned NOT NULL DEFAULT '0' COMMENT '포장 비용 (생산원가)',
  `use_funding_list_image_1` tinyint(1) NOT NULL DEFAULT '0' COMMENT '펀딩 리스트 이미지 등록 여부',
  `use_funding_list_image_2` tinyint(1) NOT NULL DEFAULT '0' COMMENT '펀딩 리스트 이미지 등록 여부 (마우스 오버 시 추가 이미지)',
  `goods_related_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'none' COMMENT '관련 상품 설정 타입 (none: 미노출, random: 랜덤 상품 노출, manual: 수동설정 상품 노출)',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mm_gds_fundings_goods_id_index` (`goods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='펀딩 상세';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_gds_fundings`
--

LOCK TABLES `mm_gds_fundings` WRITE;
/*!40000 ALTER TABLE `mm_gds_fundings` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_gds_fundings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_gds_giveaway_apply_brands`
--

DROP TABLE IF EXISTS `mm_gds_giveaway_apply_brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_gds_giveaway_apply_brands` (
  `giveaway_id` bigint unsigned NOT NULL COMMENT '사은품 키(mm_gds_gifts.id)',
  `brand_id` bigint unsigned NOT NULL COMMENT '대상 진열브랜드 고유코드(mm_shp_brands.id)',
  KEY `mm_gds_gift_apply_brands_gift_id_index` (`giveaway_id`),
  KEY `mm_gds_gift_apply_brands_brand_id_index` (`brand_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_gds_giveaway_apply_brands`
--

LOCK TABLES `mm_gds_giveaway_apply_brands` WRITE;
/*!40000 ALTER TABLE `mm_gds_giveaway_apply_brands` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_gds_giveaway_apply_brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_gds_giveaway_apply_categories`
--

DROP TABLE IF EXISTS `mm_gds_giveaway_apply_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_gds_giveaway_apply_categories` (
  `giveaway_id` bigint unsigned NOT NULL COMMENT '사은품 키(mm_gds_gifts.id)',
  `category_code` char(9) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '대상 카테고리 고유코드(mm_shp_category_inco.code)',
  KEY `mm_gds_gift_apply_categories_gift_id_index` (`giveaway_id`),
  KEY `mm_gds_gift_apply_categories_category_code_index` (`category_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_gds_giveaway_apply_categories`
--

LOCK TABLES `mm_gds_giveaway_apply_categories` WRITE;
/*!40000 ALTER TABLE `mm_gds_giveaway_apply_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_gds_giveaway_apply_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_gds_giveaway_apply_goods`
--

DROP TABLE IF EXISTS `mm_gds_giveaway_apply_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_gds_giveaway_apply_goods` (
  `giveaway_id` bigint unsigned NOT NULL COMMENT '사은품 키(mm_gds_gifts.id)',
  `goods_id` bigint unsigned NOT NULL COMMENT '대상 상품 고유키(mm_gds_items.id)',
  KEY `mm_gds_gift_apply_goods_gift_id_index` (`giveaway_id`),
  KEY `mm_gds_gift_apply_goods_goods_id_index` (`goods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_gds_giveaway_apply_goods`
--

LOCK TABLES `mm_gds_giveaway_apply_goods` WRITE;
/*!40000 ALTER TABLE `mm_gds_giveaway_apply_goods` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_gds_giveaway_apply_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_gds_giveaway_apply_sellers`
--

DROP TABLE IF EXISTS `mm_gds_giveaway_apply_sellers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_gds_giveaway_apply_sellers` (
  `giveaway_id` bigint unsigned NOT NULL COMMENT '사은품 키(mm_gds_gifts.id)',
  `seller_id` bigint unsigned NOT NULL COMMENT '대상 판매자 고유키(mm_adm_sellers.id)',
  KEY `mm_gds_gift_apply_sellers_gift_id_index` (`giveaway_id`),
  KEY `mm_gds_gift_apply_sellers_seller_id_index` (`seller_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_gds_giveaway_apply_sellers`
--

LOCK TABLES `mm_gds_giveaway_apply_sellers` WRITE;
/*!40000 ALTER TABLE `mm_gds_giveaway_apply_sellers` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_gds_giveaway_apply_sellers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_gds_giveaways`
--

DROP TABLE IF EXISTS `mm_gds_giveaways`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_gds_giveaways` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `is_use` tinyint(1) NOT NULL DEFAULT '1' COMMENT '사용 여부',
  `display_start_at` datetime NOT NULL COMMENT '노출 시작시간',
  `display_end_at` datetime NOT NULL COMMENT '노출 종료시간',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '사은품 명',
  `alt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '대체 텍스트',
  `middle_user_id` bigint unsigned NOT NULL COMMENT '중간관리자 고유키(mm_adm_middle_users.id)',
  `seller_id` bigint unsigned NOT NULL COMMENT '브랜드관리자 고유키(mm_adm_sellers.id)',
  `apply_range_type` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '적용범위 (seller: 판매자, goods: 상품, category: 카테고리, brand: 진열브랜드)',
  `is_except_by_seller` tinyint(1) NOT NULL DEFAULT '0',
  `is_except_by_goods` tinyint(1) NOT NULL DEFAULT '0',
  `is_except_by_category` tinyint(1) NOT NULL DEFAULT '0',
  `is_except_by_brand` tinyint(1) NOT NULL DEFAULT '0',
  `stock` int NOT NULL DEFAULT '0' COMMENT '재고 수량',
  `min_price` int NOT NULL DEFAULT '0' COMMENT '지급 기준 최소금액(0: 금액 상관없이 지급)',
  `once_in_user` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'true 인 경우 회원당 한 번씩만 지급',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '설명문구',
  `created_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mm_gds_giveaways_seller_id_index` (`seller_id`),
  KEY `mm_gds_giveaways_middle_user_id_index` (`middle_user_id`),
  KEY `mm_gds_giveaways_apply_range_type_index` (`apply_range_type`),
  KEY `mm_gds_giveaways_display_end_at_index` (`display_end_at`),
  KEY `mm_gds_giveaways_display_start_at_index` (`display_start_at`),
  KEY `mm_gds_giveaways_is_use_index` (`is_use`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_gds_giveaways`
--

LOCK TABLES `mm_gds_giveaways` WRITE;
/*!40000 ALTER TABLE `mm_gds_giveaways` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_gds_giveaways` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_gds_headline_apply_brands`
--

DROP TABLE IF EXISTS `mm_gds_headline_apply_brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_gds_headline_apply_brands` (
  `headline_id` bigint unsigned NOT NULL COMMENT '말머리 키(mm_gds_headlines.id)',
  `brand_id` bigint unsigned NOT NULL COMMENT '대상 진열브랜드 고유코드(mm_shp_brands.id)',
  KEY `mm_gds_headline_apply_brands_headline_id_index` (`headline_id`),
  KEY `mm_gds_headline_apply_brands_brand_id_index` (`brand_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_gds_headline_apply_brands`
--

LOCK TABLES `mm_gds_headline_apply_brands` WRITE;
/*!40000 ALTER TABLE `mm_gds_headline_apply_brands` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_gds_headline_apply_brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_gds_headline_apply_categories`
--

DROP TABLE IF EXISTS `mm_gds_headline_apply_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_gds_headline_apply_categories` (
  `headline_id` bigint unsigned NOT NULL COMMENT '말머리 키(mm_gds_headlines.id)',
  `category_code` char(9) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '대상 카테고리 고유코드(mm_shp_category_inco.code)',
  KEY `mm_gds_headline_apply_categories_headline_id_index` (`headline_id`),
  KEY `mm_gds_headline_apply_categories_category_code_index` (`category_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_gds_headline_apply_categories`
--

LOCK TABLES `mm_gds_headline_apply_categories` WRITE;
/*!40000 ALTER TABLE `mm_gds_headline_apply_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_gds_headline_apply_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_gds_headline_apply_goods`
--

DROP TABLE IF EXISTS `mm_gds_headline_apply_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_gds_headline_apply_goods` (
  `headline_id` bigint unsigned NOT NULL COMMENT '말머리 키(mm_gds_headlines.id)',
  `goods_id` bigint unsigned NOT NULL COMMENT '대상 상품 고유키(mm_gds_items.id)',
  KEY `mm_gds_headline_apply_goods_headline_id_index` (`headline_id`),
  KEY `mm_gds_headline_apply_goods_goods_id_index` (`goods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_gds_headline_apply_goods`
--

LOCK TABLES `mm_gds_headline_apply_goods` WRITE;
/*!40000 ALTER TABLE `mm_gds_headline_apply_goods` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_gds_headline_apply_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_gds_headline_apply_sellers`
--

DROP TABLE IF EXISTS `mm_gds_headline_apply_sellers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_gds_headline_apply_sellers` (
  `headline_id` bigint unsigned NOT NULL COMMENT '말머리 키(mm_gds_headlines.id)',
  `seller_id` bigint unsigned NOT NULL COMMENT '대상 판매자 고유키(mm_adm_sellers.id)',
  KEY `mm_gds_headline_apply_sellers_headline_id_index` (`headline_id`),
  KEY `mm_gds_headline_apply_sellers_seller_id_index` (`seller_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_gds_headline_apply_sellers`
--

LOCK TABLES `mm_gds_headline_apply_sellers` WRITE;
/*!40000 ALTER TABLE `mm_gds_headline_apply_sellers` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_gds_headline_apply_sellers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_gds_headlines`
--

DROP TABLE IF EXISTS `mm_gds_headlines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_gds_headlines` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '상품 말머리 고유번호',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '상품 말머리명',
  `is_use` tinyint(1) NOT NULL DEFAULT '1' COMMENT '사용 여부',
  `use_from` datetime NOT NULL COMMENT '적용 시작 일자',
  `use_to` datetime NOT NULL COMMENT '적용 종료 일자',
  `created_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '등록자',
  `updated_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '수정자',
  `deleted_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '삭제자',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mm_gds_headlines_name_index` (`name`),
  KEY `mm_gds_headlines_start_at_index` (`use_from`),
  KEY `mm_gds_headlines_end_at_index` (`use_to`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_gds_headlines`
--

LOCK TABLES `mm_gds_headlines` WRITE;
/*!40000 ALTER TABLE `mm_gds_headlines` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_gds_headlines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_gds_icon_apply_brands`
--

DROP TABLE IF EXISTS `mm_gds_icon_apply_brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_gds_icon_apply_brands` (
  `icon_id` bigint unsigned NOT NULL COMMENT '아이콘 키(mm_gds_icons.id)',
  `brand_id` bigint unsigned NOT NULL COMMENT '대상 진열브랜드 고유코드(mm_shp_brands.id)',
  KEY `mm_gds_icon_apply_brands_icon_id_index` (`icon_id`),
  KEY `mm_gds_icon_apply_brands_brand_id_index` (`brand_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_gds_icon_apply_brands`
--

LOCK TABLES `mm_gds_icon_apply_brands` WRITE;
/*!40000 ALTER TABLE `mm_gds_icon_apply_brands` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_gds_icon_apply_brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_gds_icon_apply_categories`
--

DROP TABLE IF EXISTS `mm_gds_icon_apply_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_gds_icon_apply_categories` (
  `icon_id` bigint unsigned NOT NULL COMMENT '아이콘 키(mm_gds_icons.id)',
  `category_code` char(9) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '대상 카테고리 고유코드(mm_shp_category_inco.code)',
  KEY `mm_gds_icon_apply_categories_icon_id_index` (`icon_id`),
  KEY `mm_gds_icon_apply_categories_category_code_index` (`category_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_gds_icon_apply_categories`
--

LOCK TABLES `mm_gds_icon_apply_categories` WRITE;
/*!40000 ALTER TABLE `mm_gds_icon_apply_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_gds_icon_apply_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_gds_icon_apply_goods`
--

DROP TABLE IF EXISTS `mm_gds_icon_apply_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_gds_icon_apply_goods` (
  `icon_id` bigint unsigned NOT NULL COMMENT '아이콘 키(mm_gds_icons.id)',
  `goods_id` bigint unsigned NOT NULL COMMENT '대상 상품 고유키(mm_gds_items.id)',
  KEY `mm_gds_icon_apply_goods_icon_id_index` (`icon_id`),
  KEY `mm_gds_icon_apply_goods_goods_id_index` (`goods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_gds_icon_apply_goods`
--

LOCK TABLES `mm_gds_icon_apply_goods` WRITE;
/*!40000 ALTER TABLE `mm_gds_icon_apply_goods` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_gds_icon_apply_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_gds_icon_apply_sellers`
--

DROP TABLE IF EXISTS `mm_gds_icon_apply_sellers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_gds_icon_apply_sellers` (
  `icon_id` bigint unsigned NOT NULL COMMENT '아이콘 키(mm_gds_icons.id)',
  `seller_id` bigint unsigned NOT NULL COMMENT '대상 판매자 고유키(mm_adm_sellers.id)',
  KEY `mm_gds_icon_apply_sellers_icon_id_index` (`icon_id`),
  KEY `mm_gds_icon_apply_sellers_seller_id_index` (`seller_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_gds_icon_apply_sellers`
--

LOCK TABLES `mm_gds_icon_apply_sellers` WRITE;
/*!40000 ALTER TABLE `mm_gds_icon_apply_sellers` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_gds_icon_apply_sellers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_gds_icons`
--

DROP TABLE IF EXISTS `mm_gds_icons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_gds_icons` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `is_use` tinyint(1) NOT NULL DEFAULT '1' COMMENT '사용 여부',
  `display_start_at` datetime NOT NULL COMMENT '노출 시작시간',
  `display_end_at` datetime NOT NULL COMMENT '노출 종료시간',
  `label` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '아이콘 명',
  `background_color_rgb` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'FFFFFF' COMMENT '배경색 RGB코드',
  `font_color_rgb` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '000000' COMMENT '글씨색 RGB코드',
  `apply_range_type` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '적용범위 (seller: 판매자, goods: 상품, category: 카테고리, brand: 진열브랜드)',
  `is_except_by_seller` tinyint(1) NOT NULL DEFAULT '0',
  `is_except_by_goods` tinyint(1) NOT NULL DEFAULT '0',
  `is_except_by_category` tinyint(1) NOT NULL DEFAULT '0',
  `is_except_by_brand` tinyint(1) NOT NULL DEFAULT '0',
  `created_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mm_gds_icons_display_start_at_index` (`display_start_at`),
  KEY `mm_gds_icons_display_end_at_index` (`display_end_at`),
  KEY `mm_gds_icons_is_use_index` (`is_use`),
  KEY `mm_gds_icons_apply_range_type_index` (`apply_range_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_gds_icons`
--

LOCK TABLES `mm_gds_icons` WRITE;
/*!40000 ALTER TABLE `mm_gds_icons` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_gds_icons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_gds_in_stock_notify_unit_requests`
--

DROP TABLE IF EXISTS `mm_gds_in_stock_notify_unit_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_gds_in_stock_notify_unit_requests` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `in_stock_notify_unit_id` bigint unsigned NOT NULL COMMENT '알림 단위 키(mm_gds_in_stock_notify_units.id',
  `member_id` bigint unsigned NOT NULL COMMENT '회원 고유키(mm_mem_members.id)',
  `request_at` datetime NOT NULL COMMENT '재입고 알림 신청시간',
  `is_notified` tinyint(1) NOT NULL DEFAULT '0' COMMENT '알림 여부',
  `notified_at` datetime DEFAULT NULL COMMENT '알림처리 시간',
  `notified_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '알림처리자 정보',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_expire_notify` tinyint(1) NOT NULL DEFAULT '0' COMMENT '알림 만료여부 (신청후 30일 경과)',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `unit_id_index` (`in_stock_notify_unit_id`),
  KEY `member_id_index` (`member_id`),
  KEY `mm_gds_in_stock_notify_unit_requests_is_notified_index` (`is_notified`),
  KEY `mm_gds_in_stock_notify_unit_requests_is_expire_notify_index` (`is_expire_notify`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_gds_in_stock_notify_unit_requests`
--

LOCK TABLES `mm_gds_in_stock_notify_unit_requests` WRITE;
/*!40000 ALTER TABLE `mm_gds_in_stock_notify_unit_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_gds_in_stock_notify_unit_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_gds_in_stock_notify_units`
--

DROP TABLE IF EXISTS `mm_gds_in_stock_notify_units`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_gds_in_stock_notify_units` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` bigint unsigned NOT NULL COMMENT '대상 상품 코드',
  `option_id` bigint unsigned NOT NULL COMMENT '대상 옵션코드',
  `notify_state` tinyint unsigned NOT NULL COMMENT '알림 상태(0: 알림 대기, 1: 알림 발송됨, ...)',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mm_gds_in_stock_notify_units_goods_id_index` (`goods_id`),
  KEY `mm_gds_in_stock_notify_units_option_id_index` (`option_id`),
  KEY `mm_gds_in_stock_notify_units_notify_state_index` (`notify_state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_gds_in_stock_notify_units`
--

LOCK TABLES `mm_gds_in_stock_notify_units` WRITE;
/*!40000 ALTER TABLE `mm_gds_in_stock_notify_units` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_gds_in_stock_notify_units` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_gds_info_change_logs`
--

DROP TABLE IF EXISTS `mm_gds_info_change_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_gds_info_change_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '고유키',
  `goods_id` bigint unsigned NOT NULL COMMENT '상품 고유키(mm_gds_items.id)',
  `goods_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '로깅 시점의 상품명(mm_gds_items.name)',
  `change_keys` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '변경내역 목록(개행문자로 여러줄 입력될 수 있음)',
  `change_values` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '변경내역 전후값(화면에 노출되지는 않는 부분. 저장용)',
  `before_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '변경 전 값',
  `after_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '변경 후 값',
  `modifier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '수정자 정보',
  `modifier_message` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '기타 관리메모(필요시 활용)',
  `modifier_ip_address` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '변경주체의 IP 주소',
  `created_at` datetime NOT NULL COMMENT '변경 일시( = 로그생성일시)',
  `scm_user_code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mm_gds_info_change_logs_goods_id_index` (`goods_id`),
  KEY `mm_gds_info_change_logs_goods_name_index` (`goods_name`),
  KEY `mm_gds_info_change_logs_created_at_index` (`created_at`),
  KEY `mm_gds_info_change_logs_scm_user_code_index` (`scm_user_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='상품 정보 변경 로그데이터 테이블';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_gds_info_change_logs`
--

LOCK TABLES `mm_gds_info_change_logs` WRITE;
/*!40000 ALTER TABLE `mm_gds_info_change_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_gds_info_change_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_gds_item_add_info`
--

DROP TABLE IF EXISTS `mm_gds_item_add_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_gds_item_add_info` (
  `goods_id` bigint unsigned NOT NULL COMMENT '상품 고유번호 (mm_gds_items.id)',
  `is_sale` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '할인중 여부',
  `is_free_delivery` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '무료배송 여부',
  `is_night_sale` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '심야할인 여부',
  `is_immediately_sale` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '즉시할인 여부',
  `dc_1_rate` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '1차 할인율',
  `dc_1_price` int NOT NULL DEFAULT '0' COMMENT '1차 할인가',
  `dc_1_rate_from_listprice` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '정가대비 1차할인가 할인율 컬럼',
  `is_coupon_sale` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '쿠폰 할인 여부',
  `is_timeattack_coupon_sale` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '타임특가 쿠폰 여부',
  `is_sale_reserve` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '예약 배송 여부',
  `headline` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '말머리명',
  `icon_id` bigint unsigned DEFAULT NULL COMMENT '아이콘 고유번호(mm_gds_icons.id)',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`goods_id`),
  UNIQUE KEY `mm_gds_item_add_info_goods_id_unique` (`goods_id`) USING BTREE,
  KEY `IS_SALE_INDEX` (`is_sale`),
  KEY `IS_FREE_DELIVERY_INDEX` (`is_free_delivery`),
  KEY `IS_NIGHT_SALE_INDEX` (`is_night_sale`),
  KEY `IS_IMMEDIATELY_SALE_INDEX` (`is_immediately_sale`),
  KEY `DC_1_RATE_INDEX` (`dc_1_rate`),
  KEY `mm_gds_item_add_info_dc_1_price_index` (`dc_1_price`),
  KEY `mm_gds_item_add_info_dc_1_rate_from_listprice_index` (`dc_1_rate_from_listprice`),
  KEY `is_coupon_sale_index` (`is_coupon_sale`),
  KEY `is_sale_reserve_index` (`is_sale_reserve`),
  KEY `mm_gds_item_add_info_icon_id_index` (`icon_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='상품추가정보';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_gds_item_add_info`
--

LOCK TABLES `mm_gds_item_add_info` WRITE;
/*!40000 ALTER TABLE `mm_gds_item_add_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_gds_item_add_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_gds_item_approval_rejects`
--

DROP TABLE IF EXISTS `mm_gds_item_approval_rejects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_gds_item_approval_rejects` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '고유번호',
  `goods_id` bigint unsigned NOT NULL COMMENT '상품 고유키(mm_gds_items.id)',
  `message` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '반려 사유',
  `is_request` tinyint(1) NOT NULL DEFAULT '0' COMMENT '재요청 여부',
  `created_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '등록관리자',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT '삭제일시',
  PRIMARY KEY (`id`),
  KEY `mm_gds_item_approval_rejects_goods_id_index` (`goods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='상품 반려 사유 관리 테이블';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_gds_item_approval_rejects`
--

LOCK TABLES `mm_gds_item_approval_rejects` WRITE;
/*!40000 ALTER TABLE `mm_gds_item_approval_rejects` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_gds_item_approval_rejects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_gds_item_change_price_reserves`
--

DROP TABLE IF EXISTS `mm_gds_item_change_price_reserves`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_gds_item_change_price_reserves` (
  `goods_id` bigint unsigned NOT NULL COMMENT '상품 고유키(mm_gds_items.id)\n',
  `before_list_price` int unsigned NOT NULL COMMENT '변경 전 정가',
  `after_list_price` int unsigned NOT NULL COMMENT '변경할 정가',
  `before_sell_price` int unsigned NOT NULL COMMENT '변경 전 판매가',
  `after_sell_price` int unsigned NOT NULL COMMENT '변경할 판매가',
  `start_at` datetime NOT NULL COMMENT '변경 적용할 시간',
  `end_at` datetime NOT NULL COMMENT '변경 종료할 시간',
  `is_start_applied` tinyint(1) NOT NULL DEFAULT '0' COMMENT '변경 시작 완료여부',
  `start_applied_at` datetime DEFAULT NULL COMMENT '시작변경이 실제 적용된 시간',
  `is_end_applied` tinyint(1) NOT NULL DEFAULT '0' COMMENT '종료 변경 적용완료 여부',
  `end_applied_at` datetime DEFAULT NULL COMMENT '종료변경이 실제 적용된 시간',
  `reserved_user_type` char(1) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '예약 건 관리자 타입 enum@Settlement/User/SCMUserType',
  `reserved_user_id` bigint unsigned NOT NULL COMMENT '예약 건 관리자 고유키(mm_adm_*_USER.id)',
  `reserved_user_login_id` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '예약 건 관리자 고유 아이디(mm_adm_*_USER.login_id)',
  `reserved_user_name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '예약 건 관리자 이름',
  `reserved_user_ip` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '예약 건 관리자 접속 IP',
  `created_at` datetime NOT NULL COMMENT '예약 생성시간',
  `updated_at` datetime DEFAULT NULL COMMENT '예약 수정시간',
  `before_margin` decimal(5,4) NOT NULL COMMENT '변경 전 마진',
  `after_margin` decimal(5,4) NOT NULL COMMENT '변경 후 마진',
  PRIMARY KEY (`goods_id`),
  UNIQUE KEY `mm_gds_item_change_price_reserves_goods_id_unique` (`goods_id`) USING BTREE,
  KEY `mm_gds_item_change_price_reserves_goods_id_index` (`goods_id`),
  KEY `mm_gds_item_change_price_reserves_is_applied_index` (`is_start_applied`),
  KEY `mm_gds_item_change_price_reserves_created_at_index` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='상품 가격 변경 예약목록';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_gds_item_change_price_reserves`
--

LOCK TABLES `mm_gds_item_change_price_reserves` WRITE;
/*!40000 ALTER TABLE `mm_gds_item_change_price_reserves` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_gds_item_change_price_reserves` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_gds_item_daum_ep_states`
--

DROP TABLE IF EXISTS `mm_gds_item_daum_ep_states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_gds_item_daum_ep_states` (
  `goods_id` bigint unsigned NOT NULL COMMENT '상품 고유키(mm_gds_items.id)',
  `last_written_at` datetime NOT NULL COMMENT '최근 EP 작성된 시점',
  `last_written_state` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '최근 작성된 상태(new: 신규등록, display: 진열상태, remove: 삭제(품절,진열내림), redisplay: 재진열됨)',
  PRIMARY KEY (`goods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='다음 EP 연동상태값 저장 테이블';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_gds_item_daum_ep_states`
--

LOCK TABLES `mm_gds_item_daum_ep_states` WRITE;
/*!40000 ALTER TABLE `mm_gds_item_daum_ep_states` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_gds_item_daum_ep_states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_gds_item_ep_except_goods`
--

DROP TABLE IF EXISTS `mm_gds_item_ep_except_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_gds_item_ep_except_goods` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '레코드 고유키',
  `goods_id` bigint unsigned NOT NULL COMMENT '상품 코드(mm_gds_items.id)',
  `except_reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '제외사유',
  `except_from` datetime NOT NULL COMMENT '제외 시작일',
  `except_to` datetime NOT NULL COMMENT '제외 종료일',
  `department_id` bigint unsigned DEFAULT NULL COMMENT '작성자 부서id mm_scm_departments.id',
  `created_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '등록관리자',
  `updated_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '수정관리자',
  `deleted_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '삭제관리자',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mm_gds_item_ep_except_goods_goods_id_index` (`goods_id`),
  KEY `mm_gds_item_ep_except_goods_department_id_index` (`department_id`),
  KEY `mm_gds_item_ep_except_goods_created_at_index` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_gds_item_ep_except_goods`
--

LOCK TABLES `mm_gds_item_ep_except_goods` WRITE;
/*!40000 ALTER TABLE `mm_gds_item_ep_except_goods` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_gds_item_ep_except_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_gds_item_ep_except_sellers`
--

DROP TABLE IF EXISTS `mm_gds_item_ep_except_sellers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_gds_item_ep_except_sellers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '레코드 고유키',
  `seller_id` bigint unsigned NOT NULL COMMENT '판매자코드(mm_adm_sellers.id)',
  `except_reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '제외사유',
  `except_from` datetime NOT NULL COMMENT '제외 시작일',
  `except_to` datetime NOT NULL COMMENT '제외 종료일',
  `department_id` bigint unsigned DEFAULT NULL COMMENT '작성자 부서id mm_scm_departments.id',
  `created_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '등록관리자',
  `updated_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '수정관리자',
  `deleted_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '삭제관리자',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mm_gds_item_ep_except_sellers_seller_id_index` (`seller_id`),
  KEY `mm_gds_item_ep_except_sellers_department_id_index` (`department_id`),
  KEY `mm_gds_item_ep_except_sellers_created_at_index` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_gds_item_ep_except_sellers`
--

LOCK TABLES `mm_gds_item_ep_except_sellers` WRITE;
/*!40000 ALTER TABLE `mm_gds_item_ep_except_sellers` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_gds_item_ep_except_sellers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_gds_item_mandatory`
--

DROP TABLE IF EXISTS `mm_gds_item_mandatory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_gds_item_mandatory` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '고유번호',
  `goods_id` bigint unsigned NOT NULL COMMENT '상품 고유번호 (mm_gds_product.id)',
  `order_seq` int unsigned NOT NULL DEFAULT '0' COMMENT '정렬 순서값',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '항목',
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '내용',
  `template_id` bigint unsigned NOT NULL COMMENT '정보고시 분류코드(mm_gds_mandatory_templates.id)',
  `template_detail_id` bigint unsigned NOT NULL COMMENT '정보고시 상세 고유키(mm_gds_mandatory_template_details.id)',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '등록 일시',
  `updated_at` datetime DEFAULT NULL COMMENT '수정 일시',
  PRIMARY KEY (`id`),
  KEY `mm_gds_item_mandatory_item_id_index` (`goods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='상품 정보고시';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_gds_item_mandatory`
--

LOCK TABLES `mm_gds_item_mandatory` WRITE;
/*!40000 ALTER TABLE `mm_gds_item_mandatory` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_gds_item_mandatory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_gds_item_naver_ep_states`
--

DROP TABLE IF EXISTS `mm_gds_item_naver_ep_states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_gds_item_naver_ep_states` (
  `goods_id` bigint unsigned NOT NULL COMMENT '상품 고유키(mm_gds_items.id)',
  `last_written_at` datetime NOT NULL COMMENT '최근 EP 작성된 시점',
  `last_written_state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '최근 작성된 상태(new: 신규등록, display: 진열상태, remove: 삭제(품절,진열내림), redisplay: 재진열됨)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_gds_item_naver_ep_states`
--

LOCK TABLES `mm_gds_item_naver_ep_states` WRITE;
/*!40000 ALTER TABLE `mm_gds_item_naver_ep_states` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_gds_item_naver_ep_states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_gds_item_origin`
--

DROP TABLE IF EXISTS `mm_gds_item_origin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_gds_item_origin` (
  `goods_id` bigint unsigned NOT NULL COMMENT '상품 고유키(mm_gds_items.id)',
  `origin_1_depth` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '원산지 1 depth',
  `origin_2_depth` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '원산지 2 depth',
  `origin_3_depth` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '원산지 3 depth',
  `is_other` tinyint(1) NOT NULL DEFAULT '0' COMMENT '원산지 다른 상품 함께 등록 여부 1:사용 0:미사용',
  `import_company` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '수입사',
  `origin_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '직접입력 선택 시 내용',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`goods_id`),
  KEY `mm_gds_item_origin_goods_id_index` (`goods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_gds_item_origin`
--

LOCK TABLES `mm_gds_item_origin` WRITE;
/*!40000 ALTER TABLE `mm_gds_item_origin` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_gds_item_origin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_gds_item_recent_sorts`
--

DROP TABLE IF EXISTS `mm_gds_item_recent_sorts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_gds_item_recent_sorts` (
  `goods_id` bigint unsigned NOT NULL COMMENT '대상 상품 고유키(mm_gds_items.id)',
  `order_seq` int NOT NULL COMMENT '노출 순번',
  KEY `mm_gds_item_recent_sorts_goods_id_index` (`goods_id`),
  KEY `mm_gds_item_recent_sorts_order_seq_index` (`order_seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_gds_item_recent_sorts`
--

LOCK TABLES `mm_gds_item_recent_sorts` WRITE;
/*!40000 ALTER TABLE `mm_gds_item_recent_sorts` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_gds_item_recent_sorts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_gds_item_sale_reserves`
--

DROP TABLE IF EXISTS `mm_gds_item_sale_reserves`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_gds_item_sale_reserves` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '상품 예약 판매 고유키',
  `goods_id` bigint unsigned NOT NULL COMMENT '상품 코드(mm_gds_items.id)',
  `start_at` datetime DEFAULT NULL COMMENT '예약판매시작일',
  `end_at` datetime DEFAULT NULL COMMENT '예약판매종료일',
  `ship_start_at` datetime NOT NULL COMMENT '예약배송시작일',
  `ship_end_at` datetime NOT NULL COMMENT '예약배송종료일',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '등록일시',
  `updated_at` datetime DEFAULT NULL COMMENT '수정일시',
  `created_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '등록자',
  `updated_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '수정자',
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT '삭제일시',
  PRIMARY KEY (`id`),
  KEY `mm_gds_item_sale_reserves_created_at_index` (`created_at`),
  KEY `mm_gds_item_sale_reserves_start_at_index` (`start_at`),
  KEY `mm_gds_item_sale_reserves_end_at_index` (`end_at`),
  KEY `mm_gds_item_sale_reserves_ship_start_at_index` (`ship_start_at`),
  KEY `mm_gds_item_sale_reserves_ship_end_at_index` (`ship_end_at`),
  KEY `mm_gds_item_sale_reserves_created_user_index` (`created_user`),
  KEY `mm_gds_item_sale_reserves_updated_user_index` (`updated_user`),
  KEY `mm_gds_item_sale_reserves_goods_id_index` (`goods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_gds_item_sale_reserves`
--

LOCK TABLES `mm_gds_item_sale_reserves` WRITE;
/*!40000 ALTER TABLE `mm_gds_item_sale_reserves` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_gds_item_sale_reserves` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_gds_item_shopping_info`
--

DROP TABLE IF EXISTS `mm_gds_item_shopping_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_gds_item_shopping_info` (
  `goods_id` bigint unsigned NOT NULL COMMENT '상품 고유번호 (mm_gds_items.id)',
  `view_count` int unsigned NOT NULL DEFAULT '0' COMMENT '상품 조회수',
  `order_count` int unsigned NOT NULL DEFAULT '0' COMMENT '상품 주문수',
  `wish_count` int unsigned NOT NULL DEFAULT '0' COMMENT '상품 좋아요 된 횟수',
  `review_count` int unsigned NOT NULL DEFAULT '0' COMMENT '상품 리뷰점수 총합',
  `review_amount` bigint unsigned NOT NULL DEFAULT '0' COMMENT '리뷰 총점',
  `qna_count` int unsigned NOT NULL DEFAULT '0' COMMENT '상품 문의 갯수',
  `review_rate_int` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '별점 평균 정수',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `order_count_desc` bigint NOT NULL DEFAULT '0' COMMENT '주문 수 집계 역행',
  `view_count_desc` bigint NOT NULL DEFAULT '0' COMMENT '조회 수 집계 역행',
  `wish_count_desc` bigint NOT NULL DEFAULT '0' COMMENT '찜 수 집계 역행',
  `review_count_desc` bigint NOT NULL DEFAULT '0' COMMENT '리뷰 수 집계 역행',
  PRIMARY KEY (`goods_id`),
  UNIQUE KEY `mm_gds_item_shopping_info_goods_id_unique` (`goods_id`) USING BTREE,
  KEY `VIEW_COUNT_INDEX` (`view_count` DESC),
  KEY `REVIEW_RATE_INT_INDEX` (`review_rate_int`),
  KEY `order_count_index` (`order_count`),
  KEY `mm_gds_item_shopping_info_order_count_desc_index` (`order_count_desc`),
  KEY `mm_gds_item_shopping_info_view_count_desc_index` (`view_count_desc`),
  KEY `mm_gds_item_shopping_info_wish_count_desc_index` (`wish_count_desc`),
  KEY `mm_gds_item_shopping_info_review_count_desc_index` (`review_count_desc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='상품 쇼핑정보';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_gds_item_shopping_info`
--

LOCK TABLES `mm_gds_item_shopping_info` WRITE;
/*!40000 ALTER TABLE `mm_gds_item_shopping_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_gds_item_shopping_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_gds_item_special_attribute`
--

DROP TABLE IF EXISTS `mm_gds_item_special_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_gds_item_special_attribute` (
  `goods_id` bigint unsigned NOT NULL COMMENT '상품 고유키(mm_gds_items.id)',
  `template_id` bigint unsigned NOT NULL COMMENT '특수 속성 템플릿 고유키(mm_gds_special_attribute_templates.id)',
  `template_detail_id` bigint unsigned NOT NULL COMMENT '특수 속성 하위분류 고유키(mm_gds_special_attribute_template_details.id)',
  UNIQUE KEY `mm_gds_item_special_attribute_unique` (`goods_id`,`template_detail_id`),
  KEY `mm_gds_item_special_attribute_goods_id_index` (`goods_id`),
  KEY `mm_gds_item_special_attribute_template_id_index` (`template_id`),
  KEY `mm_gds_item_special_attribute_template_detail_id_index` (`template_detail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='상품 <-> 특수 속성 하위분류 맵핑 테이블';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_gds_item_special_attribute`
--

LOCK TABLES `mm_gds_item_special_attribute` WRITE;
/*!40000 ALTER TABLE `mm_gds_item_special_attribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_gds_item_special_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_gds_items`
--

DROP TABLE IF EXISTS `mm_gds_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_gds_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '고유번호 (기획, 정책, 운영에서 ‘상품 코드’라고 지칭하는 값)',
  `type` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'GN' COMMENT '상품유형(GN : 일반상품, TS: 타임세일, RF: 래플, FD: 펀딩)',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '상품명',
  `display_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '진열상품명',
  `no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '상품번호 - 기획, 정책, 운영에서 ‘상품번호’라고 지칭하는 값',
  `middle_user_id` bigint unsigned NOT NULL COMMENT '중간관리자 고유키',
  `seller_id` bigint unsigned NOT NULL COMMENT '셀러 고유키',
  `brand_id` bigint unsigned NOT NULL COMMENT '브랜드 고유번호 (mm_shp_brands.id)',
  `is_oversea_delivery` tinyint(1) NOT NULL DEFAULT '0' COMMENT '해외배송상품 여부',
  `oversea_delivery_min` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '해외배송 평균배송일 최소',
  `oversea_delivery_max` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '해외배송 평균배송일 최대',
  `is_custom_made` tinyint(1) NOT NULL DEFAULT '0' COMMENT '주문제작 상품 여부',
  `custom_made_day` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '주문제작 배송일',
  `list_price` int NOT NULL COMMENT '정가',
  `sell_price` int NOT NULL COMMENT '판매가',
  `approval_state` tinyint NOT NULL DEFAULT '0' COMMENT '승인 상태 (0:승인요청 1:승인완료 8:반려 9:철회)',
  `approval_request_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '승인 요청 일시',
  `approval_complete_at` datetime DEFAULT NULL COMMENT '승인 완료 일시',
  `approval_reject_at` timestamp NULL DEFAULT NULL COMMENT '승인 거절 일시',
  `basic_info` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '상세설명',
  `is_only_adult` tinyint(1) NOT NULL DEFAULT '0' COMMENT '성인전용 상품 여부',
  `is_locked_only_adult` tinyint(1) NOT NULL DEFAULT '0' COMMENT '성인전용 상품 해제 불가 여부 (1: 해제 불가, 0: 해제 가능)',
  `display_state` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N' COMMENT '진열 상태값(Y: 진열, N: 미진열, S: 예비품절진열)',
  `stock` int NOT NULL DEFAULT '0' COMMENT '실재고',
  `video_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '상품 동영상 URL',
  `search_keyword` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '검색키워드',
  `is_sell_date` tinyint(1) NOT NULL DEFAULT '0' COMMENT '판매기간 사용여부',
  `sell_start_date` datetime DEFAULT NULL COMMENT '판매기간 시작일자',
  `sell_end_date` datetime DEFAULT NULL COMMENT '판매기간 종료일자',
  `shipping_rule_id` bigint unsigned NOT NULL DEFAULT '0' COMMENT '배송정책 템플릿(mm_shp_shipping_rules.id)’,  -- 20200309 신규추가 컬럼',
  `shipping_center_id` bigint unsigned NOT NULL COMMENT '배송지 고유 코드(mm_shp_shipping_centers.id',
  `is_only_member_orderable` tinyint(1) DEFAULT '0' COMMENT '회원전용 구매상품 여부'', -- 20200309 신규추가 컬럼',
  `max_orderable_count_for_all` int NOT NULL DEFAULT '0' COMMENT '전체기간 포함하여 구매가능한 최대갯수(0일시 무제한)',
  `max_orderable_count_for_once` int NOT NULL DEFAULT '0' COMMENT '한 번에 구매 가능한 최대 갯수(0일시 무제한)',
  `max_orderable_count_for_day` int NOT NULL DEFAULT '0' COMMENT '하루에 구매 가능한 갯수(0일시 무제한)',
  `mandatory_template_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '상품고시 정보 고유번호 (mm_gds_mandatory_templates.code)',
  `gender_group` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'E' COMMENT '성별 속성값(F: 여성, M: 남성, E: 공용(기타))',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '등록 일시',
  `updated_at` datetime DEFAULT NULL COMMENT '수정 일시',
  `soldout_at` datetime DEFAULT NULL COMMENT '품절상태로 전환된 시간',
  `soldout_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '품절처리자 이름',
  `margin` decimal(5,4) NOT NULL DEFAULT '0.0000' COMMENT '상품별 마진율 (0.xxxx)',
  `seller_discount_type` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'rate' COMMENT '셀러부담 1차할인 적용 구분(rate: 정률, KRW: 정액)',
  `seller_discount_amount` decimal(11,3) unsigned NOT NULL DEFAULT '0.000' COMMENT '셀러부담 1차할인 적용값',
  `partnershop_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'self' COMMENT '등록된 제휴사',
  `partnershop_goods_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '제휴사 상품 코드',
  `is_tax_free` tinyint(1) NOT NULL DEFAULT '0' COMMENT '면세상품여부 (0: 과세, 1: 면세)',
  `use_custom_list_image` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '개별설정 리스팅 이미지 사용여부(0: 사용안함, 1: 사용함)',
  `use_custom_list_image_2` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '개별설정 리스팅 이미지2(마우스오버) 사용여부(0: 사용안함, 1: 사용함)',
  `image_count` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '상품 이미지 개수',
  `custom_drag_image_count` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '드래그 이미지(360도 뷰) 개수',
  `use_state` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new' COMMENT '사용 상태 (new: 신상품, old: 중고, refur: 리퍼, scratch: 스크래치, display: 전시, return: 반품)',
  `vender_goods_id` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '마이그레이션 상품 코드',
  PRIMARY KEY (`id`),
  KEY `mm_gds_items_type_index` (`type`),
  KEY `mm_gds_items_name_index` (`name`),
  KEY `mm_gds_items_display_name_index` (`display_name`),
  KEY `mm_gds_items_no_index` (`no`),
  KEY `mm_gds_items_middle_user_id_index` (`middle_user_id`),
  KEY `mm_gds_items_seller_id_index` (`seller_id`),
  KEY `mm_gds_items_brand_id_index` (`brand_id`),
  KEY `mm_gds_items_list_price_index` (`list_price`),
  KEY `mm_gds_items_sell_price_index` (`sell_price`),
  KEY `mm_gds_items_display_state_index` (`display_state`),
  KEY `mm_gds_items_stock_index` (`stock`),
  KEY `mm_gds_items_search_keyword_index` (`search_keyword`(768)),
  KEY `mm_gds_items_sell_start_date_index` (`sell_start_date`),
  KEY `mm_gds_items_sell_end_date_index` (`sell_end_date`),
  KEY `mm_gds_items_is_sell_date_index` (`is_sell_date`),
  KEY `mm_gds_items_shipping_rule_id_index` (`shipping_rule_id`),
  KEY `mm_gds_items_created_at_index` (`created_at`),
  KEY `mm_gds_items_updated_at_index` (`updated_at`),
  KEY `mm_gds_items_gender_group_index` (`gender_group`),
  KEY `SELLER_DISCOUNT_AMOUNT_INDEX` (`seller_discount_amount`),
  KEY `mm_gds_items_partnershop_code_index` (`partnershop_code`),
  KEY `mm_gds_items_shipping_center_id_index` (`shipping_center_id`),
  KEY `mm_gds_items_cdic_index` (`custom_drag_image_count`),
  KEY `mm_gds_items_partnershop_goods_id_index` (`partnershop_goods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='상품 원장';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_gds_items`
--

LOCK TABLES `mm_gds_items` WRITE;
/*!40000 ALTER TABLE `mm_gds_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_gds_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_gds_mandatory_template_details`
--

DROP TABLE IF EXISTS `mm_gds_mandatory_template_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_gds_mandatory_template_details` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '고유번호',
  `template_id` bigint unsigned NOT NULL COMMENT '상품고시 정보 고유번호 (mm_gds_mandatory_templates.id)',
  `detail_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '상세 코드',
  `order_seq` int NOT NULL COMMENT '정렬 순서값',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '상품고시명',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '상품고시정보 설졍',
  `default_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '상품고시정보 기본 항목값',
  `special_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '프론트에서 특수처리하는 코드(ex - nation: 국가설정(프론트에 국가선택 버튼 노출 등), qa: 품질 보증기준(텍스트박스 아닌 셀렉트박스 노출 등))',
  `is_required` tinyint unsigned NOT NULL DEFAULT '1' COMMENT '필수여부',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '등록 일시',
  `updated_at` datetime DEFAULT NULL COMMENT '수정 일시',
  PRIMARY KEY (`id`),
  KEY `mm_gds_product_mandatory_detail_template_id_index` (`template_id`)
) ENGINE=InnoDB AUTO_INCREMENT=387 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='상품고시정보별 상세 내용';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_gds_mandatory_template_details`
--

LOCK TABLES `mm_gds_mandatory_template_details` WRITE;
/*!40000 ALTER TABLE `mm_gds_mandatory_template_details` DISABLE KEYS */;
INSERT INTO `mm_gds_mandatory_template_details` VALUES (1,1,'1',1,'제품 소재','섬유의 조성 또는 혼용율을 백분율로 표시, 기능성인 경우 성적서 또는 허가서','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(2,1,'2',2,'색상','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(3,1,'3',3,'치수','','','size',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(4,1,'4',4,'제조자(수입자)','수입품의 경우 수입자를 함께 표기 (병행수입의 경우 병행수입 여부로 대체 가능)','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(5,1,'5',5,'제조국','','','origin',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(6,1,'6',6,'세탁방법 및 취급 시 주의사항','','','laundry',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(7,1,'7',7,'제조연월','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(8,1,'8',8,'품질보증기준','','','quality',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(9,1,'9',9,'A/S책임자와 전화번호','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(10,2,'1',1,'제품 주소재','운동화인 경우에는 겉감, 안감을 구분하여 표시','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(11,2,'2',2,'색상','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(12,2,'3',3,'치수','발길이 : 해외사이즈 표기 시 국내사이즈 병행 표기 (mm), 굽높이 : 굽 재료를 사용하는 여성화에 한함, cm)','','size',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(13,2,'4',4,'제조자(수입자)','수입품의 경우 수입자를 함께 표기 (병행수입의 경우 병행수입 여부로 대체 가능)','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(14,2,'5',5,'제조국','','','origin',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(15,2,'6',6,'취급시 주의사항','','','laundry',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(16,2,'7',7,'품질보증기준','','','quality',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(17,2,'8',8,'A/S책임자와 전화번호','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(18,3,'1',1,'종류','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(19,3,'2',2,'소재','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(20,3,'3',3,'색상','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(21,3,'4',4,'크기','','','size',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(22,3,'5',5,'제조자(수입자)','수입품의 경우 수입자를 함께 표기 (병행수입의 경우 병행수입 여부로 대체 가능)','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(23,3,'6',6,'제조국','','','origin',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(24,3,'7',7,'취급시 주의사항','','','laundry',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(25,3,'8',8,'품질보증기준','','','quality',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(26,3,'9',9,'A/S책임자와 전화번호','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(27,4,'1',1,'종류','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(28,4,'2',2,'소재','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(29,4,'3',3,'치수','','','size',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(30,4,'4',4,'제조자(수입자)','수입품의 경우 수입자를 함께 표기 (병행수입의 경우 병행수입 여부로 대체 가능)','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(31,4,'5',5,'제조국','','','origin',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(32,4,'6',6,'취급시 주의사항','','','laundry',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(33,4,'7',7,'품질보증기준','','','quality',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(34,4,'8',8,'A/S책임자와 전화번호','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(35,5,'1',1,'제품소재','섬유의 조성 또는 혼용율을 백분율로 표시, 충전재를 사용한 제품은 충전재를 함께 표기','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(36,5,'2',2,'색상','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(37,5,'3',3,'치수','','','size',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(38,5,'4',4,'제품구성','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(39,5,'5',5,'제조자(수입자)','수입품의 경우 수입자를 함께 표기 (병행수입의 경우 병행수입 여부로 대체 가능)','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(40,5,'6',6,'제조국','','','origin',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(41,5,'7',7,'세탁방법 및 취급 시 주의사항','','','laundry',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(42,5,'8',8,'품질보증 기준','','','quality',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(43,5,'9',9,'A/S책임자와 전화번호','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(44,6,'1',1,'품명','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(45,6,'2',2,'KC 인증정보','「전기용품 및 생활용품 안전관리법」에 따른 공급자적합성확인대상제품에 한함','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(46,6,'3',3,'색상','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(47,6,'4',4,'구성품','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(48,6,'5',5,'주요 소재','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(49,6,'6',6,'제조자(수입자)','수입품의 경우 수입자를 함께 표기 (병행수입의 경우 병행수입 여부로 대체 가능) // 구성품 별 제조자가 다른 경우 각 구성품의 제조자, 수입자','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(50,6,'7',7,'제조국','구성품 별 제조국이 다른 경우 각 구성품의 제조국','','origin',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(51,6,'8',8,'크기','','','size',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(52,6,'9',9,'재공급(리퍼브) 가구의 경우 재공급 사유 및 하자부위에 관한 정보','예시) 견본주택 전시상품으로 식탁 상팜 등에 미세한 흠집 있음 (흠집 위치는 상품별로 상이하므로 구매하시려는 상품의 정확한 하자 부위를 확인하시려면 판매자(연락처 기재)에게 문의하시기 바랍니다.','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(53,6,'10',10,'배송ㆍ설치비용','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(54,6,'11',11,'품질보증기준','','','quality',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(55,6,'12',12,'A/S책임자와 전화번호','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(56,7,'1',1,'품명 및 모델명','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(57,7,'2',2,'KC 인증정보','「전기용품 및 생활용품 안전관리법」에 따른 안전인증 · 안전확인 · 공급자적합성확인 대상제품 및 「전파법」에 따른 적합인증 · 적합등록 대상 기자재에 한함','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(58,7,'3',3,'정격전압, 소비전력','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(59,7,'4',4,'에너지소비효율등급','「에너지이용 합리화법」에 따른 에너지 소비효율등급 표시대상 기자재에 한함','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(60,7,'5',5,'동일모델의 출시년월','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(61,7,'6',6,'제조자(수입자)','수입품의 경우 수입자를 함께 표기 (병행수입의 경우 병행수입 여부로 대체 가능)','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(62,7,'7',7,'제조국','','','origin',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(63,7,'8',8,'크기, 형태','','','size',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(64,7,'9',9,'화면사양','화면크기, 해상도, 화면비율 등','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(65,7,'10',10,'추가설치비용','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(66,7,'11',11,'품질보증기준','','','quality',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(67,7,'12',12,'A/S책임자와 전화번호','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(68,8,'1',1,'품명 및 모델명','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(69,8,'2',2,'KC 인증정보','「전기용품 및 생활용품 안전관리법」에 따른 안전인증 · 안전확인 · 공급자적합성확인 대상제품 및 「전파법」에 따른 적합인증 · 적합등록 대상 기자재에 한함','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(70,8,'3',3,'정격전압, 소비전력','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(71,8,'4',4,'에너지소비효율등급','「에너지이용 합리화법」에 따른 에너지 소비효율등급 표시대상 기자재에 한함','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(72,8,'5',5,'동일모델의 출시년월','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(73,8,'6',6,'제조자(수입자)','수입품의 경우 수입자를 함께 표기 (병행수입의 경우 병행수입 여부로 대체 가능)','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(74,8,'7',7,'제조국','','','origin',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(75,8,'8',8,'크기, 용량, 형태','','','size',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(76,8,'9',9,'추가설치비용','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(77,8,'10',10,'품질보증기준','','','quality',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(78,8,'11',11,'A/S책임자와 전화번호','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(79,9,'1',1,'품명 및 모델명','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(80,9,'2',2,'KC 인증정보','「전기용품 및 생활용품 안전관리법」에 따른 안전인증 · 안전확인 · 공급자적합성확인 대상제품 및 「전파법」에 따른 적합인증 · 적합등록 대상 기자재에 한함','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(81,9,'3',3,'정격전압, 소비전력','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(82,9,'4',4,'에너지소비효율등급','「에너지이용 합리화법」에 따른 에너지 소비효율등급 표시대상 기자재에 한함','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(83,9,'5',5,'동일모델의 출시년월','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(84,9,'6',6,'제조자(수입자)','수입품의 경우 수입자를 함께 표기 (병행수입의 경우 병행수입 여부로 대체 가능)','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(85,9,'7',7,'제조국','','','origin',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(86,9,'8',8,'크기, 형태 (실외기 포함)','','','size',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(87,9,'9',9,'냉난방면적','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(88,9,'10',10,'추가설치비용','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(89,9,'11',11,'품질보증기준','','','quality',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(90,9,'12',12,'A/S책임자와 전화번호','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(91,10,'1',1,'품명 및 모델명','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(92,10,'2',2,'KC 인증정보','「전기용품 및 생활용품 안전관리법」에 따른 안전인증 · 안전확인 · 공급자적합성확인 대상제품 및 「전파법」에 따른 적합인증 · 적합등록 대상 기자재에 한함','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(93,10,'3',3,'정격전압, 소비전력','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(94,10,'4',4,'에너지소비효율등급','「에너지이용 합리화법」에 따른 에너지 소비효율등급 표시대상 기자재에 한함','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(95,10,'5',5,'동일모델의 출시년월','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(96,10,'6',6,'제조자(수입자)','수입품의 경우 수입자를 함께 표기 (병행수입의 경우 병행수입 여부로 대체 가능)','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(97,10,'7',7,'제조국','','','origin',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(98,10,'8',8,'크기, 무게','무게는 노트북 등 휴대형 기기에 한함','','size',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(99,10,'9',9,'주요 사양','컴퓨터와 노트북의 경우 성능, 용량, 운영체제 포함여부 등 / 프린터의 경우 인쇄 속도 등)','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(100,10,'10',10,'품질보증기준','','','quality',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(101,10,'11',11,'A/S책임자와 전화번호','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(102,11,'1',1,'품명 및 모델명','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(103,11,'2',2,'KC 인증정보','「전기용품 및 생활용품 안전관리법」에 따른 안전인증 · 안전확인 · 공급자적합성확인 대상제품 및 「전파법」에 따른 적합인증 · 적합등록 대상 기자재에 한함','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(104,11,'3',3,'동일모델의 출시년월','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(105,11,'4',4,'제조자(수입자)','수입품의 경우 수입자를 함께 표기 (병행수입의 경우 병행수입 여부로 대체 가능)','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(106,11,'5',5,'제조국','','','origin',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(107,11,'6',6,'크기, 무게','','','size',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(108,11,'7',7,'주요 사양','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(109,11,'8',8,'품질보증기준','','','quality',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(110,11,'9',9,'A/S책임자와 전화번호','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(111,12,'1',1,'품명 및 모델명','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(112,12,'2',2,'KC 인증정보','「전기용품 및 생활용품 안전관리법」에 따른 안전인증 · 안전확인 · 공급자적합성확인 대상제품 및 「전파법」에 따른 적합인증 · 적합등록 대상 기자재에 한함','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(113,12,'3',3,'정격전압, 소비전력','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(114,12,'4',4,'동일모델의 출시년월','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(115,12,'5',5,'제조자(수입자)','수입품의 경우 수입자를 함께 표기 (병행수입의 경우 병행수입 여부로 대체 가능)','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(116,12,'6',6,'제조국','','','origin',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(117,12,'7',7,'크기, 무게','','','size',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(118,12,'8',8,'주요  사양','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(119,12,'9',9,'품질보증기준','','','quality',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(120,12,'10',10,'A/S책임자와 전화번호','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(121,13,'1',1,'품명 및 모델명','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(122,13,'2',2,'KC 인증정보','「전기용품 및 생활용품 안전관리법」에 따른 안전인증 · 안전확인 · 공급자적합성확인 대상제품 및 「전파법」에 따른 적합인증 · 적합등록 대상 기자재에 한함','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(123,13,'3',3,'동일모델의 출시년월','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(124,13,'4',4,'제조자(수입자)','수입품의 경우 수입자를 함께 표기 (병행수입의 경우 병행수입 여부로 대체 가능)','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(125,13,'5',5,'제조국','','','origin',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(126,13,'6',6,'크기, 무게','','','size',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(127,13,'7',7,'이동통신 가입조건','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(128,13,'8',8,'이동통신사','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(129,13,'9',9,'가입절차','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(130,13,'10',10,'소비자의 추가적인 부담사항','가입비, 유심카드 구입비 등 추가로 부담하여야 할 금액, 부가서비스, 의무사용기간, 위약금 등)','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(131,13,'11',11,'주요 사양','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(132,13,'12',12,'품질보증기준','','','quality',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(133,13,'13',13,'A/S책임자와 전화번호','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(134,14,'1',1,'품명 및 모델명','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(135,14,'2',2,'KC 인증정보','「전기용품 및 생활용품 안전관리법」에 따른 안전인증 · 안전확인 · 공급자적합성확인 대상제품 및 「전파법」에 따른 적합인증 · 적합등록 대상 기자재에 한함','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(136,14,'3',3,'정격전압, 소비전력','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(137,14,'4',4,'동일모델의 출시년월','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(138,14,'5',5,'제조자(수입자)','수입품의 경우 수입자를 함께 표기 (병행수입의 경우 병행수입 여부로 대체 가능)','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(139,14,'6',6,'제조국','','','origin',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(140,14,'7',7,'크기, 무게','','','size',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(141,14,'8',8,'주요 사양','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(142,14,'9',9,'맵 업데이트 비용 및 무상기간','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(143,14,'10',10,'품질보증기준','','','quality',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(144,14,'11',11,'A/S책임자와 전화번호','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(145,15,'1',1,'품명 및 모델명','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(146,15,'2',2,'동일모델의 출시년월','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(147,15,'3',3,'KC 인증정보','「자동차관리법」에 따른 부품자기인증 대상 자동차부품, 「전기용품 및 생활용품 안전관리법」에 따른 안전인증 · 안전확인 · 공급자적합성확인대상제품 및 「전파법」에 따른 적합인증 · 적합등록 대상 기자재에 한함','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(148,15,'4',4,'제조자(수입자)','수입품의 경우 수입자를 함께 표기 (병행수입의 경우 병행수입 여부로 대체 가능)','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(149,15,'5',5,'제조국','','','origin',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(150,15,'6',6,'크기','','','size',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(151,15,'7',7,'적용차종','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(152,15,'8',8,'제품사용으로 인한 위험 및 유의사항','연료절감장치에 한함','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(153,15,'9',9,'품질보증기준','','','quality',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(154,15,'10',10,'검사합격증 번호','「대기환경보전법」에 따른 첨가제 · 촉매제에 한함','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(155,15,'11',11,'A/S책임자와 전화번호','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(156,16,'1',1,'품명 및 모델명','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(157,16,'2',2,'허가 · 인증 · 신고 번호','「의료기기법」에 따른 허가 · 인증 · 신고 대상 의료기기에 한함','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(158,16,'3',3,'정격전압, 소비전력','전기용품에 한함','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(159,16,'4',4,'동일모델의 출시년월','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(160,16,'5',5,'제조자(수입자)','수입품의 경우 수입자를 함께 표기 (병행수입의 경우 병행수입 여부로 대체 가능)','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(161,16,'6',6,'제조국','','','origin',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(162,16,'7',7,'제품의 사용목적 및 사용방법','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(163,16,'8',8,'취급시 주의사항','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(164,16,'9',9,'품질보증기준','','','quality',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(165,16,'10',10,'A/S책임자와 전화번호','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(166,17,'1',1,'품명 및 모델명','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(167,17,'2',2,'재질','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(168,17,'3',3,'구성품','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(169,17,'4',4,'크기','','','size',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(170,17,'5',5,'동일모델의 출시년월','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(171,17,'6',6,'제조자(수입자)','수입품의 경우 수입자를 함께 표기 (병행수입의 경우 병행수입 여부로 대체 가능)','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(172,17,'7',7,'제조국','','','origin',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(173,17,'8',8,'「수입식품안전관리특별법」에 따른 수입기구 또는 용기 · 포장의 경우 \"수입식품안전관리특별법에 따른 수입신고를 필함\"의 문구','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(174,17,'9',9,'품질보증기준','','','quality',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(175,17,'10',10,'A/S책임자와 전화번호','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(176,18,'1',1,'내용물의 용량 또는 중량','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(177,18,'2',2,'제품 주요 사양','피부타입, 색상(호,번) 등','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(178,18,'3',3,'사용기한 또는 개봉 후 사용기간','개봉 후 사용기간을 기재할 경우에는 제조연월일을 병행 표기)','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(179,18,'4',4,'사용방법','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(180,18,'5',5,'화장품제조업자, 화장품책임판매업자 및 맞춤형화장품판매업자','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(181,18,'6',6,'제조국','','','origin',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(182,18,'7',7,'「화장품법」에 따라 기재 · 표시하여야 하는 모든 성분','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(183,18,'8',8,'「화장품법」에 따른 기능성 화장품(미백, 주름개선, 자외선 차단제품 등)의 경우 \"화장품법에 따른 기능성 화장품 심사(또는 보고)를 필함\" 의 문구','미백, 주름개선, 자외선차단 등','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(184,18,'9',9,'사용할 때의 주의사항','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(185,18,'10',10,'품질보증기준','','','quality',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(186,18,'11',11,'소비자상담관련 전화번호','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(187,19,'1',1,'소재 / 순도 / 밴드재질 (시계의 경우)','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(188,19,'2',2,'중량','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(189,19,'3',3,'제조자(수입자)','수입품의 경우 수입자를 함께 표기 (병행수입의 경우 병행수입 여부로 대체 가능)','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(190,19,'4',4,'제조국','원산지와 가공지 등이 다를 경우 함께 표기','','origin',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(191,19,'5',5,'치수','','','size',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(192,19,'6',6,'착용 시 주의사항','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(193,19,'7',7,'귀금속,보석류-등급','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(194,19,'8',8,'시계-기능,방수 등','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(195,19,'9',9,'보증서 제공여부','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(196,19,'10',10,'품질보증기준','','','quality',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(197,19,'11',11,'A/S책임자와 전화번호','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(198,20,'1',1,'품목 또는 명칭','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(199,20,'2',2,'포장단위별 내용물의 용량(중량), 수량, 크기','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(200,20,'3',3,'생산자','수입품의 경우 수입자를 함께 표기','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(201,20,'4',4,'원산지','「농수산물의 원산지 표시에 관한 법률」에 따른 원산지','','origin',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(202,20,'5',5,'제조연월일, 소비기한 또는 품질유지기한','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(203,20,'6',6,'세부 품목군별 표시사항','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(204,20,'7',7,'농수산물 - 「농수산물품질관리법」에 따른 유전자변형농수산물 표시, 지리적 표시','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(205,20,'8',8,'축산물 - 「축산법」에 따른 등급 표시(1++ 등급 국내산 쇠고기의 경우 「소ㆍ돼지 식육의 표시방법 및 부위 구분기준」에 따라 근내지방도 정보를 포함하여 표시), 「가축 및 축산물 이력관리에 관한 법률」에 따른 이력관리대상축산물 유무','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(206,20,'9',9,'수입 농수축산물 - \"수입식품안전관리특별법에 따른 수입신고를 필함\"의 문구','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(207,20,'10',10,'상품구성','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(208,20,'11',11,'보관방법 또는 취급방법','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(209,20,'12',12,'소비자 안전을 위한 주의사항','「식품 등의 표시ㆍ광고에 관한 법률 시행규칙」 제5조 및 [별표 2]에 따른 표시사항을 참조하여 식품 알레르기, 카페인 정보, 부정ᆞ불량식품 신고 안내 등의 주의사항 정보를 기재해주세요.','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(210,20,'13',13,'소비자상담 관련 전화번호','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(211,21,'1',1,'「식품 등의 표시 · 광고에 관한 법률」 및 「식품 등의 표시기준」에 따른 표시사항','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(212,21,'2',2,'제품명','식품등의 표시 · 광고에 관한 법률에 따른 표시사항','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(213,21,'3',3,'식품의 유형','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(214,21,'4',4,'생산자 및 소재지','수입품의 경우 생산자, 수입자 및 제조국','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(215,21,'5',5,'제조연월일, 소비기한 또는 품질유지기한','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(216,21,'6',6,'포장단위별 내용물의 용량(중량), 수량','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(217,21,'7',7,'원재료명 및 함량','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(218,21,'8',8,'영양성분','영양성분 표시대상 식품에 한함','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(219,21,'9',9,'유전자변형식품에 해당하는 경우의 표시','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(220,21,'10',10,'소비자안전을 위한 주의사항','「식품 등의 표시ㆍ광고에 관한 법률 시행규칙」 제5조 및 [별표 2]에 따른 표시사항을 말함','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(221,21,'11',11,'수입식품의 경우 \"수입식품안전관리특별법에 따른 수입신고를 필함\"의 문구','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(222,21,'12',12,'소비자상담 관련 전화번호','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(223,22,'1',1,'「식품 등의 표시 · 광고에 관한 법률」 및 「건강 기능식품의 표시기준」에 따른 표시사항','식품등의 표시 · 광고에 관한 법률에 따른 표시사항','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(224,22,'2',2,'제품명','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(225,22,'3',3,'제조업소의 명칭과 소재지','수입품의 경우 수입업소명, 제조업소명 및 수출국명','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(226,22,'4',4,'소비기한 및 보관방법','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(227,22,'5',5,'포장단위별 내용물의 용량(중량), 수량','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(228,22,'6',6,'원료명 및 함량','「농수산물의 원산지 표시에 관한 법률」에 따른 원산지 표시 포함','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(229,22,'7',7,'영양정보','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(230,22,'8',8,'기능정보','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(231,22,'9',9,'섭취량, 섭취방법 및 섭취 시 주의사항 및 부작용 가능성','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(232,22,'10',10,'질병의 예방 및 치료를 위한 의약품이 아니라는 내용의 표현','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(233,22,'11',11,'소비자 안전을 위한 주의사항','「식품 등의 표시ㆍ광고에 관한 법률 시행규칙」 제5조 및 [별표 2]에 따른 표시사항을 말함','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(234,22,'12',12,'「건강기능식품에 관한 법률」에 따른 유전자변형건강기능식품 표시','해당 경우에 한함','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(235,22,'13',13,'수입 건강기능식품의 경우 “수입식품안전관리특별법에 따른 수입신고를 필함”의 문구','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(236,22,'14',14,'소비자상담 관련 전화번호','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(237,23,'1',1,'품명 및 모델명','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(238,23,'2',2,'KC 인증정보','「어린이제품 안전 특별법」에 따른 안전인증ㆍ안전확인ㆍ공급자적합성확인대상어린이제품에 한함','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(239,23,'3',3,'크기, 중량','섬유제품 등의 경우 치수 정보로 대체 가능','','size',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(240,23,'4',4,'색상','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(241,23,'5',5,'재질','섬유의 경우 혼용률','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(242,23,'6',6,'사용연령 또는 권장사용연령','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(243,23,'7',7,'크기ㆍ체중의 한계','착용 또는 탑승용 어린이제품과 같이 크기ㆍ체중에 제한이 있는 품목의 경우 반드시 표시','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(244,23,'8',8,'동일모델의 출시년월','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(245,23,'9',9,'제조자(수입자)','수입품의 경우 수입자를 함께 표기 (병행수입의 경우 병행수입 여부로 대체 가능)','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(246,23,'10',10,'제조국','','','origin',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(247,23,'11',11,'취급방법 및 취급시 주의사항, 안전표시','주의, 경고 등','','laundry',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(248,23,'12',12,'품질보증기준','','','quality',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(249,23,'13',13,'A/S책임자와 전화번호','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(250,24,'1',1,'품명 및 모델명','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(251,24,'2',2,'크기','','','size',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(252,24,'3',3,'색상','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(253,24,'4',4,'재질','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(254,24,'5',5,'제품 구성','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(255,24,'6',6,'동일모델의 출시년월','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(256,24,'7',7,'제조자(수입자)','수입품의 경우 수입자를 함께 표기 (병행수입의 경우 병행수입 여부로 대체 가능)','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(257,24,'8',8,'제조국','','','origin',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(258,24,'9',9,'상품별 세부 사양','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(259,24,'10',10,'품질보증기준','','','quality',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(260,24,'11',11,'A/S책임자와 전화번호','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(261,25,'1',1,'품명 및 모델명','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(262,25,'2',2,'KC 인증정보','「전기용품 및 생활용품 안전관리법」에 따른 안전인증ㆍ안전확인ㆍ공급자적합성확인대상제품에 한함','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(263,25,'3',3,'크기, 중량','','','size',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(264,25,'4',4,'색상','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(265,25,'5',5,'재질','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(266,25,'6',6,'제품 구성','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(267,25,'7',7,'동일모델의 출시년월','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(268,25,'8',8,'제조자(수입자)','수입품의 경우 수입자를 함께 표기 (병행수입의 경우 병행수입 여부로 대체 가능)','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(269,25,'9',9,'제조국','','','origin',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(270,25,'10',10,'상품별 세부 사양','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(271,25,'11',11,'품질보증기준','','','quality',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(272,25,'12',12,'A/S책임자와 전화번호','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(273,26,'1',1,'도서명','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(274,26,'2',2,'저자, 출판사','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(275,26,'3',3,'크기','전자책의 경우 파일의 용량','','size',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(276,26,'4',4,'쪽수','전자책의 경우 제외','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(277,26,'5',5,'제품 구성','전집 또는 세트일 경우 낱권 구성, CD 등','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(278,26,'6',6,'발행일','「출판문화산업 진흥법」 제2조 및 제22조의 규정에 따른 것으로, 매 판을 처음 인쇄한 날을 말함. 단, 매 판을 구분할 때에 오탈자의 변경 등 경미한 변경에 따라 다시 인쇄하는 경우는 제외','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(279,26,'7',7,'목차 또는 책소개','아동용 학습교재의 경우 사용연령을 포함','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(280,27,'1',1,'국가 또는 지역명','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(281,27,'2',2,'숙소형태','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(282,27,'3',3,'등급, 객실타입','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(283,27,'4',4,'사용가능 인원, 인원 추가 시 비용','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(284,27,'5',5,'부대시설, 제공 서비스 (조식 등)','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(285,27,'6',6,'취소 규정 (환불, 위약금 등)','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(286,27,'7',7,'예약담당 연락처','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(287,28,'1',1,'여행사','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(288,28,'2',2,'이용항공편','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(289,28,'3',3,'여행기간 및 일정','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(290,28,'4',4,'총 예정 인원, 출발 가능 인원','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(291,28,'5',5,'숙박정보','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(292,28,'6',6,'여행상품 가격','유류할증료, 공항이용료, 전쟁보험료, 관광진흥개발기금, 운송요금, 숙박요금, 식사요금, 가이드 경비, 여행자보험료, 현지관광입장료 등 소비자가 특정 여행상품을 선택할 경우 부담해야 하는 모든 경비가 포함되어야 함. 다만, 가이드 경비를 현지에서 지불하여야 하는 경우 별도로 그 금액을 표시할 수 있으며, 현지에서 별도로 지불해야 한다는 점을 표시하여야 함','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(293,28,'7',7,'선택경비 유무 및 세부 내용','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(294,28,'8',8,'선택경비 유무 등','선택관광 경비 등 현지에서 개별 구매자의 필요나 선택에 의하여 지출하게 되는 경비가 있는지 여부 및 소비자의 선택에 따라 자유롭게 지불할 수 있다는 점을 함께 표시하여야 함','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(295,28,'9',9,'선택관광 및 대체일정','선택관광 경비의 금액 및 선택관광을 선택하지 않을 경우의 대체 일정을 함께 표시하여야 함','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(296,28,'10',10,'가이드 팁','가이드 팀에 대하여 기재할 경우에는 가이드 경비와 구별하여 자유롭게 지불여부를 결정할 수 있음을 표시하여야 함. 다만, 정액으로 지불을 권장하는 등 소비자가 필수적으로 지불하여야 하는 경비인 것처럼 오인하지 않도록 표시하여야 함','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(297,28,'11',11,'취소 규정 (환불, 위약금 등)','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(298,28,'12',12,'해외여행의 경우 외교부가 지정하는 여행경보단계','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(299,28,'13',13,'예약담당 연락처','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(300,29,'1',1,'요금조건, 왕복ㆍ편도 여부','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(301,29,'2',2,'유효기간','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(302,29,'3',3,'제한사항','출발일, 귀국일 변경가능 여부 등','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(303,29,'4',4,'티켓수령방법','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(304,29,'5',5,'좌석종류','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(305,29,'6',6,'가격에 포함되지 않은 내역 및 금액','유류할증료, 공항이용료 등','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(306,29,'7',7,'취소 규정 (환불, 위약금 등)','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(307,29,'8',8,'예약담당 연락처','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(308,30,'1',1,'차종','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(309,30,'2',2,'소유권 이전 조건','소유권이 이전되는 경우에 한함','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(310,30,'3',3,'추가 선택 시 비용','자차면책제도, 내비게이션 등','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(311,30,'4',4,'차량 반환 시 연료대금 정산 방법','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(312,30,'5',5,'차량의 고장ㆍ훼손 시 소비자 책임','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(313,30,'6',6,'예약 취소 또는 중도 해약 시 환불 기준','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(314,30,'7',7,'소비자상담 관련 전화번호','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(315,31,'1',1,'품명 및 모델명','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(316,31,'2',2,'소유권 이전 조건','소유권이 이전되는 경우에 한하며, 소유권 이전에 필요한 렌탈기간 또는 총 렌탈금액 등 요건을 구체적으로 명시','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(317,31,'3',3,'유지보수 조건','점검 · 필터교환 주기, 추가 비용 등','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(318,31,'4',4,'상품의 고장ㆍ분실ㆍ훼손 시 소비자 책임','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(319,31,'5',5,'중도 해약 시 환불 기준','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(320,31,'6',6,'제품 사양','용량, 소비전력 등','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(321,31,'7',7,'소비자상담 관련 전화번호','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(322,32,'1',1,'품명 및 모델명','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(323,32,'2',2,'소유권 이전 조건','소유권이 이전되는 경우에 한하며, 소유권 이전에 필요한 렌탈기간 또는 총 렌탈금액 등 요건을 구체적으로 명시','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(324,32,'3',3,'상품의 고장ㆍ분실ㆍ훼손 시 소비자 책임','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(325,32,'4',4,'중도 해약 시 환불 기준','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(326,32,'5',5,'소비자상담 관련 전화번호','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(327,33,'1',1,'제작자 또는 공급자','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(328,33,'2',2,'이용조건, 이용기간','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(329,33,'3',3,'상품 제공 방식','CD, 다운로드, 실시간 스트리밍 등','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(330,33,'4',4,'최소 시스템 사양, 필수 소프트웨어','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(331,33,'5',5,'청약철회 또는 계약의 해제ㆍ해지에 따른 효과','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(332,33,'6',6,'소비자상담 관련 전화번호','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(333,34,'1',1,'발행자','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(334,34,'2',2,'유효기간, 이용조건','유효기간 경과 시 보상 기준, 사용제한품목 및 기간 등','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(335,34,'3',3,'이용 가능 매장','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(336,34,'4',4,'잔액 환급 조건','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(337,34,'5',5,'소비자상담 관련 전화번호','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(338,35,'1',1,'발행자','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(339,35,'2',2,'유효기간, 이용조건','유효기간 경과시 보상 기준 포함','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(340,35,'3',3,'이용 가능 매장','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(341,35,'4',4,'환불조건 및 방법','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(342,35,'5',5,'소비자상담 관련 전화번호','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(343,36,'1',1,'주최 또는 기획','공연에 한함','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(344,36,'2',2,'주연','공연에 한함','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(345,36,'3',3,'관람등급','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(346,36,'4',4,'상영ㆍ공연시간','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(347,36,'5',5,'상영ㆍ공연장소','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(348,36,'6',6,'예매 취소 조건','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(349,36,'7',7,'취소ㆍ환불방법','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(350,36,'8',8,'소비자상담 관련 전화번호','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(351,37,'1',1,'화학제품안전법 및 「안전확인대상생활화학제품 지정 및 안전ㆍ표시기준」에 따른 표시사항','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(352,37,'2',2,'품목 및 제품명','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(353,37,'3',3,'용도(표백제의 경우 계열을 함께 표시) 및 제형','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(354,37,'4',4,'제조연월 및 유통기한','유통기한의 경우 해당 없는 제품은 생략 가능','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(355,37,'5',5,'중량 · 용량 · 매수 · 크기','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(356,37,'6',6,'효과 · 효능','승인대상 제품에 한함','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(357,37,'7',7,'수입자, 제조국 및 제조사','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(358,37,'8',8,'어린이 보호포장 대상 제품 유무','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(359,37,'9',9,'제품에 사용된 화학물질 명칭','「안전확인대상생활화학제품 지정 및 안전ㆍ표시기준」 [별표 6]에 따른 표시대상 화학물질로서 주요물질, 보존제, 알레르기반응가능물질 등의 명칭','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(360,37,'10',10,'사용상 주의사항','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(361,37,'11',11,'안전기준적합확인신고번호 또는 안전확인대상생활화학제품승인번호','화학제품안전법 시행일(경과조치 기간 포함) 이전에 생산ㆍ수입된 위해우려제품의 경우 종전 법에 따른 자가검사번호를 표시','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(362,37,'12',12,'소비자상담 관련 전화번호','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(363,38,'1',1,'「생활화학제품 및 살생물제의 안전관리에 관한 법률」 및 「살생물제품 표시에 관한 규정」에 따른 표시사항','생활화학제품 및 살생물제의안전관리에관한법률 및 아전확인대상생활화학제품지정및안전표시기준에 따른 표시사항','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(364,38,'2',2,'제품명 및 살생물제품유형','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(365,38,'3',3,'유통기한','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(366,38,'4',4,'중량 또는 용량 및 표준사용량','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(367,38,'5',5,'효과 · 효능','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(368,38,'6',6,'사용대상자 및 사용범위','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(369,38,'7',7,'수입자, 제조국 및 제조사','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(370,38,'8',8,'어린이 보호포장 대상 제품 유무','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(371,38,'9',9,'살생물물질, 나노물질, 기타 화학물질의 명칭','기타 화학물질 : 유해화학물질 또는 중점관리물질의 명칭','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(372,38,'10',10,'제품 유해성 · 위해성 표시','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(373,38,'11',11,'사용방법 및 사용상 주의사항','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(374,38,'12',12,'승인번호','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(375,38,'13',13,'소비자상담 관련 전화번호','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(376,39,'1',1,'서비스 제공 사업자','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(377,39,'2',2,'법에 의한 인증ㆍ허가 등을 받았음을 확인할 수 있는 경우 그에 대한 사항','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(378,39,'3',3,'이용조건','이용가능 기간 · 장소, 추가비용 등','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(379,39,'4',4,'취소ㆍ중도해약ㆍ해지 조건 및 환불기준','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(380,39,'5',5,'취소ㆍ환불방법','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(381,39,'6',6,'소비자상담 관련 전화번호','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(382,40,'1',1,'품명 및 모델명','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(383,40,'2',2,'법에 의한 인증ㆍ허가 등을 받았음을 확인할 수 있는 경우 그에 대한 사항','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(384,40,'3',3,'제조국 또는 원산지','','','origin',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(385,40,'4',4,'제조자(수입자)','수입품의 경우 수입자를 함께 표기 (병행수입의 경우 병행수입 여부로 대체 가능)','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(386,40,'5',5,'A/S책임자와 전화번호 또는 소비자상담 관련 전화번호','','','',1,'2023-10-06 08:38:23','2023-10-06 08:38:23');
/*!40000 ALTER TABLE `mm_gds_mandatory_template_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_gds_mandatory_templates`
--

DROP TABLE IF EXISTS `mm_gds_mandatory_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_gds_mandatory_templates` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '고유번호',
  `code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '상품고시 코드',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '상품고시명',
  `is_use` tinyint unsigned NOT NULL DEFAULT '1' COMMENT '사용 여부',
  `use_country_of_origin` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '식품 원산지 사용 여부 (1: 사용, 0: 미사용)',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '상품고시 설명',
  `sub_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '상품고시 부가설명',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '수정 일시',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '등록 일시',
  PRIMARY KEY (`id`),
  KEY `mm_gds_mandatory_templates_code_index` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='상품 고시 정보';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_gds_mandatory_templates`
--

LOCK TABLES `mm_gds_mandatory_templates` WRITE;
/*!40000 ALTER TABLE `mm_gds_mandatory_templates` DISABLE KEYS */;
INSERT INTO `mm_gds_mandatory_templates` VALUES (1,'1','의류',1,1,'','','2023-10-06 08:38:23','2023-10-06 08:38:23'),(2,'2','구두/신발',1,1,'','','2023-10-06 08:38:23','2023-10-06 08:38:23'),(3,'3','가방',1,1,'','','2023-10-06 08:38:23','2023-10-06 08:38:23'),(4,'4','패션잡화 (모자/벨트/액세서리 등)',1,1,'','','2023-10-06 08:38:23','2023-10-06 08:38:23'),(5,'5','침구류/커튼',1,1,'','','2023-10-06 08:38:23','2023-10-06 08:38:23'),(6,'6','가구 (침대/소파/싱크대/DIY제품 등)',1,1,'','','2023-10-06 08:38:23','2023-10-06 08:38:23'),(7,'7','영상가전(TV류)',1,1,'','','2023-10-06 08:38:23','2023-10-06 08:38:23'),(8,'8','가정용 전기제품 (냉장고/세탁기/식기세척기/전자레인지 등)',1,1,'','','2023-10-06 08:38:23','2023-10-06 08:38:23'),(9,'9','계절가전 (에어컨/온풍기 등)',1,1,'','','2023-10-06 08:38:23','2023-10-06 08:38:23'),(10,'10','사무용기기 (컴퓨터/노트북/프린터 등)',1,1,'','','2023-10-06 08:38:23','2023-10-06 08:38:23'),(11,'11','광학기기 (디지털카메라/캠코더 등)',1,1,'','','2023-10-06 08:38:23','2023-10-06 08:38:23'),(12,'12','소형전자(MP3/전자사전 등)',1,1,'','','2023-10-06 08:38:23','2023-10-06 08:38:23'),(13,'13','휴대형 통신기기 (휴대폰 / 태블릿 등)',1,1,'','','2023-10-06 08:38:23','2023-10-06 08:38:23'),(14,'14','내비게이션',1,1,'','','2023-10-06 08:38:23','2023-10-06 08:38:23'),(15,'15','자동차용품 (자동차부품/기타 자동차용품 등)',1,1,'','자동차용 광택 코딩제, 방향제, 워셔액, 부동액 등 생활화학제품 및 살생물제의 안전관리에 관한 법률에 따른 안전확인대상생활화학제품의 경우 (15)자동차용품이 아닌 (37) 생활화학제품에 해당하는 정보 기재','2023-10-06 08:38:23','2023-10-06 08:38:23'),(16,'16','의료기기',1,1,'','','2023-10-06 08:38:23','2023-10-06 08:38:23'),(17,'17','주방용품',1,1,'','','2023-10-06 08:38:23','2023-10-06 08:38:23'),(18,'18','화장품',1,1,'','','2023-10-06 08:38:23','2023-10-06 08:38:23'),(19,'19','귀금속/보석/시계류',1,1,'','','2023-10-06 08:38:23','2023-10-06 08:38:23'),(20,'20','농수축산물',1,1,'','','2023-10-06 08:38:23','2023-10-06 08:38:23'),(21,'21','가공식품',1,1,'','','2023-10-06 08:38:23','2023-10-06 08:38:23'),(22,'22','건강기능식품',1,1,'','','2023-10-06 08:38:23','2023-10-06 08:38:23'),(23,'23','어린이제품',1,1,'','','2023-10-06 08:38:23','2023-10-06 08:38:23'),(24,'24','악기',1,1,'','','2023-10-06 08:38:23','2023-10-06 08:38:23'),(25,'25','스포츠용품',1,1,'','','2023-10-06 08:38:23','2023-10-06 08:38:23'),(26,'26','서적',1,1,'','','2023-10-06 08:38:23','2023-10-06 08:38:23'),(27,'27','호텔 / 펜션 예약',1,1,'','','2023-10-06 08:38:23','2023-10-06 08:38:23'),(28,'28','여행패키지',1,1,'','','2023-10-06 08:38:23','2023-10-06 08:38:23'),(29,'29','항공권',1,1,'','','2023-10-06 08:38:23','2023-10-06 08:38:23'),(30,'30','자동차 대여 서비스 (렌터카)',1,1,'','','2023-10-06 08:38:23','2023-10-06 08:38:23'),(31,'31','물품대여 서비스 (정수기, 비데, 공기청정기 등)',1,1,'','','2023-10-06 08:38:23','2023-10-06 08:38:23'),(32,'32','물품대여 서비스 (서적, 유아용품, 행사용품 등)',1,1,'','','2023-10-06 08:38:23','2023-10-06 08:38:23'),(33,'33','디지털 콘텐츠 (음원, 게임, 인터넷강의 등)',1,1,'','','2023-10-06 08:38:23','2023-10-06 08:38:23'),(34,'34','상품권 / 쿠폰',1,1,'','','2023-10-06 08:38:23','2023-10-06 08:38:23'),(35,'35','모바일 쿠폰',1,1,'','','2023-10-06 08:38:23','2023-10-06 08:38:23'),(36,'36','영화ㆍ공연',1,1,'','','2023-10-06 08:38:23','2023-10-06 08:38:23'),(37,'37','생활화학제품',1,1,'「생활화학제품 및 살생물제의 안전관리에 관한 법률」(이하 ‘화학제품안전법’)에 따른 안전확인대상생활화학제품에 한함','','2023-10-06 08:38:23','2023-10-06 08:38:23'),(38,'38','살생물제품',1,1,'「생활화학제품 및 살생물제의 안전관리에 관한 법률」에 따른 살생물제품에 한함','','2023-10-06 08:38:23','2023-10-06 08:38:23'),(39,'39','기타 용역',1,1,'','','2023-10-06 08:38:23','2023-10-06 08:38:23'),(40,'40','기타 재화',1,1,'','','2023-10-06 08:38:23','2023-10-06 08:38:23');
/*!40000 ALTER TABLE `mm_gds_mandatory_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_gds_option_change_logs`
--

DROP TABLE IF EXISTS `mm_gds_option_change_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_gds_option_change_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '로그 고유키',
  `goods_id` bigint unsigned NOT NULL COMMENT '대상 상품 고유키(mm_gds_product.id)',
  `goods_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '로깅 시점의 대상 상품 상품명(mm_gds_product.name)',
  `target_option_id` bigint unsigned NOT NULL COMMENT '변경대상 옵션 고유키(mm_gds_options.id)',
  `target_option_label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '변경시점 대상 옵션상세의 라벨명(mm_gds_product_options_detail.label)',
  `change` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '변경내용',
  `before_value` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '변경전 (재고/옵션가)',
  `after_value` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '변경후 (재고/옵션가)',
  `modifier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '수정자 정보',
  `modifier_message` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '관리용 메세지',
  `modifier_ip_address` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '변경주체의 IP 주소',
  `created_at` datetime NOT NULL COMMENT '변경 일시( = 로그생성일시)',
  `scm_user_code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_display` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'scm 노출 여부',
  PRIMARY KEY (`id`),
  KEY `mm_gds_option_change_logs_goods_id_index` (`goods_id`),
  KEY `mm_gds_option_change_logs_goods_name_index` (`goods_name`),
  KEY `mm_gds_option_change_logs_created_at_index` (`created_at`),
  KEY `mm_gds_option_change_logs_scm_user_code_index` (`scm_user_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='상품 옵션 변경 로그 테이블';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_gds_option_change_logs`
--

LOCK TABLES `mm_gds_option_change_logs` WRITE;
/*!40000 ALTER TABLE `mm_gds_option_change_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_gds_option_change_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_gds_options`
--

DROP TABLE IF EXISTS `mm_gds_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_gds_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '고유번호',
  `goods_id` bigint unsigned NOT NULL COMMENT '상품 고유번호 (mm_gds_items.id)',
  `label` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '옵션 상세 라벨 : 특정 구분자로 1차/2차 옵션이 CONCAT 되어 저장됨',
  `stock` int unsigned NOT NULL DEFAULT '0' COMMENT '옵션편 재고',
  `extra_amount` int NOT NULL DEFAULT '0' COMMENT '옵션가 (기본 상품 금액에 추가될 금액)',
  `order_seq` int NOT NULL DEFAULT '0' COMMENT '노출 순서',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '등록 일시',
  `updated_at` datetime DEFAULT NULL COMMENT '수정 일시',
  `has_image` tinyint NOT NULL DEFAULT '0' COMMENT '이미지 존재여부',
  `has_color` tinyint NOT NULL DEFAULT '0' COMMENT '색상코드 사용여부',
  `rgb_code` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '색상코드(RGB)',
  `is_display` tinyint(1) NOT NULL DEFAULT '1' COMMENT '노출 여부',
  `partnershop_option_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '제휴사 옵션코드',
  `vender_option_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '마이그레이션용 기존 옵션코드',
  PRIMARY KEY (`id`),
  KEY `mm_gds_options_goods_id_index` (`goods_id`),
  KEY `mm_gds_options_stock_index` (`stock`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='상품 옵션상세정보';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_gds_options`
--

LOCK TABLES `mm_gds_options` WRITE;
/*!40000 ALTER TABLE `mm_gds_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_gds_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_gds_origins`
--

DROP TABLE IF EXISTS `mm_gds_origins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_gds_origins` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '원산지명',
  `parent_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '상위 원산지 고유값',
  `full_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '원산지 전체 경로',
  `depth` tinyint(1) NOT NULL COMMENT '원산지 깊이',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=547 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_gds_origins`
--

LOCK TABLES `mm_gds_origins` WRITE;
/*!40000 ALTER TABLE `mm_gds_origins` DISABLE KEYS */;
INSERT INTO `mm_gds_origins` VALUES (1,'국산',NULL,'국산',1),(2,'강원도','1','국산 > 강원도',2),(3,'강릉시','2','국산 > 강원도 > 강릉시',3),(4,'고성군','2','국산 > 강원도 > 고성군',3),(5,'동해시','2','국산 > 강원도 > 동해시',3),(6,'삼척시','2','국산 > 강원도 > 삼척시',3),(7,'속초시','2','국산 > 강원도 > 속초시',3),(8,'양구군','2','국산 > 강원도 > 양구군',3),(9,'양양군 ','2','국산 > 강원도 > 양양군 ',3),(10,'영월군','2','국산 > 강원도 > 영월군',3),(11,'원주시','2','국산 > 강원도 > 원주시',3),(12,'인제군','2','국산 > 강원도 > 인제군',3),(13,'정선군','2','국산 > 강원도 > 정선군',3),(14,'철원군','2','국산 > 강원도 > 철원군',3),(15,'춘천시','2','국산 > 강원도 > 춘천시',3),(16,'태백시','2','국산 > 강원도 > 태백시',3),(17,'평창군','2','국산 > 강원도 > 평창군',3),(18,'홍천군','2','국산 > 강원도 > 홍천군',3),(19,'화천군','2','국산 > 강원도 > 화천군',3),(20,'횡성군','2','국산 > 강원도 > 횡성군',3),(21,'경기도','1','국산 > 경기도',2),(22,'가평군','21','국산 > 경기도 > 가평군',3),(23,'고양시','21','국산 > 경기도 > 고양시',3),(24,'고양시 덕양구','21','국산 > 경기도 > 고양시 덕양구',3),(25,'고양시 일산동구','21','국산 > 경기도 > 고양시 일산동구',3),(26,'고양시 일산서구','21','국산 > 경기도 > 고양시 일산서구',3),(27,'과천시','21','국산 > 경기도 > 과천시',3),(28,'광명시','21','국산 > 경기도 > 광명시',3),(29,'광주시','21','국산 > 경기도 > 광주시',3),(30,'구리시','21','국산 > 경기도 > 구리시',3),(31,'군포시','21','국산 > 경기도 > 군포시',3),(32,'김포시','21','국산 > 경기도 > 김포시',3),(33,'남양주시','21','국산 > 경기도 > 남양주시',3),(34,'동두천시','21','국산 > 경기도 > 동두천시',3),(35,'부천시','21','국산 > 경기도 > 부천시',3),(36,'부천시 소사구','21','국산 > 경기도 > 부천시 소사구',3),(37,'부천시 오정구','21','국산 > 경기도 > 부천시 오정구',3),(38,'부천시 원미구','21','국산 > 경기도 > 부천시 원미구',3),(39,'성남시','21','국산 > 경기도 > 성남시',3),(40,'성남시 분당구','21','국산 > 경기도 > 성남시 분당구',3),(41,'성남시 수정구','21','국산 > 경기도 > 성남시 수정구',3),(42,'성남시 중원구','21','국산 > 경기도 > 성남시 중원구',3),(43,'수원시','21','국산 > 경기도 > 수원시',3),(44,'수원시 권선구','21','국산 > 경기도 > 수원시 권선구',3),(45,'수원시 영통구','21','국산 > 경기도 > 수원시 영통구',3),(46,'수원시 장안구','21','국산 > 경기도 > 수원시 장안구',3),(47,'수원시 팔달구','21','국산 > 경기도 > 수원시 팔달구',3),(48,'시흥시','21','국산 > 경기도 > 시흥시',3),(49,'안산시','21','국산 > 경기도 > 안산시',3),(50,'안산시 단원구','21','국산 > 경기도 > 안산시 단원구',3),(51,'안산시 상록구','21','국산 > 경기도 > 안산시 상록구',3),(52,'안성시','21','국산 > 경기도 > 안성시',3),(53,'안양시','21','국산 > 경기도 > 안양시',3),(54,'안양시 동안구','21','국산 > 경기도 > 안양시 동안구',3),(55,'안양시 만안구','21','국산 > 경기도 > 안양시 만안구',3),(56,'양주시','21','국산 > 경기도 > 양주시',3),(57,'양평군','21','국산 > 경기도 > 양평군',3),(58,'여주시','21','국산 > 경기도 > 여주시',3),(59,'연천군','21','국산 > 경기도 > 연천군',3),(60,'오산시','21','국산 > 경기도 > 오산시',3),(61,'용인시','21','국산 > 경기도 > 용인시',3),(62,'용인시 기흥구','21','국산 > 경기도 > 용인시 기흥구',3),(63,'용인시 수지구','21','국산 > 경기도 > 용인시 수지구',3),(64,'용인시 처인구','21','국산 > 경기도 > 용인시 처인구',3),(65,'의왕시','21','국산 > 경기도 > 의왕시',3),(66,'의정부시','21','국산 > 경기도 > 의정부시',3),(67,'이천시','21','국산 > 경기도 > 이천시',3),(68,'파주시','21','국산 > 경기도 > 파주시',3),(69,'평택시','21','국산 > 경기도 > 평택시',3),(70,'포천시','21','국산 > 경기도 > 포천시',3),(71,'하남시','21','국산 > 경기도 > 하남시',3),(72,'화성시','21','국산 > 경기도 > 화성시',3),(73,'경상남도','1','국산 > 경상남도',2),(74,'거제시','73','국산 > 경상남도 > 거제시',3),(75,'거창군','73','국산 > 경상남도 > 거창군',3),(76,'고성군','73','국산 > 경상남도 > 고성군',3),(77,'김해시','73','국산 > 경상남도 > 김해시',3),(78,'남해군','73','국산 > 경상남도 > 남해군',3),(79,'마산시','73','국산 > 경상남도 > 마산시',3),(80,'밀양시','73','국산 > 경상남도 > 밀양시',3),(81,'사천시','73','국산 > 경상남도 > 사천시',3),(82,'산청군','73','국산 > 경상남도 > 산청군',3),(83,'양산시','73','국산 > 경상남도 > 양산시',3),(84,'의령군','73','국산 > 경상남도 > 의령군',3),(85,'진주시','73','국산 > 경상남도 > 진주시',3),(86,'창녕군','73','국산 > 경상남도 > 창녕군',3),(87,'창원시','73','국산 > 경상남도 > 창원시',3),(88,'창원시 마산합포구','73','국산 > 경상남도 > 창원시 마산합포구',3),(89,'창원시 마산회원구','73','국산 > 경상남도 > 창원시 마산회원구',3),(90,'창원시 성산구','73','국산 > 경상남도 > 창원시 성산구',3),(91,'창원시 의창구','73','국산 > 경상남도 > 창원시 의창구',3),(92,'창원시 진해구','73','국산 > 경상남도 > 창원시 진해구',3),(93,'통영시','73','국산 > 경상남도 > 통영시',3),(94,'하동군','73','국산 > 경상남도 > 하동군',3),(95,'함안군','73','국산 > 경상남도 > 함안군',3),(96,'함양군','73','국산 > 경상남도 > 함양군',3),(97,'합천군','73','국산 > 경상남도 > 합천군',3),(98,'경상북도','1','국산 > 경상북도',2),(99,'경산시','98','국산 > 경상북도 > 경산시',3),(100,'경주시','98','국산 > 경상북도 > 경주시',3),(101,'고령군','98','국산 > 경상북도 > 고령군',3),(102,'구미시','98','국산 > 경상북도 > 구미시',3),(103,'군위군','98','국산 > 경상북도 > 군위군',3),(104,'김천시','98','국산 > 경상북도 > 김천시',3),(105,'문경시','98','국산 > 경상북도 > 문경시',3),(106,'봉화군','98','국산 > 경상북도 > 봉화군',3),(107,'상주시','98','국산 > 경상북도 > 상주시',3),(108,'성주군','98','국산 > 경상북도 > 성주군',3),(109,'안동시','98','국산 > 경상북도 > 안동시',3),(110,'영덕군','98','국산 > 경상북도 > 영덕군',3),(111,'영양군','98','국산 > 경상북도 > 영양군',3),(112,'영주시','98','국산 > 경상북도 > 영주시',3),(113,'영천시','98','국산 > 경상북도 > 영천시',3),(114,'예천군','98','국산 > 경상북도 > 예천군',3),(115,'울릉군','98','국산 > 경상북도 > 울릉군',3),(116,'울진군','98','국산 > 경상북도 > 울진군',3),(117,'의성군','98','국산 > 경상북도 > 의성군',3),(118,'청도군','98','국산 > 경상북도 > 청도군',3),(119,'청송군','98','국산 > 경상북도 > 청송군',3),(120,'칠곡군','98','국산 > 경상북도 > 칠곡군',3),(121,'포항시','98','국산 > 경상북도 > 포항시',3),(122,'포항시 남구','98','국산 > 경상북도 > 포항시 남구',3),(123,'포항시 북구','98','국산 > 경상북도 > 포항시 북구',3),(124,'광주광역시','1','국산 > 광주광역시',2),(125,'광산구','124','국산 > 광주광역시 > 광산구',3),(126,'남구','124','국산 > 광주광역시 > 남구',3),(127,'동구','124','국산 > 광주광역시 > 동구',3),(128,'북구','124','국산 > 광주광역시 > 북구',3),(129,'서구','124','국산 > 광주광역시 > 서구',3),(130,'대구광역시','1','국산 > 대구광역시',2),(131,'남구','130','국산 > 대구광역시 > 남구',3),(132,'달서구','130','국산 > 대구광역시 > 달서구',3),(133,'달성군','130','국산 > 대구광역시 > 달성군',3),(134,'동구','130','국산 > 대구광역시 > 동구',3),(135,'북구','130','국산 > 대구광역시 > 북구',3),(136,'서구','130','국산 > 대구광역시 > 서구',3),(137,'수성구','130','국산 > 대구광역시 > 수성구',3),(138,'중구','130','국산 > 대구광역시 > 중구',3),(139,'대전광역시','1','국산 > 대전광역시',2),(140,'대덕구','139','국산 > 대전광역시 > 대덕구',3),(141,'동구','139','국산 > 대전광역시 > 동구',3),(142,'서구','139','국산 > 대전광역시 > 서구',3),(143,'유성구','139','국산 > 대전광역시 > 유성구',3),(144,'중구','139','국산 > 대전광역시 > 중구',3),(145,'부산광역시','1','국산 > 부산광역시',2),(146,'강서구','145','국산 > 부산광역시 > 강서구',3),(147,'금정구','145','국산 > 부산광역시 > 금정구',3),(148,'기장군','145','국산 > 부산광역시 > 기장군',3),(149,'남구','145','국산 > 부산광역시 > 남구',3),(150,'동구','145','국산 > 부산광역시 > 동구',3),(151,'동래구','145','국산 > 부산광역시 > 동래구',3),(152,'부산진구','145','국산 > 부산광역시 > 부산진구',3),(153,'북구','145','국산 > 부산광역시 > 북구',3),(154,'사상구','145','국산 > 부산광역시 > 사상구',3),(155,'사하구','145','국산 > 부산광역시 > 사하구',3),(156,'서구 ','145','국산 > 부산광역시 > 서구 ',3),(157,'수영구','145','국산 > 부산광역시 > 수영구',3),(158,'연제구','145','국산 > 부산광역시 > 연제구',3),(159,'영도구','145','국산 > 부산광역시 > 영도구',3),(160,'중구','145','국산 > 부산광역시 > 중구',3),(161,'해운대구','145','국산 > 부산광역시 > 해운대구',3),(162,'서울특별시','1','국산 > 서울특별시',2),(163,'강남구','162','국산 > 서울특별시 > 강남구',3),(164,'강동구','162','국산 > 서울특별시 > 강동구',3),(165,'강북구','162','국산 > 서울특별시 > 강북구',3),(166,'강서구','162','국산 > 서울특별시 > 강서구',3),(167,'관악구','162','국산 > 서울특별시 > 관악구',3),(168,'광진구','162','국산 > 서울특별시 > 광진구',3),(169,'구로구','162','국산 > 서울특별시 > 구로구',3),(170,'금천구','162','국산 > 서울특별시 > 금천구',3),(171,'노원구','162','국산 > 서울특별시 > 노원구',3),(172,'도봉구','162','국산 > 서울특별시 > 도봉구',3),(173,'동대문구','162','국산 > 서울특별시 > 동대문구',3),(174,'동작구','162','국산 > 서울특별시 > 동작구',3),(175,'마포구','162','국산 > 서울특별시 > 마포구',3),(176,'서대문구','162','국산 > 서울특별시 > 서대문구',3),(177,'서초구','162','국산 > 서울특별시 > 서초구',3),(178,'성동구','162','국산 > 서울특별시 > 성동구',3),(179,'성북구','162','국산 > 서울특별시 > 성북구',3),(180,'송파구','162','국산 > 서울특별시 > 송파구',3),(181,'양천구','162','국산 > 서울특별시 > 양천구',3),(182,'영등포구','162','국산 > 서울특별시 > 영등포구',3),(183,'용산구','162','국산 > 서울특별시 > 용산구',3),(184,'은평구','162','국산 > 서울특별시 > 은평구',3),(185,'종로구','162','국산 > 서울특별시 > 종로구',3),(186,'중구','162','국산 > 서울특별시 > 중구',3),(187,'중랑구','162','국산 > 서울특별시 > 중랑구',3),(188,'세종특별자치시','1','국산 > 세종특별자치시',2),(189,'','188','국산 > 세종특별자치시 > ',3),(190,'울산광역시','1','국산 > 울산광역시',2),(191,'남구','190','국산 > 울산광역시 > 남구',3),(192,'동구','190','국산 > 울산광역시 > 동구',3),(193,'북구','190','국산 > 울산광역시 > 북구',3),(194,'울주군','190','국산 > 울산광역시 > 울주군',3),(195,'중구','190','국산 > 울산광역시 > 중구',3),(196,'인천광역시','1','국산 > 인천광역시',2),(197,'강화군','196','국산 > 인천광역시 > 강화군',3),(198,'계양구','196','국산 > 인천광역시 > 계양구',3),(199,'남구','196','국산 > 인천광역시 > 남구',3),(200,'남동구','196','국산 > 인천광역시 > 남동구',3),(201,'동구','196','국산 > 인천광역시 > 동구',3),(202,'부평구','196','국산 > 인천광역시 > 부평구',3),(203,'서구','196','국산 > 인천광역시 > 서구',3),(204,'연수구','196','국산 > 인천광역시 > 연수구',3),(205,'옹진군','196','국산 > 인천광역시 > 옹진군',3),(206,'중구','196','국산 > 인천광역시 > 중구',3),(207,'전라남도','1','국산 > 전라남도',2),(208,'강진군','207','국산 > 전라남도 > 강진군',3),(209,'고흥군','207','국산 > 전라남도 > 고흥군',3),(210,'곡성군','207','국산 > 전라남도 > 곡성군',3),(211,'광양시','207','국산 > 전라남도 > 광양시',3),(212,'구례군','207','국산 > 전라남도 > 구례군',3),(213,'나주시','207','국산 > 전라남도 > 나주시',3),(214,'담양군','207','국산 > 전라남도 > 담양군',3),(215,'목포시','207','국산 > 전라남도 > 목포시',3),(216,'무안군','207','국산 > 전라남도 > 무안군',3),(217,'보성군','207','국산 > 전라남도 > 보성군',3),(218,'순천시','207','국산 > 전라남도 > 순천시',3),(219,'신안군','207','국산 > 전라남도 > 신안군',3),(220,'여수시','207','국산 > 전라남도 > 여수시',3),(221,'영광군','207','국산 > 전라남도 > 영광군',3),(222,'영암군','207','국산 > 전라남도 > 영암군',3),(223,'완도군','207','국산 > 전라남도 > 완도군',3),(224,'장성군','207','국산 > 전라남도 > 장성군',3),(225,'장흥군','207','국산 > 전라남도 > 장흥군',3),(226,'진도군','207','국산 > 전라남도 > 진도군',3),(227,'함평군','207','국산 > 전라남도 > 함평군',3),(228,'해남군','207','국산 > 전라남도 > 해남군',3),(229,'화순군','207','국산 > 전라남도 > 화순군',3),(230,'전라북도','1','국산 > 전라북도',2),(231,'고창군','230','국산 > 전라북도 > 고창군',3),(232,'군산시','230','국산 > 전라북도 > 군산시',3),(233,'김제시','230','국산 > 전라북도 > 김제시',3),(234,'남원시','230','국산 > 전라북도 > 남원시',3),(235,'무주군','230','국산 > 전라북도 > 무주군',3),(236,'부안군','230','국산 > 전라북도 > 부안군',3),(237,'순창군','230','국산 > 전라북도 > 순창군',3),(238,'완주군','230','국산 > 전라북도 > 완주군',3),(239,'익산시','230','국산 > 전라북도 > 익산시',3),(240,'임실군','230','국산 > 전라북도 > 임실군',3),(241,'장수군','230','국산 > 전라북도 > 장수군',3),(242,'전주시','230','국산 > 전라북도 > 전주시',3),(243,'전주시 덕진구','230','국산 > 전라북도 > 전주시 덕진구',3),(244,'전주시 완산구','230','국산 > 전라북도 > 전주시 완산구',3),(245,'정읍시','230','국산 > 전라북도 > 정읍시',3),(246,'진안군','230','국산 > 전라북도 > 진안군',3),(247,'제주특별자치도','1','국산 > 제주특별자치도',2),(248,'서귀포시','247','국산 > 제주특별자치도 > 서귀포시',3),(249,'제주시','247','국산 > 제주특별자치도 > 제주시',3),(250,'충청남도','1','국산 > 충청남도',2),(251,'계룡시','250','국산 > 충청남도 > 계룡시',3),(252,'공주시','250','국산 > 충청남도 > 공주시',3),(253,'금산군','250','국산 > 충청남도 > 금산군',3),(254,'논산시','250','국산 > 충청남도 > 논산시',3),(255,'당진시','250','국산 > 충청남도 > 당진시',3),(256,'보령시','250','국산 > 충청남도 > 보령시',3),(257,'부여군','250','국산 > 충청남도 > 부여군',3),(258,'서산시','250','국산 > 충청남도 > 서산시',3),(259,'서천군','250','국산 > 충청남도 > 서천군',3),(260,'아산시','250','국산 > 충청남도 > 아산시',3),(261,'예산군','250','국산 > 충청남도 > 예산군',3),(262,'천안시','250','국산 > 충청남도 > 천안시',3),(263,'천안시 동남구','250','국산 > 충청남도 > 천안시 동남구',3),(264,'천안시 서북구','250','국산 > 충청남도 > 천안시 서북구',3),(265,'청양군','250','국산 > 충청남도 > 청양군',3),(266,'태안군','250','국산 > 충청남도 > 태안군',3),(267,'홍성군','250','국산 > 충청남도 > 홍성군',3),(268,'충청북도','1','국산 > 충청북도',2),(269,'괴산군','268','국산 > 충청북도 > 괴산군',3),(270,'단양군','268','국산 > 충청북도 > 단양군',3),(271,'보은군','268','국산 > 충청북도 > 보은군',3),(272,'영동군','268','국산 > 충청북도 > 영동군',3),(273,'옥천군','268','국산 > 충청북도 > 옥천군',3),(274,'음성군','268','국산 > 충청북도 > 음성군',3),(275,'제천시','268','국산 > 충청북도 > 제천시',3),(276,'증평군','268','국산 > 충청북도 > 증평군',3),(277,'진천군','268','국산 > 충청북도 > 진천군',3),(278,'청주시','268','국산 > 충청북도 > 청주시',3),(279,'청주시 상당구','268','국산 > 충청북도 > 청주시 상당구',3),(280,'청주시 서원구','268','국산 > 충청북도 > 청주시 서원구',3),(281,'청주시 흥덕구','268','국산 > 충청북도 > 청주시 흥덕구',3),(282,'충주시','268','국산 > 충청북도 > 충주시',3),(283,'수입산',NULL,'수입산',1),(284,'라틴아메리카(남미)','283','수입산 > 라틴아메리카(남미)',2),(285,'가이아니','284','수입산 > 라틴아메리카(남미) > 가이아니',3),(286,'과델루페','284','수입산 > 라틴아메리카(남미) > 과델루페',3),(287,'과테말라','284','수입산 > 라틴아메리카(남미) > 과테말라',3),(288,'남조지아사우스샌드위치제도','284','수입산 > 라틴아메리카(남미) > 남조지아사우스샌드위치제도',3),(289,'네덜란드령 안틸레스','284','수입산 > 라틴아메리카(남미) > 네덜란드령 안틸레스',3),(290,'도미니카','284','수입산 > 라틴아메리카(남미) > 도미니카',3),(291,'도미니카공화국','284','수입산 > 라틴아메리카(남미) > 도미니카공화국',3),(292,'도미니카연방','284','수입산 > 라틴아메리카(남미) > 도미니카연방',3),(293,'말티니크','284','수입산 > 라틴아메리카(남미) > 말티니크',3),(294,'멕시코','284','수입산 > 라틴아메리카(남미) > 멕시코',3),(295,'몬체라트','284','수입산 > 라틴아메리카(남미) > 몬체라트',3),(296,'바바도스','284','수입산 > 라틴아메리카(남미) > 바바도스',3),(297,'바하마','284','수입산 > 라틴아메리카(남미) > 바하마',3),(298,'버뮤다','284','수입산 > 라틴아메리카(남미) > 버뮤다',3),(299,'베네수엘라','284','수입산 > 라틴아메리카(남미) > 베네수엘라',3),(300,'벨리제','284','수입산 > 라틴아메리카(남미) > 벨리제',3),(301,'볼리비아','284','수입산 > 라틴아메리카(남미) > 볼리비아',3),(302,'브라질','284','수입산 > 라틴아메리카(남미) > 브라질',3),(303,'브리티시 버진아일랜드','284','수입산 > 라틴아메리카(남미) > 브리티시 버진아일랜드',3),(304,'세인트루시아','284','수입산 > 라틴아메리카(남미) > 세인트루시아',3),(305,'세인트빈센트그레나딘','284','수입산 > 라틴아메리카(남미) > 세인트빈센트그레나딘',3),(306,'세인트키츠네비스','284','수입산 > 라틴아메리카(남미) > 세인트키츠네비스',3),(307,'수리남','284','수입산 > 라틴아메리카(남미) > 수리남',3),(308,'아루바','284','수입산 > 라틴아메리카(남미) > 아루바',3),(309,'아르헨티나','284','수입산 > 라틴아메리카(남미) > 아르헨티나',3),(310,'아센션 이스난드','284','수입산 > 라틴아메리카(남미) > 아센션 이스난드',3),(311,'안티구아','284','수입산 > 라틴아메리카(남미) > 안티구아',3),(312,'앙길라','284','수입산 > 라틴아메리카(남미) > 앙길라',3),(313,'앤티가바부다','284','수입산 > 라틴아메리카(남미) > 앤티가바부다',3),(314,'에콰도르','284','수입산 > 라틴아메리카(남미) > 에콰도르',3),(315,'엘살바도르','284','수입산 > 라틴아메리카(남미) > 엘살바도르',3),(316,'온두라스','284','수입산 > 라틴아메리카(남미) > 온두라스',3),(317,'우루과이','284','수입산 > 라틴아메리카(남미) > 우루과이',3),(318,'자메이카','284','수입산 > 라틴아메리카(남미) > 자메이카',3),(319,'칠레','284','수입산 > 라틴아메리카(남미) > 칠레',3),(320,'케이만군도','284','수입산 > 라틴아메리카(남미) > 케이만군도',3),(321,'코스타리카','284','수입산 > 라틴아메리카(남미) > 코스타리카',3),(322,'콜롬비아','284','수입산 > 라틴아메리카(남미) > 콜롬비아',3),(323,'쿠바','284','수입산 > 라틴아메리카(남미) > 쿠바',3),(324,'트리니다드토바고','284','수입산 > 라틴아메리카(남미) > 트리니다드토바고',3),(325,'파나마','284','수입산 > 라틴아메리카(남미) > 파나마',3),(326,'파라과이','284','수입산 > 라틴아메리카(남미) > 파라과이',3),(327,'페루','284','수입산 > 라틴아메리카(남미) > 페루',3),(328,'포크랜드','284','수입산 > 라틴아메리카(남미) > 포크랜드',3),(329,'푸에토리코','284','수입산 > 라틴아메리카(남미) > 푸에토리코',3),(330,'프랑스령 기아나','284','수입산 > 라틴아메리카(남미) > 프랑스령 기아나',3),(331,'하이티','284','수입산 > 라틴아메리카(남미) > 하이티',3),(332,'북아메리카(북미)','283','수입산 > 북아메리카(북미)',2),(333,'괌','332','수입산 > 북아메리카(북미) > 괌',3),(334,'그레나다','332','수입산 > 북아메리카(북미) > 그레나다',3),(335,'그린란드','332','수입산 > 북아메리카(북미) > 그린란드',3),(336,'니카라과','332','수입산 > 북아메리카(북미) > 니카라과',3),(337,'미국','332','수입산 > 북아메리카(북미) > 미국',3),(338,'바베이도스','332','수입산 > 북아메리카(북미) > 바베이도스',3),(339,'세인트 피레 미켈론','332','수입산 > 북아메리카(북미) > 세인트 피레 미켈론',3),(340,'아이티','332','수입산 > 북아메리카(북미) > 아이티',3),(341,'유에스버진아일랜드','332','수입산 > 북아메리카(북미) > 유에스버진아일랜드',3),(342,'캐나다','332','수입산 > 북아메리카(북미) > 캐나다',3),(343,'아시아','283','수입산 > 아시아',2),(344,'그루지야','343','수입산 > 아시아 > 그루지야',3),(345,'네팔','343','수입산 > 아시아 > 네팔',3),(346,'대만','343','수입산 > 아시아 > 대만',3),(347,'동티모르','343','수입산 > 아시아 > 동티모르',3),(348,'라오스','343','수입산 > 아시아 > 라오스',3),(349,'레바논','343','수입산 > 아시아 > 레바논',3),(350,'마카오','343','수입산 > 아시아 > 마카오',3),(351,'말레이시아','343','수입산 > 아시아 > 말레이시아',3),(352,'몰디브','343','수입산 > 아시아 > 몰디브',3),(353,'몽골','343','수입산 > 아시아 > 몽골',3),(354,'미얀마','343','수입산 > 아시아 > 미얀마',3),(355,'바레인','343','수입산 > 아시아 > 바레인',3),(356,'방글라데시','343','수입산 > 아시아 > 방글라데시',3),(357,'베트남','343','수입산 > 아시아 > 베트남',3),(358,'부탄','343','수입산 > 아시아 > 부탄',3),(359,'북마리아나군도','343','수입산 > 아시아 > 북마리아나군도',3),(360,'북한','343','수입산 > 아시아 > 북한',3),(361,'브루나이','343','수입산 > 아시아 > 브루나이',3),(362,'사우디아라비아','343','수입산 > 아시아 > 사우디아라비아',3),(363,'스리랑카','343','수입산 > 아시아 > 스리랑카',3),(364,'시리아','343','수입산 > 아시아 > 시리아',3),(365,'싱가포르','343','수입산 > 아시아 > 싱가포르',3),(366,'아랍에미리트','343','수입산 > 아시아 > 아랍에미리트',3),(367,'아르메니아공화국','343','수입산 > 아시아 > 아르메니아공화국',3),(368,'아프가니스탄','343','수입산 > 아시아 > 아프가니스탄',3),(369,'영국령 인도양지역','343','수입산 > 아시아 > 영국령 인도양지역',3),(370,'예멘','343','수입산 > 아시아 > 예멘',3),(371,'오만','343','수입산 > 아시아 > 오만',3),(372,'요르단','343','수입산 > 아시아 > 요르단',3),(373,'우즈베키스탄','343','수입산 > 아시아 > 우즈베키스탄',3),(374,'이라크','343','수입산 > 아시아 > 이라크',3),(375,'이란','343','수입산 > 아시아 > 이란',3),(376,'이스라엘','343','수입산 > 아시아 > 이스라엘',3),(377,'인도','343','수입산 > 아시아 > 인도',3),(378,'인도네시아','343','수입산 > 아시아 > 인도네시아',3),(379,'일본','343','수입산 > 아시아 > 일본',3),(380,'중국','343','수입산 > 아시아 > 중국',3),(381,'카자흐스탄','343','수입산 > 아시아 > 카자흐스탄',3),(382,'카타르','343','수입산 > 아시아 > 카타르',3),(383,'캄보디아','343','수입산 > 아시아 > 캄보디아',3),(384,'쿠웨이트','343','수입산 > 아시아 > 쿠웨이트',3),(385,'키르기스스탄','343','수입산 > 아시아 > 키르기스스탄',3),(386,'타지키스탄','343','수입산 > 아시아 > 타지키스탄',3),(387,'태국','343','수입산 > 아시아 > 태국',3),(388,'투르크메니스탄','343','수입산 > 아시아 > 투르크메니스탄',3),(389,'티베트','343','수입산 > 아시아 > 티베트',3),(390,'파키스탄','343','수입산 > 아시아 > 파키스탄',3),(391,'필리핀','343','수입산 > 아시아 > 필리핀',3),(392,'홍콩','343','수입산 > 아시아 > 홍콩',3),(393,'아프리카','283','수입산 > 아프리카',2),(394,'가나','393','수입산 > 아프리카 > 가나',3),(395,'가봉','393','수입산 > 아프리카 > 가봉',3),(396,'감비아','393','수입산 > 아프리카 > 감비아',3),(397,'기니','393','수입산 > 아프리카 > 기니',3),(398,'기니비사우','393','수입산 > 아프리카 > 기니비사우',3),(399,'나미비아','393','수입산 > 아프리카 > 나미비아',3),(400,'나이지리아','393','수입산 > 아프리카 > 나이지리아',3),(401,'남아프리카공화국','393','수입산 > 아프리카 > 남아프리카공화국',3),(402,'니제르','393','수입산 > 아프리카 > 니제르',3),(403,'라이베리아','393','수입산 > 아프리카 > 라이베리아',3),(404,'레소토','393','수입산 > 아프리카 > 레소토',3),(405,'르완다','393','수입산 > 아프리카 > 르완다',3),(406,'리비아','393','수입산 > 아프리카 > 리비아',3),(407,'리유니온','393','수입산 > 아프리카 > 리유니온',3),(408,'마다가스카르','393','수입산 > 아프리카 > 마다가스카르',3),(409,'마요뜨','393','수입산 > 아프리카 > 마요뜨',3),(410,'말라위','393','수입산 > 아프리카 > 말라위',3),(411,'말리','393','수입산 > 아프리카 > 말리',3),(412,'모로코','393','수입산 > 아프리카 > 모로코',3),(413,'모리셔스','393','수입산 > 아프리카 > 모리셔스',3),(414,'모리타니','393','수입산 > 아프리카 > 모리타니',3),(415,'모잠비크','393','수입산 > 아프리카 > 모잠비크',3),(416,'베냉','393','수입산 > 아프리카 > 베냉',3),(417,'보츠와나','393','수입산 > 아프리카 > 보츠와나',3),(418,'부룬디','393','수입산 > 아프리카 > 부룬디',3),(419,'부르키나파소','393','수입산 > 아프리카 > 부르키나파소',3),(420,'사오토메프린시페','393','수입산 > 아프리카 > 사오토메프린시페',3),(421,'상투메프린시페','393','수입산 > 아프리카 > 상투메프린시페',3),(422,'서사하라','393','수입산 > 아프리카 > 서사하라',3),(423,'세네갈','393','수입산 > 아프리카 > 세네갈',3),(424,'세이셀','393','수입산 > 아프리카 > 세이셀',3),(425,'소말리아','393','수입산 > 아프리카 > 소말리아',3),(426,'수단','393','수입산 > 아프리카 > 수단',3),(427,'스와질랜드','393','수입산 > 아프리카 > 스와질랜드',3),(428,'시에라리온','393','수입산 > 아프리카 > 시에라리온',3),(429,'알제리','393','수입산 > 아프리카 > 알제리',3),(430,'앙골라','393','수입산 > 아프리카 > 앙골라',3),(431,'에리트레아','393','수입산 > 아프리카 > 에리트레아',3),(432,'에티오피아','393','수입산 > 아프리카 > 에티오피아',3),(433,'우간다','393','수입산 > 아프리카 > 우간다',3),(434,'이집트','393','수입산 > 아프리카 > 이집트',3),(435,'자이르','393','수입산 > 아프리카 > 자이르',3),(436,'잠비아','393','수입산 > 아프리카 > 잠비아',3),(437,'적도기니공화국','393','수입산 > 아프리카 > 적도기니공화국',3),(438,'중앙아프리카공화국','393','수입산 > 아프리카 > 중앙아프리카공화국',3),(439,'지부티','393','수입산 > 아프리카 > 지부티',3),(440,'짐바브웨','393','수입산 > 아프리카 > 짐바브웨',3),(441,'차드','393','수입산 > 아프리카 > 차드',3),(442,'카메룬','393','수입산 > 아프리카 > 카메룬',3),(443,'카보베르데','393','수입산 > 아프리카 > 카보베르데',3),(444,'케냐','393','수입산 > 아프리카 > 케냐',3),(445,'코모로','393','수입산 > 아프리카 > 코모로',3),(446,'코모로스','393','수입산 > 아프리카 > 코모로스',3),(447,'코트디브아르','393','수입산 > 아프리카 > 코트디브아르',3),(448,'콩고','393','수입산 > 아프리카 > 콩고',3),(449,'콩고민주공화국','393','수입산 > 아프리카 > 콩고민주공화국',3),(450,'탄자니아','393','수입산 > 아프리카 > 탄자니아',3),(451,'토고','393','수입산 > 아프리카 > 토고',3),(452,'튀니지','393','수입산 > 아프리카 > 튀니지',3),(453,'프랑스령 극남군도','393','수입산 > 아프리카 > 프랑스령 극남군도',3),(454,'오세아니아','283','수입산 > 오세아니아',2),(455,'나우루','454','수입산 > 오세아니아 > 나우루',3),(456,'노퍽아일랜드','454','수입산 > 오세아니아 > 노퍽아일랜드',3),(457,'뉴질랜드','454','수입산 > 오세아니아 > 뉴질랜드',3),(458,'뉴칼레도니아','454','수입산 > 오세아니아 > 뉴칼레도니아',3),(459,'니우에','454','수입산 > 오세아니아 > 니우에',3),(460,'마리아나군도','454','수입산 > 오세아니아 > 마리아나군도',3),(461,'마셜군도','454','수입산 > 오세아니아 > 마셜군도',3),(462,'마이크로네시아','454','수입산 > 오세아니아 > 마이크로네시아',3),(463,'미국령 태평양군도','454','수입산 > 오세아니아 > 미국령 태평양군도',3),(464,'미크로네시아','454','수입산 > 오세아니아 > 미크로네시아',3),(465,'바누아투','454','수입산 > 오세아니아 > 바누아투',3),(466,'보빗군도','454','수입산 > 오세아니아 > 보빗군도',3),(467,'서사모아','454','수입산 > 오세아니아 > 서사모아',3),(468,'세인트빈센트','454','수입산 > 오세아니아 > 세인트빈센트',3),(469,'솔로몬군도','454','수입산 > 오세아니아 > 솔로몬군도',3),(470,'아메리칸사모아','454','수입산 > 오세아니아 > 아메리칸사모아',3),(471,'오스트레일리아','454','수입산 > 오세아니아 > 오스트레일리아',3),(472,'코코스군도','454','수입산 > 오세아니아 > 코코스군도',3),(473,'쿠크군도','454','수입산 > 오세아니아 > 쿠크군도',3),(474,'크리스마스 아일랜드','454','수입산 > 오세아니아 > 크리스마스 아일랜드',3),(475,'키리바시','454','수입산 > 오세아니아 > 키리바시',3),(476,'토켈라우','454','수입산 > 오세아니아 > 토켈라우',3),(477,'통가','454','수입산 > 오세아니아 > 통가',3),(478,'투발루','454','수입산 > 오세아니아 > 투발루',3),(479,'파푸아뉴기니','454','수입산 > 오세아니아 > 파푸아뉴기니',3),(480,'팔라우','454','수입산 > 오세아니아 > 팔라우',3),(481,'프랑스령 폴리네시아','454','수입산 > 오세아니아 > 프랑스령 폴리네시아',3),(482,'피지','454','수입산 > 오세아니아 > 피지',3),(483,'피트카이른','454','수입산 > 오세아니아 > 피트카이른',3),(484,'호주','454','수입산 > 오세아니아 > 호주',3),(485,'후투나','454','수입산 > 오세아니아 > 후투나',3),(486,'유럽','283','수입산 > 유럽',2),(487,'과들루프','486','수입산 > 유럽 > 과들루프',3),(488,'그리스','486','수입산 > 유럽 > 그리스',3),(489,'네덜란드','486','수입산 > 유럽 > 네덜란드',3),(490,'노르웨이','486','수입산 > 유럽 > 노르웨이',3),(491,'노폴크 아일랜드','486','수입산 > 유럽 > 노폴크 아일랜드',3),(492,'덴마크','486','수입산 > 유럽 > 덴마크',3),(493,'독일','486','수입산 > 유럽 > 독일',3),(494,'라트비아','486','수입산 > 유럽 > 라트비아',3),(495,'러시아','486','수입산 > 유럽 > 러시아',3),(496,'루마니아','486','수입산 > 유럽 > 루마니아',3),(497,'룩셈부르크','486','수입산 > 유럽 > 룩셈부르크',3),(498,'리투아니아','486','수입산 > 유럽 > 리투아니아',3),(499,'리히텐슈타인','486','수입산 > 유럽 > 리히텐슈타인',3),(500,'마케도니아','486','수입산 > 유럽 > 마케도니아',3),(501,'말타','486','수입산 > 유럽 > 말타',3),(502,'모나코','486','수입산 > 유럽 > 모나코',3),(503,'몬테네그로','486','수입산 > 유럽 > 몬테네그로',3),(504,'몰도바','486','수입산 > 유럽 > 몰도바',3),(505,'몰타','486','수입산 > 유럽 > 몰타',3),(506,'바티칸','486','수입산 > 유럽 > 바티칸',3),(507,'벨기에','486','수입산 > 유럽 > 벨기에',3),(508,'벨로루시','486','수입산 > 유럽 > 벨로루시',3),(509,'보스니아헤르체코비나','486','수입산 > 유럽 > 보스니아헤르체코비나',3),(510,'불가리아','486','수입산 > 유럽 > 불가리아',3),(511,'산마리노','486','수입산 > 유럽 > 산마리노',3),(512,'세르비아','486','수입산 > 유럽 > 세르비아',3),(513,'스웨덴','486','수입산 > 유럽 > 스웨덴',3),(514,'스위스','486','수입산 > 유럽 > 스위스',3),(515,'스페인','486','수입산 > 유럽 > 스페인',3),(516,'슬로바키아','486','수입산 > 유럽 > 슬로바키아',3),(517,'슬로베니아','486','수입산 > 유럽 > 슬로베니아',3),(518,'아이슬란드','486','수입산 > 유럽 > 아이슬란드',3),(519,'아일랜드','486','수입산 > 유럽 > 아일랜드',3),(520,'아제르바이잔','486','수입산 > 유럽 > 아제르바이잔',3),(521,'안도라','486','수입산 > 유럽 > 안도라',3),(522,'알메니아','486','수입산 > 유럽 > 알메니아',3),(523,'알바니아','486','수입산 > 유럽 > 알바니아',3),(524,'에스토니아','486','수입산 > 유럽 > 에스토니아',3),(525,'영국','486','수입산 > 유럽 > 영국',3),(526,'오스트리아','486','수입산 > 유럽 > 오스트리아',3),(527,'우크라이나','486','수입산 > 유럽 > 우크라이나',3),(528,'유고','486','수입산 > 유럽 > 유고',3),(529,'이탈리아','486','수입산 > 유럽 > 이탈리아',3),(530,'조지아','486','수입산 > 유럽 > 조지아',3),(531,'지브롤터','486','수입산 > 유럽 > 지브롤터',3),(532,'체코','486','수입산 > 유럽 > 체코',3),(533,'크로아티아','486','수입산 > 유럽 > 크로아티아',3),(534,'키프로스','486','수입산 > 유럽 > 키프로스',3),(535,'터키','486','수입산 > 유럽 > 터키',3),(536,'파로에군도','486','수입산 > 유럽 > 파로에군도',3),(537,'페로스제도','486','수입산 > 유럽 > 페로스제도',3),(538,'포르투갈','486','수입산 > 유럽 > 포르투갈',3),(539,'폴란드','486','수입산 > 유럽 > 폴란드',3),(540,'프랑스','486','수입산 > 유럽 > 프랑스',3),(541,'프랑스 메트로 폴리탄','486','수입산 > 유럽 > 프랑스 메트로 폴리탄',3),(542,'핀란드','486','수입산 > 유럽 > 핀란드',3),(543,'헝가리','486','수입산 > 유럽 > 헝가리',3),(544,'기타',NULL,'기타',1),(545,'상세설명에 표시','544','기타 > 상세설명에 표시',2),(546,'직접입력(띄어쓰기 포함하여 100자 이내)','544','기타 > 직접입력(띄어쓰기 포함하여 100자 이내)',2);
/*!40000 ALTER TABLE `mm_gds_origins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_gds_package_items`
--

DROP TABLE IF EXISTS `mm_gds_package_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_gds_package_items` (
  `package_id` bigint unsigned NOT NULL COMMENT '세트 고유키(mm_gds_sets.id)',
  `goods_id` bigint unsigned NOT NULL COMMENT '상품 고유키(mm_gds_items.id)',
  `order_seq` int unsigned NOT NULL DEFAULT '0' COMMENT '정렬 순서값',
  UNIQUE KEY `mm_gds_item_set_unique` (`package_id`,`goods_id`),
  KEY `mm_gds_item_set_set_id_index` (`package_id`),
  KEY `mm_gds_item_set_goods_id_index` (`goods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='세트 상품 구성에 포함된 상품 데이터';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_gds_package_items`
--

LOCK TABLES `mm_gds_package_items` WRITE;
/*!40000 ALTER TABLE `mm_gds_package_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_gds_package_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_gds_packages`
--

DROP TABLE IF EXISTS `mm_gds_packages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_gds_packages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '고유키',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '세트 관리명',
  `middle_user_id` bigint unsigned NOT NULL COMMENT '중간관리자(중간관리자) 고유키(mm_adm_middle_users.id)',
  `seller_id` bigint unsigned DEFAULT NULL COMMENT '셀러 키(mm_adm_sellers.id)',
  `created_at` datetime NOT NULL COMMENT '세트 등록일시',
  `updated_at` datetime DEFAULT NULL COMMENT '세트 수정일시',
  `deleted_at` datetime DEFAULT NULL COMMENT '세트 삭제일시',
  PRIMARY KEY (`id`),
  KEY `mm_gds_sets_title_index` (`title`),
  KEY `mm_gds_sets_middle_user_id_index` (`middle_user_id`),
  KEY `mm_gds_sets_created_at_index` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='세트 상품 데이터';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_gds_packages`
--

LOCK TABLES `mm_gds_packages` WRITE;
/*!40000 ALTER TABLE `mm_gds_packages` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_gds_packages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_gds_price_change_logs`
--

DROP TABLE IF EXISTS `mm_gds_price_change_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_gds_price_change_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '로그 고유키',
  `goods_id` bigint unsigned NOT NULL COMMENT '상품 고유키(mm_gds_items.id)',
  `goods_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '로깅 시점의 상품명(mm_gds_items.name)',
  `before_price` int unsigned NOT NULL COMMENT '변경 전 판매가',
  `after_price` int unsigned NOT NULL COMMENT '변경 후 판매가',
  `change_apply_date` datetime NOT NULL COMMENT '변경판매가 적용일(즉시변경시 변경일시와 동일)',
  `modifier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '수정자 정보',
  `modifier_message` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '기타 관리메모(필요시 활용)',
  `modifier_ip_address` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '변경주체의 IP 주소',
  `created_at` datetime NOT NULL COMMENT '변경 일시( = 로그생성일시)',
  `scm_user_code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mm_gds_price_change_logs_goods_id_index` (`goods_id`),
  KEY `mm_gds_price_change_logs_goods_name_index` (`goods_name`),
  KEY `mm_gds_price_change_logs_created_at_index` (`created_at`),
  KEY `mm_gds_price_change_logs_scm_user_code_index` (`scm_user_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='상품 가격 변경 로그 테이블';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_gds_price_change_logs`
--

LOCK TABLES `mm_gds_price_change_logs` WRITE;
/*!40000 ALTER TABLE `mm_gds_price_change_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_gds_price_change_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_gds_sale_reserve_change_logs`
--

DROP TABLE IF EXISTS `mm_gds_sale_reserve_change_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_gds_sale_reserve_change_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `sale_reserve_id` bigint unsigned NOT NULL COMMENT '대상 상품 고유키(mm_gds_item_sale_reserves.id)',
  `goods_id` bigint unsigned NOT NULL COMMENT '대상 상품 고유키(mm_gds_items.id)',
  `goods_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '로깅 시점의 대상 상품 상품명(mm_gds_product.name)',
  `change_type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '변경 형태(updated, deleted)',
  `change` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '변경 내용',
  `before_value` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '변경 전',
  `after_value` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '변경 후',
  `modifier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '수정자 정보',
  `modifier_message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '관리용 메시지',
  `modifier_ip_address` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '변경주체의 IP 주소',
  `created_at` datetime NOT NULL COMMENT '변경 일시( = 로그생성일시)',
  `scm_user_code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '1',
  PRIMARY KEY (`id`),
  KEY `mm_gds_sale_reserve_change_logs_change_type_index` (`change_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_gds_sale_reserve_change_logs`
--

LOCK TABLES `mm_gds_sale_reserve_change_logs` WRITE;
/*!40000 ALTER TABLE `mm_gds_sale_reserve_change_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_gds_sale_reserve_change_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_gds_special_attribute_template_details`
--

DROP TABLE IF EXISTS `mm_gds_special_attribute_template_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_gds_special_attribute_template_details` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '고유키',
  `template_id` bigint unsigned NOT NULL COMMENT '특수 속성 템플릿 고유키(mm_gds_product_special_attribute_templates.id)\n',
  `label` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '하위분류명',
  `is_use` tinyint(1) DEFAULT '0' COMMENT '사용여부',
  `order_seq` int DEFAULT '0' COMMENT '정렬순서값',
  `created_at` datetime NOT NULL COMMENT '하위분류 생성일',
  `updated_at` datetime DEFAULT NULL COMMENT '하위분류 수정일',
  PRIMARY KEY (`id`),
  KEY `mm_gds_special_attribute_template_details_template_index` (`template_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='상품 특수 속성 스키마(mm_gds_product_special_attribute_templates)의 하위분류 데이터';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_gds_special_attribute_template_details`
--

LOCK TABLES `mm_gds_special_attribute_template_details` WRITE;
/*!40000 ALTER TABLE `mm_gds_special_attribute_template_details` DISABLE KEYS */;
INSERT INTO `mm_gds_special_attribute_template_details` VALUES (1,1,'XS 이하',1,0,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(2,1,'S ~ XL',1,1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(3,1,'XXL 이상',1,2,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(4,2,'210 이하',1,0,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(5,2,'215',1,1,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(6,2,'220',1,2,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(7,2,'225',1,3,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(8,2,'230',1,4,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(9,2,'235',1,5,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(10,2,'240',1,6,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(11,2,'245',1,7,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(12,2,'250',1,8,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(13,2,'255',1,9,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(14,2,'260',1,10,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(15,2,'265',1,11,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(16,2,'270',1,12,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(17,2,'275',1,13,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(18,2,'280',1,14,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(19,2,'285',1,15,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(20,2,'290',1,16,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(21,2,'295',1,17,'2023-10-06 08:38:23','2023-10-06 08:38:23'),(22,2,'300 이상',1,18,'2023-10-06 08:38:23','2023-10-06 08:38:23');
/*!40000 ALTER TABLE `mm_gds_special_attribute_template_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_gds_special_attribute_templates`
--

DROP TABLE IF EXISTS `mm_gds_special_attribute_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_gds_special_attribute_templates` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '고유키',
  `title` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '특수 속성 제목(핏, 소재 등)',
  `is_use` tinyint(1) NOT NULL DEFAULT '0' COMMENT '사용여부',
  `order_seq` int DEFAULT '0' COMMENT '정렬순서값',
  `created_at` datetime NOT NULL COMMENT '템플릿 생성일',
  `updated_at` datetime DEFAULT NULL COMMENT '템플릿 수정일',
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '특수속성 템플릿 관리코드(fit, shoes, ...',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='상품의 특수 속성을 정의하는 템플릿 스키마 테이블';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_gds_special_attribute_templates`
--

LOCK TABLES `mm_gds_special_attribute_templates` WRITE;
/*!40000 ALTER TABLE `mm_gds_special_attribute_templates` DISABLE KEYS */;
INSERT INTO `mm_gds_special_attribute_templates` VALUES (1,'FIT',1,0,'2023-10-06 08:38:23','2023-10-06 08:38:23','fit'),(2,'슈즈',1,1,'2023-10-06 08:38:23','2023-10-06 08:38:23','shoes-size');
/*!40000 ALTER TABLE `mm_gds_special_attribute_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_mem_adult_verifications`
--

DROP TABLE IF EXISTS `mm_mem_adult_verifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_mem_adult_verifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `member_id` bigint unsigned NOT NULL COMMENT '대상 회원 번호',
  `checked_at` timestamp NOT NULL COMMENT '인증 기준시간',
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '인증 IP',
  `verification_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '인증수단',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_mem_adult_verifications`
--

LOCK TABLES `mm_mem_adult_verifications` WRITE;
/*!40000 ALTER TABLE `mm_mem_adult_verifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_mem_adult_verifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_mem_app_push_tokens`
--

DROP TABLE IF EXISTS `mm_mem_app_push_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_mem_app_push_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `member_id` bigint unsigned DEFAULT NULL COMMENT '회원 고유번호(mm_mem_members.id), 없으면 비회원',
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '푸시 토큰',
  `device_os` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '디바이스 OS (''A'': 안드로이드, ''I'': ios)',
  `is_agree_reception` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '수신 동의 여부(0: 미수신, 1: 수신)',
  `is_agree_reception_night_at` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '야간 수신 동의 여부(0: 미수신, 1: 수신)',
  `latest_agree_at` datetime DEFAULT NULL COMMENT '푸시 수신동의한 최근 시간',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '등록 일시',
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '수정 일시',
  PRIMARY KEY (`id`),
  KEY `mm_mem_app_push_tokens_member_id_index` (`member_id`) USING BTREE,
  KEY `mm_mem_app_push_tokens_token_index` (`token`) USING BTREE,
  KEY `mm_mem_app_push_tokens_deviceos_index` (`device_os`) USING BTREE,
  KEY `mm_mem_app_push_tokens_updatedat_index` (`updated_at`) USING BTREE,
  KEY `mm_mem_app_push_tokens_latest_agree_at_index` (`latest_agree_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='등록된 토큰 정보';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_mem_app_push_tokens`
--

LOCK TABLES `mm_mem_app_push_tokens` WRITE;
/*!40000 ALTER TABLE `mm_mem_app_push_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_mem_app_push_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_mem_code_sequences`
--

DROP TABLE IF EXISTS `mm_mem_code_sequences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_mem_code_sequences` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '고유번호',
  `code` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '고유번호',
  `invite_code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '추천인코드',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mm_mem_code_sequences_code_unique` (`code`),
  UNIQUE KEY `mm_mem_code_sequences_invite_code_unique` (`invite_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='유저 고유번호 채번';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_mem_code_sequences`
--

LOCK TABLES `mm_mem_code_sequences` WRITE;
/*!40000 ALTER TABLE `mm_mem_code_sequences` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_mem_code_sequences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_mem_coupon_regists`
--

DROP TABLE IF EXISTS `mm_mem_coupon_regists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_mem_coupon_regists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '고유번호',
  `member_id` bigint unsigned NOT NULL COMMENT '회원 고유번호 mm_mem_members.id',
  `coupon_id` bigint unsigned NOT NULL COMMENT '쿠폰id mm_prm_extra_coupons.id',
  `regist_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '쿠폰 지급일시',
  `is_usable` tinyint unsigned NOT NULL DEFAULT '1' COMMENT '사용여부 {0:사용불가,1:사용가능}',
  `usable_from` datetime NOT NULL COMMENT '쿠폰 사용 가능 시작일시',
  `usable_to` datetime NOT NULL COMMENT '쿠폰 사용 가능 만료일시',
  `is_used` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '쿠폰 사용여부 {0:미사용,1:사용}',
  `used_at` datetime DEFAULT NULL COMMENT '쿠폰 사용일시',
  `used_order_id` bigint unsigned DEFAULT NULL COMMENT '쿠폰사용 주문번호 mm_ord_orders.order_id',
  `used_order_discount_id` bigint unsigned DEFAULT NULL COMMENT '쿠폰사용 할인 번호 mm_ord_discounts.id',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '생성일시',
  `created_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '생성자',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '수정일시',
  `updated_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '수정자',
  `deleted_at` datetime DEFAULT NULL COMMENT '삭제일시',
  `deleted_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '삭제자',
  PRIMARY KEY (`id`),
  KEY `mm_mem_coupon_regists_member_id_index` (`member_id`),
  KEY `index_for_list_of_coupon` (`coupon_id`,`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='회원 쿠폰 지급 정보';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_mem_coupon_regists`
--

LOCK TABLES `mm_mem_coupon_regists` WRITE;
/*!40000 ALTER TABLE `mm_mem_coupon_regists` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_mem_coupon_regists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_mem_edit_logs`
--

DROP TABLE IF EXISTS `mm_mem_edit_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_mem_edit_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '고유번호',
  `member_id` bigint unsigned NOT NULL COMMENT '회원 고유번호',
  `member_code` varchar(35) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '회원코드',
  `column_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '컬럼네임',
  `column_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '변경항목',
  `before_edit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '수정전데이타',
  `after_edit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '수정후데이타',
  `modifier_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '변경 관리자 정보',
  `edit_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '정보수정페이지',
  `ip` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '아이피주소',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '등록일시',
  `scm_user_code` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'scm 관리자 코드',
  PRIMARY KEY (`id`),
  KEY `mm_mem_edit_logs_code_index` (`member_code`) USING BTREE,
  KEY `mm_mem_edit_logs_modifier_user_index` (`id`,`modifier_user`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='회원정보수정 히스토리';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_mem_edit_logs`
--

LOCK TABLES `mm_mem_edit_logs` WRITE;
/*!40000 ALTER TABLE `mm_mem_edit_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_mem_edit_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_mem_extra_performances`
--

DROP TABLE IF EXISTS `mm_mem_extra_performances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_mem_extra_performances` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `member_id` bigint unsigned NOT NULL,
  `apply_at` datetime NOT NULL COMMENT '적용할 시점',
  `order_price_amount` bigint NOT NULL DEFAULT '0' COMMENT '감가산할 주문실적금액',
  `order_count` int NOT NULL DEFAULT '0' COMMENT '감가산할 주문횟수',
  `memo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '유형 코드(예: 특정 이벤트로 지급되어 UPDATE or create 해야하는 경우 event code를 지정해 사용)',
  PRIMARY KEY (`id`),
  KEY `mm_mem_extra_performances_member_id_index` (`member_id`),
  KEY `mm_mem_extra_performances_apply_at_index` (`apply_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_mem_extra_performances`
--

LOCK TABLES `mm_mem_extra_performances` WRITE;
/*!40000 ALTER TABLE `mm_mem_extra_performances` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_mem_extra_performances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_mem_grade_change_history`
--

DROP TABLE IF EXISTS `mm_mem_grade_change_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_mem_grade_change_history` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `member_id` bigint unsigned NOT NULL COMMENT '회원 고유키',
  `before_grade_order` int unsigned NOT NULL COMMENT '이전 등급 순번',
  `after_grade_order` int unsigned NOT NULL COMMENT '변경된 등급 순번',
  `changed_at` datetime NOT NULL COMMENT '변경 시간',
  PRIMARY KEY (`id`),
  KEY `mm_mem_grade_change_history_member_id_index` (`member_id`),
  KEY `mm_mem_grade_change_history_changed_at_index` (`changed_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_mem_grade_change_history`
--

LOCK TABLES `mm_mem_grade_change_history` WRITE;
/*!40000 ALTER TABLE `mm_mem_grade_change_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_mem_grade_change_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_mem_grade_coupons`
--

DROP TABLE IF EXISTS `mm_mem_grade_coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_mem_grade_coupons` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '등급 쿠폰 레코드 고유번호',
  `grade_id` bigint unsigned NOT NULL COMMENT '등급 고유번호(mm_mem_grades.id)',
  `coupon_id` bigint unsigned NOT NULL COMMENT '쿠폰 고유번호(mm_prm_extra_coupons.id)',
  `download_limit_count` int unsigned NOT NULL DEFAULT '0' COMMENT '쿠폰 발행 갯수(0: 무제한)',
  `created_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '등록자',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mm_mem_grade_coupons_coupon_id_index` (`coupon_id`),
  KEY `mm_mem_grade_coupons_grade_id_index` (`grade_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_mem_grade_coupons`
--

LOCK TABLES `mm_mem_grade_coupons` WRITE;
/*!40000 ALTER TABLE `mm_mem_grade_coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_mem_grade_coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_mem_grades`
--

DROP TABLE IF EXISTS `mm_mem_grades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_mem_grades` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '고유번호',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '등급명',
  `use_benefit` tinyint unsigned NOT NULL DEFAULT '1' COMMENT '등급혜택 사용여부',
  `purchase_point_rate` decimal(4,1) NOT NULL DEFAULT '0.0' COMMENT '상품구매 포인트 적립율',
  `photo_review_point` int unsigned NOT NULL DEFAULT '0' COMMENT '포토 상품평 혜택',
  `review_point` int unsigned NOT NULL DEFAULT '0' COMMENT '일반 상품평 혜택',
  `order_seq` int unsigned NOT NULL DEFAULT '99' COMMENT '노출 순서',
  `alt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '대체 텍스트',
  `is_use` tinyint unsigned NOT NULL DEFAULT '1' COMMENT '사용여부',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '회원가입시 자동적용될 등급',
  `created_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '등록자',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '수정일',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '등록일',
  `payment_amount_condition` int unsigned NOT NULL DEFAULT '0' COMMENT '등급업 구매 조건 금액',
  `order_count_condition` int unsigned NOT NULL DEFAULT '0' COMMENT '등급업 구매 조건 수량',
  `rgb_code` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ffffff' COMMENT '등급 키컬러 rgb코드',
  PRIMARY KEY (`id`),
  KEY `mm_mem_grades_is_use_index` (`is_use`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='멤버 등급';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_mem_grades`
--

LOCK TABLES `mm_mem_grades` WRITE;
/*!40000 ALTER TABLE `mm_mem_grades` DISABLE KEYS */;
INSERT INTO `mm_mem_grades` VALUES (1,'WELCOME',1,1.0,1500,500,0,NULL,1,1,'','2023-10-06 08:38:23','2023-10-06 08:38:23',0,0,'ffffff'),(2,'FAMILY',1,2.0,1500,500,1,NULL,1,0,'','2023-10-06 08:38:23','2023-10-06 08:38:23',0,1,'ffffff'),(3,'VIP',1,3.0,1500,500,2,NULL,1,0,'','2023-10-06 08:38:23','2023-10-06 08:38:23',200000,1,'ffffff'),(4,'VVIP',1,4.0,1500,500,3,NULL,1,0,'','2023-10-06 08:38:23','2023-10-06 08:38:23',1000000,1,'ffffff');
/*!40000 ALTER TABLE `mm_mem_grades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_mem_gradeup_coupon_regist_history`
--

DROP TABLE IF EXISTS `mm_mem_gradeup_coupon_regist_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_mem_gradeup_coupon_regist_history` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `member_id` bigint unsigned NOT NULL COMMENT '회원 고유키(mm_mem_members.id)',
  `grade_id` bigint unsigned NOT NULL COMMENT '등급 고유키(`mm_mem_grades`.id)',
  `coupon_id` bigint unsigned NOT NULL COMMENT '지급된 승급쿠폰 고유키(mm_prm_extra_coupons.id)',
  `auto_set_id` bigint unsigned NOT NULL COMMENT '지급당시 적용된 자동발급설정키 (mm_prm_extra_coupon_auto_publishes.id)',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `member_id_INDEX` (`member_id`),
  KEY `GRADE_id_INDEX` (`grade_id`),
  KEY `COUPON_id_INDEX` (`coupon_id`),
  KEY `FIND_HISTORY_INDEX` (`member_id`,`grade_id`,`coupon_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='회원 승급쿠폰 지급이력';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_mem_gradeup_coupon_regist_history`
--

LOCK TABLES `mm_mem_gradeup_coupon_regist_history` WRITE;
/*!40000 ALTER TABLE `mm_mem_gradeup_coupon_regist_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_mem_gradeup_coupon_regist_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_mem_like_goods_reviews`
--

DROP TABLE IF EXISTS `mm_mem_like_goods_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_mem_like_goods_reviews` (
  `member_id` bigint unsigned NOT NULL COMMENT '회원 키(mm_mem_members.id)',
  `review_id` bigint unsigned NOT NULL COMMENT '리뷰 키(mm_bod_goods_reviews.id)',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `mm_mem_like_goods_reviews_review_id_index` (`review_id`),
  KEY `mm_mem_like_goods_reviews_member_id_index` (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_mem_like_goods_reviews`
--

LOCK TABLES `mm_mem_like_goods_reviews` WRITE;
/*!40000 ALTER TABLE `mm_mem_like_goods_reviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_mem_like_goods_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_mem_member_details`
--

DROP TABLE IF EXISTS `mm_mem_member_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_mem_member_details` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '고유번호',
  `member_id` bigint unsigned NOT NULL COMMENT 'mm_mem_members.id',
  `ci` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '안심체크 아이핀CI',
  `di` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '안심체크 아이핀DI',
  `birthday` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '양력 생일',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '이름 (암호화)',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '이메일 (암호화)',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '핸드폰번호 (암호화)',
  `is_receive_email` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '이메일수신여부',
  `is_receive_sms` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'sms수신여부',
  `grade_id` bigint unsigned NOT NULL DEFAULT '0' COMMENT '회원레벨 키값',
  `is_employee` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '임직원 여부 {임직원대상:1, 미대상:0}',
  `employed_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '임직원 변경자',
  `updated_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '수정자',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '수정 일시',
  `latest_sms_agree_at` datetime DEFAULT NULL COMMENT 'SMS 수신동의한 최근 시간',
  `latest_email_agree_at` datetime DEFAULT NULL COMMENT '이메일 수신동의한 최근 시간',
  `invite_code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '추천인 코드',
  `store_code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'online' COMMENT '오프라인 매장 코드',
  `is_linked_offline` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '오프라인 회원정보 연동 여부 (회원가입 시 체크)',
  `grade_holding_end_date` date DEFAULT NULL COMMENT '등급유지 종료일',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mm_mem_member_details_member_id_unique` (`member_id`),
  KEY `mm_mem_member_details_grade_id_index` (`grade_id`),
  KEY `mm_mem_member_details_ci_index` (`ci`),
  KEY `mm_mem_member_details_di_index` (`di`),
  KEY `mm_mem_member_details_latest_sms_agree_at_index` (`latest_sms_agree_at`),
  KEY `mm_mem_member_details_latest_email_agree_at_index` (`latest_email_agree_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='회원 상세정보';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_mem_member_details`
--

LOCK TABLES `mm_mem_member_details` WRITE;
/*!40000 ALTER TABLE `mm_mem_member_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_mem_member_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_mem_member_my_pay_regists`
--

DROP TABLE IF EXISTS `mm_mem_member_my_pay_regists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_mem_member_my_pay_regists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `member_id` bigint unsigned NOT NULL COMMENT '회원번호',
  `pay_gateway_code` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '대상 지불 게이트웨이 구분',
  `customer_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '지불 게이트웨이 고객식별번호',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_mem_member_my_pay_regists`
--

LOCK TABLES `mm_mem_member_my_pay_regists` WRITE;
/*!40000 ALTER TABLE `mm_mem_member_my_pay_regists` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_mem_member_my_pay_regists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_mem_members`
--

DROP TABLE IF EXISTS `mm_mem_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_mem_members` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '고유번호',
  `code` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '회원 코드',
  `login_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '회원 아이디',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '회원 비밀번호',
  `password_changed_at` datetime DEFAULT NULL COMMENT '비밀번호변경일자',
  `password_change_notify_at` datetime DEFAULT NULL COMMENT '비밀번호 변경 재알림 날짜',
  `login_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'shop' COMMENT '회원가입 유형(자사가입:shop, 네이버 간편가입:naver, 카카오 간편가입:kakao, 애플 간편가입:apple, 페이스북 간편가입:facebook, 페이코 간편가입:payco)',
  `visit` smallint DEFAULT '0' COMMENT '로그인 횟수',
  `last_visit` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '마지막 방문일',
  `recent_ip` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '마지막 방문 ip',
  `total_point` int NOT NULL DEFAULT '0' COMMENT '회원 보유 포인트 (잔여)',
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '회원가입 user agent',
  `is_dropped` tinyint(1) NOT NULL DEFAULT '0' COMMENT '회원 탈퇴여부 0:사용중, 1:탈퇴',
  `is_slept` tinyint(1) NOT NULL DEFAULT '0' COMMENT '휴면 분리여부 0:사용중, 1:휴면 분리',
  `created_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '등록 사용자',
  `updated_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '수정 사용자',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '등록 일시',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '수정 일시',
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '자동로그인 토큰 컬럼',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mm_mem_members_code_unique` (`code`),
  KEY `mm_mem_members_created_at_index` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='사용자 기본정보';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_mem_members`
--

LOCK TABLES `mm_mem_members` WRITE;
/*!40000 ALTER TABLE `mm_mem_members` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_mem_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_mem_personal_clearance_codes`
--

DROP TABLE IF EXISTS `mm_mem_personal_clearance_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_mem_personal_clearance_codes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `member_id` bigint unsigned NOT NULL COMMENT '회원번호',
  `code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '개인통관고유부호',
  `is_collect` tinyint unsigned NOT NULL DEFAULT '1' COMMENT '수집동의여부 0:미동의 1:동의',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '생성일자',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '수정일자',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_mem_personal_clearance_codes`
--

LOCK TABLES `mm_mem_personal_clearance_codes` WRITE;
/*!40000 ALTER TABLE `mm_mem_personal_clearance_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_mem_personal_clearance_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_mem_personalizations`
--

DROP TABLE IF EXISTS `mm_mem_personalizations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_mem_personalizations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '고유번호',
  `member_id` bigint unsigned NOT NULL COMMENT '회원 고유번호 (mm_mem_members.id)',
  `gender` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'E' COMMENT '성별(E:미입력,M:남자,F:여자)',
  `birth_year` smallint unsigned DEFAULT NULL COMMENT '출생년도 4자리 숫자 입력 이며 미입력은 `0` UNSIGNED (0~65535)',
  `weight` tinyint unsigned DEFAULT NULL COMMENT '체중 미입력 `0` UNSIGNED (0~255)',
  `height` int DEFAULT NULL COMMENT '신장',
  `fit_id` bigint unsigned DEFAULT NULL COMMENT 'my핏 mm_gds_special_attribute_template_detail.id',
  `shoes_id` bigint unsigned DEFAULT NULL COMMENT '신발사이즈 mm_gds_special_attribute_template_detail.id',
  `is_agree` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '동의 여부 (0:미동의,1:동의)',
  `agree_at` datetime DEFAULT NULL COMMENT '최초 동의일시',
  `is_use` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '사용가능여부 (0:미사용,1:사용)',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '생성일자',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '수정일자',
  `gender_for_shoes` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '신발용 성별값',
  PRIMARY KEY (`id`),
  KEY `mm_mem_personalizations_member_id_index` (`member_id`),
  KEY `mm_mem_personalizations_is_index` (`is_agree`,`is_use`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='개인화 정보 테이블';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_mem_personalizations`
--

LOCK TABLES `mm_mem_personalizations` WRITE;
/*!40000 ALTER TABLE `mm_mem_personalizations` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_mem_personalizations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_mem_point_details`
--

DROP TABLE IF EXISTS `mm_mem_point_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_mem_point_details` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '고유번호',
  `direction` tinyint unsigned NOT NULL COMMENT '증감 방향 (1:증가, 2:차감)',
  `amount` bigint DEFAULT NULL COMMENT '상세 사용 포인트 금액 (정수)',
  `point_id` bigint unsigned NOT NULL COMMENT '이력 원본 발생 고유번호',
  `origin_point_id` bigint unsigned NOT NULL COMMENT '이력 원본 적립 고유번호',
  `expire_at` datetime NOT NULL COMMENT '만료 일시 (차감 시에는 적립(point_reserve_id) 만료일시 기재)',
  `created_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '생성자',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '생성일자',
  PRIMARY KEY (`id`),
  KEY `mm_mem_point_details_point_id_index` (`point_id`),
  KEY `mm_mem_point_details_expire_at_index` (`expire_at`),
  KEY `mm_mem_point_details_create_at_index` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='발생된 포인트 사용 상세 정보로 입력만 가능하며 순서대로 처리됨';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_mem_point_details`
--

LOCK TABLES `mm_mem_point_details` WRITE;
/*!40000 ALTER TABLE `mm_mem_point_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_mem_point_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_mem_points`
--

DROP TABLE IF EXISTS `mm_mem_points`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_mem_points` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '고유번호',
  `member_id` bigint unsigned NOT NULL COMMENT '회원 키',
  `member_code` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '회원 코드',
  `direction` tinyint unsigned NOT NULL COMMENT '증감 방향 (1:증가, 2:차감)',
  `occurrence_type` tinyint unsigned NOT NULL COMMENT '발생유형 (주문, 이벤트, 리뷰, 고객센터, 만료 등)',
  `occurrence_sub_type` tinyint NOT NULL COMMENT '발생유형 보조(신규, 취소, 만료, 고객센터, 관리자 수동 등)',
  `amount` bigint NOT NULL DEFAULT '0' COMMENT '발생 포인트 금액 (양수) 최대 천만자리',
  `balance` bigint NOT NULL DEFAULT '0' COMMENT '잔액 포인트 금액 (0 일경우 처리완료) : 차감시에는 차감될 잔여 금액',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '설명 (발생사유)',
  `call_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'call 칼럼 사용정의 설명 {id1:주문번호,id2:주문상세,etc1:상품 코드,etc2:기타}',
  `call_id1` bigint unsigned DEFAULT NULL COMMENT '사용 연결키 코드1',
  `call_id2` bigint unsigned DEFAULT NULL COMMENT '사용 연결키 코드2',
  `call_etc1` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '사용 기타 정보1',
  `call_etc2` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '사용 기타 정보2',
  `expire_at` datetime DEFAULT NULL COMMENT '만료 일시',
  `created_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '생성자',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '생성일자',
  PRIMARY KEY (`id`),
  KEY `mm_mem_points_index` (`member_id`,`direction`,`occurrence_type`),
  KEY `mm_mem_points_expire_at_index` (`expire_at`),
  KEY `mm_mem_points_create_at_index` (`created_at`),
  KEY `mm_mem_points_member_id_index` (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='포인트 발생 정보을 가지며 입력만 가능함';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_mem_points`
--

LOCK TABLES `mm_mem_points` WRITE;
/*!40000 ALTER TABLE `mm_mem_points` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_mem_points` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_mem_policy_agrees`
--

DROP TABLE IF EXISTS `mm_mem_policy_agrees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_mem_policy_agrees` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `member_id` bigint unsigned NOT NULL COMMENT '회원 번호',
  `policy_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '약관 구분코드 enum@Shop/PolicyType',
  `policy_id` bigint unsigned NOT NULL COMMENT '대상 약관 번호',
  `is_agree` tinyint(1) NOT NULL COMMENT '동의여부',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_mem_policy_agrees`
--

LOCK TABLES `mm_mem_policy_agrees` WRITE;
/*!40000 ALTER TABLE `mm_mem_policy_agrees` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_mem_policy_agrees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_mem_receive_addresses`
--

DROP TABLE IF EXISTS `mm_mem_receive_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_mem_receive_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '고유번호',
  `member_id` bigint unsigned NOT NULL COMMENT '회원(mm_mem_members.id)',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '기본주소여부',
  `is_latest` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '최근사용여부',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '배송명칭',
  `receiver_name` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '수신자명',
  `tel` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '전화번호',
  `phone` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '핸드폰번호',
  `zip` varchar(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '우편번호',
  `base_address` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '주소',
  `detail_address` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '상세 주소',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '등록 일시',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '수정 일시',
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mm_mem_receive_addresses_member_id_index` (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='배송지 관리';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_mem_receive_addresses`
--

LOCK TABLES `mm_mem_receive_addresses` WRITE;
/*!40000 ALTER TABLE `mm_mem_receive_addresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_mem_receive_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_mem_recent_view_goods`
--

DROP TABLE IF EXISTS `mm_mem_recent_view_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_mem_recent_view_goods` (
  `member_id` bigint unsigned DEFAULT NULL COMMENT '회원 코드 (mm_mem_members.id)',
  `goods_id` bigint unsigned NOT NULL COMMENT '상품 고유번호 (mm_gds_items.id)',
  `view_count` int unsigned NOT NULL DEFAULT '0' COMMENT '열람횟수',
  `recent_view_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '가장 최근에 본 시간',
  KEY `mm_mem_recent_view_goods_goods_id_index` (`goods_id`),
  KEY `mm_mem_recent_view_goods_member_id_index` (`member_id`),
  KEY `RECENT_VIEW_AT_INDEX` (`recent_view_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='최근 본 상품';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_mem_recent_view_goods`
--

LOCK TABLES `mm_mem_recent_view_goods` WRITE;
/*!40000 ALTER TABLE `mm_mem_recent_view_goods` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_mem_recent_view_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_mem_recent_view_planning_events`
--

DROP TABLE IF EXISTS `mm_mem_recent_view_planning_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_mem_recent_view_planning_events` (
  `member_id` bigint unsigned NOT NULL COMMENT '회원 고유번호 mm_mem_member.id',
  `planning_event_id` bigint unsigned NOT NULL COMMENT '기획전 고유번호 mm_exh_planning_events.id',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '생성일시',
  `recent_view_at` datetime NOT NULL COMMENT '최근 본 시간',
  KEY `mm_mem_recent_view_planning_events_member_id_index` (`member_id`),
  KEY `mm_mem_recent_view_planning_events_created_at_index` (`created_at`),
  KEY `RECENT_VIEW_AT_INDEX` (`recent_view_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='최근 본 기획전 정보';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_mem_recent_view_planning_events`
--

LOCK TABLES `mm_mem_recent_view_planning_events` WRITE;
/*!40000 ALTER TABLE `mm_mem_recent_view_planning_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_mem_recent_view_planning_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_mem_refund_accounts`
--

DROP TABLE IF EXISTS `mm_mem_refund_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_mem_refund_accounts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '고유 번호',
  `member_id` bigint unsigned NOT NULL COMMENT '회원 코드 (mm_mem_members.id)',
  `bank_code` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '환불 계좌 은행 코드',
  `account_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '환불 계좌 번호(암호화)',
  `owner_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '환불 계좌주 성명(암호화)',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '등록 일시',
  `updated_at` datetime DEFAULT NULL COMMENT '수정 일시',
  PRIMARY KEY (`id`),
  KEY `mm_mem_refund_accounts_member_id_index` (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_mem_refund_accounts`
--

LOCK TABLES `mm_mem_refund_accounts` WRITE;
/*!40000 ALTER TABLE `mm_mem_refund_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_mem_refund_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_mem_slept_member_details`
--

DROP TABLE IF EXISTS `mm_mem_slept_member_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_mem_slept_member_details` (
  `id` bigint unsigned NOT NULL COMMENT '고유번호',
  `member_id` bigint unsigned NOT NULL COMMENT 'mm_mem_members.id',
  `ci` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '안심체크 아이핀CI',
  `di` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '안심체크 아이핀DI',
  `birthday` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '양력 생일',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '이름 (암호화)',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '이메일 (암호화)',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '핸드폰번호 (암호화)',
  `is_receive_email` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '이메일수신여부',
  `is_receive_sms` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'sms수신여부',
  `grade_id` bigint unsigned NOT NULL DEFAULT '0' COMMENT '회원레벨 키값',
  `is_employee` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '임직원 여부 {임직원대상:1, 미대상:0}',
  `employed_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '임직원 변경자',
  `updated_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '수정자',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '수정 일시',
  `latest_sms_agree_at` datetime DEFAULT NULL COMMENT 'SMS 수신동의한 최근 시간',
  `latest_email_agree_at` datetime DEFAULT NULL COMMENT '이메일 수신동의한 최근 시간',
  `invite_code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '추천인 코드',
  `store_code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'online' COMMENT '오프라인 매장 코드',
  `is_linked_offline` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '오프라인 회원정보 연동 여부 (회원가입 시 체크)',
  PRIMARY KEY (`id`),
  KEY `mm_mem_slept_member_details_member_id_index` (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='휴면회원 상세정보';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_mem_slept_member_details`
--

LOCK TABLES `mm_mem_slept_member_details` WRITE;
/*!40000 ALTER TABLE `mm_mem_slept_member_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_mem_slept_member_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_mem_slept_member_logs`
--

DROP TABLE IF EXISTS `mm_mem_slept_member_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_mem_slept_member_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '고유번호',
  `member_id` bigint unsigned NOT NULL COMMENT '회원 코드 (mm_mem_members.id)',
  `member_code` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '회원 코드 (mm_mem_members.code)',
  `message` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '변경사유',
  `change_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '전환타입 (S:휴면으로 전환  M:회원으로 재전환)',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '등록 일시 (전환일시)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='회원 휴면 전환 로그';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_mem_slept_member_logs`
--

LOCK TABLES `mm_mem_slept_member_logs` WRITE;
/*!40000 ALTER TABLE `mm_mem_slept_member_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_mem_slept_member_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_mem_slept_members`
--

DROP TABLE IF EXISTS `mm_mem_slept_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_mem_slept_members` (
  `id` bigint unsigned NOT NULL COMMENT '고유번호',
  `code` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '회원 코드',
  `login_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '회원 아이디',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '회원 비밀번호',
  `password_changed_at` datetime DEFAULT NULL COMMENT '비밀번호변경일자',
  `password_change_notify_at` datetime DEFAULT NULL COMMENT '비밀번호 변경 재알림 날짜',
  `login_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'shop' COMMENT '회원가입 유형(자사가입:shop, 네이버 간편가입:naver, 카카오 간편가입:kakao, 애플 간편가입:apple, 페이스북 간편가입:facebook, 페이코 간편가입:payco)',
  `visit` smallint DEFAULT '0' COMMENT '로그인 횟수',
  `last_visit` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '마지막 방문일',
  `recent_ip` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '마지막 방문 ip',
  `total_point` int NOT NULL DEFAULT '0' COMMENT '회원 보유 포인트 (잔여)',
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '회원가입 user agent',
  `is_dropped` tinyint(1) NOT NULL DEFAULT '0' COMMENT '회원 탈퇴여부 0:사용중, 1:탈퇴',
  `is_slept` tinyint(1) NOT NULL DEFAULT '0' COMMENT '휴면 분리여부 0:사용중, 1:휴면 분리',
  `created_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '등록 사용자',
  `updated_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '수정 사용자',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '등록 일시',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '수정 일시',
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '자동로그인 토큰 컬럼',
  `slept_at` datetime DEFAULT NULL COMMENT '휴면 전환시간',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mm_mem_slept_members_code_index` (`code`),
  KEY `mm_mem_slept_members_created_at_index` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='휴면회원 기본정보';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_mem_slept_members`
--

LOCK TABLES `mm_mem_slept_members` WRITE;
/*!40000 ALTER TABLE `mm_mem_slept_members` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_mem_slept_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_mem_system_information`
--

DROP TABLE IF EXISTS `mm_mem_system_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_mem_system_information` (
  `member_id` bigint unsigned NOT NULL COMMENT '회원 고유키(mm_mem_members)',
  `is_first_shopping_coupon_registered` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '첫 구매 쿠폰 지급여부',
  `recent_birthday_coupon_year` int NOT NULL DEFAULT '0' COMMENT '마지막으로 생일쿠폰을 받은 연도\n',
  `personalization_cache_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '개인화 캐싱 코드',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `will_sleep_soon_notified_at` datetime DEFAULT NULL COMMENT '휴면 전환 예정안내 메일 발송시간',
  `latest_privacy_notified_at` datetime DEFAULT NULL COMMENT '최근 개인정보 이용내역 안내 메일 발송시간',
  `latest_marketing_notified_at` datetime DEFAULT NULL COMMENT '최근 마케팅 수신동의 내역 안내 메일 발송시간',
  `latest_grade_notified_at` datetime DEFAULT NULL COMMENT '최근 회원등급안내 메일 발송시간',
  `highest_grade_id` bigint unsigned DEFAULT NULL COMMENT '사용자가 달성했던 최고 등급 키',
  `latest_comeback_coupon_registed_at` datetime DEFAULT NULL COMMENT '최근 오랜만 쿠폰 지급일자',
  PRIMARY KEY (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='회원별 시스템 보조정보';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_mem_system_information`
--

LOCK TABLES `mm_mem_system_information` WRITE;
/*!40000 ALTER TABLE `mm_mem_system_information` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_mem_system_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_mem_third_party_authentications`
--

DROP TABLE IF EXISTS `mm_mem_third_party_authentications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_mem_third_party_authentications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '고유번호',
  `member_id` bigint unsigned NOT NULL COMMENT '회원 코드 (mm_mem_members.id)',
  `platform_code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '소셜 종류 (네이버 간편가입:naver, 카카오 간편가입:kakao, 애플 간편가입:apple, 페이스북 간편가입:facebook, 페이코 간편가입:payco)',
  `platform_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '소셜 로그인 아이디',
  `access_token` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '접근 토큰(확인용도로 사용)',
  `refresh_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '유효 토큰(설정,변경시 사용)',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '등록 일시',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '수정 일시',
  `deleted_at` datetime DEFAULT NULL COMMENT '삭제 일시',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='서드파티 인증 연결';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_mem_third_party_authentications`
--

LOCK TABLES `mm_mem_third_party_authentications` WRITE;
/*!40000 ALTER TABLE `mm_mem_third_party_authentications` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_mem_third_party_authentications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_mem_wish_brands`
--

DROP TABLE IF EXISTS `mm_mem_wish_brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_mem_wish_brands` (
  `member_id` bigint unsigned NOT NULL COMMENT '좋아요 한 회원 고유키(mm_mem_members.id)',
  `brand_id` bigint unsigned NOT NULL COMMENT '좋아요 한 브랜드 고유키(mm_shp_brand.id)',
  `created_at` datetime NOT NULL COMMENT '좋아요 한 시간',
  KEY `mm_shp_liked_brands_brand_id_index` (`brand_id`),
  KEY `mm_shp_liked_brands_member_id_index` (`member_id`),
  KEY `mm_shp_liked_brands_created_at_index` (`created_at` DESC)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='좋아요 한 브랜드 목록';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_mem_wish_brands`
--

LOCK TABLES `mm_mem_wish_brands` WRITE;
/*!40000 ALTER TABLE `mm_mem_wish_brands` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_mem_wish_brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_mem_wish_goods`
--

DROP TABLE IF EXISTS `mm_mem_wish_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_mem_wish_goods` (
  `member_id` bigint unsigned NOT NULL COMMENT '회원 코드 (mm_mem_members.id)',
  `goods_id` bigint unsigned NOT NULL COMMENT '상품 고유번호 (mm_gds_product.id)',
  `category_code` char(9) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '카테고리 코드(mm_gds_categories.code)',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '등록 일시',
  `updated_at` datetime DEFAULT NULL,
  `folder_id` bigint unsigned DEFAULT '0' COMMENT '담은 폴더번호',
  KEY `mm_mem_wish_goods_created_at_index` (`created_at`),
  KEY `mm_mem_wish_goods_goods_id_index` (`goods_id`),
  KEY `mm_mem_wish_goods_folders_index` (`folder_id`),
  KEY `mm_mem_wish_goods_member_id_index` (`member_id`),
  KEY `mm_mem_wish_goods_category_code_index` (`category_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='찜한 상품';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_mem_wish_goods`
--

LOCK TABLES `mm_mem_wish_goods` WRITE;
/*!40000 ALTER TABLE `mm_mem_wish_goods` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_mem_wish_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_mem_wish_goods_folders`
--

DROP TABLE IF EXISTS `mm_mem_wish_goods_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_mem_wish_goods_folders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '폴더 고유키',
  `member_id` bigint unsigned NOT NULL COMMENT '폴더를 소유하는 회원 고유키(mm_mem_members.id)',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '폴더명',
  `order_seq` int unsigned NOT NULL DEFAULT '0' COMMENT '정렬 순서값',
  `created_at` datetime NOT NULL COMMENT '폴더 생성일',
  `updated_at` datetime DEFAULT NULL COMMENT '폴더 수정일',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mm_mem_wish_goods_folders_unique` (`member_id`,`name`),
  KEY `mm_mem_wish_goods_folders_member_id_index` (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='찜한 상품 폴더';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_mem_wish_goods_folders`
--

LOCK TABLES `mm_mem_wish_goods_folders` WRITE;
/*!40000 ALTER TABLE `mm_mem_wish_goods_folders` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_mem_wish_goods_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_mem_withdraws`
--

DROP TABLE IF EXISTS `mm_mem_withdraws`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_mem_withdraws` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '고유번호',
  `member_login_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '회원 아이디',
  `member_id` bigint unsigned DEFAULT NULL COMMENT '회원 고유번호 (mm_mem_members.id)',
  `member_code` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '회원 코드 (mm_mem_members.code)',
  `reason_code` bigint unsigned NOT NULL COMMENT '탈퇴 사유 관리코드',
  `reason_message` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '상세이유',
  `withdraw_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '탈퇴일시',
  `ci` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '안심체크 아이핀CI',
  `di` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '안심체크 아이핀DI',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='탈퇴사유';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_mem_withdraws`
--

LOCK TABLES `mm_mem_withdraws` WRITE;
/*!40000 ALTER TABLE `mm_mem_withdraws` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_mem_withdraws` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_mkt_app_push_send_logs`
--

DROP TABLE IF EXISTS `mm_mkt_app_push_send_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_mkt_app_push_send_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `push_id` bigint unsigned NOT NULL COMMENT '푸시 테이블 고유번호(mm_mkt_app_pushes.id)',
  `android_success_count` int NOT NULL DEFAULT '0' COMMENT '안드로이드 발송 성공 카운트',
  `android_fail_count` int NOT NULL DEFAULT '0' COMMENT '안드로이드 발송 실패 카운트',
  `ios_success_count` int NOT NULL DEFAULT '0' COMMENT 'IOS 발송 성공 카운트',
  `ios_fail_count` int NOT NULL DEFAULT '0' COMMENT 'IOS 발송 실패 카운트',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '등록 일시',
  PRIMARY KEY (`id`),
  KEY `mm_mkt_app_push_send_logs_pushid_index` (`push_id`) USING BTREE,
  KEY `mm_mkt_app_push_send_logs_createdat_index` (`created_at`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='발송된 푸시 로그';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_mkt_app_push_send_logs`
--

LOCK TABLES `mm_mkt_app_push_send_logs` WRITE;
/*!40000 ALTER TABLE `mm_mkt_app_push_send_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_mkt_app_push_send_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_mkt_app_push_testers`
--

DROP TABLE IF EXISTS `mm_mkt_app_push_testers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_mkt_app_push_testers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `member_id` bigint unsigned NOT NULL COMMENT '회원 고유번호(mm_mem_members.id)',
  `device_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '기기명',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '등록 일시',
  `deleted_at` datetime DEFAULT NULL COMMENT '삭제 일시(softDeletes)',
  PRIMARY KEY (`id`),
  KEY `mm_mkt_app_push_testers_member_id_index` (`member_id`),
  KEY `mm_mkt_app_push_testers_createdat_index` (`created_at`) USING BTREE,
  KEY `mm_mkt_app_push_testers_deletedat_index` (`deleted_at`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='푸시 테스터 정보';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_mkt_app_push_testers`
--

LOCK TABLES `mm_mkt_app_push_testers` WRITE;
/*!40000 ALTER TABLE `mm_mkt_app_push_testers` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_mkt_app_push_testers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_mkt_app_pushes`
--

DROP TABLE IF EXISTS `mm_mkt_app_pushes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_mkt_app_pushes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '제목',
  `content` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '내용',
  `link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '링크',
  `is_for_test` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '내부 테스트용 여부',
  `has_image` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '이미지 여부',
  `alt` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '이미지 대체 텍스트',
  `state` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '발송 상태(0: 발송 예정, 1: 발송완료, 2: 발송 중 오류 발생)',
  `send_at` datetime NOT NULL COMMENT '발송 일시',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '등록 일시',
  `updated_at` datetime DEFAULT NULL COMMENT '수정 일시',
  `deleted_at` datetime DEFAULT NULL COMMENT '삭제 일시(softDeletes)',
  `fail_message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '실패 메시지',
  PRIMARY KEY (`id`),
  KEY `mm_mkt_app_pushes_title_index` (`title`) USING BTREE,
  KEY `mm_mkt_app_pushes_send_at_index` (`send_at`) USING BTREE,
  KEY `mm_mkt_app_pushes_deletedat_index` (`deleted_at`) USING BTREE,
  KEY `mm_mkt_app_pushes_createdat_index` (`created_at`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='발송 푸시 정보';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_mkt_app_pushes`
--

LOCK TABLES `mm_mkt_app_pushes` WRITE;
/*!40000 ALTER TABLE `mm_mkt_app_pushes` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_mkt_app_pushes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_mkt_unsubscribe_sms`
--

DROP TABLE IF EXISTS `mm_mkt_unsubscribe_sms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_mkt_unsubscribe_sms` (
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '수신거부 대상 연락처',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_mkt_unsubscribe_sms`
--

LOCK TABLES `mm_mkt_unsubscribe_sms` WRITE;
/*!40000 ALTER TABLE `mm_mkt_unsubscribe_sms` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_mkt_unsubscribe_sms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_mod_goodsflow_contract_rates`
--

DROP TABLE IF EXISTS `mm_mod_goodsflow_contract_rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_mod_goodsflow_contract_rates` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `request_key` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '굿스플로연동 요청키',
  `box_size` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '박스규격코드 굿스플로 배송서비스 참조',
  `sg_fare` int unsigned NOT NULL DEFAULT '0' COMMENT '선불배송료',
  `sc_fare` int NOT NULL DEFAULT '0' COMMENT '신용배송료',
  `bh_fare` int NOT NULL DEFAULT '0' COMMENT '착불배송료',
  `rt_fare` int NOT NULL DEFAULT '0' COMMENT '반품배송료',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`request_key`,`box_size`),
  KEY `requestkey_index` (`request_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='삭제예정';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_mod_goodsflow_contract_rates`
--

LOCK TABLES `mm_mod_goodsflow_contract_rates` WRITE;
/*!40000 ALTER TABLE `mm_mod_goodsflow_contract_rates` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_mod_goodsflow_contract_rates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_mod_goodsflow_contracts`
--

DROP TABLE IF EXISTS `mm_mod_goodsflow_contracts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_mod_goodsflow_contracts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '고유번호',
  `request_key` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '굿스플로 서비스키',
  `partner_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '연동판매자코드 mm_adm_sellers.id',
  `center_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '발송지코드 mm_shp_shipping_rules.id',
  `deliver_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '굿스플로 배송코드',
  `verification_type` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '승인방법',
  `biz_no` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '사업자번호 -(dash)제외',
  `contract_no` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '택배사 계약코드',
  `contract_cust_no` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '택배사 업체코드',
  `mall_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '판매자id',
  `mall_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '판매자업체명',
  `mall_user_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '판매자명',
  `mall_user_tel1` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '판매자 전화1',
  `mall_user_tel2` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '판매자 전화2',
  `mall_user_email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '판매자 이메일',
  `center_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '발송지명',
  `center_zip_code` varchar(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '발송지 우편번호',
  `center_addr1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '발송지 기본주소',
  `center_addr2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '발송지 상세주소',
  `center_tel1` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '발송지 전화1',
  `center_tel2` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '발송지 전화2',
  `shipping_fee` int DEFAULT NULL COMMENT '도선료',
  `flight_fee` int DEFAULT NULL COMMENT '항공료',
  `is_apply` tinyint(1) NOT NULL DEFAULT '0' COMMENT '승인여부 0:미승인 1:승인 8:거부 9:취소',
  `verified_result` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N' COMMENT '굿스플로 승인여부',
  `verified_result_code` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '굿스플로 승인결과 코드',
  `verified_msg` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '굿스플로 승인결과 메세지',
  `verified_datetime` varchar(14) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '굿스플로 승인일시',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '등록 일시',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '수정 일시',
  `deleted_at` datetime DEFAULT NULL COMMENT '삭제 일시',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='굿스플로 협력사 사용등록 정보 테이블 (굿스플로 배송서비스 - 주문등록시 사용되는 정보)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_mod_goodsflow_contracts`
--

LOCK TABLES `mm_mod_goodsflow_contracts` WRITE;
/*!40000 ALTER TABLE `mm_mod_goodsflow_contracts` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_mod_goodsflow_contracts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_mod_goodsflow_receive_traces`
--

DROP TABLE IF EXISTS `mm_mod_goodsflow_receive_traces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_mod_goodsflow_receive_traces` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `trans_unique_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `seq` int NOT NULL,
  `section_code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `logistics_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `dlv_stat_type` smallint NOT NULL,
  `proc_date_time` bigint DEFAULT NULL,
  `branch_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch_tel` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employee_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employee_tel` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employee_msg` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `taker` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exception_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exception_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `error_code` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `error_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `def_code1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `def_code2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_date_time` bigint DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `transuniquecode_index` (`trans_unique_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='굿스플로 배송추적 결과 수신 기록 테이블 ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_mod_goodsflow_receive_traces`
--

LOCK TABLES `mm_mod_goodsflow_receive_traces` WRITE;
/*!40000 ALTER TABLE `mm_mod_goodsflow_receive_traces` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_mod_goodsflow_receive_traces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_mod_goodsflow_trace_regists`
--

DROP TABLE IF EXISTS `mm_mod_goodsflow_trace_regists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_mod_goodsflow_trace_regists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '고유번호',
  `trans_unique_code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '추적고유번호',
  `request_body` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '요청데이터 json 문자열',
  `result` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'response값',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '등록 일시',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `trans_unique_code_index` (`trans_unique_code`),
  KEY `created_at` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='굿스플로 배송추적요청 기록 테이블';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_mod_goodsflow_trace_regists`
--

LOCK TABLES `mm_mod_goodsflow_trace_regists` WRITE;
/*!40000 ALTER TABLE `mm_mod_goodsflow_trace_regists` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_mod_goodsflow_trace_regists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_ord_cancel_targets`
--

DROP TABLE IF EXISTS `mm_ord_cancel_targets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_ord_cancel_targets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `cancel_id` bigint unsigned NOT NULL COMMENT '취소번호',
  `order_item_id` bigint unsigned NOT NULL COMMENT '대상 주문 아이템 번호',
  `partnershop_item_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '제휴사 주문 아이템 번호',
  `partnershop_cancel_target_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '제휴사 취소주문 아이템 번호',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `confirmed_at` timestamp NULL DEFAULT NULL COMMENT '취소완료일시',
  `rejected_at` timestamp NULL DEFAULT NULL COMMENT '취소거부일시',
  `recanted_at` timestamp NULL DEFAULT NULL COMMENT '취소철회일시',
  `status_code` int unsigned NOT NULL COMMENT '상태코드 enum@Order/StatusCode',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_ord_cancel_targets`
--

LOCK TABLES `mm_ord_cancel_targets` WRITE;
/*!40000 ALTER TABLE `mm_ord_cancel_targets` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_ord_cancel_targets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_ord_cancels`
--

DROP TABLE IF EXISTS `mm_ord_cancels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_ord_cancels` (
  `id` bigint unsigned NOT NULL COMMENT '취소번호',
  `order_id` bigint unsigned NOT NULL COMMENT '취소발생 주문번호',
  `partnershop_cancel_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '제휴사 취소주문번호',
  `partnershop_interface_cancel_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '제휴사 인터페이스에서 관리되는 고유 취소 키',
  `responsibility_to` int unsigned NOT NULL COMMENT '책임대상 enum@Order/ResponsibilityTo',
  `reason_code` int unsigned NOT NULL COMMENT '취소사유 코드 enum@Order/CancelReason',
  `reason_message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '취소사유 메세지',
  `is_cancel_by_orderer` tinyint(1) NOT NULL COMMENT '고객 취소요청여부',
  `refund_account_bank_code` int unsigned DEFAULT NULL COMMENT '계좌환불 발생시 사용할 계좌 은행 코드 enum@Payment/BankCode',
  `refund_account_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '계좌환불 발생시 사용할 계좌번호',
  `refund_account_owner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '계좌환불 발생시 사용할 계좌주 성명',
  `requested_at` timestamp NOT NULL COMMENT '취소요청 발생일시',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `pack_id` bigint unsigned NOT NULL COMMENT '대상 포장 번호',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_ord_cancels`
--

LOCK TABLES `mm_ord_cancels` WRITE;
/*!40000 ALTER TABLE `mm_ord_cancels` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_ord_cancels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_ord_cash_receipts`
--

DROP TABLE IF EXISTS `mm_ord_cash_receipts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_ord_cash_receipts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '대상 결제시 발생했던 거래번호(payment_items.transaction_id)',
  `handler` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '처리자(대체로 pg를 의미)',
  `handler_receipt_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '처리자 컨텍스트에서 별도의 현금영수증 고유코드가 관리되는 경우 사용',
  `receipt_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '현금영수증 승인번호',
  `order_id` bigint unsigned NOT NULL COMMENT '주문번호',
  `trade_at` timestamp NOT NULL COMMENT '거래일자',
  `type` tinyint unsigned NOT NULL COMMENT '현금영수증 발급 타입 enum@Order/CashReceiptApplyType',
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '현금영수증 발급용 키(소득공제 -> 휴대폰번호/주민등록번호(자사몰은 안씀), 지출증빙 -> 사업자번호...)',
  `amount` int unsigned NOT NULL COMMENT '발행대상 금액',
  `vat` int unsigned NOT NULL COMMENT '부가가치세액',
  `is_canceled` tinyint(1) NOT NULL DEFAULT '0' COMMENT '발급취소여부',
  `canceled_at` timestamp NULL DEFAULT NULL COMMENT '취소시간',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_ord_cash_receipts`
--

LOCK TABLES `mm_ord_cash_receipts` WRITE;
/*!40000 ALTER TABLE `mm_ord_cash_receipts` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_ord_cash_receipts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_ord_exchange_targets`
--

DROP TABLE IF EXISTS `mm_ord_exchange_targets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_ord_exchange_targets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `exchange_id` bigint unsigned NOT NULL COMMENT '교환번호',
  `order_item_id` bigint unsigned NOT NULL COMMENT '대상 주문 아이템 번호',
  `partnershop_item_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '제휴사 주문 아이템 번호',
  `partnershop_exchange_target_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '제휴사 교환주문 아이템 번호',
  `exchange_goods_id` bigint unsigned NOT NULL COMMENT '교환상품키',
  `exchange_goods_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '교환시점 상품명',
  `exchange_goods_type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '교환시점 상품 유형',
  `exchange_goods_margin` decimal(5,4) NOT NULL COMMENT '교환시점 상품 마진',
  `exchange_goods_list_price` int NOT NULL COMMENT '교환시점 상품 정가',
  `exchange_goods_sell_price` int NOT NULL COMMENT '교환시점 상품 판매가',
  `exchange_goods_base_discounted_price` int NOT NULL COMMENT '교환시점 상품 1차 쿠폰 적용가',
  `exchange_option_id` bigint unsigned NOT NULL COMMENT '교환옵션키',
  `exchange_option_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '교환시점 구매옵션명',
  `exchange_option_extra_amount` int NOT NULL DEFAULT '0' COMMENT '교환시점 구매옵션 추감금액',
  `holding_reason_code` int unsigned DEFAULT NULL COMMENT '보류 사유 코드 enum@Order/ExchangeHoldingReason',
  `holding_reason_message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '보류 사유',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status_code` int unsigned NOT NULL COMMENT '상태코드 enum@Order/StatusCode',
  `exchange_applied_at` timestamp NULL DEFAULT NULL COMMENT '교환 신청일시',
  `exchange_retrieved_at` timestamp NULL DEFAULT NULL COMMENT '교환 회수 완료일시',
  `exchange_finished_at` timestamp NULL DEFAULT NULL COMMENT '교환 확정일시',
  `transferred_to_return_at` datetime DEFAULT NULL COMMENT '반품 전환일시',
  `exchange_recanted_at` timestamp NULL DEFAULT NULL COMMENT '교환 철회일시',
  `exchange_holding_at` timestamp NULL DEFAULT NULL COMMENT '교환 보류일시',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_ord_exchange_targets`
--

LOCK TABLES `mm_ord_exchange_targets` WRITE;
/*!40000 ALTER TABLE `mm_ord_exchange_targets` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_ord_exchange_targets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_ord_exchanges`
--

DROP TABLE IF EXISTS `mm_ord_exchanges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_ord_exchanges` (
  `id` bigint unsigned NOT NULL COMMENT '교환번호',
  `order_id` bigint unsigned NOT NULL COMMENT '교환발생 주문번호',
  `partnershop_order_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '제휴사 주문번호',
  `partnershop_exchange_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '제휴사 교환주문번호',
  `responsibility_to` int unsigned NOT NULL COMMENT '책임대상 enum@Order/ResponsibilityTo',
  `reason_code` int unsigned NOT NULL COMMENT '교환사유 코드 enum@Order/ExchangeReason',
  `reason_message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '교환사유 메세지',
  `is_exchange_by_orderer` tinyint(1) NOT NULL COMMENT '고객 교환요청여부',
  `retrieve_and_release_shipping_price_pay_type` tinyint unsigned NOT NULL COMMENT '회수+재출고 배송비 지불타입 enum@Shop/Shipping/RetrieveAndReleaseShippingPricePayType',
  `partnershop_retrieve_and_release_shipping_price_pay_message` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '제휴사 회수+재출고 배송비에 대한 처리 메시지(자사몰 주문은 해당없음)',
  `retrieve_and_release_shipping_price_payment_id` bigint unsigned DEFAULT NULL COMMENT '회수+재출고 배송비 지불결제번호(즉시결제시)',
  `retrieve_apply_type` tinyint unsigned NOT NULL COMMENT '회수배송 신청 타입 enum@Shop/Shipping/RetrieveApplyType',
  `retrieve_delivery_company_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '회수 배송사 코드 enum@Shop/Shipping/DeliveryCompany',
  `retrieve_invoice_no` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '회수 운송장번호',
  `retrieve_from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '회수 보내는 사람',
  `retrieve_from_zipcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '회수 출발지 우편번호',
  `retrieve_from_base_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '회수 출발지 기본주소',
  `retrieve_from_detail_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '회수 출발지 상세주소',
  `retrieve_from_tel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '회수 출발지 연락처',
  `retrieve_to_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '회수 받는 사람',
  `retrieve_to_zipcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '회수 도착지 우편번호',
  `retrieve_to_base_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '회수 도착지 기본주소',
  `retrieve_to_detail_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '회수 도착지 상세주소',
  `retrieve_to_tel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '회수 도착지 연락처',
  `will_release_to_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '재출고시 받는 사람',
  `will_release_to_zipcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '재출고시 도착지 우편번호',
  `will_release_to_base_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '재출고시 도착지 기본주소',
  `will_release_to_detail_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '재출고시 도착지 상세주소',
  `will_release_to_tel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '재출고시 도착지 연락처',
  `refund_account_bank_code` int unsigned DEFAULT NULL COMMENT '계좌환불 발생시 사용할 계좌 은행 코드 enum@Payment/BankCode',
  `refund_account_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '계좌환불 발생시 사용할 계좌번호',
  `refund_account_owner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '계좌환불 발생시 사용할 계좌주 성명',
  `requested_at` timestamp NOT NULL COMMENT '교환요청 발생일시',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `retrieve_center_id` bigint unsigned NOT NULL COMMENT '회수배송지 번호',
  `pack_id` bigint unsigned NOT NULL COMMENT '대상 포장 번호',
  `charged_retrieve_shipping_price` int unsigned NOT NULL DEFAULT '0' COMMENT '청구 회수배송비',
  `charged_retrieve_extra_shipping_price` int unsigned NOT NULL DEFAULT '0' COMMENT '청구 회수 추가배송비(도서산간등)',
  `charged_release_shipping_price` int unsigned NOT NULL DEFAULT '0' COMMENT '청구 재출고배송비',
  `charged_release_extra_shipping_price` int unsigned NOT NULL DEFAULT '0' COMMENT '청구 재출고 추가배송비(도서산간등)',
  PRIMARY KEY (`id`),
  KEY `mm_ord_exchanges_partnershop_order_id_index` (`partnershop_order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_ord_exchanges`
--

LOCK TABLES `mm_ord_exchanges` WRITE;
/*!40000 ALTER TABLE `mm_ord_exchanges` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_ord_exchanges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_ord_giveaway_regists`
--

DROP TABLE IF EXISTS `mm_ord_giveaway_regists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_ord_giveaway_regists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `giveaway_id` bigint unsigned NOT NULL COMMENT '사은품 코드(mm_gds_gifts.id',
  `member_id` bigint unsigned DEFAULT NULL COMMENT '회원 코드(mm_mem_members.id',
  `order_id` bigint unsigned DEFAULT NULL COMMENT '주문번호',
  `order_item_id` bigint unsigned DEFAULT NULL COMMENT '주문 아이템 번호',
  `goods_id` bigint unsigned DEFAULT NULL COMMENT '상품 고유번호',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mm_gds_gift_regists_gift_id_index` (`giveaway_id`),
  KEY `mm_gds_gift_regists_member_id_index` (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_ord_giveaway_regists`
--

LOCK TABLES `mm_ord_giveaway_regists` WRITE;
/*!40000 ALTER TABLE `mm_ord_giveaway_regists` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_ord_giveaway_regists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_ord_item_discounts`
--

DROP TABLE IF EXISTS `mm_ord_item_discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_ord_item_discounts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `item_id` bigint unsigned NOT NULL COMMENT '대상 주문 아이템 번호',
  `discount_code` tinyint unsigned NOT NULL COMMENT '할인 코드 enum@DiscountCode',
  `div_in_discount_code` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '동일 할인 코드 내 구분값(예: 할인 코드가 EP쿠폰 일때 naver, daum 등으로 세부구분하고 싶을 때 사용)',
  `discount_reference_id` bigint unsigned DEFAULT NULL COMMENT '할인 참조번호(base_coupon 이라면 base_coupon_id, 심야 할인이라면 night_sale_id 등.. 실제 다형성까지 고려하는 것은 아니고(아직 그럴 수요가 없음) 혹시 추적필요시 사용하는 값)',
  `amount` int NOT NULL COMMENT '할인액',
  `mall_amount` int NOT NULL COMMENT '몰 부담 할인액',
  `seller_amount` int NOT NULL COMMENT '판매자 부담 할인액',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mm_ord_item_discounts_item_id_index` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_ord_item_discounts`
--

LOCK TABLES `mm_ord_item_discounts` WRITE;
/*!40000 ALTER TABLE `mm_ord_item_discounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_ord_item_discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_ord_item_sale_reserves`
--

DROP TABLE IF EXISTS `mm_ord_item_sale_reserves`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_ord_item_sale_reserves` (
  `item_id` bigint unsigned NOT NULL COMMENT '대상 주문 아이템 번호',
  `sale_reserve_id` bigint unsigned NOT NULL COMMENT '적용된 예약판매정보 번호',
  `start_at` datetime DEFAULT NULL COMMENT '예약판매시작일',
  `end_at` datetime DEFAULT NULL COMMENT '예약판매종료일',
  `ship_start_at` datetime DEFAULT NULL COMMENT '예약배송시작일',
  `ship_end_at` datetime DEFAULT NULL COMMENT '예약배송종료일',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_ord_item_sale_reserves`
--

LOCK TABLES `mm_ord_item_sale_reserves` WRITE;
/*!40000 ALTER TABLE `mm_ord_item_sale_reserves` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_ord_item_sale_reserves` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_ord_item_status_changes`
--

DROP TABLE IF EXISTS `mm_ord_item_status_changes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_ord_item_status_changes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `item_id` bigint unsigned NOT NULL COMMENT '대상 주문 아이템 번호',
  `before_status_code` int unsigned DEFAULT NULL COMMENT '이전 상태코드',
  `status_code` int unsigned NOT NULL COMMENT '현재 상태코드',
  `modifier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '수정자 정보',
  `modifier_message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '수정관리 메세지',
  `changed_at` timestamp NOT NULL COMMENT '변경시간',
  PRIMARY KEY (`id`),
  KEY `mm_ord_item_status_changes_item_id_index` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_ord_item_status_changes`
--

LOCK TABLES `mm_ord_item_status_changes` WRITE;
/*!40000 ALTER TABLE `mm_ord_item_status_changes` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_ord_item_status_changes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_ord_items`
--

DROP TABLE IF EXISTS `mm_ord_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_ord_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL COMMENT '주문번호',
  `prev_item_id` bigint unsigned DEFAULT NULL COMMENT '(교환 신규 주문 아이템인 경우 참조하는) 이전 주문 아이템번호',
  `origin_item_id` bigint unsigned DEFAULT NULL COMMENT '(교환 신규 주문 아이템인 경우 참조하는) 최초 주문 아이템번호',
  `line` int unsigned NOT NULL COMMENT '주문 유닛 내 순번',
  `pack_id` bigint unsigned NOT NULL COMMENT '포장번호',
  `partnershop_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'self' COMMENT '주문 발생처(self: 자사주문)',
  `partnershop_item_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '제휴 주문시 제휴사 주문 아이템번호',
  `goods_id` bigint unsigned NOT NULL COMMENT '상품키',
  `goods_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '상품명',
  `goods_type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '상품 유형',
  `goods_margin` decimal(5,4) NOT NULL COMMENT '당시 상품 마진',
  `goods_list_price` int NOT NULL COMMENT '당시 상품 정가',
  `goods_sell_price` int NOT NULL COMMENT '당시 상품 판매가',
  `goods_base_discounted_price` int NOT NULL COMMENT '당시 상품 1차 쿠폰 적용가',
  `partnershop_goods_sell_price` int DEFAULT NULL COMMENT '제휴사 상품 판매가',
  `partnershop_goods_payment_price` int DEFAULT NULL COMMENT '제휴사 상품 결제가',
  `partnershop_goods_discount_amount` int DEFAULT NULL COMMENT '제휴사 할인액(적립금 포함)',
  `option_id` bigint unsigned NOT NULL COMMENT '구매옵션키',
  `option_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '구매옵션명',
  `option_extra_amount` int NOT NULL DEFAULT '0' COMMENT '구매옵션 추감금액',
  `goods_category_code` varchar(9) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '상품 카테고리 코드',
  `brand_id` bigint unsigned NOT NULL COMMENT '브랜드키',
  `brand_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '브랜드명',
  `discounted_price` int NOT NULL COMMENT '당시 할인 적용된 결제기준가',
  `tax_free_amount` int NOT NULL COMMENT 'discounted_price 중에서 면세대상금액',
  `middle_user_id` bigint unsigned NOT NULL COMMENT '중간관리자 키',
  `middle_user_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '중간관리자 이름',
  `seller_id` bigint unsigned NOT NULL COMMENT '셀러 키',
  `seller_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '셀러 이름',
  `md_id` bigint unsigned NOT NULL COMMENT '담당 MD 키',
  `statistics_code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '매출분류 코드',
  `settlement_code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '정산 코드',
  `status_code` int unsigned NOT NULL COMMENT '최근(현재) 상태코드',
  `release_limit` timestamp NULL DEFAULT NULL COMMENT '출고 처리 기한',
  `will_release_at` timestamp NULL DEFAULT NULL COMMENT '출고 예정일',
  `release_id` bigint unsigned DEFAULT NULL COMMENT '실출고번호',
  `delivery_company_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '배송사 코드',
  `invoice_no` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '운송장번호',
  `purchase_point` int unsigned NOT NULL COMMENT '적립될 구매적립금',
  `given_purchase_point` int unsigned NOT NULL COMMENT '적립된 구매적립금',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mm_ord_items_order_id_index` (`order_id`),
  KEY `mm_ord_items_status_code_index` (`status_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_ord_items`
--

LOCK TABLES `mm_ord_items` WRITE;
/*!40000 ALTER TABLE `mm_ord_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_ord_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_ord_orders`
--

DROP TABLE IF EXISTS `mm_ord_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_ord_orders` (
  `id` bigint unsigned NOT NULL COMMENT '주문번호',
  `prev_order_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(교환 신규 주문인 경우 참조하는) 이전 주문번호',
  `origin_order_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(교환 신규 주문인 경우 참조하는) 최초 주문번호',
  `exchange_id` bigint unsigned DEFAULT NULL COMMENT '(교환 신규 주문인 경우 참조하는) 교환번호',
  `partnershop_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'self' COMMENT '주문 발생처(self: 자사주문)',
  `partnershop_order_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '제휴주문시 제휴사 주문번호',
  `partnershop_group_no` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '제휴주문시 제휴사 묶음번호',
  `member_id` bigint unsigned DEFAULT NULL COMMENT '회원주문시 회원번호',
  `member_grade_id` bigint unsigned DEFAULT NULL COMMENT '회원주문시 회원 등급번호',
  `orderer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '주문자 이름',
  `orderer_phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '주문자 연락처',
  `orderer_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '주문자 이메일 주소',
  `receiver_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '받는 사람 이름',
  `receiver_phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '받는 사람 연락처',
  `receiver_optional_tel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '받는 사람 연락처(예비)',
  `shipping_to_zip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '배송지 우편번호',
  `shipping_to_base_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '배송지 기본주소',
  `shipping_to_detail_address` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '배송지 상세주소',
  `shipping_message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '배송메시지',
  `cash_receipt_apply_type` tinyint unsigned NOT NULL COMMENT '현금영수증 발급 타입 enum@Order/CashReceiptApplyType',
  `cash_receipt_apply_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '현금영수증 발급용 키(소득공제 -> 휴대폰번호/주민등록번호(자사몰은 안씀), 지출증빙 -> 사업자번호...)',
  `refund_account_bank_code` int unsigned DEFAULT NULL COMMENT '계좌환불 발생시 사용할 계좌 은행 코드 enum@Payment/BankCode',
  `refund_account_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '계좌환불 발생시 사용할 계좌번호',
  `refund_account_owner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '계좌환불 발생시 사용할 계좌주 성명',
  `personal_clearance_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '개인통관고유번호',
  `personal_clearance_code_offer_to_seller` tinyint(1) NOT NULL DEFAULT '0' COMMENT '개인통관고유번호 셀러제공 동의 여부',
  `ordered_at` timestamp NOT NULL COMMENT '주문시간',
  `payment_id` bigint unsigned NOT NULL COMMENT '결제 키',
  `affiliate_code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '매출코드',
  `affiliate_tracking_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '매출제휴 추적 id',
  `affiliate_access_token` text COLLATE utf8mb4_unicode_ci COMMENT '매출제휴 사용자 접근토큰',
  `affiliate_category` int unsigned NOT NULL COMMENT '매출 출처 대표분류(PC/모바일/앱/오프라인/제휴 등 affiliate_code보다 포괄적인 개념)',
  `ip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '주문 발생 클라이언트 IP',
  `machine_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '주문 생성 머신명',
  `user_agent` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '주문 클라이언트 UserAgent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `receive_address_id` bigint unsigned DEFAULT NULL COMMENT '회원주문의 경우 회원별 배송지 번호',
  PRIMARY KEY (`id`),
  KEY `mm_ord_orders_affiliate_code_index` (`affiliate_code`),
  KEY `mm_ord_orders_affiliate_category_index` (`affiliate_category`),
  KEY `mm_ord_orders_ordered_at_index` (`ordered_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_ord_orders`
--

LOCK TABLES `mm_ord_orders` WRITE;
/*!40000 ALTER TABLE `mm_ord_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_ord_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_ord_pack_exempt_shipping_prices`
--

DROP TABLE IF EXISTS `mm_ord_pack_exempt_shipping_prices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_ord_pack_exempt_shipping_prices` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `pack_id` bigint unsigned NOT NULL COMMENT '해당 팩',
  `amount` int NOT NULL COMMENT '변동값(+: 면제배송비 부과, -: 부과철회)',
  `change_type` tinyint unsigned NOT NULL COMMENT '변동 발생사유 enum@Shop/Shipping/ExemptShippingPriceChangeType',
  `change_reference_id` bigint unsigned DEFAULT NULL COMMENT '변동 발생주체 참조키(주문취소로 인한 부과변동이라면 해당 취소번호 등)',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_ord_pack_exempt_shipping_prices`
--

LOCK TABLES `mm_ord_pack_exempt_shipping_prices` WRITE;
/*!40000 ALTER TABLE `mm_ord_pack_exempt_shipping_prices` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_ord_pack_exempt_shipping_prices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_ord_pack_initial_shipping_prices`
--

DROP TABLE IF EXISTS `mm_ord_pack_initial_shipping_prices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_ord_pack_initial_shipping_prices` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `pack_id` bigint unsigned NOT NULL COMMENT '해당 팩',
  `amount` int NOT NULL COMMENT '변동값(+: 반품철회/취소철회 등 초도배송비 재부여, -: 반품요청/취소요청 등 초도배송비 무효)',
  `change_type` tinyint unsigned NOT NULL COMMENT '변동 발생사유 enum@Shop/Shipping/InitialShippingPriceChangeType',
  `change_reference_id` bigint unsigned DEFAULT NULL COMMENT '변동 발생주체 참조키(주문취소로 인한 변동이라면 해당 취소번호 등)',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_ord_pack_initial_shipping_prices`
--

LOCK TABLES `mm_ord_pack_initial_shipping_prices` WRITE;
/*!40000 ALTER TABLE `mm_ord_pack_initial_shipping_prices` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_ord_pack_initial_shipping_prices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_ord_packs`
--

DROP TABLE IF EXISTS `mm_ord_packs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_ord_packs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL COMMENT '주문번호',
  `shipping_rule_id` bigint unsigned NOT NULL COMMENT '배송정책 키',
  `shipping_rule_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '배송정책명',
  `partnershop_pack_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '제휴사 출고 고유번호',
  `shipping_type` tinyint unsigned NOT NULL COMMENT '(정책)배송구분',
  `delivery_company_code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(정책)택배사 코드',
  `shipping_price_payment_type` tinyint unsigned NOT NULL COMMENT '(정책)배송비 선결제정책',
  `is_charge_on_each` tinyint(1) NOT NULL COMMENT '(정책)개별배송여부',
  `shipping_price_policy` tinyint unsigned NOT NULL COMMENT '(정책)배송비 부과정책',
  `shipping_price` int NOT NULL COMMENT '(정책) 배송비',
  `extra_shipping_price` int NOT NULL COMMENT '(정책) 추가배송비',
  `retrieve_shipping_price` int NOT NULL COMMENT '(정책) 회수배송비',
  `exchange_shipping_price` int NOT NULL COMMENT '(정책) 교환배송비',
  `charged_shipping_price` int NOT NULL COMMENT '부과된 배송비',
  `charged_extra_shipping_price` int NOT NULL COMMENT '부과된 추가배송비',
  `tax_free_shipping_price` int NOT NULL DEFAULT '0' COMMENT '부과된 총 배송비 중 면세 금액',
  `conditional_free_from` int NOT NULL COMMENT '(정책)배송비 조건부 부과일때 무료배송되는 금액조건',
  `condition_amount` int NOT NULL COMMENT '조건부 무료배송 조건 대상금액(보통.. 결제금액 - 배송비)',
  `is_exempt_shipping_price_resolved` tinyint(1) NOT NULL DEFAULT '0' COMMENT '해당 팩의 면제배송비 해결여부(발생할 일이 없어도 해결로 본다)',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_initial_shipping_price_refunded` tinyint(1) NOT NULL DEFAULT '0' COMMENT '초도배송비 반환됨 여부',
  `exempt_shipping_price_resolvable_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exempt_shipping_price_resolvable_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mm_ord_packs_order_id_index` (`order_id`),
  KEY `resolvable` (`exempt_shipping_price_resolvable_type`,`exempt_shipping_price_resolvable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_ord_packs`
--

LOCK TABLES `mm_ord_packs` WRITE;
/*!40000 ALTER TABLE `mm_ord_packs` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_ord_packs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_ord_payment_item_extend_cards`
--

DROP TABLE IF EXISTS `mm_ord_payment_item_extend_cards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_ord_payment_item_extend_cards` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `card_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '결제 카드사 통합코드 enum@Payment/CardCode',
  `installment_month` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '할부 개월수',
  `card_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '일부 마스킹 된 카드번호',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_ord_payment_item_extend_cards`
--

LOCK TABLES `mm_ord_payment_item_extend_cards` WRITE;
/*!40000 ALTER TABLE `mm_ord_payment_item_extend_cards` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_ord_payment_item_extend_cards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_ord_payment_item_extend_escrows`
--

DROP TABLE IF EXISTS `mm_ord_payment_item_extend_escrows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_ord_payment_item_extend_escrows` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `bank_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '입금할 가상계좌 은행 통합코드 enum@Payment/BankCode',
  `account_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '입금할 가상계좌번호',
  `depositor_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '입금할 사람 이름',
  `expire_at` timestamp NOT NULL COMMENT '가상계좌 만료예정시간(실제 만료 X(PG사/은행마다 다름), 미입금취소 할 시간 O)',
  `escrow_status_code` tinyint unsigned NOT NULL COMMENT '에스크로 상태 코드 enum@Payment/EscrowStatusCode',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_ord_payment_item_extend_escrows`
--

LOCK TABLES `mm_ord_payment_item_extend_escrows` WRITE;
/*!40000 ALTER TABLE `mm_ord_payment_item_extend_escrows` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_ord_payment_item_extend_escrows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_ord_payment_item_extend_mobiles`
--

DROP TABLE IF EXISTS `mm_ord_payment_item_extend_mobiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_ord_payment_item_extend_mobiles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `carrier_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '결제 통신사 통합코드 enum@Payment/CarrierCode',
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '일부 마스킹 된 결제휴대폰 번호',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_ord_payment_item_extend_mobiles`
--

LOCK TABLES `mm_ord_payment_item_extend_mobiles` WRITE;
/*!40000 ALTER TABLE `mm_ord_payment_item_extend_mobiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_ord_payment_item_extend_mobiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_ord_payment_item_extend_virtual_accounts`
--

DROP TABLE IF EXISTS `mm_ord_payment_item_extend_virtual_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_ord_payment_item_extend_virtual_accounts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `bank_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '입금할 가상계좌 은행 통합코드 enum@Payment/BankCode',
  `account_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '입금할 가상계좌번호',
  `depositor_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '입금할 사람 이름',
  `expire_at` timestamp NOT NULL COMMENT '가상계좌 만료예정시간(실제 만료 X(PG사/은행마다 다름), 미입금취소 할 시간 O)',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_ord_payment_item_extend_virtual_accounts`
--

LOCK TABLES `mm_ord_payment_item_extend_virtual_accounts` WRITE;
/*!40000 ALTER TABLE `mm_ord_payment_item_extend_virtual_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_ord_payment_item_extend_virtual_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_ord_payment_items`
--

DROP TABLE IF EXISTS `mm_ord_payment_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_ord_payment_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `payment_id` bigint unsigned NOT NULL COMMENT '결제 번호',
  `pg_code` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'PG 구분코드 (ex: KCP, KICC, KAKAOPAY...)',
  `method_code` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '결제수단 코드 enum@Payment/Method',
  `transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '결제수단의 트랜잭션 키(tid)',
  `extra_value_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'PG별 추가값 저장컬럼',
  `extra_value_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'PG별 추가값 저장컬럼',
  `extra_value_3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'PG별 추가값 저장컬럼',
  `extra_value_4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'PG별 추가값 저장컬럼',
  `amount` int NOT NULL COMMENT '결제 대상 금액',
  `tax_free_amount` int NOT NULL COMMENT '결제 대상 금액 중 면세 금액',
  `is_paid` tinyint(1) NOT NULL DEFAULT '0' COMMENT '결제완료됨 여부',
  `paid_at` timestamp NULL DEFAULT NULL COMMENT '결제완료시간',
  `extendable_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extendable_id` bigint unsigned DEFAULT NULL,
  `refund_seq` tinyint unsigned NOT NULL COMMENT '복합결제시 환불을 생성할 순서값 0 -> 100',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `paying_token` text COLLATE utf8mb4_unicode_ci COMMENT '앱레이어 지불토큰',
  PRIMARY KEY (`id`),
  KEY `mm_ord_payment_items_extendable_type_extendable_id_index` (`extendable_type`,`extendable_id`),
  KEY `mm_ord_payment_items_method_code_index` (`method_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_ord_payment_items`
--

LOCK TABLES `mm_ord_payment_items` WRITE;
/*!40000 ALTER TABLE `mm_ord_payment_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_ord_payment_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_ord_payments`
--

DROP TABLE IF EXISTS `mm_ord_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_ord_payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `target_type` tinyint unsigned NOT NULL COMMENT '결제 대상 구분 enum@PaymentTargetType',
  `amount` int NOT NULL COMMENT '결제 대상 금액',
  `tax_free_amount` int NOT NULL COMMENT '결제 대상 금액 중 면세 금액',
  `is_paid` tinyint(1) NOT NULL DEFAULT '0' COMMENT '결제완료됨 여부',
  `paid_at` timestamp NULL DEFAULT NULL COMMENT '결제완료시간',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_ord_payments`
--

LOCK TABLES `mm_ord_payments` WRITE;
/*!40000 ALTER TABLE `mm_ord_payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_ord_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_ord_refund_items`
--

DROP TABLE IF EXISTS `mm_ord_refund_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_ord_refund_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `refund_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '환불 번호',
  `for` int unsigned NOT NULL COMMENT '환불 대상구분 enum@Payment/RefundItemFor',
  `for_reference_id` bigint unsigned DEFAULT NULL COMMENT '환불 대상 참조키(상품대금 환불이라면 OrderItem.id 등)',
  `amount` int NOT NULL COMMENT '환불 대상 금액',
  `amount_in_taxfree` int NOT NULL COMMENT '환불 대상 금액 중 면세대상',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_ord_refund_items`
--

LOCK TABLES `mm_ord_refund_items` WRITE;
/*!40000 ALTER TABLE `mm_ord_refund_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_ord_refund_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_ord_refunds`
--

DROP TABLE IF EXISTS `mm_ord_refunds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_ord_refunds` (
  `id` bigint unsigned NOT NULL COMMENT '환불번호',
  `order_id` bigint unsigned NOT NULL COMMENT '대상 주문 번호',
  `cancel_id` bigint unsigned DEFAULT NULL COMMENT '대상 취소 번호',
  `return_id` bigint unsigned DEFAULT NULL COMMENT '대상 반품 번호',
  `exchange_id` bigint unsigned DEFAULT NULL COMMENT '대상 교환 번호',
  `payment_item_id` bigint unsigned NOT NULL COMMENT '대상 결제아이템 번호',
  `amount` int NOT NULL COMMENT '환불 유닛 금액',
  `amount_in_taxfree` int NOT NULL COMMENT '환불 유닛 금액 중 면세대상',
  `status_code` int unsigned NOT NULL COMMENT '현재 환불상태코드 enum@Order/StatusCode',
  `applied_at` timestamp NOT NULL COMMENT '환불요청일시',
  `finished_at` timestamp NULL DEFAULT NULL COMMENT '환불완료일시',
  `failed_at` timestamp NULL DEFAULT NULL COMMENT '최근 실패일시',
  `faild_count` int unsigned NOT NULL DEFAULT '0' COMMENT '실패횟수',
  `refund_account_bank_code` int unsigned DEFAULT NULL COMMENT '계좌환불 발생시 사용할 계좌 은행 코드 enum@Payment/BankCode',
  `refund_account_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '계좌환불 발생시 사용할 계좌번호',
  `refund_account_owner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '계좌환불 발생시 사용할 계좌주 성명',
  `refunded_account_bank_code` int unsigned DEFAULT NULL COMMENT '환불처리된 계좌 은행 코드 enum@Payment/BankCode',
  `refunded_account_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '환불처리된 계좌번호',
  `refunded_account_owner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '환불처리된 계좌주 성명',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `fail_message` text COLLATE utf8mb4_unicode_ci COMMENT '최근 실패메세지',
  `is_force_finished` tinyint(1) NOT NULL DEFAULT '0' COMMENT '강제 환불완료처리 여부',
  `force_finished_at` timestamp NULL DEFAULT NULL COMMENT '강제 환불완료처리일시',
  `force_finished_ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '강제 환불완료처리자 ip',
  `force_finish_user` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '강제 환불완료처리자',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_ord_refunds`
--

LOCK TABLES `mm_ord_refunds` WRITE;
/*!40000 ALTER TABLE `mm_ord_refunds` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_ord_refunds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_ord_releases`
--

DROP TABLE IF EXISTS `mm_ord_releases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_ord_releases` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `pack_id` bigint unsigned NOT NULL COMMENT '포장 번호',
  `export_center_id` bigint unsigned NOT NULL COMMENT '배송센터(출고지) 키',
  `released_at` timestamp NOT NULL COMMENT '출고시간',
  `is_tracking_registed` tinyint(1) NOT NULL DEFAULT '0' COMMENT '배송 추적 등록 여부',
  `tracking_registed_at` timestamp NULL DEFAULT NULL COMMENT '배송 추적 등록시간',
  `is_tracking_started` tinyint(1) NOT NULL DEFAULT '0' COMMENT '배송 추적 시작 여부(정상추적 시작)',
  `tracking_started_at` timestamp NULL DEFAULT NULL COMMENT '배송 추적 시작 시간',
  `tracking_module` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '추적 모듈코드',
  `is_delivered` tinyint(1) NOT NULL DEFAULT '0' COMMENT '배송 도착여부',
  `delivered_at` timestamp NULL DEFAULT NULL COMMENT '배송 도착시간',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_ord_releases`
--

LOCK TABLES `mm_ord_releases` WRITE;
/*!40000 ALTER TABLE `mm_ord_releases` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_ord_releases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_ord_retrieves`
--

DROP TABLE IF EXISTS `mm_ord_retrieves`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_ord_retrieves` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `pack_id` bigint unsigned NOT NULL COMMENT '발송시 적용되었던 팩 번호',
  `retrievable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `retrievable_id` bigint unsigned NOT NULL,
  `charged_retrieve_shipping_price` int NOT NULL COMMENT '부과된 회수배송비',
  `charged_retrieve_extra_shipping_price` int NOT NULL COMMENT '부과된 회수 추가배송비',
  `is_tracking_registed` tinyint(1) NOT NULL DEFAULT '0' COMMENT '배송 추적 등록 여부',
  `tracking_registed_at` timestamp NULL DEFAULT NULL COMMENT '배송 추적 등록시간',
  `is_tracking_started` tinyint(1) NOT NULL DEFAULT '0' COMMENT '배송 추적 시작 여부(정상추적 시작)',
  `tracking_started_at` timestamp NULL DEFAULT NULL COMMENT '배송 추적 시작 시간',
  `tracking_module` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '추적 모듈코드',
  `is_retrieved` tinyint(1) NOT NULL DEFAULT '0' COMMENT '회수 도착여부',
  `retrieved_at` timestamp NULL DEFAULT NULL COMMENT '회수 도착시간',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mm_ord_retrieves_retrievable_type_retrievable_id_index` (`retrievable_type`,`retrievable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_ord_retrieves`
--

LOCK TABLES `mm_ord_retrieves` WRITE;
/*!40000 ALTER TABLE `mm_ord_retrieves` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_ord_retrieves` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_ord_return_targets`
--

DROP TABLE IF EXISTS `mm_ord_return_targets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_ord_return_targets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `return_id` bigint unsigned NOT NULL COMMENT '반품번호',
  `order_item_id` bigint unsigned NOT NULL COMMENT '대상 주문 아이템 번호',
  `partnershop_item_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '제휴사 주문 아이템 번호',
  `partnershop_return_target_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '제휴사 반품주문 아이템 번호',
  `holding_reason_code` int unsigned DEFAULT NULL COMMENT '보류 사유 코드 enum@Order/ReturnHoldingReason',
  `holding_reason_message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '보류 사유',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status_code` int unsigned NOT NULL COMMENT '상태코드 enum@Order/StatusCode',
  `return_applied_at` timestamp NULL DEFAULT NULL COMMENT '반품 신청일시',
  `return_retrieved_at` timestamp NULL DEFAULT NULL COMMENT '반품 회수 완료일시',
  `return_holding_at` timestamp NULL DEFAULT NULL COMMENT '반품 보류일시',
  `return_finished_at` timestamp NULL DEFAULT NULL COMMENT '반품 확정일시',
  `return_recanted_at` timestamp NULL DEFAULT NULL COMMENT '반품 철회일시',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_ord_return_targets`
--

LOCK TABLES `mm_ord_return_targets` WRITE;
/*!40000 ALTER TABLE `mm_ord_return_targets` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_ord_return_targets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_ord_returns`
--

DROP TABLE IF EXISTS `mm_ord_returns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_ord_returns` (
  `id` bigint unsigned NOT NULL COMMENT '반품번호',
  `order_id` bigint unsigned NOT NULL COMMENT '반품발생 주문번호',
  `partnershop_order_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '제휴사 주문번호',
  `partnershop_return_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '제휴사 반품주문번호',
  `responsibility_to` int unsigned NOT NULL COMMENT '책임대상 enum@Order/ResponsibilityTo',
  `reason_code` int unsigned NOT NULL COMMENT '반품사유 코드 enum@Order/ReturnReason',
  `reason_message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '반품사유 메세지',
  `is_return_by_orderer` tinyint(1) NOT NULL COMMENT '고객 반품요청여부',
  `retrieve_shipping_price_pay_type` tinyint unsigned NOT NULL COMMENT '회수배송비 지불타입 enum@Shop/Shipping/RetrieveAndReleaseShippingPricePayType',
  `partnershop_retrieve_shipping_price_pay_message` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '제휴사 회수배송비에 대한 처리 메시지(자사몰 주문은 해당없음)',
  `retrieve_shipping_price_payment_id` bigint unsigned DEFAULT NULL COMMENT '회수배송비 지불결제번호(즉시결제시)',
  `retrieve_apply_type` tinyint unsigned NOT NULL COMMENT '회수배송 신청 타입 enum@Shop/Shipping/RetrieveApplyType',
  `retrieve_delivery_company_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '회수 배송사 코드 enum@Shop/Shipping/DeliveryCompany',
  `retrieve_invoice_no` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '회수 운송장번호',
  `retrieve_from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '회수 보내는 사람',
  `retrieve_from_zipcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '회수 출발지 우편번호',
  `retrieve_from_base_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '회수 출발지 기본주소',
  `retrieve_from_detail_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '회수 출발지 상세주소',
  `retrieve_from_tel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '회수 출발지 연락처',
  `retrieve_to_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '회수 받는 사람',
  `retrieve_to_zipcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '회수 도착지 우편번호',
  `retrieve_to_base_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '회수 도착지 기본주소',
  `retrieve_to_detail_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '회수 도착지 상세주소',
  `retrieve_to_tel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '회수 도착지 연락처',
  `refund_account_bank_code` int unsigned DEFAULT NULL COMMENT '계좌환불 발생시 사용할 계좌 은행 코드 enum@Payment/BankCode',
  `refund_account_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '계좌환불 발생시 사용할 계좌번호',
  `refund_account_owner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '계좌환불 발생시 사용할 계좌주 성명',
  `requested_at` timestamp NOT NULL COMMENT '반품요청 발생일시',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `retrieve_center_id` bigint unsigned NOT NULL COMMENT '회수배송지 번호',
  `pack_id` bigint unsigned NOT NULL COMMENT '대상 포장 번호',
  `transferred_exchange_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '전환된 교환 번호',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_ord_returns`
--

LOCK TABLES `mm_ord_returns` WRITE;
/*!40000 ALTER TABLE `mm_ord_returns` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_ord_returns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_ord_scm_logs`
--

DROP TABLE IF EXISTS `mm_ord_scm_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_ord_scm_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL COMMENT '대상 주문번호(반품/교환의 경우 origin_order_id 입력)',
  `item_id` bigint unsigned DEFAULT NULL COMMENT '주문 아이템 번호',
  `logged_at` timestamp NOT NULL COMMENT '보여질 기준 로깅시점',
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '보여질 문구',
  `modifier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '수정자 정보',
  `modifier_ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '수정자 IP',
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '추가 저장데이터(필요시)',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `before_status_code` int unsigned DEFAULT NULL COMMENT '변경전 상태코드',
  `after_status_code` int unsigned NOT NULL COMMENT '변경후 상태코드',
  `scm_user_code` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'scm 관리자 코드',
  PRIMARY KEY (`id`),
  KEY `mm_ord_scm_logs_order_id_index` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_ord_scm_logs`
--

LOCK TABLES `mm_ord_scm_logs` WRITE;
/*!40000 ALTER TABLE `mm_ord_scm_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_ord_scm_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_ord_separates`
--

DROP TABLE IF EXISTS `mm_ord_separates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_ord_separates` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `return_id` bigint unsigned DEFAULT NULL,
  `exchange_id` bigint unsigned DEFAULT NULL,
  `cancel_id` bigint unsigned DEFAULT NULL,
  `refund_id` bigint unsigned DEFAULT NULL,
  `separate_div` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '분리보관 구분(guest: 비회원 보존기간 경과, sleep: 휴면전환분리, withdraw: 탈퇴회원분리)',
  `orderer_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '주문자 이름',
  `orderer_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '주문자 로그인 ID',
  `origin` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ordered_at` timestamp NOT NULL COMMENT '주문일시',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_ord_separates`
--

LOCK TABLES `mm_ord_separates` WRITE;
/*!40000 ALTER TABLE `mm_ord_separates` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_ord_separates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_ord_sessions`
--

DROP TABLE IF EXISTS `mm_ord_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_ord_sessions` (
  `order_id` bigint unsigned NOT NULL COMMENT '주문번호',
  `json_serialize_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON 직렬화 데이터 문자열',
  `expire_at` timestamp NOT NULL COMMENT '세션 만료시간(delete)',
  `state` tinyint unsigned NOT NULL COMMENT '세션 상태 (BE)enum@Order/SessionState',
  `session_user_uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '주문 세션 사용자 uuid',
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_ord_sessions`
--

LOCK TABLES `mm_ord_sessions` WRITE;
/*!40000 ALTER TABLE `mm_ord_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_ord_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_ord_shipping_to_changes`
--

DROP TABLE IF EXISTS `mm_ord_shipping_to_changes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_ord_shipping_to_changes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `before_shipping_to_zip` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '이전배송지 우편번호',
  `before_shipping_to_base_address` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '이전배송지 기본주소',
  `after_shipping_to_zip` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '변경배송지 우편번호',
  `after_shipping_to_base_address` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '변경배송지 기본주소',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_ord_shipping_to_changes`
--

LOCK TABLES `mm_ord_shipping_to_changes` WRITE;
/*!40000 ALTER TABLE `mm_ord_shipping_to_changes` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_ord_shipping_to_changes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_ord_transferred_confirm_purchase_to_naverpay`
--

DROP TABLE IF EXISTS `mm_ord_transferred_confirm_purchase_to_naverpay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_ord_transferred_confirm_purchase_to_naverpay` (
  `order_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '주문번호',
  `transferred_at` datetime NOT NULL COMMENT '전송일시'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_ord_transferred_confirm_purchase_to_naverpay`
--

LOCK TABLES `mm_ord_transferred_confirm_purchase_to_naverpay` WRITE;
/*!40000 ALTER TABLE `mm_ord_transferred_confirm_purchase_to_naverpay` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_ord_transferred_confirm_purchase_to_naverpay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_pnt_cancel_by_soldouts`
--

DROP TABLE IF EXISTS `mm_pnt_cancel_by_soldouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_pnt_cancel_by_soldouts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_item_id` bigint unsigned NOT NULL COMMENT '대상 주문 아이템 번호',
  `paid_at` timestamp NOT NULL COMMENT '결제완료일시',
  `applied_at` timestamp NOT NULL COMMENT '부과기준일시',
  `applied_setting_id` bigint unsigned DEFAULT NULL COMMENT '적용된 설정값 번호',
  `applied_rate` int unsigned NOT NULL COMMENT '적용률',
  `applied_amount` int NOT NULL COMMENT '적용액',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_apply` tinyint(1) NOT NULL COMMENT '패널티 적용여부',
  `cost_minute` int NOT NULL COMMENT '품절 소요시간 (영업일 제외, 분단위)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mm_pnt_cancel_by_soldouts_order_item_id_unique` (`order_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_pnt_cancel_by_soldouts`
--

LOCK TABLES `mm_pnt_cancel_by_soldouts` WRITE;
/*!40000 ALTER TABLE `mm_pnt_cancel_by_soldouts` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_pnt_cancel_by_soldouts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_pnt_except_sellers`
--

DROP TABLE IF EXISTS `mm_pnt_except_sellers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_pnt_except_sellers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `seller_id` bigint unsigned NOT NULL COMMENT '대상 셀러 번호',
  `except_from` timestamp NOT NULL COMMENT '적용제외 시작',
  `except_to` timestamp NOT NULL COMMENT '적용제외 종류',
  `reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '제외사유',
  `created_user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '생성주체',
  `updated_user` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '수정주체',
  `deleted_user` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '삭제주체',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_pnt_except_sellers`
--

LOCK TABLES `mm_pnt_except_sellers` WRITE;
/*!40000 ALTER TABLE `mm_pnt_except_sellers` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_pnt_except_sellers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_pnt_exchange_delays`
--

DROP TABLE IF EXISTS `mm_pnt_exchange_delays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_pnt_exchange_delays` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `exchange_target_id` bigint unsigned NOT NULL COMMENT '부과대상 교환항목 번호',
  `is_apply` tinyint(1) NOT NULL COMMENT '적용 여부',
  `system_retrieved_at` timestamp NOT NULL COMMENT '시스템상 수거 완료일시',
  `applied_at` timestamp NOT NULL COMMENT '부과기준일시',
  `applied_setting_id` bigint unsigned DEFAULT NULL COMMENT '적용된 설정값 번호',
  `applied_rate` int unsigned NOT NULL COMMENT '적용률',
  `applied_amount` int NOT NULL COMMENT '적용액',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mm_pnt_exchange_delays_exchange_target_id_unique` (`exchange_target_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_pnt_exchange_delays`
--

LOCK TABLES `mm_pnt_exchange_delays` WRITE;
/*!40000 ALTER TABLE `mm_pnt_exchange_delays` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_pnt_exchange_delays` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_pnt_fake_release_objections`
--

DROP TABLE IF EXISTS `mm_pnt_fake_release_objections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_pnt_fake_release_objections` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `fake_release_id` bigint unsigned NOT NULL COMMENT '대상 패널티 번호',
  `reason_message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '이의제기사유',
  `amount` int NOT NULL COMMENT '이의제기 금액',
  `delivery_company_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '실 배송사 코드 enum@Shop/Shipping/DeliveryCompany',
  `invoice_no` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '실 운송장번호',
  `released_at` timestamp NOT NULL COMMENT '실 발송처리일시',
  `objected_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '이의제기자',
  `approved_at` timestamp NULL DEFAULT NULL COMMENT '승인일시',
  `rejected_at` timestamp NULL DEFAULT NULL COMMENT '반려일시',
  `rejected_reason_message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '반려 사유',
  `confirmed_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '승인/반려자',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_pnt_fake_release_objections`
--

LOCK TABLES `mm_pnt_fake_release_objections` WRITE;
/*!40000 ALTER TABLE `mm_pnt_fake_release_objections` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_pnt_fake_release_objections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_pnt_fake_releases`
--

DROP TABLE IF EXISTS `mm_pnt_fake_releases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_pnt_fake_releases` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `seller_id` bigint unsigned NOT NULL COMMENT '부과대상 셀러 번호',
  `delivery_company_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '배송사 코드 enum@Shop/Shipping/DeliveryCompany',
  `invoice_no` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '운송장번호',
  `release_id` bigint unsigned NOT NULL COMMENT '출고 고유번호',
  `order_id` bigint unsigned NOT NULL COMMENT '부과대상 주문 번호',
  `released_at` timestamp NOT NULL COMMENT '발송일시',
  `applied_at` timestamp NOT NULL COMMENT '부과기준일시',
  `reason_message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '부과사유/오류메세지',
  `applied_setting_id` bigint unsigned DEFAULT NULL COMMENT '적용된 설정값 번호',
  `applied_amount` int NOT NULL COMMENT '적용액',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_apply` tinyint(1) NOT NULL COMMENT '적용 여부',
  PRIMARY KEY (`id`),
  KEY `mm_pnt_fake_releases_release_id_index` (`release_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_pnt_fake_releases`
--

LOCK TABLES `mm_pnt_fake_releases` WRITE;
/*!40000 ALTER TABLE `mm_pnt_fake_releases` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_pnt_fake_releases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_pnt_receipt_delays`
--

DROP TABLE IF EXISTS `mm_pnt_receipt_delays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_pnt_receipt_delays` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_item_id` bigint unsigned NOT NULL COMMENT '부과대상 주문 아이템 번호',
  `is_apply` tinyint(1) NOT NULL COMMENT '적용 여부',
  `paid_at` timestamp NOT NULL COMMENT '결제완료일시',
  `applied_at` timestamp NOT NULL COMMENT '부과기준일시',
  `applied_setting_id` bigint unsigned DEFAULT NULL COMMENT '적용된 설정값 번호',
  `applied_rate` int unsigned NOT NULL COMMENT '적용률',
  `applied_amount` int NOT NULL COMMENT '적용액',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mm_pnt_receipt_delays_order_item_id_unique` (`order_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_pnt_receipt_delays`
--

LOCK TABLES `mm_pnt_receipt_delays` WRITE;
/*!40000 ALTER TABLE `mm_pnt_receipt_delays` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_pnt_receipt_delays` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_pnt_release_delays`
--

DROP TABLE IF EXISTS `mm_pnt_release_delays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_pnt_release_delays` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_item_id` bigint unsigned NOT NULL COMMENT '부과대상 주문 아이템 번호',
  `is_apply` tinyint(1) NOT NULL COMMENT '적용 여부',
  `ready_for_release_at` timestamp NOT NULL COMMENT '배송준비중일시',
  `applied_at` timestamp NOT NULL COMMENT '부과기준일시',
  `applied_setting_id` bigint unsigned DEFAULT NULL COMMENT '적용된 설정값 번호',
  `applied_rate` int unsigned NOT NULL COMMENT '적용률',
  `applied_amount` int NOT NULL COMMENT '적용액',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `delayed_business_daycount` int NOT NULL COMMENT '지연일수',
  `is_overdue` tinyint(1) NOT NULL COMMENT '예약배송 미준수로 인한 발생 여부',
  `exempt_amount` int DEFAULT NULL COMMENT '면책 금액',
  `exempt_reason_message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '면책 사유',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mm_pnt_release_delays_order_item_id_unique` (`order_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_pnt_release_delays`
--

LOCK TABLES `mm_pnt_release_delays` WRITE;
/*!40000 ALTER TABLE `mm_pnt_release_delays` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_pnt_release_delays` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_pnt_return_delays`
--

DROP TABLE IF EXISTS `mm_pnt_return_delays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_pnt_return_delays` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `return_target_id` bigint unsigned NOT NULL COMMENT '부과대상 반품항목 번호',
  `is_apply` tinyint(1) NOT NULL COMMENT '적용 여부',
  `system_retrieved_at` timestamp NOT NULL COMMENT '시스템상 수거 완료일시',
  `applied_at` timestamp NOT NULL COMMENT '부과기준일시',
  `applied_setting_id` bigint unsigned DEFAULT NULL COMMENT '적용된 설정값 번호',
  `applied_rate` int unsigned NOT NULL COMMENT '적용률',
  `applied_amount` int NOT NULL COMMENT '적용액',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mm_pnt_return_delays_return_target_id_unique` (`return_target_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_pnt_return_delays`
--

LOCK TABLES `mm_pnt_return_delays` WRITE;
/*!40000 ALTER TABLE `mm_pnt_return_delays` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_pnt_return_delays` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_pnt_settings`
--

DROP TABLE IF EXISTS `mm_pnt_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_pnt_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `use_receipt_delay` tinyint(1) NOT NULL COMMENT '주문 미 접수 패널티 사용여부',
  `receipt_delay_s1_rate` int unsigned NOT NULL COMMENT '주문 미 접수 1단계 적용률',
  `receipt_delay_s2_rate` int unsigned NOT NULL COMMENT '주문 미 접수 2단계 적용률',
  `use_release_delay` tinyint(1) NOT NULL COMMENT '배송지연 패널티 사용여부',
  `release_delay_s1_rate` int unsigned NOT NULL COMMENT '배송지연 1단계 적용률',
  `release_delay_s2_rate` int unsigned NOT NULL COMMENT '배송지연 2단계 적용률',
  `release_delay_s3_rate` int unsigned NOT NULL COMMENT '배송지연 3단계 적용률',
  `release_delay_s4_rate` int unsigned NOT NULL COMMENT '배송지연 4단계 적용률',
  `release_delay_overdue_rate` int unsigned NOT NULL COMMENT '배송지연 예정일미준수 적용률',
  `release_delay_ex_s1_rate` int unsigned NOT NULL COMMENT '배송지연(해외배송/주문제작) 1단계 적용률',
  `release_delay_ex_s2_rate` int unsigned NOT NULL COMMENT '배송지연(해외배송/주문제작) 2단계 적용률',
  `release_delay_ex_s3_rate` int unsigned NOT NULL COMMENT '배송지연(해외배송/주문제작) 3단계 적용률',
  `release_delay_ex_s4_rate` int unsigned NOT NULL COMMENT '배송지연(해외배송/주문제작) 4단계 적용률',
  `release_delay_ex_overdue_rate` int unsigned NOT NULL COMMENT '배송지연(해외배송/주문제작) 예정일미준수 적용률',
  `use_cancel_by_soldout` tinyint(1) NOT NULL COMMENT '품절로 인한 취소 패널티 사용여부',
  `cancel_by_soldout_s1_rate` int unsigned NOT NULL COMMENT '품절로 인한 취소 1단계 적용률',
  `use_fake_release` tinyint(1) NOT NULL COMMENT '가송장 패널티 사용여부',
  `fake_release_s1_amount` int unsigned NOT NULL COMMENT '가송장 1단계 적용액',
  `use_return_delay` tinyint(1) NOT NULL COMMENT '반품 미처리 패널티 사용여부',
  `return_delay_s1_rate` int unsigned NOT NULL COMMENT '반품 미처리 1단계 적용률',
  `use_exchange_delay` tinyint(1) NOT NULL COMMENT '교환 미처리 패널티 사용여부',
  `exchange_delay_s1_rate` int unsigned NOT NULL COMMENT '교환 미처리 1단계 적용률',
  `created_user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '생성관리자',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_pnt_settings`
--

LOCK TABLES `mm_pnt_settings` WRITE;
/*!40000 ALTER TABLE `mm_pnt_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_pnt_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_prm_affiliate_except_goods`
--

DROP TABLE IF EXISTS `mm_prm_affiliate_except_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_prm_affiliate_except_goods` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` bigint unsigned NOT NULL COMMENT '대상 상품 고유키(mm_gds_items.id)',
  `department_id` bigint unsigned DEFAULT NULL COMMENT '담당 부서 고유번호',
  `reason` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '예외 사유',
  `discount_amount` int NOT NULL COMMENT '할인율',
  `except_from` datetime NOT NULL COMMENT '예약판매시작일',
  `except_to` datetime NOT NULL COMMENT '예약판매종료일',
  `created_user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '등록자',
  `updated_user` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '수정자',
  `deleted_user` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '삭제자',
  `created_at` datetime NOT NULL COMMENT '등록 일시',
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mm_prm_affiliate_except_goods_goods_id_index` (`goods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_prm_affiliate_except_goods`
--

LOCK TABLES `mm_prm_affiliate_except_goods` WRITE;
/*!40000 ALTER TABLE `mm_prm_affiliate_except_goods` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_prm_affiliate_except_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_prm_affiliate_except_goods_apply_affiliates`
--

DROP TABLE IF EXISTS `mm_prm_affiliate_except_goods_apply_affiliates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_prm_affiliate_except_goods_apply_affiliates` (
  `affiliate_except_goods_id` bigint unsigned NOT NULL COMMENT '예외 대상 고유키(mm_prm_affiliate_except_goods.id)',
  `affiliate_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '예외 대상 제휴사'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_prm_affiliate_except_goods_apply_affiliates`
--

LOCK TABLES `mm_prm_affiliate_except_goods_apply_affiliates` WRITE;
/*!40000 ALTER TABLE `mm_prm_affiliate_except_goods_apply_affiliates` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_prm_affiliate_except_goods_apply_affiliates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_prm_base_coupon_aggregated_to_goods`
--

DROP TABLE IF EXISTS `mm_prm_base_coupon_aggregated_to_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_prm_base_coupon_aggregated_to_goods` (
  `goods_id` bigint unsigned NOT NULL COMMENT '대상 상품 코드',
  `base_coupon_id` bigint unsigned NOT NULL COMMENT '해당 base coupon 키',
  `validate_until` datetime NOT NULL COMMENT '집계된 당시의 유효종료기간(쿠션용)',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `validate_token` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '집계된 당시의 유효토큰 (1차쿠폰 배치 실행시마다 토큰 재발행)',
  PRIMARY KEY (`goods_id`),
  KEY `mm_prm_base_coupon_aggregated_to_goods_validate_until_index` (`validate_until`),
  KEY `base_coupon_id_index` (`base_coupon_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_prm_base_coupon_aggregated_to_goods`
--

LOCK TABLES `mm_prm_base_coupon_aggregated_to_goods` WRITE;
/*!40000 ALTER TABLE `mm_prm_base_coupon_aggregated_to_goods` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_prm_base_coupon_aggregated_to_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_prm_base_coupon_apply_brands`
--

DROP TABLE IF EXISTS `mm_prm_base_coupon_apply_brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_prm_base_coupon_apply_brands` (
  `base_coupon_id` bigint unsigned NOT NULL COMMENT '쿠폰정보 키(mm_prm_base_coupons.id)',
  `brand_id` bigint unsigned NOT NULL COMMENT '대상 진열브랜드 고유코드(mm_shp_brands.id)',
  KEY `mm_prm_base_coupon_apply_brands_base_coupon_id_index` (`base_coupon_id`),
  KEY `mm_prm_base_coupon_apply_brands_brand_id_index` (`brand_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_prm_base_coupon_apply_brands`
--

LOCK TABLES `mm_prm_base_coupon_apply_brands` WRITE;
/*!40000 ALTER TABLE `mm_prm_base_coupon_apply_brands` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_prm_base_coupon_apply_brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_prm_base_coupon_apply_categories`
--

DROP TABLE IF EXISTS `mm_prm_base_coupon_apply_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_prm_base_coupon_apply_categories` (
  `base_coupon_id` bigint unsigned NOT NULL COMMENT '쿠폰정보 키(mm_prm_base_coupons.id)',
  `category_code` char(9) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '대상 카테고리 고유코드(mm_shp_category_inco.code)',
  KEY `mm_prm_base_coupon_apply_categories_base_coupon_id_index` (`base_coupon_id`),
  KEY `mm_prm_base_coupon_apply_categories_category_code_index` (`category_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_prm_base_coupon_apply_categories`
--

LOCK TABLES `mm_prm_base_coupon_apply_categories` WRITE;
/*!40000 ALTER TABLE `mm_prm_base_coupon_apply_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_prm_base_coupon_apply_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_prm_base_coupon_apply_goods`
--

DROP TABLE IF EXISTS `mm_prm_base_coupon_apply_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_prm_base_coupon_apply_goods` (
  `base_coupon_id` bigint unsigned NOT NULL COMMENT '쿠폰정보 키(mm_prm_base_coupons.id)',
  `goods_id` bigint unsigned NOT NULL COMMENT '대상 상품 고유키(mm_gds_items.id)',
  KEY `mm_prm_base_coupon_apply_goods_base_coupon_id_index` (`base_coupon_id`),
  KEY `mm_prm_base_coupon_apply_goods_goods_id_index` (`goods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_prm_base_coupon_apply_goods`
--

LOCK TABLES `mm_prm_base_coupon_apply_goods` WRITE;
/*!40000 ALTER TABLE `mm_prm_base_coupon_apply_goods` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_prm_base_coupon_apply_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_prm_base_coupon_apply_sellers`
--

DROP TABLE IF EXISTS `mm_prm_base_coupon_apply_sellers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_prm_base_coupon_apply_sellers` (
  `base_coupon_id` bigint unsigned NOT NULL COMMENT '쿠폰정보 키(mm_prm_base_coupons.id)',
  `seller_id` bigint unsigned NOT NULL COMMENT '대상 판매자 고유키(mm_adm_sellers.id)',
  KEY `mm_prm_base_coupon_apply_sellers_base_coupon_id_index` (`base_coupon_id`),
  KEY `mm_prm_base_coupon_apply_sellers_seller_id_index` (`seller_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_prm_base_coupon_apply_sellers`
--

LOCK TABLES `mm_prm_base_coupon_apply_sellers` WRITE;
/*!40000 ALTER TABLE `mm_prm_base_coupon_apply_sellers` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_prm_base_coupon_apply_sellers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_prm_base_coupon_except_brands`
--

DROP TABLE IF EXISTS `mm_prm_base_coupon_except_brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_prm_base_coupon_except_brands` (
  `base_coupon_id` bigint unsigned NOT NULL COMMENT '쿠폰정보 키(mm_prm_base_coupons.id)',
  `brand_id` bigint unsigned NOT NULL COMMENT '대상 진열브랜드 고유코드(mm_shp_brands.id)',
  KEY `mm_prm_base_coupon_except_brands_base_coupon_id_index` (`base_coupon_id`),
  KEY `mm_prm_base_coupon_except_brands_brand_id_index` (`brand_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_prm_base_coupon_except_brands`
--

LOCK TABLES `mm_prm_base_coupon_except_brands` WRITE;
/*!40000 ALTER TABLE `mm_prm_base_coupon_except_brands` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_prm_base_coupon_except_brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_prm_base_coupon_except_categories`
--

DROP TABLE IF EXISTS `mm_prm_base_coupon_except_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_prm_base_coupon_except_categories` (
  `base_coupon_id` bigint unsigned NOT NULL COMMENT '쿠폰정보 키(mm_prm_base_coupons.id)',
  `category_code` char(9) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '대상 카테고리 고유코드(mm_shp_category_inco.code)',
  KEY `mm_prm_base_coupon_except_categories_base_coupon_id_index` (`base_coupon_id`),
  KEY `mm_prm_base_coupon_except_categories_category_code_index` (`category_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_prm_base_coupon_except_categories`
--

LOCK TABLES `mm_prm_base_coupon_except_categories` WRITE;
/*!40000 ALTER TABLE `mm_prm_base_coupon_except_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_prm_base_coupon_except_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_prm_base_coupon_except_goods`
--

DROP TABLE IF EXISTS `mm_prm_base_coupon_except_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_prm_base_coupon_except_goods` (
  `base_coupon_id` bigint unsigned NOT NULL COMMENT '쿠폰정보 키(mm_prm_base_coupons.id)',
  `goods_id` bigint unsigned NOT NULL COMMENT '대상 상품 고유키(mm_gds_items.id)',
  KEY `mm_prm_base_coupon_except_goods_base_coupon_id_index` (`base_coupon_id`),
  KEY `mm_prm_base_coupon_except_goods_goods_id_index` (`goods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_prm_base_coupon_except_goods`
--

LOCK TABLES `mm_prm_base_coupon_except_goods` WRITE;
/*!40000 ALTER TABLE `mm_prm_base_coupon_except_goods` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_prm_base_coupon_except_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_prm_base_coupon_except_sellers`
--

DROP TABLE IF EXISTS `mm_prm_base_coupon_except_sellers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_prm_base_coupon_except_sellers` (
  `base_coupon_id` bigint unsigned NOT NULL COMMENT '쿠폰정보 키(mm_prm_base_coupons.id)',
  `seller_id` bigint unsigned NOT NULL COMMENT '대상 판매자 고유키(mm_adm_sellers.id)',
  KEY `mm_prm_base_coupon_except_sellers_base_coupon_id_index` (`base_coupon_id`),
  KEY `mm_prm_base_coupon_except_sellers_seller_id_index` (`seller_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_prm_base_coupon_except_sellers`
--

LOCK TABLES `mm_prm_base_coupon_except_sellers` WRITE;
/*!40000 ALTER TABLE `mm_prm_base_coupon_except_sellers` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_prm_base_coupon_except_sellers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_prm_base_coupons`
--

DROP TABLE IF EXISTS `mm_prm_base_coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_prm_base_coupons` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `department_id` bigint unsigned DEFAULT NULL COMMENT '담당 부서 키(App\\Models\\User\\Manager\\CompanyDepartment.id',
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '쿠폰명',
  `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '쿠폰 설명',
  `is_use` tinyint(1) NOT NULL DEFAULT '1' COMMENT '사용 여부',
  `use_from` datetime NOT NULL COMMENT '사용 기간 - 시작일',
  `use_to` datetime NOT NULL COMMENT '사용 기간 - 종료일 ',
  `discount_type` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'rate' COMMENT '할인 율, 금액 구분(KRW : 정액, rate: 정률)',
  `discount_amount` decimal(13,3) unsigned NOT NULL COMMENT '할인 총량',
  `maximum_discount_amount` bigint unsigned NOT NULL DEFAULT '0' COMMENT '최대 할인 금액(0은 미적용)',
  `mall_charge_amount` decimal(13,3) unsigned NOT NULL COMMENT '본사 부담률/액',
  `seller_charge_amount` decimal(13,3) unsigned NOT NULL COMMENT '본사 부담률/액',
  `min_sell_price` bigint unsigned NOT NULL DEFAULT '0' COMMENT '최저 금액 조건(판매가, 0은 미적용)',
  `min_margin` decimal(4,3) unsigned NOT NULL DEFAULT '0.000' COMMENT '최저 마진 조건(0.000 ~ 1.000, 0은 미적용',
  `apply_range_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '쿠폰 적용 범위(seller: 판매자, goods: 상품, category: 카테고리, brand: 진열브랜드)',
  `is_except_by_seller` tinyint(1) NOT NULL DEFAULT '0' COMMENT '판매자 단위 적용 제외 설정여부',
  `is_except_by_goods` tinyint(1) NOT NULL DEFAULT '0' COMMENT '상품 단위 적용 제외 설정여부',
  `is_except_by_category` tinyint(1) NOT NULL DEFAULT '0' COMMENT '카테고리 단위 적용 제외 설정여부',
  `is_except_by_brand` tinyint(1) NOT NULL DEFAULT '0' COMMENT '브랜드 단위 적용 제외 설정여부',
  `created_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '등록관리자 정보',
  `updated_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '수정관리자 정보',
  `deleted_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '삭제관리자 정보',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mm_prm_base_coupons_title_index` (`title`),
  KEY `mm_prm_base_coupons_is_use_index` (`is_use`),
  KEY `mm_prm_base_coupons_use_from_index` (`use_from`),
  KEY `mm_prm_base_coupons_use_to_index` (`use_to`),
  KEY `mm_prm_base_coupons_department_id_index` (`department_id`),
  KEY `mm_prm_base_coupons_deleted_at_index` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_prm_base_coupons`
--

LOCK TABLES `mm_prm_base_coupons` WRITE;
/*!40000 ALTER TABLE `mm_prm_base_coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_prm_base_coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_prm_edit_logs`
--

DROP TABLE IF EXISTS `mm_prm_edit_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_prm_edit_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `loggable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `loggable_id` bigint unsigned NOT NULL,
  `ip` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '수정자 IP',
  `server_machine_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '처리한 서버 머신명',
  `changes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '변경내용',
  `modifier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '변경자 정보',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mm_prm_edit_logs_loggable_type_loggable_id_index` (`loggable_type`,`loggable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_prm_edit_logs`
--

LOCK TABLES `mm_prm_edit_logs` WRITE;
/*!40000 ALTER TABLE `mm_prm_edit_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_prm_edit_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_prm_except_brands`
--

DROP TABLE IF EXISTS `mm_prm_except_brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_prm_except_brands` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '제외 유형(예: ep_coupon, ep_show, all...)',
  `brand_id` bigint unsigned NOT NULL COMMENT '대상 진열브랜드 키',
  `department_id` bigint unsigned DEFAULT NULL COMMENT '담당 부서 키',
  `reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '제외 사유',
  `except_from` datetime NOT NULL COMMENT '제외 시작시간',
  `except_to` datetime NOT NULL COMMENT '제외 종료시간',
  `created_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '등록관리자 정보',
  `updated_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '수정관리자 정보',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mm_prm_except_brands_type_index` (`type`),
  KEY `mm_prm_except_brands_brand_id_index` (`brand_id`),
  KEY `mm_prm_except_brands_department_id_index` (`department_id`),
  KEY `mm_prm_except_brands_except_from_index` (`except_from`),
  KEY `mm_prm_except_brands_except_to_index` (`except_to`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_prm_except_brands`
--

LOCK TABLES `mm_prm_except_brands` WRITE;
/*!40000 ALTER TABLE `mm_prm_except_brands` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_prm_except_brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_prm_except_categories`
--

DROP TABLE IF EXISTS `mm_prm_except_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_prm_except_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '제외 유형(예: ep_coupon, ep_show, all...)',
  `category_code` char(9) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '대상 카테고리 코드',
  `department_id` bigint unsigned DEFAULT NULL COMMENT '담당 부서 키',
  `reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '제외 사유',
  `except_from` datetime NOT NULL COMMENT '제외 시작시간',
  `except_to` datetime NOT NULL COMMENT '제외 종료시간',
  `created_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '등록관리자 정보',
  `updated_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '수정관리자 정보',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mm_prm_except_categories_type_index` (`type`),
  KEY `mm_prm_except_categories_category_code_index` (`category_code`),
  KEY `mm_prm_except_categories_department_id_index` (`department_id`),
  KEY `mm_prm_except_categories_except_from_index` (`except_from`),
  KEY `mm_prm_except_categories_except_to_index` (`except_to`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_prm_except_categories`
--

LOCK TABLES `mm_prm_except_categories` WRITE;
/*!40000 ALTER TABLE `mm_prm_except_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_prm_except_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_prm_except_goods`
--

DROP TABLE IF EXISTS `mm_prm_except_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_prm_except_goods` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '제외 유형(예: ep_coupon, ep_show, all...)',
  `goods_id` bigint unsigned NOT NULL COMMENT '대상 상품 키',
  `department_id` bigint unsigned DEFAULT NULL COMMENT '담당 부서 키',
  `reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '제외 사유',
  `except_from` datetime NOT NULL COMMENT '제외 시작시간',
  `except_to` datetime NOT NULL COMMENT '제외 종료시간',
  `created_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '등록관리자 정보',
  `updated_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '수정관리자 정보',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mm_prm_except_goods_type_index` (`type`),
  KEY `mm_prm_except_goods_goods_id_index` (`goods_id`),
  KEY `mm_prm_except_goods_department_id_index` (`department_id`),
  KEY `mm_prm_except_goods_except_from_index` (`except_from`),
  KEY `mm_prm_except_goods_except_to_index` (`except_to`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_prm_except_goods`
--

LOCK TABLES `mm_prm_except_goods` WRITE;
/*!40000 ALTER TABLE `mm_prm_except_goods` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_prm_except_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_prm_except_sellers`
--

DROP TABLE IF EXISTS `mm_prm_except_sellers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_prm_except_sellers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '제외 유형(예: ep_coupon, ep_show, all...)',
  `seller_id` bigint unsigned NOT NULL COMMENT '대상 셀러 키',
  `department_id` bigint unsigned DEFAULT NULL COMMENT '담당 부서 키',
  `reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '제외 사유',
  `except_from` datetime NOT NULL COMMENT '제외 시작시간',
  `except_to` datetime NOT NULL COMMENT '제외 종료시간',
  `created_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '등록관리자 정보',
  `updated_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '수정관리자 정보',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mm_prm_except_sellers_type_index` (`type`),
  KEY `mm_prm_except_sellers_seller_id_index` (`seller_id`),
  KEY `mm_prm_except_sellers_department_id_index` (`department_id`),
  KEY `mm_prm_except_sellers_except_from_index` (`except_from`),
  KEY `mm_prm_except_sellers_except_to_index` (`except_to`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_prm_except_sellers`
--

LOCK TABLES `mm_prm_except_sellers` WRITE;
/*!40000 ALTER TABLE `mm_prm_except_sellers` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_prm_except_sellers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_prm_extra_coupon_apply_brands`
--

DROP TABLE IF EXISTS `mm_prm_extra_coupon_apply_brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_prm_extra_coupon_apply_brands` (
  `extra_coupon_id` bigint unsigned NOT NULL COMMENT '쿠폰정보 키(mm_prm_extra_coupons.id)',
  `brand_id` bigint unsigned NOT NULL COMMENT '대상 진열브랜드 고유코드(mm_shp_brands.id)',
  KEY `mm_prm_extra_coupon_apply_brands_extra_coupon_id_index` (`extra_coupon_id`),
  KEY `mm_prm_extra_coupon_apply_brands_brand_id_index` (`brand_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_prm_extra_coupon_apply_brands`
--

LOCK TABLES `mm_prm_extra_coupon_apply_brands` WRITE;
/*!40000 ALTER TABLE `mm_prm_extra_coupon_apply_brands` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_prm_extra_coupon_apply_brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_prm_extra_coupon_apply_categories`
--

DROP TABLE IF EXISTS `mm_prm_extra_coupon_apply_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_prm_extra_coupon_apply_categories` (
  `extra_coupon_id` bigint unsigned NOT NULL COMMENT '쿠폰정보 키(mm_prm_extra_coupons.id)',
  `category_code` char(9) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '대상 카테고리 고유코드(mm_shp_category_inco.code)',
  KEY `mm_prm_extra_coupon_apply_categories_extra_coupon_id_index` (`extra_coupon_id`),
  KEY `mm_prm_extra_coupon_apply_categories_category_code_index` (`category_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_prm_extra_coupon_apply_categories`
--

LOCK TABLES `mm_prm_extra_coupon_apply_categories` WRITE;
/*!40000 ALTER TABLE `mm_prm_extra_coupon_apply_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_prm_extra_coupon_apply_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_prm_extra_coupon_apply_goods`
--

DROP TABLE IF EXISTS `mm_prm_extra_coupon_apply_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_prm_extra_coupon_apply_goods` (
  `extra_coupon_id` bigint unsigned NOT NULL COMMENT '쿠폰정보 키(mm_prm_extra_coupons.id)',
  `goods_id` bigint unsigned NOT NULL COMMENT '대상 상품 고유키(mm_gds_items.id)',
  KEY `mm_prm_extra_coupon_apply_goods_extra_coupon_id_index` (`extra_coupon_id`),
  KEY `mm_prm_extra_coupon_apply_goods_goods_id_index` (`goods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_prm_extra_coupon_apply_goods`
--

LOCK TABLES `mm_prm_extra_coupon_apply_goods` WRITE;
/*!40000 ALTER TABLE `mm_prm_extra_coupon_apply_goods` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_prm_extra_coupon_apply_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_prm_extra_coupon_apply_sellers`
--

DROP TABLE IF EXISTS `mm_prm_extra_coupon_apply_sellers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_prm_extra_coupon_apply_sellers` (
  `extra_coupon_id` bigint unsigned NOT NULL COMMENT '쿠폰정보 키(mm_prm_extra_coupons.id)',
  `seller_id` bigint unsigned NOT NULL COMMENT '대상 판매자 고유키(mm_adm_sellers.id)',
  KEY `mm_prm_extra_coupon_apply_sellers_extra_coupon_id_index` (`extra_coupon_id`),
  KEY `mm_prm_extra_coupon_apply_sellers_seller_id_index` (`seller_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_prm_extra_coupon_apply_sellers`
--

LOCK TABLES `mm_prm_extra_coupon_apply_sellers` WRITE;
/*!40000 ALTER TABLE `mm_prm_extra_coupon_apply_sellers` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_prm_extra_coupon_apply_sellers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_prm_extra_coupon_auto_publishes`
--

DROP TABLE IF EXISTS `mm_prm_extra_coupon_auto_publishes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_prm_extra_coupon_auto_publishes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `extra_coupon_id` bigint unsigned NOT NULL COMMENT '연결된 쿠폰 키(mm_prm_extra_coupons.id)',
  `type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '자동 발행 유형',
  `order_seq` int unsigned NOT NULL DEFAULT '0' COMMENT '정렬순서값',
  `created_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '등록관리자 정보',
  `updated_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '수정관리자 정보',
  `deleted_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '삭제관리자 정보',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_prm_extra_coupon_auto_publishes`
--

LOCK TABLES `mm_prm_extra_coupon_auto_publishes` WRITE;
/*!40000 ALTER TABLE `mm_prm_extra_coupon_auto_publishes` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_prm_extra_coupon_auto_publishes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_prm_extra_coupon_except_brands`
--

DROP TABLE IF EXISTS `mm_prm_extra_coupon_except_brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_prm_extra_coupon_except_brands` (
  `extra_coupon_id` bigint unsigned NOT NULL COMMENT '쿠폰정보 키(mm_prm_extra_coupons.id)',
  `brand_id` bigint unsigned NOT NULL COMMENT '대상 진열브랜드 고유코드(mm_shp_brands.id)',
  KEY `mm_prm_extra_coupon_except_brands_extra_coupon_id_index` (`extra_coupon_id`),
  KEY `mm_prm_extra_coupon_except_brands_brand_id_index` (`brand_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_prm_extra_coupon_except_brands`
--

LOCK TABLES `mm_prm_extra_coupon_except_brands` WRITE;
/*!40000 ALTER TABLE `mm_prm_extra_coupon_except_brands` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_prm_extra_coupon_except_brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_prm_extra_coupon_except_categories`
--

DROP TABLE IF EXISTS `mm_prm_extra_coupon_except_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_prm_extra_coupon_except_categories` (
  `extra_coupon_id` bigint unsigned NOT NULL COMMENT '쿠폰정보 키(mm_prm_extra_coupons.id)',
  `category_code` char(9) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '대상 카테고리 고유코드(mm_shp_category_inco.code)',
  KEY `mm_prm_extra_coupon_except_categories_extra_coupon_id_index` (`extra_coupon_id`),
  KEY `mm_prm_extra_coupon_except_categories_category_code_index` (`category_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_prm_extra_coupon_except_categories`
--

LOCK TABLES `mm_prm_extra_coupon_except_categories` WRITE;
/*!40000 ALTER TABLE `mm_prm_extra_coupon_except_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_prm_extra_coupon_except_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_prm_extra_coupon_except_goods`
--

DROP TABLE IF EXISTS `mm_prm_extra_coupon_except_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_prm_extra_coupon_except_goods` (
  `extra_coupon_id` bigint unsigned NOT NULL COMMENT '쿠폰정보 키(mm_prm_extra_coupons.id)',
  `goods_id` bigint unsigned NOT NULL COMMENT '대상 상품 고유키(mm_gds_items.id)',
  KEY `mm_prm_extra_coupon_except_goods_extra_coupon_id_index` (`extra_coupon_id`),
  KEY `mm_prm_extra_coupon_except_goods_goods_id_index` (`goods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_prm_extra_coupon_except_goods`
--

LOCK TABLES `mm_prm_extra_coupon_except_goods` WRITE;
/*!40000 ALTER TABLE `mm_prm_extra_coupon_except_goods` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_prm_extra_coupon_except_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_prm_extra_coupon_except_sellers`
--

DROP TABLE IF EXISTS `mm_prm_extra_coupon_except_sellers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_prm_extra_coupon_except_sellers` (
  `extra_coupon_id` bigint unsigned NOT NULL COMMENT '쿠폰정보 키(mm_prm_extra_coupons.id)',
  `seller_id` bigint unsigned NOT NULL COMMENT '대상 판매자 고유키(mm_adm_sellers.id)',
  KEY `mm_prm_extra_coupon_except_sellers_extra_coupon_id_index` (`extra_coupon_id`),
  KEY `mm_prm_extra_coupon_except_sellers_seller_id_index` (`seller_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_prm_extra_coupon_except_sellers`
--

LOCK TABLES `mm_prm_extra_coupon_except_sellers` WRITE;
/*!40000 ALTER TABLE `mm_prm_extra_coupon_except_sellers` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_prm_extra_coupon_except_sellers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_prm_extra_coupon_publish_codes`
--

DROP TABLE IF EXISTS `mm_prm_extra_coupon_publish_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_prm_extra_coupon_publish_codes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `extra_coupon_id` bigint unsigned NOT NULL COMMENT '쿠폰정보 키(mm_prm_extra_coupons.id)',
  `publish_code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '발급 인증번호',
  `is_published` tinyint(1) NOT NULL DEFAULT '0' COMMENT '발급 여부',
  `created_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '등록관리자 정보',
  `updated_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '수정관리자 정보',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `publish_code_unique` (`publish_code`),
  KEY `mm_prm_extra_coupon_publish_codes_extra_coupon_id_index` (`extra_coupon_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_prm_extra_coupon_publish_codes`
--

LOCK TABLES `mm_prm_extra_coupon_publish_codes` WRITE;
/*!40000 ALTER TABLE `mm_prm_extra_coupon_publish_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_prm_extra_coupon_publish_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_prm_extra_coupons`
--

DROP TABLE IF EXISTS `mm_prm_extra_coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_prm_extra_coupons` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `department_id` bigint unsigned DEFAULT NULL COMMENT '담당 부서 키(App\\Models\\User\\Manager\\CompanyDepartment.id',
  `type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '쿠폰 유형(download: 다운로드, timeattack: 타임딜 전용, ep: EP, automatic: 자동발행, paper: 페이퍼)',
  `subtype` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '쿠폰 보조유형',
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '쿠폰명',
  `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '쿠폰 설명',
  `is_use` tinyint(1) NOT NULL DEFAULT '1' COMMENT '사용 여부',
  `is_active` tinyint(1) NOT NULL DEFAULT '1' COMMENT '활성화 여부(고객 사용 가능 여부)',
  `inactive_reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '비활성화 처리시 사유',
  `usable_device` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '사용 가능 디바이스(0: 불가, 1:PC,2:모바일웹,3:모바일앱,4:PC+모바일웹,5:PC+모바일앱,6:모바일웹+모바일앱,7:PC+모바일웹+모바일앱)',
  `use_from` datetime NOT NULL COMMENT '사용 기간 - 시작일',
  `use_to` datetime NOT NULL COMMENT '사용 기간 - 종료일 ',
  `duration_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'day_count' COMMENT '유효기간 적용 유형(day_count: 발급이후 n일간 사용가능, range: 시간범위지정)',
  `duration_count` int unsigned NOT NULL DEFAULT '0' COMMENT '유효기간 단위 count',
  `active_from` datetime DEFAULT NULL COMMENT '유효기간 시작일',
  `active_to` datetime DEFAULT NULL COMMENT '유효기간 시작일',
  `discount_type` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'rate' COMMENT '할인 율, 금액 구분(KRW : 정액, rate: 정률)',
  `discount_amount` decimal(13,3) unsigned NOT NULL COMMENT '할인 총량',
  `maximum_discount_amount` bigint unsigned NOT NULL DEFAULT '0' COMMENT '최대 할인 금액(0은 미적용)',
  `mall_charge_amount` decimal(13,3) unsigned NOT NULL COMMENT '본사 부담률/액',
  `seller_charge_amount` decimal(13,3) unsigned NOT NULL COMMENT '본사 부담률/액',
  `min_sell_price` bigint unsigned NOT NULL DEFAULT '0' COMMENT '최저 금액 조건(판매가, 0은 미적용)',
  `min_margin` decimal(4,3) unsigned NOT NULL DEFAULT '0.000' COMMENT '최저 마진 조건(0.000 ~ 1.000, 0은 미적용',
  `apply_range_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '쿠폰 적용 범위(seller: 판매자, goods: 상품, category: 카테고리, brand: 진열브랜드)',
  `is_except_by_seller` tinyint(1) NOT NULL DEFAULT '0' COMMENT '판매자 단위 적용 제외 설정여부',
  `is_except_by_goods` tinyint(1) NOT NULL DEFAULT '0' COMMENT '상품 단위 적용 제외 설정여부',
  `is_except_by_category` tinyint(1) NOT NULL DEFAULT '0' COMMENT '카테고리 단위 적용 제외 설정여부',
  `is_except_by_brand` tinyint(1) NOT NULL DEFAULT '0' COMMENT '브랜드 단위 적용 제외 설정여부',
  `publish_code_type` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '인증번호 유형(0: 사용안함, 1: 공용 인증번호 사용, 2: 고유 인증번호 사용)',
  `publish_code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '발급 인증번호',
  `created_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '등록관리자 정보',
  `updated_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '수정관리자 정보',
  `deleted_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '삭제관리자 정보',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mm_prm_extra_coupons_title_index` (`title`),
  KEY `mm_prm_extra_coupons_type_index` (`type`),
  KEY `mm_prm_extra_coupons_subtype_index` (`subtype`),
  KEY `mm_prm_extra_coupons_is_active_index` (`is_active`),
  KEY `mm_prm_extra_coupons_is_use_index` (`is_use`),
  KEY `mm_prm_extra_coupons_use_from_index` (`use_from`),
  KEY `mm_prm_extra_coupons_use_to_index` (`use_to`),
  KEY `mm_prm_extra_coupons_department_id_index` (`department_id`),
  KEY `mm_prm_extra_coupons_deleted_at_index` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_prm_extra_coupons`
--

LOCK TABLES `mm_prm_extra_coupons` WRITE;
/*!40000 ALTER TABLE `mm_prm_extra_coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_prm_extra_coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_prm_immediately_sale_apply_brands`
--

DROP TABLE IF EXISTS `mm_prm_immediately_sale_apply_brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_prm_immediately_sale_apply_brands` (
  `immediately_sale_id` bigint unsigned NOT NULL COMMENT '즉시할인정보 키(mm_prm_immediately_sales.id)',
  `brand_id` bigint unsigned NOT NULL COMMENT '대상 진열브랜드 고유코드(mm_shp_brands.id)',
  KEY `mm_prm_immediately_sale_apply_brands_immediately_sale_id_index` (`immediately_sale_id`),
  KEY `mm_prm_immediately_sale_apply_brands_brand_id_index` (`brand_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_prm_immediately_sale_apply_brands`
--

LOCK TABLES `mm_prm_immediately_sale_apply_brands` WRITE;
/*!40000 ALTER TABLE `mm_prm_immediately_sale_apply_brands` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_prm_immediately_sale_apply_brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_prm_immediately_sale_apply_categories`
--

DROP TABLE IF EXISTS `mm_prm_immediately_sale_apply_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_prm_immediately_sale_apply_categories` (
  `immediately_sale_id` bigint NOT NULL COMMENT '즉시할인정보 키(mm_prm_immediately_sales.id)',
  `category_code` bigint NOT NULL COMMENT '대상 카테고리 고유코드(mm_shp_category_inco.code)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_prm_immediately_sale_apply_categories`
--

LOCK TABLES `mm_prm_immediately_sale_apply_categories` WRITE;
/*!40000 ALTER TABLE `mm_prm_immediately_sale_apply_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_prm_immediately_sale_apply_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_prm_immediately_sale_apply_goods`
--

DROP TABLE IF EXISTS `mm_prm_immediately_sale_apply_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_prm_immediately_sale_apply_goods` (
  `immediately_sale_id` bigint unsigned NOT NULL COMMENT '즉시할인정보 키(mm_prm_immediately_sales.id)',
  `goods_id` bigint unsigned NOT NULL COMMENT '대상 상품 고유키(mm_gds_items.id)',
  KEY `mm_prm_immediately_sale_apply_goods_immediately_sale_id_index` (`immediately_sale_id`),
  KEY `mm_prm_immediately_sale_apply_goods_goods_id_index` (`goods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_prm_immediately_sale_apply_goods`
--

LOCK TABLES `mm_prm_immediately_sale_apply_goods` WRITE;
/*!40000 ALTER TABLE `mm_prm_immediately_sale_apply_goods` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_prm_immediately_sale_apply_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_prm_immediately_sale_apply_sellers`
--

DROP TABLE IF EXISTS `mm_prm_immediately_sale_apply_sellers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_prm_immediately_sale_apply_sellers` (
  `immediately_sale_id` bigint NOT NULL COMMENT '즉시할인정보 키(mm_prm_immediately_sales.id)',
  `seller_id` bigint NOT NULL COMMENT '대상 판매자 고유키(mm_adm_sellers.id)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_prm_immediately_sale_apply_sellers`
--

LOCK TABLES `mm_prm_immediately_sale_apply_sellers` WRITE;
/*!40000 ALTER TABLE `mm_prm_immediately_sale_apply_sellers` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_prm_immediately_sale_apply_sellers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_prm_immediately_sale_except_brands`
--

DROP TABLE IF EXISTS `mm_prm_immediately_sale_except_brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_prm_immediately_sale_except_brands` (
  `immediately_sale_id` bigint NOT NULL COMMENT '즉시할인정보 키(mm_prm_immediately_sales.id)',
  `brand_id` bigint NOT NULL COMMENT '대상 진열브랜드 고유코드(mm_shp_brands.id)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_prm_immediately_sale_except_brands`
--

LOCK TABLES `mm_prm_immediately_sale_except_brands` WRITE;
/*!40000 ALTER TABLE `mm_prm_immediately_sale_except_brands` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_prm_immediately_sale_except_brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_prm_immediately_sale_except_categories`
--

DROP TABLE IF EXISTS `mm_prm_immediately_sale_except_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_prm_immediately_sale_except_categories` (
  `immediately_sale_id` bigint NOT NULL COMMENT '즉시할인정보 키(mm_prm_immediately_sales.id)',
  `category_code` bigint NOT NULL COMMENT '대상 카테고리 고유코드(mm_shp_category_inco.code)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_prm_immediately_sale_except_categories`
--

LOCK TABLES `mm_prm_immediately_sale_except_categories` WRITE;
/*!40000 ALTER TABLE `mm_prm_immediately_sale_except_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_prm_immediately_sale_except_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_prm_immediately_sale_except_goods`
--

DROP TABLE IF EXISTS `mm_prm_immediately_sale_except_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_prm_immediately_sale_except_goods` (
  `immediately_sale_id` bigint unsigned NOT NULL COMMENT '즉시할인정보 키(mm_prm_immediately_sales.id)',
  `goods_id` bigint unsigned NOT NULL COMMENT '대상 상품 고유키(mm_gds_items.id)',
  KEY `mm_prm_immediately_sale_except_goods_immediately_sale_id_index` (`immediately_sale_id`),
  KEY `mm_prm_immediately_sale_except_goods_goods_id_index` (`goods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_prm_immediately_sale_except_goods`
--

LOCK TABLES `mm_prm_immediately_sale_except_goods` WRITE;
/*!40000 ALTER TABLE `mm_prm_immediately_sale_except_goods` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_prm_immediately_sale_except_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_prm_immediately_sale_except_sellers`
--

DROP TABLE IF EXISTS `mm_prm_immediately_sale_except_sellers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_prm_immediately_sale_except_sellers` (
  `immediately_sale_id` bigint NOT NULL COMMENT '즉시할인정보 키(mm_prm_immediately_sales.id)',
  `seller_id` bigint NOT NULL COMMENT '대상 판매자 고유키(mm_adm_sellers.id)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_prm_immediately_sale_except_sellers`
--

LOCK TABLES `mm_prm_immediately_sale_except_sellers` WRITE;
/*!40000 ALTER TABLE `mm_prm_immediately_sale_except_sellers` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_prm_immediately_sale_except_sellers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_prm_immediately_sales`
--

DROP TABLE IF EXISTS `mm_prm_immediately_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_prm_immediately_sales` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `seller_id` bigint unsigned NOT NULL COMMENT '대상 판매자 고유키',
  `department_id` bigint unsigned DEFAULT NULL COMMENT '담당 부서 키(App\\Models\\User\\Manager\\CompanyDepartment.id',
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '할인명',
  `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '할인 설명',
  `is_use` tinyint(1) NOT NULL DEFAULT '1' COMMENT '사용 여부',
  `use_from` datetime NOT NULL COMMENT '사용 기간 - 시작일',
  `use_to` datetime NOT NULL COMMENT '사용 기간 - 종료일 ',
  `discount_type` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'rate' COMMENT '할인 율, 금액 구분(KRW : 정액, rate: 정률)',
  `discount_amount` decimal(13,3) unsigned NOT NULL COMMENT '할인 총량',
  `maximum_discount_amount` bigint unsigned NOT NULL DEFAULT '0' COMMENT '최대 할인 금액(0은 미적용)',
  `mall_charge_amount` decimal(13,3) unsigned NOT NULL COMMENT '본사 부담률/액',
  `seller_charge_amount` decimal(13,3) unsigned NOT NULL COMMENT '본사 부담률/액',
  `min_sell_price` bigint unsigned NOT NULL DEFAULT '0' COMMENT '최저 금액 조건(판매가, 0은 미적용)',
  `min_margin` decimal(4,3) unsigned NOT NULL DEFAULT '0.000' COMMENT '최저 마진 조건(0.000 ~ 1.000, 0은 미적용',
  `apply_range_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '쿠폰 적용 범위(seller: 판매자, goods: 상품, category: 카테고리, brand: 진열브랜드)',
  `is_except_by_seller` tinyint(1) NOT NULL DEFAULT '0' COMMENT '판매자 단위 적용 제외 설정여부',
  `is_except_by_goods` tinyint(1) NOT NULL DEFAULT '0' COMMENT '상품 단위 적용 제외 설정여부',
  `is_except_by_category` tinyint(1) NOT NULL DEFAULT '0' COMMENT '카테고리 단위 적용 제외 설정여부',
  `is_except_by_brand` tinyint(1) NOT NULL DEFAULT '0' COMMENT '브랜드 단위 적용 제외 설정여부',
  `created_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '등록관리자 정보',
  `updated_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '수정관리자 정보',
  `deleted_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '삭제관리자 정보',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mm_prm_immediately_sales_title_index` (`title`),
  KEY `mm_prm_immediately_sales_is_use_index` (`is_use`),
  KEY `mm_prm_immediately_sales_use_from_index` (`use_from`),
  KEY `mm_prm_immediately_sales_use_to_index` (`use_to`),
  KEY `mm_prm_immediately_sales_department_id_index` (`department_id`),
  KEY `mm_prm_immediately_sales_deleted_at_index` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_prm_immediately_sales`
--

LOCK TABLES `mm_prm_immediately_sales` WRITE;
/*!40000 ALTER TABLE `mm_prm_immediately_sales` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_prm_immediately_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_prm_night_sale_apply_brands`
--

DROP TABLE IF EXISTS `mm_prm_night_sale_apply_brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_prm_night_sale_apply_brands` (
  `night_sale_id` bigint unsigned NOT NULL COMMENT '심야할인정보 키(mm_prm_night_sales.id)',
  `brand_id` bigint unsigned NOT NULL COMMENT '대상 진열브랜드 고유코드(mm_shp_brands.id)',
  KEY `mm_prm_night_sale_apply_brands_night_sale_id_index` (`night_sale_id`),
  KEY `mm_prm_night_sale_apply_brands_brand_id_index` (`brand_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_prm_night_sale_apply_brands`
--

LOCK TABLES `mm_prm_night_sale_apply_brands` WRITE;
/*!40000 ALTER TABLE `mm_prm_night_sale_apply_brands` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_prm_night_sale_apply_brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_prm_night_sale_apply_categories`
--

DROP TABLE IF EXISTS `mm_prm_night_sale_apply_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_prm_night_sale_apply_categories` (
  `night_sale_id` bigint NOT NULL COMMENT '심야할인정보 키(mm_prm_night_sales.id)',
  `category_code` bigint NOT NULL COMMENT '대상 카테고리 고유코드(mm_shp_category_inco.code)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_prm_night_sale_apply_categories`
--

LOCK TABLES `mm_prm_night_sale_apply_categories` WRITE;
/*!40000 ALTER TABLE `mm_prm_night_sale_apply_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_prm_night_sale_apply_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_prm_night_sale_apply_goods`
--

DROP TABLE IF EXISTS `mm_prm_night_sale_apply_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_prm_night_sale_apply_goods` (
  `night_sale_id` bigint unsigned NOT NULL COMMENT '심야할인정보 키(mm_prm_night_sales.id)',
  `goods_id` bigint unsigned NOT NULL COMMENT '대상 상품 고유키(mm_gds_items.id)',
  KEY `mm_prm_night_sale_apply_goods_night_sale_id_index` (`night_sale_id`),
  KEY `mm_prm_night_sale_apply_goods_goods_id_index` (`goods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_prm_night_sale_apply_goods`
--

LOCK TABLES `mm_prm_night_sale_apply_goods` WRITE;
/*!40000 ALTER TABLE `mm_prm_night_sale_apply_goods` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_prm_night_sale_apply_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_prm_night_sale_apply_sellers`
--

DROP TABLE IF EXISTS `mm_prm_night_sale_apply_sellers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_prm_night_sale_apply_sellers` (
  `night_sale_id` bigint NOT NULL COMMENT '심야할인정보 키(mm_prm_night_sales.id)',
  `seller_id` bigint NOT NULL COMMENT '대상 판매자 고유키(mm_adm_sellers.id)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_prm_night_sale_apply_sellers`
--

LOCK TABLES `mm_prm_night_sale_apply_sellers` WRITE;
/*!40000 ALTER TABLE `mm_prm_night_sale_apply_sellers` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_prm_night_sale_apply_sellers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_prm_night_sale_except_brands`
--

DROP TABLE IF EXISTS `mm_prm_night_sale_except_brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_prm_night_sale_except_brands` (
  `night_sale_id` bigint unsigned NOT NULL COMMENT '심야할인정보 키(mm_prm_night_sales.id)',
  `brand_id` bigint unsigned NOT NULL COMMENT '대상 진열브랜드 고유코드(mm_shp_brands.id)',
  KEY `mm_prm_night_sale_except_brands_night_sale_id_index` (`night_sale_id`),
  KEY `mm_prm_night_sale_except_brands_brand_id_index` (`brand_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_prm_night_sale_except_brands`
--

LOCK TABLES `mm_prm_night_sale_except_brands` WRITE;
/*!40000 ALTER TABLE `mm_prm_night_sale_except_brands` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_prm_night_sale_except_brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_prm_night_sale_except_categoires`
--

DROP TABLE IF EXISTS `mm_prm_night_sale_except_categoires`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_prm_night_sale_except_categoires` (
  `night_sale_id` bigint NOT NULL COMMENT '심야할인정보 키(mm_prm_night_sales.id)',
  `category_code` bigint NOT NULL COMMENT '대상 카테고리 고유코드(mm_shp_category_inco.code)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_prm_night_sale_except_categoires`
--

LOCK TABLES `mm_prm_night_sale_except_categoires` WRITE;
/*!40000 ALTER TABLE `mm_prm_night_sale_except_categoires` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_prm_night_sale_except_categoires` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_prm_night_sale_except_goods`
--

DROP TABLE IF EXISTS `mm_prm_night_sale_except_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_prm_night_sale_except_goods` (
  `night_sale_id` bigint unsigned NOT NULL COMMENT '심야할인정보 키(mm_prm_night_sales.id)',
  `goods_id` bigint unsigned NOT NULL COMMENT '대상 상품 고유키(mm_gds_items.id)',
  KEY `mm_prm_night_sale_except_goods_night_sale_id_index` (`night_sale_id`),
  KEY `mm_prm_night_sale_except_goods_goods_id_index` (`goods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_prm_night_sale_except_goods`
--

LOCK TABLES `mm_prm_night_sale_except_goods` WRITE;
/*!40000 ALTER TABLE `mm_prm_night_sale_except_goods` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_prm_night_sale_except_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_prm_night_sale_except_sellers`
--

DROP TABLE IF EXISTS `mm_prm_night_sale_except_sellers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_prm_night_sale_except_sellers` (
  `night_sale_id` bigint NOT NULL COMMENT '심야할인정보 키(mm_prm_night_sales.id)',
  `seller_id` bigint NOT NULL COMMENT '대상 판매자 고유키(mm_adm_sellers.id)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_prm_night_sale_except_sellers`
--

LOCK TABLES `mm_prm_night_sale_except_sellers` WRITE;
/*!40000 ALTER TABLE `mm_prm_night_sale_except_sellers` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_prm_night_sale_except_sellers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_prm_night_sales`
--

DROP TABLE IF EXISTS `mm_prm_night_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_prm_night_sales` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `seller_id` bigint unsigned NOT NULL COMMENT '대상 판매자 고유키',
  `department_id` bigint unsigned DEFAULT NULL COMMENT '담당 부서 키(App\\Models\\User\\Manager\\CompanyDepartment.id',
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '할인명',
  `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '할인 설명',
  `is_use` tinyint(1) NOT NULL DEFAULT '1' COMMENT '사용 여부',
  `use_from` datetime NOT NULL COMMENT '사용 기간 - 시작일',
  `use_to` datetime NOT NULL COMMENT '사용 기간 - 종료일 ',
  `start_hour` tinyint unsigned NOT NULL COMMENT '시작 시(0~23)',
  `start_minute` tinyint unsigned NOT NULL COMMENT '시작 분(0~59)',
  `duration_hour` tinyint unsigned NOT NULL COMMENT '지속시간(1~23)',
  `is_active_on_monday` tinyint(1) NOT NULL DEFAULT '0',
  `is_active_on_tuesday` tinyint(1) NOT NULL DEFAULT '0',
  `is_active_on_wednesday` tinyint(1) NOT NULL DEFAULT '0',
  `is_active_on_thursday` tinyint(1) NOT NULL DEFAULT '0',
  `is_active_on_friday` tinyint(1) NOT NULL DEFAULT '0',
  `is_active_on_saturday` tinyint(1) NOT NULL DEFAULT '0',
  `is_active_on_sunday` tinyint(1) NOT NULL DEFAULT '0',
  `discount_type` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'rate' COMMENT '할인 율, 금액 구분(KRW : 정액, rate: 정률)',
  `discount_amount` decimal(13,3) unsigned NOT NULL COMMENT '할인 총량',
  `maximum_discount_amount` bigint unsigned NOT NULL DEFAULT '0' COMMENT '최대 할인 금액(0은 미적용)',
  `mall_charge_amount` decimal(13,3) unsigned NOT NULL COMMENT '본사 부담률/액',
  `seller_charge_amount` decimal(13,3) unsigned NOT NULL COMMENT '본사 부담률/액',
  `min_sell_price` bigint unsigned NOT NULL DEFAULT '0' COMMENT '최저 금액 조건(판매가, 0은 미적용)',
  `min_margin` decimal(4,3) unsigned NOT NULL DEFAULT '0.000' COMMENT '최저 마진 조건(0.000 ~ 1.000, 0은 미적용',
  `apply_range_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '쿠폰 적용 범위(seller: 판매자, goods: 상품, category: 카테고리, brand: 진열브랜드)',
  `is_except_by_seller` tinyint(1) NOT NULL DEFAULT '0' COMMENT '판매자 단위 적용 제외 설정여부',
  `is_except_by_goods` tinyint(1) NOT NULL DEFAULT '0' COMMENT '상품 단위 적용 제외 설정여부',
  `is_except_by_category` tinyint(1) NOT NULL DEFAULT '0' COMMENT '카테고리 단위 적용 제외 설정여부',
  `is_except_by_brand` tinyint(1) NOT NULL DEFAULT '0' COMMENT '브랜드 단위 적용 제외 설정여부',
  `created_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '등록관리자 정보',
  `updated_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '수정관리자 정보',
  `deleted_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '삭제관리자 정보',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mm_prm_night_sales_title_index` (`title`),
  KEY `mm_prm_night_sales_is_use_index` (`is_use`),
  KEY `mm_prm_night_sales_use_from_index` (`use_from`),
  KEY `mm_prm_night_sales_use_to_index` (`use_to`),
  KEY `mm_prm_night_sales_department_id_index` (`department_id`),
  KEY `mm_prm_night_sales_deleted_at_index` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_prm_night_sales`
--

LOCK TABLES `mm_prm_night_sales` WRITE;
/*!40000 ALTER TABLE `mm_prm_night_sales` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_prm_night_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_sch_auto_complete_keywords`
--

DROP TABLE IF EXISTS `mm_sch_auto_complete_keywords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_sch_auto_complete_keywords` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '고유번호',
  `keyword` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '검색어',
  `searched_count` int unsigned NOT NULL COMMENT '검색된 횟수',
  `recent_searched_at` datetime NOT NULL COMMENT '최근 검색된 시간',
  PRIMARY KEY (`id`),
  KEY `mm_sch_auto_complete_keywords_keyword_index` (`keyword`),
  KEY `mm_sch_auto_complete_keywords_searched_count_index` (`searched_count`),
  KEY `mm_sch_auto_complete_keywords_recent_searched_at_index` (`recent_searched_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_sch_auto_complete_keywords`
--

LOCK TABLES `mm_sch_auto_complete_keywords` WRITE;
/*!40000 ALTER TABLE `mm_sch_auto_complete_keywords` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_sch_auto_complete_keywords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_sch_raw_search_logs`
--

DROP TABLE IF EXISTS `mm_sch_raw_search_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_sch_raw_search_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '로깅 키',
  `context_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '검색 컨텍스트 고유키 - state 유지/그룹화용 context 식별자',
  `member_id` bigint unsigned DEFAULT NULL COMMENT '회원 고유키(부가사용 용도)',
  `keyword` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '검색을 시도한 텍스트',
  `searched_at` datetime NOT NULL COMMENT '검색을 시도한 시간',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_sch_raw_search_logs`
--

LOCK TABLES `mm_sch_raw_search_logs` WRITE;
/*!40000 ALTER TABLE `mm_sch_raw_search_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_sch_raw_search_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_sch_related_keywords`
--

DROP TABLE IF EXISTS `mm_sch_related_keywords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_sch_related_keywords` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '레코드 고유키',
  `keyword_a` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '키워드 A',
  `keyword_b` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '키워드 B',
  `related_at` datetime NOT NULL COMMENT '연결고리 생성시간',
  PRIMARY KEY (`id`),
  KEY `mm_sch_related_keywords_keyword_a_index` (`keyword_a`),
  KEY `mm_sch_related_keywords_keyword_b_index` (`keyword_b`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_sch_related_keywords`
--

LOCK TABLES `mm_sch_related_keywords` WRITE;
/*!40000 ALTER TABLE `mm_sch_related_keywords` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_sch_related_keywords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_sch_trend_keyword_groups`
--

DROP TABLE IF EXISTS `mm_sch_trend_keyword_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_sch_trend_keyword_groups` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '집계단위 그룹번호',
  `range_from` datetime NOT NULL COMMENT '집계범위 시작시간',
  `range_to` datetime NOT NULL COMMENT '집계범위 종료시간',
  `aggregated_at` datetime NOT NULL COMMENT '집계생성 기준시간',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_sch_trend_keyword_groups`
--

LOCK TABLES `mm_sch_trend_keyword_groups` WRITE;
/*!40000 ALTER TABLE `mm_sch_trend_keyword_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_sch_trend_keyword_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_sch_trend_keywords`
--

DROP TABLE IF EXISTS `mm_sch_trend_keywords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_sch_trend_keywords` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '인기 검색어 레코드 고유키',
  `group_id` bigint unsigned NOT NULL COMMENT '인기 검색어 집계그룹 고유키(mm_sch_trend_keyword_groups.id)',
  `rank` int unsigned NOT NULL COMMENT '순위',
  `keyword` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '검색어',
  `change_type` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '순위변동구분(S: 유지, U: 상승, D: 하락, N: 신규)',
  `change_value` int NOT NULL DEFAULT '0' COMMENT '순위변동값(신규는 0으로 취급)',
  `searched_count` int unsigned NOT NULL COMMENT '검색된 횟수',
  PRIMARY KEY (`id`),
  KEY `mm_sch_trend_keywords_group_id_index` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_sch_trend_keywords`
--

LOCK TABLES `mm_sch_trend_keywords` WRITE;
/*!40000 ALTER TABLE `mm_sch_trend_keywords` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_sch_trend_keywords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_scm_auth_logs`
--

DROP TABLE IF EXISTS `mm_scm_auth_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_scm_auth_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `loggable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `loggable_id` bigint unsigned NOT NULL,
  `ip` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '접속시도 IP',
  `is_success` tinyint(1) NOT NULL DEFAULT '0' COMMENT '접속 성공여부',
  `server_machine_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '처리한 서버 머신명',
  `action` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'login' COMMENT '행동구분(login, logout 등 활용)',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `loggable_type_loggable_id_index` (`loggable_type`,`loggable_id`),
  KEY `loggable_type_index` (`loggable_type`),
  KEY `is_success_index` (`is_success`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_scm_auth_logs`
--

LOCK TABLES `mm_scm_auth_logs` WRITE;
/*!40000 ALTER TABLE `mm_scm_auth_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_scm_auth_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_scm_auth_template_details`
--

DROP TABLE IF EXISTS `mm_scm_auth_template_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_scm_auth_template_details` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '고유번호',
  `auth_template_id` bigint unsigned NOT NULL COMMENT '관리자권한 그룹 고유번호 (mm_mem_adauth_group.id)',
  `menu_id` bigint unsigned NOT NULL COMMENT '관리자 메뉴 고유번호',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=184 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='관리자 권한 상세';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_scm_auth_template_details`
--

LOCK TABLES `mm_scm_auth_template_details` WRITE;
/*!40000 ALTER TABLE `mm_scm_auth_template_details` DISABLE KEYS */;
INSERT INTO `mm_scm_auth_template_details` VALUES (1,1,1),(2,1,2),(3,1,4),(4,1,9),(5,1,21),(6,1,24),(7,1,28),(8,1,34),(9,1,38),(10,1,50),(11,1,60),(12,1,63),(13,1,71),(14,1,73),(15,1,81),(16,1,84),(17,1,87),(18,1,90),(19,1,93),(20,1,97),(21,1,105),(22,1,112),(23,1,116),(24,1,119),(25,1,122),(26,1,133),(27,1,142),(28,1,148),(29,1,151),(30,1,156),(31,1,165),(32,1,170),(33,1,172),(34,1,183),(35,1,186),(36,1,189),(37,1,3),(38,1,5),(39,1,10),(40,1,22),(41,1,23),(42,1,25),(43,1,29),(44,1,35),(45,1,39),(46,1,51),(47,1,61),(48,1,64),(49,1,72),(50,1,74),(51,1,82),(52,1,85),(53,1,88),(54,1,91),(55,1,94),(56,1,98),(57,1,106),(58,1,113),(59,1,117),(60,1,120),(61,1,123),(62,1,134),(63,1,143),(64,1,149),(65,1,157),(66,1,166),(67,1,171),(68,1,173),(69,1,184),(70,1,187),(71,1,190),(72,1,6),(73,1,8),(74,1,11),(75,1,26),(76,1,30),(77,1,36),(78,1,37),(79,1,40),(80,1,43),(81,1,52),(82,1,65),(83,1,80),(84,1,99),(85,1,107),(86,1,114),(87,1,121),(88,1,144),(89,1,158),(90,1,174),(91,1,185),(92,1,191),(93,1,7),(94,1,12),(95,1,17),(96,1,27),(97,1,44),(98,1,45),(99,1,49),(100,1,53),(101,1,66),(102,1,76),(103,1,83),(104,1,100),(105,1,108),(106,1,115),(107,1,145),(108,1,159),(109,1,188),(110,1,192),(111,1,13),(112,1,18),(113,1,31),(114,1,46),(115,1,54),(116,1,70),(117,1,77),(118,1,86),(119,1,101),(120,1,109),(121,1,146),(122,1,160),(123,1,176),(124,1,193),(125,1,200),(126,1,14),(127,1,19),(128,1,32),(129,1,47),(130,1,55),(131,1,78),(132,1,89),(133,1,96),(134,1,102),(135,1,110),(136,1,135),(137,1,147),(138,1,161),(139,1,177),(140,1,194),(141,1,15),(142,1,20),(143,1,33),(144,1,48),(145,1,79),(146,1,92),(147,1,103),(148,1,111),(149,1,136),(150,1,150),(151,1,162),(152,1,178),(153,1,195),(154,1,16),(155,1,95),(156,1,104),(157,1,118),(158,1,137),(159,1,152),(160,1,163),(161,1,179),(162,1,196),(163,1,130),(164,1,138),(165,1,141),(166,1,153),(167,1,180),(168,1,197),(169,1,59),(170,1,139),(171,1,154),(172,1,169),(173,1,181),(174,1,198),(175,1,62),(176,1,140),(177,1,155),(178,1,199),(179,1,164),(180,1,68),(181,1,167),(182,1,69),(183,1,168);
/*!40000 ALTER TABLE `mm_scm_auth_template_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_scm_auth_templates`
--

DROP TABLE IF EXISTS `mm_scm_auth_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_scm_auth_templates` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '고유번호',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '관리자권한 그룹 이름',
  `is_use` tinyint unsigned NOT NULL DEFAULT '1' COMMENT '사용여부',
  `created_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '등록 회원',
  `updated_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '수정 회원',
  `deleted_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '삭제 회원',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '등록 일시',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '수정 일시',
  `deleted_at` datetime DEFAULT NULL COMMENT '삭제 일시',
  PRIMARY KEY (`id`),
  KEY `mm_scm_auth_templates_delete_at_index` (`deleted_at`),
  KEY `mm_scm_auth_templates_is_use_index` (`is_use`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='관리자 권한 그룹';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_scm_auth_templates`
--

LOCK TABLES `mm_scm_auth_templates` WRITE;
/*!40000 ALTER TABLE `mm_scm_auth_templates` DISABLE KEYS */;
INSERT INTO `mm_scm_auth_templates` VALUES (1,'전체 권한 관리',1,'SYSTEM(INSTALL)','',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL);
/*!40000 ALTER TABLE `mm_scm_auth_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_scm_bookmarks`
--

DROP TABLE IF EXISTS `mm_scm_bookmarks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_scm_bookmarks` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `bookmarkable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bookmarkable_id` bigint unsigned NOT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '링크',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '이름',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bookmarkable_type_bookmarkable_id_index` (`bookmarkable_type`,`bookmarkable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_scm_bookmarks`
--

LOCK TABLES `mm_scm_bookmarks` WRITE;
/*!40000 ALTER TABLE `mm_scm_bookmarks` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_scm_bookmarks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_scm_departments`
--

DROP TABLE IF EXISTS `mm_scm_departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_scm_departments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '고유번호',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '부서명',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '등록 일시',
  `created_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '등록자',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '수정 일시',
  `updated_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '수정자',
  `deleted_at` datetime DEFAULT NULL COMMENT '삭제 일시',
  `deleted_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '삭제자',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='업무관리부서정보';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_scm_departments`
--

LOCK TABLES `mm_scm_departments` WRITE;
/*!40000 ALTER TABLE `mm_scm_departments` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_scm_departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_scm_mail_logs`
--

DROP TABLE IF EXISTS `mm_scm_mail_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_scm_mail_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '메일 발송 제목',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '메일 발송 내용',
  `from_manager_id` bigint unsigned NOT NULL COMMENT '발송자 id',
  `from_manager_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '발송자 명',
  `to_member_id` bigint unsigned NOT NULL COMMENT '수신자 id',
  `to_member_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '수신자 명',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '생성일시',
  PRIMARY KEY (`id`),
  KEY `mm_scm_mail_logs_from_manager_id_index` (`from_manager_id`),
  KEY `mm_scm_mail_logs_to_member_id_index` (`to_member_id`),
  KEY `mm_scm_mail_logs_createdat_index` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_scm_mail_logs`
--

LOCK TABLES `mm_scm_mail_logs` WRITE;
/*!40000 ALTER TABLE `mm_scm_mail_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_scm_mail_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_scm_menus`
--

DROP TABLE IF EXISTS `mm_scm_menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_scm_menus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '고유번호',
  `code` char(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '코드',
  `root_id` bigint unsigned NOT NULL DEFAULT '0' COMMENT '최상위 메뉴 고유번호 (0은 자기자신)',
  `parent_id` bigint unsigned NOT NULL DEFAULT '0' COMMENT '부모 메뉴 고유번호 (0은 자기자신)',
  `depth` tinyint NOT NULL DEFAULT '1' COMMENT '메뉴 깊이',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '메뉴 이름',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '메뉴경로 로케이션',
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#' COMMENT '메뉴 링크',
  `is_display` tinyint unsigned NOT NULL DEFAULT '1' COMMENT '메뉴 노출 여부',
  `order_seq` int unsigned NOT NULL DEFAULT '4294967295' COMMENT '노출 순서',
  `created_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '시스템(Seeder)' COMMENT '등록 사용자',
  `updated_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '시스템(Seeder)' COMMENT '수정 사용자',
  `deleted_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '삭제 사용자',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '등록 일시',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '수정 일시',
  `deleted_at` datetime DEFAULT NULL COMMENT '삭제 일시',
  `is_manager_accessable` tinyint(1) NOT NULL DEFAULT '1' COMMENT '최고관리자 접근가능여부',
  `is_middle_accessable` tinyint(1) NOT NULL DEFAULT '0' COMMENT '중간관리자 접근가능여부',
  `is_seller_accessable` tinyint(1) NOT NULL DEFAULT '0' COMMENT '셀러 접근가능여부',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mm_scm_menus_temp_code_unique` (`code`),
  KEY `mm_scm_menus_temp_code_index` (`code`),
  KEY `mm_scm_menus_temp_deleted_at_index` (`deleted_at`),
  KEY `mm_scm_menus_temp_depth_index` (`depth`),
  KEY `mm_scm_menus_temp_display_is_index` (`is_display`),
  KEY `mm_scm_menus_temp_order_seq_index` (`order_seq`),
  KEY `mm_scm_menus_temp_parent_id_index` (`parent_id`),
  KEY `mm_scm_menus_temp_root_id_index` (`root_id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='관리자 메뉴(임시테이블)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_scm_menus`
--

LOCK TABLES `mm_scm_menus` WRITE;
/*!40000 ALTER TABLE `mm_scm_menus` DISABLE KEYS */;
INSERT INTO `mm_scm_menus` VALUES (1,'SHOP',0,0,1,'쇼핑몰관리','쇼핑몰관리','#',1,1,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,1,1),(2,'SHOP.POLICY',1,1,2,'약관','쇼핑몰관리 > 약관','/shop/policies/agreement',1,1,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(3,'SHOP.AUTH',1,1,2,'권한','쇼핑몰관리 > 권한','#',1,2,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(4,'SHOP.AUTH.MANAGER',1,3,3,'관리자','쇼핑몰관리 > 권한 > 관리자','/shop/auth/managers',1,1,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(5,'SHOP.AUTH.MYINFO',1,3,3,'내 정보','쇼핑몰관리 > 권한 > 내 정보','/shop/auth/my-info',1,2,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(6,'SHOP.AUTH.DEPARTMENT',1,3,3,'부서','쇼핑몰관리 > 권한 > 부서','/shop/auth/departments',1,3,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(7,'SHOP.AUTH.AUTH-TEMPLATE',1,3,3,'접근권한','쇼핑몰관리 > 권한 > 접근권한','/shop/auth/auth-templates',1,4,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(8,'SHOP.LOG',1,1,2,'로그 정보','쇼핑몰관리 > 로그 정보','#',1,3,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,1,1),(9,'SHOP.LOG.LOGIN',1,8,3,'관리자 로그인','쇼핑몰관리 > 로그 정보 > 관리자 로그인','/shop/logs/login',1,1,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(10,'SHOP.LOG.GOODS-PRICE-CHANGE',1,8,3,'상품 가격 변경','쇼핑몰관리 > 로그 정보 > 상품 가격 변경','/shop/logs/goods-price-change',1,2,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,1,1),(11,'SHOP.LOG.GOODS-OPTION-CHANGE',1,8,3,'상품 옵션 변경','쇼핑몰관리 > 로그 정보 > 상품 옵션 변경','/shop/logs/goods-option-change',1,3,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,1,1),(12,'SHOP.LOG.GOODS-INFO-CHANGE',1,8,3,'상품 정보 변경','쇼핑몰관리 > 로그 정보 > 상품 정보 변경','/shop/logs/goods-info-change',1,4,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,1,1),(13,'SHOP.LOG.GOODS-SALE-RESERVE-CHANGE',1,8,3,'예약판매 변경','쇼핑몰관리 > 로그 정보 > 예약판매 변경','/shop/logs/goods-sale-reserve-change',1,5,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,1,1),(14,'SHOP.LOG.ORDER-STATUS-CHANGE',1,8,3,'주문 상태 수동 변경','쇼핑몰관리 > 로그 정보 > 주문 상태 수동 변경','/shop/logs/order-status-change',1,6,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,1,1),(15,'SHOP.LOG.MEMBER-INFO-CHANGE',1,8,3,'회원 정보 수동 변경','쇼핑몰관리 > 로그 정보 > 회원 정보 수동 변경','/shop/logs/member-info-change',1,7,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(16,'SHOP.LOG.KAKAO-ALIMTALK',1,8,3,'알림톡 발송','쇼핑몰관리 > 로그 정보 > 알림톡 발송','/shop/logs/kakao-alimtalk',1,8,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(17,'SHOP.NOTIFICATION-TEMPLATE',1,1,2,'자동메일/SMS 템플릿','쇼핑몰관리 > 자동메일/SMS 템플릿','/shop/notification-templates',1,4,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(18,'SHOP.EXTRA-SHIPPING-PRICE-ADDRESS',1,1,2,'도서산간 지역 설정','쇼핑몰관리 > 도서산간 지역 설정','/shop/extra-shipping-price-addresses',1,5,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(19,'SHOP.SEO',1,1,2,'검색엔진 최적화(SEO)','쇼핑몰관리 > 검색엔진 최적화(SEO)','/shop/seo',1,6,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(20,'SHOP.PENALTY-AND-COMPLAIN',1,1,2,'패널티/보상','쇼핑몰관리 > 패널티/보상','#',1,7,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(21,'SHOP.PENALTY-AND-COMPLAIN.PENALTY',1,20,3,'패널티','쇼핑몰관리 > 패널티/보상 > 패널티','/shop/penalty-and-complain/penalty',1,1,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(22,'SHOP.PENALTY-AND-COMPLAIN.COMPLAIN',1,20,3,'고객 보상','쇼핑몰관리 > 패널티/보상 > 고객 보상','/shop/penalty-and-complain/complain',1,2,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(23,'MEMBER',0,0,1,'회원관리','회원관리','#',1,2,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(24,'MEMBER.MANAGE',23,23,2,'회원','회원관리 > 회원','/members/manage',1,1,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(25,'MEMBER.EMPLOYEE',23,23,2,'임직원','회원관리 > 임직원','/members/employees',1,2,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(26,'MEMBER.PUSH',23,23,2,'PUSH','회원관리 > PUSH','/members/app-pushes',1,3,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(27,'MEMBER.BULK-MESSAGE',23,23,2,'대량 이메일/SMS','회원관리 > 대량 이메일/SMS','#',1,4,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(28,'MEMBER.BULK-MESSAGE.TEMPLATE',23,27,3,'템플릿 관리','회원관리 > 대량 이메일/SMS > 템플릿 관리','/members/bulk-message/template',1,1,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(29,'MEMBER.BULK-MESSAGE.SEND',23,27,3,'이메일/SMS 발송','회원관리 > 대량 이메일/SMS > 이메일/SMS 발송','/members/bulk-message/send',1,2,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(30,'MEMBER.BULK-MESSAGE.LOG',23,27,3,'이메일/SMS 발송내역','회원관리 > 대량 이메일/SMS > 이메일/SMS 발송내역','/members/bulk-message/log',1,3,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(31,'MEMBER.SLEPT-MEMBER',23,23,2,'휴면회원','회원관리 > 휴면회원','/members/slept-members',1,5,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(32,'MEMBER.GRADE',23,23,2,'회원등급','회원관리 > 회원등급','/members/grades',1,6,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(33,'MEMBER.POINT',23,23,2,'리워드포인트 설정','회원관리 > 리워드포인트 설정','#',1,7,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(34,'MEMBER.POINT.RULE',23,33,3,'리워드포인트 설정','회원관리 > 리워드포인트 설정 > 리워드포인트 설정','/members/point/rules',1,1,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(35,'MEMBER.POINT.STATUS',23,33,3,'전체 리워드포인트','회원관리 > 리워드포인트 설정 > 전체 리워드포인트','/members/point/status',1,2,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(36,'MEMBER.POINT.STATUS-BY-MEMBER',23,33,3,'개별 리워드포인트','회원관리 > 리워드포인트 설정 > 개별 리워드포인트','/members/point/status-by-member',1,3,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(37,'SELLER',0,0,1,'셀러관리','셀러관리','#',1,3,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,1,1),(38,'SELLER.NOTICE',37,37,2,'셀러 공지','셀러관리 > 셀러 공지','/seller/notices',1,1,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,1,1),(39,'SELLER.POPUP',37,37,2,'셀러 팝업','셀러관리 > 셀러 팝업','/seller/popups',1,2,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(40,'SELLER.MANAGE',37,37,2,'셀러','셀러관리 > 셀러','#',1,3,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,1,1),(41,'SELLER.MANAGE.MIDDLE',37,40,3,'중간관리자','셀러관리 > 셀러 > 중간관리자','/seller/manage/middles',0,1,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,1,0),(42,'SELLER.MANAGE.MIDDLE-USER-CONTRACT',37,40,3,'중간관리자 계약','셀러관리 > 셀러 > 중간관리자 계약','/seller/manage/middle-user-contracts',0,2,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(43,'SELLER.MANAGE.SELLER',37,40,3,'셀러 관리자','셀러관리 > 셀러 > 셀러 관리자','/seller/manage/sellers',1,3,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,1,1),(44,'SELLER.MANAGE.SELLER-OFFDAY',37,40,3,'셀러별 휴무일','셀러관리 > 셀러 > 셀러별 휴무일','/seller/manage/seller-offday',1,4,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,1,1),(45,'SELLER.BRAND',37,37,2,'브랜드','셀러관리 > 브랜드','/seller/brands',1,4,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(46,'SELLER.BRAND-CATEGORY',37,37,2,'브랜드 구분','셀러관리 > 브랜드 구분','/seller/brand-categories',1,5,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(47,'SELLER.ORVERSEAS-DELIVERY',37,37,2,'해외배송 셀러','셀러관리 > 해외배송 셀러','/seller/overseas-delivery',1,6,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,1,0),(48,'SELLER.CUSTOM-MADE',37,37,2,'주문제작 셀러','셀러관리 > 주문제작 셀러','/seller/custom-made',1,7,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,1,0),(49,'GOODS',0,0,1,'상품관리','상품관리','#',1,4,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,1,1),(50,'GOODS.CATEGORY',49,49,2,'상품 카테고리','상품관리 > 상품 카테고리','/goods/categories',1,1,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(51,'GOODS.MANAGE',49,49,2,'상품 등록/수정','상품관리 > 상품 등록/수정','/goods/manage',1,2,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,1,1),(52,'GOODS.APPROVAL',49,49,2,'상품 승인','상품관리 > 상품 승인','/goods/approval',1,3,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,1,1),(53,'GOODS.PACKAGE',49,49,2,'세트 상품','상품관리 > 세트 상품','/goods/packages',1,4,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,1,1),(54,'GOODS.MANDATORY',49,49,2,'상품 속성','상품관리 > 상품 속성','/goods/mandatories',1,5,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(55,'GOODS.SOLD-OUT',49,49,2,'품절 상품','상품관리 > 품절 상품','/goods/sold-out',1,6,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,1,1),(56,'GOODS.ICON',49,49,2,'상품 아이콘','상품관리 > 상품 아이콘','/goods/icons',0,7,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(57,'GOODS.IN-STOCK-NOTIFY',49,49,2,'재입고','상품관리 > 재입고','/goods/in-stock-notifies',0,8,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,1,1),(58,'GOODS.GIVEAWAY',49,49,2,'사은품','상품관리 > 사은품','/goods/giveaways',0,9,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,1,1),(59,'GOODS.FORBIDDEN-WORD',49,49,2,'금지어','상품관리 > 금지어','#',1,10,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(60,'GOODS.FORBIDDEN-WORD.EXCEPT',49,59,3,'금지어 해제','상품관리 > 금지어 > 금지어 해제','/goods/forbidden-word/except',1,1,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(61,'GOODS.FORBIDDEN-WORD.MANAGE',49,59,3,'금지어 관리','상품관리 > 금지어 > 금지어 관리','/goods/forbidden-word/manage',1,2,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(62,'GOODS.BUNDLE-MANAGE',49,49,2,'상품 일괄','상품관리 > 상품 일괄','#',1,11,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,1,1),(63,'GOODS.BUNDLE-MANAGE.CATEGORY',49,62,3,'상품 이동','상품관리 > 상품 일괄 > 상품 이동','/goods/bundle-manage/category',1,1,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,1,1),(64,'GOODS.BUNDLE-MANAGE.PRICE',49,62,3,'상품 가격','상품관리 > 상품 일괄 > 상품 가격','/goods/bundle-manage/price',1,2,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,1,1),(65,'GOODS.BUNDLE-MANAGE.DISPLAY',49,62,3,'상품 진열','상품관리 > 상품 일괄 > 상품 진열','/goods/bundle-manage/display',1,3,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,1,1),(66,'GOODS.BUNDLE-MANAGE.STOCK',49,62,3,'상품 재고','상품관리 > 상품 일괄 > 상품 재고','/goods/bundle-manage/stock',1,4,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,1,1),(67,'GOODS.HEADLINE',49,49,2,'말머리 설정','상품관리 > 말머리 설정','/goods/headlines',0,12,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(68,'GOODS.COLOR',49,49,2,'상품색상 설정','상품관리 > 상품색상 설정','/goods/colors',1,13,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(69,'GOODS.SALE-RESERVE',49,49,2,'예약판매 상품','상품관리 > 예약판매 상품','/goods/sale-reserves',1,14,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,1,1),(70,'PROMOTION',0,0,1,'프로모션','프로모션','#',1,5,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,1,1),(71,'PROMOTION.BASE-SALE.BASE-COUPON',70,70,2,'1차 쿠폰','프로모션 > 1차 쿠폰','/promotion/base-sale/base-coupons',1,1,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(72,'PROMOTION.EXTRA-COUPON',70,70,2,'중복 쿠폰','프로모션 > 중복 쿠폰','#',1,2,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(73,'PROMOTION.EXTRA-COUPON.DOWNLOAD',70,72,3,'다운로드 쿠폰','프로모션 > 중복 쿠폰 > 다운로드 쿠폰','/promotion/extra-coupons/download',1,1,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(74,'PROMOTION.EXTRA-COUPON.NAVER-EP',70,72,3,'네이버 EP 쿠폰','프로모션 > 중복 쿠폰 > 네이버 EP 쿠폰','/promotion/extra-coupons/ep/naver',1,2,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(75,'PROMOTION.EXTRA-COUPON.DAUM-EP',70,72,3,'다음 EP 쿠폰','프로모션 > 중복 쿠폰 > 다음 EP 쿠폰','/promotion/extra-coupons/ep/daum',0,3,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(76,'PROMOTION.EXTRA-COUPON.AUTO',70,72,3,'자동발행쿠폰','프로모션 > 중복 쿠폰 > 자동발행쿠폰','/promotion/extra-coupons/auto-publish',1,4,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(77,'PROMOTION.EXTRA-COUPON.AUTO-SETTING',70,72,3,'자동발행쿠폰 설정','프로모션 > 중복 쿠폰 > 자동발행쿠폰 설정','/promotion/extra-coupons/auto-publish-map',1,5,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(78,'PROMOTION.EXTRA-COUPON.MANUAL-PUBLISH',70,72,3,'쿠폰 수동발급','프로모션 > 중복 쿠폰 > 쿠폰 수동발급','/promotion/extra-coupons/manual-publish',1,6,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(79,'PROMOTION.EXTRA-COUPON.PAPER',70,72,3,'페이퍼 쿠폰','프로모션 > 중복 쿠폰 > 페이퍼 쿠폰','/promotion/extra-coupons/paper',1,7,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(80,'PROMOTION.ADD-SALE',70,70,2,'추가 할인','프로모션 > 추가 할인','#',1,3,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(81,'PROMOTION.ADD-SALE.NIGHT',70,80,3,'심야 할인','프로모션 > 추가 할인 > 심야 할인','/promotion/add-sale/night',1,1,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(82,'PROMOTION.ADD-SALE.IMMEDIATELY',70,80,3,'즉시 할인','프로모션 > 추가 할인 > 즉시 할인','/promotion/add-sale/immediately',1,2,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(83,'PROMOTION.SELLER-CHARGE',70,70,2,'셀러 부담 할인','프로모션 > 셀러 부담 할인','#',1,4,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,0,1,1),(84,'PROMOTION.SELLER-CHARGE.BASE-COUPON',70,83,3,'1차 쿠폰','프로모션 > 셀러 부담 할인 > 1차 쿠폰','/promotion/seller-charge/base-coupons',1,1,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,0,1,1),(85,'PROMOTION.SELLER-CHARGE.DOWNLOAD-COUPON',70,83,3,'다운로드 쿠폰','프로모션 > 셀러 부담 할인 > 다운로드 쿠폰','/promotion/seller-charge/download-coupons',1,2,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,0,1,1),(86,'PROMOTION.EXCEPT-EP-COUPON',70,70,2,'EP 할인 적용 제외','프로모션 > EP 할인 적용 제외','#',1,5,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(87,'PROMOTION.EXCEPT-EP-COUPON.GOODS',70,86,3,'상품','프로모션 > EP 할인 적용 제외 > 상품','/promotion/except/ep-coupon/goods',1,1,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(88,'PROMOTION.EXCEPT-EP-COUPON.SELLER',70,86,3,'셀러','프로모션 > EP 할인 적용 제외 > 셀러','/promotion/except/ep-coupon/seller',1,2,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(89,'PROMOTION.EXCEPT-EP-SHOW',70,70,2,'EP 노출 제외','프로모션 > EP 노출 제외','#',1,6,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(90,'PROMOTION.EXCEPT-EP-SHOW.GOODS',70,89,3,'상품','프로모션 > EP 노출 제외 > 상품','/promotion/except/ep-show/goods',1,1,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(91,'PROMOTION.EXCEPT-EP-SHOW.SELLER',70,89,3,'셀러','프로모션 > EP 노출 제외 > 셀러','/promotion/except/ep-show/seller',1,2,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(92,'PROMOTION.EXCEPT-AFFILIATE',70,70,2,'제휴 할인 적용 제외','프로모션 > 제휴 할인 적용 제외','#',1,7,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(93,'PROMOTION.EXCEPT-AFFILIATE.GOODS',70,92,3,'상품','프로모션 > 제휴 할인 적용 제외 > 상품','/promotion/except/affiliate/goods',1,1,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(94,'PROMOTION.EXCEPT-AFFILIATE.SELLER',70,92,3,'셀러','프로모션 > 제휴 할인 적용 제외 > 셀러','/promotion/except/affiliate/seller',1,2,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(95,'PROMOTION.AFFILIATE-EXCEPT-GOODS',70,70,2,'제휴사별 할인 예외','프로모션 > 제휴사별 할인 예외','/promotion/except/affiliate-except-goods',1,8,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(96,'ORDER',0,0,1,'주문관리','주문관리','#',1,6,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,1,1),(97,'ORDER.RECEIPT',96,96,2,'주문 내역','주문관리 > 주문 내역','/order/receipts',1,1,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,1,1),(98,'ORDER.SEPARATE',96,96,2,'개인정보 보호대상','주문관리 > 개인정보 보호대상','/order/separates',1,2,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(99,'ORDER.SHIPPING',96,96,2,'배송','주문관리 > 배송','/order/shippings',1,3,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,1,1),(100,'ORDER.CANCEL',96,96,2,'취소','주문관리 > 취소','/order/cancels',1,4,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,1,1),(101,'ORDER.RETURN',96,96,2,'반품','주문관리 > 반품','/order/returns',1,5,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,1,1),(102,'ORDER.EXCHANGE',96,96,2,'교환','주문관리 > 교환','/order/exchanges',1,6,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,1,1),(103,'ORDER.REFUND',96,96,2,'환불','주문관리 > 환불','/order/refunds',1,7,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(104,'ORDER.PENALTY',96,96,2,'패널티','주문관리 > 패널티','#',1,8,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,1,1),(105,'ORDER.PENALTY.RECEIPT-DELAY',96,104,3,'주문 미접수','주문관리 > 패널티 > 주문 미접수','/order/penalties/receipt-delays',1,1,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,1,1),(106,'ORDER.PENALTY.RELEASE-DELAY',96,104,3,'배송 지연','주문관리 > 패널티 > 배송 지연','/order/penalties/release-delays',1,2,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,1,1),(107,'ORDER.PENALTY.CANCEL-BY-SOLDOUT',96,104,3,'품절','주문관리 > 패널티 > 품절','/order/penalties/cancel-by-soldouts',1,3,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,1,1),(108,'ORDER.PENALTY.FAKE-RELEASE',96,104,3,'가송장','주문관리 > 패널티 > 가송장','/order/penalties/fake-releases',1,4,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,1,1),(109,'ORDER.PENALTY.RETURN-DEALY',96,104,3,'반품완료 미처리','주문관리 > 패널티 > 반품완료 미처리','/order/penalties/return-delays',1,5,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,1,1),(110,'ORDER.PENALTY.EXCHANGE-DELAY',96,104,3,'교환완료 미처리','주문관리 > 패널티 > 교환완료 미처리','/order/penalties/exchange-delays',1,6,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,1,1),(111,'SETTLEMENT',0,0,1,'정산관리','정산관리','#',1,7,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,1,1),(112,'SETTLEMENT.STATUS',111,111,2,'정산현황','정산관리 > 정산현황','/settlement/status',1,1,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(113,'SETTLEMENT.REPORT',111,111,2,'정산집계','정산관리 > 정산집계','/settlement/reports',1,2,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,1,1),(114,'SETTLEMENT.TAX-REPORT',111,111,2,'부가세 신고 내역','정산관리 > 부가세 신고 내역','/settlement/tax-reports',1,3,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,1,1),(115,'SETTLEMENT.CORRECTION-BY-BUNDLE',111,111,2,'정산 일괄수정','정산관리 > 정산 일괄수정','#',1,4,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(116,'SETTLEMENT.CORRECTION-BY-BUNDLE.FOR-UNCONFIRMED-DATA',111,115,3,'마감 전 데이터','정산관리 > 정산 일괄수정 > 마감 전 데이터','/settlement/corrections-by-bundle/for-unconfirmed-data',1,1,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(117,'SETTLEMENT.CORRECTION-BY-BUNDLE.FOR-ALL-DATA',111,115,3,'전체 데이터','정산관리 > 정산 일괄수정 > 전체 데이터','/settlement/corrections-by-bundle/for-all-data',1,2,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(118,'EXHIBIT',0,0,1,'전시관리','전시관리','#',1,8,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,1,1),(119,'EXHIBIT.RECOMMEND-SEARCH',118,118,2,'기본 검색어','전시관리 > 기본 검색어','/exhibit/recommend-searches',1,1,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(120,'EXHIBIT.LEGO',118,118,2,'블록 관리','전시관리 > 블록 관리','#',1,2,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(121,'EXHIBIT.SUB',118,118,2,'서브 페이지','전시관리 > 서브 페이지','#',1,3,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,1,1),(122,'EXHIBIT.SUB.ONE-DEPTH',118,121,3,'1DEPTH 페이지 관리','전시관리 > 서브 페이지 > 1DEPTH 페이지 관리','/exhibit/sub/one-depth',1,1,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(123,'EXHIBIT.SUB.EVENT',118,121,3,'기획전','전시관리 > 서브 페이지 > 기획전','/exhibit/sub/planning-events',1,2,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,1,1),(124,'EXHIBIT.SUB.SPECIAL-EVENT',118,121,3,'이벤트','전시관리 > 서브 페이지 > 이벤트','/exhibit/sub/special-events',0,3,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(125,'EXHIBIT.SUB.BRAND-CONTENTS',118,121,3,'쇼케이스','전시관리 > 서브 페이지 > 쇼케이스','/exhibit/sub/showcase',0,4,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(126,'EXHIBIT.SUB.BRAND-CONTENTS-CATEGORY',118,121,3,'쇼케이스 구분 관리','전시관리 > 서브 페이지 > 쇼케이스 구분 관리','/exhibit/sub/showcase-categories',0,5,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(127,'EXHIBIT.SUB.RAFFLE',118,121,3,'래플','전시관리 > 서브 페이지 > 래플','/exhibit/sub/raffles',0,6,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(128,'EXHIBIT.SUB.JOINT-PURCHASE',118,121,3,'공동구매','전시관리 > 서브 페이지 > 공동구매','/exhibit/sub/joint-purchases',0,7,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(129,'EXHIBIT.SUB.TIME-ATTACK',118,121,3,'타임딜','전시관리 > 서브 페이지 > 타임딜','/exhibit/sub/time-attacks',0,8,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(130,'EXHIBIT.SUB.SPOT-THEME',118,121,3,'스팟성 테마관','전시관리 > 서브 페이지 > 스팟성 테마관','/exhibit/sub/spot-themes',1,9,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(131,'EXHIBIT.RANKING',118,118,2,'랭킹','전시관리 > 랭킹','/exhibit/ranking/goods-order',0,4,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(132,'EXHIBIT.CODISHOT',118,118,2,'코디샷','전시관리 > 코디샷','#',0,5,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(133,'EXHIBIT.CODISHOT.CODISHOT',118,132,3,'코디샷','전시관리 > 코디샷 > 코디샷','/exhibit/codishots',1,1,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(134,'EXHIBIT.CODISHOT.CODISHOT-CATEGORY',118,132,3,'코디샷 구분 관리','전시관리 > 코디샷 > 코디샷 구분 관리','/exhibit/codishot-categories',1,2,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(135,'EXHIBIT.GOODS-BANNER',118,118,2,'상품 공통배너','전시관리 > 상품 공통배너','/exhibit/areas/banner-in-goods',1,6,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(136,'EXHIBIT.POPUP',118,118,2,'팝업','전시관리 > 팝업','/exhibit/popups',1,7,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(137,'EXHIBIT.APP-INTRO-SCREEN',118,118,2,'앱인트로 이미지','전시관리 > 앱인트로 이미지','/exhibit/app-intro-screens',1,8,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(138,'EXHIBIT.INSTALLMENT',118,118,2,'무이자','전시관리 > 무이자','/exhibit/installments',1,9,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(139,'EXHIBIT.TOP-BANNER',118,118,2,'탑배너','전시관리 > 탑배너','/exhibit/top-banners',1,10,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(140,'EXHIBIT.RIGHT-WING-BANNER',118,118,2,'우측배너','전시관리 > 우측배너','/exhibit/right-wing-banners',1,11,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(141,'STATISTICS',0,0,1,'매출/통계','매출/통계','#',1,9,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,1,1),(142,'STATISTICS.ORDER-BY-SELLER',141,141,2,'셀러별 주문 통계','매출/통계 > 셀러별 주문 통계','/statistics/order-by-sellers',1,1,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,1,1),(143,'STATISTICS.WEEKLY-ORDER',141,141,2,'주간/시간대별 매출추이','매출/통계 > 주간/시간대별 매출추이','/statistics/weekly-order',1,2,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(144,'STATISTICS.HOURLY-ORDER-BY-AFFILIATE-CODE',141,141,2,'시간대별 매출코드 주문','매출/통계 > 시간대별 매출코드 주문','/statistics/hourly-order/by-affiliate-codes',1,3,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(145,'STATISTICS.ORDER-BY-AFFILIATE-CODE',141,141,2,'매출코드별 실적 현황','매출/통계 > 매출코드별 실적 현황','/statistics/order-by-affiliate-codes',1,4,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(146,'STATISTICS.ORDER-BY-PAYMENT-METHOD',141,141,2,'결제수단별 매출 내역','매출/통계 > 결제수단별 매출 내역','/statistics/order-by-payment-methods',1,5,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(147,'STATISTICS.DAILY-ORDER',141,141,2,'일별 주문 추이','매출/통계 > 일별 주문 추이','#',1,6,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(148,'STATISTICS.DAILY-ORDER.BY-AFFILIATE-CODE',141,147,3,'매출코드 주문금액','매출/통계 > 일별 주문 추이 > 매출코드 주문금액','/statistics/daily-order/by-affiliate-codes',1,1,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(149,'STATISTICS.DAILY-ORDER.PAID-ITEM',141,147,3,'주문품목(지불완료)','매출/통계 > 일별 주문 추이 > 주문품목(지불완료)','/statistics/daily-order/status',1,2,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(150,'STATISTICS.MONTHLY-ORDER',141,141,2,'월별 주문 추이','매출/통계 > 월별 주문 추이','#',1,7,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(151,'STATISTICS.MONTHLY-ORDER.BY-AFFILIATE-CODE',141,150,3,'월별 매출코드 주문 금액','매출/통계 > 월별 주문 추이 > 월별 매출코드 주문 금액','/statistics/monthly-order/by-affiliate-codes',1,1,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(152,'STATISTICS.GOAL',141,141,2,'목표 등록','매출/통계 > 목표 등록','/statistics/goals',1,8,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(153,'STATISTICS.MD-GOAL-PERFORMANCE',141,141,2,'목표 대비 실적(MD)','매출/통계 > 목표 대비 실적(MD)','/statistics/md-goal-performances',1,9,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(154,'STATISTICS.DB-STATUS',141,141,2,'자사 DB 현황 메뉴','매출/통계 > 자사 DB 현황 메뉴','/statistics/db-status',1,10,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(155,'STATISTICS.MEMBER',141,141,2,'회원 통계','매출/통계 > 회원 통계','#',1,11,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(156,'STATISTICS.MEMBER.MONTHLY-SIGNUP',141,155,3,'월별 가입회원','매출/통계 > 회원 통계 > 월별 가입회원','/statistics/member/monthly-signup',1,1,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(157,'STATISTICS.MEMBER.DAILY-SIGNUP',141,155,3,'일별 가입회원','매출/통계 > 회원 통계 > 일별 가입회원','/statistics/member/daily-signup',1,2,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(158,'STATISTICS.MEMBER.MONTHLY-RANK',141,155,3,'등급별 월 회원수','매출/통계 > 회원 통계 > 등급별 월 회원수','/statistics/member/monthly-rank',1,3,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(159,'STATISTICS.MEMBER.YEARLY-AMOUNT',141,155,3,'연도별 회원수','매출/통계 > 회원 통계 > 연도별 회원수','/statistics/member/yearly-amount',1,4,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(160,'STATISTICS.MEMBER.MONTHLY-AMOUNT',141,155,3,'월별 회원수','매출/통계 > 회원 통계 > 월별 회원수','/statistics/member/monthly-amount',1,5,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(161,'STATISTICS.MEMBER.DAILY-AMOUNT',141,155,3,'일별 회원수','매출/통계 > 회원 통계 > 일별 회원수','/statistics/member/daily-amount',1,6,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(162,'STATISTICS.MEMBER.WITHDRAW',141,155,3,'회원탈퇴 사유','매출/통계 > 회원 통계 > 회원탈퇴 사유','/statistics/member/withdraw',1,7,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(163,'STATISTICS.MEMBER.WITHDRAW-STAT',141,155,3,'회원탈퇴 사유 통계','매출/통계 > 회원 통계 > 회원탈퇴 사유 통계','/statistics/member/withdraw-stat',1,8,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(164,'STATISTICS.POINT',141,141,2,'리워드포인트 적립현황','매출/통계 > 리워드포인트 적립현황','#',1,12,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(165,'STATISTICS.POINT.MONTHLY-FUND',141,164,3,'월별 적립현황','매출/통계 > 리워드포인트 적립현황 > 월별 적립현황','/statistics/point/monthly-fund',1,1,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(166,'STATISTICS.POINT.DAILY-FUND',141,164,3,'일별 적립현황','매출/통계 > 리워드포인트 적립현황 > 일별 적립현황','/statistics/point/daily-fund',1,2,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(167,'STATISTICS.EP-GOODS-BY-AFFILIATE',141,141,2,'EP 연동 상품 수 통계','매출/통계 > EP 연동 상품 수 통계','/statistics/ep-goods-by-affiliate',1,13,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(168,'STATISTICS.NAVER-CPS',141,141,2,'네이버 CPS 매출 통계','매출/통계 > 네이버 CPS 매출 통계','/statistics/naver-cps',1,14,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(169,'CS-CENTER',0,0,1,'고객/게시판관리','고객/게시판관리','#',1,10,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,1,1),(170,'CS-CENTER.NOTICE',169,169,2,'공지사항','고객/게시판관리 > 공지사항','/cs-center/notices',1,1,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(171,'CS-CENTER.FAQ',169,169,2,'FAQ','고객/게시판관리 > FAQ','#',1,2,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(172,'CS-CENTER.FAQ.TYPE',169,171,3,'FAQ 분류 관리','고객/게시판관리 > FAQ > FAQ 분류 관리','/cs-center/faq-types',1,1,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(173,'CS-CENTER.FAQ.MANAGE',169,171,3,'FAQ 관리','고객/게시판관리 > FAQ > FAQ 관리','/cs-center/faq',1,2,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(174,'CS-CENTER.GOODS-REVIEW',169,169,2,'상품평','고객/게시판관리 > 상품평','/cs-center/goods-reviews',1,3,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(175,'CS-CENTER.GOODS-EXPERIENCE-REVIEW',169,169,2,'체험단 후기','고객/게시판관리 > 체험단 후기','/cs-center/goods-experience-reviews',0,4,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(176,'CS-CENTER.SELLER-QNA',169,169,2,'판매자 문의','고객/게시판관리 > 판매자 문의','/cs-center/seller-qna',1,5,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,1,1),(177,'CS-CENTER.QNA',169,169,2,'1:1 문의','고객/게시판관리 > 1:1 문의','/cs-center/qna',1,6,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(178,'CS-CENTER.QNA-COMMENT-FORM',169,169,2,'문의 답변 양식','고객/게시판관리 > 문의 답변 양식','/cs-center/qna-comment-forms',1,7,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(179,'CS-CENTER.CS-NOTIFICATION',169,169,2,'CS 알리미','고객/게시판관리 > CS 알리미','/cs-center/cs-notifications',1,8,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,1,1),(180,'CS-CENTER.RELEASE-DELAY-COMPLAIN',169,169,2,'배송지연 신고','고객/게시판관리 > 배송지연 신고','/cs-center/release-delay-complains',1,9,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(181,'CS-CENTER.CANCEL-BY-SOLDOUT-COMPLAIN',169,169,2,'품절취소 신고','고객/게시판관리 > 품절취소 신고','/cs-center/cancel-by-soldout-complains',1,10,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(182,'PARTNERSHOP',0,0,1,'제휴사관리','제휴사관리','#',0,11,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(183,'PARTNERSHOP.CATEGORY-MAPPING',182,182,2,'카테고리 연동','제휴사관리 > 카테고리 연동','/partnershop/category-mapping',1,1,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(184,'PARTNERSHOP.BRAND-MAPPING',182,182,2,'브랜드 연동','제휴사관리 > 브랜드 연동','/partnershop/brand-mapping',1,2,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(185,'PARTNERSHOP.EXCEPT',182,182,2,'제휴연동 제외','제휴사관리 > 제휴연동 제외','#',1,3,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(186,'PARTNERSHOP.EXCEPT.GOODS',182,185,3,'상품','제휴사관리 > 제휴연동 제외 > 상품','/partnershop/except-goods',1,1,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(187,'PARTNERSHOP.EXCEPT.SELLER',182,185,3,'셀러','제휴사관리 > 제휴연동 제외 > 셀러','/partnershop/except-sellers',1,2,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(188,'PARTNERSHOP.LOG',182,182,2,'로그 정보','제휴사관리 > 로그 정보','#',1,4,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(189,'PARTNERSHOP.LOG.SHIPPING-RULE',182,188,3,'제휴 배송정책 로그','제휴사관리 > 로그 정보 > 제휴 배송정책 로그','/partnershop/logs/shipping-rule',1,1,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(190,'PARTNERSHOP.LOG.GOODS',182,188,3,'제휴 상품 로그','제휴사관리 > 로그 정보 > 제휴 상품 로그','/partnershop/logs/goods',1,2,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(191,'PARTNERSHOP.LOG.ORDER-PROCESS',182,188,3,'제휴 주문 로그','제휴사관리 > 로그 정보 > 제휴 주문 로그','/partnershop/logs/order/process',1,3,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(192,'PARTNERSHOP.LOG.CANCEL-ORDER-PROCESS',182,188,3,'제휴 취소 주문 로그','제휴사관리 > 로그 정보 > 제휴 취소 주문 로그','/partnershop/logs/cancel-order/process',1,4,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(193,'PARTNERSHOP.LOG.RETURN-ORDER-PROCESS',182,188,3,'제휴 반품 주문 로그','제휴사관리 > 로그 정보 > 제휴 반품 주문 로그','/partnershop/logs/return-order/process',1,5,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(194,'PARTNERSHOP.LOG.EXCHANGE-ORDER-PROCESS',182,188,3,'제휴 교환 주문 로그','제휴사관리 > 로그 정보 > 제휴 교환 주문 로그','/partnershop/logs/exchange-order/process',1,6,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(195,'PARTNERSHOP.LOG.QNA-PROCESS',182,188,3,'제휴 상품 문의 로그','제휴사관리 > 로그 정보 > 제휴 상품 문의 로그','/partnershop/logs/qna/process',1,7,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(196,'PARTNERSHOP.LOG.ORDER-COLLECT',182,188,3,'제휴 주문 수집 로그','제휴사관리 > 로그 정보 > 제휴 주문 수집 로그','/partnershop/logs/order/collect',1,8,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(197,'PARTNERSHOP.LOG.CANCEL-ORDER-COLLECT',182,188,3,'제휴 취소 수집 로그','제휴사관리 > 로그 정보 > 제휴 취소 수집 로그','/partnershop/logs/cancel-order/collect',1,9,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(198,'PARTNERSHOP.LOG.RETURN-ORDER-COLLECT',182,188,3,'제휴 반품 수집 로그','제휴사관리 > 로그 정보 > 제휴 반품 수집 로그','/partnershop/logs/return-order/collect',1,10,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(199,'PARTNERSHOP.LOG.EXCHANGE-ORDER-COLLECT',182,188,3,'제휴 교환 수집 로그','제휴사관리 > 로그 정보 > 제휴 교환 수집 로그','/partnershop/logs/exchange-order/collect',1,11,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0),(200,'PARTNERSHOP.DASHBOARD',182,182,2,'제휴 연동 현황','제휴사관리 > 제휴 연동 현황','/partnershop/dashboard',1,5,'SYSTEM','시스템(Seeder)',NULL,'2023-10-06 08:38:23','2023-10-06 08:38:23',NULL,1,0,0);
/*!40000 ALTER TABLE `mm_scm_menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_scm_seller_notices`
--

DROP TABLE IF EXISTS `mm_scm_seller_notices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_scm_seller_notices` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '고유번호',
  `manager_id` bigint unsigned NOT NULL COMMENT '등록 최고관리자 (mm_adm_managers.id)',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '제목',
  `type` tinyint NOT NULL DEFAULT '0' COMMENT '공지 분류 1:일반 9:정산 99:시스템',
  `display_start_at` datetime DEFAULT NULL COMMENT '노출시작일',
  `is_important` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '중요 글 설정',
  `contents` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '내용',
  `file1` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '첨부파일1',
  `file2` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '첨부파일2',
  `file3` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '첨부파일3',
  `file4` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '첨부파일4',
  `file5` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '첨부파일5',
  `ip` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '작성자 ip',
  `etc1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '기타필드1',
  `etc2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '기타필드2',
  `etc3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '기타필드3',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '등록 일시',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '수정 일시',
  `deleted_at` datetime DEFAULT NULL COMMENT '삭제일시 (softDeletes)',
  `created_user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '등록자',
  `updated_user` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '수정자',
  PRIMARY KEY (`id`),
  KEY `mm_scm_seller_notices_isimportant_index` (`is_important`),
  KEY `mm_scm_seller_notices_display_start_at_index` (`display_start_at`),
  KEY `mm_scm_seller_notices_createdat_index` (`created_at`),
  KEY `mm_scm_seller_notices_type_index` (`type`),
  KEY `mm_scm_seller_notices_deletedat_index` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='셀러 공지사항';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_scm_seller_notices`
--

LOCK TABLES `mm_scm_seller_notices` WRITE;
/*!40000 ALTER TABLE `mm_scm_seller_notices` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_scm_seller_notices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_scm_seller_popups`
--

DROP TABLE IF EXISTS `mm_scm_seller_popups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_scm_seller_popups` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '고유번호',
  `manager_id` bigint unsigned NOT NULL COMMENT '등록 최고관리자 (mm_adm_managers.id)',
  `manager_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '등록 관리자 이름',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '제목',
  `contents` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '내용',
  `is_use` tinyint unsigned NOT NULL DEFAULT '1' COMMENT '팝업사용여부',
  `display_start_at` datetime NOT NULL COMMENT '팝업시작일',
  `display_end_at` datetime NOT NULL COMMENT '팝업종료일',
  `width` int NOT NULL DEFAULT '0' COMMENT '팝업창가로길이',
  `height` int NOT NULL DEFAULT '0' COMMENT '팝업창세로길이',
  `top` int DEFAULT '0' COMMENT '팝업창상단위치',
  `left` int DEFAULT '0' COMMENT '팝업창왼쪽위치',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '등록 일시',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '수정 일시',
  `deleted_at` datetime DEFAULT NULL COMMENT '삭제일시 (softDeletes)',
  `created_user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '등록관리자',
  `updated_user` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '수정관리자',
  `deleted_user` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '삭제관리자',
  PRIMARY KEY (`id`),
  KEY `mm_scm_seller_popups_deletedat_index` (`deleted_at`),
  KEY `mm_scm_seller_popups_date_index` (`display_start_at`,`display_end_at`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='셀러 - 팝업';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_scm_seller_popups`
--

LOCK TABLES `mm_scm_seller_popups` WRITE;
/*!40000 ALTER TABLE `mm_scm_seller_popups` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_scm_seller_popups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_shp_app_intro_screens`
--

DROP TABLE IF EXISTS `mm_shp_app_intro_screens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_shp_app_intro_screens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '고유 번호',
  `is_display` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '노출 상태 1=노출, 0=미노출',
  `sub_text` varchar(210) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '대체 텍스트',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '등록일',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일',
  `deleted_at` datetime DEFAULT NULL COMMENT '삭제일',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='전시관리 > 앱 인트로 관리 > 앱 인트로 이미지 테이블';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_shp_app_intro_screens`
--

LOCK TABLES `mm_shp_app_intro_screens` WRITE;
/*!40000 ALTER TABLE `mm_shp_app_intro_screens` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_shp_app_intro_screens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_shp_brand_brand_content`
--

DROP TABLE IF EXISTS `mm_shp_brand_brand_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_shp_brand_brand_content` (
  `brand_id` bigint unsigned NOT NULL COMMENT '브랜드 고유키(mm_shp_brands.id)',
  `brand_content_id` bigint unsigned NOT NULL COMMENT '브랜드 컨텐츠 id (mm_exh_brand_contents.id)',
  `order_seq` tinyint unsigned NOT NULL COMMENT '노출 순서',
  KEY `brand_id_index` (`brand_id`),
  KEY `brand_content_id_index` (`brand_content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='브랜드 -> 전시 브랜드 컨텐츠 매핑 테이블 ( 구 쇼케이스 테이블)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_shp_brand_brand_content`
--

LOCK TABLES `mm_shp_brand_brand_content` WRITE;
/*!40000 ALTER TABLE `mm_shp_brand_brand_content` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_shp_brand_brand_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_shp_brand_categories`
--

DROP TABLE IF EXISTS `mm_shp_brand_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_shp_brand_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '브랜드 카테고리(속성)',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '브랜드 카테고리(속성)명',
  `created_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '등록자',
  `updated_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '수정자',
  `deleted_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '삭제자',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mm_shp_brand_categories_name_index` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_shp_brand_categories`
--

LOCK TABLES `mm_shp_brand_categories` WRITE;
/*!40000 ALTER TABLE `mm_shp_brand_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_shp_brand_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_shp_brand_category`
--

DROP TABLE IF EXISTS `mm_shp_brand_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_shp_brand_category` (
  `brand_category_id` bigint unsigned NOT NULL COMMENT '브랜드 카테고리(속성) 고유키(mm_shp_brand_categories.id)',
  `brand_id` bigint unsigned NOT NULL COMMENT '브랜드 고유키(mm_shp_brands.id)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_shp_brand_category`
--

LOCK TABLES `mm_shp_brand_category` WRITE;
/*!40000 ALTER TABLE `mm_shp_brand_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_shp_brand_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_shp_brand_mall`
--

DROP TABLE IF EXISTS `mm_shp_brand_mall`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_shp_brand_mall` (
  `mall_id` bigint unsigned NOT NULL,
  `brand_id` bigint unsigned NOT NULL,
  `is_display` tinyint(1) NOT NULL DEFAULT '1',
  `order_seq` bigint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_shp_brand_mall`
--

LOCK TABLES `mm_shp_brand_mall` WRITE;
/*!40000 ALTER TABLE `mm_shp_brand_mall` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_shp_brand_mall` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_shp_brand_recommend_goods`
--

DROP TABLE IF EXISTS `mm_shp_brand_recommend_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_shp_brand_recommend_goods` (
  `brand_id` bigint unsigned NOT NULL COMMENT '브랜드 키 (mm_shp_brands.id)',
  `goods_id` bigint unsigned NOT NULL COMMENT '상품 키 (mm_gds_items.id)',
  `order_seq` int NOT NULL DEFAULT '0' COMMENT '노출 순번'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_shp_brand_recommend_goods`
--

LOCK TABLES `mm_shp_brand_recommend_goods` WRITE;
/*!40000 ALTER TABLE `mm_shp_brand_recommend_goods` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_shp_brand_recommend_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_shp_brands`
--

DROP TABLE IF EXISTS `mm_shp_brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_shp_brands` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '고유id',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '브랜드명',
  `eng_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '영문 브랜드명',
  `kor_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '국문 브랜드명',
  `is_use_eng_name` tinyint unsigned DEFAULT '0' COMMENT '영문 브랜드명 사용여부',
  `has_logo_image` tinyint(1) NOT NULL DEFAULT '0' COMMENT '브랜드 로고 이미지 여부',
  `logo_alt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '브랜드로고 대체 텍스트',
  `has_pc_top_image` tinyint(1) NOT NULL DEFAULT '0' COMMENT '브랜드 상단 이미지(PC) 여부',
  `pc_top_image_alt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '브랜드 상단 이미지 파일 대체텍스트',
  `has_mobile_top_image` tinyint(1) NOT NULL DEFAULT '0' COMMENT '브랜드 로고 이미지(Mobile) 여부',
  `mobile_top_image_alt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '브랜드 상단이미지 대체 텍스트(mobile)',
  `main_text` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '메인문구',
  `sub_text` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '서브문구',
  `is_designer_regist` tinyint(1) NOT NULL DEFAULT '0' COMMENT '디자이너 등록여부',
  `designer_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '디자이너 이름',
  `designer_image_alt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '디자이너 이미지 대체텍스트',
  `introduce` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '브랜드 소개',
  `kakao_channel_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '카카오 채널 URL',
  `recommend_goods_display_start_at` datetime DEFAULT NULL COMMENT '브랜드 추천 순 상품 노출 시작일자',
  `recommend_goods_display_end_at` datetime DEFAULT NULL COMMENT '브랜드 추천 순 상품 노출 종료일자',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '등록일시',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '수정일시',
  `deleted_at` datetime DEFAULT NULL COMMENT '삭제일시 (softDeletes)',
  `created_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mm_shp_brands_deletedat_index` (`deleted_at`),
  KEY `mm_shp_brands_name_index` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_shp_brands`
--

LOCK TABLES `mm_shp_brands` WRITE;
/*!40000 ALTER TABLE `mm_shp_brands` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_shp_brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_shp_bulk_message_log`
--

DROP TABLE IF EXISTS `mm_shp_bulk_message_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_shp_bulk_message_log` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '발송타입 (E: 이메일, S: SMS)',
  `template_id` int DEFAULT NULL COMMENT '템플릿 아이디',
  `send_id` int DEFAULT NULL COMMENT '연동 발송내역 고유번호',
  `send_state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'W' COMMENT '발송상태(W: 발송예정, S: 발송중, C: 발송완료)',
  `send_at` datetime NOT NULL COMMENT '발송시간(예약시간)',
  `real_send_at` datetime DEFAULT NULL COMMENT '실제 발송시간',
  `receiver_cnt` int NOT NULL COMMENT '수신자 수',
  `success_cnt` int NOT NULL DEFAULT '0' COMMENT '성공 수',
  `fail_cnt` int NOT NULL DEFAULT '0' COMMENT '실패 수',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '템플릿명',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '템플릿내용',
  `sender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '발송자',
  `created_user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '등록자/발송처리자',
  `updated_user` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '수정자',
  `deleted_user` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '삭제자',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `user_updated_at` timestamp NULL DEFAULT NULL COMMENT '(어드민)수정 일시',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='대량 이메일/SMS 로그 테이블';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_shp_bulk_message_log`
--

LOCK TABLES `mm_shp_bulk_message_log` WRITE;
/*!40000 ALTER TABLE `mm_shp_bulk_message_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_shp_bulk_message_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_shp_bulk_message_receivers`
--

DROP TABLE IF EXISTS `mm_shp_bulk_message_receivers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_shp_bulk_message_receivers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `message_id` bigint NOT NULL COMMENT '메시지 고유번호',
  `member_id` bigint NOT NULL COMMENT '회원 고유번호',
  `receiver_info` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '수신자 정보(이메일or휴대폰번호)',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `message_receiver_unique` (`message_id`,`receiver_info`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='대량메시지 수신자 고유번호 목록';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_shp_bulk_message_receivers`
--

LOCK TABLES `mm_shp_bulk_message_receivers` WRITE;
/*!40000 ALTER TABLE `mm_shp_bulk_message_receivers` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_shp_bulk_message_receivers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_shp_bulk_message_templates`
--

DROP TABLE IF EXISTS `mm_shp_bulk_message_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_shp_bulk_message_templates` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '발송타입 (E: 이메일, S: SMS)',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '템플릿명',
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '템플릿내용',
  `replace_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '치환코드 고객명',
  `replace_grade` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '치환코드 등급명',
  `replace_shop` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '치환코드 쇼핑몰명',
  `created_user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '등록자',
  `updated_user` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '수정자',
  `deleted_user` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '삭제자',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='대량 이메일/SMS 템플릿 테이블';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_shp_bulk_message_templates`
--

LOCK TABLES `mm_shp_bulk_message_templates` WRITE;
/*!40000 ALTER TABLE `mm_shp_bulk_message_templates` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_shp_bulk_message_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_shp_bulk_message_update_log`
--

DROP TABLE IF EXISTS `mm_shp_bulk_message_update_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_shp_bulk_message_update_log` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `log_id` bigint NOT NULL COMMENT '엠몬 내부 메시지 id',
  `mailer_id` bigint DEFAULT NULL COMMENT '마이메일러 id',
  `updated_user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '수정자',
  `was_read` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '수집허용여부',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_shp_bulk_message_update_log`
--

LOCK TABLES `mm_shp_bulk_message_update_log` WRITE;
/*!40000 ALTER TABLE `mm_shp_bulk_message_update_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_shp_bulk_message_update_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_shp_cart_items`
--

DROP TABLE IF EXISTS `mm_shp_cart_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_shp_cart_items` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '고유번호',
  `session_id` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '세션 ID',
  `member_id` bigint unsigned DEFAULT NULL COMMENT '회원 코드 (mm_mem_members.id)',
  `goods_id` bigint unsigned NOT NULL COMMENT '상품 고유번호 (mm_gds_product.id)',
  `option_id` bigint unsigned NOT NULL COMMENT '옵션 상세정보 Index',
  `ea` int unsigned NOT NULL DEFAULT '1' COMMENT '옵션 수량',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '등록 일시',
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mm_shp_cart_goods_id_index` (`goods_id`),
  KEY `mm_shp_cart_session_id_index` (`session_id`),
  KEY `mm_shp_cart_option_id_index` (`option_id`),
  KEY `mm_shp_cart_member_id_index` (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='장바구니';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_shp_cart_items`
--

LOCK TABLES `mm_shp_cart_items` WRITE;
/*!40000 ALTER TABLE `mm_shp_cart_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_shp_cart_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_shp_config_dictionaries`
--

DROP TABLE IF EXISTS `mm_shp_config_dictionaries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_shp_config_dictionaries` (
  `key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '설정값 키',
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '설정값',
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_shp_config_dictionaries`
--

LOCK TABLES `mm_shp_config_dictionaries` WRITE;
/*!40000 ALTER TABLE `mm_shp_config_dictionaries` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_shp_config_dictionaries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_shp_config_dictionary_logs`
--

DROP TABLE IF EXISTS `mm_shp_config_dictionary_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_shp_config_dictionary_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '설정값 키',
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '설정값',
  `logged_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '로깅 주체 정보',
  `logged_at` datetime NOT NULL COMMENT '로깅 시점',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_shp_config_dictionary_logs`
--

LOCK TABLES `mm_shp_config_dictionary_logs` WRITE;
/*!40000 ALTER TABLE `mm_shp_config_dictionary_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_shp_config_dictionary_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_shp_delivery_term_by_sellers`
--

DROP TABLE IF EXISTS `mm_shp_delivery_term_by_sellers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_shp_delivery_term_by_sellers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `seller_id` bigint unsigned NOT NULL COMMENT '셀러 고유키(mm_adm_sellers.id)',
  `shipping_rule_id` bigint unsigned DEFAULT NULL COMMENT '배송 정책 고유키(mm_shp_shipping_rules.id) - null 의 경우 해당 셀러 전체 (추후 해외배송, 주문제작 등의 사유로 배송정책별 분리집계해야할 경우 사용하기 위해 확보해놓은 컬럼입니다)',
  `term` tinyint unsigned NOT NULL COMMENT '기간 범위(n 영업일 내 도착)',
  `total_order_count` int unsigned NOT NULL COMMENT '기준 배송출발된 주문수',
  `delivery_complete_count` int unsigned NOT NULL COMMENT 'total_order_count 대비 term 기간 내 배송 완료된 수',
  `aggregated_at` datetime NOT NULL COMMENT '집계생성시간',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mm_shp_delivery_term_by_sellers_unique` (`seller_id`,`shipping_rule_id`,`term`),
  KEY `mm_shp_delivery_term_by_sellers_seller_id` (`seller_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='셀러별 기간 배송 도착 수, 확률 집계';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_shp_delivery_term_by_sellers`
--

LOCK TABLES `mm_shp_delivery_term_by_sellers` WRITE;
/*!40000 ALTER TABLE `mm_shp_delivery_term_by_sellers` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_shp_delivery_term_by_sellers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_shp_environments`
--

DROP TABLE IF EXISTS `mm_shp_environments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_shp_environments` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '환경변수명',
  `value` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '환경변수 값',
  `extra_value_1` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '환경변수 추가 값 1',
  `extra_value_2` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '환경변수 추가 값 2',
  UNIQUE KEY `mm_shp_environments_key_unique` (`key`),
  KEY `mm_shp_environments_key_index` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_shp_environments`
--

LOCK TABLES `mm_shp_environments` WRITE;
/*!40000 ALTER TABLE `mm_shp_environments` DISABLE KEYS */;
INSERT INTO `mm_shp_environments` VALUES ('KRW_UNIT','0',NULL,NULL);
/*!40000 ALTER TABLE `mm_shp_environments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_shp_extra_shipping_price_addresses`
--

DROP TABLE IF EXISTS `mm_shp_extra_shipping_price_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_shp_extra_shipping_price_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '배송 주소 고유번호',
  `zip_code` varchar(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '우편번호 (신주소 기준)',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '주소',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '등록 일시',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mm_shp_extra_shipping_price_addresses_unique` (`zip_code`,`address`),
  KEY `mm_shp_additional_shipping_address_addr_index` (`address`),
  KEY `mm_shp_additional_shipping_address_index_1` (`created_at`),
  KEY `mm_shp_additional_shipping_address_zip_index` (`zip_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='지역별 배송비';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_shp_extra_shipping_price_addresses`
--

LOCK TABLES `mm_shp_extra_shipping_price_addresses` WRITE;
/*!40000 ALTER TABLE `mm_shp_extra_shipping_price_addresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_shp_extra_shipping_price_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_shp_installment_details`
--

DROP TABLE IF EXISTS `mm_shp_installment_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_shp_installment_details` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '고유번호',
  `installment_id` bigint unsigned NOT NULL COMMENT 'mm_shp_installments.id',
  `alt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '이미지파일 대체텍스트',
  `card_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '카드사 코드',
  `freeinterest_month_concat` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '할부개월 concat',
  `freeinterest_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '할부안내 내용',
  `is_partial_freeinterest` tinyint(1) NOT NULL DEFAULT '0' COMMENT '부분무이자 (boolean)',
  `partial_freeinterest_month_concat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '부분무이자 할부개월',
  `partial_freeinterest_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '부분무이자 할부 안내 내용',
  `created_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '등록자',
  `updated_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '수정자',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '등록일시',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '수정일시',
  `deleted_at` datetime DEFAULT NULL COMMENT '삭제일시 (softDeletes)',
  PRIMARY KEY (`id`),
  KEY `installmentid_index` (`installment_id`),
  KEY `deletedat_index` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='전시관리 - 무이자관리 - 카드세트 ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_shp_installment_details`
--

LOCK TABLES `mm_shp_installment_details` WRITE;
/*!40000 ALTER TABLE `mm_shp_installment_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_shp_installment_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_shp_installments`
--

DROP TABLE IF EXISTS `mm_shp_installments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_shp_installments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '고유번호',
  `is_use` tinyint unsigned NOT NULL DEFAULT '1' COMMENT '사용여부',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '제목',
  `display_start_at` datetime NOT NULL COMMENT '노출시작일',
  `display_end_at` datetime NOT NULL COMMENT '노출종료일',
  `order_seq` int unsigned NOT NULL DEFAULT '999' COMMENT '노출순서',
  `created_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '등록자',
  `updated_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '수정자',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '등록일시',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '수정일시',
  `deleted_at` datetime DEFAULT NULL COMMENT '삭제일시 (softDeletes)',
  PRIMARY KEY (`id`),
  KEY `display_start_at_index` (`display_start_at`),
  KEY `display_end_at_index` (`display_end_at`),
  KEY `created_at_index` (`created_at`),
  KEY `deletedat_index` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='할부 정보 관리';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_shp_installments`
--

LOCK TABLES `mm_shp_installments` WRITE;
/*!40000 ALTER TABLE `mm_shp_installments` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_shp_installments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_shp_mall_partition`
--

DROP TABLE IF EXISTS `mm_shp_mall_partition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_shp_mall_partition` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `mall_id` bigint unsigned NOT NULL,
  `partition_id` bigint unsigned NOT NULL,
  `block_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_shp_mall_partition`
--

LOCK TABLES `mm_shp_mall_partition` WRITE;
/*!40000 ALTER TABLE `mm_shp_mall_partition` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_shp_mall_partition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_shp_malls`
--

DROP TABLE IF EXISTS `mm_shp_malls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_shp_malls` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `is_display` tinyint(1) NOT NULL DEFAULT '1',
  `code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '몰 코드(url safe)',
  `sub_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '서브 코드 (url safe)',
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_seq` int unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_shp_malls`
--

LOCK TABLES `mm_shp_malls` WRITE;
/*!40000 ALTER TABLE `mm_shp_malls` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_shp_malls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_shp_notification_templates`
--

DROP TABLE IF EXISTS `mm_shp_notification_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_shp_notification_templates` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '고유번호',
  `code` int unsigned NOT NULL COMMENT '관리용 고유코드',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '설정 설명 정보',
  `is_send_mail` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '메일 발송여부',
  `mail_title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '메일제목',
  `is_send_alimtalk` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '알림톡 발송여부',
  `alimtalk_template_code` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '카카오 템플릿 코드',
  `alimtalk_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '카카오 알림톡 템플릿 내용',
  `alimtalk_button` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '카카오 알림톡 버튼 제목, 링크(최대 5개까지)',
  `lms_title` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '카카오 알림톡 실패시 대체 제목(LMS 전송시 사용)',
  `sms_contents` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '카카오 알림톡 실패시 대체 문자 내용',
  `created_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '등록자',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '등록일시',
  `updated_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '수정자',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mm_shp_notification_templates_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='자동메일 발송 정보';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_shp_notification_templates`
--

LOCK TABLES `mm_shp_notification_templates` WRITE;
/*!40000 ALTER TABLE `mm_shp_notification_templates` DISABLE KEYS */;
INSERT INTO `mm_shp_notification_templates` VALUES (1,100,'주문완료_결제완료_단일상품',1,'[#{쇼핑몰영문명}] 주문하신 상품의 결제가 완료되었습니다.',1,'MT_001','[#{쇼핑몰영문명}] 주문완료\r\n\r\n고객님! 주문이 완료되었습니다. \r\n\r\n▶ 주문번호 : #{주문번호} \r\n▶ 주문일 : #{주문일}\r\n▶ 상품명 : #{상품명}\r\n▶ 주문금액 : #{결제금액}원\r\n\r\n고객센터 : #{고객센터전화번호}\r\n\r\n감사합니다.','{\"name\":\"\\uc8fc\\ubb38\\ub0b4\\uc5ed \\ud655\\uc778\\ud558\\uae30\",\"type\":\"WL\",\"url_pc\":\"#{PC\\uc8fc\\ubb38\\ubaa9\\ub85dURL}\",\"url_mobile\":\"#{\\ubaa8\\ubc14\\uc77c\\uc8fc\\ubb38\\ubaa9\\ub85dURL}\"}',NULL,'[#{쇼핑몰영문명}] 주문완료\r\n\r\n고객님! 주문이 완료되었습니다. \r\n\r\n▶ 주문번호 : #{주문번호} \r\n▶ 주문일 : #{주문일}\r\n▶ 상품명 : #{상품명}\r\n▶ 주문금액 : #{결제금액}원\r\n\r\n고객센터 : #{고객센터전화번호}\r\n\r\n감사합니다.\r\n\r\n주문내역 : #{모바일주문목록URL}','시스템(Seeder)','2023-10-06 08:38:23','','2023-10-06 08:38:23'),(2,101,'주문완료_결제완료_복수상품',1,'[#{쇼핑몰영문명}] 주문하신 상품의 결제가 완료되었습니다.',1,'MT_002','[#{쇼핑몰영문명}] 주문완료\r\n\r\n고객님! 주문이 완료되었습니다. \r\n\r\n▶ 주문번호 : #{주문번호}\r\n▶ 주문일 : #{주문일}\r\n▶ 상품명 : #{상품명} 외 #{주문상품개수}건\r\n▶ 주문금액 : #{결제금액}원\r\n\r\n고객센터 : #{고객센터전화번호}\r\n\r\n감사합니다.','{\"name\":\"\\uc8fc\\ubb38\\ub0b4\\uc5ed \\ud655\\uc778\\ud558\\uae30\",\"type\":\"WL\",\"url_pc\":\"#{PC\\uc8fc\\ubb38\\ubaa9\\ub85dURL}\",\"url_mobile\":\"#{\\ubaa8\\ubc14\\uc77c\\uc8fc\\ubb38\\ubaa9\\ub85dURL}\"}',NULL,'[#{쇼핑몰영문명}] 주문완료\r\n\r\n고객님! 주문이 완료되었습니다. \r\n\r\n▶ 주문번호 : #{주문번호}\r\n▶ 주문일 : #{주문일}\r\n▶ 상품명 : #{상품명} 외 #{주문상품개수}건\r\n▶ 주문금액 : #{결제금액}원\r\n\r\n고객센터 : #{고객센터전화번호}\r\n\r\n감사합니다.\r\n\r\n주문내역 : #{모바일주문목록URL}','시스템(Seeder)','2023-10-06 08:38:23','','2023-10-06 08:38:23'),(3,110,'주문완료_입금안내_단일상품',1,'[#{쇼핑몰영문명}] 입금하실 가상계좌 내역을 안내드립니다.',1,'MT_003','[#{쇼핑몰영문명}] 입금 안내\r\n\r\n고객님! 입금계좌를 안내 드립니다. \r\n\r\n▶ 주문번호 : #{주문번호}\r\n▶ 주문일 : #{주문일}\r\n▶ 상품명 : #{상품명}\r\n▶ 주문금액 : #{가상입금액}원\r\n\r\n▶ 은행명 : #{가상계좌은행}\r\n▶ 계좌번호 : #{가상계좌번호}\r\n▶ 예금주명 : #{가상계좌예금주}\r\n▶ 입금기한 : #{가상기한일}\r\n\r\n※ 입금기한 이후에는 입금이 불가하며, 미입금 시 자동 취소됩니다. \r\n\r\n고객센터 : #{고객센터전화번호}\r\n\r\n감사합니다!','{\"name\":\"\\uc8fc\\ubb38\\ub0b4\\uc5ed \\ud655\\uc778\\ud558\\uae30\",\"type\":\"WL\",\"url_pc\":\"#{PC\\uc8fc\\ubb38\\ubaa9\\ub85dURL}\",\"url_mobile\":\"#{\\ubaa8\\ubc14\\uc77c\\uc8fc\\ubb38\\ubaa9\\ub85dURL}\"}',NULL,'[#{쇼핑몰영문명}] 입금 안내\r\n\r\n고객님! 입금계좌를 안내 드립니다. \r\n\r\n▶ 주문번호 : #{주문번호}\r\n▶ 주문일 : #{주문일}\r\n▶ 상품명 : #{상품명}\r\n▶ 주문금액 : #{가상입금액}원\r\n\r\n▶ 은행명 : #{가상계좌은행}\r\n▶ 계좌번호 : #{가상계좌번호}\r\n▶ 예금주명 : #{가상계좌예금주}\r\n▶ 입금기한 : #{가상기한일}\r\n\r\n※ 입금기한 이후에는 입금이 불가하며, 미입금 시 자동 취소됩니다. \r\n\r\n고객센터 : #{고객센터전화번호}\r\n\r\n감사합니다!\r\n\r\n주문내역 : #{모바일주문목록URL}','시스템(Seeder)','2023-10-06 08:38:23','','2023-10-06 08:38:23'),(4,111,'주문완료_입금안내_복수상품',1,'[#{쇼핑몰영문명}] 입금하실 가상계좌 내역을 안내드립니다.',1,'MT_004','[#{쇼핑몰영문명}] 입금 안내\r\n\r\n고객님! 입금계좌를 안내 드립니다. \r\n\r\n▶ 주문번호 : #{주문번호}\r\n▶ 주문일 : #{주문일}\r\n▶ 상품명 : #{상품명} 외 #{주문상품개수}건\r\n▶ 주문금액 : #{가상입금액}원\r\n\r\n▶ 은행명 : #{가상계좌은행}\r\n▶ 계좌번호 : #{가상계좌번호}\r\n▶ 예금주명 : #{가상계좌예금주}\r\n▶ 입금기한 : #{가상기한일}\r\n\r\n※ 입금기한 이후에는 입금이 불가하며, 미입금 시 자동 취소됩니다. \r\n\r\n고객센터 : #{고객센터전화번호}\r\n\r\n감사합니다.','{\"name\":\"\\uc8fc\\ubb38\\ub0b4\\uc5ed \\ud655\\uc778\\ud558\\uae30\",\"type\":\"WL\",\"url_pc\":\"#{PC\\uc8fc\\ubb38\\ubaa9\\ub85dURL}\",\"url_mobile\":\"#{\\ubaa8\\ubc14\\uc77c\\uc8fc\\ubb38\\ubaa9\\ub85dURL}\"}',NULL,'[#{쇼핑몰영문명}] 입금 안내\r\n\r\n고객님! 입금계좌를 안내 드립니다. \r\n\r\n▶ 주문번호 : #{주문번호}\r\n▶ 주문일 : #{주문일}\r\n▶ 상품명 : #{상품명} 외 #{주문상품개수}건\r\n▶ 주문금액 : #{가상입금액}원\r\n\r\n▶ 은행명 : #{가상계좌은행}\r\n▶ 계좌번호 : #{가상계좌번호}\r\n▶ 예금주명 : #{가상계좌예금주}\r\n▶ 입금기한 : #{가상기한일}\r\n\r\n※ 입금기한 이후에는 입금이 불가하며, 미입금 시 자동 취소됩니다. \r\n\r\n고객센터 : #{고객센터전화번호}\r\n\r\n감사합니다.\r\n\r\n주문내역 : #{모바일주문목록URL}','시스템(Seeder)','2023-10-06 08:38:23','','2023-10-06 08:38:23'),(5,120,'주문완료_입금완료',1,'[#{쇼핑몰영문명}] 주문하신 상품의 결제가 완료되었습니다.',1,'MT_005','[#{쇼핑몰영문명}] 입금완료 안내\r\n\r\n고객님! 입금이 완료되었습니다. \r\n\r\n▶ 주문번호 : #{주문번호}\r\n▶ 은행명 : #{가상계좌은행}\r\n▶ 입금금액 : #{가상입금액}원\r\n▶ 입금완료일 : #{입금완료일}\r\n\r\n고객센터 : #{고객센터전화번호}\r\n\r\n감사합니다.','{\"name\":\"\\uc8fc\\ubb38\\ub0b4\\uc5ed \\ud655\\uc778\\ud558\\uae30\",\"type\":\"WL\",\"url_pc\":\"#{PC\\uc8fc\\ubb38\\ubaa9\\ub85dURL}\",\"url_mobile\":\"#{\\ubaa8\\ubc14\\uc77c\\uc8fc\\ubb38\\ubaa9\\ub85dURL}\"}',NULL,'[#{쇼핑몰영문명}] 입금완료 안내\r\n\r\n고객님! 입금이 완료되었습니다. \r\n\r\n▶ 주문번호 : #{주문번호}\r\n▶ 은행명 : #{가상계좌은행}\r\n▶ 입금금액 : #{가상입금액}원\r\n▶ 입금완료일 : #{입금완료일}\r\n\r\n고객센터 : #{고객센터전화번호}\r\n\r\n감사합니다.\r\n\r\n주문내역 : #{모바일주문목록URL}','시스템(Seeder)','2023-10-06 08:38:23','','2023-10-06 08:38:23'),(6,130,'품절안내_일반취소',0,'',1,'MT_006','[#{쇼핑몰영문명}] 품절 안내\r\n\r\n고객님! 주문상품의 품절 안내 드립니다. \r\n\r\n▶ 주문번호 : #{주문번호}\r\n▶ 주문일 : #{주문일}\r\n▶ 상품명 : #{상품명}\r\n\r\n※ 결제하신 금액은 자동취소 후 환불 예정입니다. \r\n※ 서비스 이용에 불편을 드려 죄송합니다. \r\n\r\n고객센터 : #{고객센터전화번호}','{\"name\":\"\\uc8fc\\ubb38\\ub0b4\\uc5ed \\ud655\\uc778\\ud558\\uae30\",\"type\":\"WL\",\"url_pc\":\"#{PC\\uc8fc\\ubb38\\ubaa9\\ub85dURL}\",\"url_mobile\":\"#{\\ubaa8\\ubc14\\uc77c\\uc8fc\\ubb38\\ubaa9\\ub85dURL}\"}',NULL,'[#{쇼핑몰영문명}] 품절 안내\r\n\r\n고객님! 주문상품의 품절 안내 드립니다. \r\n\r\n▶ 주문번호 : #{주문번호}\r\n▶ 주문일 : #{주문일}\r\n▶ 상품명 : #{상품명}\r\n\r\n※ 결제하신 금액은 자동취소 후 환불 예정입니다. \r\n※ 서비스 이용에 불편을 드려 죄송합니다. \r\n\r\n고객센터 : #{고객센터전화번호}\r\n\r\n주문내역 : #{모바일주문목록URL}','시스템(Seeder)','2023-10-06 08:38:23','','2023-10-06 08:38:23'),(7,131,'품절안내_기타취소_환불계좌정보있음',0,'',1,'MT_007','[#{쇼핑몰영문명}] 품절 안내\r\n\r\n고객님! 주문상품의 품절 안내 드립니다. \r\n\r\n▶ 주문번호 : #{주문번호}\r\n▶ 주문일 : #{주문일}\r\n▶ 상품명 : #{상품명}\r\n▶ 환불계좌 : #{환불계좌은행} #{환불계좌번호}\r\n\r\n※ 결제하신 금액은 자동취소 후 환불 예정입니다. \r\n※ 서비스 이용에 불편을 드려 죄송합니다. \r\n\r\n고객센터 : #{고객센터전화번호}\r\n\r\n감사합니다.','{\"name\":\"\\uc8fc\\ubb38\\ub0b4\\uc5ed \\ud655\\uc778\\ud558\\uae30\",\"type\":\"WL\",\"url_pc\":\"#{PC\\uc8fc\\ubb38\\ubaa9\\ub85dURL}\",\"url_mobile\":\"#{\\ubaa8\\ubc14\\uc77c\\uc8fc\\ubb38\\ubaa9\\ub85dURL}\"}',NULL,'[#{쇼핑몰영문명}] 품절 안내\r\n\r\n고객님! 주문상품의 품절 안내 드립니다. \r\n\r\n▶ 주문번호 : #{주문번호}\r\n▶ 주문일 : #{주문일}\r\n▶ 상품명 : #{상품명}\r\n▶ 환불계좌 : #{환불계좌은행} #{환불계좌번호}\r\n\r\n※ 결제하신 금액은 자동취소 후 환불 예정입니다. \r\n※ 서비스 이용에 불편을 드려 죄송합니다. \r\n\r\n고객센터 : #{고객센터전화번호}\r\n\r\n감사합니다.\r\n\r\n주문내역 : #{모바일주문목록URL}','시스템(Seeder)','2023-10-06 08:38:23','','2023-10-06 08:38:23'),(8,132,'품절안내_기타취소_환불 계좌정보없음',0,'',1,'MT_028','[#{쇼핑몰영문명}] 품절 안내\r\n\r\n고객님! 주문상품의 품절 안내 드립니다. \r\n\r\n▶ 주문번호 : #{주문번호}\r\n▶ 주문일 : #{주문일}\r\n▶ 상품명 : #{상품명}\r\n\r\n※ 고객센터를 통해 환불계좌를 접수 바랍니다.  \r\n※ 서비스 이용에 불편을 드려 죄송합니다. \r\n\r\n고객센터 : #{고객센터전화번호}\r\n\r\n감사합니다.','{\"name\":\"\\uc8fc\\ubb38\\ub0b4\\uc5ed \\ud655\\uc778\\ud558\\uae30\",\"type\":\"WL\",\"url_pc\":\"#{PC\\uc8fc\\ubb38\\ubaa9\\ub85dURL}\",\"url_mobile\":\"#{\\ubaa8\\ubc14\\uc77c\\uc8fc\\ubb38\\ubaa9\\ub85dURL}\"}@^@{\"name\":\"\\uace0\\uac1d\\uc13c\\ud130 \\ubc14\\ub85c\\uac00\\uae30\",\"type\":\"WL\",\"url_pc\":\"#{PC\\uace0\\uac1d\\uc13c\\ud130URL}\",\"url_mobile\":\"#{\\ubaa8\\ubc14\\uc77c\\uace0\\uac1d\\uc13c\\ud130URL}\"}',NULL,'[#{쇼핑몰영문명}] 품절 안내\r\n\r\n고객님! 주문상품의 품절 안내 드립니다. \r\n\r\n▶ 주문번호 : #{주문번호}\r\n▶ 주문일 : #{주문일}\r\n▶ 상품명 : #{상품명}\r\n\r\n※ 고객센터를 통해 환불계좌를 접수 바랍니다.  \r\n※ 서비스 이용에 불편을 드려 죄송합니다. \r\n\r\n고객센터 : #{고객센터전화번호}\r\n\r\n감사합니다.\r\n\r\n주문내역 : #{모바일주문목록URL}\r\n고객센터 : #{모바일고객센터URL}','시스템(Seeder)','2023-10-06 08:38:23','','2023-10-06 08:38:23'),(9,140,'주문취소/취소환불',1,'[#{쇼핑몰영문명}] 주문하신 상품이 취소완료 되었습니다.',0,'','','',NULL,'','시스템(Seeder)','2023-10-06 08:38:23','','2023-10-06 08:38:23'),(10,150,'주문취소_환불신청_단일상품',0,'',1,'MT_009','[#{쇼핑몰영문명}] 주문취소 안내\r\n\r\n고객님! 주문상품의 취소 및 환불 신청이 완료되었습니다. \r\n\r\n▶ 주문번호 : #{주문번호}\r\n▶ 주문일 : #{주문일}\r\n▶ 상품명 : #{상품명}\r\n▶ 환불금액 : #{환불금액}원\r\n▶ 환불수단 : #{환불수단}\r\n\r\n※ 결제수단에 따라 결제취소 및 환불을 위해 일정 기간이 소요될 수 있습니다.\r\n※ 자세한 사항은 주문내역에서 확인하실 수 있습니다.\r\n\r\n고객센터 : #{고객센터전화번호}\r\n\r\n감사합니다.','{\"name\":\"\\uc8fc\\ubb38\\ub0b4\\uc5ed \\ud655\\uc778\\ud558\\uae30\",\"type\":\"WL\",\"url_pc\":\"#{PC\\uc8fc\\ubb38\\ubaa9\\ub85dURL}\",\"url_mobile\":\"#{\\ubaa8\\ubc14\\uc77c\\uc8fc\\ubb38\\ubaa9\\ub85dURL}\"}',NULL,'[#{쇼핑몰영문명}] 주문취소 안내\r\n\r\n고객님! 주문상품의 취소 및 환불 신청이 완료되었습니다. \r\n\r\n▶ 주문번호 : #{주문번호}\r\n▶ 주문일 : #{주문일}\r\n▶ 상품명 : #{상품명}\r\n▶ 환불금액 : #{환불금액}원\r\n▶ 환불수단 : #{환불수단}\r\n\r\n※ 결제수단에 따라 결제취소 및 환불을 위해 일정 기간이 소요될 수 있습니다. \r\n※ 자세한 사항은 주문내역에서 확인하실 수 있습니다.\r\n\r\n주문내역 : #{모바일주문목록URL}','시스템(Seeder)','2023-10-06 08:38:23','','2023-10-06 08:38:23'),(11,151,'주문취소_환불신청_복수상품',0,'',1,'MT_010','[#{쇼핑몰영문명}] 주문취소 안내\r\n\r\n고객님! 주문상품의 취소 및 환불신청이 완료되었습니다. \r\n\r\n▶ 주문번호 : #{주문번호}\r\n▶ 주문일 : #{주문일}\r\n▶ 상품명 : #{상품명} 외 #{취소상품개수}건\r\n▶ 환불금액 : #{환불금액}원\r\n▶ 환불수단 : #{환불수단}\r\n\r\n※ 결제수단에 따라 결제취소 및 환불을 위해 일정 기간이 소요될 수 있습니다. \r\n※ 자세한 사항은 주문내역에서 확인하실 수 있습니다.\r\n\r\n고객센터 : #{고객센터전화번호}\r\n\r\n감사합니다.','{\"name\":\"\\uc8fc\\ubb38\\ub0b4\\uc5ed \\ud655\\uc778\\ud558\\uae30\",\"type\":\"WL\",\"url_pc\":\"#{PC\\uc8fc\\ubb38\\ubaa9\\ub85dURL}\",\"url_mobile\":\"#{\\ubaa8\\ubc14\\uc77c\\uc8fc\\ubb38\\ubaa9\\ub85dURL}\"}',NULL,'[#{쇼핑몰영문명}] 주문취소 안내\r\n\r\n고객님! 주문상품의 취소 및 환불신청이 완료되었습니다. \r\n\r\n▶ 주문번호 : #{주문번호}\r\n▶ 주문일 : #{주문일}\r\n▶ 상품명 : #{상품명} 외 #{취소상품개수}건\r\n▶ 환불금액 : #{환불금액}원\r\n▶ 환불수단 : #{환불수단}\r\n\r\n※ 결제수단에 따라 결제취소 및 환불을 위해 일정 기간이 소요될 수 있습니다. \r\n※ 자세한 사항은 주문내역에서 확인하실 수 있습니다.\r\n\r\n고객센터 : #{고객센터전화번호}\r\n\r\n감사합니다.\r\n\r\n주문내역 : #{모바일주문목록URL}','시스템(Seeder)','2023-10-06 08:38:23','','2023-10-06 08:38:23'),(12,300,'배송시작_단일상품',1,'[#{쇼핑몰영문명}] 주문하신 상품이 배송출발 하였습니다.',1,'MT_011','[#{쇼핑몰영문명}] 배송시작 안내\r\n\r\n고객님! 주문상품의 배송이 시작되었습니다. \r\n\r\n▶ 주문번호 : #{주문번호}\r\n▶ 주문일 : #{주문일}\r\n▶ 상품명 : #{상품명}\r\n\r\n※ 택배사 사정에 따라 배송 위치 조회까지 최대 이틀 소요될 수 있습니다.\r\n\r\n고객센터 : #{고객센터전화번호}\r\n\r\n감사합니다.','{\"name\":\"\\uc8fc\\ubb38\\ub0b4\\uc5ed \\ud655\\uc778\\ud558\\uae30\",\"type\":\"WL\",\"url_pc\":\"#{PC\\uc8fc\\ubb38\\ubaa9\\ub85dURL}\",\"url_mobile\":\"#{\\ubaa8\\ubc14\\uc77c\\uc8fc\\ubb38\\ubaa9\\ub85dURL}\"}',NULL,'[#{쇼핑몰영문명}] 배송시작 안내\r\n\r\n고객님! 주문상품의 배송이 시작되었습니다. \r\n\r\n▶ 주문번호 : #{주문번호}\r\n▶ 주문일 : #{주문일}\r\n▶ 상품명 : #{상품명}\r\n\r\n※ 택배사 사정에 따라 배송 위치 조회까지 최대 이틀 소요될 수 있습니다.\r\n\r\n고객센터 : #{고객센터전화번호}\r\n\r\n감사합니다.\r\n\r\n주문내역 : #{모바일주문목록URL}','시스템(Seeder)','2023-10-06 08:38:23','','2023-10-06 08:38:23'),(13,301,'배송시작_복수상품',1,'[#{쇼핑몰영문명}] 주문하신 상품이 배송출발 하였습니다.',1,'MT_012','[#{쇼핑몰영문명}] 배송시작 안내\r\n\r\n고객님! 주문상품의 배송이 시작되었습니다. \r\n\r\n▶ 주문번호 : #{주문번호}\r\n▶ 주문일 : #{주문일}\r\n▶ 상품명 : #{상품명} 외 #{주문상품개수}건\r\n\r\n※ 택배사 사정에 따라 배송 위치 조회까지 최대 이틀 소요될 수 있습니다.\r\n\r\n고객센터 : #{고객센터전화번호}\r\n\r\n감사합니다.','{\"name\":\"\\uc8fc\\ubb38\\ub0b4\\uc5ed \\ud655\\uc778\\ud558\\uae30\",\"type\":\"WL\",\"url_pc\":\"#{PC\\uc8fc\\ubb38\\ubaa9\\ub85dURL}\",\"url_mobile\":\"#{\\ubaa8\\ubc14\\uc77c\\uc8fc\\ubb38\\ubaa9\\ub85dURL}\"}',NULL,'[#{쇼핑몰영문명}] 배송시작 안내\r\n\r\n고객님! 주문상품의 배송이 시작되었습니다. \r\n\r\n▶ 주문번호 : #{주문번호}\r\n▶ 주문일 : #{주문일}\r\n▶ 상품명 : #{상품명} 외 #{주문상품개수}건\r\n\r\n※ 택배사 사정에 따라 배송 위치 조회까지 최대 이틀 소요될 수 있습니다.\r\n\r\n고객센터 : #{고객센터전화번호}\r\n\r\n감사합니다.\r\n\r\n주문내역 : #{모바일주문목록URL}','시스템(Seeder)','2023-10-06 08:38:23','','2023-10-06 08:38:23'),(14,700,'문의답변완료_1:1',1,'[#{쇼핑몰영문명}] 문의하신 내용에 답변이 작성되었습니다.',1,'MT_013','[#{쇼핑몰영문명}] 1:1문의 답변완료\r\n\r\n고객님! 문의하신 내용에 대한 답변이 완료되었습니다. \r\n\r\n▶ 문의제목 : #{문의제목}\r\n▶ 문의등록일 : #{문의등록일}\r\n\r\n※ 서비스 이용에 불편을 드려 죄송합니다. \r\n\r\n 고객센터 : #{고객센터전화번호}\r\n\r\n감사합니다.','{\"name\":\"\\ubb38\\uc758\\ub0b4\\uc5ed \\ubc14\\ub85c\\uac00\\uae30\",\"type\":\"WL\",\"url_pc\":\"#{PC\\ubb38\\uc758\\ub0b4\\uc5edURL}\",\"url_mobile\":\"#{\\ubaa8\\ubc14\\uc77c\\ubb38\\uc758\\ub0b4\\uc5edURL}\"}',NULL,'[#{쇼핑몰영문명}] 1:1문의 답변완료\r\n\r\n고객님! 문의하신 내용에 대한 답변이 완료되었습니다. \r\n\r\n▶ 문의제목 : #{문의제목}\r\n▶ 문의등록일 : #{문의등록일}\r\n\r\n※ 서비스 이용에 불편을 드려 죄송합니다. \r\n\r\n 고객센터 : #{고객센터전화번호}\r\n\r\n감사합니다.\r\n\r\n문의내역 : #{모바일문의내역URL}','시스템(Seeder)','2023-10-06 08:38:23','','2023-10-06 08:38:23'),(15,710,'문의답변완료_Q&A',1,'[#{쇼핑몰영문명}] 문의하신 내용에 답변이 작성되었습니다.',1,'MT_014','[#{쇼핑몰영문명}] Q&A문의 답변완료\r\n\r\n고객님! 문의하신 내용에 대한 답변이 완료되었습니다. \r\n\r\n▶ 문의제목 : #{문의제목}\r\n▶ 문의등록일 : #{문의등록일}\r\n\r\n고객센터 : #{고객센터전화번호}\r\n\r\n감사합니다.','{\"name\":\"\\ubb38\\uc758\\ub0b4\\uc5ed \\ubc14\\ub85c\\uac00\\uae30\",\"type\":\"WL\",\"url_pc\":\"#{PC\\ubb38\\uc758\\ub0b4\\uc5edURL}\",\"url_mobile\":\"#{\\ubaa8\\ubc14\\uc77c\\ubb38\\uc758\\ub0b4\\uc5edURL}\"}',NULL,'[#{쇼핑몰영문명}] Q&A문의 답변완료\r\n\r\n고객님! 문의하신 내용에 대한 답변이 완료되었습니다. \r\n\r\n▶ 문의제목 : #{문의제목}\r\n▶ 문의등록일 : #{문의등록일}\r\n\r\n고객센터 : #{고객센터전화번호}\r\n\r\n감사합니다.\r\n\r\n문의내역 : #{모바일문의내역URL}','시스템(Seeder)','2023-10-06 08:38:23','','2023-10-06 08:38:23'),(16,630,'인증번호_비밀번호찾기',1,'[#{쇼핑몰영문명}] 요청하신 인증번호입니다.',1,'MT_015','[#{쇼핑몰영문명}] 인증번호 [#{인증번호}]를 입력해주세요.','',NULL,'[#{쇼핑몰영문명}] 인증번호 [#{인증번호}]를 입력해주세요.','시스템(Seeder)','2023-10-06 08:38:23','','2023-10-06 08:38:23'),(17,631,'아이디찾기_완료',1,'[#{쇼핑몰영문명}] 아이디 찾기가 완료되었습니다.',1,'MT_016','[#{쇼핑몰영문명}] 아이디 안내\r\n\r\n고객님! 아이디 찾기가 완료되었습니다.\r\n\r\n▶ 아이디 : #{아이디}\r\n▶ 로그인 하기 : #{모바일마이페이지URL}','',NULL,'[#{쇼핑몰영문명}] 아이디 안내\r\n\r\n고객님! 아이디 찾기가 완료되었습니다.\r\n\r\n▶ 아이디 : #{아이디}\r\n▶ 로그인 하기 : #{모바일마이페이지URL}','시스템(Seeder)','2023-10-06 08:38:23','','2023-10-06 08:38:23'),(18,614,'리워드포인트_소멸예정안내',1,'[#{쇼핑몰영문명}] 회원님의 보유 리워드포인트가 소멸될 예정입니다.',1,'MT_017',' 리워드포인트 소멸 안내\r\n\r\n▶ 소멸예정일 : #{소멸예정일}\r\n▶ 소멸예정리워드포인트 : #{소멸예정리워드포인트}\r\n▶ 가용리워드포인트 : #{가용리워드포인트}\r\n\r\n※ 리워드포인트 소멸이 7일 남았습니다.\r\n※ 리워드포인트 미사용 시 자동 소멸됩니다.\r\n※ 이 메시지는 고객님이 상품구매를 통하여 적립하신 리워드포인트가 소멸되어 안내 드리는 메시지입니다.\r\n\r\n고객센터 : \r\n\r\n감사합니다.','{\"name\":\"\\ub9ac\\uc6cc\\ub4dc\\ud3ec\\uc778\\ud2b8 \\ud655\\uc778\\ud558\\uae30\",\"type\":\"WL\",\"url_pc\":\"#{PC\\ub9ac\\uc6cc\\ub4dc\\ud3ec\\uc778\\ud2b8\\ud604\\ud669URL}\",\"url_mobile\":\"#{\\ubaa8\\ubc14\\uc77c\\ub9ac\\uc6cc\\ub4dc\\ud3ec\\uc778\\ud2b8\\ud604\\ud669URL}\"}',NULL,' 리워드포인트 소멸 안내\r\n\r\n▶ 소멸예정일 : #{소멸예정일}\r\n▶ 소멸예정리워드포인트 : #{소멸예정리워드포인트}\r\n▶ 가용리워드포인트 : #{가용리워드포인트}\r\n\r\n※ 리워드포인트 소멸이 7일 남았습니다. \r\n※ 리워드포인트 미사용 시 자동 소멸됩니다. \r\n\r\n고객센터 : #{고객센터전화번호}\r\n\r\n감사합니다.\r\n\r\n리워드포인트내역 : #{모바일리워드포인트현황URL}','시스템(Seeder)','2023-10-06 08:38:23','','2023-10-06 08:38:23'),(19,800,'매출보고_일매출',0,'',1,'MT_020','[#{쇼핑몰영문명}] 일매출(22시 기준)\r\n▶ 금일금액 : #{금일금액}\r\n▶ 전년금액 : #{전년금액}\r\n▶ 목표금액 : #{목표금액}\r\n▶ 달성율 : #{달성율}','',NULL,'[#{쇼핑몰영문명}] 일매출(22시 기준)\r\n▶ 금일금액 : #{금일금액}\r\n▶ 전년금액 : #{전년금액}\r\n▶ 목표금액 : #{목표금액}\r\n▶ 달성율 : #{달성율}','시스템(Seeder)','2023-10-06 08:38:23','','2023-10-06 08:38:23'),(20,400,'반품신청안내',1,'[#{쇼핑몰영문명}] 주문하신 상품이 정상적으로 반품신청 되었습니다.',1,'MT_052','[#{쇼핑몰영문명}] 반품 신청 안내\r\n\r\n고객님! 주문하신 상품의 반품 신청이 완료 되었습니다.\r\n\r\n▶ 주문번호 : #{주문번호}\r\n▶ 주문일 : #{주문일}\r\n▶ 상품명 : #{상품명}\r\n\r\n※ 수거접수도 함께 진행되며, 상품 입고 검수 후 처리 될 예정입니다.\r\n※ 택배사 사정에 따라 수거는 1~3일 정도 소요 될 수 있습니다.\r\n※ 자세한 사항은 주문내역에서 확인하실 수 있습니다.\r\n\r\n고객센터 : #{고객센터번호}\r\n감사합니다.','{\"name\":\"\\uc8fc\\ubb38\\ub0b4\\uc5ed \\ud655\\uc778\\ud558\\uae30\",\"type\":\"WL\",\"url_pc\":\"#{PC\\uc8fc\\ubb38\\ubaa9\\ub85dURL}\",\"url_mobile\":\"#{\\ubaa8\\ubc14\\uc77c\\uc8fc\\ubb38\\ubaa9\\ub85dURL}\"}',NULL,'[#{쇼핑몰영문명}] 반품 신청 안내\r\n\r\n고객님! 주문하신 상품의 반품 신청이 완료 되었습니다.\r\n\r\n▶ 주문번호 : #{주문번호}\r\n▶ 주문일 : #{주문일}\r\n▶ 상품명 : #{상품명}\r\n\r\n※ 수거접수도 함께 진행되며, 상품 입고 검수 후 처리 될 예정입니다.\r\n※ 택배사 사정에 따라 수거는 1~3일 정도 소요 될 수 있습니다.\r\n※ 자세한 사항은 주문내역에서 확인하실 수 있습니다.\r\n\r\n고객센터 : #{고객센터번호}\r\n감사합니다.\r\n\r\n주문내역 : #{모바일주문목록URL}','시스템(Seeder)','2023-10-06 08:38:23','','2023-10-06 08:38:23'),(21,410,'반품완료안내',1,'[#{쇼핑몰영문명}] 주문하신 상품이 정상적으로 반품완료 되었습니다.',1,'MT_053','[#{쇼핑몰영문명}] 반품 완료 안내\r\n\r\n고객님! 반품 신청하신 상품의 반품이 완료되었습니다.\r\n\r\n▶ 주문번호 : #{주문번호}\r\n▶ 주문일 : #{주문일}\r\n▶ 상품명 : #{상품명}\r\n▶ 환불금액 : #{환불금액}원\r\n▶ 환불수단 : #{환불수단}\r\n\r\n※ 결제수단에 따라 결제취소 및 환불을 위해 일정 기간이 소요될 수 있습니다. \r\n※ 자세한 사항은 주문내역에서 확인하실 수 있습니다.','{\"name\":\"\\uc8fc\\ubb38\\ub0b4\\uc5ed \\ud655\\uc778\\ud558\\uae30\",\"type\":\"WL\",\"url_pc\":\"#{PC\\uc8fc\\ubb38\\ubaa9\\ub85dURL}\",\"url_mobile\":\"#{\\ubaa8\\ubc14\\uc77c\\uc8fc\\ubb38\\ubaa9\\ub85dURL}\"}',NULL,'[#{쇼핑몰영문명}] 반품 완료 안내\r\n\r\n고객님! 반품 신청하신 상품의 반품이 완료되었습니다.\r\n\r\n▶ 주문번호 : #{주문번호}\r\n▶ 주문일 : #{주문일}\r\n▶ 상품명 : #{상품명}\r\n▶ 환불금액 : #{환불금액}원\r\n▶ 환불수단 : #{환불수단}\r\n\r\n※ 결제수단에 따라 결제취소 및 환불을 위해 일정 기간이 소요될 수 있습니다. \r\n※ 자세한 사항은 주문내역에서 확인하실 수 있습니다.\r\n\r\n주문내역 : #{모바일주문목록URL}','시스템(Seeder)','2023-10-06 08:38:23','','2023-10-06 08:38:23'),(22,600,'회원가입 완료',1,'[#{쇼핑몰영문명}] #{쇼핑몰명} 회원가입을 축하드립니다.',1,'MT_018','[#{쇼핑몰영문명}] 회원가입 완료\r\n\r\n안녕하세요. #{회원명}님!\r\n#{쇼핑몰영문명} 회원가입을 진심으로 환영합니다.\r\n\r\n▶ 아이디 : #{아이디}\r\n\r\n앞으로 많은 이용 부탁 드립니다.\r\n감사합니다.','{\"name\":\"\\uc1fc\\ud551\\ubab0 \\ubc14\\ub85c\\uac00\\uae30\",\"type\":\"WL\",\"url_pc\":\"#{PC\\uc1fc\\ud551\\ubab0URL}\",\"url_mobile\":\"#{\\ubaa8\\ubc14\\uc77c\\uc1fc\\ud551\\ubab0URL}\"}',NULL,'[#{쇼핑몰영문명}] 회원가입 완료\r\n\r\n안녕하세요. #{회원명}님!\r\n#{쇼핑몰영문명} 회원가입을 진심으로 환영합니다.\r\n\r\n▶ 아이디 : #{아이디}\r\n\r\n앞으로 많은 이용 부탁 드립니다.\r\n감사합니다.\r\n\r\n#{쇼핑몰명} 바로가기 : #{모바일쇼핑몰URL}','시스템(Seeder)','2023-10-06 08:38:23','','2023-10-06 08:38:23'),(23,690,'회원탈퇴',1,'[#{쇼핑몰영문명}] 회원 탈퇴가 완료되었습니다.',0,'','','',NULL,'','시스템(Seeder)','2023-10-06 08:38:23','','2023-10-06 08:38:23'),(24,613,'휴면회원 전환 사전 안내',1,'[#{쇼핑몰영문명}] 회원님의 아이디가 휴면회원으로 전환될 예정입니다.',1,'MT_019','[#{쇼핑몰영문명}] 휴면회원 전환 사전 안내\r\n\r\n안녕하세요. 고객님! \r\n개인정보를 안전하게 보호하고자 \r\n#{휴면전환일}까지 미로그인 시\r\n고객님의 아이디가 휴면 회원으로 전환 될 예정입니다.\r\n\r\n휴면 회원으로 전환 시 모든 개인 정보가\r\n분리 보관 후 파기 됩니다.\r\n\r\n▶ 휴면 전환 예정일 : #{휴면전환일}\r\n▶ 휴면 대상 아이디 : #{아이디}\r\n\r\n휴면 회원 전환 이 후 사이트 로그인을 위해서는\r\n별도의 인증 절차가 진행될 수 있으니\r\n편리한 사이트 이용을 위해 미리 로그인 해주세요.\r\n\r\n고객센터 : #{고객센터전화번호}\r\n\r\n감사합니다.','{\"name\":\"\\ub85c\\uadf8\\uc778\\ud558\\uae30\",\"type\":\"WL\",\"url_pc\":\"#{PC\\ub85c\\uadf8\\uc778URL}\",\"url_mobile\":\"#{\\ubaa8\\ubc14\\uc77c\\ub85c\\uadf8\\uc778URL}\"}',NULL,'[#{쇼핑몰영문명}] 휴면회원 전환 사전 안내\r\n\r\n안녕하세요. 고객님! \r\n개인정보를 안전하게 보호하고자 \r\n#{휴면전환일}까지 미로그인 시\r\n고객님의 아이디가 휴면 회원으로 전환 될 예정입니다.\r\n\r\n휴면 회원으로 전환 시 모든 개인 정보가\r\n분리 보관 후 파기 됩니다.\r\n\r\n▶ 휴면 전환 예정일 : #{휴면전환일}\r\n▶ 휴면 대상 아이디 : #{아이디}\r\n\r\n휴면 회원 전환 이 후 사이트 로그인을 위해서는\r\n별도의 인증 절차가 진행될 수 있으니\r\n편리한 사이트 이용을 위해 미리 로그인 해주세요.\r\n\r\n고객센터 : #{고객센터전화번호}\r\n\r\n감사합니다.\r\n\r\n로그인하기 : #{모바일로그인URL}','시스템(Seeder)','2023-10-06 08:38:23','','2023-10-06 08:38:23'),(25,610,'회원 등급 변경 안내',1,'[#{쇼핑몰영문명}] 이번 달 회원님의 등급을 안내 드립니다.',0,'','','',NULL,'','시스템(Seeder)','2023-10-06 08:38:23','','2023-10-06 08:38:23'),(26,611,'개인정보 이용내역 안내',1,'[#{쇼핑몰영문명}] 개인정보 이용내역 안내',0,'','','',NULL,'','시스템(Seeder)','2023-10-06 08:38:23','','2023-10-06 08:38:23'),(27,612,'마케팅정보 수신동의 안내',1,'[#{쇼핑몰영문명}] 마케팅 정보 수신 동의 안내',0,'','','',NULL,'','시스템(Seeder)','2023-10-06 08:38:23','','2023-10-06 08:38:23'),(28,810,'제휴 및 입점문의',1,'[#{쇼핑몰영문명}] 제휴 및 입점문의',0,'','','',NULL,'','시스템(Seeder)','2023-10-06 08:38:23','','2023-10-06 08:38:23'),(29,190,'영수증',1,'[#{쇼핑몰영문명}] 영수증 발급내역 입니다.',0,'','','',NULL,'','시스템(Seeder)','2023-10-06 08:38:23','','2023-10-06 08:38:23'),(30,801,'매출보고_전일매출_어드민기준',0,'',1,'MT_021','[#{쇼핑몰영문명}] 일매출(전일 기준)\r\n▶ 전일금액(집계) : #{일별 주문품목(지불완료) 집계금액}원\r\n▶ 전일금액(정상) : #{일별 주문품목(지불완료) 정상금액}원\r\n▶ 목표금액 : #{목표등록 분류 총계}원\r\n▶ 달성율 : #{=전일금액(집계)/목표금액}%','',NULL,'[#{쇼핑몰영문명}] 일매출(전일 기준)\r\n▶ 전일금액(집계) : #{일별 주문품목(지불완료) 집계금액}원\r\n▶ 전일금액(정상) : #{일별 주문품목(지불완료) 정상금액}원\r\n▶ 목표금액 : #{목표등록 분류 총계}원\r\n▶ 달성율 : #{=전일금액(집계)/목표금액}%','시스템(Seeder)','2023-10-06 08:38:23','','2023-10-06 08:38:23'),(31,500,'래플 응모완료',0,'',1,'MT_029','[#{쇼핑몰영문명}] 래플 응모완료 안내\r\n#{회원명}님, #{쇼핑몰영문명} 래플 \'#{상품명}\'에 응모해주셔서 감사합니다.\r\n당첨결과 여부는 추후 발표일에 따라 안내드릴 예정입니다.\r\n\r\n- 응모기간: #{응모기간시작일} ~ #{응모기간종료일}\r\n- 당첨자발표: #{래플당첨자발표일}\r\n\r\n고객센터 : #{고객센터전화번호}\r\n\r\n참여해주셔서 감사합니다.','',NULL,'[#{쇼핑몰영문명}] 래플 응모완료 안내\r\n#{회원명}님, #{쇼핑몰영문명} 래플 \'#{상품명}\'에 응모해주셔서 감사합니다.\r\n당첨결과 여부는 추후 발표일에 따라 안내드릴 예정입니다.\r\n\r\n- 응모기간: #{응모기간시작일} ~ #{응모기간종료일}\r\n- 당첨자발표: #{래플당첨자발표일}\r\n\r\n고객센터 : #{고객센터전화번호}\r\n\r\n참여해주셔서 감사합니다.','시스템(Seeder)','2023-10-06 08:38:23','','2023-10-06 08:38:23'),(32,501,'래플 응모_당첨 결과 안내_당첨',0,'',1,'MT_023','[#{쇼핑몰영문명}] 래플 응모결과 안내\r\n#{회원명}님, #{쇼핑몰영문명} 래플 \'#{상품명}\' 당첨을 축하드립니다. \r\n구매 유의 사항 확인 후 구매 부탁드립니다.  \r\n\r\n- 유의 사항 \r\n1. 당첨 상품은 당첨된 회원 아이디로 로그인 시 \r\n구매할 수 있습니다.\r\n2. 구매기간이 지난 후에는 구매가 불가능합니다.\r\n\r\n- 상품명: #{상품명}\r\n- 구매 가능 시간:  #{구매가능시작일} ~ #{구매가능종료일}\r\n- 구매 링크 : #{래플구매URL}\r\n\r\n고객센터 : #{고객센터전화번호}\r\n\r\n참여해주셔서 감사합니다.','',NULL,'[#{쇼핑몰영문명}] 래플 응모결과 안내\r\n#{회원명}님, #{쇼핑몰영문명} 래플 \'#{상품명}\' 당첨을 축하드립니다. \r\n구매 유의 사항 확인 후 구매 부탁드립니다.  \r\n\r\n- 유의 사항 \r\n1. 당첨 상품은 당첨된 회원 아이디로 로그인 시 \r\n구매할 수 있습니다.\r\n2. 구매기간이 지난 후에는 구매가 불가능합니다.\r\n\r\n- 상품명: #{상품명}\r\n- 구매 가능 시간:  #{구매가능시작일} ~ #{구매가능종료일}\r\n- 구매 링크 : #{래플구매URL}\r\n\r\n고객센터 : #{고객센터전화번호}\r\n\r\n참여해주셔서 감사합니다.','시스템(Seeder)','2023-10-06 08:38:23','','2023-10-06 08:38:23'),(33,502,'래플응모_당첨 결과 안내_미당첨',0,'',1,'MT_030','[#{쇼핑몰영문명}] 래플 응모결과 안내\r\n#{회원명}님, #{쇼핑몰영문명} 래플 \'#{상품명}\'에 당첨되지 않으셨습니다.\r\n다음 래플에 도전해주세요.\r\n- 응모기간: #{응모기간시작일} ~ #{응모기간종료일}\r\n- 당첨자발표: #{래플당첨자발표일}\r\n\r\n고객센터 : #{고객센터전화번호}\r\n\r\n참여해주셔서 감사합니다.','',NULL,'[#{쇼핑몰영문명}] 래플 응모결과 안내\r\n#{회원명}님, #{쇼핑몰영문명} 래플 \'#{상품명}\'에 당첨되지 않으셨습니다.\r\n다음 래플에 도전해주세요.\r\n- 응모기간: #{응모기간시작일} ~ #{응모기간종료일}\r\n- 당첨자발표: #{래플당첨자발표일}\r\n\r\n고객센터 : #{고객센터전화번호}\r\n\r\n참여해주셔서 감사합니다.','시스템(Seeder)','2023-10-06 08:38:23','','2023-10-06 08:38:23'),(34,510,'재입고 알림',0,'',1,'MT_025','[#{쇼핑몰영문명}] 상품 재입고 안내\r\n\r\n고객님! 신청하신 상품이 재입고되었습니다.\r\n다시 품절되기 전에 서둘러 구매하세요.\r\n\r\n▶ 상품명 : #{상품명}\r\n▶ 구매 링크 : #{재입고구매URL}\r\n\r\n고객센터 : #{고객센터전화번호}\r\n\r\n감사합니다.','',NULL,'[#{쇼핑몰영문명}] 상품 재입고 안내\r\n\r\n고객님! 신청하신 상품이 재입고되었습니다.\r\n다시 품절되기 전에 서둘러 구매하세요.\r\n\r\n▶ 상품명 : #{상품명}\r\n▶ 구매 링크 : #{재입고구매URL}\r\n\r\n고객센터 : #{고객센터전화번호}\r\n\r\n감사합니다.','시스템(Seeder)','2023-10-06 08:38:23','','2023-10-06 08:38:23'),(35,520,'공동구매_성공',0,'',1,'MT_026','[#{쇼핑몰영문명}] 공동구매 결과 안내\r\n\r\n고객님! 참여하신 공동구매가 목표 수량에 도달하여 쿠폰이 지급되었습니다.\r\n구매 전 구매 유의 사항을 확인해주세요.\r\n\r\n▶ 상품명 : #{상품명}\r\n▶ 쿠폰 사용 기간 : #{쿠폰사용기간시작일} ~ #{쿠폰사용기간종료일}\r\n\r\n※ 공동구매 쿠폰은 해당 상품에만 적용 가능합니다.\r\n※ 상품 주문 시 지급받으신 공동구매 쿠폰을 적용하여 구매해주세요.\r\n\r\n고객센터 : #{고객센터전화번호}\r\n\r\n감사합니다.','{\"name\":\"\\uacf5\\ub3d9\\uad6c\\ub9e4 \\uc0c1\\ud488 \\ud655\\uc778\",\"type\":\"WL\",\"url_pc\":\"#{PC\\uacf5\\ub3d9\\uad6c\\ub9e4URL}\",\"url_mobile\":\"#{\\ubaa8\\ubc14\\uc77c\\uacf5\\ub3d9\\uad6c\\ub9e4URL}\"}',NULL,'[#{쇼핑몰영문명}] 공동구매 결과 안내\r\n\r\n고객님! 참여하신 공동구매가 목표 수량에 도달하여 쿠폰이 지급되었습니다.\r\n구매 전 구매 유의 사항을 확인해주세요.\r\n\r\n▶ 상품명 : #{상품명}\r\n▶ 쿠폰 사용 기간 : #{쿠폰사용기간시작일} ~ #{쿠폰사용기간종료일}\r\n\r\n※ 공동구매 쿠폰은 해당 상품에만 적용 가능합니다.\r\n※ 상품 주문 시 지급받으신 공동구매 쿠폰을 적용하여 구매해주세요.\r\n\r\n고객센터 : #{고객센터전화번호}\r\n\r\n감사합니다.','시스템(Seeder)','2023-10-06 08:38:23','','2023-10-06 08:38:23'),(36,503,'래플예약 알림',0,'',1,'MT_031','[#{쇼핑몰영문명}] 래플 응모시작 안내드립니다.\r\n#{회원명}님, #{쇼핑몰영문명} 래플 \'#{상품명}\'에 응모가 가능합니다.\r\n\r\n- 응모기간: #{응모기간시작일} ~ #{응모기간종료일}\r\n- 당첨자발표: #{래플담청자발표일}\r\n\r\n고객센터 : #{고객센터전화번호}\r\n\r\n응모 알림 설정해 주셔서 감사합니다.','{\"name\":\"\\ub798\\ud50c \\uc0c1\\ud488 \\ud655\\uc778\",\"type\":\"WL\",\"url_pc\":\"#{PC\\uc1fc\\ud551\\ubab0URL}\",\"url_mobile\":\"#{\\ubaa8\\ubc14\\uc77c\\uc1fc\\ud551\\ubab0URL}\"}',NULL,'[#{쇼핑몰영문명}] 래플 응모시작 안내드립니다.\r\n#{회원명}님, #{쇼핑몰영문명} 래플 \'#{상품명}\'에 응모가 가능합니다.\r\n\r\n- 응모기간: #{응모기간시작일} ~ #{응모기간종료일}\r\n- 당첨자발표: #{래플담청자발표일}\r\n\r\n고객센터 : #{고객센터전화번호}\r\n\r\n응모 알림 설정해 주셔서 감사합니다.','시스템(Seeder)','2023-10-06 08:38:23','','2023-10-06 08:38:23');
/*!40000 ALTER TABLE `mm_shp_notification_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_shp_off_days`
--

DROP TABLE IF EXISTS `mm_shp_off_days`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_shp_off_days` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '고유키',
  `middle_user_id` bigint unsigned NOT NULL COMMENT '해당 중간관리자 고유키(mm_adm_middle_users.id), 0일시 전체 적용',
  `seller_id` bigint unsigned NOT NULL COMMENT '해당 셀러 고유키(mm_adm_sellers.id), 0일시 전체 적용',
  `target_date` date NOT NULL COMMENT '대상 날짜',
  `title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '휴무제목',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '휴무 상세내용',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `middle_user_id_seller_id_target_date_unique` (`middle_user_id`,`seller_id`,`target_date`),
  KEY `middle_user_id_index` (`middle_user_id`),
  KEY `seller_id_index` (`seller_id`),
  KEY `target_date_index` (`target_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_shp_off_days`
--

LOCK TABLES `mm_shp_off_days` WRITE;
/*!40000 ALTER TABLE `mm_shp_off_days` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_shp_off_days` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_shp_point_rules`
--

DROP TABLE IF EXISTS `mm_shp_point_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_shp_point_rules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `use_purchase_point` tinyint(1) NOT NULL COMMENT '구매확정 포인트 사용여부',
  `purchase_point_rate` decimal(4,1) NOT NULL COMMENT '구매확정 포인트 지급율',
  `use_photo_review_point` tinyint(1) NOT NULL COMMENT '포토리뷰 포인트 사용여부',
  `photo_review_point` int unsigned NOT NULL COMMENT '포토리뷰 포인트 지급액',
  `use_review_point` tinyint(1) NOT NULL COMMENT '리뷰 포인트 사용여부',
  `review_point` int unsigned NOT NULL COMMENT '리뷰 포인트 지급액',
  `usable_from_balance` int unsigned NOT NULL COMMENT '결제사용가능 최소보유금액',
  `maximum_limit_by_amount` tinyint(1) NOT NULL COMMENT '최대사용 정액적용여부',
  `maximum_usable_rate` int unsigned NOT NULL COMMENT '최대 사용 조건(정률)',
  `maximum_usable_amount` int unsigned NOT NULL COMMENT '최대 사용 조건(정액)',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_shp_point_rules`
--

LOCK TABLES `mm_shp_point_rules` WRITE;
/*!40000 ALTER TABLE `mm_shp_point_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_shp_point_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_shp_policies`
--

DROP TABLE IF EXISTS `mm_shp_policies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_shp_policies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '약관 고유번호',
  `policy_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '약관 종류 {agreement:이용약관, privacy:개인정보 처리방침, offer:제 4자 정보제공동의, teen:청소년 보호방침}',
  `subject` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '약관명',
  `contents` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '약관내용',
  `start_date` datetime NOT NULL COMMENT '약관 노출 시작일',
  `created_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '등록자',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '생성 일시',
  `updated_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '수정자',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '수정 일시',
  `deleted_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '삭제자',
  `deleted_at` datetime DEFAULT NULL COMMENT '삭제 일시',
  PRIMARY KEY (`id`),
  KEY `mm_shp_policies_subject_index` (`subject`) USING BTREE,
  KEY `mm_shp_policies_status_index` (`start_date`,`id`) USING BTREE,
  KEY `mm_shp_policies_policy_type_index` (`policy_type`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='약관 정보 테이블';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_shp_policies`
--

LOCK TABLES `mm_shp_policies` WRITE;
/*!40000 ALTER TABLE `mm_shp_policies` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_shp_policies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_shp_ranking_brand`
--

DROP TABLE IF EXISTS `mm_shp_ranking_brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_shp_ranking_brand` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `rank_range` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '랭킹 산정 범위(D: 일간, W: 주간, M: 월간)',
  `target_date` datetime NOT NULL COMMENT '랭킹 집계 기준일',
  `rank` int unsigned NOT NULL COMMENT '순위',
  `brand_id` int unsigned NOT NULL COMMENT '브랜드 고유키(mm_shp_brands.id)',
  `ordered_count` int NOT NULL COMMENT '주문수량',
  `ordered_amount` bigint NOT NULL COMMENT '매출액(결제가 기준)',
  `change_type` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '전일->당일 기준 순위 변동타입(N: 신규진입, U: 상승, D: 하락, S: 변동없음)',
  `change_value` int unsigned DEFAULT NULL COMMENT '순위 변동값',
  `best_goods_id_concat` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '해당 기간 브랜드 베스트 상품코드 concat',
  `created_at` datetime NOT NULL COMMENT '집계 생성시간',
  `updated_at` datetime DEFAULT NULL COMMENT '집계 수정시간',
  `mall_id` bigint unsigned DEFAULT NULL COMMENT '대상 몰 코드(mm_shp_malls.id), null => 전체',
  PRIMARY KEY (`id`),
  KEY `mm_shp_ranking_brand_rank_range_index` (`rank_range`),
  KEY `mm_shp_ranking_brand_rank_index` (`rank`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_shp_ranking_brand`
--

LOCK TABLES `mm_shp_ranking_brand` WRITE;
/*!40000 ALTER TABLE `mm_shp_ranking_brand` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_shp_ranking_brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_shp_ranking_goods_order`
--

DROP TABLE IF EXISTS `mm_shp_ranking_goods_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_shp_ranking_goods_order` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `root_category_code` char(9) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '대카테고리 고유키(mm_gds_categories.code) : 전체 랭킹의 경우 null 값',
  `rank_range` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '랭킹 산정 범위(D: 일간, W: 주간, M: 월간)',
  `target_date` datetime NOT NULL COMMENT '랭킹 집계 기준일',
  `rank` int unsigned NOT NULL COMMENT '순위',
  `goods_id` bigint unsigned NOT NULL COMMENT '상품 고유키(mm_gds_items.id)',
  `ordered_count` int NOT NULL COMMENT '주문수량',
  `ordered_amount` bigint NOT NULL COMMENT '매출액(결제가 기준)',
  `change_type` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '전일->당일 기준 순위 변동타입(N: 신규진입, U: 상승, D: 하락, S: 변동없음)',
  `change_value` int DEFAULT NULL COMMENT '순위 변동값',
  `created_at` datetime NOT NULL COMMENT '집계 생성일',
  `updated_at` datetime DEFAULT NULL COMMENT '집계 수정일',
  `mall_id` bigint unsigned DEFAULT NULL COMMENT '대상 몰 코드(mm_shp_malls.id), null => 전체',
  `ranking_category_id` bigint unsigned DEFAULT NULL COMMENT '랭킹카테고리 번호',
  PRIMARY KEY (`id`),
  KEY `mm_shp_ranking_goods_order_target_date_index` (`target_date` DESC),
  KEY `mm_shp_ranking_goods_order_rank_index` (`rank`),
  KEY `mm_shp_ranking_goods_order_root_category_id_index` (`root_category_code`),
  KEY `mm_shp_ranking_goods_order_rank_range_index` (`rank_range`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='상품 판매량 랭킹 데이터 테이블';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_shp_ranking_goods_order`
--

LOCK TABLES `mm_shp_ranking_goods_order` WRITE;
/*!40000 ALTER TABLE `mm_shp_ranking_goods_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_shp_ranking_goods_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_shp_ranking_goods_view`
--

DROP TABLE IF EXISTS `mm_shp_ranking_goods_view`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_shp_ranking_goods_view` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `root_category_code` char(9) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '대카테고리 고유키(mm_gds_categories.code) : 전체 랭킹의 경우 null 값',
  `rank_range` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '랭킹 산정 범위(D: 일간, W: 주간, M: 월간)',
  `target_date` datetime NOT NULL COMMENT '랭킹 산정 범위(D: 일간, W: 주간, M: 월간)',
  `rank` int unsigned NOT NULL COMMENT '순위',
  `goods_id` bigint unsigned NOT NULL COMMENT '상품 고유키(mm_gds_items.id)',
  `viewed_count` bigint NOT NULL DEFAULT '0' COMMENT '조회수',
  `change_type` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '전일->당일 기준 순위 변동타입(N: 신규진입, U: 상승, D: 하락, S: 변동없음)',
  `change_value` int DEFAULT NULL COMMENT '순위 등락폭',
  `created_at` datetime NOT NULL COMMENT '집계 생성시간',
  `updated_at` datetime DEFAULT NULL COMMENT '집계 수정시간',
  `mall_id` bigint unsigned DEFAULT NULL COMMENT '대상 몰 코드(mm_shp_malls.id), null => 전체',
  `ranking_category_id` bigint unsigned DEFAULT NULL COMMENT '랭킹카테고리 번호',
  PRIMARY KEY (`id`),
  KEY `mm_shp_ranking_goods_view_target_date_index` (`target_date` DESC),
  KEY `mm_shp_ranking_goods_view_rank_index` (`rank`),
  KEY `ROOT_CATEGORY_CODE_INDEX` (`root_category_code`),
  KEY `RANK_RANGE_INDEX` (`rank_range`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='상품 조회수 랭킹 데이터 테이블';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_shp_ranking_goods_view`
--

LOCK TABLES `mm_shp_ranking_goods_view` WRITE;
/*!40000 ALTER TABLE `mm_shp_ranking_goods_view` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_shp_ranking_goods_view` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_shp_ranking_goods_wish`
--

DROP TABLE IF EXISTS `mm_shp_ranking_goods_wish`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_shp_ranking_goods_wish` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `root_category_code` char(9) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '대카테고리 고유키(mm_gds_categories.code) : 전체 랭킹의 경우 null 값',
  `rank_range` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '랭킹 산정 범위(D: 일간, W: 주간, M: 월간)',
  `target_date` datetime NOT NULL COMMENT '집계 기준일',
  `rank` int unsigned NOT NULL COMMENT '순위',
  `goods_id` bigint unsigned NOT NULL COMMENT '상품 고유키(mm_gds_items.id)',
  `wish_count` int NOT NULL DEFAULT '0' COMMENT '찜 된 횟수',
  `change_type` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '전일->당일 기준 순위 변동타입(N: 신규진입, U: 상승, D: 하락, S: 변동없음)',
  `change_value` int DEFAULT NULL,
  `created_at` datetime NOT NULL COMMENT '집계 생성시간',
  `updated_at` datetime DEFAULT NULL COMMENT '집계 수정시간',
  `mall_id` bigint unsigned DEFAULT NULL COMMENT '대상 몰 코드(mm_shp_malls.id), null => 전체',
  `ranking_category_id` bigint unsigned DEFAULT NULL COMMENT '랭킹카테고리 번호',
  PRIMARY KEY (`id`),
  KEY `mm_shp_ranking_goods_wish_target_date_index` (`target_date` DESC),
  KEY `mm_shp_ranking_goods_wish_rank_index` (`rank`),
  KEY `ROOT_CATEGORY_CODE_INDEX` (`root_category_code`),
  KEY `RANK_RANGE_INDEX` (`rank_range`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_shp_ranking_goods_wish`
--

LOCK TABLES `mm_shp_ranking_goods_wish` WRITE;
/*!40000 ALTER TABLE `mm_shp_ranking_goods_wish` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_shp_ranking_goods_wish` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_shp_release_status_by_sellers`
--

DROP TABLE IF EXISTS `mm_shp_release_status_by_sellers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_shp_release_status_by_sellers` (
  `seller_id` bigint unsigned NOT NULL COMMENT '셀러 고유키(mm_adm_sellers.id)',
  `year` int unsigned NOT NULL COMMENT '해당 연도',
  `month` tinyint unsigned NOT NULL COMMENT '해당월',
  `release_count` int unsigned NOT NULL COMMENT '지난달 출고량',
  `release_count_in_two_days` int unsigned NOT NULL COMMENT '지난달 2영업일 이내 출고량',
  `release_ratio_in_two_days` decimal(5,4) unsigned NOT NULL COMMENT '지난달 2영업일 내 출고율(소수점 5자리에서 반올림)',
  `aggregated_at` datetime NOT NULL COMMENT '데이터 집계생성일',
  UNIQUE KEY `mm_shp_release_status_by_sellers_unique` (`seller_id`,`year`,`month`),
  KEY `mm_shp_release_status_by_sellers_year_index` (`year`),
  KEY `mm_shp_release_status_by_sellers_month_index` (`month`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='셀러 출고현황에 대한 데이터 테이블';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_shp_release_status_by_sellers`
--

LOCK TABLES `mm_shp_release_status_by_sellers` WRITE;
/*!40000 ALTER TABLE `mm_shp_release_status_by_sellers` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_shp_release_status_by_sellers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_shp_review_template_details`
--

DROP TABLE IF EXISTS `mm_shp_review_template_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_shp_review_template_details` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '고유키',
  `template_id` bigint unsigned NOT NULL COMMENT '리뷰 템플릿 고유키(mm_shp_review_templates.id)',
  `label` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '하위분류명',
  `is_use` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '사용여부',
  `order_seq` int NOT NULL DEFAULT '0' COMMENT '정렬순서값',
  `created_at` datetime NOT NULL COMMENT '하위분류 생성일',
  `updated_at` datetime DEFAULT NULL COMMENT '하위분류 수정일',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='리뷰 템플릿 스키마(mm_shp_review_templates)의 하위분류 데이터';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_shp_review_template_details`
--

LOCK TABLES `mm_shp_review_template_details` WRITE;
/*!40000 ALTER TABLE `mm_shp_review_template_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_shp_review_template_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_shp_review_templates`
--

DROP TABLE IF EXISTS `mm_shp_review_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_shp_review_templates` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '고유키',
  `title` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '템플릿 제목(핏, 소재 등)',
  `is_use` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '사용여부',
  `order_seq` int NOT NULL DEFAULT '0' COMMENT '정렬순서값',
  `created_at` datetime NOT NULL COMMENT '템플릿 생성일',
  `updated_at` datetime DEFAULT NULL COMMENT '템플릿 수정일',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='리뷰에 사용하는 항목 템플릿(핏, 사이즈, 길이감 등)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_shp_review_templates`
--

LOCK TABLES `mm_shp_review_templates` WRITE;
/*!40000 ALTER TABLE `mm_shp_review_templates` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_shp_review_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_shp_seller_offdays`
--

DROP TABLE IF EXISTS `mm_shp_seller_offdays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_shp_seller_offdays` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `seller_id` bigint unsigned NOT NULL COMMENT '대상셀러번호',
  `message_for_shop` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '노출용 안내문구',
  `reason` tinyint unsigned NOT NULL COMMENT '휴무사유 enum@Shop/SellerOffdayReason',
  `reason_message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '휴무 상세사유',
  `offday_start_at` timestamp NOT NULL COMMENT '출고불가 시작일',
  `offday_end_at` timestamp NOT NULL COMMENT '출고불가 종료일',
  `will_release_at` timestamp NOT NULL COMMENT '출고 불가기간 주문건 발송예정일',
  `display_start_at` timestamp NOT NULL COMMENT '휴무안내 노출시작일',
  `display_end_at` timestamp NOT NULL COMMENT '휴무안내 노출종료일',
  `release_limit` timestamp NOT NULL COMMENT '출고 준수기한',
  `created_user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '등록관리자정보',
  `updated_user` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '수정관리자정보',
  `deleted_user` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '삭제관리자정보',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_shp_seller_offdays`
--

LOCK TABLES `mm_shp_seller_offdays` WRITE;
/*!40000 ALTER TABLE `mm_shp_seller_offdays` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_shp_seller_offdays` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_shp_shipping_centers`
--

DROP TABLE IF EXISTS `mm_shp_shipping_centers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_shp_shipping_centers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `middle_user_id` bigint unsigned NOT NULL COMMENT '중간관리자 id',
  `seller_id` bigint unsigned DEFAULT NULL COMMENT '셀러 id',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '출고/회수지 명칭',
  `partnershop_center_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '제휴사 배송센터 고유번호',
  `zip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '우편번호',
  `base_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '기본주소',
  `detail_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '상세주소',
  `tel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '연락처',
  `order_seq` int unsigned NOT NULL DEFAULT '0' COMMENT '정렬 순서값',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `rule_id` bigint unsigned NOT NULL COMMENT '배송정책 번호',
  `service_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '추적관리 서비스 계약번호 등 활용',
  `retrieve_zip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(회수시)우편번호',
  `retrieve_base_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(회수시)기본주소',
  `retrieve_detail_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(회수시)상세주소',
  `retrieve_tel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(회수시)연락처',
  `retrieve_service_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(회수시)추적관리 서비스 계약번호 등 활용',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_shp_shipping_centers`
--

LOCK TABLES `mm_shp_shipping_centers` WRITE;
/*!40000 ALTER TABLE `mm_shp_shipping_centers` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_shp_shipping_centers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_shp_shipping_rule_basic_by_sellers`
--

DROP TABLE IF EXISTS `mm_shp_shipping_rule_basic_by_sellers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_shp_shipping_rule_basic_by_sellers` (
  `seller_id` bigint unsigned NOT NULL COMMENT '셀러 id',
  `shipping_rule_id` bigint unsigned NOT NULL COMMENT '배송정책 id',
  UNIQUE KEY `mm_shp_shipping_rule_basic_by_sellers_seller_id_unique` (`seller_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_shp_shipping_rule_basic_by_sellers`
--

LOCK TABLES `mm_shp_shipping_rule_basic_by_sellers` WRITE;
/*!40000 ALTER TABLE `mm_shp_shipping_rule_basic_by_sellers` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_shp_shipping_rule_basic_by_sellers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_shp_shipping_rule_memos`
--

DROP TABLE IF EXISTS `mm_shp_shipping_rule_memos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_shp_shipping_rule_memos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '배송정책 메모 고유키',
  `shipping_rule_id` bigint unsigned NOT NULL COMMENT '배송정책 id(mm_shp_shipping_rules.id)',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'CS 메모',
  `created_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '등록자',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '등록일시',
  `deleted_at` datetime DEFAULT NULL COMMENT '삭제일시 (softDeletes)',
  PRIMARY KEY (`id`),
  KEY `mm_shp_shipping_rule_memos_shipping_rule_id_index` (`shipping_rule_id`),
  KEY `mm_shp_shipping_rule_memos_created_at_index` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_shp_shipping_rule_memos`
--

LOCK TABLES `mm_shp_shipping_rule_memos` WRITE;
/*!40000 ALTER TABLE `mm_shp_shipping_rule_memos` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_shp_shipping_rule_memos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_shp_shipping_rules`
--

DROP TABLE IF EXISTS `mm_shp_shipping_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_shp_shipping_rules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` char(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '배송정책코드 30000001001 조합 브랜드관리자코드(8자리) + 순차번호(3자리이상)',
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '배송정책명',
  `middle_user_id` bigint unsigned NOT NULL COMMENT '중간관리자 id',
  `seller_id` bigint unsigned DEFAULT NULL COMMENT '셀러 id',
  `partnershop_rule_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '제휴사 배송정책 고유번호',
  `shipping_type` tinyint unsigned NOT NULL DEFAULT '10' COMMENT '배송구분 (10:택배 30:주문제작 40:해외배송)',
  `average_global_shipping_term_from` int NOT NULL DEFAULT '0' COMMENT '해외배송 평균배송일 from',
  `average_global_shipping_term_to` int NOT NULL DEFAULT '0' COMMENT '해외배송 평균배송일 to',
  `custom_goods_shipping_term` int NOT NULL DEFAULT '0' COMMENT '주문제작 배송기간',
  `delivery_company_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '택배사 코드',
  `shipping_price_payment_type` tinyint unsigned NOT NULL DEFAULT '1' COMMENT '배송비 선결제정책 (0: 선택, 1:선불, 2:착불)',
  `is_charge_on_each` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '개별배송여부',
  `shipping_price_policy` tinyint unsigned NOT NULL DEFAULT '1' COMMENT '배송비 부과정책 (0:무료배송, 1:배송비고정, 2:주문금액별 조건부)',
  `shipping_price` int NOT NULL DEFAULT '0' COMMENT '배송비',
  `extra_shipping_price` int NOT NULL DEFAULT '0' COMMENT '도서산간 추가배송비',
  `retrieve_shipping_price` int NOT NULL DEFAULT '0' COMMENT '회수 배송비',
  `exchange_shipping_price` int NOT NULL DEFAULT '0' COMMENT '교환배송비',
  `conditional_free_from` int DEFAULT NULL COMMENT '배송비 조건부 부과일때 무료배송되는 금액조건',
  `today_exportable_time` tinyint DEFAULT NULL COMMENT '당일출고 가능 시간',
  `created_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '등록자',
  `updated_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '수정자',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '등록시간',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '수정시간',
  `deleted_at` datetime DEFAULT NULL COMMENT '삭제일시 (softDeletes)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mm_shp_shipping_rules_code_unique` (`code`),
  KEY `mm_shp_shipping_rules_selleruserid_index` (`seller_id`),
  KEY `mm_shp_shipping_rules_deletedat_index` (`deleted_at`),
  KEY `mm_shp_shipping_rules_middle_user_id_index` (`middle_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='배송정책 테이블';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_shp_shipping_rules`
--

LOCK TABLES `mm_shp_shipping_rules` WRITE;
/*!40000 ALTER TABLE `mm_shp_shipping_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_shp_shipping_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_sta_db_states`
--

DROP TABLE IF EXISTS `mm_sta_db_states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_sta_db_states` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `base_date` date NOT NULL COMMENT '기준일자',
  `statistics_code` int unsigned NOT NULL COMMENT '매출통계 분류',
  `goods_count` bigint NOT NULL,
  `display_goods_count` bigint NOT NULL,
  `not_display_goods_count` bigint NOT NULL,
  `soldout_goods_count` bigint NOT NULL,
  `seller_count` bigint NOT NULL,
  `brand_count` bigint NOT NULL,
  `middle_user_count` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mm_sta_db_states_base_date_index` (`base_date`),
  KEY `mm_sta_db_states_statistics_code_index` (`statistics_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_sta_db_states`
--

LOCK TABLES `mm_sta_db_states` WRITE;
/*!40000 ALTER TABLE `mm_sta_db_states` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_sta_db_states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_sta_delivered_days`
--

DROP TABLE IF EXISTS `mm_sta_delivered_days`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_sta_delivered_days` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `rule_id` bigint unsigned NOT NULL COMMENT '배송정책 고유번호',
  `seller_id` bigint DEFAULT NULL COMMENT '셀러 고유번호',
  `middle_user_id` bigint unsigned NOT NULL COMMENT '중간관리자 고유번호',
  `day` tinyint unsigned NOT NULL COMMENT '배송 소요 기간',
  `rate` decimal(5,4) unsigned NOT NULL COMMENT '배송 도착률',
  `is_display` int NOT NULL DEFAULT '0' COMMENT '배송완료 예상일 프론트 노출 여부',
  `delivered_count` int unsigned NOT NULL DEFAULT '0' COMMENT '배송 도착 개수',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mm_sta_delivered_days_rule_id_index` (`rule_id`),
  KEY `mm_sta_delivered_days_day_index` (`day`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_sta_delivered_days`
--

LOCK TABLES `mm_sta_delivered_days` WRITE;
/*!40000 ALTER TABLE `mm_sta_delivered_days` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_sta_delivered_days` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_sta_ep_goods_count_by_affiliates`
--

DROP TABLE IF EXISTS `mm_sta_ep_goods_count_by_affiliates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_sta_ep_goods_count_by_affiliates` (
  `category_code` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '카테고리 코드(mm_gds_categories.code)',
  `count` int unsigned NOT NULL COMMENT '배치연동된 상품 개수',
  `affiliate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '제휴사',
  `target_date` date NOT NULL COMMENT '집계 대상 일자',
  `target_hour` tinyint unsigned NOT NULL COMMENT '집계 대상 시간',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_sta_ep_goods_count_by_affiliates`
--

LOCK TABLES `mm_sta_ep_goods_count_by_affiliates` WRITE;
/*!40000 ALTER TABLE `mm_sta_ep_goods_count_by_affiliates` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_sta_ep_goods_count_by_affiliates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_sta_goals`
--

DROP TABLE IF EXISTS `mm_sta_goals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_sta_goals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '고유번호',
  `statistics_code` char(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '000' COMMENT '매출/통계용 분류',
  `goal_date` date NOT NULL COMMENT '목표 일자',
  `goal_amount` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '목표 금액',
  `deduct_profit_goal_amount` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '차감 이익 목표 금액',
  `created_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '등록자',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '증록일시',
  `updated_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '수정자',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '수정일시',
  `deleted_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '삭제자',
  `deleted_at` datetime DEFAULT NULL COMMENT '삭제일시',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mm_sta_goals_unique` (`statistics_code`,`goal_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='매출통계 관리>목표 등록';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_sta_goals`
--

LOCK TABLES `mm_sta_goals` WRITE;
/*!40000 ALTER TABLE `mm_sta_goals` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_sta_goals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_sta_member_by_grades`
--

DROP TABLE IF EXISTS `mm_sta_member_by_grades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_sta_member_by_grades` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '고유번호',
  `base_date` date NOT NULL COMMENT '기준일자 = 집계일자',
  `total_count` int NOT NULL DEFAULT '0' COMMENT '총 회원수',
  `level_1` int NOT NULL DEFAULT '0' COMMENT '해당등급의 회원수',
  `level_2` int NOT NULL DEFAULT '0' COMMENT '해당등급의 회원수',
  `level_3` int NOT NULL DEFAULT '0' COMMENT '해당등급의 회원수',
  `level_4` int NOT NULL DEFAULT '0' COMMENT '해당등급의 회원수',
  `level_5` int NOT NULL DEFAULT '0' COMMENT '해당등급의 회원수',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '생성일자',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '수정일자',
  `level_6` int NOT NULL DEFAULT '0',
  `level_7` int NOT NULL DEFAULT '0',
  `level_8` int NOT NULL DEFAULT '0',
  `level_9` int NOT NULL DEFAULT '0',
  `level_10` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mm_sta_member_by_grades_unique` (`base_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='회원 통계 > 등급별 월 회원수';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_sta_member_by_grades`
--

LOCK TABLES `mm_sta_member_by_grades` WRITE;
/*!40000 ALTER TABLE `mm_sta_member_by_grades` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_sta_member_by_grades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_sta_members`
--

DROP TABLE IF EXISTS `mm_sta_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_sta_members` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '고유번호',
  `base_date` date NOT NULL COMMENT '기준일자',
  `total_count` int NOT NULL DEFAULT '0' COMMENT '회원수',
  `join_self_count` int NOT NULL DEFAULT '0' COMMENT '자사 가입수',
  `join_naver_count` int NOT NULL DEFAULT '0' COMMENT '네이버 가입수',
  `join_apple_count` int NOT NULL DEFAULT '0' COMMENT '애플로그인 가입수',
  `join_facebook_count` int NOT NULL DEFAULT '0' COMMENT '페이스북 가입수',
  `join_kakao_count` int NOT NULL DEFAULT '0' COMMENT '카카오 가입수',
  `join_payco_count` int NOT NULL DEFAULT '0' COMMENT '페이코 가입수',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '생성일시',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '수정일시',
  `drop_count` int NOT NULL DEFAULT '0' COMMENT '탈퇴회원 수',
  `sleep_count` int NOT NULL DEFAULT '0' COMMENT '휴면회원 수',
  `cumulative_count` int NOT NULL DEFAULT '0' COMMENT '누적 회원 수',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mm_sta_members_unique` (`base_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='회원 통계 > 일별  집계';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_sta_members`
--

LOCK TABLES `mm_sta_members` WRITE;
/*!40000 ALTER TABLE `mm_sta_members` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_sta_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_sta_naver_cps`
--

DROP TABLE IF EXISTS `mm_sta_naver_cps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_sta_naver_cps` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `inflow_device` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '유입 디바이스',
  `inflow_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '유입 코드',
  `order_status` int unsigned NOT NULL COMMENT '최근(현재) 주문 상태코드',
  `order_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '대상 주문 번호',
  `order_item_id` bigint unsigned NOT NULL COMMENT '대상 주문 아이템 번호',
  `return_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '대상 반품 번호',
  `return_target_id` bigint unsigned DEFAULT NULL COMMENT '대상 반품 타겟 번호',
  `cancel_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '대상 반품 번호',
  `cancel_target_id` bigint unsigned DEFAULT NULL COMMENT '대상 반품 타겟 번호',
  `sell_price` int NOT NULL COMMENT '총 판매가',
  `sell_ea` int NOT NULL DEFAULT '0' COMMENT '판매 수량',
  `used_point_amount` int NOT NULL DEFAULT '0' COMMENT '총 사용 적립금',
  `total_mall_discounted_amount` int NOT NULL DEFAULT '0' COMMENT '총 본사 부담 할인액',
  `mall_base_discounted_amount` int NOT NULL DEFAULT '0' COMMENT '본사 부담 1차 할인액',
  `mall_night_discounted_amount` int NOT NULL DEFAULT '0' COMMENT '본사 부담 심야 할인액',
  `mall_immediately_discounted_amount` int NOT NULL DEFAULT '0' COMMENT '본사 부담 즉시 할인액',
  `mall_extra_download_coupon_discounted_amount` int NOT NULL DEFAULT '0' COMMENT '본사 부담 다운로드쿠폰 할인액',
  `mall_extra_timesale_coupon_discounted_amount` int NOT NULL DEFAULT '0' COMMENT '본사 부담 타임특가쿠폰 할인액',
  `mall_extra_ep_coupon_discounted_amount` int NOT NULL DEFAULT '0' COMMENT '본사 부담 EP쿠폰 할인액',
  `mall_extra_automatic_coupon_discounted_amount` int NOT NULL DEFAULT '0' COMMENT '본사 부담 자동쿠폰 할인액',
  `mall_affiliate_discounted_amount` int NOT NULL DEFAULT '0' COMMENT '본사 부담 제휴 할인액',
  `total_seller_discounted_amount` int NOT NULL DEFAULT '0' COMMENT '총 업체 부담 할인액',
  `seller_base_discounted_amount` int NOT NULL DEFAULT '0' COMMENT '업체 부담 1차 할인액',
  `seller_night_discounted_amount` int NOT NULL DEFAULT '0' COMMENT '업체 부담 심야 할인액',
  `seller_immediately_discounted_amount` int NOT NULL DEFAULT '0' COMMENT '업체 부담 즉시 할인액',
  `seller_extra_download_coupon_discounted_amount` int NOT NULL DEFAULT '0' COMMENT '업체 부담 다운로드쿠폰 할인액',
  `seller_extra_timesale_coupon_discounted_amount` int NOT NULL DEFAULT '0' COMMENT '업체 부담 타임특가쿠폰 할인액',
  `seller_extra_ep_coupon_discounted_amount` int NOT NULL DEFAULT '0' COMMENT '업체 부담 EP쿠폰 할인액',
  `seller_extra_automatic_coupon_discounted_amount` int NOT NULL DEFAULT '0' COMMENT '업체 부담 자동쿠폰 할인액',
  `seller_affiliate_discounted_amount` int NOT NULL DEFAULT '0' COMMENT '업체 부담 제휴 할인액',
  `aggregate_at` datetime DEFAULT NULL COMMENT '집계 대상 일자',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mm_sta_naver_cps_order_id_index` (`order_id`),
  KEY `mm_sta_naver_cps_order_item_id_index` (`order_item_id`),
  KEY `mm_sta_naver_cps_return_id_index` (`return_id`),
  KEY `mm_sta_naver_cps_return_target_id_index` (`return_target_id`),
  KEY `mm_sta_naver_cps_cancel_id_index` (`cancel_id`),
  KEY `mm_sta_naver_cps_cancel_target_id_index` (`cancel_target_id`),
  KEY `mm_sta_naver_cps_inflow_device_index` (`inflow_device`),
  KEY `mm_sta_naver_cps_inflow_code_index` (`inflow_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_sta_naver_cps`
--

LOCK TABLES `mm_sta_naver_cps` WRITE;
/*!40000 ALTER TABLE `mm_sta_naver_cps` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_sta_naver_cps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_sta_order_by_affiliates`
--

DROP TABLE IF EXISTS `mm_sta_order_by_affiliates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_sta_order_by_affiliates` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '주문상태',
  `affiliate_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '유입경로별 제휴사코드',
  `aggregate_date` date NOT NULL COMMENT '집계대상일자',
  `ordered_amount` int NOT NULL COMMENT '매출실적 집계금액',
  `ordered_count` int NOT NULL COMMENT '매출실적 주문수량',
  `ordered_item_count` int NOT NULL COMMENT '매출실적 주문 상품 품목수량',
  `ordered_margin_amount` int NOT NULL COMMENT '매출실적 주문 상품 마진액',
  `ordered_margin_rate` decimal(10,4) NOT NULL COMMENT '매출실적 주문 상품 마진율',
  `seller_id` bigint unsigned NOT NULL,
  `middle_user_id` bigint unsigned NOT NULL,
  `statistics_code` int NOT NULL,
  `created_at` datetime NOT NULL COMMENT '생성일시',
  `updated_at` datetime NOT NULL COMMENT '생성일시',
  `hour` tinyint unsigned NOT NULL COMMENT '대상 시간',
  `md_id` bigint unsigned NOT NULL COMMENT 'MD 번호',
  `deduct_profit_rate` decimal(5,4) NOT NULL DEFAULT '0.0000' COMMENT '차감 이익율 {(차감이익액/총액)*100} 소수점 둘째자리에서 절상',
  `deduct_profit_amount` int NOT NULL DEFAULT '0' COMMENT '차감 이익액 {마진액-(본사부담쿠폰액+제휴사 수수료액+PG 수수료액+적립금)}',
  PRIMARY KEY (`id`),
  KEY `STA_ORDER_AFFILIATE_LINK_ORDERTYPE_INDEX` (`order_type`),
  KEY `STA_ORDER_AFFILIATE_LINK_CODE_INDEX` (`affiliate_code`),
  KEY `STA_ORDER_AFFILIATE_LINK_AGGREGATEDATEHOUR_INDEX` (`aggregate_date`),
  KEY `STA_ORDER_AFFILIATE_LINK_SELLERUSERid_INDEX` (`seller_id`),
  KEY `STA_ORDER_AFFILIATE_LINK_MIDDLEUSERid_INDEX` (`middle_user_id`),
  KEY `STA_ORDER_AFFILIATE_LINK_STATISTICSDIVISION_INDEX` (`statistics_code`),
  KEY `STA_ORDER_AFFILIATE_LINK_CREATEDAT_INDEX` (`created_at`),
  KEY `STA_ORDER_AFFILIATE_LINK_UPDATEDAT_INDEX` (`updated_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_sta_order_by_affiliates`
--

LOCK TABLES `mm_sta_order_by_affiliates` WRITE;
/*!40000 ALTER TABLE `mm_sta_order_by_affiliates` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_sta_order_by_affiliates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_sta_order_by_payment_methods`
--

DROP TABLE IF EXISTS `mm_sta_order_by_payment_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_sta_order_by_payment_methods` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '고유번호',
  `order_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '주문상태',
  `aggregate_date` date NOT NULL COMMENT '집계대상일자',
  `middle_user_id` bigint unsigned NOT NULL COMMENT '중간관리자 고유번호 mm_adm_middle_users.id',
  `seller_id` bigint unsigned NOT NULL COMMENT '브랜드관리자 고유번호 mm_adm_sellers.id',
  `method` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '결제방법 (Card:카드, VirtualAccount:가상계좌, Mobile:휴대폰결제, Escrow:에스크로결제, API:제휴사주문, 기타 간편결제등)',
  `bank` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '무통장입금 은행',
  `card_info` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '카드결제 정보',
  `ordered_amount` int NOT NULL COMMENT '매출실적 집계금액',
  `ordered_count` int NOT NULL COMMENT '매출실적 주문수량',
  `ordered_ea` int NOT NULL COMMENT '매출실적 주문 상품 품목수량',
  `ordered_margin_amount` int NOT NULL COMMENT '매출실적 주문 상품 마진액',
  `ordered_margin_rate` decimal(10,4) NOT NULL COMMENT '매출실적 주문 상품 마진율',
  `statistics_code` char(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '매출통계별 분류코드',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '생성일시',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '수정일시',
  `md_id` bigint unsigned NOT NULL COMMENT 'MD 번호',
  PRIMARY KEY (`id`),
  KEY `mm_sta_order_by_payment_methods_order_type_index` (`order_type`),
  KEY `mm_sta_order_by_payment_methods_aggregate_date_index` (`aggregate_date`),
  KEY `mm_sta_order_by_payment_methods_middle_user_id_index` (`middle_user_id`),
  KEY `mm_sta_order_by_payment_methods_seller_id_index` (`seller_id`),
  KEY `mm_sta_order_by_payment_methods_method_index` (`method`),
  KEY `mm_sta_order_by_payment_methods_bank_index` (`bank`),
  KEY `mm_sta_order_by_payment_methods_card_info_index` (`card_info`),
  KEY `mm_sta_order_by_payment_methods_statistics_code_index` (`statistics_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_sta_order_by_payment_methods`
--

LOCK TABLES `mm_sta_order_by_payment_methods` WRITE;
/*!40000 ALTER TABLE `mm_sta_order_by_payment_methods` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_sta_order_by_payment_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_sta_order_by_sellers`
--

DROP TABLE IF EXISTS `mm_sta_order_by_sellers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_sta_order_by_sellers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '고유번호',
  `order_state` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '주문상태{집계,결제,취소,반품,품절}',
  `order_date` date NOT NULL COMMENT '주문일자',
  `middle_user_id` bigint unsigned NOT NULL COMMENT '중간관리자 고유번호 mm_adm_middle_users.id',
  `middle_user_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '중간관리자 명',
  `seller_id` bigint unsigned NOT NULL COMMENT '브랜드관리자 고유번호 mm_adm_sellers.id',
  `seller_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '브랜드관리자 명',
  `md_id` bigint unsigned NOT NULL COMMENT 'MD 고유번호 mm_adm_managers.id',
  `md_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'MD 명',
  `statistics_code` char(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '000' COMMENT '매출/통계용 분류의 유형 {laravel config:category.statistics_code}',
  `ordered_count` int NOT NULL DEFAULT '0' COMMENT '주문 수량',
  `ordered_amount` bigint NOT NULL DEFAULT '0' COMMENT '주문 총 판매금액',
  `payed_amount` bigint NOT NULL DEFAULT '0' COMMENT '주문 총 결제금액',
  `ordered_average_price` int NOT NULL DEFAULT '0' COMMENT '주문 평균액',
  `ordered_max_price` int NOT NULL DEFAULT '0' COMMENT '주문 최소액',
  `ordered_min_price` int NOT NULL DEFAULT '0' COMMENT '주문 최대액',
  `ordered_margin_amount` int NOT NULL DEFAULT '0' COMMENT '마진 {정상주문총액*(셀러마진율/100)}',
  `ordered_margin_rate` decimal(5,4) NOT NULL DEFAULT '0.0000' COMMENT '마진율 {(마진액/정상주문총액)*100} 소수점 둘쨰 자리에서 절상',
  `coupon_used_rate` decimal(5,4) NOT NULL DEFAULT '0.0000' COMMENT '쿠폰사용율 (자사) {총액 대비 쿠폰(제휴),쿠폰(기획)} 소수점 둘째 자리에서 반올림',
  `deduct_profit_amount` int NOT NULL DEFAULT '0' COMMENT '차감 이익액 {마진액-(본사부담쿠폰액+제휴사 수수료액+PG 수수료액+적립금)}',
  `deduct_profit_rate` decimal(5,4) NOT NULL DEFAULT '0.0000' COMMENT '차감 이익율 {(차감이익액/총액)*100} 소수점 둘째자리에서 절상',
  `ordered_customer_count` int NOT NULL DEFAULT '0' COMMENT '설정한 주문기간동안 상품을 구매한 고객 수 (중복제거)',
  `ordered_average_price_by_customer` int NOT NULL DEFAULT '0' COMMENT '객단가 (정상주문총액/고객 수) 고객이 1회 구매 시 결제하는 평균 금액',
  `ordered_goods_count` int NOT NULL DEFAULT '0' COMMENT '구매상품수 (중복으로 구매된 상품은 1개로 계산되어 노출)',
  `ordered_ea` int NOT NULL DEFAULT '0' COMMENT '총 구매수량',
  `price_range_0` int NOT NULL DEFAULT '0' COMMENT '주문금액대 0~9999',
  `price_range_1` int NOT NULL DEFAULT '0' COMMENT '주문금액대 10000~19999',
  `price_range_2` int NOT NULL DEFAULT '0' COMMENT '주문금액대 20000~29999',
  `price_range_3` int NOT NULL DEFAULT '0' COMMENT '주문금액대 30000~39999',
  `price_range_4` int NOT NULL DEFAULT '0' COMMENT '주문금액대 40000~49999',
  `price_range_5` int NOT NULL DEFAULT '0' COMMENT '주문금액대 50000~59999',
  `price_range_6` int NOT NULL DEFAULT '0' COMMENT '주문금액대 60000~69999',
  `price_range_7` int NOT NULL DEFAULT '0' COMMENT '주문금액대 70000~79999',
  `price_range_8` int NOT NULL DEFAULT '0' COMMENT '주문금액대 80000~89999',
  `price_range_9` int NOT NULL DEFAULT '0' COMMENT '주문금액대 90000~99999',
  `price_range_10` int NOT NULL DEFAULT '0' COMMENT '주문금액대 100000~149999',
  `price_range_else` int NOT NULL DEFAULT '0' COMMENT '주문금액대 150000이상',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '등록일',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '수정일',
  `statistics_code_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mall_base_coupon_discount_amount` bigint NOT NULL DEFAULT '0' COMMENT '몰부담 1차 쿠폰 할인액',
  `seller_base_coupon_discount_amount` bigint NOT NULL DEFAULT '0' COMMENT '셀러부담 1차 쿠폰 할인액',
  `mall_night_sale_discount_amount` bigint NOT NULL DEFAULT '0' COMMENT '몰부담 심야할인액',
  `seller_night_sale_discount_amount` bigint NOT NULL DEFAULT '0' COMMENT '셀러부담 심야할인액',
  `mall_ep_coupon_discount_amount` bigint NOT NULL DEFAULT '0' COMMENT '몰부담 EP할인액',
  `seller_ep_coupon_discount_amount` bigint NOT NULL DEFAULT '0' COMMENT '셀러부담 EP할인액',
  `mall_download_coupon_discount_amount` bigint NOT NULL DEFAULT '0' COMMENT '몰부담 다운로드 쿠폰할인액',
  `seller_download_coupon_discount_amount` bigint NOT NULL DEFAULT '0' COMMENT '셀러부담 다운로드 쿠폰할인액',
  `mall_autopublish_coupon_discount_amount` bigint NOT NULL DEFAULT '0' COMMENT '몰부담 자동발행 쿠폰할인액',
  `seller_autopublish_coupon_discount_amount` bigint NOT NULL DEFAULT '0' COMMENT '셀러부담 자동발행 쿠폰할인액',
  `mall_timesale_coupon_discount_amount` bigint NOT NULL DEFAULT '0' COMMENT '몰부담 타임딜 쿠폰할인액',
  `seller_timesale_coupon_discount_amount` bigint NOT NULL DEFAULT '0' COMMENT '셀러부담 타임딜 쿠폰할인액',
  `mall_immediately_sale_discount_amount` bigint NOT NULL DEFAULT '0' COMMENT '몰부담 즉시할인액',
  `seller_immediately_sale_discount_amount` bigint NOT NULL DEFAULT '0' COMMENT '셀러부담 즉시할인액',
  `api_coupon_sale_discount_amount` bigint NOT NULL DEFAULT '0' COMMENT 'API쿠폰',
  `pg_commission_amount` bigint NOT NULL DEFAULT '0' COMMENT '결제 수수료',
  `partnershop_commission_amount` bigint NOT NULL DEFAULT '0' COMMENT '제휴 수수료',
  `delivery_amount` bigint NOT NULL DEFAULT '0' COMMENT '물류비',
  `customer_delivery_amount` bigint NOT NULL DEFAULT '0' COMMENT '고객부담택배비',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mm_sta_order_by_sellers_unique` (`order_state`,`order_date`,`middle_user_id`,`seller_id`,`md_id`,`statistics_code`),
  KEY `mm_sta_order_by_sellers_id` (`md_id`,`statistics_code`,`ordered_count`,`ordered_amount`,`ordered_average_price`,`order_date`,`middle_user_id`,`seller_id`,`ordered_goods_count`),
  KEY `mm_sta_order_by_sellers_statisticsdivision_index` (`statistics_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='셀러별 주문 통계';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_sta_order_by_sellers`
--

LOCK TABLES `mm_sta_order_by_sellers` WRITE;
/*!40000 ALTER TABLE `mm_sta_order_by_sellers` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_sta_order_by_sellers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_sta_points`
--

DROP TABLE IF EXISTS `mm_sta_points`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_sta_points` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '고유번호',
  `base_date` date NOT NULL COMMENT '기준일자',
  `total_point` bigint NOT NULL DEFAULT '0' COMMENT '총계',
  `order_point` bigint NOT NULL DEFAULT '0' COMMENT '구매 적립 포인트',
  `delivery_delay_point` bigint NOT NULL DEFAULT '0' COMMENT '배송지연 보상 포인트',
  `sold_out_point` bigint NOT NULL DEFAULT '0' COMMENT '품절취소 보상 포인트',
  `review_point` bigint NOT NULL DEFAULT '0' COMMENT '상품평 적립금',
  `cs_point` bigint NOT NULL DEFAULT '0' COMMENT '수동 적립',
  `event_point` bigint NOT NULL DEFAULT '0' COMMENT '이벤트적립',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mm_sta_points_unique` (`base_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='회원 통계 > 적립금 일별 적립현황';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_sta_points`
--

LOCK TABLES `mm_sta_points` WRITE;
/*!40000 ALTER TABLE `mm_sta_points` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_sta_points` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_sta_seller_order_by_froms`
--

DROP TABLE IF EXISTS `mm_sta_seller_order_by_froms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_sta_seller_order_by_froms` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '고유번호',
  `middle_user_id` bigint unsigned NOT NULL COMMENT '일반관리자 고유번호',
  `seller_id` bigint unsigned NOT NULL COMMENT '브랜드관리자 고유번호 mm_adm_sellers.id',
  `md_id` bigint unsigned NOT NULL COMMENT 'MD 고유번호 mm_adm_managers.id',
  `aggregate_state` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '주문상태 결제,취소,반품',
  `statistics_code` char(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '000' COMMENT '매출/통계용 분류의 유형 {laravel config:category.statistics_code}',
  `order_date` date NOT NULL COMMENT '주문일자',
  `order_hour` tinyint NOT NULL DEFAULT '0' COMMENT '주문시간대 0 : 00시00분00초~59분59초까지',
  `order_from` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '주문 출처 표기 (self:자사몰, 그외 별도표기)',
  `ordered_amount` bigint NOT NULL DEFAULT '0' COMMENT '주문 총액',
  `ordered_count` int NOT NULL DEFAULT '0' COMMENT '주문 수량',
  `ordered_average_price` int NOT NULL DEFAULT '0' COMMENT '주문 평균액',
  `ordered_max_price` int NOT NULL DEFAULT '0' COMMENT '주문 최소액',
  `ordered_min_price` int NOT NULL DEFAULT '0' COMMENT '주문 최대액',
  `ordered_goods_count` int NOT NULL DEFAULT '0' COMMENT '구매상품수 (중복으로 구매된 상품은 1개로 계산되어 노출)',
  `ordered_customer_count` int NOT NULL DEFAULT '0' COMMENT '설정한 주문기간동안 상품을 구매한 고객 수 (중복제거)',
  `created_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '등록자',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '등록일시',
  `updated_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '수정자',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`id`),
  KEY `mm_sta_seller_order_by_froms_selleruserid_index` (`seller_id`),
  KEY `mm_sta_seller_order_by_froms_mdid_index` (`md_id`),
  KEY `mm_sta_seller_order_by_froms_aggregatestate_index` (`aggregate_state`),
  KEY `mm_sta_seller_order_by_froms_orderdatehour_index` (`order_date`,`order_hour`),
  KEY `mm_sta_seller_order_by_froms_orderfrom_index` (`order_from`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='셀러별 주문 통계>제휴사이트 주문금액\r\n일별 제휴사이트 주문금액';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_sta_seller_order_by_froms`
--

LOCK TABLES `mm_sta_seller_order_by_froms` WRITE;
/*!40000 ALTER TABLE `mm_sta_seller_order_by_froms` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_sta_seller_order_by_froms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_sta_seller_order_goods`
--

DROP TABLE IF EXISTS `mm_sta_seller_order_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_sta_seller_order_goods` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '고유번호',
  `order_date` date NOT NULL COMMENT '주문일자',
  `middle_user_id` bigint unsigned NOT NULL COMMENT '중간관리자 고유번호 mm_adm_middle_users.id',
  `seller_id` bigint unsigned NOT NULL COMMENT '브랜드관리자 고유번호 mm_adm_sellers.id',
  `md_id` bigint unsigned NOT NULL COMMENT 'MD 고유번호 mm_adm_managers.id',
  `statistics_code` char(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '000' COMMENT '매출/통계용 분류의 유형 {laravel config:category.statistics_code}',
  `goods_id` bigint unsigned NOT NULL COMMENT '상품 고유번호',
  `goods_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '상품명',
  `aggregate_count` int NOT NULL DEFAULT '0' COMMENT '주문 집계 수량',
  `aggregate_amount` int NOT NULL DEFAULT '0' COMMENT '주문 집계 총액',
  `payment_count` int NOT NULL DEFAULT '0' COMMENT '주문 결제 수량',
  `payment_amount` int NOT NULL DEFAULT '0' COMMENT '주문 결제 총액',
  `cancel_count` int NOT NULL DEFAULT '0' COMMENT '주문 취소 수량 (품절포함)',
  `cancel_amount` int NOT NULL DEFAULT '0' COMMENT '주문 취소 총액 (품절포함)',
  `soldout_count` int NOT NULL DEFAULT '0' COMMENT '주문 품절 수량',
  `soldout_amount` int NOT NULL DEFAULT '0' COMMENT '주문 품절 총액',
  `return_count` int NOT NULL DEFAULT '0' COMMENT '주문 반품 수량',
  `return_amount` int NOT NULL DEFAULT '0' COMMENT '주문 반품 총액',
  `ordered_margin_amount` int DEFAULT '0' COMMENT '마진금액',
  `ordered_margin_rate` decimal(5,4) DEFAULT '0.0000' COMMENT '마진율',
  `coupon_used_count` int NOT NULL DEFAULT '0' COMMENT '쿠폰사용수',
  `created_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '등록자',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '등록일시',
  `updated_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '수정자',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mm_sta_seller_order_goods_unique` (`order_date`,`middle_user_id`,`seller_id`,`md_id`,`statistics_code`,`goods_id`),
  KEY `mm_sta_seller_order_goods_id` (`md_id`,`statistics_code`,`aggregate_count`,`aggregate_amount`,`payment_amount`,`goods_id`,`order_date`,`middle_user_id`,`seller_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='셀러별 주문 통계>상품별 주문(지불완료)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_sta_seller_order_goods`
--

LOCK TABLES `mm_sta_seller_order_goods` WRITE;
/*!40000 ALTER TABLE `mm_sta_seller_order_goods` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_sta_seller_order_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_sta_statistics_codes`
--

DROP TABLE IF EXISTS `mm_sta_statistics_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_sta_statistics_codes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '코드',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '분류명',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mm_sta_statistics_codes_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_sta_statistics_codes`
--

LOCK TABLES `mm_sta_statistics_codes` WRITE;
/*!40000 ALTER TABLE `mm_sta_statistics_codes` DISABLE KEYS */;
INSERT INTO `mm_sta_statistics_codes` VALUES (1,'001','여성패션','2023-10-05 23:38:23','2023-10-05 23:38:23'),(2,'002','남성패션','2023-10-05 23:38:23','2023-10-05 23:38:23'),(3,'003','골프','2023-10-05 23:38:23','2023-10-05 23:38:23'),(4,'004','아웃도어','2023-10-05 23:38:23','2023-10-05 23:38:23'),(5,'005','스포츠','2023-10-05 23:38:23','2023-10-05 23:38:23'),(6,'006','캐주얼','2023-10-05 23:38:23','2023-10-05 23:38:23'),(7,'007','유아동','2023-10-05 23:38:23','2023-10-05 23:38:23'),(8,'008','언더웨어','2023-10-05 23:38:23','2023-10-05 23:38:23'),(9,'009','패션잡화','2023-10-05 23:38:23','2023-10-05 23:38:23'),(10,'010','리빙','2023-10-05 23:38:23','2023-10-05 23:38:23'),(11,'011','식품','2023-10-05 23:38:23','2023-10-05 23:38:23'),(12,'012','뷰티','2023-10-05 23:38:23','2023-10-05 23:38:23');
/*!40000 ALTER TABLE `mm_sta_statistics_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_stm_punch_cancel_by_soldouts`
--

DROP TABLE IF EXISTS `mm_stm_punch_cancel_by_soldouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_stm_punch_cancel_by_soldouts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `penalty_id` bigint unsigned NOT NULL COMMENT '대상 페널티 번호',
  `unit_id` bigint unsigned DEFAULT NULL COMMENT '대상 정산 번호',
  `seller_id` bigint unsigned NOT NULL COMMENT '대상 셀러 번호',
  `middle_user_id` bigint unsigned NOT NULL COMMENT '대상 중간관리자 번호',
  `order_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '대상 주문 번호',
  `order_item_id` bigint unsigned NOT NULL COMMENT '대상 주문 아이템 번호',
  `applied_rate` int unsigned NOT NULL COMMENT '적용률',
  `applied_amount` int NOT NULL COMMENT '적용액',
  `exempt_amount` int NOT NULL DEFAULT '0' COMMENT '면제금액',
  `punched_at` datetime NOT NULL COMMENT '정산 펀칭 시점',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mm_stm_punch_cancel_by_soldouts_penalty_id_index` (`penalty_id`),
  KEY `mm_stm_punch_cancel_by_soldouts_unit_id_index` (`unit_id`),
  KEY `mm_stm_punch_cancel_by_soldouts_seller_id_index` (`seller_id`),
  KEY `mm_stm_punch_cancel_by_soldouts_middle_user_id_index` (`middle_user_id`),
  KEY `mm_stm_punch_cancel_by_soldouts_order_id_index` (`order_id`),
  KEY `mm_stm_punch_cancel_by_soldouts_order_item_id_index` (`order_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_stm_punch_cancel_by_soldouts`
--

LOCK TABLES `mm_stm_punch_cancel_by_soldouts` WRITE;
/*!40000 ALTER TABLE `mm_stm_punch_cancel_by_soldouts` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_stm_punch_cancel_by_soldouts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_stm_punch_cancel_by_soldouts_correction_logs`
--

DROP TABLE IF EXISTS `mm_stm_punch_cancel_by_soldouts_correction_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_stm_punch_cancel_by_soldouts_correction_logs` (
  `punch_id` bigint unsigned NOT NULL COMMENT '대상 페널티 번호',
  `applied_amount` int NOT NULL COMMENT '적용액',
  `exempt_amount` int NOT NULL DEFAULT '0' COMMENT '면제금액',
  `corrected_user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `mm_stm_punch_cancel_by_soldouts_correction_logs_punch_id_index` (`punch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_stm_punch_cancel_by_soldouts_correction_logs`
--

LOCK TABLES `mm_stm_punch_cancel_by_soldouts_correction_logs` WRITE;
/*!40000 ALTER TABLE `mm_stm_punch_cancel_by_soldouts_correction_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_stm_punch_cancel_by_soldouts_correction_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_stm_punch_exchange_delays`
--

DROP TABLE IF EXISTS `mm_stm_punch_exchange_delays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_stm_punch_exchange_delays` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `penalty_id` bigint unsigned NOT NULL COMMENT '대상 페널티 번호',
  `unit_id` bigint unsigned DEFAULT NULL COMMENT '대상 정산 번호',
  `seller_id` bigint unsigned NOT NULL COMMENT '대상 셀러 번호',
  `middle_user_id` bigint unsigned NOT NULL COMMENT '대상 중간관리자 번호',
  `exchange_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '대상 교환 번호',
  `exchange_target_id` bigint unsigned NOT NULL COMMENT '대상 교환 타겟 번호',
  `applied_rate` int unsigned NOT NULL COMMENT '적용률',
  `applied_amount` int NOT NULL COMMENT '적용액',
  `exempt_amount` int NOT NULL DEFAULT '0' COMMENT '면제금액',
  `punched_at` datetime NOT NULL COMMENT '정산 펀칭 시점',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mm_stm_punch_exchange_delays_penalty_id_index` (`penalty_id`),
  KEY `mm_stm_punch_exchange_delays_unit_id_index` (`unit_id`),
  KEY `mm_stm_punch_exchange_delays_seller_id_index` (`seller_id`),
  KEY `mm_stm_punch_exchange_delays_middle_user_id_index` (`middle_user_id`),
  KEY `mm_stm_punch_exchange_delays_exchange_id_index` (`exchange_id`),
  KEY `mm_stm_punch_exchange_delays_exchange_target_id_index` (`exchange_target_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_stm_punch_exchange_delays`
--

LOCK TABLES `mm_stm_punch_exchange_delays` WRITE;
/*!40000 ALTER TABLE `mm_stm_punch_exchange_delays` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_stm_punch_exchange_delays` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_stm_punch_exchange_delays_correction_logs`
--

DROP TABLE IF EXISTS `mm_stm_punch_exchange_delays_correction_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_stm_punch_exchange_delays_correction_logs` (
  `punch_id` bigint unsigned NOT NULL COMMENT '대상 페널티 번호',
  `applied_amount` int NOT NULL COMMENT '적용액',
  `exempt_amount` int NOT NULL DEFAULT '0' COMMENT '면제금액',
  `corrected_user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `mm_stm_punch_exchange_delays_correction_logs_punch_id_index` (`punch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_stm_punch_exchange_delays_correction_logs`
--

LOCK TABLES `mm_stm_punch_exchange_delays_correction_logs` WRITE;
/*!40000 ALTER TABLE `mm_stm_punch_exchange_delays_correction_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_stm_punch_exchange_delays_correction_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_stm_punch_fake_releases`
--

DROP TABLE IF EXISTS `mm_stm_punch_fake_releases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_stm_punch_fake_releases` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `penalty_id` bigint unsigned NOT NULL COMMENT '대상 페널티 번호',
  `penalty_objection_id` bigint unsigned DEFAULT NULL COMMENT '이의제기 고유 번호',
  `unit_id` bigint unsigned DEFAULT NULL COMMENT '대상 정산 번호',
  `seller_id` bigint unsigned NOT NULL COMMENT '대상 셀러 번호',
  `middle_user_id` bigint unsigned NOT NULL COMMENT '대상 중간관리자 번호',
  `order_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '대상 주문 번호',
  `applied_amount` int NOT NULL COMMENT '적용액',
  `exempt_amount` int NOT NULL DEFAULT '0' COMMENT '면제금액',
  `punched_at` datetime NOT NULL COMMENT '정산 펀칭 시점',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mm_stm_punch_fake_releases_penalty_id_index` (`penalty_id`),
  KEY `mm_stm_punch_fake_releases_unit_id_index` (`unit_id`),
  KEY `mm_stm_punch_fake_releases_seller_id_index` (`seller_id`),
  KEY `mm_stm_punch_fake_releases_middle_user_id_index` (`middle_user_id`),
  KEY `mm_stm_punch_fake_releases_order_id_index` (`order_id`),
  KEY `mm_stm_punch_fake_releases_penalty_objection_id_index` (`penalty_objection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_stm_punch_fake_releases`
--

LOCK TABLES `mm_stm_punch_fake_releases` WRITE;
/*!40000 ALTER TABLE `mm_stm_punch_fake_releases` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_stm_punch_fake_releases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_stm_punch_fake_releases_correction_logs`
--

DROP TABLE IF EXISTS `mm_stm_punch_fake_releases_correction_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_stm_punch_fake_releases_correction_logs` (
  `punch_id` bigint unsigned NOT NULL COMMENT '대상 페널티 번호',
  `applied_amount` int NOT NULL COMMENT '적용액',
  `exempt_amount` int NOT NULL DEFAULT '0' COMMENT '면제금액',
  `corrected_user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `mm_stm_punch_fake_releases_correction_logs_punch_id_index` (`punch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_stm_punch_fake_releases_correction_logs`
--

LOCK TABLES `mm_stm_punch_fake_releases_correction_logs` WRITE;
/*!40000 ALTER TABLE `mm_stm_punch_fake_releases_correction_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_stm_punch_fake_releases_correction_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_stm_punch_receipt_delay_correction_logs`
--

DROP TABLE IF EXISTS `mm_stm_punch_receipt_delay_correction_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_stm_punch_receipt_delay_correction_logs` (
  `punch_id` bigint unsigned NOT NULL COMMENT '대상 페널티 번호',
  `applied_amount` int NOT NULL COMMENT '적용액',
  `exempt_amount` int NOT NULL DEFAULT '0' COMMENT '면제금액',
  `corrected_user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `mm_stm_punch_receipt_delay_correction_logs_punch_id_index` (`punch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_stm_punch_receipt_delay_correction_logs`
--

LOCK TABLES `mm_stm_punch_receipt_delay_correction_logs` WRITE;
/*!40000 ALTER TABLE `mm_stm_punch_receipt_delay_correction_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_stm_punch_receipt_delay_correction_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_stm_punch_receipt_delays`
--

DROP TABLE IF EXISTS `mm_stm_punch_receipt_delays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_stm_punch_receipt_delays` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `penalty_id` bigint unsigned NOT NULL COMMENT '대상 페널티 번호',
  `unit_id` bigint unsigned DEFAULT NULL COMMENT '대상 정산 번호',
  `seller_id` bigint unsigned NOT NULL COMMENT '대상 셀러 번호',
  `middle_user_id` bigint unsigned NOT NULL COMMENT '대상 중간관리자 번호',
  `order_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '대상 주문 번호',
  `order_item_id` bigint unsigned NOT NULL COMMENT '대상 주문 아이템 번호',
  `applied_rate` int unsigned NOT NULL COMMENT '적용률',
  `applied_amount` int NOT NULL COMMENT '적용액',
  `exempt_amount` int NOT NULL DEFAULT '0' COMMENT '면제금액',
  `punched_at` datetime NOT NULL COMMENT '정산 펀칭 시점',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mm_stm_punch_receipt_delays_penalty_id_index` (`penalty_id`),
  KEY `mm_stm_punch_receipt_delays_unit_id_index` (`unit_id`),
  KEY `mm_stm_punch_receipt_delays_seller_id_index` (`seller_id`),
  KEY `mm_stm_punch_receipt_delays_middle_user_id_index` (`middle_user_id`),
  KEY `mm_stm_punch_receipt_delays_order_id_index` (`order_id`),
  KEY `mm_stm_punch_receipt_delays_order_item_id_index` (`order_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_stm_punch_receipt_delays`
--

LOCK TABLES `mm_stm_punch_receipt_delays` WRITE;
/*!40000 ALTER TABLE `mm_stm_punch_receipt_delays` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_stm_punch_receipt_delays` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_stm_punch_release_delays`
--

DROP TABLE IF EXISTS `mm_stm_punch_release_delays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_stm_punch_release_delays` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `penalty_id` bigint unsigned NOT NULL COMMENT '대상 페널티 번호',
  `unit_id` bigint unsigned DEFAULT NULL COMMENT '대상 정산 번호',
  `seller_id` bigint unsigned NOT NULL COMMENT '대상 셀러 번호',
  `middle_user_id` bigint unsigned NOT NULL COMMENT '대상 중간관리자 번호',
  `order_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '대상 주문 번호',
  `order_item_id` bigint unsigned NOT NULL COMMENT '대상 주문 아이템 번호',
  `applied_rate` int unsigned NOT NULL COMMENT '적용률',
  `applied_amount` int NOT NULL COMMENT '적용액',
  `exempt_amount` int NOT NULL DEFAULT '0' COMMENT '면제금액',
  `punched_at` datetime NOT NULL COMMENT '정산 펀칭 시점',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mm_stm_punch_release_delays_penalty_id_index` (`penalty_id`),
  KEY `mm_stm_punch_release_delays_unit_id_index` (`unit_id`),
  KEY `mm_stm_punch_release_delays_seller_id_index` (`seller_id`),
  KEY `mm_stm_punch_release_delays_middle_user_id_index` (`middle_user_id`),
  KEY `mm_stm_punch_release_delays_order_id_index` (`order_id`),
  KEY `mm_stm_punch_release_delays_order_item_id_index` (`order_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_stm_punch_release_delays`
--

LOCK TABLES `mm_stm_punch_release_delays` WRITE;
/*!40000 ALTER TABLE `mm_stm_punch_release_delays` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_stm_punch_release_delays` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_stm_punch_release_delays_correction_logs`
--

DROP TABLE IF EXISTS `mm_stm_punch_release_delays_correction_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_stm_punch_release_delays_correction_logs` (
  `punch_id` bigint unsigned NOT NULL COMMENT '대상 페널티 번호',
  `applied_amount` int NOT NULL COMMENT '적용액',
  `exempt_amount` int NOT NULL DEFAULT '0' COMMENT '면제금액',
  `corrected_user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `mm_stm_punch_release_delays_correction_logs_punch_id_index` (`punch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_stm_punch_release_delays_correction_logs`
--

LOCK TABLES `mm_stm_punch_release_delays_correction_logs` WRITE;
/*!40000 ALTER TABLE `mm_stm_punch_release_delays_correction_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_stm_punch_release_delays_correction_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_stm_punch_return_delays`
--

DROP TABLE IF EXISTS `mm_stm_punch_return_delays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_stm_punch_return_delays` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `penalty_id` bigint unsigned NOT NULL COMMENT '대상 페널티 번호',
  `unit_id` bigint unsigned DEFAULT NULL COMMENT '대상 정산 번호',
  `seller_id` bigint unsigned NOT NULL COMMENT '대상 셀러 번호',
  `middle_user_id` bigint unsigned NOT NULL COMMENT '대상 중간관리자 번호',
  `return_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '대상 반품 번호',
  `return_target_id` bigint unsigned NOT NULL COMMENT '대상 반품 타겟 번호',
  `applied_rate` int unsigned NOT NULL COMMENT '적용률',
  `applied_amount` int NOT NULL COMMENT '적용액',
  `exempt_amount` int NOT NULL DEFAULT '0' COMMENT '면제금액',
  `punched_at` datetime NOT NULL COMMENT '정산 펀칭 시점',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mm_stm_punch_return_delays_penalty_id_index` (`penalty_id`),
  KEY `mm_stm_punch_return_delays_unit_id_index` (`unit_id`),
  KEY `mm_stm_punch_return_delays_seller_id_index` (`seller_id`),
  KEY `mm_stm_punch_return_delays_middle_user_id_index` (`middle_user_id`),
  KEY `mm_stm_punch_return_delays_return_id_index` (`return_id`),
  KEY `mm_stm_punch_return_delays_return_target_id_index` (`return_target_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_stm_punch_return_delays`
--

LOCK TABLES `mm_stm_punch_return_delays` WRITE;
/*!40000 ALTER TABLE `mm_stm_punch_return_delays` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_stm_punch_return_delays` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_stm_punch_return_delays_correction_logs`
--

DROP TABLE IF EXISTS `mm_stm_punch_return_delays_correction_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_stm_punch_return_delays_correction_logs` (
  `punch_id` bigint unsigned NOT NULL COMMENT '대상 페널티 번호',
  `applied_amount` int NOT NULL COMMENT '적용액',
  `exempt_amount` int NOT NULL DEFAULT '0' COMMENT '면제금액',
  `corrected_user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `mm_stm_punch_return_delays_correction_logs_punch_id_index` (`punch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_stm_punch_return_delays_correction_logs`
--

LOCK TABLES `mm_stm_punch_return_delays_correction_logs` WRITE;
/*!40000 ALTER TABLE `mm_stm_punch_return_delays_correction_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_stm_punch_return_delays_correction_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_stm_punch_selling_correction_logs`
--

DROP TABLE IF EXISTS `mm_stm_punch_selling_correction_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_stm_punch_selling_correction_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `punch_selling_id` bigint unsigned NOT NULL COMMENT '대상 판매분 펀칭 번호',
  `margin` decimal(5,4) NOT NULL,
  `margin_amount` int NOT NULL,
  `margin_except_amount` int NOT NULL DEFAULT '0' COMMENT '마진 제외 금액(판매가 - 마진액)',
  `total_mall_discounted_amount` int NOT NULL DEFAULT '0' COMMENT '본사 총 부담 할인액',
  `mall_base_discounted_amount` int NOT NULL DEFAULT '0' COMMENT '본사 부담 1차 할인액',
  `mall_night_discounted_amount` int NOT NULL DEFAULT '0' COMMENT '본사 부담 심야 할인액',
  `mall_immediately_discounted_amount` int NOT NULL DEFAULT '0' COMMENT '본사 부담 즉시 할인액',
  `mall_extra_download_coupon_discounted_amount` int NOT NULL DEFAULT '0' COMMENT '본사 부담 일반 상품 쿠폰 할인액',
  `mall_extra_timesale_coupon_discounted_amount` int NOT NULL DEFAULT '0' COMMENT '본사 부담 타임 특가 쿠폰 할인액',
  `mall_extra_ep_discount_coupon_amount` int NOT NULL DEFAULT '0' COMMENT '본사 부담 EP 쿠폰 할인액',
  `mall_extra_automatic_coupon_discounted_amount` int NOT NULL DEFAULT '0' COMMENT '본사 부담 자동발행 쿠폰',
  `mall_affiliate_discounted_amount` int NOT NULL DEFAULT '0' COMMENT '본사 부담 제휴 할인액',
  `total_seller_discounted_amount` int NOT NULL DEFAULT '0' COMMENT '판매자 총 부담 할인액',
  `seller_base_discounted_amount` int NOT NULL DEFAULT '0' COMMENT '판매자 부담 1차 할인액',
  `seller_night_discounted_amount` int NOT NULL DEFAULT '0' COMMENT '판매자 부담 심야 할인액',
  `seller_immediately_discounted_amount` int NOT NULL DEFAULT '0' COMMENT '판매자 부담 즉시 할인액',
  `seller_extra_download_coupon_discounted_amount` int NOT NULL DEFAULT '0' COMMENT '판매자 부담 일반 상품 쿠폰 할인액',
  `seller_extra_timesale_coupon_discounted_amount` int NOT NULL DEFAULT '0' COMMENT '판매자 부담 타임 특가 쿠폰 할인액',
  `seller_extra_ep_discount_coupon_amount` int NOT NULL DEFAULT '0' COMMENT '판매자 부담 EP 쿠폰 할인액',
  `seller_extra_automatic_coupon_discounted_amount` int NOT NULL DEFAULT '0' COMMENT '판매자 부담 자동발행 쿠폰',
  `seller_affiliate_discounted_amount` int NOT NULL DEFAULT '0' COMMENT '판매자 부담 제휴 할인액',
  `fee_amount` int NOT NULL DEFAULT '0' COMMENT '판매 수수료(마진액 - 총 본사 부담 할인액)',
  `supply_price` int NOT NULL DEFAULT '0' COMMENT '공급가액 (판매수수료 / 11 * 10)',
  `tax_amount` int NOT NULL DEFAULT '0' COMMENT '세액  (판매수수료 / 11 * 1)',
  `corrected_user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '보정 관리자',
  `corrected_ip` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '보정 IP',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mm_stm_punch_selling_correction_logs_punch_selling_id_index` (`punch_selling_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_stm_punch_selling_correction_logs`
--

LOCK TABLES `mm_stm_punch_selling_correction_logs` WRITE;
/*!40000 ALTER TABLE `mm_stm_punch_selling_correction_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_stm_punch_selling_correction_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_stm_punch_selling_correction_logs_by_bundle`
--

DROP TABLE IF EXISTS `mm_stm_punch_selling_correction_logs_by_bundle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_stm_punch_selling_correction_logs_by_bundle` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` bigint unsigned DEFAULT NULL COMMENT '대상 상품 번호',
  `seller_id` bigint unsigned DEFAULT NULL COMMENT '대상 셀러 번호',
  `target_type` tinyint unsigned NOT NULL COMMENT '보정 대상 타입 enum@Settlement/SellingBundleCorrectedTargetType',
  `target_from_date` datetime NOT NULL COMMENT '적용 시작일시',
  `target_to_date` datetime NOT NULL COMMENT '적용 종료일시',
  `target_for` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '보정 데이터 영역 unconfirmed: 마감 전, all: 전체',
  `margin` decimal(5,4) DEFAULT NULL COMMENT '마진',
  `mall_base_discounted_rate` decimal(5,4) DEFAULT NULL COMMENT '본사 부담 1차 할인률',
  `mall_extra_download_coupon_discounted_rate` decimal(5,4) DEFAULT NULL COMMENT '본사 부담 다운로드쿠폰 할인률',
  `seller_base_discounted_rate` decimal(5,4) DEFAULT NULL COMMENT '업체 부담 1차 할인률',
  `seller_extra_download_coupon_discounted_rate` decimal(5,4) DEFAULT NULL COMMENT '업체 부담 다운로드쿠폰 할인률',
  `corrected_user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '보정자',
  `corrected_ip` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '보정 IP',
  `department_id` bigint unsigned DEFAULT NULL COMMENT '담당 부서 고유번호',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mm_stm_punch_selling_correction_logs_by_bundle_goods_id_index` (`goods_id`),
  KEY `mm_stm_punch_selling_correction_logs_by_bundle_seller_id_index` (`seller_id`),
  KEY `mm_stm_punch_selling_correction_logs_by_bundle_target_type_index` (`target_type`),
  KEY `mm_stm_punch_selling_correction_logs_by_bundle_target_for_index` (`target_for`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_stm_punch_selling_correction_logs_by_bundle`
--

LOCK TABLES `mm_stm_punch_selling_correction_logs_by_bundle` WRITE;
/*!40000 ALTER TABLE `mm_stm_punch_selling_correction_logs_by_bundle` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_stm_punch_selling_correction_logs_by_bundle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_stm_punch_sellings`
--

DROP TABLE IF EXISTS `mm_stm_punch_sellings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_stm_punch_sellings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `punch_type` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '정산 펀칭 유형 enum@Settlement/SellingPunchType',
  `unit_id` bigint unsigned DEFAULT NULL COMMENT '대상 정산 번호',
  `seller_id` bigint unsigned NOT NULL COMMENT '대상 셀러 번호',
  `middle_user_id` bigint unsigned NOT NULL COMMENT '대상 중간관리자 번호',
  `order_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '대상 주문 번호',
  `order_item_id` bigint unsigned NOT NULL COMMENT '대상 주문 아이템 번호',
  `return_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '대상 반품 번호',
  `return_target_id` bigint unsigned DEFAULT NULL COMMENT '대상 반품 타겟 번호',
  `is_temp_confirmed` tinyint(1) NOT NULL DEFAULT '0' COMMENT '임시 마감 여부',
  `is_confirmed` tinyint(1) NOT NULL DEFAULT '0' COMMENT '마감 확정 여부',
  `is_auto_confirmed` tinyint(1) NOT NULL DEFAULT '0' COMMENT '자동 마감 확정 여부',
  `sell_price` int NOT NULL COMMENT '총 판매가',
  `sell_ea` int NOT NULL DEFAULT '0' COMMENT '판매 수량',
  `margin` decimal(5,4) NOT NULL COMMENT '마진',
  `margin_amount` int NOT NULL COMMENT '총 마진 금액',
  `margin_except_amount` int NOT NULL DEFAULT '0' COMMENT '마진 제외 금액(판매가 - 마진액)',
  `sell_price_tax` int NOT NULL DEFAULT '0' COMMENT '총 과세 금액',
  `sell_price_taxfree` int NOT NULL DEFAULT '0' COMMENT '총 면세 금액',
  `used_point_amount` int NOT NULL DEFAULT '0' COMMENT '총 사용 적립금',
  `total_mall_discounted_amount` int NOT NULL DEFAULT '0' COMMENT '총 본사 부담 할인액',
  `mall_base_discounted_amount` int NOT NULL DEFAULT '0' COMMENT '본사 부담 1차 할인액',
  `mall_night_discounted_amount` int NOT NULL DEFAULT '0' COMMENT '본사 부담 심야 할인액',
  `mall_immediately_discounted_amount` int NOT NULL DEFAULT '0' COMMENT '본사 부담 즉시 할인액',
  `mall_extra_download_coupon_discounted_amount` int NOT NULL DEFAULT '0' COMMENT '본사 부담 다운로드쿠폰 할인액',
  `mall_extra_timesale_coupon_discounted_amount` int NOT NULL DEFAULT '0' COMMENT '본사 부담 타임특가쿠폰 할인액',
  `mall_extra_ep_coupon_discounted_amount` int NOT NULL DEFAULT '0' COMMENT '본사 부담 EP쿠폰 할인액',
  `mall_extra_automatic_coupon_discounted_amount` int NOT NULL DEFAULT '0' COMMENT '본사 부담 자동쿠폰 할인액',
  `mall_affiliate_discounted_amount` int NOT NULL DEFAULT '0' COMMENT '본사 부담 제휴 할인액',
  `total_seller_discounted_amount` int NOT NULL DEFAULT '0' COMMENT '총 업체 부담 할인액',
  `seller_base_discounted_amount` int NOT NULL DEFAULT '0' COMMENT '업체 부담 1차 할인액',
  `seller_night_discounted_amount` int NOT NULL DEFAULT '0' COMMENT '업체 부담 심야 할인액',
  `seller_immediately_discounted_amount` int NOT NULL DEFAULT '0' COMMENT '업체 부담 즉시 할인액',
  `seller_extra_download_coupon_discounted_amount` int NOT NULL DEFAULT '0' COMMENT '업체 부담 다운로드쿠폰 할인액',
  `seller_extra_timesale_coupon_discounted_amount` int NOT NULL DEFAULT '0' COMMENT '업체 부담 타임특가쿠폰 할인액',
  `seller_extra_ep_coupon_discounted_amount` int NOT NULL DEFAULT '0' COMMENT '업체 부담 EP쿠폰 할인액',
  `seller_extra_automatic_coupon_discounted_amount` int NOT NULL DEFAULT '0' COMMENT '업체 부담 자동쿠폰 할인액',
  `seller_affiliate_discounted_amount` int NOT NULL DEFAULT '0' COMMENT '업체 부담 제휴 할인액',
  `fee_amount` int NOT NULL DEFAULT '0' COMMENT '판매 수수료(마진액 - 총 본사 부담 할인액)',
  `supply_price` int NOT NULL COMMENT '공급가액 (판매수수료 / 11 * 10)',
  `tax_amount` int NOT NULL COMMENT '세액  (판매수수료 / 11 * 1)',
  `punched_at` datetime NOT NULL COMMENT '정산 펀칭 시점',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mm_stm_punch_sellings_punch_type_index` (`punch_type`),
  KEY `mm_stm_punch_sellings_unit_id_index` (`unit_id`),
  KEY `mm_stm_punch_sellings_seller_id_index` (`seller_id`),
  KEY `mm_stm_punch_sellings_middle_user_id_index` (`middle_user_id`),
  KEY `mm_stm_punch_sellings_order_id_index` (`order_id`),
  KEY `mm_stm_punch_sellings_order_item_id_index` (`order_item_id`),
  KEY `mm_stm_punch_sellings_return_id_index` (`return_id`),
  KEY `mm_stm_punch_sellings_return_target_id_index` (`return_target_id`),
  KEY `mm_stm_punch_sellings_is_temp_confirmed_index` (`is_temp_confirmed`),
  KEY `mm_stm_punch_sellings_is_confirmed_index` (`is_confirmed`),
  KEY `mm_stm_punch_sellings_is_auto_confirmed_index` (`is_auto_confirmed`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_stm_punch_sellings`
--

LOCK TABLES `mm_stm_punch_sellings` WRITE;
/*!40000 ALTER TABLE `mm_stm_punch_sellings` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_stm_punch_sellings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_stm_punch_shipping_price_correction_logs`
--

DROP TABLE IF EXISTS `mm_stm_punch_shipping_price_correction_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_stm_punch_shipping_price_correction_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `punch_shipping_price_id` bigint unsigned NOT NULL COMMENT '대상 배송비 펀칭 번호',
  `corrected_before_price` int NOT NULL COMMENT '보정 전 금액',
  `corrected_price` int NOT NULL COMMENT '보정 금액',
  `corrected_user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '보정 관리자',
  `corrected_ip` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '보정 IP',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `punch_shipping_price_id_index` (`punch_shipping_price_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_stm_punch_shipping_price_correction_logs`
--

LOCK TABLES `mm_stm_punch_shipping_price_correction_logs` WRITE;
/*!40000 ALTER TABLE `mm_stm_punch_shipping_price_correction_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_stm_punch_shipping_price_correction_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_stm_punch_shipping_prices`
--

DROP TABLE IF EXISTS `mm_stm_punch_shipping_prices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_stm_punch_shipping_prices` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `punch_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '배송비 정산타입 enum@Settlement/ShippingPricePunchType',
  `unit_id` bigint unsigned DEFAULT NULL COMMENT '대상 정산 번호',
  `seller_id` bigint unsigned NOT NULL COMMENT '대상 셀러 번호',
  `middle_user_id` bigint unsigned NOT NULL COMMENT '대상 중간관리자 번호',
  `order_item_id` bigint unsigned DEFAULT NULL COMMENT '주문 아이템 고유번호(mm_ord_items.id)',
  `order_item_line` int DEFAULT NULL COMMENT '주문 아이템 순번(mm_ord_items.line)',
  `pack_id` bigint unsigned NOT NULL COMMENT '대상 포장 번호',
  `retrieve_id` bigint unsigned DEFAULT NULL COMMENT '대상 회수 번호',
  `shipping_price` int NOT NULL COMMENT '배송비',
  `punched_at` datetime NOT NULL COMMENT '정산 펀칭 시점',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mm_stm_punch_shipping_prices_punch_type_index` (`punch_type`),
  KEY `mm_stm_punch_shipping_prices_unit_id_index` (`unit_id`),
  KEY `mm_stm_punch_shipping_prices_seller_id_index` (`seller_id`),
  KEY `mm_stm_punch_shipping_prices_middle_user_id_index` (`middle_user_id`),
  KEY `mm_stm_punch_shipping_prices_order_item_id_index` (`order_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_stm_punch_shipping_prices`
--

LOCK TABLES `mm_stm_punch_shipping_prices` WRITE;
/*!40000 ALTER TABLE `mm_stm_punch_shipping_prices` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_stm_punch_shipping_prices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_stm_unit_tax_report_by_days`
--

DROP TABLE IF EXISTS `mm_stm_unit_tax_report_by_days`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_stm_unit_tax_report_by_days` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `unit_id` bigint unsigned NOT NULL COMMENT '정산 단위 고유번호',
  `middle_user_id` bigint unsigned NOT NULL COMMENT '중간 관리자 고유번호',
  `seller_id` bigint unsigned NOT NULL COMMENT '셀러 고유번호',
  `paid_amount` bigint NOT NULL COMMENT '실결제 금액',
  `paid_tax_amount` bigint NOT NULL COMMENT '실결제 과세 금액',
  `paid_tax_free_amount` bigint NOT NULL COMMENT '실결제 면세 금액',
  `cash_receipt_amount` bigint NOT NULL COMMENT '현금영수증 처리 금액',
  `cash_receipt_amount_by_income_deduction` bigint NOT NULL COMMENT '현금영수증 소득공제',
  `cash_receipt_amount_by_proof_of_expenditure` bigint NOT NULL COMMENT '현금영수증 지출증빙',
  `used_point_amount` bigint NOT NULL COMMENT '사용 적립금',
  `report_date` date NOT NULL COMMENT '내역(등록) 일자',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mm_stm_unit_tax_report_by_days_unit_id_index` (`unit_id`),
  KEY `mm_stm_unit_tax_report_by_days_middle_user_id_index` (`middle_user_id`),
  KEY `mm_stm_unit_tax_report_by_days_seller_id_index` (`seller_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_stm_unit_tax_report_by_days`
--

LOCK TABLES `mm_stm_unit_tax_report_by_days` WRITE;
/*!40000 ALTER TABLE `mm_stm_unit_tax_report_by_days` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_stm_unit_tax_report_by_days` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_stm_unit_tax_reports`
--

DROP TABLE IF EXISTS `mm_stm_unit_tax_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_stm_unit_tax_reports` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `unit_id` bigint unsigned NOT NULL COMMENT '정산 단위 고유번호',
  `middle_user_id` bigint unsigned NOT NULL COMMENT '중간 관리자 고유번호',
  `seller_id` bigint unsigned NOT NULL COMMENT '셀러 고유번호',
  `paid_amount` bigint NOT NULL COMMENT '실결제 금액',
  `paid_tax_amount` bigint NOT NULL COMMENT '실결제 과세 금액',
  `paid_tax_free_amount` bigint NOT NULL COMMENT '실결제 면세 금액',
  `cash_receipt_amount` bigint NOT NULL COMMENT '현금영수증 처리 금액',
  `cash_receipt_amount_by_income_deduction` bigint NOT NULL COMMENT '현금영수증 소득공제',
  `cash_receipt_amount_by_proof_of_expenditure` bigint NOT NULL COMMENT '현금영수증 지출증빙',
  `used_point_amount` bigint NOT NULL COMMENT '사용 적립금',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mm_stm_unit_tax_reports_unit_id_index` (`unit_id`),
  KEY `mm_stm_unit_tax_reports_middle_user_id_index` (`middle_user_id`),
  KEY `mm_stm_unit_tax_reports_seller_id_index` (`seller_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_stm_unit_tax_reports`
--

LOCK TABLES `mm_stm_unit_tax_reports` WRITE;
/*!40000 ALTER TABLE `mm_stm_unit_tax_reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_stm_unit_tax_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mm_stm_units`
--

DROP TABLE IF EXISTS `mm_stm_units`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_stm_units` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `target_scm_user_id` bigint unsigned NOT NULL COMMENT '정산 대상 SCM 유저 번호',
  `target_scm_user_type` char(1) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '정산 대상 SCM 유저 타입 enum@Settlement/User/SCMUserType',
  `target_year` int unsigned NOT NULL COMMENT '정산 대상 연도',
  `target_month` tinyint unsigned NOT NULL COMMENT '정산 대상 월',
  `seq_in_month` tinyint unsigned NOT NULL COMMENT '해당 정산월의 정산회차',
  `range_from` datetime NOT NULL COMMENT '추출범위 시작시간',
  `range_to` datetime NOT NULL COMMENT '추출범위 종료시간',
  `aggregated_sell_amount` bigint NOT NULL DEFAULT '0' COMMENT '집계된 판매분 정산 금액',
  `aggregated_penalty_amount` bigint NOT NULL DEFAULT '0' COMMENT '집계된 패널티 차감 금액',
  `aggregated_shipping_price_amount` bigint NOT NULL DEFAULT '0' COMMENT '집계된 배송비 정산 금액',
  `aggregated_compensation_amount` bigint NOT NULL DEFAULT '0' COMMENT '집계된 고객 보상 내역',
  `aggregated_charge` bigint NOT NULL DEFAULT '0' COMMENT '집계된 최종 정산금액',
  `aggregated_fee_amount` bigint NOT NULL DEFAULT '0' COMMENT '집계된 판매 수수료 총액',
  `aggregated_supply_price` bigint NOT NULL DEFAULT '0' COMMENT '집계된 총 공급가액',
  `aggregated_tax_amount` bigint NOT NULL DEFAULT '0' COMMENT '집계된 총 과세액',
  `aggregated_tax_free_amount` bigint NOT NULL DEFAULT '0' COMMENT '집계된 총 면세액',
  `aggregated_sell_ea` bigint NOT NULL DEFAULT '0' COMMENT '집계된 총 판매수량',
  `aggregated_sell_price` bigint NOT NULL DEFAULT '0' COMMENT '집계된 총 판매금액',
  `aggregated_used_point_amount` bigint NOT NULL DEFAULT '0' COMMENT '집계된 총 사용 적립금',
  `aggregated_margin_amount` bigint NOT NULL DEFAULT '0' COMMENT '집계된 총 마진금액',
  `aggregated_margin_except_amount` bigint NOT NULL DEFAULT '0' COMMENT '집계된 총 마진제외금액',
  `aggregated_mall_discount_amount` bigint NOT NULL DEFAULT '0' COMMENT '집계된 총 본사 부담 할인금액',
  `aggregated_seller_discount_amount` bigint NOT NULL DEFAULT '0' COMMENT '집계된 총 판매자 부담 할인금액',
  `is_temp_confirmed` tinyint(1) NOT NULL DEFAULT '0' COMMENT '임시마감여부',
  `is_confirmed` tinyint(1) NOT NULL DEFAULT '0' COMMENT '마감 확정 여부',
  `confirmed_at` datetime DEFAULT NULL COMMENT '마감 확정 일시',
  `is_auto_confirmed` tinyint(1) NOT NULL DEFAULT '0' COMMENT '자동 마감 확정 여부',
  `business_number` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '사업자 번호',
  `bank_owner` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '정산계좌 예금주명(확정시점 입력)',
  `bank_code` int DEFAULT NULL COMMENT '정산계좌 은행코드(확정시점 입력) enum@Payment/BankCode',
  `bank_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '정산계좌 계좌번호(확정시점 입력)',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '이메일(확정시점 입력)',
  `schedule_settle_date` datetime DEFAULT NULL COMMENT '결제 예정일(확정시 기입)',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_confirm_processing` tinyint(1) NOT NULL DEFAULT '0' COMMENT '마감 프로세스 진행중 여부',
  PRIMARY KEY (`id`),
  KEY `mm_stm_units_is_confirmed_index` (`is_confirmed`),
  KEY `mm_stm_units_is_temp_confirmed_index` (`is_temp_confirmed`),
  KEY `mm_stm_units_is_auto_confirmed_index` (`is_auto_confirmed`),
  KEY `mm_stm_units_seq_in_month_index` (`seq_in_month`),
  KEY `mm_stm_units_target_year_index` (`target_year`),
  KEY `mm_stm_units_target_month_index` (`target_month`),
  KEY `mm_stm_units_target_scm_user_id_index` (`target_scm_user_id`),
  KEY `mm_stm_units_target_scm_user_type_index` (`target_scm_user_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mm_stm_units`
--

LOCK TABLES `mm_stm_units` WRITE;
/*!40000 ALTER TABLE `mm_stm_units` DISABLE KEYS */;
/*!40000 ALTER TABLE `mm_stm_units` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vw_mm_prm_base_coupon_on_goods`
--

DROP TABLE IF EXISTS `vw_mm_prm_base_coupon_on_goods`;
/*!50001 DROP VIEW IF EXISTS `vw_mm_prm_base_coupon_on_goods`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_mm_prm_base_coupon_on_goods` AS SELECT 
 1 AS `goods_id`,
 1 AS `seller_id`,
 1 AS `list_price`,
 1 AS `sell_price`,
 1 AS `base_coupon_id`,
 1 AS `base_coupon_title`,
 1 AS `discount_amount_krw`,
 1 AS `mall_discount_amount_krw`,
 1 AS `seller_discount_amount_krw`*/;
SET character_set_client = @saved_cs_client;

--
-- Current Database: `mall_shop`
--

USE `mall_shop`;

--
-- Final view structure for view `vw_mm_prm_base_coupon_on_goods`
--

/*!50001 DROP VIEW IF EXISTS `vw_mm_prm_base_coupon_on_goods`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_mm_prm_base_coupon_on_goods` AS select `goods`.`id` AS `goods_id`,`goods`.`seller_id` AS `seller_id`,`goods`.`list_price` AS `list_price`,`goods`.`sell_price` AS `sell_price`,`base_coupon`.`id` AS `base_coupon_id`,`base_coupon`.`title` AS `base_coupon_title`,if((`base_coupon`.`discount_type` = 'rate'),floor(if((`base_coupon`.`maximum_discount_amount` > 0),least(`base_coupon`.`maximum_discount_amount`,(`goods`.`sell_price` * (`base_coupon`.`discount_amount` / 100))),(`goods`.`sell_price` * (`base_coupon`.`discount_amount` / 100)))),`base_coupon`.`discount_amount`) AS `discount_amount_krw`,if((`base_coupon`.`discount_type` = 'rate'),floor((if((`base_coupon`.`maximum_discount_amount` > 0),least(`base_coupon`.`maximum_discount_amount`,(`goods`.`sell_price` * (`base_coupon`.`discount_amount` / 100))),(`goods`.`sell_price` * (`base_coupon`.`discount_amount` / 100))) * (`base_coupon`.`mall_charge_amount` / `base_coupon`.`discount_amount`))),`base_coupon`.`mall_charge_amount`) AS `mall_discount_amount_krw`,(if((`base_coupon`.`discount_type` = 'rate'),floor(if((`base_coupon`.`maximum_discount_amount` > 0),least(`base_coupon`.`maximum_discount_amount`,(`goods`.`sell_price` * (`base_coupon`.`discount_amount` / 100))),(`goods`.`sell_price` * (`base_coupon`.`discount_amount` / 100)))),`base_coupon`.`discount_amount`) - if((`base_coupon`.`discount_type` = 'rate'),floor((if((`base_coupon`.`maximum_discount_amount` > 0),least(`base_coupon`.`maximum_discount_amount`,(`goods`.`sell_price` * (`base_coupon`.`discount_amount` / 100))),(`goods`.`sell_price` * (`base_coupon`.`discount_amount` / 100))) * (`base_coupon`.`mall_charge_amount` / `base_coupon`.`discount_amount`))),`base_coupon`.`mall_charge_amount`)) AS `seller_discount_amount_krw` from ((`mm_gds_items` `goods` join `mm_prm_base_coupon_aggregated_to_goods` `base_coupon_mapping` on(((`goods`.`id` = `base_coupon_mapping`.`goods_id`) and (`base_coupon_mapping`.`validate_until` >= now())))) join `mm_prm_base_coupons` `base_coupon` on((`base_coupon_mapping`.`base_coupon_id` = `base_coupon`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-06  9:00:52
