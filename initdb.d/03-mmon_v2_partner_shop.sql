-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: partner_shop
-- ------------------------------------------------------
-- Server version	8.0.20

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `partner_shop`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `partner_shop` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `partner_shop`;

--
-- Table structure for table `mm_api_ptn_auth_info`
--

DROP TABLE IF EXISTS `mm_api_ptn_auth_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_api_ptn_auth_info` (
  `partner_code` varchar(20) NOT NULL COMMENT '제휴사 구분 코드',
  `partner_id` varchar(45) NOT NULL COMMENT '제휴사 ID',
  `primary_auth_key` varchar(100) NOT NULL COMMENT '제휴사 인증코드',
  `secondary_auth_key` varchar(100) DEFAULT NULL COMMENT '제휴사 2차 인증코드',
  `etc1_code` varchar(255) DEFAULT NULL COMMENT '제휴사 추가 인증코드1',
  `etc2_code` varchar(255) DEFAULT NULL COMMENT '제휴사 추가 인증코드2',
  `etc1_description` varchar(255) DEFAULT NULL COMMENT '제휴사 추가 인증코드1 설명',
  `etc2_description` varchar(255) DEFAULT NULL COMMENT '제휴사 추가 인증코드2 설명',
  `is_use` tinyint(1) DEFAULT '1' COMMENT '사용 여부',
  `expired_at` datetime DEFAULT NULL COMMENT '인증 만료일',
  `created_at` datetime DEFAULT NULL COMMENT '등록일',
  `updated_at` datetime DEFAULT NULL COMMENT '수정일',
  PRIMARY KEY (`partner_code`),
  UNIQUE KEY `partner_code_UNIQUE` (`partner_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='제휴사 연동 정보';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mm_api_ptn_brand_relations`
--

DROP TABLE IF EXISTS `mm_api_ptn_brand_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_api_ptn_brand_relations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `partner_code` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand_id` bigint DEFAULT NULL,
  `partner_brand_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `partner_brand_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `etc1_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `etc2_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `etc1_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `etc2_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mm_api_ptn_category_relations`
--

DROP TABLE IF EXISTS `mm_api_ptn_category_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_api_ptn_category_relations` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '고유키',
  `partner_code` varchar(45) DEFAULT NULL COMMENT '제휴사 코드',
  `code` varchar(9) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'mm_api_self_gds_categories.code',
  `partner_category_code` varchar(255) DEFAULT NULL COMMENT '제휴사 카테고리',
  `partner_category_name` varchar(255) DEFAULT NULL COMMENT '제휴사 카테고리 이름',
  `created_at` datetime DEFAULT NULL COMMENT '등록일',
  `updated_at` datetime DEFAULT NULL COMMENT '수정일',
  `etc1_code` varchar(255) DEFAULT NULL,
  `etc2_code` varchar(255) DEFAULT NULL,
  `etc1_description` varchar(255) DEFAULT NULL,
  `etc2_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='제휴사 연동 - 카테고리 ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mm_api_ptn_cs_qna`
--

DROP TABLE IF EXISTS `mm_api_ptn_cs_qna`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_api_ptn_cs_qna` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `partner_code` varchar(45) DEFAULT NULL COMMENT '제휴사 코드',
  `inquiry_id` varchar(45) DEFAULT NULL COMMENT '제휴사 문의 번호',
  `order_id` varchar(45) DEFAULT NULL COMMENT '제휴사 주문 번호',
  `mall_goods_id` bigint DEFAULT NULL COMMENT '쇼핑몰 상품 아이디',
  `partner_goods_id` varchar(45) DEFAULT NULL COMMENT '제휴사 상품 아이디',
  `goods_name` varchar(255) DEFAULT NULL COMMENT '상품명',
  `mall_option_id` bigint DEFAULT NULL COMMENT '쇼핑몰 옵션 아이디',
  `partner_option_id` varchar(45) DEFAULT NULL COMMENT '제휴사 옵션 아이디',
  `option_name` varchar(255) DEFAULT NULL COMMENT '옵션명',
  `type` varchar(45) DEFAULT NULL COMMENT '문의유형',
  `title` varchar(255) DEFAULT NULL COMMENT '문의 제목',
  `contents` text COMMENT '문의 내용',
  `inquirer_name` varchar(45) DEFAULT NULL COMMENT '질문자 명',
  `inquirer_email` varchar(100) DEFAULT NULL COMMENT '질문자 이메일',
  `inquirer_tel` varchar(45) DEFAULT NULL COMMENT '질문자 연락처',
  `status` varchar(45) NOT NULL COMMENT '문의 상태',
  `inquiry_at` datetime DEFAULT NULL COMMENT '문의 일',
  `created_at` datetime DEFAULT NULL COMMENT '생성일',
  `updated_at` datetime DEFAULT NULL COMMENT '수정일',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='제휴사 Qna 정보';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mm_api_ptn_cs_qna_comments`
--

DROP TABLE IF EXISTS `mm_api_ptn_cs_qna_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_api_ptn_cs_qna_comments` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `partner_code` varchar(45) DEFAULT NULL COMMENT '제휴사 코드',
  `inquiry_id` varchar(45) DEFAULT NULL COMMENT '제휴사 문의 번호',
  `comment_id` varchar(45) DEFAULT NULL COMMENT '문의 답변 아이디',
  `mall_comment_id` bigint DEFAULT NULL COMMENT '솔루션 답변 아이디',
  `title` varchar(100) DEFAULT NULL COMMENT '답변 제목',
  `contents` text COMMENT '답변 내용',
  `commented_at` datetime DEFAULT NULL COMMENT '답변일',
  `created_at` datetime DEFAULT NULL COMMENT '생성일',
  `updated_at` datetime DEFAULT NULL COMMENT '수정일',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='제휴사 Qna 답변 정보';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mm_api_ptn_cs_qna_relation_logs`
--

DROP TABLE IF EXISTS `mm_api_ptn_cs_qna_relation_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_api_ptn_cs_qna_relation_logs` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `inquiry_id` bigint NOT NULL COMMENT 'mm_api_ptn_cs_qna.inquiry_id',
  `partner_code` varchar(45) DEFAULT NULL COMMENT '제휴사 코드',
  `end_point` varchar(255) DEFAULT NULL COMMENT 'API 호출 URL',
  `request_content` text COMMENT '요청 전문',
  `response_content` text COMMENT '응답 전문',
  `response_code` varchar(10) DEFAULT NULL COMMENT '응답 코드',
  `is_relation` varchar(10) DEFAULT NULL COMMENT '연동 결과',
  `response_message` varchar(255) DEFAULT NULL COMMENT '응답 메시지',
  `system_message` text,
  `key1_code` varchar(45) DEFAULT NULL,
  `key2_code` varchar(45) DEFAULT NULL,
  `key1_description` varchar(255) DEFAULT NULL,
  `key2_description` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mm_api_ptn_gds_item_relation_logs`
--

DROP TABLE IF EXISTS `mm_api_ptn_gds_item_relation_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_api_ptn_gds_item_relation_logs` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `goods_id` bigint NOT NULL COMMENT 'mm_api_shp_gds_items.id',
  `partner_code` varchar(45) DEFAULT NULL COMMENT '제휴사 코드',
  `end_point` varchar(255) DEFAULT NULL COMMENT 'API 호출 URL',
  `request_content` text COMMENT '요청 전문',
  `response_content` text COMMENT '응답 전문',
  `response_code` varchar(10) DEFAULT NULL COMMENT '응답 코드',
  `is_relation` varchar(10) DEFAULT NULL COMMENT '연동 결과',
  `response_message` varchar(255) DEFAULT NULL COMMENT '응답 메시지',
  `key1_code` varchar(45) DEFAULT NULL,
  `key2_code` varchar(45) DEFAULT NULL,
  `key1_description` varchar(255) DEFAULT NULL,
  `key2_description` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `system_message` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mm_api_ptn_gds_item_relations`
--

DROP TABLE IF EXISTS `mm_api_ptn_gds_item_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_api_ptn_gds_item_relations` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '고유키',
  `partner_code` varchar(45) NOT NULL COMMENT '제휴사 코드',
  `goods_id` varchar(45) NOT NULL COMMENT 'mm_api_shp_gds_item.id',
  `partner_goods_code` varchar(100) DEFAULT NULL COMMENT '제휴사 상품 코드',
  `is_relation` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ENUM. Api/Goods/IsRelation 참조',
  `message` text COMMENT '연동 결과 메시지',
  `etc1_code` varchar(255) DEFAULT NULL COMMENT '제휴사 추가 사용 코드1',
  `etc2_code` varchar(255) DEFAULT NULL COMMENT '제휴사 추가 사용 코드2',
  `etc1_description` varchar(255) DEFAULT NULL COMMENT '제휴사 추가 사용 코드1 설명',
  `etc2_description` varchar(255) DEFAULT NULL COMMENT '제휴사 추가 사용 코드2 설명',
  `created_at` datetime DEFAULT NULL COMMENT '등록일',
  `updated_at` datetime DEFAULT NULL COMMENT '수정일',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='상품 제휴사 연동 정보';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mm_api_ptn_gds_item_state_relation_logs`
--

DROP TABLE IF EXISTS `mm_api_ptn_gds_item_state_relation_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_api_ptn_gds_item_state_relation_logs` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `goods_id` bigint NOT NULL COMMENT 'mm_api_shp_gds_items.id',
  `partner_code` varchar(45) DEFAULT NULL COMMENT '제휴사 코드',
  `end_point` varchar(255) DEFAULT NULL COMMENT 'API 호출 URL',
  `request_content` text COMMENT '요청 전문',
  `response_content` text COMMENT '응답 전문',
  `response_code` varchar(10) DEFAULT NULL COMMENT '응답 코드',
  `is_relation` varchar(10) DEFAULT NULL COMMENT '연동 결과',
  `response_message` varchar(255) DEFAULT NULL COMMENT '응답 메시지',
  `key1_code` varchar(45) DEFAULT NULL,
  `key2_code` varchar(45) DEFAULT NULL,
  `key1_description` varchar(255) DEFAULT NULL,
  `key2_description` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mm_api_ptn_gds_mandatory_template_detail_relations`
--

DROP TABLE IF EXISTS `mm_api_ptn_gds_mandatory_template_detail_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_api_ptn_gds_mandatory_template_detail_relations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `relation_id` bigint DEFAULT NULL COMMENT 'mm_api_self_gds_mandatory_template_details.id',
  `partner_code` varchar(45) NOT NULL COMMENT '제휴사코드',
  `partner_id` varchar(45) DEFAULT NULL,
  `etc1_code` varchar(255) DEFAULT NULL,
  `etc2_code` varchar(255) DEFAULT NULL,
  `etc1_description` varchar(255) DEFAULT NULL,
  `etc2_description` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mm_api_ptn_gds_mandatory_template_relations_code_IDX` (`relation_id`,`partner_code`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='제휴인터페이스 <=>제휴사 간의 정보고시 템플릿 매핑';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mm_api_ptn_gds_mandatory_template_relations`
--

DROP TABLE IF EXISTS `mm_api_ptn_gds_mandatory_template_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_api_ptn_gds_mandatory_template_relations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `relation_id` bigint DEFAULT NULL COMMENT 'mm_api_self_gds_mandatory_templates.id',
  `partner_code` varchar(45) NOT NULL COMMENT '제휴사코드',
  `partner_id` varchar(45) DEFAULT NULL,
  `etc1_code` varchar(255) DEFAULT NULL,
  `etc2_code` varchar(255) DEFAULT NULL,
  `etc1_description` varchar(255) DEFAULT NULL,
  `etc2_description` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mm_api_ptn_gds_mandatory_template_relations_code_IDX` (`relation_id`,`partner_code`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='제휴인터페이스 <=>제휴사 간의 정보고시 템플릿 매핑';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mm_api_ptn_gds_option_relation_logs`
--

DROP TABLE IF EXISTS `mm_api_ptn_gds_option_relation_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_api_ptn_gds_option_relation_logs` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `goods_id` bigint NOT NULL,
  `option_id` bigint NOT NULL,
  `partner_code` varchar(45) DEFAULT NULL COMMENT '제휴사 코드',
  `end_point` varchar(255) DEFAULT NULL COMMENT 'API 호출 URL',
  `request_content` text COMMENT '요청 전문',
  `response_content` text COMMENT '응답 전문',
  `response_code` varchar(10) DEFAULT NULL COMMENT '응답 코드',
  `is_relation` varchar(10) DEFAULT NULL COMMENT '연동 결과',
  `response_message` varchar(255) DEFAULT NULL COMMENT '응답 메시지',
  `key1_code` varchar(45) DEFAULT NULL,
  `key2_code` varchar(45) DEFAULT NULL,
  `key1_description` varchar(255) DEFAULT NULL,
  `key2_description` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `system_message` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mm_api_ptn_gds_option_relations`
--

DROP TABLE IF EXISTS `mm_api_ptn_gds_option_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_api_ptn_gds_option_relations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `partner_code` varchar(45) NOT NULL,
  `goods_id` varchar(45) NOT NULL COMMENT 'mm_api_shp_gds_items.id',
  `option_id` varchar(45) DEFAULT NULL COMMENT 'mm_api_shp_gds_options.id',
  `partner_option_code` varchar(100) DEFAULT NULL COMMENT '제휴사 옵션 코드',
  `is_relation` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Enum Api/Goods/IsRelation 참조',
  `message` varchar(45) DEFAULT NULL COMMENT '연동 특이사항',
  `etc1_code` varchar(255) DEFAULT NULL COMMENT '제휴사 추가 사용 코드1',
  `etc2_code` varchar(255) DEFAULT NULL COMMENT '제휴사 추가 사용 코드2',
  `etc1_description` varchar(255) DEFAULT NULL COMMENT '제휴사 추가 사용 코드1 설명',
  `etc2_description` varchar(255) DEFAULT NULL COMMENT '제휴사 추가 사용 코드2 설명',
  `created_at` datetime DEFAULT NULL COMMENT '등록일',
  `updated_at` datetime DEFAULT NULL COMMENT '수정일',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='상품 옵션 제휴사 연동 정보';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mm_api_ptn_ord_cancel`
--

DROP TABLE IF EXISTS `mm_api_ptn_ord_cancel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_api_ptn_ord_cancel` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `partner_code` varchar(45) NOT NULL COMMENT '제휴사 코드',
  `order_id` varchar(100) NOT NULL COMMENT '제휴사 주문 번호(mm_api_ptn_odr_orders.order_id)',
  `cancel_id` varchar(100) NOT NULL COMMENT '제휴사 취소 주문 번호',
  `principal_type` int NOT NULL COMMENT '취소 주체',
  `responsibility_to` int NOT NULL COMMENT '귀책 대상',
  `reason_code` int NOT NULL COMMENT '취소 사유 코드',
  `reason_message` text COMMENT '취소 상세 사유',
  `apply_at` datetime NOT NULL COMMENT '취소 신청일',
  `created_at` datetime DEFAULT NULL,
  `updated_at` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='제휴사 취소 주문';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mm_api_ptn_ord_cancel_items`
--

DROP TABLE IF EXISTS `mm_api_ptn_ord_cancel_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_api_ptn_ord_cancel_items` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `partner_code` varchar(45) NOT NULL COMMENT '제휴사 코드',
  `item_id` bigint NOT NULL COMMENT '제휴 주문 아이템 번호(mm_api_ptn_ord_items.id)',
  `pack_id` varchar(45) NOT NULL COMMENT '묶음 배송 번호',
  `order_id` varchar(45) NOT NULL COMMENT '제휴 주문 번호(mm_api_ptn_odr_items.order_id)',
  `cancel_id` varchar(45) NOT NULL COMMENT '제휴 주문 취소 주문 번호(취소 주문 번호가 존재하지 않을 시 제휴 주문번호 등록)',
  `status` int NOT NULL COMMENT '주문 상태',
  `confirmed_at` datetime DEFAULT NULL COMMENT '취소 승인일',
  `created_at` datetime DEFAULT NULL COMMENT '생성일',
  `updated_at` datetime DEFAULT NULL COMMENT '수정일',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='제휴사 취소 아이템';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mm_api_ptn_ord_cancel_relation_logs`
--

DROP TABLE IF EXISTS `mm_api_ptn_ord_cancel_relation_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_api_ptn_ord_cancel_relation_logs` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `cancel_id` bigint NOT NULL COMMENT 'mm_api_ptn_ord_cancel.order_id',
  `partner_code` varchar(45) DEFAULT NULL COMMENT '제휴사 코드',
  `end_point` varchar(255) DEFAULT NULL COMMENT 'API 호출 URL',
  `request_content` text COMMENT '요청 전문',
  `response_content` text COMMENT '응답 전문',
  `response_code` varchar(10) DEFAULT NULL COMMENT '응답 코드',
  `is_relation` varchar(10) DEFAULT NULL COMMENT '연동 결과',
  `response_message` varchar(255) DEFAULT NULL COMMENT '응답 메시지',
  `system_message` text,
  `key1_code` varchar(45) DEFAULT NULL,
  `key2_code` varchar(45) DEFAULT NULL,
  `key1_description` varchar(255) DEFAULT NULL,
  `key2_description` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mm_api_ptn_ord_exchange`
--

DROP TABLE IF EXISTS `mm_api_ptn_ord_exchange`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_api_ptn_ord_exchange` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `partner_code` varchar(45) DEFAULT NULL COMMENT '제휴사 코드',
  `order_id` varchar(100) DEFAULT NULL COMMENT '제휴사 주문 번호(mm_api_ptn_odr_orders.order_id)',
  `exchange_id` varchar(100) DEFAULT NULL COMMENT '제휴사 교환 주문 번호',
  `principal_type` int DEFAULT NULL COMMENT '반품 주체',
  `responsibility_to` int DEFAULT NULL COMMENT '귀책 대상',
  `reason_code` int DEFAULT NULL COMMENT '교환 코드',
  `reason_message` text COMMENT '교환 사유',
  `exchange_shipping_price` int DEFAULT '0' COMMENT '교환 배송비',
  `retrieve_and_release_shipping_price_pay_message` varchar(100) DEFAULT NULL COMMENT '제휴사 회수+재출고 배송비에 대한 처리 메시지',
  `retrieve_delivery_type` varchar(45) NOT NULL DEFAULT 'A' COMMENT '회수 택배 발송 타입(직접발송, 자동회수)',
  `retrieve_delivery_company_code` varchar(45) DEFAULT NULL COMMENT '회수 택배사 코드',
  `retrieve_invoice_no` varchar(45) DEFAULT NULL COMMENT '회수 송장 번호',
  `retrieve_from_name` varchar(45) DEFAULT NULL COMMENT '교환 신청자 명',
  `retrieve_from_tel` varchar(45) DEFAULT NULL COMMENT '교환 신청자 전화번호',
  `retrieve_from_zipcode` varchar(45) DEFAULT NULL COMMENT '교환 회수지 우편번호',
  `retrieve_from_base_address` varchar(255) DEFAULT NULL COMMENT '교환 회수지 주소',
  `retrieve_from_detail_address` varchar(255) DEFAULT NULL COMMENT '교환 회수지 상세 주소',
  `resend_to_name` varchar(45) DEFAULT NULL COMMENT '교환 재배송 수취자 명',
  `resend_to_tel` varchar(45) DEFAULT NULL COMMENT '교환 재배송 수취자 연락처',
  `resend_to_zipcode` varchar(45) DEFAULT NULL COMMENT '교환 배송지 우편번호',
  `resend_to_base_address` varchar(255) DEFAULT NULL COMMENT '교환 배송지 주소',
  `resend_to_detail_address` varchar(255) DEFAULT NULL COMMENT '교환 배송지 상세 주소',
  `apply_at` datetime DEFAULT NULL COMMENT '교환 신청일',
  `created_at` datetime DEFAULT NULL COMMENT '생성일',
  `updated_at` datetime DEFAULT NULL COMMENT '수정일',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='제휴사 교환 주문';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mm_api_ptn_ord_exchange_extra_information`
--

DROP TABLE IF EXISTS `mm_api_ptn_ord_exchange_extra_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_api_ptn_ord_exchange_extra_information` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `partner_code` varchar(45) NOT NULL COMMENT '제휴사 코드',
  `exchange_id` varchar(45) DEFAULT NULL COMMENT '제휴사 교환 주문번호(mm_api_ptn_ord_exchange.exchange_id)',
  `extra1_code` varchar(255) DEFAULT NULL COMMENT '제휴사 추가 코드 1',
  `extra2_code` varchar(255) DEFAULT NULL COMMENT '제휴사 추가 코드 2',
  `extra3_code` varchar(255) DEFAULT NULL COMMENT '제휴사 추가 코드 3',
  `extra1_description` varchar(255) DEFAULT NULL COMMENT '제휴사 추가 코드 1 설명',
  `extra2_description` varchar(255) DEFAULT NULL COMMENT '제휴사 추가 코드 2 설명',
  `extra3_description` varchar(255) DEFAULT NULL COMMENT '제휴사 추가 코드 3 설명',
  `created_at` datetime DEFAULT NULL COMMENT '생성일',
  `updated_at` datetime DEFAULT NULL COMMENT '수정일',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='제휴사 교환 주문 추가정보';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mm_api_ptn_ord_exchange_items`
--

DROP TABLE IF EXISTS `mm_api_ptn_ord_exchange_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_api_ptn_ord_exchange_items` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `partner_code` varchar(45) DEFAULT NULL COMMENT '제휴사 코드',
  `item_id` bigint DEFAULT NULL COMMENT '제휴 주문 아이템 번호(mm_api_ptn_odr_items.id)',
  `pack_id` varchar(45) DEFAULT NULL COMMENT '묶음 배송 번호',
  `exchange_pack_id` varchar(45) DEFAULT NULL COMMENT '교환 묶음 배송 번호(값이 없을시 pack_id 등록)',
  `exchange_line` int DEFAULT '0' COMMENT '교환 순번',
  `order_id` varchar(45) DEFAULT NULL COMMENT '제휴 주문 번호(mm_api_ptn_odr_items.order_id)',
  `exchange_id` varchar(45) DEFAULT NULL COMMENT '제휴 주문 반품 번호(교환 주문 번호가 존재하지 않을 시 제휴 주문번호 등록)',
  `status` int DEFAULT NULL COMMENT '주문 상태',
  `history_shipping_center_id` bigint DEFAULT NULL COMMENT '주문 교환 요청 시점에 사용된 배송지 정보(mm_api_self_his_shipping_center_relation.id)',
  `exchange_history_goods_id` bigint DEFAULT NULL COMMENT '주문 교환 요청 시점에 사용된 상품 정보(mm_api_self_his_gds_items_relation.id)',
  `exchange_history_option_id` bigint DEFAULT NULL COMMENT '주문 교환 요청 시점에 사용된 옵션 정보(mm_api_self_his_gds_options_relation.id)',
  `exchange_mall_goods_id` bigint DEFAULT NULL COMMENT '솔루션 상품 아이디(mm_api_shp_gds_items.mall_id)',
  `exchange_mall_option_id` bigint DEFAULT NULL COMMENT '솔루션 옵션 아이디(mm_api_shp_gds_options.mall_id)',
  `exchange_goods_name` varchar(45) DEFAULT NULL COMMENT '교환시점 상품명',
  `exchange_goods_type` varchar(45) DEFAULT NULL COMMENT '교환시점 상품명',
  `exchange_goods_margin` varchar(45) DEFAULT NULL COMMENT '교환시점 상품 마진',
  `exchange_goods_list_price` varchar(45) DEFAULT NULL COMMENT '교환시점 상품 정가',
  `exchange_goods_sell_price` varchar(45) DEFAULT NULL COMMENT '교환시점 상품 판매가',
  `exchange_goods_base_discounted_price` varchar(45) DEFAULT NULL COMMENT '교환시점 상품 1차 쿠폰 적용가',
  `exchange_option_name` varchar(45) DEFAULT NULL COMMENT '교환시점 구매옵션명',
  `exchange_option_extra_amount` varchar(45) DEFAULT NULL COMMENT '교환시점 구매옵션 추감금액',
  `resend_invoice_no` varchar(45) DEFAULT NULL COMMENT '재발송 송장 번호',
  `resend_delivery_company_code` varchar(45) DEFAULT NULL COMMENT '재발송 택배사 코드',
  `is_resend` tinyint(1) DEFAULT '0' COMMENT '재발송 여부',
  `accepted_at` datetime DEFAULT NULL COMMENT '반품 승인일',
  `retrieved_at` datetime DEFAULT NULL COMMENT '교환 회수 완료일',
  `finished_at` datetime DEFAULT NULL COMMENT '교환 확정일',
  `created_at` datetime DEFAULT NULL COMMENT '생성일',
  `updated_at` datetime DEFAULT NULL COMMENT '수정일',
  `released_at` datetime DEFAULT NULL COMMENT '배송일',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='제휴사 교환 아이템';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mm_api_ptn_ord_exchange_items_resend_info`
--

DROP TABLE IF EXISTS `mm_api_ptn_ord_exchange_items_resend_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_api_ptn_ord_exchange_items_resend_info` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `partner_code` varchar(45) DEFAULT NULL,
  `exchange_item_id` bigint DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='제휴사 재배송 추가 정보';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mm_api_ptn_ord_exchange_relation_logs`
--

DROP TABLE IF EXISTS `mm_api_ptn_ord_exchange_relation_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_api_ptn_ord_exchange_relation_logs` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `exchange_id` bigint NOT NULL COMMENT 'mm_api_ptn_ord_exchange.exchange_id',
  `partner_code` varchar(45) DEFAULT NULL COMMENT '제휴사 코드',
  `end_point` varchar(255) DEFAULT NULL COMMENT 'API 호출 URL',
  `request_content` text COMMENT '요청 전문',
  `response_content` text COMMENT '응답 전문',
  `response_code` varchar(10) DEFAULT NULL COMMENT '응답 코드',
  `is_relation` varchar(10) DEFAULT NULL COMMENT '연동 결과',
  `response_message` varchar(255) DEFAULT NULL COMMENT '응답 메시지',
  `system_message` text,
  `key1_code` varchar(45) DEFAULT NULL,
  `key2_code` varchar(45) DEFAULT NULL,
  `key1_description` varchar(255) DEFAULT NULL,
  `key2_description` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mm_api_ptn_ord_items`
--

DROP TABLE IF EXISTS `mm_api_ptn_ord_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_api_ptn_ord_items` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '고유키',
  `partner_code` varchar(45) NOT NULL COMMENT '제휴사 코드',
  `order_id` varchar(45) NOT NULL COMMENT '제휴 주문 번호',
  `prev_item_id` varchar(45) DEFAULT NULL COMMENT '(교환 신규 주문 아이템인 경우 참조하는) 이전 주문 아이템번호',
  `origin_item_id` varchar(45) DEFAULT NULL COMMENT '(교환 신규 주문 아이템인 경우 참조하는) 최초 주문 아이템번호',
  `pack_id` varchar(45) NOT NULL COMMENT '묶음 배송 번호',
  `payment_id` varchar(255) DEFAULT NULL COMMENT '(order_id)_(pack_id) 결제정보',
  `is_pack` tinyint NOT NULL COMMENT '묶음 배송 여부(수량별 쪼개기 가능 여부) 0:분할배송 가능, 1:묶음배송',
  `line` int NOT NULL COMMENT '주문 순번',
  `shipping_line` int DEFAULT NULL COMMENT '배송 순번',
  `api_line` int DEFAULT NULL COMMENT 'API 자체 순번(수량 쪼개기)',
  `mall_goods_id` bigint NOT NULL COMMENT '솔루션 상품 아이디',
  `partner_goods_id` varchar(100) DEFAULT NULL COMMENT '제휴사 상품 아이디',
  `history_goods_id` bigint DEFAULT NULL COMMENT '주문 시점에 사용된 상품 정보(mm_api_self_his_gds_items_relation.id)',
  `goods_name` varchar(100) DEFAULT NULL COMMENT '상품 명',
  `mall_option_id` varchar(100) NOT NULL COMMENT '솔루션 옵션 아이디(mm_api_shp_gds_options.mall_id)',
  `partner_option_id` varchar(100) DEFAULT NULL COMMENT '제휴사 옵션 아이디',
  `history_option_id` varchar(45) DEFAULT NULL COMMENT '주문 시점에 사용된 옵션 정보(mm_api_self_his_gds_options_relation.id)',
  `option_name` varchar(100) DEFAULT NULL COMMENT '옵션 명',
  `option_price` int DEFAULT NULL COMMENT '옵션 추가 금액',
  `mall_shipping_rule_id` bigint DEFAULT NULL COMMENT '솔루션 배송정책 아이디(mm_api_shp_shipping_rules.mall_shipping_rule_id)',
  `history_shipping_rule_id` bigint DEFAULT NULL COMMENT '주문 시점에 사용된 배송정책 정보(mm_api_self_his_shipping_rule_relation.id)\n',
  `sell_price` int NOT NULL COMMENT '판매가(개당 단가)',
  `dc_price` int DEFAULT NULL COMMENT '할인 금액(개당)',
  `purchase_price` int DEFAULT NULL COMMENT '결재금액(개당 실 결재금액)',
  `status` varchar(45) NOT NULL COMMENT '주문 상태',
  `invoice_no` varchar(45) DEFAULT NULL COMMENT '송장 번호',
  `delivery_company_code` varchar(45) DEFAULT NULL COMMENT '택배사 코드',
  `created_at` datetime DEFAULT NULL COMMENT '등록일',
  `updated_at` datetime DEFAULT NULL COMMENT '수정일',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='주문 상품, 옵션 정보';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mm_api_ptn_ord_order_item_shipping`
--

DROP TABLE IF EXISTS `mm_api_ptn_ord_order_item_shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_api_ptn_ord_order_item_shipping` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `partner_code` varchar(45) DEFAULT NULL COMMENT '제휴사 코드',
  `item_id` bigint DEFAULT NULL COMMENT '주문 아이템 고유키(mm_api_ptn_odr_order_item.id)',
  `order_id` varchar(45) DEFAULT NULL COMMENT '제휴사 주문 번호',
  `pack_id` varchar(45) DEFAULT NULL COMMENT '묶음 배송 번호',
  `status` int DEFAULT NULL COMMENT '주문 상태',
  `is_relation` tinyint DEFAULT NULL COMMENT '연동 결과',
  `message` varchar(1000) DEFAULT NULL COMMENT '연동 특이사항',
  `invoice_no` varchar(45) DEFAULT NULL COMMENT '송장 번호',
  `delivery_company_code` varchar(45) DEFAULT NULL COMMENT '택배사 코드',
  `ready_for_release_at` datetime DEFAULT NULL,
  `released_at` datetime DEFAULT NULL COMMENT '발송일',
  `created_at` datetime DEFAULT NULL COMMENT '등록일',
  `updated_at` datetime DEFAULT NULL COMMENT '수정일',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='배송 상품 정보';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mm_api_ptn_ord_order_item_status_change_logs`
--

DROP TABLE IF EXISTS `mm_api_ptn_ord_order_item_status_change_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_api_ptn_ord_order_item_status_change_logs` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `partner_code` varchar(45) DEFAULT NULL COMMENT '제휴사 코드',
  `item_id` bigint DEFAULT NULL COMMENT '주문 아이템 고유키(mm_api_ptn_odr_order_item.id)',
  `before_status` int DEFAULT NULL COMMENT '변경 전 상태 값',
  `after_status` int DEFAULT NULL COMMENT '변경 후 상태 값',
  `created_at` datetime DEFAULT NULL COMMENT '변경 일',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='주문 상품 상태 변경 로그';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mm_api_ptn_ord_order_relation_logs`
--

DROP TABLE IF EXISTS `mm_api_ptn_ord_order_relation_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_api_ptn_ord_order_relation_logs` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `order_id` bigint NOT NULL COMMENT 'mm_api_ptn_ord_orders.order_id',
  `partner_code` varchar(45) DEFAULT NULL COMMENT '제휴사 코드',
  `end_point` varchar(255) DEFAULT NULL COMMENT 'API 호출 URL',
  `request_content` text COMMENT '요청 전문',
  `response_content` text COMMENT '응답 전문',
  `response_code` varchar(10) DEFAULT NULL COMMENT '응답 코드',
  `is_relation` varchar(10) DEFAULT NULL COMMENT '연동 결과',
  `response_message` varchar(255) DEFAULT NULL COMMENT '응답 메시지',
  `key1_code` varchar(45) DEFAULT NULL,
  `key2_code` varchar(45) DEFAULT NULL,
  `key1_description` varchar(255) DEFAULT NULL,
  `key2_description` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `system_message` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mm_api_ptn_ord_orders`
--

DROP TABLE IF EXISTS `mm_api_ptn_ord_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_api_ptn_ord_orders` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '고유키',
  `partner_code` varchar(45) DEFAULT NULL COMMENT '제휴사 코드',
  `mall_order_id` varchar(45) DEFAULT NULL COMMENT '솔루션 주문 번호',
  `order_id` varchar(100) DEFAULT NULL COMMENT '제휴사 주문 번호',
  `group_id` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '주문 묶음 번호 (ex. 쿠팡 shipmentBoxId). 값이 없을 시 제휴사 주문번호 등록',
  `order_paid_id` varchar(255) DEFAULT NULL COMMENT '결제번호(장바구니 번호)- 특정 제휴사만 사용',
  `prev_order_id` varchar(100) DEFAULT NULL COMMENT '(교환 신규 주문인 경우 참조하는) 이전 주문번호',
  `origin_order_id` varchar(100) DEFAULT NULL COMMENT '(교환 신규 주문인 경우 참조하는) 최초 주문번호',
  `exchange_order_id` varchar(100) DEFAULT NULL COMMENT '(교환 신규 주문인 경우 참조하는) 교환번호',
  `orderer_name` varchar(255) DEFAULT NULL COMMENT '주문자 명',
  `orderer_phone_number` varchar(255) DEFAULT NULL COMMENT '주문자 연락처(기본)',
  `orderer_tel_number` varchar(45) DEFAULT NULL COMMENT '주문자 연락처(추가)',
  `orderer_email` varchar(255) DEFAULT NULL COMMENT '주문자 이메일',
  `receiver_name` varchar(255) DEFAULT NULL COMMENT '수취자 명',
  `receiver_phone_number` varchar(255) DEFAULT NULL COMMENT '수취자 연락처(기본)',
  `receiver_tel_number` varchar(45) DEFAULT NULL COMMENT '수취자 연락처(추가)',
  `shipping_to_zip` varchar(255) DEFAULT NULL COMMENT '배송지 우편번호',
  `shipping_to_base_address` varchar(255) DEFAULT NULL COMMENT '배송지 기본주소',
  `shipping_to_detail_address` varchar(255) DEFAULT NULL COMMENT '배송지 상세 주소',
  `shipping_message` varchar(255) DEFAULT NULL COMMENT '배송 메시지',
  `personal_clearance_code` varchar(255) DEFAULT NULL COMMENT '개인통관고유번호',
  `ordered_at` datetime DEFAULT NULL COMMENT '주문일',
  `payment_at` datetime DEFAULT NULL COMMENT '결제완료일',
  `created_at` datetime DEFAULT NULL COMMENT '등록일시',
  `updated_at` datetime DEFAULT NULL COMMENT '수정일시',
  `responsed_at` datetime DEFAULT NULL COMMENT '응답일시',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='제휴사 주문 정보';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mm_api_ptn_ord_payment_info`
--

DROP TABLE IF EXISTS `mm_api_ptn_ord_payment_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_api_ptn_ord_payment_info` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `partner_code` varchar(45) DEFAULT NULL COMMENT '제휴사 코드',
  `payment_id` varchar(255) DEFAULT NULL COMMENT '(order_id)_(pack_id) 결제 정보 코드',
  `order_id` varchar(45) DEFAULT NULL COMMENT '제휴사 주문번호',
  `pack_id` varchar(45) DEFAULT NULL COMMENT '묶음 배송 번호',
  `sale_price` int DEFAULT NULL COMMENT '판매가',
  `discount_price` int DEFAULT NULL COMMENT '쿠폰, 할인 금액',
  `delivery_price` int DEFAULT NULL COMMENT '배송비',
  `extra_delivery_price` int DEFAULT NULL COMMENT '도서산간 배송비',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='제휴사 주문 결제 정보(묶음 배송 단위)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mm_api_ptn_ord_return`
--

DROP TABLE IF EXISTS `mm_api_ptn_ord_return`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_api_ptn_ord_return` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `partner_code` varchar(45) NOT NULL COMMENT '제휴사 코드',
  `order_id` varchar(100) DEFAULT NULL COMMENT '제휴사 주문 번호(mm_api_ptn_odr_orders.order_id)',
  `return_id` varchar(100) DEFAULT NULL COMMENT '제휴사 반품 주문 번호',
  `principal_type` int DEFAULT NULL COMMENT '반품 주체',
  `responsibility_to` int DEFAULT NULL COMMENT '귀책 대상',
  `reason_code` int DEFAULT NULL COMMENT '반품 코드',
  `reason_message` text COMMENT '반품 사유',
  `retrieve_shipping_price` int DEFAULT NULL COMMENT '반품 배송비',
  `retrieve_and_release_shipping_price_pay_type` varchar(45) DEFAULT NULL COMMENT '반품 회수 배송비 지불 타입',
  `retrieve_shipping_price_pay_message` varchar(100) DEFAULT NULL COMMENT '제휴사 회수배송비에 대한 처리 메시지',
  `retrieve_delivery_type` char(1) DEFAULT 'A' COMMENT '발송 타입(직접발송, 자동회수)',
  `retrieve_delivery_company_code` varchar(45) DEFAULT NULL COMMENT '반품 회수 택배사 코드',
  `retrieve_invoice_no` varchar(45) DEFAULT NULL COMMENT '반품 회수 송장 번호',
  `retrieve_from_name` varchar(100) DEFAULT NULL COMMENT '반품 신청자 명',
  `retrieve_from_tel` varchar(45) DEFAULT NULL COMMENT '반품 신청자 전화번호',
  `retrieve_from_zipcode` varchar(45) DEFAULT NULL COMMENT '반품 회수지 우편번호',
  `retrieve_from_base_address` varchar(255) DEFAULT NULL COMMENT '반품 회수지 주소',
  `retrieve_from_detail_address` varchar(255) DEFAULT NULL COMMENT '반품 회수지 상세 주소',
  `retrieve_to_name` varchar(255) DEFAULT NULL COMMENT '반품 회수 입고지 담당자 명',
  `retrieve_to_zipcode` varchar(45) DEFAULT NULL COMMENT '반품 회수 입고지 우편번호',
  `retrieve_to_base_address` varchar(255) DEFAULT NULL COMMENT '반품 회수 입고지 주소',
  `retrieve_to_detail_address` varchar(255) DEFAULT NULL COMMENT '반품 회수 입고지 상세 주소',
  `retrieve_to_tel` varchar(255) DEFAULT NULL COMMENT '반품 회수 입고지 연락처',
  `apply_at` datetime DEFAULT NULL COMMENT '반품 신청일',
  `created_at` datetime DEFAULT NULL COMMENT '생성일',
  `updated_at` datetime DEFAULT NULL COMMENT '수정일',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='제휴사 반품 주문';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mm_api_ptn_ord_return_items`
--

DROP TABLE IF EXISTS `mm_api_ptn_ord_return_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_api_ptn_ord_return_items` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `partner_code` varchar(45) DEFAULT NULL COMMENT '제휴사 코드',
  `item_id` bigint DEFAULT NULL COMMENT '제휴 주문 아이템 번호(mm_api_ptn_odr_items.id)',
  `pack_id` varchar(45) DEFAULT NULL COMMENT '묶음 배송 번호',
  `return_pack_id` varchar(45) DEFAULT NULL COMMENT '반품 묶음 배송 번호(값이 없을시 pack_id 등록)',
  `return_line` int DEFAULT '0' COMMENT '반품 순번',
  `order_id` varchar(45) DEFAULT NULL COMMENT '제휴 주문 번호(mm_api_ptn_odr_items.order_id)',
  `return_id` varchar(45) DEFAULT NULL COMMENT '제휴 주문 반품 번호(반품 주문 번호가 존재하지 않을 시 제휴 주문번호 등록)',
  `status` int DEFAULT NULL COMMENT '주문 상태',
  `mall_shipping_rule_id` bigint DEFAULT NULL COMMENT '솔루션 배송정책 아이디(mm_api_shp_shipping_rules.mall_shipping_rule_id)',
  `history_shipping_center_id` bigint DEFAULT NULL COMMENT '주문 반품 요청 시점에 사용된 배송지 정보(mm_api_self_his_shipping_center_relation.id)',
  `accepted_at` datetime DEFAULT NULL COMMENT '반품 승인일',
  `retrieved_at` datetime DEFAULT NULL COMMENT '반품 회수 완료일',
  `finished_at` datetime DEFAULT NULL COMMENT '반품 확정일',
  `created_at` datetime DEFAULT NULL COMMENT '생성일',
  `updated_at` datetime DEFAULT NULL COMMENT '수정일',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='제휴사 반품 아이템';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mm_api_ptn_ord_return_relation_logs`
--

DROP TABLE IF EXISTS `mm_api_ptn_ord_return_relation_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_api_ptn_ord_return_relation_logs` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `return_id` bigint NOT NULL COMMENT 'mm_api_ptn_ord_return.return_id',
  `partner_code` varchar(45) DEFAULT NULL COMMENT '제휴사 코드',
  `end_point` varchar(255) DEFAULT NULL COMMENT 'API 호출 URL',
  `request_content` text COMMENT '요청 전문',
  `response_content` text COMMENT '응답 전문',
  `response_code` varchar(10) DEFAULT NULL COMMENT '응답 코드',
  `is_relation` varchar(10) DEFAULT NULL COMMENT '연동 결과',
  `response_message` varchar(255) DEFAULT NULL COMMENT '응답 메시지',
  `system_message` text,
  `key1_code` varchar(45) DEFAULT NULL,
  `key2_code` varchar(45) DEFAULT NULL,
  `key1_description` varchar(255) DEFAULT NULL,
  `key2_description` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mm_api_ptn_origin_relations`
--

DROP TABLE IF EXISTS `mm_api_ptn_origin_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_api_ptn_origin_relations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `partner_code` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `origin_id` bigint DEFAULT NULL,
  `partner_origin_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `partner_origin_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `etc1_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `etc2_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `etc1_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `etc2_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mm_api_ptn_shipping_center_relation_logs`
--

DROP TABLE IF EXISTS `mm_api_ptn_shipping_center_relation_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_api_ptn_shipping_center_relation_logs` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `partner_code` varchar(45) DEFAULT NULL COMMENT '제휴사 코드',
  `end_point` varchar(255) DEFAULT NULL COMMENT 'API 호출 URL',
  `request_content` text COMMENT '요청 전문',
  `response_content` text COMMENT '응답 전문',
  `response_code` varchar(10) DEFAULT NULL COMMENT '응답 코드',
  `is_relation` tinyint DEFAULT NULL COMMENT '연동 결과',
  `response_message` varchar(255) DEFAULT NULL COMMENT '응답 메시지',
  `system_message` text COMMENT '시스템 오류 메시지',
  `key1_code` varchar(45) DEFAULT NULL,
  `key2_code` varchar(45) DEFAULT NULL,
  `key1_description` varchar(255) DEFAULT NULL,
  `key2_description` varchar(255) DEFAULT NULL,
  `center_id` bigint DEFAULT NULL COMMENT '배송정책 ID(mm_api_shp_shipping_centers.id)',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mm_api_ptn_shipping_center_relations`
--

DROP TABLE IF EXISTS `mm_api_ptn_shipping_center_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_api_ptn_shipping_center_relations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `center_id` bigint DEFAULT NULL,
  `rule_relation_id` bigint DEFAULT NULL COMMENT 'mm_api_ptn_shipping_rule_relations.id',
  `partner_code` varchar(45) DEFAULT NULL COMMENT '제휴사 코드',
  `mall_shipping_rule_id` bigint DEFAULT NULL COMMENT '솔루션 배송정책 아이디(mm_api_shp_shipping_rules.mall_shipping_rule_id)',
  `mall_shipping_center_id` bigint DEFAULT NULL COMMENT '솔루션 주소지 아이디(mm_api_shp_shipping_centers.mall_shipping_center_id)',
  `partner_id` varchar(45) DEFAULT NULL COMMENT '제휴사 주소지 코드',
  `type` varchar(45) DEFAULT NULL COMMENT '출고지 / 입고지(반품/교환지) 구분 (O:출고지, I:반품/교환지, D:입출고 통합)',
  `etc1_code` varchar(255) DEFAULT NULL COMMENT '제휴사 추가 사용 코드1',
  `etc2_code` varchar(255) DEFAULT NULL COMMENT '제휴사 추가 사용 코드2',
  `etc1_description` varchar(255) DEFAULT NULL COMMENT '제휴사 추가 사용 코드1 설명',
  `etc2_description` varchar(255) DEFAULT NULL COMMENT '제휴사 추가 사용 코드2 설명',
  `created_user` varchar(255) DEFAULT NULL COMMENT '등록자',
  `updated_user` varchar(255) DEFAULT NULL COMMENT '수정자',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '등록시간',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '수정시간',
  `deleted_at` datetime DEFAULT NULL COMMENT '삭제시간(SoftDelete)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='제휴사 연동 - 입출고 주소지';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mm_api_ptn_shipping_rule_relation_logs`
--

DROP TABLE IF EXISTS `mm_api_ptn_shipping_rule_relation_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_api_ptn_shipping_rule_relation_logs` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `partner_code` varchar(45) DEFAULT NULL COMMENT '제휴사 코드',
  `end_point` varchar(255) DEFAULT NULL COMMENT 'API 호출 URL',
  `request_content` text COMMENT '요청 전문',
  `response_content` text COMMENT '응답 전문',
  `response_code` varchar(10) DEFAULT NULL COMMENT '응답 코드',
  `is_relation` tinyint DEFAULT NULL COMMENT '연동 결과',
  `response_message` varchar(255) DEFAULT NULL COMMENT '응답 메시지',
  `system_message` text COMMENT '시스템 오류 메시지',
  `key1_code` varchar(45) DEFAULT NULL,
  `key2_code` varchar(45) DEFAULT NULL,
  `key1_description` varchar(255) DEFAULT NULL,
  `key2_description` varchar(255) DEFAULT NULL,
  `rule_id` bigint DEFAULT NULL COMMENT '배송정책 ID(mm_api_shp_shipping_rules.id)',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mm_api_ptn_shipping_rule_relation_ssg`
--

DROP TABLE IF EXISTS `mm_api_ptn_shipping_rule_relation_ssg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_api_ptn_shipping_rule_relation_ssg` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `shppcstId` varchar(10) NOT NULL COMMENT 'ssg 에서 회신받은 고유 배송비정책 아이디',
  `shppcstPlcyDivCd` char(2) NOT NULL COMMENT '10 출고배송비 정책, 20 반품배송비 정책, 60 추가배송비 정책(도서산간), 70 추가배송비 정책(제주)',
  `shppcstAplUnitCd` char(2) NOT NULL COMMENT '10 주문 금액 합산, 30 상품 수량 별, 40 상품별 주문금액 합산',
  `prpayCodDivCd` char(2) NOT NULL COMMENT '10 배송비선불, 20 배송비착불',
  `shppcst` int NOT NULL DEFAULT '0' COMMENT '배송비',
  `shppcstExmpCritnAmt` int NOT NULL DEFAULT '999999999',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mm_api_ptn_ssg_shipping_rule_relations_un` (`shppcstId`),
  UNIQUE KEY `mm_api_ptn_ssg_shipping_rule_relations_shppcstPlcyDivCd_IDX` (`shppcstPlcyDivCd`,`shppcstAplUnitCd`,`prpayCodDivCd`,`shppcst`,`shppcstExmpCritnAmt`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mm_api_ptn_shipping_rule_relations`
--

DROP TABLE IF EXISTS `mm_api_ptn_shipping_rule_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_api_ptn_shipping_rule_relations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `partner_code` varchar(45) DEFAULT NULL COMMENT '제휴사 코드',
  `mall_shipping_rule_id` bigint DEFAULT NULL COMMENT '솔루션 배송정책 아이디(mm_api_shp_shipping_rules.mall_shipping_rule_id)',
  `partner_id` varchar(45) DEFAULT NULL COMMENT '제휴사 배송정책 코드',
  `etc1_code` varchar(255) DEFAULT NULL COMMENT '제휴사 추가 사용 코드1',
  `etc2_code` varchar(255) DEFAULT NULL COMMENT '제휴사 추가 사용 코드2',
  `etc1_description` varchar(255) DEFAULT NULL COMMENT '제휴사 추가 사용 코드1 설명',
  `etc2_description` varchar(255) DEFAULT NULL COMMENT '제휴사 추가 사용 코드2 설명',
  `created_user` varchar(255) DEFAULT NULL COMMENT '등록자',
  `updated_user` varchar(255) DEFAULT NULL COMMENT '수정자',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '등록시간',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '수정시간',
  `deleted_at` datetime DEFAULT NULL COMMENT '삭제시간(SoftDelete)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='제휴사 연동 맵핑 ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mm_api_self_adm_seller_change_logs`
--

DROP TABLE IF EXISTS `mm_api_self_adm_seller_change_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_api_self_adm_seller_change_logs` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `seller_code` char(8) NOT NULL COMMENT '솔루션 셀러 코드',
  `before_partner_shop` json DEFAULT NULL COMMENT '변경 전 연동 제휴사',
  `after_partner_shop` json DEFAULT NULL COMMENT '변경 후 연동 제휴사',
  `created_at` datetime DEFAULT NULL COMMENT '수정시간(로그 생성 일시)',
  PRIMARY KEY (`id`),
  KEY `seller_code_INDEX` (`seller_code`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='판매자 제휴사 사용 관리 변경 로그';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mm_api_self_adm_sellers`
--

DROP TABLE IF EXISTS `mm_api_self_adm_sellers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_api_self_adm_sellers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `seller_id` bigint NOT NULL COMMENT '솔루션 판매자 id',
  `seller_code` bigint NOT NULL COMMENT '솔루션 판매자 코드',
  `seller_name` varchar(100) DEFAULT NULL,
  `use_partner_shop` json DEFAULT NULL COMMENT '사용 가능한 제휴사',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '등록시간',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '수정시간',
  `expired_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `seller_code_UNIQUE` (`seller_code`),
  UNIQUE KEY `mm_api_self_adm_seller_un` (`seller_id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='판매자 제휴사 사용 관리';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mm_api_self_aggregate_goods_relation_unit`
--

DROP TABLE IF EXISTS `mm_api_self_aggregate_goods_relation_unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_api_self_aggregate_goods_relation_unit` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `middle_user_id` varchar(45) DEFAULT NULL COMMENT '중간 관리자 키값',
  `seller_id` varchar(45) DEFAULT NULL COMMENT '셀러 키값',
  `brand_id` varchar(45) DEFAULT NULL COMMENT '브랜드 키값',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='제휴사별 상품 연동 그룹';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mm_api_self_aggregate_goods_relation_unit_items`
--

DROP TABLE IF EXISTS `mm_api_self_aggregate_goods_relation_unit_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_api_self_aggregate_goods_relation_unit_items` (
  `unit_id` bigint NOT NULL COMMENT 'mm_api_self_aggregate_goods_relation_unit.id',
  `partner_code` varchar(45) NOT NULL COMMENT '제휴사 코드',
  `success_count` int NOT NULL COMMENT '연동 성공 상품 수',
  `total_count` int DEFAULT NULL COMMENT '전체 상품 수',
  `success_rate` float NOT NULL COMMENT '성공률',
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='제휴사별 상품 연동률';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mm_api_self_brand_mapping_change_logs`
--

DROP TABLE IF EXISTS `mm_api_self_brand_mapping_change_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_api_self_brand_mapping_change_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `mall_brand_id` bigint unsigned NOT NULL,
  `before_id` bigint unsigned DEFAULT NULL,
  `after_id` bigint unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mm_api_self_brand_mappings`
--

DROP TABLE IF EXISTS `mm_api_self_brand_mappings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_api_self_brand_mappings` (
  `mall_brand_id` bigint unsigned NOT NULL COMMENT '솔루션 브랜드 코드',
  `id` bigint unsigned NOT NULL COMMENT 'mm_api_self_brands.id',
  `is_use` tinyint DEFAULT NULL,
  `is_stop` tinyint DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`mall_brand_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mm_api_self_brands`
--

DROP TABLE IF EXISTS `mm_api_self_brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_api_self_brands` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '고유id',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '브랜드명',
  `eng_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '영문 브랜드명',
  `kor_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '국문 브랜드명',
  `is_use_eng_name` tinyint unsigned DEFAULT '0' COMMENT '영문 브랜드명 사용여부',
  `logo_alt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '브랜드로고 대체 텍스트',
  `pc_top_image_alt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '브랜드 상단 이미지 파일 대체텍스트',
  `mobile_top_image_alt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '브랜드 상단이미지 대체 텍스트(mobile)',
  `main_text` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '메인문구',
  `sub_text` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '서브문구',
  `is_designer_regist` tinyint(1) NOT NULL DEFAULT '0' COMMENT '디자이너 등록여부',
  `designer_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '디자이너 이름',
  `designer_image_alt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '디자이너 이미지 대체텍스트',
  `introduce` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '브랜드 소개',
  `kakao_channel_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '카카오 채널 URL',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '등록일시',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '수정일시',
  `deleted_at` datetime DEFAULT NULL COMMENT '삭제일시 (softDeletes)',
  `created_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mm_api_self_brands_deletedat_index` (`deleted_at`),
  KEY `mm_api_self_brands_name_index` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mm_api_self_gds_categories`
--

DROP TABLE IF EXISTS `mm_api_self_gds_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_api_self_gds_categories` (
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
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '등록 일시',
  `updated_at` datetime DEFAULT NULL COMMENT '수정 일시',
  `deleted_at` datetime DEFAULT NULL COMMENT '삭제 일시',
  `created_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '등록관리자',
  `updated_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '수정관리자',
  `deleted_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '삭제관리자',
  PRIMARY KEY (`code`),
  KEY `mm_gds_categories_depth_index` (`depth`),
  KEY `mm_gds_categories_name_index` (`name`),
  KEY `mm_gds_categories_category_1_seq_index` (`child_seq`),
  KEY `mm_gds_categories_is_display_index` (`is_display`),
  KEY `mm_gds_categories_parent_code_index` (`parent_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='API Interface 상품카테고리정보';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mm_api_self_gds_categories_test`
--

DROP TABLE IF EXISTS `mm_api_self_gds_categories_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_api_self_gds_categories_test` (
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
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '등록 일시',
  `updated_at` datetime DEFAULT NULL COMMENT '수정 일시',
  `deleted_at` datetime DEFAULT NULL COMMENT '삭제 일시',
  `created_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '등록관리자',
  `updated_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '수정관리자',
  `deleted_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '삭제관리자',
  PRIMARY KEY (`code`),
  KEY `mm_gds_categories_depth_index` (`depth`),
  KEY `mm_gds_categories_name_index` (`name`),
  KEY `mm_gds_categories_category_1_seq_index` (`child_seq`),
  KEY `mm_gds_categories_is_display_index` (`is_display`),
  KEY `mm_gds_categories_parent_code_index` (`parent_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='API Interface 상품카테고리정보';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mm_api_self_gds_category_mapping_change_logs`
--

DROP TABLE IF EXISTS `mm_api_self_gds_category_mapping_change_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_api_self_gds_category_mapping_change_logs` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `mall_category_code` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '솔루션의 카테고리 코드',
  `before_code` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '변경 전 제휴인터페이스의 연동 카테고리 코드',
  `after_code` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '변경 후 제휴인터페이스의 카테고리 코드',
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='판매자 상품 카테고리 연동 변경 로그';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mm_api_self_gds_category_mappings`
--

DROP TABLE IF EXISTS `mm_api_self_gds_category_mappings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_api_self_gds_category_mappings` (
  `mall_category_code` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '솔루션 카테고리 코드',
  `code` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'mm_api_self_gds_categories.code',
  `is_use` tinyint DEFAULT '1' COMMENT '사용 가능 여부(0:미사용, 1:사용)',
  `is_stop` tinyint DEFAULT NULL COMMENT '미사용',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`mall_category_code`),
  KEY `mm_api_self_gds_categories_mapping_code_IDX` (`code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='솔루션 <> API Interface 카테고리 맵핑 정보';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mm_api_self_gds_mandatory_template_details`
--

DROP TABLE IF EXISTS `mm_api_self_gds_mandatory_template_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_api_self_gds_mandatory_template_details` (
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
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='상품고시정보별 상세 내용';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mm_api_self_gds_mandatory_template_details_test`
--

DROP TABLE IF EXISTS `mm_api_self_gds_mandatory_template_details_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_api_self_gds_mandatory_template_details_test` (
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
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='상품고시정보별 상세 내용';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mm_api_self_gds_mandatory_templates`
--

DROP TABLE IF EXISTS `mm_api_self_gds_mandatory_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_api_self_gds_mandatory_templates` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '고유번호',
  `code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '상품고시 코드',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '상품고시명',
  `is_use` tinyint unsigned NOT NULL DEFAULT '1' COMMENT '사용 여부',
  `use_country_of_origin` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '식품 원산지 사용 여부 (1: 사용, 0: 미사용)',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '수정 일시',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '등록 일시',
  PRIMARY KEY (`id`),
  KEY `mm_gds_mandatory_templates_code_index` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='상품 고시 정보';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mm_api_self_gds_mandatory_templates_test`
--

DROP TABLE IF EXISTS `mm_api_self_gds_mandatory_templates_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_api_self_gds_mandatory_templates_test` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '고유번호',
  `code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '상품고시 코드',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '상품고시명',
  `is_use` tinyint unsigned NOT NULL DEFAULT '1' COMMENT '사용 여부',
  `use_country_of_origin` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '식품 원산지 사용 여부 (1: 사용, 0: 미사용)',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '수정 일시',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '등록 일시',
  PRIMARY KEY (`id`),
  KEY `mm_gds_mandatory_templates_code_index` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='상품 고시 정보';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mm_api_self_his_gds_item_partner_price_relations`
--

DROP TABLE IF EXISTS `mm_api_self_his_gds_item_partner_price_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_api_self_his_gds_item_partner_price_relations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `partner_price_id` bigint DEFAULT NULL COMMENT 'mm_api_shp_gds_item_partner_price.id',
  `partner_code` varchar(45) NOT NULL COMMENT '제휴사 코드',
  `goods_id` varchar(45) NOT NULL COMMENT '상품 코드',
  `sell_price` int DEFAULT NULL COMMENT '제휴사 판매 가격',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='상품 제휴사별 가격 정보';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mm_api_self_his_gds_item_relations`
--

DROP TABLE IF EXISTS `mm_api_self_his_gds_item_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_api_self_his_gds_item_relations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '고유번호 ',
  `goods_id` bigint DEFAULT NULL COMMENT 'mm_api_shp_gds_items.id',
  `mall_goods_id` bigint DEFAULT NULL COMMENT '솔루션 상품 아이디',
  `code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '고유번호 (기획, 정책, 운영에서 ‘상품 코드’라고 지칭하는 값)',
  `type` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'GN' COMMENT '상품유형(GN : 일반상품, TS: 타임세일, RF: 래플, FD: 펀딩)',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '상품명',
  `display_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '진열상품명',
  `middle_user_id` int DEFAULT NULL COMMENT '솔루션 중간관리자 고유 번호',
  `middle_user_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '솔루션 중간 관리자 명',
  `seller_id` bigint DEFAULT NULL COMMENT '셀러 관리자 고유키',
  `seller_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '셀러 관리자 명',
  `md_id` char(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'md 고유키',
  `no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '상품번호 - 기획, 정책, 운영에서 ‘상품번호’라고 지칭하는 값',
  `brand_id` bigint DEFAULT NULL COMMENT '브랜드 고유번호 (mm_shp_brands.id)',
  `brand_name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '브랜드명',
  `is_oversea_delivery` tinyint(1) DEFAULT '0' COMMENT '해외배송상품 여부',
  `oversea_delivery_min` tinyint DEFAULT '0' COMMENT '해외배송 평균배송일 최소',
  `oversea_delivery_max` tinyint DEFAULT '0' COMMENT '해외배송 평균배송일 최대',
  `is_oversea_purchase` tinyint(1) DEFAULT '0' COMMENT '해외구매대행 여부[0:미사용,1:사용]',
  `is_custom_made` tinyint(1) DEFAULT '0' COMMENT '주문제작 상품 여부',
  `custom_made_day` tinyint DEFAULT '0' COMMENT '주문제작 배송일',
  `expected_shipping_day_to_order` int DEFAULT NULL COMMENT '출고예정일(기준일+1일)',
  `list_price` int DEFAULT NULL COMMENT '정가',
  `sell_price` int DEFAULT NULL COMMENT '판매가',
  `is_tax_free` tinyint DEFAULT NULL COMMENT '면세 여부',
  `base_discounted_price` int DEFAULT NULL,
  `base_discounted_mall_amount` int DEFAULT NULL,
  `base_discounted_seller_amount` int DEFAULT NULL,
  `margin` decimal(5,4) DEFAULT NULL,
  `basic_info` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '상세설명',
  `is_only_adult` tinyint(1) DEFAULT '0' COMMENT '성인전용 상품 여부',
  `is_locked_only_adult` tinyint(1) DEFAULT '0' COMMENT '성인전용 상품 해제 불가 여부 (1: 해제 불가, 0: 해제 가능)',
  `display_state` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'N' COMMENT '진열 상태값(Y: 진열, N: 미진열, S: 예비품절진열)',
  `stock` int DEFAULT '0' COMMENT '실재고',
  `video_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '상품 동영상 URL',
  `search_keyword` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '검색키워드',
  `is_sell_date` tinyint(1) DEFAULT '0' COMMENT '판매기간 사용여부',
  `sell_start_date` datetime DEFAULT NULL COMMENT '판매기간 시작일자',
  `sell_end_date` datetime DEFAULT NULL COMMENT '판매기간 종료일자',
  `is_parallel_import` tinyint(1) DEFAULT '0' COMMENT '병행수입여부[0:미사용,1:사용]',
  `mall_shipping_rule_id` bigint DEFAULT '0' COMMENT '배송정책 템플릿(mm_api_shp_shipping_rules.mall_shipping_rule_id)',
  `mall_shipping_center_id` bigint DEFAULT NULL COMMENT '배송지 고유 코드(mm_api_shp_shipping_centers.mall_shipping_center_id)',
  `max_orderable_count_for_all` int DEFAULT '0' COMMENT '전체기간 포함하여 구매가능한 최대갯수(0일시 무제한)',
  `max_orderable_count_for_once` int DEFAULT '0' COMMENT '한 번에 구매 가능한 최대 갯수(0일시 무제한)',
  `max_orderable_count_for_day` int DEFAULT '0' COMMENT '하루에 구매 가능한 갯수(0일시 무제한)',
  `mandatory_template_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '상품고시 정보 고유번호 (mm_gds_mandatory_templates.code)',
  `gender_group` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'E' COMMENT '성별 속성값(F: 여성, M: 남성, E: 공용(기타))',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '등록 일시',
  `updated_at` datetime DEFAULT NULL COMMENT '수정 일시',
  `soldout_at` datetime DEFAULT NULL COMMENT '품절상태로 전환된 시간',
  `soldout_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '품절처리자 이름',
  `use_list_image` tinyint DEFAULT '0' COMMENT '개별설정 리스팅 이미지 사용여부(0: 사용안함, 1: 사용함)',
  `image_count` tinyint DEFAULT '0' COMMENT '상품 이미지 개수',
  `use_state` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'new' COMMENT '사용 상태 (new: 신상품, old: 중고, refur: 리퍼, scratch: 스크래치, display: 전시, return: 반품)',
  `use_partner_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '연동 가능 제휴사 코드',
  `statistics_code` char(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '매출/통계용 분류',
  `category` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'mm_api_gds_item_categories.category_1 대표카테고리',
  PRIMARY KEY (`id`),
  KEY `mm_gds_items_type_index` (`type`),
  KEY `mm_gds_items_name_index` (`name`),
  KEY `mm_gds_items_display_name_index` (`display_name`),
  KEY `mm_gds_items_no_index` (`no`),
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
  KEY `mm_gds_items_shipping_rule_id_index` (`mall_shipping_rule_id`),
  KEY `mm_gds_items_created_at_index` (`created_at`),
  KEY `mm_gds_items_updated_at_index` (`updated_at`),
  KEY `mm_gds_items_gender_group_index` (`gender_group`),
  KEY `mm_gds_items_shipping_center_id_index` (`mall_shipping_center_id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='상품 원장 이력';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mm_api_self_his_gds_option_relations`
--

DROP TABLE IF EXISTS `mm_api_self_his_gds_option_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_api_self_his_gds_option_relations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `option_id` bigint DEFAULT NULL COMMENT 'mm_api_shp_gds_options.id',
  `mall_option_id` bigint DEFAULT NULL COMMENT '솔루션 옵션 아이디',
  `goods_id` bigint NOT NULL COMMENT 'mm_api_shp_gds_items.id',
  `label` varchar(255) NOT NULL COMMENT '옵션명',
  `stock` int DEFAULT NULL COMMENT '수량',
  `extra_amount` int DEFAULT '0',
  `is_display` tinyint NOT NULL DEFAULT '0' COMMENT '노출 여부',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='상품 옵션 정보 이력';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mm_api_self_his_order`
--

DROP TABLE IF EXISTS `mm_api_self_his_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_api_self_his_order` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `partner_code` varchar(45) NOT NULL COMMENT '제휴사 코드',
  `interface_endpoint` varchar(200) DEFAULT NULL COMMENT 'API Interface Endpoint',
  `interface_request_content` text COMMENT 'API Interface 요청 전문',
  `endpoint` varchar(300) DEFAULT NULL COMMENT '제휴사 API Endpoint',
  `request_content` text COMMENT '요청 전문',
  `response_content` text COMMENT '응답 전문',
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='제휴사 주문 조회 연동 기록';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mm_api_self_his_shipping_center_relations`
--

DROP TABLE IF EXISTS `mm_api_self_his_shipping_center_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_api_self_his_shipping_center_relations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `center_id` bigint DEFAULT NULL COMMENT '배송지 아이디 (mm_api_shp_shipping_centers.id)',
  `mall_shipping_center_id` bigint NOT NULL COMMENT '솔루션 배송지 아이디(mm_api_shp_shipping_centers.mall_shipping_center_id)',
  `seller_id` bigint unsigned NOT NULL COMMENT '셀러 id',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '출고/회수지 명칭',
  `zip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '우편번호',
  `base_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '기본주소',
  `detail_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '상세주소',
  `tel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '연락처',
  `order_seq` int unsigned NOT NULL DEFAULT '0' COMMENT '정렬 순서값',
  `mall_shipping_rule_id` bigint unsigned NOT NULL COMMENT '배송정책 번호',
  `service_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '추적관리 서비스 계약번호 등 활용',
  `retrieve_zip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(회수시)우편번호',
  `retrieve_base_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(회수시)기본주소',
  `retrieve_detail_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(회수시)상세주소',
  `retrieve_tel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(회수시)연락처',
  `retrieve_service_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(회수시)추적관리 서비스 계약번호 등 활용',
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='배송지 연동 기록 테이블';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mm_api_self_his_shipping_rule_relations`
--

DROP TABLE IF EXISTS `mm_api_self_his_shipping_rule_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_api_self_his_shipping_rule_relations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `rule_id` bigint NOT NULL COMMENT 'mm_api_shp_shipping_rules.id',
  `mall_shipping_rule_id` bigint NOT NULL COMMENT '솔루션 배송정책 id(mm_api_shp_shipping_rule.relation_shipping_rule_id)',
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '배송정책명',
  `middle_user_id` bigint DEFAULT NULL,
  `seller_id` bigint DEFAULT NULL COMMENT '셀러 id',
  `shipping_type` tinyint DEFAULT NULL COMMENT '배송구분 (10:택배 30:주문제작 40:해외배송)',
  `delivery_company_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '택배사 코드',
  `shipping_price_payment_type` tinyint DEFAULT NULL COMMENT '배송비 선결제정책 (0: 선택, 1:선불, 2:착불)',
  `is_charge_on_each` tinyint DEFAULT NULL COMMENT '개별배송여부',
  `shipping_price_policy` tinyint DEFAULT NULL COMMENT '배송비 부과정책 (0:무료배송, 1:배송비고정, 2:주문금액별 조건부)',
  `shipping_price` int DEFAULT NULL COMMENT '배송비',
  `extra_shipping_price` int DEFAULT NULL COMMENT '도서산간 추가배송비',
  `retrieve_shipping_price` int DEFAULT NULL COMMENT '회수 배송비',
  `exchange_shipping_price` int DEFAULT NULL COMMENT '교환배송비',
  `conditional_free_from` int DEFAULT NULL COMMENT '배송비 조건부 부과일때 무료배송되는 금액조건',
  `today_exportable_time` tinyint DEFAULT NULL COMMENT '당일출고 가능 시간',
  `delivery_div` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '등록시간',
  PRIMARY KEY (`id`),
  KEY `mm_shp_shipping_rules_selleruserid_index` (`seller_id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='배송정책 연동 기록 테이블';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mm_api_self_response_logs`
--

DROP TABLE IF EXISTS `mm_api_self_response_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_api_self_response_logs` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `end_point` varchar(255) DEFAULT NULL COMMENT 'API end point',
  `code` varchar(10) DEFAULT NULL COMMENT 'response code',
  `contents` longtext COMMENT 'response content',
  `message` longtext COMMENT 'response message',
  `created_at` datetime DEFAULT NULL COMMENT '생성일',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='API 응답 결과 로그';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mm_api_shp_brands`
--

DROP TABLE IF EXISTS `mm_api_shp_brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_api_shp_brands` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '고유id',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '브랜드명',
  `eng_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '영문 브랜드명',
  `kor_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '국문 브랜드명',
  `is_use_eng_name` tinyint unsigned DEFAULT '0' COMMENT '영문 브랜드명 사용여부',
  `logo_alt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '브랜드로고 대체 텍스트',
  `pc_top_image_alt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '브랜드 상단 이미지 파일 대체텍스트',
  `mobile_top_image_alt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '브랜드 상단이미지 대체 텍스트(mobile)',
  `main_text` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '메인문구',
  `sub_text` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '서브문구',
  `is_designer_regist` tinyint(1) NOT NULL DEFAULT '0' COMMENT '디자이너 등록여부',
  `designer_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '디자이너 이름',
  `designer_image_alt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '디자이너 이미지 대체텍스트',
  `introduce` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '브랜드 소개',
  `kakao_channel_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '카카오 채널 URL',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '등록일시',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '수정일시',
  `deleted_at` datetime DEFAULT NULL COMMENT '삭제일시 (softDeletes)',
  `created_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mm_shp_brands_deletedat_index` (`deleted_at`),
  KEY `mm_shp_brands_name_index` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mm_api_shp_gds_item_categories`
--

DROP TABLE IF EXISTS `mm_api_shp_gds_item_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_api_shp_gds_item_categories` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `goods_id` varchar(45) DEFAULT NULL,
  `category_1` varchar(45) DEFAULT NULL,
  `category_2` varchar(45) DEFAULT NULL,
  `category_3` varchar(45) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='상품 카테고리 정보';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mm_api_shp_gds_item_change_logs`
--

DROP TABLE IF EXISTS `mm_api_shp_gds_item_change_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_api_shp_gds_item_change_logs` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `mall_goods_id` bigint DEFAULT NULL,
  `change_keys` varchar(45) DEFAULT NULL,
  `change_label` varchar(100) DEFAULT NULL,
  `change_values` varchar(45) DEFAULT NULL,
  `before_value` text,
  `after_value` text,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='상품 변경 로그';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mm_api_shp_gds_item_images`
--

DROP TABLE IF EXISTS `mm_api_shp_gds_item_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_api_shp_gds_item_images` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `goods_id` varchar(45) NOT NULL,
  `list_image` varchar(255) NOT NULL,
  `image_0` varchar(255) NOT NULL,
  `image_1` varchar(255) DEFAULT NULL,
  `image_2` varchar(255) DEFAULT NULL,
  `image_3` varchar(255) DEFAULT NULL,
  `image_4` varchar(255) DEFAULT NULL,
  `image_5` varchar(255) DEFAULT NULL,
  `image_6` varchar(255) DEFAULT NULL,
  `image_7` varchar(255) DEFAULT NULL,
  `image_8` varchar(255) DEFAULT NULL,
  `image_9` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='상품 이미지 정보';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mm_api_shp_gds_item_mandatory`
--

DROP TABLE IF EXISTS `mm_api_shp_gds_item_mandatory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_api_shp_gds_item_mandatory` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `goods_id` varchar(45) DEFAULT NULL,
  `order_seq` int DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `value` text,
  `template_id` bigint DEFAULT NULL,
  `template_detail_id` bigint DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='상품 정보고시 정보';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mm_api_shp_gds_item_origins`
--

DROP TABLE IF EXISTS `mm_api_shp_gds_item_origins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_api_shp_gds_item_origins` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `goods_id` varchar(45) DEFAULT NULL,
  `origin_1_depth` varchar(100) DEFAULT NULL,
  `origin_2_depth` varchar(100) DEFAULT NULL,
  `origin_3_depth` varchar(100) DEFAULT NULL,
  `is_other` tinyint DEFAULT NULL,
  `import_company` varchar(100) DEFAULT NULL,
  `origin_description` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='상품 원산지 정보';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mm_api_shp_gds_item_partner_prices`
--

DROP TABLE IF EXISTS `mm_api_shp_gds_item_partner_prices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_api_shp_gds_item_partner_prices` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `partner_code` varchar(45) NOT NULL COMMENT '제휴사 코드',
  `goods_id` varchar(45) NOT NULL COMMENT '상품 코드',
  `sell_price` int DEFAULT NULL COMMENT '제휴사 판매 가격',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='상품 제휴사별 가격 정보';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mm_api_shp_gds_item_partner_state_change_logs`
--

DROP TABLE IF EXISTS `mm_api_shp_gds_item_partner_state_change_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_api_shp_gds_item_partner_state_change_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` bigint NOT NULL,
  `mall_goods_id` bigint NOT NULL,
  `change_keys` varchar(45) DEFAULT NULL,
  `change_label` varchar(100) DEFAULT NULL,
  `change_values` varchar(45) DEFAULT NULL,
  `before_value` varchar(45) DEFAULT NULL,
  `after_value` varchar(45) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mm_api_shp_gds_item_partner_states`
--

DROP TABLE IF EXISTS `mm_api_shp_gds_item_partner_states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_api_shp_gds_item_partner_states` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `partner_code` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `goods_id` bigint NOT NULL,
  `mall_goods_id` bigint NOT NULL,
  `display_state` varchar(2) NOT NULL DEFAULT 'Y' COMMENT 'Enum shop/goods/DisplayState',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mm_api_shp_gds_items`
--

DROP TABLE IF EXISTS `mm_api_shp_gds_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_api_shp_gds_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '고유번호 ',
  `mall_goods_id` bigint DEFAULT NULL,
  `code` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '고유번호 (기획, 정책, 운영에서 ‘상품 코드’라고 지칭하는 값)',
  `type` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'GN' COMMENT '상품유형(GN : 일반상품, TS: 타임세일, RF: 래플, FD: 펀딩)',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '상품명',
  `display_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '진열상품명',
  `middle_user_id` int DEFAULT NULL COMMENT '솔루션 중간관리자 고유 번호',
  `middle_user_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '솔루션 중간 관리자 명',
  `seller_id` bigint NOT NULL COMMENT '셀러 관리자 고유키',
  `seller_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '셀러 관리자 명',
  `md_id` char(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '상품번호 - 기획, 정책, 운영에서 ‘상품번호’라고 지칭하는 값',
  `brand_id` bigint unsigned NOT NULL COMMENT '브랜드 고유번호 (mm_shp_brands.id)',
  `brand_name` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '브랜드명',
  `is_oversea_delivery` tinyint(1) NOT NULL DEFAULT '0' COMMENT '해외배송상품 여부',
  `oversea_delivery_min` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '해외배송 평균배송일 최소',
  `oversea_delivery_max` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '해외배송 평균배송일 최대',
  `is_oversea_purchase` tinyint(1) NOT NULL DEFAULT '0' COMMENT '해외구매대행 여부[0:미사용,1:사용]',
  `is_custom_made` tinyint(1) NOT NULL DEFAULT '0' COMMENT '주문제작 상품 여부',
  `custom_made_day` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '주문제작 배송일',
  `expected_shipping_day_to_order` int DEFAULT '0' COMMENT '출고예정일(기준일+1일)',
  `list_price` int NOT NULL COMMENT '정가',
  `sell_price` int NOT NULL COMMENT '판매가',
  `is_tax_free` tinyint DEFAULT NULL COMMENT '면세 여부',
  `base_discounted_price` int DEFAULT NULL,
  `base_discounted_mall_amount` int DEFAULT NULL,
  `base_discounted_seller_amount` int DEFAULT NULL,
  `margin` decimal(5,4) DEFAULT NULL,
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
  `is_parallel_import` tinyint(1) DEFAULT NULL COMMENT '병행수입여부[0:미사용,1:사용]',
  `mall_shipping_rule_id` bigint unsigned NOT NULL DEFAULT '0' COMMENT '배송정책 템플릿(mm_api_shp_shipping_rules.mall_shipping_rule_id)',
  `mall_shipping_center_id` bigint unsigned NOT NULL COMMENT '배송지 고유 코드(mm_api_shp_shipping_centers.mall_shipping_center_id)',
  `max_orderable_count_for_once` int NOT NULL DEFAULT '0' COMMENT '한 번에 구매 가능한 최대 갯수(0일시 무제한)',
  `max_orderable_count_for_day` int NOT NULL DEFAULT '0' COMMENT '하루에 구매 가능한 갯수(0일시 무제한)',
  `mandatory_template_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '상품고시 정보 고유번호 (mm_gds_mandatory_templates.code)',
  `gender_group` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'E' COMMENT '성별 속성값(F: 여성, M: 남성, E: 공용(기타))',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '등록 일시',
  `updated_at` datetime DEFAULT NULL COMMENT '수정 일시',
  `soldout_at` datetime DEFAULT NULL COMMENT '품절상태로 전환된 시간',
  `soldout_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '품절처리자 이름',
  `use_list_image` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '개별설정 리스팅 이미지 사용여부(0: 사용안함, 1: 사용함)',
  `image_count` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '상품 이미지 개수',
  `use_state` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new' COMMENT '사용 상태 (new: 신상품, old: 중고, refur: 리퍼, scratch: 스크래치, display: 전시, return: 반품)',
  `use_partner_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '연동 가능 제휴사 코드',
  `statistics_code` char(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '매출/통계용 분류',
  PRIMARY KEY (`id`),
  KEY `mm_gds_items_type_index` (`type`),
  KEY `mm_gds_items_name_index` (`name`),
  KEY `mm_gds_items_display_name_index` (`display_name`),
  KEY `mm_gds_items_no_index` (`no`),
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
  KEY `mm_gds_items_shipping_rule_id_index` (`mall_shipping_rule_id`),
  KEY `mm_gds_items_created_at_index` (`created_at`),
  KEY `mm_gds_items_updated_at_index` (`updated_at`),
  KEY `mm_gds_items_gender_group_index` (`gender_group`),
  KEY `mm_gds_items_shipping_center_id_index` (`mall_shipping_center_id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='상품 원장';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mm_api_shp_gds_option_change_logs`
--

DROP TABLE IF EXISTS `mm_api_shp_gds_option_change_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_api_shp_gds_option_change_logs` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `mall_goods_id` bigint DEFAULT NULL,
  `mall_option_id` bigint DEFAULT NULL,
  `change_keys` varchar(45) DEFAULT NULL,
  `change_label` varchar(100) DEFAULT NULL,
  `change_values` varchar(45) DEFAULT NULL,
  `before_value` varchar(45) DEFAULT NULL,
  `after_value` varchar(45) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='옵션 변경 로그';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mm_api_shp_gds_option_partner_stocks`
--

DROP TABLE IF EXISTS `mm_api_shp_gds_option_partner_stocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_api_shp_gds_option_partner_stocks` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `partner_code` varchar(45) NOT NULL COMMENT '제휴사 코드 Enum Partner 참조',
  `goods_id` bigint NOT NULL COMMENT 'mm_api_shp_gds_items.id',
  `option_id` bigint NOT NULL COMMENT 'mm_api_shp_gds_options.id',
  `stock` int DEFAULT NULL COMMENT '옵션재고',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mm_api_shp_gds_optio_partner_stocks_partner_code_IDX` (`partner_code`,`goods_id`,`option_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mm_api_shp_gds_options`
--

DROP TABLE IF EXISTS `mm_api_shp_gds_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_api_shp_gds_options` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `mall_option_id` bigint DEFAULT NULL COMMENT '솔루션 옵션 아이디',
  `goods_id` bigint NOT NULL COMMENT 'mm_api_shp_gds_items.id',
  `label` varchar(255) NOT NULL COMMENT '옵션명',
  `stock` int NOT NULL COMMENT '수량',
  `extra_amount` int DEFAULT '0',
  `is_display` tinyint NOT NULL DEFAULT '0' COMMENT '노출 여부',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='상품 옵션 정보';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mm_api_shp_gds_origins`
--

DROP TABLE IF EXISTS `mm_api_shp_gds_origins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_api_shp_gds_origins` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '원산지명',
  `parent_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '상위 원산지 고유값',
  `full_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '원산지 전체 경로',
  `depth` tinyint(1) NOT NULL COMMENT '원산지 깊이',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mm_api_shp_gds_origins_test`
--

DROP TABLE IF EXISTS `mm_api_shp_gds_origins_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_api_shp_gds_origins_test` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '원산지명',
  `parent_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '상위 원산지 고유값',
  `full_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '원산지 전체 경로',
  `depth` tinyint(1) NOT NULL COMMENT '원산지 깊이',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mm_api_shp_shipping_centers`
--

DROP TABLE IF EXISTS `mm_api_shp_shipping_centers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_api_shp_shipping_centers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `mall_shipping_center_id` bigint NOT NULL COMMENT '몰 배송지 아이디',
  `seller_id` bigint unsigned NOT NULL COMMENT '셀러 id',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '출고/회수지 명칭',
  `zip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '우편번호',
  `base_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '기본주소',
  `detail_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '상세주소',
  `tel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '연락처',
  `order_seq` int unsigned NOT NULL DEFAULT '0' COMMENT '정렬 순서값',
  `mall_shipping_rule_id` bigint unsigned NOT NULL COMMENT '몰 배송정책 아이디',
  `service_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '추적관리 서비스 계약번호 등 활용',
  `retrieve_zip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(회수시)우편번호',
  `retrieve_base_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(회수시)기본주소',
  `retrieve_detail_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(회수시)상세주소',
  `retrieve_tel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(회수시)연락처',
  `retrieve_service_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(회수시)추적관리 서비스 계약번호 등 활용',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mm_api_shp_shipping_centers_mall_shipping_center_id_IDX` (`mall_shipping_center_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='솔루션 정보 - 입출고 주소지';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mm_api_shp_shipping_centers_change_logs`
--

DROP TABLE IF EXISTS `mm_api_shp_shipping_centers_change_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_api_shp_shipping_centers_change_logs` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `mall_shipping_center_id` bigint NOT NULL,
  `change_keys` varchar(45) DEFAULT NULL,
  `change_label` varchar(100) DEFAULT NULL,
  `change_values` varchar(45) DEFAULT NULL,
  `before_value` varchar(45) DEFAULT NULL,
  `after_value` varchar(45) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mm_api_shp_shipping_rules`
--

DROP TABLE IF EXISTS `mm_api_shp_shipping_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_api_shp_shipping_rules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `mall_shipping_rule_id` bigint NOT NULL COMMENT '솔루션 배송정책 id',
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '배송정책명',
  `middle_user_id` int DEFAULT NULL,
  `seller_id` bigint DEFAULT NULL COMMENT '셀러 id',
  `is_basic_template` tinyint(1) DEFAULT NULL COMMENT '기본배송정책 여부 (0:일반배송정책, 1:기본배송정책)',
  `shipping_type` tinyint unsigned NOT NULL DEFAULT '10' COMMENT '배송구분 (10:택배 30:주문제작 40:해외배송)',
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
  `delivery_div` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '등록자',
  `updated_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '수정자',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '등록시간',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '수정시간',
  `deleted_at` datetime DEFAULT NULL COMMENT '삭제일시 (softDeletes)',
  PRIMARY KEY (`id`),
  KEY `mm_shp_shipping_rules_selleruserid_index` (`seller_id`),
  KEY `mm_shp_shipping_rules_deletedat_index` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='배송정책 테이블';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mm_api_shp_shipping_rules_change_logs`
--

DROP TABLE IF EXISTS `mm_api_shp_shipping_rules_change_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mm_api_shp_shipping_rules_change_logs` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `mall_shipping_rule_id` bigint NOT NULL,
  `change_keys` varchar(45) DEFAULT NULL,
  `change_label` varchar(100) DEFAULT NULL,
  `change_values` varchar(45) DEFAULT NULL,
  `before_value` varchar(45) DEFAULT NULL,
  `after_value` varchar(45) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='배송정책 변경 로그';
/*!40101 SET character_set_client = @saved_cs_client */;

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
  `logo_alt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '브랜드로고 대체 텍스트',
  `pc_top_image_alt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '브랜드 상단 이미지 파일 대체텍스트',
  `mobile_top_image_alt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '브랜드 상단이미지 대체 텍스트(mobile)',
  `main_text` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '메인문구',
  `sub_text` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '서브문구',
  `is_designer_regist` tinyint(1) NOT NULL DEFAULT '0' COMMENT '디자이너 등록여부',
  `designer_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '디자이너 이름',
  `designer_image_alt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '디자이너 이미지 대체텍스트',
  `introduce` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '브랜드 소개',
  `kakao_channel_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '카카오 채널 URL',
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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-28  9:27:32
