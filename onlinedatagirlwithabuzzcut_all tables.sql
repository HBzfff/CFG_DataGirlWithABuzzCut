CREATE DATABASE  IF NOT EXISTS `onlinedatagirlwithabuzzcut` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `onlinedatagirlwithabuzzcut`;
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
-- Temporary view structure for view `all_words`
--

DROP TABLE IF EXISTS `all_words`;
/*!50001 DROP VIEW IF EXISTS `all_words`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `all_words` AS SELECT 
 1 AS `KeyWord`,
 1 AS `KeyWord_Count`,
 1 AS `Post_Id`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `AltWordsWithinPosts`
--

DROP TABLE IF EXISTS `AltWordsWithinPosts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `AltWordsWithinPosts` (
  `KeyWord` varchar(20) DEFAULT NULL,
  `AltWord` varchar(20) DEFAULT NULL,
  `Post_Id` varchar(10) DEFAULT NULL,
  `AltWord_Count` int DEFAULT NULL,
  KEY `PostId2` (`Post_Id`),
  CONSTRAINT `PostId2` FOREIGN KEY (`Post_Id`) REFERENCES `CodesWithinCat` (`Post_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AltWordsWithinPosts`
--

LOCK TABLES `AltWordsWithinPosts` WRITE;
/*!40000 ALTER TABLE `AltWordsWithinPosts` DISABLE KEYS */;
INSERT INTO `AltWordsWithinPosts` VALUES ('girl','girls','p33',1),('girl','girls','p1',1),('girl','girls','p16',1),('girl','girls\'','p25',1),('sister','sisters','p27',1),('year','years','p24',1);
/*!40000 ALTER TABLE `AltWordsWithinPosts` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `Codes_VisualRep_GWABC`
--

DROP TABLE IF EXISTS `Codes_VisualRep_GWABC`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Codes_VisualRep_GWABC` (
  `Code_Id` int NOT NULL AUTO_INCREMENT,
  `Code` varchar(55) DEFAULT NULL,
  `Code_Descr` varchar(500) DEFAULT NULL,
  `Code_DecisionRule` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`Code_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Codes_VisualRep_GWABC`
--

LOCK TABLES `Codes_VisualRep_GWABC` WRITE;
/*!40000 ALTER TABLE `Codes_VisualRep_GWABC` DISABLE KEYS */;
INSERT INTO `Codes_VisualRep_GWABC` VALUES (1,'Wearing women’s clothes or jewellery and with makeup','This code includes half-body / whole-body portraits which show figures wearing women\'s clothes or jewellery and with makeup','If the image is a half-body / whole-body portrait, and the figure in it is wearing women\'s clothes (dress / skirt /skinny top/...) or jewellery (convertional women-style earings / ring / necklace... - depends on the specific items, usually with thin diameter or fine texture) with makeup (lipstick, eye shadow, eyeliners...), code the image under \'wearing women’s clothes or jewellery and with makeup\'.'),(2,'Wearing women’s clothes or jewellery and without makeup','This code includes half-body / whole-body portraits which show figures wearing women\'s clothes or jewellery and without makeup','If the image is a half-body / whole-body portrait, and the figure in it is wearing women\'s clothes (dress / skirt /skinny top/...) or jewellery (convertional women-style earings / ring / necklace... - depends on the specific items, usually with thin diameter or fine texture) without makeup, code the image under \'wearing women’s clothes or jewellery and without makeup\'.'),(3,'With makeup','This code includes bust / headshot portraits which show figures with makeup','If the image is a bust / headshot, and the figure in it is wearing makeup (lipstick, eye shadow, eyeliners...), code the image under \'with makeup\'.'),(4,'Wearing men’s clothes or jewellery and without makeup','This code includes half-body / whole-body portraits which show figures wearing men\'s clothes or jewellery and without makeup','If the image is a half-body / whole-body portrait, and the figure in it is wearing men\'s clothes (men\'s suits / tank top...) or jewellery (convertional men-style earings / ring / necklace... - depends on the specific items, usually with thick diameter or rough texture) without makeup, code the image under \'wearing men’s clothes or jewellery and without makeup\'.'),(5,'Wearing unisex clothes or jewellery and with makeup','This code includes half-body / whole-body portraits which show figures wearing unisex clothes or jewellery and with makeup','If the image is a half-body / whole-body portrait, and figure in it is wearing unisex clothes (loose hoodie / loose shirt / loose trousers /...) or jewellery (simple style without any obvious gender features) with makeup (lipstick, eye shadow, eyeliners...), code the image under \'wearing unisex clothes or jewellery and with makeup\'.'),(6,'Wearing unisex clothes or jewellery and without makeup','This code includes half-body / whole-body portraits which show figures wearing unisex clothes or jewellery and without makeup','If the image is a half-body / whole-body portrait, and figure in it is wearing unisex clothes (loose hoodie / loose shirt / loose trousers /...) or jewellery (simple style without any obvious gender features) without makeup, code the image under \'wearing unisex clothes or jewellery and without makeup\'.'),(7,'without makeup','This code inclueds bust / headshot which show figures without makeup','If the image is a bust / headshot, and the figure in it doesn\'t wear makeup, code the image under \'without makeup\'.');
/*!40000 ALTER TABLE `Codes_VisualRep_GWABC` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Temporary view structure for view `contentanalysis_coding`
--

DROP TABLE IF EXISTS `contentanalysis_coding`;
/*!50001 DROP VIEW IF EXISTS `contentanalysis_coding`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `contentanalysis_coding` AS SELECT 
 1 AS `Cat_Name`,
 1 AS `Code_Freq`,
 1 AS `Cat_Pct`*/;
SET character_set_client = @saved_cs_client;

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

--
-- Final view structure for view `all_words`
--

/*!50001 DROP VIEW IF EXISTS `all_words`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `all_words` AS select `keywordswithinposts`.`KeyWord` AS `KeyWord`,`keywordswithinposts`.`KeyWord_Count` AS `KeyWord_Count`,`keywordswithinposts`.`Post_Id` AS `Post_Id` from `keywordswithinposts` union all select `altwordswithinposts`.`KeyWord` AS `KeyWord`,`altwordswithinposts`.`AltWord_Count` AS `AltWord_Count`,`altwordswithinposts`.`Post_Id` AS `Post_Id` from `altwordswithinposts` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `contentanalysis_coding`
--

/*!50001 DROP VIEW IF EXISTS `contentanalysis_coding`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `contentanalysis_coding` AS select `categories_gwabc`.`Cat_Name` AS `Cat_Name`,count(0) AS `Code_Freq`,concat(round(((count(0) / (select count(0) from `codeswithincat`)) * 100),2),'%') AS `Cat_Pct` from ((`categories_gwabc` join `codeswithincat` on((`categories_gwabc`.`Cat_Id` = `codeswithincat`.`Cat_Id`))) join `codes_visualrep_gwabc` on((`codeswithincat`.`Code_Id` = `codes_visualrep_gwabc`.`Code_Id`))) group by `categories_gwabc`.`Cat_Id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-03 17:42:08
