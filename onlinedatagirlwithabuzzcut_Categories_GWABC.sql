-- MySQL dump 10.13  Distrib 8.0.31, for macos12 (x86_64)
--
-- Host: localhost    Database: onlinedatagirlwithabuzzcut
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `Categories_GWABC`
--

DROP TABLE IF EXISTS `Categories_GWABC`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Categories_GWABC` (
  `Cat_Id` int NOT NULL AUTO_INCREMENT,
  `Cat_Name` varchar(55) DEFAULT NULL,
  `Cat_Descr` varchar(500) DEFAULT NULL,
  `Cat_DecisionRules` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`Cat_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Categories_GWABC`
--

LOCK TABLES `Categories_GWABC` WRITE;
/*!40000 ALTER TABLE `Categories_GWABC` DISABLE KEYS */;
INSERT INTO `Categories_GWABC` VALUES (1,'Femininity','This category includes images of figure(s) which show(s) feminine features.','Based on conventional social recognition. If the figure is wearing general famale-style makeup(eye shadow/eyeliner/lipstick/...) or women\'s clothes(dress/skirt/skinny sweater/crop top/...), categorise the image under \'Femininity\'.'),(2,'Masculinity','This category includes images of figure(s) which show(s) masculine features.','Based on conventional social recognition. If the figure is wearing men\'s clothes or shows a men-like style in the context, categorise the image under \'Masculinity\'.'),(3,'Neutral Gender','This category includes images of figure(s) without any obvious gender features.','If the figure doesn\'t show any features of conventional gender expression (no makeup/unisex clothes), categorise the image under \'Neutral Gender\'.');
/*!40000 ALTER TABLE `Categories_GWABC` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-03 17:12:08
