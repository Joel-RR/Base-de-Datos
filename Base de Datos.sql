CREATE DATABASE  IF NOT EXISTS `videjuego` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `videjuego`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: videjuego
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
-- Table structure for table `jugadores`
--

DROP TABLE IF EXISTS `jugadores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jugadores` (
  `id_jugador` int NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellidos` varchar(45) NOT NULL,
  `alias` varchar(45) NOT NULL,
  `cumpleaños` varchar(45) NOT NULL,
  `primer_login` varchar(45) NOT NULL,
  `correo` varchar(45) NOT NULL,
  `id_partida` int NOT NULL,
  `id_personaje` int NOT NULL,
  PRIMARY KEY (`id_jugador`),
  KEY `fk_01_idx` (`id_partida`),
  KEY `fk_02_idx` (`id_personaje`),
  CONSTRAINT `fk_01` FOREIGN KEY (`id_partida`) REFERENCES `partidas` (`id_partida`),
  CONSTRAINT `fk_02` FOREIGN KEY (`id_personaje`) REFERENCES `personaje` (`id_personaje`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jugadores`
--

LOCK TABLES `jugadores` WRITE;
/*!40000 ALTER TABLE `jugadores` DISABLE KEYS */;
INSERT INTO `jugadores` VALUES (1,'Juan','Sanchez','Elchicarcas','2002-06-22 00:00:00','17/09/2022','Elchicarcas@gmail.com',12,12),(2,'Luis','Gomez','Ciber1','2022-03-22 00:00:00','18/09/2022','Ciber1@gmail.com',13,12),(3,'Cesar','Hernandez','CocoCabra','2012-05-22 00:00:00','19/09/2022','CocoCabra@gmail.com',14,12),(4,'Rafael','Ambar','Zhongli','2013-06-22 00:00:00','20/09/2022','Zhongli@gmail.com',15,12),(5,'Joel','Ricaño','YamiRalph','2004-09-22 00:00:00','21/09/2022','YamiRalph@gmail.com',16,12);
/*!40000 ALTER TABLE `jugadores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partidas`
--

DROP TABLE IF EXISTS `partidas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `partidas` (
  `id_partida` int NOT NULL,
  `nivel` varchar(45) NOT NULL,
  `score` varchar(45) NOT NULL,
  `id_personaje` int NOT NULL,
  PRIMARY KEY (`id_partida`),
  KEY `fk_02_idx` (`id_personaje`),
  CONSTRAINT `fk_03` FOREIGN KEY (`id_personaje`) REFERENCES `personaje` (`id_personaje`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partidas`
--

LOCK TABLES `partidas` WRITE;
/*!40000 ALTER TABLE `partidas` DISABLE KEYS */;
INSERT INTO `partidas` VALUES (12,'Mundo 1-1','400',12),(13,'Mundo 1-2','200',12),(14,'Mundo 1-3','150',12),(15,'Mundo 1-4','40',12),(16,'Mundo 1-5','100',12);
/*!40000 ALTER TABLE `partidas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personaje`
--

DROP TABLE IF EXISTS `personaje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personaje` (
  `id_personaje` int NOT NULL,
  `nombre_personaje` varchar(45) NOT NULL,
  `descripcion` varchar(1000) NOT NULL,
  `arma` varchar(45) NOT NULL,
  `municion` varchar(45) NOT NULL,
  `vidas` varchar(45) NOT NULL,
  PRIMARY KEY (`id_personaje`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personaje`
--

LOCK TABLES `personaje` WRITE;
/*!40000 ALTER TABLE `personaje` DISABLE KEYS */;
INSERT INTO `personaje` VALUES (12,'Willian Afton','Un Vigilante de seguiridad de la universidad, valiente, herorico, honesto.','Pistola.','100','5');
/*!40000 ALTER TABLE `personaje` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'videjuego'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-15 16:12:49

