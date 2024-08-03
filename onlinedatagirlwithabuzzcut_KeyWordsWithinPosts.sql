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
-- Table structure for table `KeyWordsWithinPosts`
--

DROP TABLE IF EXISTS `KeyWordsWithinPosts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `KeyWordsWithinPosts` (
  `KeyWord` varchar(20) DEFAULT NULL,
  `Post_Id` varchar(10) DEFAULT NULL,
  `KeyWord_Count` int DEFAULT NULL,
  KEY `PostId` (`Post_Id`),
  CONSTRAINT `PostId` FOREIGN KEY (`Post_Id`) REFERENCES `CodesWithinCat` (`Post_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KeyWordsWithinPosts`
--

LOCK TABLES `KeyWordsWithinPosts` WRITE;
/*!40000 ALTER TABLE `KeyWordsWithinPosts` DISABLE KEYS */;
INSERT INTO `KeyWordsWithinPosts` VALUES ('girl','p5',2),('girl','p11',1),('girl','p12',1),('girl','p20',1),('girl','p22',1),('left','p1',1),('left','p5',1),('left','p6',1),('left','p15',1),('left','p18',1),('left','p34',1),('swipe','p1',1),('swipe','p5',1),('swipe','p6',1),('swipe','p15',1),('swipe','p18',1),('swipe','p34',1),('help','p6',1),('help','p15',1),('help','p16',1),('help','p18',1),('help','p34',1),('sister','p30',2),('year','p15',1),('year','p19',1),('clitoris\'','p23',1),('clitoris\'','p35',1),('abnormal','p20',1),('amazing','p32',1),('changed','p11',1),('dormitory','p20',1),('dramatic','p20',1),('dude','p20',1),('female','p15',1),('fluid','p24',1),('gaze','p19',1),('gender','p20',1),('gilrfriend','p34',1),('handsome','p34',1),('lesbians','p35',1),('straight','p35',1);
/*!40000 ALTER TABLE `KeyWordsWithinPosts` ENABLE KEYS */;
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
