CREATE DATABASE  IF NOT EXISTS `manzana` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `manzana`;
-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: manzana
-- ------------------------------------------------------
-- Server version	5.7.10-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `proyecto`
--

DROP TABLE IF EXISTS `proyecto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proyecto` (
  `idproyecto` int(11) NOT NULL AUTO_INCREMENT,
  `nombreproyecto` varchar(50) NOT NULL,
  `descripcion` varchar(300) NOT NULL,
  `fechainicio` date NOT NULL,
  `fechafin` date NOT NULL,
  `estado` int(11) NOT NULL,
  `miembros` int(11) NOT NULL,
  PRIMARY KEY (`idproyecto`),
  UNIQUE KEY `idproyecto` (`idproyecto`),
  KEY `miembros` (`miembros`),
  CONSTRAINT `proyecto_ibfk_1` FOREIGN KEY (`miembros`) REFERENCES `usuarios` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proyecto`
--

LOCK TABLES `proyecto` WRITE;
/*!40000 ALTER TABLE `proyecto` DISABLE KEYS */;
INSERT INTO `proyecto` VALUES (1,'Construccion edificio','realizar un buen diseño arquitectornico','2017-01-20','2017-12-20',1,2),(3,'SAL LA FINA','ES UN PROYECTO DE SAL...','2015-01-02','2015-12-29',1,2),(4,'GALLETAS HABANERAS','MARCA GAMESA GALLETAS INTEGRALES','2017-02-28','2017-08-12',1,1),(5,'SPECIAL K','CEREAL ORIGINAL KELLUGS','2016-03-04','2017-12-12',1,3),(6,'KARATE CACAHUATE','CACAHUATE ESTILO JAPONES','2017-01-01','2017-12-31',1,3),(7,'GALLETAS PRINCIPE','GALLETAS CON RELLENO DE CHOCOLATE, MARCA MARINELA','2016-07-07','2017-01-03',1,1),(10,'PAN TOSTADO','PAN CLASICO BIMBO','2017-11-12','2017-12-12',1,2),(11,'JAVASCRIPT','COMO UTILIZAR HERRAMIENTA','2017-11-12','2017-12-12',1,1),(12,'EPURA','AMA TU CUERPO, AGUA.','2017-11-12','2017-12-12',1,2),(13,'TIKITO','LECHE DE SABOR VAINILLA','2017-09-13','2017-11-15',1,2),(14,'BONAFONT','AGUA MINERAL 600 ML.','2017-10-12','2017-12-12',1,2),(15,'GENERATION','PREPARAR JOVENES PROGRAMADORES EN TECNOLOGIA JAVA','2017-11-12','2017-12-12',1,3),(16,'SALSA VALENTINA','SALSA PICANTE PARA COMIDAS','2017-11-13','2017-12-16',1,3),(17,'TE DE LIMON','TE MCORMICK','2017-11-12','2017-12-12',1,3),(18,'AGUA EPURA','AMA TU CUERPO','2017-11-12','2017-12-12',1,3);
/*!40000 ALTER TABLE `proyecto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `correo` varchar(300) NOT NULL,
  `contrasena` varchar(50) NOT NULL,
  PRIMARY KEY (`id_usuario`),
  UNIQUE KEY `id_usuario` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'CHRISTIAN OMAR GONZALEZ RIVERA','chrisomar@gmail.com','1234556'),(2,'GONZALO GONZALEZ RIVERA','gonzalo@gmail.com','5564323'),(3,'FELIX GONZALEZ PEÑA','felixpeña@gmail.com','5564323');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-15 10:12:24
