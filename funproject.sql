-- MySQL dump 10.13  Distrib 5.1.63, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: FunProject_development
-- ------------------------------------------------------
-- Server version	5.1.63-0ubuntu0.11.10.1

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
-- Table structure for table `image_categories`
--

DROP TABLE IF EXISTS `image_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `image_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image_categories`
--

LOCK TABLES `image_categories` WRITE;
/*!40000 ALTER TABLE `image_categories` DISABLE KEYS */;
INSERT INTO `image_categories` VALUES (1,'Funny Animals','Funny Animals','2012-09-24 18:55:44','2012-09-24 18:55:44'),(2,'Epic Trolls','Epic Trolls','2012-09-24 18:56:38','2012-09-24 18:56:38'),(3,'Amazing Fruit Arts','Amazing Fruit Arts','2012-09-24 18:57:35','2012-09-24 18:57:35'),(4,'Inspirational Quotes','Inspirational Quotes','2012-09-24 18:58:04','2012-09-24 18:58:04'),(5,'Best Love Quotes','Best Love Quotes','2012-09-24 18:58:30','2012-09-24 18:58:30'),(6,'Quotes And Thoughts','Quotes And Thoughts','2012-09-24 18:58:54','2012-09-24 18:58:54'),(7,'Jokes & Funny Situations','Jokes & Funny Situations','2012-09-24 18:59:20','2012-09-24 18:59:20'),(8,'Geek Fun','Geek Fun','2012-09-24 18:59:45','2012-09-24 18:59:45'),(9,'Mobile and Messaging','Mobile and Messaging','2012-09-24 19:00:14','2012-09-24 19:00:14');
/*!40000 ALTER TABLE `image_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `image_category_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES (1,'Abraham Image','Abraham Image','/images/abraham.jpg',1,'2012-09-26 19:14:31','2012-09-26 19:14:31'),(2,'Amazing City','Amazing City','/images/amazing_city.jpg',1,'2012-09-26 19:15:26','2012-09-26 19:15:26'),(3,'Awsome Image','Awsome Image','/images/awsome.jpg',2,'2012-09-26 19:16:08','2012-09-26 19:16:08'),(4,'Cars','Cars','/images/cars.jpg',2,'2012-09-26 19:16:49','2012-09-26 19:16:49'),(5,'Cart','Cart','/images/cart.jpg',3,'2012-09-26 19:17:15','2012-09-26 19:17:15'),(6,'Cloud','Cloud','/images/cloud.jpg',3,'2012-09-26 19:17:51','2012-09-26 19:17:51'),(7,'Cloudy','Cloudy','/images/cloudy.jpg',4,'2012-09-26 19:18:20','2012-09-26 19:18:20'),(8,'Flower','Flower','/images/flower.jpg',4,'2012-09-26 19:18:52','2012-09-26 19:18:52'),(9,'Another Flower','Another Flower','/images/flower_e6ntcvd1.jpg',5,'2012-09-26 19:19:46','2012-09-26 19:38:50'),(10,'Fort','Fort','/images/fort.jpg',5,'2012-09-26 19:20:36','2012-09-26 19:20:36'),(11,'Hills','Hills','/images/hills.jpg',6,'2012-09-26 19:21:07','2012-09-26 19:21:07'),(12,'Dragon','Dragon','/images/howtodragon.jpg',6,'2012-09-26 19:21:37','2012-09-26 19:21:49'),(13,'Water Fall','Water Fall','/images/kleinerwasserfall.jpg',7,'2012-09-26 19:22:26','2012-09-26 19:22:26'),(14,'Landscape','Landscape','/images/Landscape032.jpg',7,'2012-09-26 19:23:02','2012-09-26 19:23:02'),(15,'Little Batman','Little Batman','/images/little_batman.jpg',8,'2012-09-26 19:23:42','2012-09-26 19:23:42'),(16,'Maiden','Maiden','/images/maiden.jpg',8,'2012-09-26 19:24:10','2012-09-26 19:24:10'),(17,'Nice Painting','Nice Painting','/images/nice_painting.jpg',9,'2012-09-26 19:24:45','2012-09-26 19:24:45'),(18,'Just Painting','Just Painting','/images/painting.jpg',9,'2012-09-26 19:25:19','2012-09-26 19:25:19'),(19,'Monkey','Moneky','/images/photo_201.jpg',1,'2012-09-28 18:10:42','2012-09-28 18:14:04'),(20,'Butterfly','Butterfly','/images/photo_202.jpg',1,'2012-09-28 18:14:53','2012-09-28 18:14:53'),(21,'Cat','Cat','/images/photo_203.jpg',1,'2012-09-28 18:15:35','2012-09-28 18:15:35'),(22,'Bird','Bird','/images/photo_204.jpg',1,'2012-09-28 18:16:11','2012-09-28 18:16:11'),(23,'Black Butterfly','Black Butterfly','/images/photo_205.jpg',2,'2012-09-28 18:17:09','2012-09-28 18:17:09'),(24,'Bug','Bug','/images/photo_206.jpg',2,'2012-09-28 18:17:45','2012-09-28 18:17:45'),(25,'Flower','Flower','/images/photo_207.jpg',2,'2012-09-28 18:18:18','2012-09-28 18:18:18'),(26,'Cloud Second','Cloud Second','/images/photo_208.jpg',2,'2012-09-28 18:19:00','2012-09-28 18:19:00'),(27,'Flower Second','Flower Second','/images/photo_209.jpg',3,'2012-09-28 18:19:36','2012-09-28 18:19:36'),(28,'Animal','Animal','/images/photo_210.jpg',3,'2012-09-28 18:20:24','2012-09-28 18:20:24'),(29,'Cat Second','Cat Second','/images/photo_211.jpg',3,'2012-09-28 18:21:08','2012-09-28 18:21:08'),(30,'Bird Second','Bird Second','/images/photo_212.jpg',3,'2012-09-28 18:21:42','2012-09-28 18:21:42'),(31,'Car First','Car First','/images/photo_213.jpg',4,'2012-09-28 18:22:31','2012-09-28 18:22:31'),(32,'Car Second','Car Second','/images/photo_214.jpg',4,'2012-09-28 18:23:01','2012-09-28 18:23:01'),(33,'Car Third','Car Third','/images/photo_215.jpg',4,'2012-09-28 18:23:51','2012-09-28 18:23:51'),(34,'Car Fourth','Car Fourth','/images/photo_216.jpg',4,'2012-09-28 18:24:22','2012-09-28 18:24:22'),(35,'Car Fifth','Car Fifth','/images/photo_217.jpg',5,'2012-09-28 18:25:16','2012-09-28 18:25:16'),(36,'Car Sixth','Car Sixth','/images/photo_218.jpg',5,'2012-09-28 18:25:46','2012-09-28 18:25:46'),(37,'Car Seventh','Car Seventh','/images/photo_219.jpg',5,'2012-09-28 18:26:19','2012-09-28 18:26:19'),(38,'Car Eighth','Car Eighth','/images/photo_220.jpg',5,'2012-09-28 18:26:53','2012-09-28 18:26:53'),(39,'Car Ninth','Car Ninth','/images/photo_221.jpg',6,'2012-09-28 18:27:57','2012-09-28 18:27:57'),(40,'Car Tenth','Car Tenth','/images/photo_222.jpg',6,'2012-09-28 18:28:24','2012-09-28 18:28:24'),(41,'Car Eleventh','Car Eleventh','/images/photo_223.jpg',6,'2012-09-28 18:28:50','2012-09-28 18:28:50'),(42,'Car Twelveth','Car Twelveth','/images/photo_224.jpg',6,'2012-09-28 18:29:20','2012-09-28 18:29:20'),(43,'Wall One','Wall One','/images/photo_225.jpg',7,'2012-09-28 18:30:00','2012-09-28 18:30:00'),(44,'Wall Two','Wall Two','/images/photo_226.jpg',7,'2012-09-28 18:30:24','2012-09-28 18:30:24'),(45,'Wall Three','Wall Three','/images/photo_227.jpg',7,'2012-09-28 18:30:49','2012-09-28 18:30:49'),(46,'Wall Fourth','Wall Fourth','/images/photo_228.jpg',7,'2012-09-28 18:31:13','2012-09-28 18:31:13'),(47,'Wall Fifth','Wall Fifth','/images/photo_229.jpg',8,'2012-09-28 18:32:00','2012-09-28 18:32:00'),(48,'Wall Sixth','Wall Sixth','/images/photo_230.jpg',8,'2012-09-28 18:32:27','2012-09-28 18:32:27'),(49,'Wall Seventh','Wall Seventh','/images/photo_231.jpg',8,'2012-09-28 18:33:01','2012-09-28 18:33:01'),(50,'Wall Eighth','Wall Eighth','/images/photo_232.jpg',8,'2012-09-28 18:33:39','2012-09-28 18:33:39'),(51,'Wall Ninth','Wall Ninth','/images/photo_233.jpg',9,'2012-09-28 18:34:09','2012-09-28 18:34:09'),(52,'Wall Tenth','Wall Tenth','/images/photo_234.jpg',9,'2012-09-28 18:34:37','2012-09-28 18:34:37'),(53,'Wall Eleventh','Wall Eleventh','/images/photo_235.jpg',9,'2012-09-28 18:35:04','2012-09-28 18:35:04'),(54,'Wall Twelveth','Wall Twelveth','/images/photo_236.jpg',9,'2012-09-28 18:35:39','2012-09-28 18:35:39');
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20120924182220'),('20120926161546');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-09-29  0:54:36
