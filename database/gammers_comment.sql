-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: gammers
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment` (
  `id_game` int NOT NULL,
  `id_system_user` int NOT NULL,
  `first_date` date NOT NULL,
  `last_date` date DEFAULT NULL,
  PRIMARY KEY (`id_game`,`id_system_user`),
  KEY `FK_COMMENT_SYSTEM_USER` (`id_system_user`),
  CONSTRAINT `FK_COMMENT_GAME` FOREIGN KEY (`id_game`) REFERENCES `game` (`id_game`),
  CONSTRAINT `FK_COMMENT_SYSTEM_USER` FOREIGN KEY (`id_system_user`) REFERENCES `system_user` (`id_system_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (1,31,'2015-09-10','2015-11-16'),(1,294,'2014-10-22','2010-01-27'),(1,299,'2011-11-24',NULL),(1,304,'2015-07-12','2014-06-24'),(1,331,'2016-06-05','2012-05-31'),(1,408,'2012-04-04','2010-06-05'),(1,451,'2010-02-11','2018-09-08'),(1,566,'2016-07-15','2015-11-16'),(1,616,'2015-03-09','2020-11-08'),(1,771,'2013-06-17','2017-06-05'),(1,858,'2019-08-20','2014-06-12'),(1,914,'2012-05-12',NULL),(2,68,'2011-03-27','2021-02-18'),(2,81,'2018-08-01',NULL),(2,84,'2014-12-15','2014-08-27'),(2,121,'2012-03-23','2020-03-19'),(2,194,'2014-04-27','2015-06-02'),(2,256,'2011-05-31','2015-08-13'),(2,281,'2010-05-27','2017-09-30'),(2,430,'2014-01-11',NULL),(2,491,'2020-09-09','2010-09-12'),(2,845,'2011-06-13','2012-10-23'),(2,890,'2019-06-15','2014-09-27'),(2,920,'2012-09-20','2014-03-02'),(2,968,'2021-09-01','2015-03-11'),(3,39,'2011-02-14','2014-06-27'),(3,71,'2020-05-07','2019-09-26'),(3,110,'2021-09-21','2011-09-24'),(3,175,'2012-12-14','2010-11-21'),(3,274,'2010-08-31','2019-07-16'),(3,326,'2019-08-07','2015-01-11'),(3,352,'2013-05-16','2020-03-09'),(3,441,'2010-09-08',NULL),(3,456,'2011-01-23','2015-09-21'),(3,580,'2021-02-25','2020-06-13'),(3,788,'2015-03-05','2021-10-02'),(3,795,'2016-04-30','2011-04-30'),(3,799,'2010-09-01','2013-06-20'),(3,824,'2019-07-28','2018-02-26'),(3,939,'2011-01-12','2013-10-06'),(4,96,'2020-08-15','2013-10-12'),(4,188,'2020-06-09',NULL),(4,244,'2011-12-04','2015-08-05'),(4,315,'2010-06-05','2014-08-31'),(4,433,'2012-08-20','2018-12-24'),(4,487,'2014-05-05','2010-09-15'),(4,497,'2012-09-22','2010-06-15'),(4,569,'2018-03-28','2014-04-05'),(4,587,'2010-12-11',NULL),(4,654,'2019-03-30','2010-05-07'),(4,827,'2010-04-18',NULL),(4,988,'2021-02-26','2011-09-29'),(5,56,'2020-11-02','2021-04-13'),(5,367,'2013-12-14','2013-10-29'),(5,549,'2017-02-03','2012-06-29'),(5,861,'2019-05-22','2017-01-28'),(5,932,'2016-08-22','2018-05-13'),(6,175,'2013-12-28','2018-10-26'),(6,213,'2017-09-04','2014-04-06'),(6,415,'2015-06-02','2021-03-27'),(6,494,'2011-08-02','2011-01-07'),(6,499,'2020-04-05','2015-08-07'),(6,545,'2013-06-01','2021-02-08'),(6,599,'2011-04-10','2015-01-08'),(6,620,'2015-11-07','2015-03-11'),(6,783,'2018-08-11',NULL),(6,887,'2013-09-07','2013-03-17'),(7,95,'2012-08-30',NULL),(7,234,'2021-09-03','2021-03-27'),(7,270,'2015-08-12',NULL),(7,297,'2020-04-09','2016-12-26'),(7,566,'2014-08-08','2018-09-03'),(7,629,'2010-05-16','2013-03-18'),(7,643,'2016-07-17','2014-11-06'),(7,781,'2013-01-26','2014-09-12'),(7,802,'2014-02-09','2012-11-29'),(7,806,'2014-04-14','2019-05-27'),(7,831,'2019-09-30','2014-02-10'),(7,928,'2019-07-04','2013-08-05'),(7,930,'2019-11-05','2015-03-31'),(8,81,'2017-10-23',NULL),(8,118,'2017-11-22','2016-10-09'),(8,119,'2020-04-09','2017-04-23'),(8,175,'2015-06-13','2020-11-25'),(8,243,'2015-12-07','2014-08-06'),(8,251,'2015-04-12',NULL),(8,408,'2020-12-29','2018-06-08'),(8,675,'2015-07-17','2020-02-23'),(8,815,'2011-10-05','2019-07-30'),(8,828,'2015-05-20','2012-09-22'),(9,142,'2011-01-25','2011-05-15'),(9,334,'2010-09-30','2012-10-15'),(9,592,'2012-04-21','2019-12-07'),(9,762,'2012-07-31','2011-12-20'),(9,786,'2015-06-19','2013-10-04'),(9,944,'2015-04-02','2018-02-08'),(9,972,'2010-11-20','2015-07-29'),(10,59,'2019-03-27','2011-11-14'),(10,226,'2010-08-03','2012-02-14'),(10,244,'2012-12-23','2020-07-02'),(10,253,'2021-08-27','2011-08-12'),(10,323,'2017-09-09','2020-12-05'),(10,360,'2014-06-06','2015-02-03'),(10,662,'2020-01-04',NULL),(10,707,'2019-12-21','2010-01-20'),(10,720,'2012-02-23','2020-01-26'),(10,863,'2011-03-10',NULL),(11,80,'2013-07-25','2014-09-19'),(11,97,'2014-07-12',NULL),(11,355,'2020-02-07','2010-11-07'),(11,364,'2011-08-06','2020-11-06'),(11,937,'2016-07-31',NULL),(12,58,'2013-04-01','2018-08-14'),(12,74,'2021-01-05','2013-09-10'),(12,98,'2010-09-26','2019-03-07'),(12,208,'2021-10-08','2014-03-14'),(12,456,'2020-06-14','2012-04-23'),(12,605,'2010-09-12','2013-10-08'),(12,653,'2021-10-05','2016-03-26'),(12,768,'2019-02-08','2012-10-13'),(12,775,'2019-10-14','2012-04-13'),(12,945,'2021-02-26',NULL),(13,184,'2011-01-04','2017-11-06'),(13,292,'2020-10-28','2016-01-12'),(13,503,'2012-10-31','2018-03-29'),(13,533,'2011-09-14','2015-02-09'),(13,581,'2017-01-14','2016-04-03'),(13,686,'2012-01-07','2017-03-06'),(13,720,'2012-12-17','2019-02-06'),(13,875,'2012-10-17','2013-06-25'),(13,966,'2013-07-04','2020-12-11'),(14,245,'2015-11-24','2011-03-07'),(14,334,'2014-12-11',NULL),(14,395,'2014-12-14','2015-06-04'),(14,440,'2019-08-27',NULL),(14,602,'2016-01-28','2015-12-13'),(14,688,'2010-10-18',NULL),(14,707,'2015-03-14','2011-12-16'),(14,781,'2021-02-12','2011-12-06'),(14,783,'2011-04-06','2016-09-02'),(14,836,'2010-08-06','2015-11-14'),(14,889,'2018-07-18','2011-05-16'),(14,905,'2017-05-17','2011-11-20'),(14,950,'2016-10-02',NULL),(14,995,'2013-09-07','2020-08-30'),(15,29,'2010-09-28',NULL),(15,41,'2018-11-29','2016-06-30'),(15,308,'2014-02-01',NULL),(15,324,'2012-04-15','2012-11-19'),(15,392,'2017-05-26','2010-11-03'),(15,579,'2019-05-04','2016-05-23'),(15,635,'2017-06-30','2012-10-21'),(15,686,'2010-12-05','2016-01-02'),(16,138,'2015-08-10','2014-09-09'),(16,373,'2011-01-03','2017-11-20'),(16,414,'2014-07-02','2016-07-10'),(16,455,'2019-03-28',NULL),(16,723,'2020-03-20','2021-09-12'),(16,754,'2016-01-02','2013-11-12'),(16,937,'2016-01-11','2015-11-23'),(16,969,'2011-10-30',NULL),(17,123,'2015-08-12','2019-12-03'),(17,183,'2017-07-12','2020-09-24'),(17,286,'2015-07-24','2013-07-06'),(17,289,'2016-03-27','2018-12-22'),(17,371,'2017-04-17','2020-09-08'),(17,522,'2018-02-14','2021-08-23'),(17,617,'2013-01-22',NULL),(17,893,'2013-11-04',NULL),(18,19,'2010-03-01','2011-04-19'),(18,168,'2010-05-22','2010-03-06'),(18,296,'2021-09-04',NULL),(18,317,'2014-01-14','2010-05-03'),(18,325,'2018-10-27','2017-09-19'),(18,521,'2019-12-18','2012-09-23'),(18,548,'2014-09-22','2016-10-09'),(18,559,'2018-01-06','2017-08-30'),(18,643,'2013-07-13','2014-06-25'),(18,778,'2010-07-18','2014-06-09'),(18,929,'2010-12-03','2016-11-30'),(19,61,'2020-11-25',NULL),(19,181,'2015-09-15',NULL),(19,261,'2015-08-30','2019-01-04'),(19,268,'2015-08-30','2021-10-22'),(19,390,'2013-10-15','2012-02-17'),(19,498,'2014-05-26','2015-11-01'),(19,566,'2014-09-20','2018-01-27'),(19,635,'2014-03-13','2014-04-18'),(19,905,'2018-10-16',NULL),(19,944,'2015-06-23','2015-12-03'),(20,83,'2018-09-22','2021-03-11'),(20,264,'2018-01-05','2014-06-29'),(20,443,'2013-11-11','2011-09-17'),(20,522,'2012-02-19','2012-11-12'),(20,560,'2019-01-09','2013-03-14'),(20,564,'2015-12-28','2014-10-24'),(20,587,'2012-09-04','2016-09-26'),(20,588,'2014-03-04','2020-03-17'),(20,621,'2017-07-18','2011-11-22'),(20,649,'2011-01-02','2010-08-15'),(20,765,'2010-07-18','2018-06-24'),(21,137,'2017-06-27',NULL),(21,160,'2018-04-11','2017-10-18'),(21,373,'2013-07-14',NULL),(21,602,'2013-09-07','2017-10-04'),(21,659,'2019-05-11','2016-10-21'),(21,820,'2014-11-30',NULL),(22,15,'2013-02-15','2021-04-29'),(22,131,'2021-06-10','2017-12-25'),(22,181,'2014-12-01','2015-08-26'),(22,198,'2015-05-11','2016-08-05'),(22,212,'2019-03-25','2011-09-15'),(22,217,'2010-06-20','2020-11-02'),(22,225,'2010-11-30','2012-08-08'),(22,226,'2015-09-16','2017-12-03'),(22,287,'2015-10-27','2021-03-20'),(22,323,'2014-01-02','2018-10-27'),(22,343,'2018-03-30','2015-12-04'),(22,613,'2010-04-07','2010-03-20'),(22,912,'2018-03-12',NULL),(22,921,'2020-10-27',NULL),(22,958,'2012-02-15','2019-11-09'),(22,962,'2014-12-12','2019-03-26'),(23,90,'2018-10-25','2011-08-19'),(23,183,'2019-05-10',NULL),(23,340,'2013-06-13','2020-03-06'),(23,490,'2014-03-01','2019-07-19'),(23,637,'2011-02-03','2019-08-07'),(23,841,'2015-10-05',NULL),(23,875,'2019-01-09','2014-01-11'),(23,951,'2010-09-04','2014-01-08'),(24,13,'2011-10-20','2012-02-03'),(24,92,'2018-09-15','2019-12-28'),(24,111,'2021-05-16',NULL),(24,297,'2020-08-11','2015-06-16'),(24,410,'2021-09-26',NULL),(24,506,'2016-04-17','2011-02-16'),(24,762,'2014-05-16','2012-11-05'),(25,133,'2014-10-15','2017-12-26'),(25,228,'2018-11-09','2021-05-31'),(25,375,'2015-12-24','2019-07-24'),(25,445,'2015-04-20',NULL),(25,481,'2010-04-02','2014-12-28'),(25,581,'2018-11-29','2021-04-25'),(25,731,'2017-10-13','2013-09-01'),(25,747,'2019-04-17','2021-04-21'),(25,833,'2017-05-20','2016-09-17'),(25,838,'2017-06-23',NULL),(25,896,'2014-04-26','2017-05-24'),(26,53,'2014-01-01','2014-07-25'),(26,242,'2018-03-24','2013-12-27'),(26,449,'2011-07-22','2017-09-10'),(26,614,'2012-06-03','2018-08-18'),(26,796,'2012-10-29',NULL),(26,809,'2010-08-21','2017-05-08'),(26,923,'2018-01-31','2020-01-22'),(26,940,'2017-08-12','2011-10-07'),(26,955,'2014-11-30','2011-04-13'),(26,958,'2021-03-27','2021-11-05'),(27,18,'2014-03-30','2018-12-31'),(27,48,'2013-08-25','2010-12-27'),(27,146,'2013-04-10','2021-07-09'),(27,194,'2018-08-28','2017-02-27'),(27,337,'2021-09-20','2019-07-01'),(27,353,'2018-08-05','2011-05-31'),(27,475,'2018-10-26','2012-03-02'),(27,545,'2018-10-04',NULL),(27,726,'2011-01-16',NULL),(27,728,'2018-05-22','2010-03-22'),(27,742,'2010-08-07',NULL),(27,762,'2018-01-09','2011-08-08'),(27,789,'2012-08-05','2020-03-10'),(27,826,'2015-07-23','2019-03-10'),(28,168,'2016-02-25','2010-06-27'),(28,447,'2014-10-08','2015-10-08'),(28,887,'2016-01-26','2012-07-12'),(28,888,'2010-03-16','2013-01-02'),(29,146,'2020-02-26','2018-05-27'),(29,157,'2017-11-30','2011-08-07'),(29,393,'2014-03-20','2015-06-30'),(29,403,'2021-04-30','2010-05-06'),(29,469,'2020-06-13','2012-03-16'),(29,631,'2021-01-19',NULL),(29,687,'2014-03-28','2010-05-22'),(29,714,'2021-05-28','2013-05-07'),(29,770,'2019-02-08','2010-07-20'),(29,843,'2020-11-08','2021-10-14'),(29,907,'2011-07-14',NULL),(30,237,'2015-04-14','2013-12-28'),(30,380,'2011-02-10','2017-08-16'),(30,438,'2013-04-03','2011-02-19'),(30,710,'2013-05-07','2013-07-18'),(30,745,'2016-09-26','2014-05-14'),(30,746,'2014-11-25','2017-06-03'),(30,750,'2017-07-26','2020-11-04'),(30,795,'2013-09-08','2021-10-20'),(30,841,'2012-06-28','2020-09-10'),(30,991,'2016-02-22','2021-03-01'),(31,95,'2010-07-30','2017-05-22'),(31,195,'2010-07-24',NULL),(31,231,'2013-02-09','2015-07-27'),(31,324,'2015-09-12','2012-12-07'),(31,368,'2014-08-21','2013-02-09'),(31,821,'2018-03-09',NULL),(31,823,'2015-02-24',NULL),(32,104,'2013-05-31','2014-11-22'),(32,163,'2021-03-19','2010-10-16'),(32,328,'2012-01-14','2015-11-02'),(32,355,'2021-09-24',NULL),(32,473,'2020-03-31','2012-03-19'),(32,525,'2020-02-17','2011-11-06'),(32,588,'2013-04-04','2015-07-21'),(32,697,'2020-08-16','2014-01-26'),(32,917,'2021-07-19','2013-12-14'),(33,112,'2010-02-17',NULL),(33,141,'2020-10-12',NULL),(33,408,'2011-11-30','2018-11-04'),(33,565,'2012-07-11','2013-12-29'),(33,720,'2014-07-06','2013-09-04'),(33,757,'2021-03-28','2018-10-25'),(33,764,'2011-07-15','2019-01-27'),(33,777,'2015-03-06','2010-08-05'),(33,879,'2017-03-25','2021-06-01'),(34,200,'2021-08-09',NULL),(34,222,'2012-01-13','2019-08-06'),(34,265,'2020-08-06','2011-01-15'),(34,378,'2012-05-05','2019-08-14'),(34,422,'2019-02-18','2012-11-30'),(34,528,'2021-09-16','2018-08-04'),(34,648,'2010-10-28','2010-09-23'),(34,670,'2013-12-08','2014-08-21'),(34,675,'2014-03-16','2012-02-14'),(34,707,'2015-10-13','2016-10-04'),(34,812,'2014-08-15','2013-08-01'),(34,882,'2021-02-08',NULL),(34,965,'2015-07-18','2017-10-31'),(35,173,'2019-07-01','2011-04-14'),(35,175,'2011-02-15',NULL),(35,299,'2020-06-10','2018-03-11'),(35,317,'2019-01-12','2010-07-11'),(35,425,'2016-01-16','2021-07-12'),(35,480,'2021-02-15','2010-12-19'),(35,632,'2013-04-06','2014-12-28'),(35,992,'2016-09-27','2012-06-24'),(36,46,'2018-11-07','2019-02-12'),(36,54,'2019-12-19','2020-11-23'),(36,80,'2010-10-06',NULL),(36,193,'2019-07-17','2018-11-04'),(36,266,'2017-12-17',NULL),(36,281,'2017-05-23',NULL),(36,454,'2016-01-18','2021-07-20'),(36,456,'2021-09-26','2013-10-10'),(36,486,'2010-01-26',NULL),(36,770,'2017-12-23','2021-09-25'),(36,835,'2017-01-17','2013-03-16'),(36,866,'2020-01-20','2015-10-03'),(36,948,'2016-05-21',NULL),(37,174,'2019-02-07','2016-03-25'),(37,331,'2014-03-16','2016-02-18'),(37,362,'2019-04-13',NULL),(37,504,'2019-10-01','2013-01-06'),(37,631,'2017-05-04','2018-08-13'),(37,990,'2021-04-01','2020-11-28'),(38,5,'2011-07-14',NULL),(38,34,'2016-01-02','2021-01-21'),(38,86,'2017-06-25',NULL),(38,102,'2020-03-25','2016-01-18'),(38,123,'2016-06-23','2018-06-16'),(38,180,'2011-03-25','2017-08-19'),(38,199,'2020-10-31','2014-05-14'),(38,252,'2014-02-05',NULL),(38,447,'2016-06-26','2017-10-21'),(38,665,'2020-07-12',NULL),(38,798,'2012-12-16','2018-07-17'),(38,829,'2012-01-25','2016-02-09'),(39,13,'2010-07-22','2014-09-19'),(39,66,'2013-05-24','2011-02-01'),(39,179,'2012-07-19','2018-06-09'),(39,519,'2018-03-18','2012-12-13'),(39,523,'2013-07-27','2020-04-30'),(39,564,'2017-10-05','2010-03-24'),(39,860,'2017-05-29','2012-01-06'),(39,887,'2021-09-04','2019-04-04'),(39,907,'2010-07-15','2011-02-14'),(39,914,'2016-01-02','2018-02-12'),(40,128,'2013-03-13',NULL),(40,169,'2013-08-11','2013-06-07'),(40,172,'2020-09-22',NULL),(40,487,'2014-03-24','2020-09-09'),(40,506,'2015-07-08','2015-01-18'),(40,560,'2019-05-24','2016-08-13'),(40,579,'2016-07-12','2021-03-31'),(40,586,'2011-12-20','2013-03-05'),(40,962,'2012-08-19',NULL),(41,56,'2018-04-02','2015-07-04'),(41,528,'2014-12-11',NULL),(41,591,'2011-06-01',NULL),(41,608,'2015-11-05',NULL),(41,611,'2020-12-26','2013-10-31'),(41,687,'2011-05-18','2013-12-22'),(41,703,'2020-03-03','2011-09-24'),(41,735,'2013-04-29','2010-06-01'),(41,808,'2012-07-08','2013-06-17'),(41,960,'2015-10-03','2021-05-23'),(42,35,'2016-07-23','2019-07-10'),(42,165,'2014-09-03','2014-07-27'),(42,188,'2019-02-28','2019-08-02'),(42,269,'2019-08-25','2019-03-13'),(42,307,'2010-06-20','2010-01-20'),(42,352,'2013-09-11','2020-04-29'),(42,571,'2012-11-30',NULL),(42,585,'2012-06-23','2015-12-06'),(42,602,'2014-06-21','2016-05-25'),(42,686,'2012-04-10','2015-05-20'),(42,799,'2013-03-16','2011-03-29'),(43,90,'2012-11-19',NULL),(43,140,'2020-06-10','2013-05-31'),(43,200,'2010-05-13',NULL),(43,213,'2016-01-28',NULL),(43,252,'2014-07-13','2020-02-17'),(43,287,'2019-06-06','2012-12-27'),(43,529,'2012-03-11','2016-04-28'),(43,552,'2018-12-16','2016-12-04'),(43,653,'2020-05-20','2017-12-31'),(43,772,'2021-04-16','2014-07-13'),(43,777,'2014-03-26','2017-05-05'),(43,820,'2011-05-24','2019-04-13'),(43,935,'2017-02-17',NULL),(44,157,'2014-08-12','2012-12-09'),(44,203,'2011-10-17','2011-12-05'),(44,343,'2012-02-03',NULL),(44,443,'2017-10-21',NULL),(44,452,'2021-02-10','2017-10-28'),(44,501,'2021-07-25',NULL),(44,736,'2019-11-22','2019-12-16'),(45,25,'2011-05-24','2020-07-19'),(45,353,'2016-09-11','2012-11-19'),(45,416,'2015-03-25','2017-01-10'),(45,447,'2011-01-20','2018-03-06'),(45,455,'2021-02-14','2013-11-12'),(45,515,'2013-08-06','2013-10-28'),(45,617,'2012-10-23',NULL),(45,633,'2021-03-24','2012-07-24'),(45,666,'2013-12-24','2014-07-13'),(45,703,'2010-02-10','2020-12-24'),(45,721,'2013-08-01','2013-08-15'),(45,800,'2016-09-15','2010-04-14'),(45,853,'2018-11-28','2011-08-12'),(45,860,'2013-07-26','2019-01-21'),(45,914,'2018-11-19','2020-06-22'),(46,35,'2018-07-23','2020-02-20'),(46,102,'2011-09-28','2016-10-02'),(46,152,'2021-04-03',NULL),(46,189,'2013-05-17','2016-02-23'),(46,191,'2015-05-02','2013-10-22'),(46,233,'2015-01-18','2020-04-10'),(46,252,'2010-04-23','2017-01-01'),(46,290,'2012-10-13','2018-10-25'),(46,316,'2012-05-11','2010-07-22'),(46,456,'2016-03-03',NULL),(46,472,'2011-09-21',NULL),(46,495,'2017-04-14','2016-04-30'),(46,998,'2011-11-19',NULL),(47,12,'2019-01-31','2019-03-21'),(47,62,'2015-04-20','2020-03-26'),(47,109,'2012-08-31',NULL),(47,321,'2014-10-17','2015-11-03'),(47,381,'2012-04-03','2011-08-05'),(47,566,'2021-10-28',NULL),(47,597,'2011-05-13','2019-06-25'),(47,770,'2020-09-07','2010-04-04'),(47,906,'2018-03-23','2018-11-24'),(47,919,'2015-07-07','2014-09-28'),(48,196,'2014-06-19','2014-01-08'),(48,225,'2014-12-04','2014-03-16'),(48,432,'2014-03-05',NULL),(48,481,'2011-03-12',NULL),(48,542,'2013-11-17','2010-01-21'),(48,569,'2013-05-23',NULL),(48,677,'2021-08-05','2011-06-01'),(48,696,'2018-06-08','2016-05-13'),(48,742,'2012-05-01','2012-05-01'),(48,767,'2019-03-30','2011-07-10'),(48,795,'2019-05-17','2010-06-27'),(48,866,'2015-04-17','2020-09-15'),(48,891,'2017-02-27','2017-01-27'),(48,916,'2015-05-20','2011-07-19'),(48,962,'2020-03-15','2015-07-02'),(49,111,'2018-10-10',NULL),(49,153,'2016-08-03','2017-10-14'),(49,173,'2013-09-15',NULL),(49,281,'2018-01-08','2010-03-12'),(49,296,'2013-03-06','2020-08-29'),(49,322,'2020-04-05','2012-08-27'),(49,356,'2011-08-02','2015-06-20'),(49,528,'2014-07-12',NULL),(49,635,'2010-05-15','2015-10-25'),(49,869,'2012-09-09','2021-03-01'),(49,943,'2017-05-15','2019-08-10'),(50,21,'2014-12-22','2021-05-08'),(50,24,'2011-01-31','2020-06-21'),(50,49,'2010-02-11',NULL),(50,200,'2017-11-06',NULL),(50,300,'2019-07-04',NULL),(50,335,'2012-08-19','2018-09-15'),(50,341,'2018-10-08','2019-01-08'),(50,380,'2012-08-24',NULL),(50,598,'2014-02-21',NULL),(50,640,'2018-08-20','2010-09-05'),(50,730,'2014-02-27','2013-04-12'),(50,773,'2019-09-09','2020-10-23'),(50,797,'2015-03-29',NULL),(50,887,'2016-04-30','2019-06-13'),(50,924,'2021-09-07','2020-02-02'),(51,121,'2018-12-01','2012-05-13'),(51,153,'2018-01-09','2017-05-17'),(51,179,'2011-06-05','2011-04-19'),(51,257,'2018-10-18',NULL),(51,438,'2018-04-06','2013-07-09'),(51,469,'2019-09-11','2012-12-29'),(51,561,'2013-03-03','2017-04-10'),(51,562,'2018-06-05',NULL),(51,604,'2017-10-16',NULL),(51,621,'2017-07-20','2021-05-29'),(51,632,'2016-04-01','2011-04-20'),(51,634,'2017-09-06','2016-04-18'),(51,749,'2018-12-25','2012-11-20'),(51,800,'2014-06-14','2014-07-17'),(51,802,'2014-03-26',NULL),(51,888,'2021-10-21','2021-05-04'),(52,18,'2014-06-23','2017-03-13'),(52,255,'2020-08-14','2019-06-23'),(52,324,'2019-04-29',NULL),(52,417,'2018-12-30','2013-08-08'),(52,533,'2018-07-23','2010-12-18'),(52,645,'2010-05-11',NULL),(52,657,'2014-11-24',NULL),(52,676,'2011-08-31','2015-12-11'),(52,802,'2014-01-31','2020-09-08'),(53,82,'2015-01-18','2012-10-27'),(53,131,'2018-05-11','2011-08-25'),(53,144,'2016-03-23','2013-05-05'),(53,202,'2021-06-28','2010-11-04'),(53,418,'2011-04-18','2012-05-18'),(53,676,'2019-01-28','2015-06-08'),(53,715,'2018-03-01','2013-04-29'),(53,738,'2019-05-11','2015-10-13'),(53,862,'2018-08-05',NULL),(53,915,'2010-01-24','2020-08-13'),(53,974,'2011-11-26','2014-10-24'),(54,74,'2020-09-07',NULL),(54,110,'2021-07-05','2016-11-12'),(54,200,'2018-09-22',NULL),(54,364,'2021-10-23','2019-08-27'),(54,413,'2012-08-01','2013-11-23'),(54,555,'2012-04-11',NULL),(54,825,'2015-02-02','2019-10-24'),(54,857,'2013-05-12','2012-08-11'),(54,874,'2018-07-25','2012-08-19'),(54,901,'2012-12-12','2016-09-10'),(54,938,'2014-02-18','2015-05-15'),(54,967,'2013-04-14','2010-12-15'),(55,22,'2019-05-12','2017-01-14'),(55,125,'2018-07-20','2020-02-21'),(55,356,'2021-07-17','2010-06-10'),(55,398,'2013-03-25',NULL),(55,604,'2015-01-03','2015-02-18'),(55,769,'2012-01-07',NULL),(55,910,'2021-10-27','2014-05-21'),(55,928,'2012-07-19','2017-12-02'),(56,57,'2012-09-04','2016-01-08'),(56,139,'2018-07-01','2021-03-21'),(56,162,'2016-10-27','2016-09-29'),(56,191,'2015-04-16','2012-09-04'),(56,208,'2011-11-18','2012-08-23'),(56,252,'2021-02-25',NULL),(56,282,'2020-08-30','2013-03-11'),(56,327,'2012-02-27','2012-10-14'),(56,406,'2016-03-22','2011-11-25'),(56,645,'2010-05-16','2021-01-10'),(56,745,'2012-06-22','2012-07-27'),(56,924,'2016-01-08','2021-01-23'),(56,932,'2018-10-17',NULL),(57,46,'2014-06-19','2016-10-31'),(57,89,'2015-05-27','2011-09-09'),(57,119,'2016-09-13','2011-10-02'),(57,432,'2013-05-24','2021-05-06'),(57,876,'2016-11-20','2018-04-18'),(57,879,'2021-09-26','2020-09-24'),(57,885,'2014-11-14',NULL),(58,191,'2014-09-13','2019-01-09'),(58,222,'2013-12-29','2011-01-28'),(58,275,'2011-09-05','2019-07-23'),(58,321,'2021-08-15','2012-04-06'),(58,349,'2012-09-20','2015-04-11'),(58,445,'2020-02-19',NULL),(58,575,'2013-09-02','2012-10-03'),(58,692,'2010-12-12',NULL),(58,767,'2018-11-17',NULL),(58,800,'2013-05-06','2018-01-04'),(59,37,'2021-09-07','2015-09-18'),(59,197,'2019-11-24','2013-12-18'),(59,322,'2021-03-30','2014-10-25'),(59,502,'2010-06-25','2013-09-08'),(59,627,'2019-05-27','2015-12-01'),(59,677,'2010-03-10','2021-06-14'),(59,753,'2014-09-15','2015-10-25'),(59,766,'2013-12-18','2019-10-19'),(60,213,'2010-09-12',NULL),(60,252,'2013-03-17','2012-01-17'),(60,297,'2014-04-08','2021-04-11'),(60,632,'2016-06-02','2019-06-17'),(60,783,'2020-02-22',NULL),(60,905,'2018-02-05','2013-09-19'),(60,990,'2021-04-02','2010-08-19'),(61,40,'2012-02-23','2018-12-05'),(61,52,'2019-07-28','2021-11-08'),(61,411,'2017-05-17','2016-09-21'),(61,561,'2019-08-03','2013-10-02'),(61,682,'2019-03-18','2013-09-04'),(61,695,'2013-04-15','2012-08-03'),(61,851,'2017-09-03','2018-02-16'),(61,901,'2014-10-25','2011-08-17'),(61,902,'2019-09-07','2017-10-23'),(62,285,'2020-03-13','2020-04-28'),(62,342,'2021-03-06','2019-08-08'),(62,388,'2012-06-02','2017-01-29'),(62,449,'2010-12-13','2013-03-20'),(62,474,'2013-02-21','2014-05-14'),(62,601,'2018-10-11','2010-01-10'),(62,634,'2014-11-23','2017-09-14'),(62,736,'2019-05-08','2020-08-20'),(62,768,'2011-07-03','2016-06-22'),(62,833,'2011-06-24','2011-11-02'),(62,947,'2016-06-24','2011-03-01'),(62,951,'2021-08-03','2018-04-19'),(62,972,'2020-02-08','2021-07-03'),(62,993,'2018-12-15','2019-07-27'),(63,134,'2013-07-04','2018-08-13'),(63,426,'2012-01-11','2019-02-12'),(63,455,'2012-07-22','2019-03-25'),(63,650,'2014-08-21','2011-12-26'),(63,827,'2014-07-09',NULL),(63,924,'2014-11-21','2017-05-22'),(63,981,'2018-02-01','2015-01-13'),(64,99,'2011-11-16',NULL),(64,182,'2014-02-16',NULL),(64,215,'2016-04-09',NULL),(64,593,'2011-11-01','2017-01-23'),(65,28,'2014-02-28',NULL),(65,113,'2016-01-13','2010-05-19'),(65,151,'2017-08-23','2014-07-11'),(65,338,'2020-11-09','2017-09-14'),(65,381,'2017-04-07','2012-12-12'),(65,439,'2012-09-28','2018-02-26'),(65,441,'2015-10-15','2021-02-12'),(65,522,'2018-08-30',NULL),(65,583,'2018-02-02','2011-12-11'),(65,713,'2013-12-25',NULL),(65,761,'2011-11-13','2017-01-11'),(66,75,'2016-09-01','2021-01-17'),(66,94,'2015-11-29','2012-10-13'),(66,204,'2014-04-16','2014-07-14'),(66,243,'2019-03-31','2014-11-21'),(66,417,'2019-02-05','2010-10-02'),(66,430,'2010-02-07','2015-06-12'),(66,595,'2010-04-01','2015-05-06'),(66,692,'2018-01-24',NULL),(66,723,'2015-05-07',NULL),(66,900,'2020-09-30','2013-06-05'),(67,37,'2013-12-22','2011-01-19'),(67,205,'2013-11-17',NULL),(67,219,'2016-01-29','2016-09-10'),(67,223,'2014-10-20','2017-12-12'),(67,243,'2012-04-16','2015-09-16'),(67,295,'2020-06-14',NULL),(67,318,'2012-06-07',NULL),(67,365,'2019-02-20',NULL),(67,477,'2011-03-15','2013-05-24'),(67,533,'2020-09-23','2015-07-12'),(67,678,'2019-02-02','2012-09-01'),(67,967,'2010-05-21',NULL),(68,126,'2018-02-26','2011-03-21'),(68,171,'2015-03-10','2014-03-18'),(68,260,'2017-04-07','2021-11-03'),(68,286,'2019-02-18','2021-02-24'),(68,346,'2015-05-07',NULL),(68,483,'2013-02-25','2012-01-02'),(68,567,'2021-01-31',NULL),(68,596,'2010-12-02','2020-03-28'),(68,724,'2016-02-09','2017-05-07'),(68,739,'2010-12-28','2020-08-19'),(68,872,'2014-06-01','2014-03-26'),(68,969,'2013-07-24','2013-02-21'),(69,16,'2015-12-12',NULL),(69,192,'2018-06-13','2021-04-10'),(69,225,'2021-07-13','2017-01-11'),(69,241,'2013-08-15','2016-07-27'),(69,291,'2012-03-08','2015-05-11'),(69,334,'2017-05-02','2016-08-06'),(69,540,'2018-02-18','2010-01-26'),(69,627,'2018-06-02','2017-03-22'),(69,635,'2012-05-02','2014-07-18'),(69,674,'2016-09-25','2018-08-12'),(69,820,'2019-06-04','2016-07-27'),(69,888,'2011-08-28','2014-07-29'),(70,45,'2021-05-24',NULL),(70,139,'2017-09-30','2021-07-18'),(70,182,'2011-03-23','2021-06-24'),(70,258,'2012-06-12','2014-09-24'),(70,264,'2017-12-04',NULL),(70,341,'2020-10-23','2015-04-21'),(70,584,'2011-03-13','2012-07-27'),(70,598,'2020-03-21',NULL),(70,762,'2010-11-22','2014-01-27'),(70,975,'2015-03-31','2014-12-05'),(71,22,'2011-10-10','2010-10-02'),(71,53,'2012-04-05','2015-12-25'),(71,175,'2011-12-24','2014-11-06'),(71,435,'2015-06-19','2012-06-19'),(71,454,'2010-08-08','2011-05-14'),(71,615,'2010-11-21','2018-07-20'),(71,695,'2020-01-20','2016-10-01'),(72,153,'2020-04-17','2021-07-18'),(72,164,'2010-07-18',NULL),(72,260,'2018-09-10','2019-03-20'),(72,286,'2021-09-22','2014-05-16'),(72,324,'2017-07-10','2020-12-13'),(72,326,'2015-08-01','2021-05-18'),(72,457,'2011-01-13','2010-08-12'),(72,565,'2011-08-10',NULL),(72,699,'2017-08-12',NULL),(72,727,'2015-12-23','2016-07-03'),(72,758,'2013-02-08','2012-11-04'),(72,776,'2012-09-21','2013-04-03'),(72,836,'2020-02-29','2016-09-26'),(72,903,'2019-04-07','2020-01-24'),(72,910,'2010-05-21',NULL),(73,55,'2019-01-27','2010-03-18'),(73,146,'2019-10-10','2018-10-27'),(73,172,'2013-05-03',NULL),(73,241,'2021-06-24','2019-07-20'),(73,291,'2017-05-03',NULL),(73,298,'2013-04-11','2014-05-24'),(73,426,'2010-09-16','2019-10-18'),(73,479,'2016-08-06','2010-03-10'),(73,488,'2016-09-10','2016-04-20'),(73,579,'2015-06-25','2020-12-28'),(73,646,'2015-06-12','2012-08-26'),(73,655,'2020-12-26',NULL),(73,683,'2014-03-21','2018-02-10'),(73,696,'2017-05-02',NULL),(73,913,'2013-06-01','2017-07-25'),(73,942,'2013-06-24',NULL),(73,961,'2013-05-29','2017-05-13'),(73,964,'2014-05-10','2018-04-19'),(74,50,'2018-04-22','2014-09-13'),(74,76,'2012-06-04','2015-02-11'),(74,245,'2014-08-15','2012-06-23'),(74,296,'2011-12-07',NULL),(74,348,'2017-02-19','2013-06-30'),(74,356,'2019-04-30','2011-11-03'),(74,415,'2019-12-02','2018-03-02'),(74,437,'2019-11-24',NULL),(74,518,'2015-07-10',NULL),(74,638,'2021-06-21','2018-08-19'),(74,890,'2016-08-01','2019-08-06'),(74,899,'2021-07-10','2016-07-05'),(74,918,'2015-10-20','2017-05-01'),(74,950,'2010-04-01','2014-11-27'),(75,323,'2021-06-22','2019-07-24'),(75,601,'2016-03-08','2020-05-10'),(75,727,'2020-07-27','2011-04-11'),(75,868,'2014-05-29','2010-08-30'),(76,57,'2011-06-04','2015-02-08'),(76,190,'2015-04-29','2014-07-29'),(76,206,'2019-01-20','2011-10-23'),(76,270,'2017-11-19','2020-04-12'),(76,289,'2014-06-27','2013-12-26'),(76,481,'2012-07-21',NULL),(76,503,'2016-06-02',NULL),(76,513,'2013-08-15','2020-10-11'),(76,576,'2017-04-07','2019-03-29'),(76,713,'2013-02-18','2013-03-02'),(76,776,'2012-02-25',NULL),(76,975,'2013-07-09','2013-09-23'),(76,987,'2011-07-16',NULL),(77,169,'2014-11-04',NULL),(77,359,'2020-03-29','2019-03-23'),(77,390,'2018-01-03',NULL),(77,469,'2012-08-23','2011-02-04'),(77,550,'2015-03-07','2021-05-15'),(77,580,'2017-05-15','2011-11-30'),(77,601,'2015-12-15','2018-06-15'),(77,605,'2016-11-24','2010-09-19'),(77,714,'2021-03-04','2019-04-23'),(78,92,'2010-03-14','2018-01-17'),(78,115,'2019-03-03',NULL),(78,118,'2018-08-05','2016-08-07'),(78,171,'2019-01-11','2015-04-10'),(78,275,'2013-12-27','2010-11-06'),(78,380,'2018-02-25',NULL),(78,503,'2018-07-29','2013-06-07'),(78,571,'2019-02-09','2010-01-31'),(78,671,'2012-01-09','2017-08-09'),(78,915,'2011-03-07',NULL),(78,916,'2018-01-17','2021-06-09'),(79,119,'2011-01-01','2015-04-13'),(79,247,'2013-09-14','2017-12-31'),(79,595,'2016-05-12','2020-11-14'),(79,636,'2019-01-03','2016-10-13'),(79,638,'2014-01-19','2015-03-22'),(79,647,'2013-04-22',NULL),(79,659,'2020-09-12',NULL),(79,714,'2018-07-15',NULL),(79,951,'2020-06-14','2014-07-02'),(79,967,'2016-02-27','2016-08-20'),(80,63,'2015-02-10',NULL),(80,259,'2020-03-17','2010-08-28'),(80,687,'2011-08-21',NULL),(80,721,'2021-02-15','2011-12-23'),(80,774,'2018-03-17','2014-03-23'),(80,972,'2019-05-26','2017-08-13'),(81,383,'2019-09-25','2017-09-28'),(81,570,'2017-08-31','2020-02-18'),(81,576,'2012-06-24',NULL),(81,796,'2010-07-23',NULL),(82,162,'2013-06-20','2020-01-13'),(82,699,'2017-06-24','2020-02-03'),(82,893,'2021-10-28','2012-06-29'),(82,921,'2021-01-17','2020-10-03'),(83,245,'2012-05-30',NULL),(83,317,'2017-11-24','2015-12-16'),(83,482,'2016-12-27','2018-11-11'),(83,484,'2020-06-13',NULL),(83,637,'2019-05-04','2011-09-19'),(83,806,'2012-12-01',NULL),(83,952,'2018-12-17','2011-06-09'),(84,40,'2015-09-03','2017-08-19'),(84,129,'2017-10-15','2016-05-15'),(84,221,'2012-08-18','2018-02-08'),(84,243,'2017-07-13',NULL),(84,464,'2018-03-28',NULL),(84,502,'2012-03-02','2014-12-18'),(84,698,'2015-09-12','2010-04-13'),(84,710,'2018-02-12',NULL),(84,742,'2019-07-04','2020-11-27'),(84,795,'2011-04-15',NULL),(84,969,'2021-09-25',NULL),(85,28,'2012-04-15','2017-09-24'),(85,146,'2011-12-08','2011-11-04'),(85,361,'2020-11-10','2017-06-29'),(85,450,'2018-06-27','2014-10-11'),(85,467,'2011-01-22','2015-06-30'),(85,473,'2013-03-27','2010-04-24'),(85,565,'2017-03-25','2010-05-11'),(85,706,'2016-03-25','2018-11-13'),(85,828,'2010-06-04','2013-10-20'),(86,62,'2010-11-01','2017-09-12'),(86,263,'2017-01-23','2021-08-28'),(86,402,'2020-01-12','2020-08-25'),(86,413,'2017-02-14','2010-11-14'),(86,516,'2016-03-14',NULL),(86,598,'2020-06-11',NULL),(86,952,'2011-09-08',NULL),(86,965,'2012-04-07',NULL),(87,429,'2015-08-13',NULL),(87,521,'2013-09-26',NULL),(87,585,'2018-11-27','2019-07-09'),(87,587,'2013-04-26','2017-10-05'),(87,628,'2015-12-02','2011-10-29'),(87,643,'2019-09-13','2020-12-24'),(87,751,'2014-11-15',NULL),(87,835,'2011-08-22','2015-08-26'),(87,846,'2021-06-16','2020-05-11'),(87,881,'2018-09-07','2020-12-31'),(88,7,'2011-06-16','2019-06-13'),(88,100,'2016-08-22','2011-03-08'),(88,249,'2015-02-18','2010-12-12'),(88,275,'2015-01-20','2019-01-10'),(88,292,'2010-12-24','2011-08-01'),(88,570,'2021-03-16',NULL),(88,586,'2019-01-02','2017-07-18'),(88,695,'2019-12-01','2019-09-03'),(88,701,'2010-06-13','2013-11-10'),(88,721,'2016-02-02','2013-07-11'),(88,888,'2011-05-05','2019-07-24'),(88,997,'2010-06-28','2010-05-24'),(89,90,'2013-07-01',NULL),(89,130,'2020-01-03','2021-04-10'),(89,181,'2011-11-19',NULL),(89,303,'2012-10-13','2014-11-16'),(89,411,'2015-08-25','2011-02-03'),(89,445,'2013-02-19',NULL),(89,516,'2017-09-14','2014-01-13'),(90,139,'2018-07-19','2012-06-12'),(90,151,'2010-03-24','2021-03-13'),(90,296,'2014-06-27','2012-03-29'),(90,333,'2012-11-26','2018-04-28'),(90,507,'2015-12-01','2017-06-23'),(90,580,'2012-02-22','2011-10-16'),(90,633,'2011-08-05','2017-07-02'),(90,682,'2013-05-23','2014-07-02'),(90,779,'2018-07-30','2012-10-05'),(90,786,'2018-07-06','2015-03-13'),(91,31,'2021-03-09',NULL),(91,36,'2018-01-02','2015-10-26'),(91,48,'2010-10-26','2020-12-20'),(91,205,'2014-09-07','2010-10-27'),(91,262,'2012-11-25','2015-09-26'),(91,387,'2013-05-27',NULL),(91,403,'2018-02-19','2017-03-10'),(91,404,'2016-09-01',NULL),(91,422,'2014-07-06','2015-05-18'),(91,430,'2018-11-06','2013-04-14'),(91,559,'2019-12-09','2016-01-11'),(91,682,'2012-02-24','2018-02-21'),(91,701,'2011-03-10','2011-02-15'),(91,845,'2017-02-12','2019-05-12'),(91,951,'2012-12-24','2013-06-16'),(92,233,'2012-11-04','2013-08-12'),(92,247,'2015-07-04','2014-07-12'),(92,494,'2019-03-01','2014-01-15'),(92,594,'2017-05-09',NULL),(92,628,'2019-04-18',NULL),(92,661,'2010-02-04','2010-10-05'),(92,682,'2013-10-02',NULL),(92,740,'2016-10-20','2020-05-20'),(92,766,'2010-12-26','2019-04-18'),(92,850,'2012-07-20','2011-01-18'),(92,944,'2020-12-26','2012-09-25'),(92,963,'2010-05-22','2020-07-20'),(93,64,'2018-10-09','2018-02-16'),(93,137,'2013-09-30','2020-06-19'),(93,207,'2019-10-03','2017-09-17'),(93,286,'2018-09-29','2017-07-28'),(93,299,'2011-12-07',NULL),(93,380,'2021-06-22',NULL),(93,474,'2012-08-27','2020-02-25'),(93,483,'2017-08-19','2021-08-24'),(93,492,'2015-09-25','2021-01-26'),(93,705,'2012-12-19','2018-01-25'),(93,885,'2018-04-26',NULL),(93,922,'2015-08-16','2014-06-05'),(94,82,'2012-08-10',NULL),(94,205,'2015-10-31','2019-04-07'),(94,212,'2018-11-08','2021-09-05'),(94,536,'2011-12-03','2017-08-05'),(94,806,'2019-07-10','2013-01-25'),(95,192,'2010-10-12','2016-09-16'),(95,199,'2018-08-24','2011-01-05'),(95,217,'2017-12-03','2016-05-30'),(95,234,'2017-11-07','2014-08-14'),(95,411,'2018-01-25','2019-05-07'),(95,525,'2012-10-12',NULL),(95,648,'2014-05-13','2021-10-15'),(95,800,'2018-03-29','2016-11-20'),(95,837,'2017-07-06','2011-03-10'),(95,839,'2020-07-02','2018-02-05'),(96,9,'2015-07-23','2015-12-15'),(96,42,'2021-01-07','2012-07-10'),(96,199,'2015-05-12','2016-02-05'),(96,291,'2017-01-04','2016-03-24'),(96,403,'2020-03-25',NULL),(96,468,'2014-09-27',NULL),(96,487,'2021-02-13','2010-10-24'),(96,524,'2018-02-06','2010-12-27'),(96,588,'2013-08-24','2015-05-16'),(96,600,'2013-07-31','2017-05-07'),(96,703,'2014-10-12','2010-09-29'),(97,34,'2020-05-26','2013-07-12'),(97,101,'2012-11-22','2018-07-01'),(97,162,'2021-04-17','2012-12-11'),(97,168,'2017-05-17','2016-07-16'),(97,502,'2018-11-06','2020-12-10'),(97,538,'2017-02-05','2014-08-12'),(97,649,'2016-05-06','2018-05-01'),(97,816,'2010-03-22','2014-11-03'),(97,834,'2013-06-25',NULL),(98,254,'2018-05-23','2014-02-27'),(98,279,'2019-05-02','2012-03-22'),(98,308,'2011-09-09','2018-10-25'),(98,325,'2016-06-11','2013-07-18'),(98,352,'2013-09-21','2014-09-02'),(98,378,'2013-01-08',NULL),(98,620,'2016-11-04',NULL),(98,697,'2020-08-23',NULL),(98,745,'2012-07-31','2013-02-01'),(99,125,'2010-11-23','2014-11-28'),(99,336,'2016-01-10',NULL),(99,456,'2018-06-24','2011-01-08'),(99,599,'2016-02-26','2011-02-13'),(99,656,'2020-03-03','2015-06-21'),(99,719,'2010-10-29','2019-10-19'),(99,904,'2013-06-13','2010-02-24'),(100,172,'2019-01-30',NULL),(100,300,'2018-04-10','2020-12-11'),(100,335,'2011-10-21','2020-01-23'),(100,402,'2017-08-07','2020-09-14'),(100,669,'2010-07-13','2020-03-01');
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-23 12:54:46
