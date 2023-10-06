-- MySQL dump 10.13  Distrib 8.1.0, for Linux (x86_64)
--
-- Host: localhost    Database: coocon
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
-- Current Database: `coocon`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `coocon` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `coocon`;

--
-- Table structure for table `tb_vacct_inquiry`
--

DROP TABLE IF EXISTS `tb_vacct_inquiry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_vacct_inquiry` (
  `tr_date` char(8) NOT NULL COMMENT '요청일자 - YYYYMMDD',
  `seq` int unsigned NOT NULL COMMENT '일련번호 - 요청일자별로 일련번호 채번하여 셋팅',
  `bank_cd` char(3) NOT NULL COMMENT '가입자 은행 - 가입은행코드',
  `org_cd` varchar(10) NOT NULL COMMENT '기관코드 - 가입기관코드',
  `trn_bank_cd` char(3) NOT NULL COMMENT '입금은행코드',
  `trn_acct_no` varchar(16) NOT NULL COMMENT '입금계좌번호 - 입금은행계좌번호',
  `tr_amt` int DEFAULT '0' COMMENT '거래금액',
  `res_nm` varchar(20) DEFAULT NULL COMMENT '입금계좌 성명',
  `req_nm` varchar(20) DEFAULT NULL COMMENT '송금자 성명',
  `proc_flag` char(1) DEFAULT 'N' COMMENT '처리여부플래그 - '' ''N'' : 미전송 ''S'' : 송신, ''Y'' : 응답완료',
  `error_cd` char(4) DEFAULT NULL COMMENT '오류코드 - 0000 : 정상 , 이외는 오류',
  `send_datetime` char(14) DEFAULT NULL COMMENT '송신일자시간',
  `recv_datetime` char(14) DEFAULT NULL COMMENT '수신일자시간',
  `entry_date` char(14) DEFAULT NULL COMMENT '입력일자 - 등록일시 YYYYMMDDhhmmss',
  `entry_idno` varchar(20) DEFAULT NULL COMMENT '입력자',
  KEY `pk` (`tr_date`,`seq`,`bank_cd`,`org_cd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='계좌 수취조회';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_vacct_inquiry`
--

LOCK TABLES `tb_vacct_inquiry` WRITE;
/*!40000 ALTER TABLE `tb_vacct_inquiry` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_vacct_inquiry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_vacct_tran`
--

DROP TABLE IF EXISTS `tb_vacct_tran`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_vacct_tran` (
  `tr_date` char(8) NOT NULL COMMENT '요청일자 - YYYYMMDD',
  `seq` int unsigned NOT NULL COMMENT '일련번호 - 요청일자별로 일련번호 채번하여 셋팅',
  `bank_cd` char(3) NOT NULL COMMENT '가입자 은행 - 가입은행코드',
  `org_cd` varchar(10) NOT NULL COMMENT '기관코드 - 가입기관코드',
  `in_bank_cd` char(3) NOT NULL COMMENT '입금은행코드',
  `in_acct_no` varchar(16) NOT NULL COMMENT '입금계좌번호 - 입금은행계좌번호',
  `tr_amt` int DEFAULT '0' COMMENT '거래금액',
  `bal_sign` char(1) DEFAULT NULL COMMENT '잔액부호 - 거래후 잔액부호',
  `bal_amt` int DEFAULT '0' COMMENT '잔액 - 거래후 잔액',
  `res_nm` varchar(20) DEFAULT NULL COMMENT '입금계좌 성명',
  `req_nm` varchar(20) DEFAULT NULL COMMENT '송금자 성명',
  `proc_flag` char(1) DEFAULT 'N' COMMENT '처리여부플래그 - '' ''N'' : 미전송 ''S'' : 송신, ''Y'' : 응답완료',
  `error_cd` char(4) DEFAULT NULL COMMENT '오류코드 - 0000 : 정상 , 이외는 오류',
  `send_datetime` char(14) DEFAULT NULL COMMENT '송신일자시간',
  `recv_datetime` char(14) DEFAULT NULL COMMENT '수신일자시간',
  `entry_date` char(14) DEFAULT NULL COMMENT '입력일자 - 등록일시 YYYYMMDDhhmmss',
  `entry_idno` varchar(20) DEFAULT NULL COMMENT '입력자',
  `erp_proc_yn` char(1) DEFAULT 'N' COMMENT 'ERP적용여부 - ''Y'' : 적용, ''N'' : 미적용',
  KEY `pk` (`tr_date`,`seq`,`bank_cd`,`org_cd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='송금 요청 테이블';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_vacct_tran`
--

LOCK TABLES `tb_vacct_tran` WRITE;
/*!40000 ALTER TABLE `tb_vacct_tran` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_vacct_tran` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_vacct_tran_wait`
--

DROP TABLE IF EXISTS `tb_vacct_tran_wait`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_vacct_tran_wait` (
  `tr_date` char(8) NOT NULL COMMENT '요청일자 - YYYYMMDD',
  `seq` int unsigned NOT NULL COMMENT '일련번호 - 요청일자별로 일련번호 채번하여 셋팅',
  `bank_cd` char(3) NOT NULL COMMENT '가입자 은행 - 가입은행코드',
  `org_cd` varchar(10) NOT NULL COMMENT '기관코드 - 가입기관코드',
  `in_bank_cd` char(3) NOT NULL COMMENT '입금은행코드',
  `in_acct_no` varchar(16) NOT NULL COMMENT '입금계좌번호 - 입금은행계좌번호',
  `tr_amt` int DEFAULT '0' COMMENT '거래금액',
  `bal_sign` char(1) DEFAULT NULL COMMENT '잔액부호 - 거래후 잔액부호',
  `bal_amt` int DEFAULT '0' COMMENT '잔액 - 거래후 잔액',
  `res_nm` varchar(20) DEFAULT NULL COMMENT '입금계좌 성명',
  `req_nm` varchar(20) DEFAULT NULL COMMENT '송금자 성명',
  `proc_flag` char(1) DEFAULT 'N' COMMENT '처리여부플래그 - '' ''N'' : 미전송 ''S'' : 송신, ''Y'' : 응답완료',
  `error_cd` char(4) DEFAULT NULL COMMENT '오류코드 - 0000 : 정상 , 이외는 오류',
  `send_datetime` char(14) DEFAULT NULL COMMENT '송신일자시간',
  `recv_datetime` char(14) DEFAULT NULL COMMENT '수신일자시간',
  `entry_date` char(14) DEFAULT NULL COMMENT '입력일자 - 등록일시 YYYYMMDDhhmmss',
  `entry_idno` varchar(20) DEFAULT NULL COMMENT '입력자',
  `erp_proc_yn` char(1) DEFAULT 'N' COMMENT 'ERP적용여부 - ''Y'' : 적용, ''N'' : 미적용',
  KEY `pk` (`tr_date`,`seq`,`bank_cd`,`org_cd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='송금 요청 테이블(대기)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_vacct_tran_wait`
--

LOCK TABLES `tb_vacct_tran_wait` WRITE;
/*!40000 ALTER TABLE `tb_vacct_tran_wait` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_vacct_tran_wait` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-06  9:02:22
