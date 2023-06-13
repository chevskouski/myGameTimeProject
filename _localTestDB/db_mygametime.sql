CREATE DATABASE  IF NOT EXISTS `db_mygametime` /*!40100 DEFAULT CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `db_mygametime`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: db_mygametime
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
-- Table structure for table `opr_carrito`
--

DROP TABLE IF EXISTS `opr_carrito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `opr_carrito` (
  `id_producto` int unsigned NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) COLLATE utf8mb3_spanish_ci NOT NULL,
  `id_tipo_producto` int NOT NULL,
  `id_marca` int NOT NULL,
  `id_modelo` int NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `imagen` varchar(245) COLLATE utf8mb3_spanish_ci NOT NULL,
  `concepto` varchar(245) COLLATE utf8mb3_spanish_ci NOT NULL,
  PRIMARY KEY (`id_producto`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opr_carrito`
--

LOCK TABLES `opr_carrito` WRITE;
/*!40000 ALTER TABLE `opr_carrito` DISABLE KEYS */;
/*!40000 ALTER TABLE `opr_carrito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opr_marca`
--

DROP TABLE IF EXISTS `opr_marca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `opr_marca` (
  `id_marca` int unsigned NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) COLLATE utf8mb3_spanish_ci NOT NULL,
  `estado_registro` enum('A','B') COLLATE utf8mb3_spanish_ci NOT NULL DEFAULT 'A',
  PRIMARY KEY (`id_marca`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opr_marca`
--

LOCK TABLES `opr_marca` WRITE;
/*!40000 ALTER TABLE `opr_marca` DISABLE KEYS */;
INSERT INTO `opr_marca` VALUES (1,'XBOX','A'),(2,'NINTENDO','A'),(3,'PLAYSTATION','A'),(4,'ATARI','A');
/*!40000 ALTER TABLE `opr_marca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opr_modelo`
--

DROP TABLE IF EXISTS `opr_modelo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `opr_modelo` (
  `id_modelo` int unsigned NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(150) COLLATE utf8mb3_spanish_ci NOT NULL,
  `estado_registro` enum('A','B') COLLATE utf8mb3_spanish_ci NOT NULL DEFAULT 'A',
  PRIMARY KEY (`id_modelo`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opr_modelo`
--

LOCK TABLES `opr_modelo` WRITE;
/*!40000 ALTER TABLE `opr_modelo` DISABLE KEYS */;
INSERT INTO `opr_modelo` VALUES (1,'UBISOFT','A'),(2,'EA','B'),(3,'PLAYGROUND','A'),(4,'NAUGTHY DOG','A');
/*!40000 ALTER TABLE `opr_modelo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opr_producto`
--

DROP TABLE IF EXISTS `opr_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `opr_producto` (
  `id_producto` int unsigned NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(245) COLLATE utf8mb3_spanish_ci NOT NULL,
  `id_tipo_producto` int NOT NULL,
  `id_marca` int NOT NULL,
  `id_modelo` int NOT NULL,
  `precio` decimal(10,2) NOT NULL DEFAULT '0.00',
  `imagen` varchar(245) COLLATE utf8mb3_spanish_ci NOT NULL,
  `publicar` enum('S','N') COLLATE utf8mb3_spanish_ci NOT NULL DEFAULT 'S',
  `concepto` varchar(245) COLLATE utf8mb3_spanish_ci NOT NULL,
  `estado_registro` enum('A','B') COLLATE utf8mb3_spanish_ci NOT NULL DEFAULT 'A',
  PRIMARY KEY (`id_producto`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opr_producto`
--

LOCK TABLES `opr_producto` WRITE;
/*!40000 ALTER TABLE `opr_producto` DISABLE KEYS */;
INSERT INTO `opr_producto` VALUES (1,'AC Valhalla',1,1,1,59.99,'1686631773.png','S','Las avanzadas mecánicas RPG de Assassin\'s Creed Valhalla te brindan nuevas formas para crecer como guerrero y como líder. Influye al mundo a tu alrededorLas avanzadas mecánicas RPG de Assassin\'s Creed Valhalla te brindan nuevas formas para crece','A'),(2,'The Crew',1,3,1,29.99,'1686637340.png','S','The Crew es un revolucionario juego de acción y coches, desarrollado en exclusiva para las consolas de nueva generación. Tus amigos y tú disfrutaréis de emociones fuertes en una gigantesca reproducción de los Estados Unidos en forma de mundo abi','A'),(3,'Splinter Cell',1,1,1,9.99,'1686637456.png','S','Tom Clancy\'s Splinter Cell es un exitoso videojuego en 3D de acción-aventura y sigilo de 2002, desarrollado por Ubisoft Montreal con el Unreal Engine 2','A'),(4,'F1 2021',1,1,2,49.99,'1686637559.png','S','F1 2021 es el videojuego oficial de las temporadas 2021 de Fórmula 1 y del Campeonato de Fórmula 2 de la FIA desarrollado por Codemasters y distribuido por Electronic Arts bajo la división EA Sports. ','A'),(5,'Forza Horizon 5',1,1,3,59.99,'1686637715.png','S','Forza Horizon 5 es un videojuego de carreras multijugador en línea desarrollado por Playground Games y publicado por Xbox Game Studios. Es el quinto título de Forza Horizon y la duodécima entrega principal de la serie Forza. El juego está ambien','A'),(6,'Forza Horizon 5 - HOTWHEELS',2,1,3,29.99,'1686637883.png','S','¡Explora Horizon Hot Wheels Park con nuevos biomas, pistas, 10 autos nuevos, una nueva historia, 80 nuevas piezas de pista y acrobacias para crear tu propia aventura de Hot Wheels EventLab, nuevas funciones de accesibilidad y mucho más!','A'),(7,'PlayStation Plus 1 MES',3,3,4,9.99,'1686638013.png','S','Únete a PlayStation Plus en un plan de suscripción Essential, Extra o Premium y consigue cientos de juegos para PS4 y PS5, multijugador online','A'),(8,'Need for Speed: Carbon',1,2,2,14.99,'1686638266.png','S','Need for Speed: Carbon es un videojuego de carreras desarrollado por EA Black Box y publicado por Electronic Arts. Es la décima entrega de la saga de videojuegos Need for Speed. Fue mostrado por primera vez en la conferencia de Sony durante el E','A'),(9,'Splatoon 3',1,2,3,14.99,'1686638388.png','S','Splatoon 3 es la tercera entrega de la serie Splatoon. Es la secuela del exitoso juego de disparos en tercera persona, Splatoon 2, de 2017, desarrollado y publicado por Nintendo para la consola Nintendo Switch. Al igual que su predecesor, fue la','A'),(10,'Super Mario Bros',1,4,4,999.99,'1686638536.png','S','Mario Bros. es un videojuego de arcade desarrollado por Nintendo en el año 1983. Fue creado por Shigeru Miyamoto','A'),(11,'Game Pass Ultimate',3,1,2,14.99,'1686638789.png','S','Juega a títulos nuevos el mismo día de su lanzamiento. Además, disfruta de cientos de juegos de alta calidad con amigos en tu consola, PC o la nube. Añadimos nuevos juegos constantemente, por lo que siempre habrá algo nuevo para disfrutar','A');
/*!40000 ALTER TABLE `opr_producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opr_tipo_producto`
--

DROP TABLE IF EXISTS `opr_tipo_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `opr_tipo_producto` (
  `id_tipo_producto` int unsigned NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) COLLATE utf8mb3_spanish_ci NOT NULL,
  `estado_registro` enum('A','B') COLLATE utf8mb3_spanish_ci NOT NULL DEFAULT 'A',
  PRIMARY KEY (`id_tipo_producto`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opr_tipo_producto`
--

LOCK TABLES `opr_tipo_producto` WRITE;
/*!40000 ALTER TABLE `opr_tipo_producto` DISABLE KEYS */;
INSERT INTO `opr_tipo_producto` VALUES (1,'JUEGO','A'),(2,'DLC','A'),(3,'MEMBRESIA','B');
/*!40000 ALTER TABLE `opr_tipo_producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_usuario`
--

DROP TABLE IF EXISTS `sys_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_usuario` (
  `id_usuario` int unsigned NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(75) COLLATE utf8mb3_spanish_ci NOT NULL,
  `usuario` varchar(50) COLLATE utf8mb3_spanish_ci NOT NULL,
  `clave_acceso` varchar(50) COLLATE utf8mb3_spanish_ci NOT NULL,
  `estado_registro` enum('A','B') COLLATE utf8mb3_spanish_ci NOT NULL DEFAULT 'A',
  PRIMARY KEY (`id_usuario`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_usuario`
--

LOCK TABLES `sys_usuario` WRITE;
/*!40000 ALTER TABLE `sys_usuario` DISABLE KEYS */;
INSERT INTO `sys_usuario` VALUES (1,'administrador','admin','admin123','A'),(2,'Sofia Lopez','sofia.lopez','sofia123','A'),(3,'Luis Perez','luis.perez','luis123','A');
/*!40000 ALTER TABLE `sys_usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-13  0:51:57
