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
-- Table structure for table `CodesWithinCat`
--

DROP TABLE IF EXISTS `CodesWithinCat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CodesWithinCat` (
  `Cat_Id` int DEFAULT NULL,
  `Code_Id` int DEFAULT NULL,
  `Post_Id` varchar(10) DEFAULT NULL,
  UNIQUE KEY `PostId` (`Post_Id`),
  KEY `CatId` (`Cat_Id`),
  KEY `CodeId` (`Code_Id`),
  CONSTRAINT `CatId` FOREIGN KEY (`Cat_Id`) REFERENCES `Categories_GWABC` (`Cat_Id`),
  CONSTRAINT `CodeId` FOREIGN KEY (`Code_Id`) REFERENCES `Codes_VisualRep_GWABC` (`Code_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CodesWithinCat`
--

LOCK TABLES `CodesWithinCat` WRITE;
/*!40000 ALTER TABLE `CodesWithinCat` DISABLE KEYS */;
INSERT INTO `CodesWithinCat` VALUES (1,1,'p3'),(1,1,'p7'),(1,1,'p8'),(1,1,'p17'),(1,1,'p18'),(1,2,'p1'),(1,2,'p5'),(1,2,'p6'),(1,2,'p35'),(1,3,'p2'),(1,3,'p4'),(1,3,'p11'),(2,4,'p9'),(2,4,'p15'),(3,5,'p10'),(3,5,'p13'),(3,5,'p14'),(3,5,'p19'),(3,5,'p21'),(3,5,'p22'),(3,5,'p30'),(3,5,'p31'),(3,6,'p12'),(3,6,'p16'),(3,6,'p20'),(3,6,'p25'),(3,6,'p26'),(3,6,'p34'),(3,7,'p28'),(3,7,'p32'),(3,7,'p23'),(3,7,'p24'),(3,7,'p27'),(3,7,'p29'),(3,7,'p33');
/*!40000 ALTER TABLE `CodesWithinCat` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-03 17:12:07
