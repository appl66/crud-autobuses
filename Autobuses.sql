-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: autobuses_db
-- ------------------------------------------------------
-- Server version	8.0.46

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
-- Table structure for table `bus`
--

DROP TABLE IF EXISTS `bus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bus` (
  `código` int NOT NULL AUTO_INCREMENT COMMENT 'TRIAL',
  `tipo de bus` varchar(255) DEFAULT NULL COMMENT 'TRIAL',
  `combustible` varchar(255) DEFAULT NULL COMMENT 'TRIAL',
  `modelo` varchar(255) DEFAULT NULL COMMENT 'TRIAL',
  `obsevaciones` varchar(255) DEFAULT NULL COMMENT 'TRIAL',
  `trial786` char(1) DEFAULT NULL COMMENT 'TRIAL',
  PRIMARY KEY (`código`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='TRIAL';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bus`
--

LOCK TABLES `bus` WRITE;
/*!40000 ALTER TABLE `bus` DISABLE KEYS */;
INSERT INTO `bus` VALUES (3,'Gusanito','Diésel','Tata Hispano',NULL,'T'),(4,'Simple','Gasolina','Renault Serie 200',NULL,'T'),(5,'Simple','Eléctrico/Diesel','Mercedes Benz Citaro K am','Convertido a Híbrido para circular por ZBE','T'),(6,'Simple','Hidrógeno','Caetano H2 CityGold','En reserva  / sin asignar','T'),(7,'Simple','Eléctrico','BYD 4529 LBD','En reserva  / sin asignar','T'),(8,'Dos pisos','Diesel','MAN A95 (ND323F)','Para Turismo','T');
/*!40000 ALTER TABLE `bus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conductores`
--

DROP TABLE IF EXISTS `conductores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conductores` (
  `dni` varchar(50) NOT NULL COMMENT 'TRIAL',
  `estado` varchar(255) DEFAULT NULL COMMENT 'TRIAL',
  `turno` varchar(255) DEFAULT NULL COMMENT 'TRIAL',
  `id bus asignado` int DEFAULT NULL COMMENT 'TRIAL',
  `trial786` char(1) DEFAULT NULL COMMENT 'TRIAL',
  PRIMARY KEY (`dni`),
  KEY `id bus` (`id bus asignado`),
  CONSTRAINT `busconductores` FOREIGN KEY (`id bus asignado`) REFERENCES `bus` (`código`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='TRIAL';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conductores`
--

LOCK TABLES `conductores` WRITE;
/*!40000 ALTER TABLE `conductores` DISABLE KEYS */;
INSERT INTO `conductores` VALUES ('23746276I','Activo','Mañana',4,'T'),('23746327L','Activo','Mañana',3,'T'),('24538325F','Activo','Tarde',3,'T'),('32746883E','Baja','Mañana',3,'T'),('53654634R','Activo','Tarde',5,'T');
/*!40000 ALTER TABLE `conductores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conductores de baja`
--

DROP TABLE IF EXISTS `conductores de baja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conductores de baja` (
  `dni` varchar(50) DEFAULT NULL COMMENT 'TRIAL',
  `estado` varchar(255) DEFAULT NULL COMMENT 'TRIAL',
  `turno` varchar(255) DEFAULT NULL COMMENT 'TRIAL',
  `id bus asignado` int DEFAULT NULL COMMENT 'TRIAL',
  `trial786` char(1) DEFAULT NULL COMMENT 'TRIAL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='TRIAL';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conductores de baja`
--

LOCK TABLES `conductores de baja` WRITE;
/*!40000 ALTER TABLE `conductores de baja` DISABLE KEYS */;
INSERT INTO `conductores de baja` VALUES ('32746883E','Baja','Mañana',3,'T');
/*!40000 ALTER TABLE `conductores de baja` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `líneas`
--

DROP TABLE IF EXISTS `líneas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `líneas` (
  `número de linea` int NOT NULL COMMENT 'TRIAL',
  `observaciones` varchar(255) DEFAULT NULL COMMENT 'TRIAL',
  `tipo de linea` varchar(255) DEFAULT NULL COMMENT 'TRIAL',
  `trial786` char(1) DEFAULT NULL COMMENT 'TRIAL',
  PRIMARY KEY (`número de linea`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='TRIAL';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `líneas`
--

LOCK TABLES `líneas` WRITE;
/*!40000 ALTER TABLE `líneas` DISABLE KEYS */;
INSERT INTO `líneas` VALUES (33,'Desvio por Av Goya por obras','Ida y Vuelta','T'),(75,NULL,'Circular','T');
/*!40000 ALTER TABLE `líneas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plazas de aparcamiento`
--

DROP TABLE IF EXISTS `plazas de aparcamiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plazas de aparcamiento` (
  `nº plaza` int NOT NULL AUTO_INCREMENT COMMENT 'TRIAL',
  `cargador` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'TRIAL',
  `id bus` int DEFAULT NULL COMMENT 'TRIAL',
  `trial786` char(1) DEFAULT NULL COMMENT 'TRIAL',
  PRIMARY KEY (`nº plaza`),
  KEY `idx_id bus` (`id bus`),
  CONSTRAINT `busplazas de aparcamiento` FOREIGN KEY (`id bus`) REFERENCES `bus` (`código`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='TRIAL';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plazas de aparcamiento`
--

LOCK TABLES `plazas de aparcamiento` WRITE;
/*!40000 ALTER TABLE `plazas de aparcamiento` DISABLE KEYS */;
INSERT INTO `plazas de aparcamiento` VALUES (1,0,3,'T'),(2,0,4,'T'),(3,1,5,'T'),(4,0,6,'T'),(5,1,7,'T'),(6,0,8,'T');
/*!40000 ALTER TABLE `plazas de aparcamiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registros`
--

DROP TABLE IF EXISTS `registros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registros` (
  `nº registro` int NOT NULL AUTO_INCREMENT COMMENT 'TRIAL',
  `código bus` int DEFAULT NULL COMMENT 'TRIAL',
  `tipo de registro` varchar(255) DEFAULT NULL COMMENT 'TRIAL',
  `fecha` varchar(255) DEFAULT NULL COMMENT 'TRIAL',
  `observaciones` varchar(255) DEFAULT NULL COMMENT 'TRIAL',
  `trial786` char(1) DEFAULT NULL COMMENT 'TRIAL',
  PRIMARY KEY (`nº registro`),
  KEY `idx_código bus` (`código bus`),
  CONSTRAINT `busregistros` FOREIGN KEY (`código bus`) REFERENCES `bus` (`código`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='TRIAL';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registros`
--

LOCK TABLES `registros` WRITE;
/*!40000 ALTER TABLE `registros` DISABLE KEYS */;
INSERT INTO `registros` VALUES (1,3,'ITV','13/11/25','ITV Malpica','T'),(2,4,'Avería - Pinchazo','14/11/25','Rueda Frontal izda pinchada','T'),(3,5,'Avería - Luna','16/11/25','Una piedrecita ha hecho una rotura de la luna frontal','T');
/*!40000 ALTER TABLE `registros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sentido`
--

DROP TABLE IF EXISTS `sentido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sentido` (
  `id linea` int NOT NULL AUTO_INCREMENT COMMENT 'TRIAL',
  `tipo` varchar(255) DEFAULT NULL COMMENT 'TRIAL',
  `origen` varchar(255) DEFAULT NULL COMMENT 'TRIAL',
  `destino` varchar(255) DEFAULT NULL COMMENT 'TRIAL',
  `línea activa` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'TRIAL',
  `número línea` int NOT NULL COMMENT 'TRIAL',
  `id bus` int DEFAULT NULL COMMENT 'TRIAL',
  `trial786` char(1) DEFAULT NULL COMMENT 'TRIAL',
  PRIMARY KEY (`id linea`),
  KEY `idx_id bus` (`id bus`),
  KEY `idx_número línea` (`número línea`),
  CONSTRAINT `bussentido` FOREIGN KEY (`id bus`) REFERENCES `bus` (`código`),
  CONSTRAINT `líneassentido` FOREIGN KEY (`número línea`) REFERENCES `líneas` (`número de linea`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='TRIAL';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sentido`
--

LOCK TABLES `sentido` WRITE;
/*!40000 ALTER TABLE `sentido` DISABLE KEYS */;
INSERT INTO `sentido` VALUES (1,'Ida','Av Patatas nº52','Calle Ntra Sra del Pilar nº15',1,33,3,'T'),(2,'Vuelta','Calle Ntra Sra del Pilar nº2','Av Patatas nº40',1,33,4,'T'),(3,'Circular','Coso nº62','Calle carretera nº42',1,75,5,'T');
/*!40000 ALTER TABLE `sentido` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-20 12:08:35
