CREATE DATABASE  IF NOT EXISTS `demo_mvc` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `demo_mvc`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: demo_mvc
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
-- Table structure for table `cargos`
--

DROP TABLE IF EXISTS `cargos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cargos` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(60) NOT NULL,
  `id_departamento_fk` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_gseglqgqp16hn9j3pqn06m8oy` (`nome`),
  KEY `FKtjl420ddyfp607dq6vo67blqi` (`id_departamento_fk`),
  CONSTRAINT `FKtjl420ddyfp607dq6vo67blqi` FOREIGN KEY (`id_departamento_fk`) REFERENCES `departamentos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cargos`
--

LOCK TABLES `cargos` WRITE;
/*!40000 ALTER TABLE `cargos` DISABLE KEYS */;
INSERT INTO `cargos` VALUES (1,'Ti',2),(2,'Escritor',4),(3,'CIO',11),(6,'Medico',14),(7,'teste',2),(10,'K7 Email Teste',8),(11,'Português',44),(12,'Google ADS',8),(13,'Eclipse, VSCode',27),(14,'Rede Web',48);
/*!40000 ALTER TABLE `cargos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departamentos`
--

DROP TABLE IF EXISTS `departamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departamentos` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(60) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_gmqvdqbwy3c9wja72wnfd01kc` (`nome`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamentos`
--

LOCK TABLES `departamentos` WRITE;
/*!40000 ALTER TABLE `departamentos` DISABLE KEYS */;
INSERT INTO `departamentos` VALUES (43,'Administração'),(46,'Contabilidade'),(2,'Departamento'),(11,'Empresarial '),(45,'Enfemeiro'),(44,'Escritor'),(8,'Gestor de Trafego'),(27,'Java-build-package'),(14,'Psicologia'),(15,'Recrutamento e Seleção,'),(47,'Recursos Humanos'),(4,'Remuneração'),(48,'Tecnologia da Informação');
/*!40000 ALTER TABLE `departamentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enderecos`
--

DROP TABLE IF EXISTS `enderecos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enderecos` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `bairro` varchar(255) NOT NULL,
  `cep` varchar(9) NOT NULL,
  `cidade` varchar(255) NOT NULL,
  `complemento` varchar(255) DEFAULT NULL,
  `logradouro` varchar(255) NOT NULL,
  `numero` int NOT NULL,
  `uf` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enderecos`
--

LOCK TABLES `enderecos` WRITE;
/*!40000 ALTER TABLE `enderecos` DISABLE KEYS */;
INSERT INTO `enderecos` VALUES (1,'Jacaranda','13179-355','Sumaré','casa','casa',23,'SP'),(2,'sadfasdf','13179-365','Sumaré','casa','',24,'SP'),(4,'sdafasd','21321-312','sdafas','sadfsad','sadfas',2132,'PR');
/*!40000 ALTER TABLE `enderecos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionarios`
--

DROP TABLE IF EXISTS `funcionarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcionarios` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `data_entrada` date NOT NULL,
  `data_saida` date DEFAULT NULL,
  `nome` varchar(255) NOT NULL,
  `salario` decimal(7,2) NOT NULL DEFAULT '0.00',
  `cargo_id_fk` bigint DEFAULT NULL,
  `endereco_id_fk` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_jmxa8whte99rhpgvxq8a28vhm` (`nome`),
  KEY `FKo4oltd663g3w8cd4iiw5ggina` (`cargo_id_fk`),
  KEY `FK3qpeu6e4lxnghbisl8hwqm0oe` (`endereco_id_fk`),
  CONSTRAINT `FK3qpeu6e4lxnghbisl8hwqm0oe` FOREIGN KEY (`endereco_id_fk`) REFERENCES `enderecos` (`id`),
  CONSTRAINT `FKo4oltd663g3w8cd4iiw5ggina` FOREIGN KEY (`cargo_id_fk`) REFERENCES `cargos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionarios`
--

LOCK TABLES `funcionarios` WRITE;
/*!40000 ALTER TABLE `funcionarios` DISABLE KEYS */;
INSERT INTO `funcionarios` VALUES (1,'2023-02-10','2023-02-24','Ana Dada',3333.00,1,1),(2,'1212-12-10','2333-02-11','Juliano Marcondes Rocha',1203.23,6,2),(4,'2023-01-29','2023-02-24','xzc\\z',212.13,3,4);
/*!40000 ALTER TABLE `funcionarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-28 16:13:14
