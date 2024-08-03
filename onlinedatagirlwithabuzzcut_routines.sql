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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-03 17:12:08
