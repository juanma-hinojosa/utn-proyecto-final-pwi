CREATE DATABASE  IF NOT EXISTS `utn_social_midia` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `utn_social_midia`;
-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: utn_social_midia
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `card_services`
--

DROP TABLE IF EXISTS `card_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `card_services` (
  `id_card_services` int NOT NULL AUTO_INCREMENT,
  `card_services_name` varchar(45) NOT NULL,
  `card_services_desc` varchar(45) NOT NULL,
  PRIMARY KEY (`id_card_services`),
  UNIQUE KEY `id_card_services_UNIQUE` (`id_card_services`),
  UNIQUE KEY `card_services_name_UNIQUE` (`card_services_name`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='		';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `card_services`
--

LOCK TABLES `card_services` WRITE;
/*!40000 ALTER TABLE `card_services` DISABLE KEYS */;
INSERT INTO `card_services` VALUES (12,'Carpinteria','Muebles y Restauracion'),(13,'Reformas','Rapido y con Calidad'),(14,'Albañileria','Base de la construccion'),(15,'Durlock','Construcciones rapida e Higenica'),(18,'Electricidad','Seguridad, Eficiencia y ahorro'),(19,'Herreria','Soldaduras de Calidad y Durabilidad'),(20,'Pintura','Pintura interior y Exterior'),(21,'Revestimientos','Colocacion de Ceramicas y Porcelanato');
/*!40000 ALTER TABLE `card_services` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-18 19:18:19
