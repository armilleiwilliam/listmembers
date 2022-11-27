-- MySQL dump 10.13  Distrib 8.0.29, for Linux (x86_64)
--
-- Host: localhost    Database: members_list
-- ------------------------------------------------------
-- Server version	8.0.31-0ubuntu0.20.04.1

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
-- Table structure for table `members_lists`
--

DROP TABLE IF EXISTS `members_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members_lists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_assignment` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `availability` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=153 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members_lists`
--

LOCK TABLES `members_lists` WRITE;
/*!40000 ALTER TABLE `members_lists` DISABLE KEYS */;
INSERT INTO `members_lists` VALUES (1,'WalOli','2022-11-23','2022-11-27 16:06:52','2022-11-27 17:01:35',1),(2,'HolDav','2022-11-30','2022-11-27 16:06:56','2022-11-27 16:06:56',1),(3,'PerSan','2022-11-30','2022-11-27 16:09:23','2022-11-27 17:08:12',1),(4,'PerThe','1996-06-11','2022-11-27 17:02:34','2022-11-27 17:02:34',1),(5,'PerFa','1992-04-10','2022-11-27 17:03:10','2022-11-27 17:03:10',1),(6,'WatSe','2020-07-08','2022-11-27 17:04:49','2022-11-27 17:04:49',1),(7,'WatCo','2020-08-08','2022-11-27 17:05:12','2022-11-27 17:05:12',1),(8,'WatLo','2022-02-24','2022-11-27 17:05:18','2022-11-27 17:05:44',1),(9,'WatKri','1991-05-28','2022-11-27 17:05:54','2022-11-27 17:05:54',1),(10,'MonAnn','2022-07-10','2022-11-27 17:06:08','2022-11-27 17:06:08',1),(11,'MonAm','1992-05-30','2022-11-27 17:06:21','2022-11-27 17:06:21',1),(12,'MonRia','2011-03-07','2022-11-27 17:06:24','2022-11-27 17:06:24',1),(13,'MonJo','2018-04-26','2022-11-27 17:06:31','2022-11-27 17:06:31',1),(14,'Patricia','1988-08-03','2022-11-27 17:06:34','2022-11-27 17:44:12',0),(15,'JuEli','1996-11-14','2022-11-27 17:06:37','2022-11-27 17:06:37',1),(16,'StoAng','2001-01-01','2022-11-27 17:44:42','2022-11-27 18:01:25',1),(17,'Desirae Carpenter','2022-12-21','2022-11-27 17:45:44','2022-11-27 17:46:19',1),(18,'JuPre','2022-11-11','2022-11-27 17:06:37','2022-11-27 17:06:37',1),(19,'JuPhilicia','2022-11-11','2022-11-27 17:06:37','2022-11-27 17:06:37',1),(20,'JuPhiJnr','2022-11-11','2022-11-27 17:06:37','2022-11-27 17:06:37',1),(21,'BowMi','2022-11-11',NULL,NULL,1),(22,'MonRi','2022-11-27','2022-11-27 17:57:46','2022-11-27 17:57:46',0),(23,'Tans','2022-11-27','2022-11-27 18:00:46','2022-11-27 18:00:52',1),(24,'WharKa','2022-11-27','2022-11-27 18:01:44','2022-11-27 18:01:44',1),(25,'LeoEle','2022-11-27','2022-11-27 18:02:23','2022-11-27 18:02:23',1),(26,'BraJac','2022-11-27','2022-11-27 18:02:40','2022-11-27 18:02:40',1),(27,'RosIso','2022-11-27','2022-11-27 18:02:51','2022-11-27 18:02:51',1),(28,'MonJam','2022-11-27','2022-11-27 18:03:09','2022-11-27 18:03:09',1),(29,'Jhoan','2022-11-27','2022-11-27 18:03:23','2022-11-27 18:03:23',1),(30,'VelAnd','2022-11-27','2022-11-27 18:03:36','2022-11-27 18:03:36',1),(31,'SmiRac','2022-11-27','2022-11-27 18:03:46','2022-11-27 18:03:46',1),(32,'GreEst','2022-11-27','2022-11-27 18:04:00','2022-11-27 18:04:00',1),(33,'QinHaKay','2022-11-27','2022-11-27 18:04:17','2022-11-27 18:04:17',1),(34,'SibBles','2022-11-27','2022-11-27 18:04:41','2022-11-27 18:04:41',1),(35,'TschBea','2022-11-27','2022-11-27 18:05:12','2022-11-27 18:05:12',1),(36,'ManLyb','2022-11-27','2022-11-27 18:05:30','2022-11-27 18:05:30',1),(37,'ManMar','2022-11-27','2022-11-27 18:05:37','2022-11-27 18:05:37',1),(38,'ManGab','2022-11-27','2022-11-27 18:05:49','2022-11-27 18:05:49',1),(39,'BowJan','2022-11-27','2022-11-27 18:06:55','2022-11-27 18:06:55',1),(40,'BowSol','2022-11-27','2022-11-27 18:07:06','2022-11-27 18:07:06',1),(41,'ConJef','2022-11-27','2022-11-27 18:07:12','2022-11-27 18:07:12',1),(42,'KirJil','2022-11-27','2022-11-27 18:07:21','2022-11-27 18:07:21',1),(43,'BaxEll','2022-11-27','2022-11-27 18:07:33','2022-11-27 18:07:33',1),(44,'BaxVin','2022-11-27','2022-11-27 18:07:39','2022-11-27 18:07:39',1),(45,'ParKen','2022-11-27','2022-11-27 18:07:49','2022-11-27 18:07:49',1),(46,'KleLor','2022-11-27','2022-11-27 18:08:00','2022-11-27 18:08:00',1),(47,'FerAla','2022-11-27','2022-11-27 18:08:09','2022-11-27 18:08:09',1),(48,'PIlNem','2022-11-27','2022-11-27 18:08:55','2022-11-27 18:08:55',1),(49,'PilFio','2022-11-27','2022-11-27 18:09:25','2022-11-27 18:09:25',1),(50,'PilHar','2022-11-27','2022-11-27 18:09:41','2022-11-27 18:09:41',1),(51,'FraNat','2022-11-27','2022-11-27 18:10:09','2022-11-27 18:10:09',1),(52,'FraChr','2022-11-27','2022-11-27 18:10:21','2022-11-27 18:10:21',1),(53,'FraSam','2022-11-27','2022-11-27 18:10:27','2022-11-27 18:10:27',1),(54,'LisEri','2022-11-27','2022-11-27 18:10:39','2022-11-27 18:10:39',1),(55,'EvaMar','2022-11-27','2022-11-27 18:10:46','2022-11-27 18:10:46',1),(56,'JhonSte','2022-11-27','2022-11-27 18:10:56','2022-11-27 18:10:56',1),(57,'JhonSyb','2022-11-27','2022-11-27 18:11:08','2022-11-27 18:11:08',1),(58,'FraLyn','2022-11-27','2022-11-27 18:11:19','2022-11-27 18:11:19',1),(59,'FraMar','2022-11-27','2022-11-27 18:11:26','2022-11-27 18:11:26',1),(60,'FraMic','2022-11-27','2022-11-27 18:11:33','2022-11-27 18:11:33',1),(61,'FraAli','2022-11-27','2022-11-27 18:11:45','2022-11-27 18:11:45',1),(62,'BonEll','2022-11-27','2022-11-27 18:11:55','2022-11-27 18:11:55',1),(63,'BonJah','2022-11-27','2022-11-27 18:12:02','2022-11-27 18:12:02',1),(64,'BonDwa','2022-11-27','2022-11-27 18:12:10','2022-11-27 18:12:10',1),(65,'GagNel','2022-11-27','2022-11-27 18:14:17','2022-11-27 18:14:17',1),(66,'GagShe','2022-11-27','2022-11-27 18:14:24','2022-11-27 18:14:24',1),(67,'Rob','2022-11-27','2022-11-27 18:14:30','2022-11-27 18:14:30',1),(68,'MotJil','2022-11-27','2022-11-27 18:14:40','2022-11-27 18:14:40',1),(69,'JonSta','2022-11-27','2022-11-27 18:14:50','2022-11-27 18:14:50',1),(70,'NatLor','2022-11-27','2022-11-27 18:14:57','2022-11-27 18:14:57',1),(71,'AtkSar','2022-11-27','2022-11-27 18:15:04','2022-11-27 18:15:04',1),(72,'HutDav','2022-11-27','2022-11-27 18:15:10','2022-11-27 18:15:10',1),(73,'MlyPaw','2022-11-27','2022-11-27 18:15:27','2022-11-27 18:15:27',1),(74,'BenBet','2022-11-27','2022-11-27 18:15:36','2022-11-27 18:15:36',1),(75,'RemAba','2022-11-27','2022-11-27 18:15:51','2022-11-27 18:15:51',1),(76,'DelAng','2022-11-27','2022-11-27 18:15:59','2022-11-27 18:15:59',1),(77,'DelShe','2022-11-27','2022-11-27 18:16:07','2022-11-27 18:16:07',1),(78,'RitSil','2022-11-27','2022-11-27 18:16:16','2022-11-27 18:16:16',1),(79,'Bryken','2022-11-27','2022-11-27 18:16:25','2022-11-27 18:16:25',1),(80,'BryCar','2022-11-27','2022-11-27 18:16:32','2022-11-27 18:16:32',1),(81,'SimLuc','2022-11-27','2022-11-27 18:16:40','2022-11-27 18:16:40',1),(82,'SimAzu','2022-11-27','2022-11-27 18:16:56','2022-11-27 18:16:56',1),(83,'SimPau','2022-11-27','2022-11-27 18:17:03','2022-11-27 18:17:03',1),(84,'WilEll','2022-11-27','2022-11-27 18:17:14','2022-11-27 18:17:14',1),(85,'WalFel','2022-11-27','2022-11-27 18:17:30','2022-11-27 18:17:30',1),(86,'WilJos','2022-11-27','2022-11-27 18:17:38','2022-11-27 18:17:38',1),(87,'RigLin','2022-11-27','2022-11-27 18:17:45','2022-11-27 18:17:45',1),(88,'ArmViv','2022-11-27','2022-11-27 18:18:41','2022-11-27 18:18:41',1),(89,'ArmWil','2022-11-27','2022-11-27 18:18:49','2022-11-27 18:18:49',1),(90,'CarDyl','2022-11-27','2022-11-27 18:18:56','2022-11-27 18:18:56',1),(91,'CarOli','2022-11-27','2022-11-27 18:19:01','2022-11-27 18:19:01',1),(92,'Desiree','2022-11-27','2022-11-27 18:19:13','2022-11-27 18:19:13',1),(93,'Gonzalo','2022-11-27','2022-11-27 18:19:19','2022-11-27 18:19:19',1),(94,'Ely','2022-11-27','2022-11-27 18:19:27','2022-11-27 18:19:27',1),(95,'Diego','2022-11-27','2022-11-27 18:19:35','2022-11-27 18:19:35',1),(96,'OzVan','2022-11-27','2022-11-27 18:19:41','2022-11-27 18:19:41',1),(97,'OzJho','2022-11-27','2022-11-27 18:19:48','2022-11-27 18:19:48',1),(98,'ConnolJho','2022-11-27','2022-11-27 18:20:28','2022-11-27 18:20:28',1),(99,'OzLuk','2022-11-27','2022-11-27 18:20:38','2022-11-27 18:20:38',1),(100,'DarTom','2022-11-27','2022-11-27 18:20:43','2022-11-27 18:20:43',1),(101,'Anit','2022-11-27','2022-11-27 18:20:50','2022-11-27 18:20:50',1),(102,'OreSor','2022-11-27','2022-11-27 18:20:59','2022-11-27 18:20:59',1),(103,'OreEli','2022-11-27','2022-11-27 18:21:08','2022-11-27 18:21:08',1),(104,'OreVan','2022-11-27','2022-11-27 18:21:17','2022-11-27 18:21:17',1),(105,'OreGeo','2022-11-27','2022-11-27 18:21:27','2022-11-27 18:21:27',1),(106,'OzJan','2022-11-27','2022-11-27 18:21:34','2022-11-27 18:21:34',1),(107,'DarAnn','2022-11-27','2022-11-27 18:21:41','2022-11-27 18:21:41',1),(108,'WhiJim','2022-11-27','2022-11-27 18:22:01','2022-11-27 18:22:01',1),(109,'WhiAnn','2022-11-27','2022-11-27 18:22:15','2022-11-27 18:22:15',1),(110,'CanRoch','2022-11-27','2022-11-27 18:22:29','2022-11-27 18:22:29',1),(111,'CanWil','2022-11-27','2022-11-27 18:22:39','2022-11-27 18:22:39',1),(112,'CanPri','2022-11-27','2022-11-27 18:22:49','2022-11-27 18:22:49',1),(113,'CanRap','2022-11-27','2022-11-27 18:22:56','2022-11-27 18:22:56',1),(114,'JohJos','2022-11-27','2022-11-27 18:23:07','2022-11-27 18:23:07',1),(115,'BecCar','2022-11-27','2022-11-27 18:23:24','2022-11-27 18:23:24',1),(116,'RoNao','2022-11-27','2022-11-27 18:23:38','2022-11-27 18:23:38',1),(117,'KweSim','2022-11-27','2022-11-27 18:23:51','2022-11-27 18:23:51',1),(118,'MavFel','2022-11-27','2022-11-27 18:23:58','2022-11-27 18:23:58',1),(119,'MavKat','2022-11-27','2022-11-27 18:24:07','2022-11-27 18:24:07',1),(120,'MavJes','2022-11-27','2022-11-27 18:24:17','2022-11-27 18:24:17',1),(121,'MavDim','2022-11-27','2022-11-27 18:24:28','2022-11-27 18:24:28',1),(122,'MavChl','2022-11-27','2022-11-27 18:24:36','2022-11-27 18:24:36',1),(123,'MavJas','2022-11-27','2022-11-27 18:24:45','2022-11-27 18:24:45',1),(124,'BarChr','2022-11-27','2022-11-27 18:24:53','2022-11-27 18:24:53',1),(125,'BarKir','2022-11-27','2022-11-27 18:25:01','2022-11-27 18:25:01',1),(126,'LinEdm','2022-11-27','2022-11-27 18:25:10','2022-11-27 18:25:10',1),(127,'HunBru','2022-11-27','2022-11-27 18:25:19','2022-11-27 18:25:19',1),(128,'HunGor','2022-11-27','2022-11-27 18:25:26','2022-11-27 18:25:26',1),(129,'Demian','2022-11-27','2022-11-27 18:25:35','2022-11-27 18:25:35',1),(130,'MitSau','2022-11-27','2022-11-27 18:25:41','2022-11-27 18:25:41',1),(131,'BonPau','2022-11-27','2022-11-27 18:25:48','2022-11-27 18:25:48',1),(132,'PhiBar','2022-11-27','2022-11-27 18:25:55','2022-11-27 18:25:55',1),(133,'FieNor','2022-11-27','2022-11-27 18:26:06','2022-11-27 18:26:06',1),(134,'Adanne','2022-11-27','2022-11-27 18:26:16','2022-11-27 18:26:16',1),(135,'Abbie','2022-11-27','2022-11-27 18:26:21','2022-11-27 18:26:21',1),(136,'WonBoy','2022-11-27','2022-11-27 18:26:28','2022-11-27 18:26:28',1),(137,'Ethan','2022-11-27','2022-11-27 18:26:35','2022-11-27 18:26:35',1),(138,'ColJon','2022-11-27','2022-11-27 18:26:42','2022-11-27 18:26:42',1),(139,'ColTal','2022-11-27','2022-11-27 18:26:47','2022-11-27 18:26:47',1),(140,'ColKat','2022-11-27','2022-11-27 18:26:53','2022-11-27 18:26:53',1),(141,'ColJonJr','2022-11-27','2022-11-27 18:27:04','2022-11-27 18:27:04',1),(142,'EdEmm','2022-11-27','2022-11-27 18:27:23','2022-11-27 18:27:23',1),(143,'EdHan','2022-11-27','2022-11-27 18:27:40','2022-11-27 18:27:40',1),(144,'EdAnd','2022-11-27','2022-11-27 18:27:49','2022-11-27 18:27:49',1),(145,'EdBeth','2022-11-27','2022-11-27 18:27:56','2022-11-27 18:27:56',1),(146,'EdRien','2022-11-27','2022-11-27 18:28:04','2022-11-27 18:28:04',1),(147,'WatRic','2022-11-27','2022-11-27 18:28:14','2022-11-27 18:28:14',1),(148,'PilRab','2022-11-27','2022-11-27 18:28:23','2022-11-27 18:28:23',1),(149,'NatSol','2022-11-27','2022-11-27 18:28:30','2022-11-27 18:28:30',1),(150,'TaySte','2022-11-27','2022-11-27 18:28:38','2022-11-27 18:28:38',1);
/*!40000 ALTER TABLE `members_lists` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (5,'2014_10_12_000000_create_users_table',1),(6,'2014_10_12_100000_create_password_resets_table',1),(7,'2019_08_19_000000_create_failed_jobs_table',1),(8,'2019_12_14_000001_create_personal_access_tokens_table',1),(10,'2022_11_27_153107_members_assignments_list',2),(11,'2022_11_27_171256_update_unavailable',3);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
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
  `expires_at` timestamp NULL DEFAULT NULL,
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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Bishopric','armilleiwilliam@gmail.com','2022-11-27 15:29:08','$2y$10$HXOQoZ7my50RE/dbffIu1OM0KkDoJKR9zhunytwyWMgiOF94Lo3jq','HBzY4yhUEOqRdhgqlNvuY1pWZIdtsZbzxOAOObiGyqAXElMiYIRdh6ML9Zq8','2022-11-27 15:29:08','2022-11-27 15:29:08');
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

-- Dump completed on 2022-11-27 18:47:37
