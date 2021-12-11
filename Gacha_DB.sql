-- MySQL dump 10.13  Distrib 8.0.27, for Linux (x86_64)
--
-- Host: localhost    Database: GachaProj_dev
-- ------------------------------------------------------
-- Server version	8.0.27-0ubuntu0.20.04.1

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
-- Table structure for table `ar_internal_metadata`
--

DROP TABLE IF EXISTS `ar_internal_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ar_internal_metadata`
--

LOCK TABLES `ar_internal_metadata` WRITE;
/*!40000 ALTER TABLE `ar_internal_metadata` DISABLE KEYS */;
INSERT INTO `ar_internal_metadata` VALUES ('environment','development','2021-12-06 07:56:03.893611','2021-12-06 07:56:03.893611');
/*!40000 ALTER TABLE `ar_internal_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banneritems`
--

DROP TABLE IF EXISTS `banneritems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `banneritems` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `banner_id` bigint NOT NULL,
  `item_id` bigint NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_banneritems_on_banner_id` (`banner_id`),
  KEY `index_banneritems_on_item_id` (`item_id`),
  CONSTRAINT `fk_rails_20ccfa036c` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`),
  CONSTRAINT `fk_rails_e3375d2953` FOREIGN KEY (`banner_id`) REFERENCES `banners` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banneritems`
--

LOCK TABLES `banneritems` WRITE;
/*!40000 ALTER TABLE `banneritems` DISABLE KEYS */;
INSERT INTO `banneritems` VALUES (46,1,1,'2021-12-07 07:08:06.783462','2021-12-07 07:08:06.783462'),(47,1,2,'2021-12-07 07:08:25.933458','2021-12-07 07:08:25.933458'),(48,1,3,'2021-12-07 07:08:31.676147','2021-12-07 07:08:31.676147'),(49,1,4,'2021-12-07 07:08:38.090420','2021-12-07 07:08:38.090420'),(50,1,5,'2021-12-07 07:08:44.008037','2021-12-07 07:08:44.008037'),(51,1,6,'2021-12-07 07:08:49.262172','2021-12-07 07:08:49.262172'),(52,1,7,'2021-12-07 07:08:55.536709','2021-12-07 07:08:55.536709'),(53,1,8,'2021-12-07 07:09:01.846143','2021-12-07 07:09:01.846143'),(54,1,9,'2021-12-07 07:09:07.326430','2021-12-07 07:09:07.326430'),(55,1,10,'2021-12-07 07:09:12.626830','2021-12-07 07:09:12.626830'),(56,1,11,'2021-12-07 07:09:17.698186','2021-12-07 07:09:17.698186'),(57,1,12,'2021-12-07 07:09:22.996780','2021-12-07 07:09:22.996780'),(58,1,13,'2021-12-07 07:09:29.674257','2021-12-07 07:09:29.674257'),(59,1,14,'2021-12-07 07:09:35.123702','2021-12-07 07:09:35.123702'),(60,1,15,'2021-12-07 07:09:40.358362','2021-12-07 07:09:40.358362'),(61,1,16,'2021-12-07 07:09:45.727063','2021-12-07 07:09:45.727063'),(62,1,17,'2021-12-07 07:09:51.449682','2021-12-07 07:09:51.449682'),(63,1,18,'2021-12-07 07:09:57.855226','2021-12-07 07:09:57.855226'),(64,1,19,'2021-12-07 07:10:03.134143','2021-12-07 07:10:03.134143'),(65,1,20,'2021-12-07 07:10:09.194442','2021-12-07 07:10:09.194442'),(66,1,21,'2021-12-07 07:10:17.061148','2021-12-07 07:10:17.061148'),(67,1,22,'2021-12-07 07:10:22.456173','2021-12-07 07:10:22.456173'),(68,1,23,'2021-12-07 07:10:28.519314','2021-12-07 07:10:28.519314'),(69,1,24,'2021-12-07 07:10:34.205213','2021-12-07 07:10:34.205213'),(70,1,25,'2021-12-07 07:10:40.123256','2021-12-07 07:10:40.123256'),(71,1,26,'2021-12-07 07:10:45.557794','2021-12-07 07:10:45.557794'),(72,1,27,'2021-12-07 07:10:50.974172','2021-12-07 07:10:50.974172'),(73,1,28,'2021-12-07 07:10:56.713482','2021-12-07 07:10:56.713482'),(74,1,29,'2021-12-07 07:11:02.365576','2021-12-07 07:11:02.365576'),(75,1,30,'2021-12-07 07:11:09.448123','2021-12-07 07:11:09.448123'),(76,1,31,'2021-12-07 07:11:16.072078','2021-12-07 07:11:16.072078'),(77,1,32,'2021-12-07 07:11:22.686555','2021-12-07 07:11:22.686555'),(78,1,33,'2021-12-07 07:11:28.360531','2021-12-07 07:11:28.360531'),(79,1,34,'2021-12-07 07:11:36.365642','2021-12-07 07:11:36.365642'),(80,1,35,'2021-12-07 07:11:43.058156','2021-12-07 07:11:43.058156'),(81,1,36,'2021-12-07 07:11:49.649103','2021-12-07 07:11:49.649103'),(82,1,37,'2021-12-07 07:11:56.156365','2021-12-07 07:11:56.156365'),(83,1,38,'2021-12-07 07:12:02.290779','2021-12-07 07:12:02.290779'),(84,1,39,'2021-12-07 07:12:09.104649','2021-12-07 07:12:09.104649'),(85,1,40,'2021-12-07 07:12:15.340424','2021-12-07 07:12:15.340424'),(86,1,41,'2021-12-07 07:12:22.210882','2021-12-07 07:12:22.210882'),(87,1,42,'2021-12-07 07:12:27.825428','2021-12-07 07:12:27.825428'),(88,1,43,'2021-12-07 07:12:33.148573','2021-12-07 07:12:33.148573'),(89,1,44,'2021-12-07 07:12:40.384961','2021-12-07 07:12:40.384961');
/*!40000 ALTER TABLE `banneritems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banners`
--

DROP TABLE IF EXISTS `banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `banners` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `bannername` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banners`
--

LOCK TABLES `banners` WRITE;
/*!40000 ALTER TABLE `banners` DISABLE KEYS */;
INSERT INTO `banners` VALUES (1,'Blue Archive','2021-12-06 13:42:28.117091','2021-12-06 13:42:28.117091');
/*!40000 ALTER TABLE `banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `items` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `itemname` varchar(255) DEFAULT NULL,
  `rarity` varchar(255) DEFAULT NULL,
  `item_img_url` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES (1,'Hoshino','SSR','Hoshino.png','2021-12-07 05:23:41.618341','2021-12-07 05:23:41.618341'),(2,'Shiroko','SSR','Shiroko.png','2021-12-07 05:24:25.685894','2021-12-07 05:24:25.685894'),(3,'Aru','SSR','Aru.png','2021-12-07 05:25:03.214034','2021-12-07 05:25:03.214034'),(4,'Eimi','SSR','Eimi.png','2021-12-07 05:25:30.804576','2021-12-07 05:25:30.804576'),(5,'Haruna','SSR','Haruna.png','2021-12-07 05:25:51.757649','2021-12-07 05:25:51.757649'),(6,'Hifumi','SSR','Hifumi.png','2021-12-07 05:26:20.036592','2021-12-07 05:26:20.036592'),(7,'Hina','SSR','Hina.png','2021-12-07 05:26:50.431425','2021-12-07 05:26:50.431425'),(8,'Iori','SSR','Iori.png','2021-12-07 05:27:10.853385','2021-12-07 05:27:10.853385'),(9,'Maki','SSR','Maki.png','2021-12-07 05:27:24.410626','2021-12-07 05:27:24.410626'),(10,'Neru','SSR','Neru.png','2021-12-07 05:27:56.743617','2021-12-07 05:27:56.743617'),(11,'Izumi','SSR','Izumi.png','2021-12-07 05:28:22.937994','2021-12-07 05:28:22.937994'),(12,'Shun','SSR','Shun.png','2021-12-07 05:28:57.477110','2021-12-07 05:28:57.477110'),(13,'Sumire','SSR','Sumire.png','2021-12-07 05:29:24.324086','2021-12-07 05:29:24.324086'),(14,'Tsurugi','SSR','Tsurugi.png','2021-12-07 05:29:53.947498','2021-12-07 05:29:53.947498'),(15,'Hibiki','SSR','Hibiki.png','2021-12-07 05:30:06.951228','2021-12-07 05:30:06.951228'),(16,'Karin','SSR','Karin.png','2021-12-07 05:30:23.369461','2021-12-07 05:30:23.369461'),(17,'Saya','SSR','Saya.png','2021-12-07 05:30:44.753066','2021-12-07 05:30:44.753066'),(18,'Akane','SR','Akane.png','2021-12-07 05:31:27.743399','2021-12-07 05:31:27.743399'),(19,'Chise','SR','Chise.png','2021-12-07 05:31:51.330257','2021-12-07 05:31:51.330257'),(20,'Akari','SR','Akari.png','2021-12-07 05:32:14.694378','2021-12-07 05:32:14.694378'),(21,'Hasumi','SR','Hasumi.png','2021-12-07 05:32:44.979742','2021-12-07 05:32:44.979742'),(22,'Kayoko','SR','Kayoko.png','2021-12-07 05:33:04.581438','2021-12-07 05:33:04.581438'),(23,'Mutsuki','SR','Mutsuki.png','2021-12-07 05:33:30.752044','2021-12-07 05:33:30.752044'),(24,'Junko','SR','Junko.png','2021-12-07 05:33:58.546103','2021-12-07 05:33:58.546103'),(25,'Serika','SR','Serika.png','2021-12-07 05:34:21.632193','2021-12-07 05:34:21.632193'),(26,'Tsubaki','SR','Tsubaki.png','2021-12-07 05:34:50.619995','2021-12-07 05:34:50.619995'),(27,'Yuuka','SR','Yuuka.png','2021-12-07 05:35:09.095687','2021-12-07 05:35:09.095687'),(28,'Airi','SR','Airi.png','2021-12-07 05:35:31.399827','2021-12-07 05:35:31.399827'),(29,'Fuuka','SR','Fuuka.png','2021-12-07 05:35:57.547937','2021-12-07 05:37:39.855067'),(30,'Hanae','SR','Hanae.png','2021-12-07 05:36:40.246090','2021-12-07 05:37:48.355457'),(31,'Utaha','SR','Utaha.png','2021-12-07 05:36:55.810572','2021-12-07 05:37:55.380487'),(32,'Hare','SR','Hare.png','2021-12-07 05:37:16.930925','2021-12-07 05:37:16.930925'),(33,'Ayane','SR','Ayane.png','2021-12-07 05:38:31.272742','2021-12-07 05:38:31.272742'),(34,'Haruka','R','Haruka.png','2021-12-07 05:39:01.607583','2021-12-07 05:39:01.607583'),(35,'Asuna','R','Asuna.png','2021-12-07 05:39:20.687492','2021-12-07 05:39:20.687492'),(36,'Kotori','R','Kotori.png','2021-12-07 05:39:32.535523','2021-12-07 05:39:32.535523'),(37,'Suzumi','R','Suzumi.png','2021-12-07 05:39:51.442296','2021-12-07 05:39:51.442296'),(38,'Pina','R','Pina.png','2021-12-07 05:40:05.827338','2021-12-07 05:40:05.827338'),(39,'Chinatsu','R','Chinatsu.png','2021-12-07 05:40:39.994096','2021-12-07 05:40:39.994096'),(40,'Kotama','R','Kotama.png','2021-12-07 05:41:02.738930','2021-12-07 05:41:02.738930'),(41,'Juri','R','Juri.png','2021-12-07 05:41:13.903745','2021-12-07 05:41:13.903745'),(42,'Serina','R','Serina.png','2021-12-07 05:41:38.974197','2021-12-07 05:41:38.974197'),(43,'Shimiko','R','Shimiko.png','2021-12-07 05:42:00.663790','2021-12-07 05:42:00.663790'),(44,'Yoshimi','R','Yoshimi.png','2021-12-07 05:42:23.633562','2021-12-07 05:42:23.633562');
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `likes` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `banner_id` bigint NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_likes_on_user_id` (`user_id`),
  KEY `index_likes_on_banner_id` (`banner_id`),
  CONSTRAINT `fk_rails_1e09b5dabf` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `fk_rails_95c0bf3cbc` FOREIGN KEY (`banner_id`) REFERENCES `banners` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes`
--

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
/*!40000 ALTER TABLE `likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ownitems`
--

DROP TABLE IF EXISTS `ownitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ownitems` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `item_id` bigint NOT NULL,
  `sellstatus` tinyint(1) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_ownitems_on_user_id` (`user_id`),
  KEY `index_ownitems_on_item_id` (`item_id`),
  CONSTRAINT `fk_rails_75f86ec0bc` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`),
  CONSTRAINT `fk_rails_99398ee2ea` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=997 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ownitems`
--

LOCK TABLES `ownitems` WRITE;
/*!40000 ALTER TABLE `ownitems` DISABLE KEYS */;
/*!40000 ALTER TABLE `ownitems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `redeemcodes`
--

DROP TABLE IF EXISTS `redeemcodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `redeemcodes` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `creditAmount` int DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `redeemcodes`
--

LOCK TABLES `redeemcodes` WRITE;
/*!40000 ALTER TABLE `redeemcodes` DISABLE KEYS */;
INSERT INTO `redeemcodes` VALUES (7,'redeemcode1',12000,1,'2021-12-11 13:18:09.000000','2021-12-11 13:18:09.000000',NULL),(8,'redeemcode2',12000,1,'2021-12-11 13:18:45.000000','2021-12-11 13:18:45.000000',NULL),(9,'redeemcode3',12000,1,'2021-12-11 13:18:50.000000','2021-12-11 13:18:50.000000',NULL),(10,'redeemcode4',12000,1,'2021-12-11 13:18:54.000000','2021-12-11 13:18:54.000000',NULL),(11,'redeemcode5',12000,1,'2021-12-11 13:18:57.000000','2021-12-11 13:18:57.000000',NULL);
/*!40000 ALTER TABLE `redeemcodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20211206075553'),('20211206075957'),('20211206080116'),('20211206080252'),('20211206081150'),('20211206081959'),('20211206083053'),('20211206083230'),('20211206084719'),('20211207161221');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `buyeruserID` int DEFAULT NULL,
  `selleruserID` int DEFAULT NULL,
  `price` int DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password_digest` varchar(255) DEFAULT NULL,
  `credit` int DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-11 13:28:37
