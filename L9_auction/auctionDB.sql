-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: auctiondb
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `bids`
--

DROP TABLE IF EXISTS `bids`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bids` (
  `bid_id` int(11) NOT NULL AUTO_INCREMENT,
  `bid_date` date DEFAULT NULL,
  `bid_value` double DEFAULT NULL,
  `items_item_id` int(11) NOT NULL,
  `users_user_id` int(11) NOT NULL,
  PRIMARY KEY (`bid_id`),
  KEY `fk_bids_items1_idx` (`items_item_id`),
  KEY `fk_bids_users1_idx` (`users_user_id`),
  CONSTRAINT `fk_bids_items1` FOREIGN KEY (`items_item_id`) REFERENCES `items` (`item_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_bids_users1` FOREIGN KEY (`users_user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1013 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bids`
--

LOCK TABLES `bids` WRITE;
/*!40000 ALTER TABLE `bids` DISABLE KEYS */;
INSERT INTO `bids` VALUES (1001,'2019-08-05',10,101,1),(1002,'2019-08-05',11,101,2),(1003,'2019-08-06',12,101,1),(1004,'2019-08-06',14,101,2),(1005,'2019-08-10',20,101,1),(1006,'2019-08-12',5,102,1),(1007,'2019-08-14',450,103,3),(1008,'2019-08-14',20,104,4),(1009,'2019-08-14',5000,105,5),(1010,'2019-08-16',350,106,1),(1011,'2019-08-16',10000,107,5),(1012,'2019-08-17',10,102,2);
/*!40000 ALTER TABLE `bids` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `items` (
  `item_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `start_price` double DEFAULT NULL,
  `bid_increment` double DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `stop_date` date DEFAULT NULL,
  `buy_it_now` binary(1) DEFAULT '0',
  `users_user_id` int(11) NOT NULL,
  PRIMARY KEY (`item_id`),
  KEY `fk_items_users_idx` (`users_user_id`),
  CONSTRAINT `fk_items_users` FOREIGN KEY (`users_user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES (101,'Red vase','It\'s red and pretty',10,1,'2019-08-05','2019-08-15',_binary '1',6),(102,'Wooden chair','Just a chair',5,1,'2019-08-05','2019-08-18',_binary '1',6),(103,'Silver ring','Has a weird gem inside',450,50,'2019-08-10','2019-08-20',_binary '0',7),(104,'Hinged shelf','Looks reliable',20,2,'2019-08-11','2019-08-21',_binary '1',6),(105,'Gloomy staff','Glowing red',2000,100,'2019-08-15','2019-08-25',_binary '0',7),(106,'Angular sofa','Almost new!',350,10,'2019-08-15','2019-08-20',_binary '0',6),(107,'Mysterious red casket','It\'s shaking',10000,500,'2019-08-16','2019-08-18',_binary '0',7);
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(45) DEFAULT NULL,
  `billing_address` varchar(100) DEFAULT NULL,
  `login` varchar(20) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Efremov N.M.','k.12 - 84','Nikona','112233'),(2,'Kuznecov V.O.','k.12 - 87','Vavval','skr12'),(3,'Semenova V.U.','k.12 - 72','Solnce','i1i1i12'),(4,'Kostulev G.P.','k.12 - 72','Ad12','Si1235'),(5,'Sheldon P.','Ma\'s pension',NULL,NULL),(6,'Shoiru S.S.','k.10 - 7','Ashoi','13572S'),(7,'Dexter D.','Miskatonic camp.',NULL,NULL);
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

-- Dump completed on 2019-08-18  2:08:33
