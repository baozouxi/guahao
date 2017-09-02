-- MySQL dump 10.13  Distrib 5.6.35, for osx10.9 (x86_64)
--
-- Host: localhost    Database: guahao
-- ------------------------------------------------------
-- Server version	5.6.35

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
-- Table structure for table `access_nodes`
--

DROP TABLE IF EXISTS `access_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_nodes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nickname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `admin_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `access_nodes`
--

LOCK TABLES `access_nodes` WRITE;
/*!40000 ALTER TABLE `access_nodes` DISABLE KEYS */;
INSERT INTO `access_nodes` VALUES (1,'patient_add','新增患者','2017-08-14 09:35:43',1,1),(2,'patient_edit','修改患者','2017-08-14 09:36:29',1,1),(3,'patient_del','删除患者','2017-08-14 09:36:43',1,1),(4,'patient_info','患者信息','2017-08-14 09:43:15',1,1),(5,'book_add','新增预约','2017-08-15 01:16:22',1,2),(7,'book_edit','编辑预约','2017-08-15 01:18:03',1,2),(8,'book_del','删除预约','2017-08-15 01:24:00',1,2),(9,'book_info','预约信息','2017-08-15 01:24:14',1,2),(10,'dialog_add','新增对话','2017-08-15 01:28:06',1,3),(11,'dialog_edit','编辑对话','2017-08-15 01:28:53',1,3),(12,'dialog_del','删除对话','2017-08-15 01:29:25',1,3),(13,'patient_export','导出患者信息','2017-08-15 01:36:25',1,1),(14,'book_export','导出预约信息','2017-08-15 01:47:29',1,2),(15,'take_show','显示消费','2017-08-15 02:04:41',1,5),(16,'take_edit','编辑消费','2017-08-15 02:06:46',1,5),(17,'take_add','新增消费','2017-08-15 02:08:01',1,5),(18,'take_del','删除消费','2017-08-15 02:08:46',1,5),(19,'rank_add','新增竞价','2017-08-15 02:09:53',1,4),(20,'rank_edit','编辑竞价','2017-08-15 02:11:04',1,4),(21,'rank_del','删除竞价','2017-08-15 02:11:20',1,4),(22,'track_edit','编辑患者回访','2017-08-15 02:18:49',1,6),(23,'track_add','新增患者回访','2017-08-15 02:19:17',1,6),(24,'track_del','删除患者回访','2017-08-15 02:19:42',1,6),(25,'consult_add','新增咨询','2017-08-15 02:40:36',1,8),(26,'consult_edit','编辑咨询','2017-08-15 02:40:49',1,8),(27,'consult_del','删除咨询','2017-08-15 02:41:01',1,8),(28,'consult_info','显示咨询信息','2017-08-15 02:41:34',1,8),(29,'tel_consult_add','新增电话咨询','2017-08-15 02:44:53',1,9),(30,'tel_consult_edit','编辑电话咨询','2017-08-15 02:45:15',1,9),(31,'tel_consult_del','删除电话咨询','2017-08-15 02:45:33',1,9),(32,'dialog_info','显示对话信息','2017-08-15 02:47:40',1,3),(33,'rank_info','显示竞价信息','2017-08-15 02:48:13',1,4),(34,'book_track_add','新增预约回访','2017-08-18 03:12:21',1,10),(35,'book_track_edit','编辑预约回访','2017-08-18 03:12:37',1,10),(36,'book_track_del','删除预约回访','2017-08-18 03:13:09',1,10),(37,'sms_add','发送短信','2017-08-18 03:15:01',1,11),(38,'sms_del','删除短信','2017-08-18 03:17:01',1,11),(39,'setting','高级设置','2017-08-21 03:28:05',1,12);
/*!40000 ALTER TABLE `access_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pass` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads`
--

DROP TABLE IF EXISTS `ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ads` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_id` int(11) NOT NULL,
  `is_use` tinyint(4) NOT NULL DEFAULT '1',
  `add_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
/*!40000 ALTER TABLE `ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appointments`
--

DROP TABLE IF EXISTS `appointments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appointments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` tinyint(3) unsigned NOT NULL,
  `gender` char(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` char(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dis` smallint(5) unsigned NOT NULL,
  `way` smallint(5) unsigned NOT NULL,
  `postdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `filepath` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `province` int(11) NOT NULL,
  `city` int(11) NOT NULL,
  `town` int(11) NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qq` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weixin` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_id` int(10) unsigned NOT NULL,
  `add_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `res` int(10) unsigned NOT NULL,
  `undate` tinyint(4) NOT NULL DEFAULT '0',
  `untrack` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `is_hospital` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `medical_num` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `real_doctor` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointments`
--

LOCK TABLES `appointments` WRITE;
/*!40000 ALTER TABLE `appointments` DISABLE KEYS */;
/*!40000 ALTER TABLE `appointments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chatlogs`
--

DROP TABLE IF EXISTS `chatlogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chatlogs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `book_id` int(11) NOT NULL,
  `log` text COLLATE utf8mb4_unicode_ci,
  `add_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chatlogs`
--

LOCK TABLES `chatlogs` WRITE;
/*!40000 ALTER TABLE `chatlogs` DISABLE KEYS */;
/*!40000 ALTER TABLE `chatlogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consults`
--

DROP TABLE IF EXISTS `consults`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `consults` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` smallint(5) unsigned NOT NULL,
  `gender` tinyint(3) unsigned NOT NULL,
  `phone` varchar(13) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dis` int(10) unsigned NOT NULL,
  `way` int(10) unsigned NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `filepath` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `province` smallint(5) unsigned NOT NULL,
  `city` smallint(5) unsigned NOT NULL,
  `town` smallint(5) unsigned NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_id` int(10) unsigned NOT NULL,
  `track_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `add_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consults`
--

LOCK TABLES `consults` WRITE;
/*!40000 ALTER TABLE `consults` DISABLE KEYS */;
/*!40000 ALTER TABLE `consults` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dialogs`
--

DROP TABLE IF EXISTS `dialogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dialogs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `add_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date` datetime NOT NULL,
  `data` blob NOT NULL,
  `admin_id` int(11) NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dialogs`
--

LOCK TABLES `dialogs` WRITE;
/*!40000 ALTER TABLE `dialogs` DISABLE KEYS */;
/*!40000 ALTER TABLE `dialogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diseases`
--

DROP TABLE IF EXISTS `diseases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diseases` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `add_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `admin_id` int(11) NOT NULL,
  `is_use` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diseases`
--

LOCK TABLES `diseases` WRITE;
/*!40000 ALTER TABLE `diseases` DISABLE KEYS */;
/*!40000 ALTER TABLE `diseases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctors`
--

DROP TABLE IF EXISTS `doctors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doctors` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dis_id` int(11) NOT NULL DEFAULT '0',
  `admin_id` int(11) NOT NULL,
  `is_use` tinyint(4) NOT NULL DEFAULT '1',
  `sort` int(11) NOT NULL DEFAULT '0',
  `add_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctors`
--

LOCK TABLES `doctors` WRITE;
/*!40000 ALTER TABLE `doctors` DISABLE KEYS */;
/*!40000 ALTER TABLE `doctors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `files`
--

DROP TABLE IF EXISTS `files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `files` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_id` int(11) NOT NULL,
  `size` int(11) NOT NULL,
  `origin_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hash` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files`
--

LOCK TABLES `files` WRITE;
/*!40000 ALTER TABLE `files` DISABLE KEYS */;
/*!40000 ALTER TABLE `files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `list_fields`
--

DROP TABLE IF EXISTS `list_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `list_fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `admin_id` int(11) NOT NULL,
  `fields` blob NOT NULL,
  `type` tinyint(4) NOT NULL COMMENT '分类：1为预约，2为患者',
  `add_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `list_fields`
--

LOCK TABLES `list_fields` WRITE;
/*!40000 ALTER TABLE `list_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `list_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=349 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (313,'2017_05_04_111927_create_table_patients',1),(314,'2017_05_04_142559_create_admins_table',1),(315,'2017_05_04_151240_add_columns_to_admins',1),(316,'2017_05_08_184035_Create_Table_Appointment',1),(317,'2017_05_12_093012_Creat_Table_ChatLog',1),(318,'2017_05_15_112350_Add_column_undata_to_appointments',1),(319,'2017_05_15_170540_Update_chatlog_Column_log',1),(320,'2017_05_16_104738_Create_Table_Track',1),(321,'2017_05_16_173244_Add_column_untrack_to_appointments',1),(322,'2017_05_17_173456_Add_Column_medical_num_to_appointments',1),(323,'2017_05_20_160732_Create_table_PatientTracks',1),(324,'2017_05_31_095255_Create_table_takes',1),(325,'2017_06_01_172610_add_BookId_to_patients',1),(326,'2017_06_02_103008_Change_ads_to_patients',1),(327,'2017_06_03_115120_Create_table_consults',1),(328,'2017_06_03_154024_Add_address_to_consults',1),(329,'2017_06_05_095007_Create_table_telConsults',1),(330,'2017_06_05_170118_Create_table_dialogs',1),(331,'2017_06_26_092258_Create_table_sms',1),(332,'2017_06_29_162036_Create_table_diseases',1),(333,'2017_07_01_120008_Create_table_doctors',1),(334,'2017_07_01_145952_Create_table_ways',1),(335,'2017_07_03_135901_Create_table_Users',1),(336,'2017_07_04_094356_Create_table_roles',1),(337,'2017_07_07_090902_Create_table_navs',1),(338,'2017_07_07_112422_Create_table_Role_nav',1),(339,'2017_07_07_174018_Create_table_access_nodes',1),(340,'2017_07_08_094654_Create_table_node_group',1),(341,'2017_07_12_135118_Add_column_is_setting_to_navs',1),(342,'2017_07_13_111045_Create_table_ads',1),(343,'2017_07_13_161548_Add_column_un_track_to_patient_tracks',1),(344,'2017_07_21_174536_Change_column_disease_to_Appointment',1),(345,'2017_07_26_150116_Create_table_ranks',1),(346,'2017_07_26_155825_Create_table_rank_records',1),(347,'2017_07_31_133843_Create_table_list_fields',1),(348,'2017_08_07_144400_Create_table_files',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `navs`
--

DROP TABLE IF EXISTS `navs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `navs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '0',
  `is_use` tinyint(4) NOT NULL DEFAULT '1',
  `add_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_setting` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `navs`
--

LOCK TABLES `navs` WRITE;
/*!40000 ALTER TABLE `navs` DISABLE KEYS */;
INSERT INTO `navs` VALUES (1,'患者管理','/patient','Ķ',0,0,1,'2017-08-14 08:36:38',0),(2,'预约管理','/book','Ĵ',0,0,1,'2017-08-14 08:39:55',0),(3,'对话管理','/dialog','İ',0,0,1,'2017-08-14 08:40:52',0),(4,'竞价管理','/rank-record','ő',0,0,1,'2017-08-14 08:41:27',0),(5,'用户管理','/user','ĸ',0,0,1,'2017-08-14 08:42:20',1),(6,'回访记录','/patienttrack','į',1,0,1,'2017-08-14 08:43:15',0),(7,'消费记录','/take','Đ',1,0,1,'2017-08-14 08:44:19',0),(8,'患者报表','/patient/report','Ő',1,0,1,'2017-08-14 08:44:53',0),(9,'患者统计','/patient/statistics/list','ŏ',1,0,1,'2017-08-14 08:45:27',0),(10,'消费统计','/take/statistics/list','Ľ',1,0,1,'2017-08-14 08:46:00',0),(11,'回访记录','/booktrack','į',2,0,1,'2017-08-14 08:47:03',0),(13,'预约报表','/book/report/list','Ő',2,0,1,'2017-08-14 08:48:53',0),(14,'预约报表','/book/report/list','Ő',2,0,1,'2017-08-14 08:49:24',0),(15,'对话报表','/dialog/sheet/list','Ő',3,0,1,'2017-08-14 08:50:14',0),(16,'对话统计','/dialog/statis/list','ŏ',3,0,1,'2017-08-14 08:50:55',0),(17,'竞价报表','/rank/report/list','Ő',4,0,1,'2017-08-14 08:51:25',0),(18,'竞价统计','/rank/statistics/list','ŏ',4,0,1,'2017-08-14 08:51:54',0),(19,'用户组管理','/role','ĵ',5,0,1,'2017-08-14 08:52:34',0),(20,'咨询记录','/consult','Ĳ',0,0,1,'2017-08-14 09:53:05',0),(21,'电话记录','/tel-consult','ĕ',0,0,1,'2017-08-14 09:53:31',0),(22,'回拨记录','/recall','Ĕ',0,0,1,'2017-08-14 09:54:11',0),(23,'短信记录','/sms','ė',0,0,1,'2017-08-14 09:54:43',0),(24,'上传记录','/upload/list','ū',0,0,1,'2017-08-14 09:55:12',0),(25,'病种管理','/disease','Ĉ',0,0,1,'2017-08-14 09:56:14',1),(26,'医生管理','/doctor','ō',0,0,1,'2017-08-14 09:56:59',1),(27,'途径管理','/way','Ń',0,0,1,'2017-08-14 09:57:30',1),(28,'媒介管理','/ad','ě',0,0,1,'2017-08-14 09:58:31',1),(29,'导航菜单','/nav','Ɔ',0,0,1,'2017-08-14 09:59:32',1),(30,'权限节点','/node','Ɔ',0,0,1,'2017-08-14 10:00:09',1);
/*!40000 ALTER TABLE `navs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `node_group`
--

DROP TABLE IF EXISTS `node_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `node_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `admin_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `node_group`
--

LOCK TABLES `node_group` WRITE;
/*!40000 ALTER TABLE `node_group` DISABLE KEYS */;
INSERT INTO `node_group` VALUES (1,'患者管理','2017-08-14 09:35:08',1),(2,'预约管理','2017-08-15 01:14:53',1),(3,'对话管理','2017-08-15 01:26:38',1),(4,'竞价管理','2017-08-15 01:32:01',1),(5,'消费管理','2017-08-15 01:34:00',1),(6,'患者回访管理','2017-08-15 02:17:55',1),(8,'咨询记录','2017-08-15 02:39:12',1),(9,'电话咨询管理','2017-08-15 02:43:07',1),(10,'预约回访管理','2017-08-18 03:06:09',1),(11,'短信功能','2017-08-18 03:14:44',1),(12,'高级设置（开启后可对网站功能进行设置)','2017-08-21 03:27:39',1);
/*!40000 ALTER TABLE `node_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient_tracks`
--

DROP TABLE IF EXISTS `patient_tracks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patient_tracks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `next_time` datetime NOT NULL,
  `admin_id` int(11) NOT NULL,
  `filepath` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `untrack` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_tracks`
--

LOCK TABLES `patient_tracks` WRITE;
/*!40000 ALTER TABLE `patient_tracks` DISABLE KEYS */;
/*!40000 ALTER TABLE `patient_tracks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patients`
--

DROP TABLE IF EXISTS `patients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` smallint(6) NOT NULL,
  `gender` tinyint(4) NOT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dis` int(11) NOT NULL,
  `dep` int(11) NOT NULL,
  `ads` int(10) unsigned NOT NULL DEFAULT '0',
  `province` smallint(6) NOT NULL,
  `city` smallint(6) NOT NULL,
  `town` smallint(6) NOT NULL,
  `medical_num` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `content` text COLLATE utf8mb4_unicode_ci,
  `admin_id` int(11) NOT NULL,
  `book_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patients`
--

LOCK TABLES `patients` WRITE;
/*!40000 ALTER TABLE `patients` DISABLE KEYS */;
/*!40000 ALTER TABLE `patients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rank_records`
--

DROP TABLE IF EXISTS `rank_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rank_records` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rank_date` datetime NOT NULL,
  `cost` int(11) NOT NULL,
  `click` int(11) NOT NULL,
  `show_times` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `rank_way` int(11) NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `add_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rank_records`
--

LOCK TABLES `rank_records` WRITE;
/*!40000 ALTER TABLE `rank_records` DISABLE KEYS */;
/*!40000 ALTER TABLE `rank_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ranks`
--

DROP TABLE IF EXISTS `ranks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ranks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_id` int(11) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  `is_use` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ranks`
--

LOCK TABLES `ranks` WRITE;
/*!40000 ALTER TABLE `ranks` DISABLE KEYS */;
/*!40000 ALTER TABLE `ranks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_with_nav`
--

DROP TABLE IF EXISTS `role_with_nav`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_with_nav` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `nodes` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `admin_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_with_nav`
--

LOCK TABLES `role_with_nav` WRITE;
/*!40000 ALTER TABLE `role_with_nav` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_with_nav` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `nodes` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_id` int(11) NOT NULL,
  `type` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms`
--

DROP TABLE IF EXISTS `sms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_id` int(11) NOT NULL,
  `error` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `send_status` tinyint(4) NOT NULL DEFAULT '0',
  `add_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `send_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms`
--

LOCK TABLES `sms` WRITE;
/*!40000 ALTER TABLE `sms` DISABLE KEYS */;
/*!40000 ALTER TABLE `sms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `takes`
--

DROP TABLE IF EXISTS `takes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `takes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dose` int(10) unsigned NOT NULL,
  `doctor` int(10) unsigned NOT NULL,
  `check_cost` int(10) unsigned NOT NULL,
  `treatment_cost` int(10) unsigned NOT NULL,
  `drug_cost` int(10) unsigned NOT NULL,
  `hospitalization_cost` int(10) unsigned NOT NULL,
  `patient_id` int(10) unsigned NOT NULL,
  `admin_id` int(10) unsigned NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `add_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `takes`
--

LOCK TABLES `takes` WRITE;
/*!40000 ALTER TABLE `takes` DISABLE KEYS */;
/*!40000 ALTER TABLE `takes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tel_consults`
--

DROP TABLE IF EXISTS `tel_consults`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tel_consults` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` smallint(5) unsigned NOT NULL,
  `gender` tinyint(3) unsigned NOT NULL,
  `phone` varchar(13) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dis` int(10) unsigned NOT NULL,
  `way` int(10) unsigned NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `filepath` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `province` smallint(5) unsigned NOT NULL,
  `city` smallint(5) unsigned NOT NULL,
  `town` smallint(5) unsigned NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_id` int(10) unsigned NOT NULL,
  `availability` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `track_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `add_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tel_consults`
--

LOCK TABLES `tel_consults` WRITE;
/*!40000 ALTER TABLE `tel_consults` DISABLE KEYS */;
/*!40000 ALTER TABLE `tel_consults` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracks`
--

DROP TABLE IF EXISTS `tracks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tracks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `book_id` int(10) unsigned NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `add_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `next_time` timestamp NULL DEFAULT NULL,
  `filepath` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tracks_book_id_index` (`book_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracks`
--

LOCK TABLES `tracks` WRITE;
/*!40000 ALTER TABLE `tracks` DISABLE KEYS */;
/*!40000 ALTER TABLE `tracks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qq` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weixin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login_ip` int(11) DEFAULT NULL,
  `last_login_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_new` tinyint(4) NOT NULL DEFAULT '1',
  `role_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'暴走熙','13228595558','f5a6017e4cc398a4ae5c4b15a782ca0f2c32513f','13228595558','253120625','13228595558',NULL,'2017-08-12 02:35:27',1,0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ways`
--

DROP TABLE IF EXISTS `ways`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ways` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_use` tinyint(4) NOT NULL DEFAULT '1',
  `sort` int(11) NOT NULL DEFAULT '0',
  `admin_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ways`
--

LOCK TABLES `ways` WRITE;
/*!40000 ALTER TABLE `ways` DISABLE KEYS */;
/*!40000 ALTER TABLE `ways` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-09-02 10:17:05
