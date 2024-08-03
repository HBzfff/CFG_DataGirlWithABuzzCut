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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-03 17:12:08
