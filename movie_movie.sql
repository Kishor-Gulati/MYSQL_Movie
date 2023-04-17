CREATE DATABASE  IF NOT EXISTS `movie` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `movie`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: movie
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `movie`
--

DROP TABLE IF EXISTS `movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie` (
  `mov_id` int DEFAULT NULL,
  `mov_title` text,
  `mov_year` int DEFAULT NULL,
  `mov_time` int DEFAULT NULL,
  `mov_lang` text,
  `mov_dt_rel` text,
  `mov_rel_country` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie`
--

LOCK TABLES `movie` WRITE;
/*!40000 ALTER TABLE `movie` DISABLE KEYS */;
INSERT INTO `movie` VALUES (901,'Vertigo',1958,128,'English','8/24/1958','UK'),(902,'The Innocents',1961,100,'English','2/19/1962','SW'),(903,'Lawrence of Arabia',1962,216,'English','12/11/1962','UK'),(904,'The Deer Hunter',1978,183,'English','3/8/1979','UK'),(905,'Amadeus',1984,160,'English','1/7/1985','UK'),(906,'Blade Runner',1982,117,'English','9/9/1982','UK'),(907,'Eyes Wide Shut',1999,159,'English','','UK'),(908,'The Usual Suspects',1995,106,'English','8/25/1995','UK'),(909,'Chinatown',1974,130,'English','8/9/1974','UK'),(910,'Boogie Nights',1997,155,'English','2/16/1998','UK'),(911,'Annie Hall',1977,93,'English','4/20/1977','USA'),(912,'Princess Mononoke',1997,134,'Japanese','10/19/2001','UK'),(913,'The Shawshank Redemption',1994,142,'English','2/17/1995','UK'),(914,'American Beauty',1999,122,'English','','UK'),(915,'Titanic',1997,194,'English','1/23/1998','UK'),(916,'Good Will Hunting',1997,126,'English','6/3/1998','UK'),(917,'Deliverance',1972,109,'English','10/5/1982','UK'),(918,'Trainspotting',1996,94,'English','2/23/1996','UK'),(919,'The Prestige',2006,130,'English','11/10/2006','UK'),(920,'Donnie Darko',2001,113,'English','','UK'),(921,'Slumdog Millionaire',2008,120,'English','1/9/2009','UK'),(922,'Aliens',1986,137,'English','8/29/1986','UK'),(923,'Beyond the Sea',2004,118,'English','11/26/2004','UK'),(924,'Avatar',2009,162,'English','12/17/2009','UK'),(926,'Seven Samurai',1954,207,'Japanese','4/26/1954','JP'),(927,'Spirited Away',2001,125,'Japanese','9/12/2003','UK'),(928,'Back to the Future',1985,116,'English','12/4/1985','UK'),(925,'Braveheart',1995,178,'English','9/8/1995','UK');
/*!40000 ALTER TABLE `movie` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-15 18:20:09
