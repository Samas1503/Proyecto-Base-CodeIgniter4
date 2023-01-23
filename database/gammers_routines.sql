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
-- Temporary view structure for view `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!50001 DROP VIEW IF EXISTS `usuarios`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `usuarios` AS SELECT 
 1 AS `id_usuario`,
 1 AS `nombre`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `comentariosview`
--

DROP TABLE IF EXISTS `comentariosview`;
/*!50001 DROP VIEW IF EXISTS `comentariosview`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `comentariosview` AS SELECT 
 1 AS `id_comentario`,
 1 AS `usuario`,
 1 AS `juego`,
 1 AS `fecha`,
 1 AS `comentario`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `usuariosview`
--

DROP TABLE IF EXISTS `usuariosview`;
/*!50001 DROP VIEW IF EXISTS `usuariosview`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `usuariosview` AS SELECT 
 1 AS `id_usuario`,
 1 AS `nombre`,
 1 AS `apellido`,
 1 AS `email`,
 1 AS `tipo_usuario`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `partidasview`
--

DROP TABLE IF EXISTS `partidasview`;
/*!50001 DROP VIEW IF EXISTS `partidasview`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `partidasview` AS SELECT 
 1 AS `estado`,
 1 AS `juego`,
 1 AS `usuario`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `juegosview`
--

DROP TABLE IF EXISTS `juegosview`;
/*!50001 DROP VIEW IF EXISTS `juegosview`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `juegosview` AS SELECT 
 1 AS `id_juego`,
 1 AS `nombre`,
 1 AS `descripcion`,
 1 AS `nivel`,
 1 AS `clase`,
 1 AS `cant_votos`,
 1 AS `puntos`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `niveles`
--

DROP TABLE IF EXISTS `niveles`;
/*!50001 DROP VIEW IF EXISTS `niveles`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `niveles` AS SELECT 
 1 AS `id_nivel`,
 1 AS `descripcion`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `clases`
--

DROP TABLE IF EXISTS `clases`;
/*!50001 DROP VIEW IF EXISTS `clases`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `clases` AS SELECT 
 1 AS `id_clase`,
 1 AS `nivel`,
 1 AS `descripcion`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tipos_usuarios`
--

DROP TABLE IF EXISTS `tipos_usuarios`;
/*!50001 DROP VIEW IF EXISTS `tipos_usuarios`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tipos_usuarios` AS SELECT 
 1 AS `id_tipo`,
 1 AS `descripcion`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `juegos`
--

DROP TABLE IF EXISTS `juegos`;
/*!50001 DROP VIEW IF EXISTS `juegos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `juegos` AS SELECT 
 1 AS `id_juego`,
 1 AS `nombre`,
 1 AS `descripcion`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `usuarios`
--

/*!50001 DROP VIEW IF EXISTS `usuarios`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`codeigniter4`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `usuarios` AS select `system_user`.`id_system_user` AS `id_usuario`,concat(`system_user`.`first_name`,' ',`system_user`.`last_name`) AS `nombre` from `system_user` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `comentariosview`
--

/*!50001 DROP VIEW IF EXISTS `comentariosview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`codeigniter4`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `comentariosview` AS select `commentary`.`id_commentary` AS `id_comentario`,(select concat('#',`system_user`.`id_system_user`,' - ',`system_user`.`first_name`,' ',`system_user`.`last_name`) from `system_user` where (`commentary`.`id_system_user` = `system_user`.`id_system_user`)) AS `usuario`,(select `game`.`name` from `game` where (`game`.`id_game` = `commentary`.`id_game`)) AS `juego`,`commentary`.`comment_date` AS `fecha`,`commentary`.`commentary` AS `comentario` from `commentary` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `usuariosview`
--

/*!50001 DROP VIEW IF EXISTS `usuariosview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`codeigniter4`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `usuariosview` AS select `system_user`.`id_system_user` AS `id_usuario`,`system_user`.`first_name` AS `nombre`,`system_user`.`last_name` AS `apellido`,`system_user`.`email` AS `email`,(select concat(`user_type`.`id_user_type`,' - ',`user_type`.`description`) from `user_type` where (`user_type`.`id_user_type` = `system_user`.`id_user_type`)) AS `tipo_usuario` from `system_user` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `partidasview`
--

/*!50001 DROP VIEW IF EXISTS `partidasview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`codeigniter4`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `partidasview` AS select `play`.`completed` AS `estado`,(select `game`.`name` from `game` where (`game`.`id_game` = `play`.`id_game`)) AS `juego`,(select concat(`system_user`.`first_name`,' ',`system_user`.`last_name`) from `system_user` where (`play`.`id_system_user` = `system_user`.`id_system_user`)) AS `usuario` from `play` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `juegosview`
--

/*!50001 DROP VIEW IF EXISTS `juegosview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`codeigniter4`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `juegosview` AS select `game`.`id_game` AS `id_juego`,`game`.`name` AS `nombre`,`game`.`description` AS `descripcion`,(select `level_game`.`description` from `level_game` where (`game`.`id_level` = `level_game`.`id_level`)) AS `nivel`,(select `class`.`description` from `class` where (`game`.`id_class` = `class`.`id_class`)) AS `clase`,(select count(`vote`.`id_vote`) from `vote` where (`vote`.`id_game` = `game`.`id_game`)) AS `cant_votos`,(select avg(`vote`.`value`) from `vote` where (`vote`.`id_game` = `game`.`id_game`)) AS `puntos` from `game` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `niveles`
--

/*!50001 DROP VIEW IF EXISTS `niveles`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`codeigniter4`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `niveles` AS select `level_game`.`id_level` AS `id_nivel`,`level_game`.`description` AS `descripcion` from `level_game` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `clases`
--

/*!50001 DROP VIEW IF EXISTS `clases`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`codeigniter4`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `clases` AS select `class`.`id_class` AS `id_clase`,(select `level_game`.`description` from `level_game` where (`level_game`.`id_level` = `class`.`id_level`)) AS `nivel`,`class`.`description` AS `descripcion` from `class` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tipos_usuarios`
--

/*!50001 DROP VIEW IF EXISTS `tipos_usuarios`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`codeigniter4`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `tipos_usuarios` AS select `user_type`.`id_user_type` AS `id_tipo`,`user_type`.`description` AS `descripcion` from `user_type` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `juegos`
--

/*!50001 DROP VIEW IF EXISTS `juegos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`codeigniter4`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `juegos` AS select `game`.`id_game` AS `id_juego`,`game`.`name` AS `nombre`,`game`.`description` AS `descripcion` from `game` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Dumping events for database 'gammers'
--

--
-- Dumping routines for database 'gammers'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-23 12:54:46
