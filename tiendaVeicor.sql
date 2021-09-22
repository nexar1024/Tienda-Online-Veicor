CREATE DATABASE  IF NOT EXISTS `tienda_veicor` /*!40100 DEFAULT CHARACTER SET latin1 COLLATE latin1_bin */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `tienda_veicor`;
-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: 163.123.183.88    Database: tienda_veicor
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'admin','21232f297a57a5a743894a0e4a801fc3','2017-01-24 16:21:18','19-08-2021 11:32:56 PM');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Hogar','','2021-08-12 06:01:16',NULL);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userId` int DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,1,'3',1,'2017-03-07 19:32:57','COD',NULL),(3,1,'4',1,'2017-03-10 19:43:04','Debit / Credit card','Delivered'),(4,1,'17',1,'2017-03-08 16:14:17','COD','in Process'),(5,1,'3',1,'2017-03-08 19:21:38','COD',NULL),(6,1,'4',1,'2017-03-08 19:21:38','COD',NULL),(7,1,'2',1,'2020-06-22 13:58:56','Internet Banking',NULL),(8,1,'1',1,'2020-06-22 14:06:25','COD',NULL),(9,1,'12',1,'2020-06-22 14:06:25','COD',NULL),(10,4,'2',3,'2020-06-23 00:58:37','Debit / Credit card',NULL),(11,4,'18',1,'2020-06-23 01:54:11','Internet Banking',NULL),(12,4,'20',1,'2020-06-23 03:02:41','Internet Banking',NULL),(13,4,'15',1,'2020-06-23 03:04:45','COD',NULL),(14,4,'12',1,'2020-06-23 03:07:50',NULL,NULL),(15,4,'15',1,'2020-06-23 03:07:50',NULL,NULL),(16,4,'2',1,'2020-06-23 03:23:40',NULL,NULL),(17,1,'1',3,'2021-08-12 06:05:25','',NULL),(18,5,'1',1,'2021-08-12 16:26:08',NULL,NULL),(19,6,'1',1,'2021-08-20 04:23:16','',NULL),(20,6,'3',1,'2021-08-20 04:52:47','','Entregado');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordertrackhistory`
--

DROP TABLE IF EXISTS `ordertrackhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ordertrackhistory` (
  `id` int NOT NULL AUTO_INCREMENT,
  `orderId` int DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordertrackhistory`
--

LOCK TABLES `ordertrackhistory` WRITE;
/*!40000 ALTER TABLE `ordertrackhistory` DISABLE KEYS */;
INSERT INTO `ordertrackhistory` VALUES (1,20,'Entregado','Entregado','2021-08-20 04:54:08');
/*!40000 ALTER TABLE `ordertrackhistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productreviews`
--

DROP TABLE IF EXISTS `productreviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productreviews` (
  `id` int NOT NULL AUTO_INCREMENT,
  `productId` int DEFAULT NULL,
  `quality` int DEFAULT NULL,
  `price` int DEFAULT NULL,
  `value` int DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext,
  `reviewDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productreviews`
--

LOCK TABLES `productreviews` WRITE;
/*!40000 ALTER TABLE `productreviews` DISABLE KEYS */;
INSERT INTO `productreviews` VALUES (2,3,4,5,5,'Anuj Kumar','BEST PRODUCT FOR ME :)','BEST PRODUCT FOR ME :)','2017-02-26 20:43:57'),(3,3,3,4,3,'Sarita pandey','Nice Product','Value for money','2017-02-26 20:52:46'),(4,3,3,4,3,'Sarita pandey','Nice Product','Value for money','2017-02-26 20:59:19');
/*!40000 ALTER TABLE `productreviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category` int NOT NULL,
  `subCategory` int DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` double DEFAULT NULL,
  `productPriceBeforeDiscount` int DEFAULT NULL,
  `productDescription` longtext,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,1,1,'Lamparas ','PROTEC',3,NULL,'<br>','images.jpg','lampara-madera-xl-668x400x80xX.jpg','',1,'En Stock','2021-08-12 06:04:22',NULL),(2,1,1,'Focos','Master',2,NULL,'<br>','FOCO-ALTA-POTENCIA-30-40-50-WATTS.jpg','images.jpg','',1,'En Stock','2021-08-12 19:42:44',NULL),(3,1,3,'Macetero','TuMacetero',3.15,NULL,'16-22.5 cm de alto<div>22-25 cm de diámetro&nbsp;</div>','maceta.png','maceta.png','maceta.png',1,'En Stock','2021-08-20 04:39:06',NULL);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subcategory`
--

DROP TABLE IF EXISTS `subcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subcategory` (
  `id` int NOT NULL AUTO_INCREMENT,
  `categoryid` int DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subcategory`
--

LOCK TABLES `subcategory` WRITE;
/*!40000 ALTER TABLE `subcategory` DISABLE KEYS */;
INSERT INTO `subcategory` VALUES (1,1,'madera','2021-08-12 06:01:34',NULL),(2,1,'Iluminación','2021-08-12 19:41:59',NULL),(3,1,'Jardin','2021-08-20 04:35:34',NULL);
/*!40000 ALTER TABLE `subcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userlog`
--

DROP TABLE IF EXISTS `userlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userlog` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) DEFAULT NULL,
  `status` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userlog`
--

LOCK TABLES `userlog` WRITE;
/*!40000 ALTER TABLE `userlog` DISABLE KEYS */;
INSERT INTO `userlog` VALUES (1,'anuj.lpu1@gmail.com',_binary '::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2017-02-26 11:18:50','',1),(2,'anuj.lpu1@gmail.com',_binary '::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2017-02-26 11:29:33','',1),(3,'anuj.lpu1@gmail.com',_binary '::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2017-02-26 11:30:11','',1),(4,'anuj.lpu1@gmail.com',_binary '::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2017-02-26 15:00:23','26-02-2017 11:12:06 PM',1),(5,'anuj.lpu1@gmail.com',_binary '::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2017-02-26 18:08:58','',0),(6,'anuj.lpu1@gmail.com',_binary '::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2017-02-26 18:09:41','',0),(7,'anuj.lpu1@gmail.com',_binary '::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2017-02-26 18:10:04','',0),(8,'anuj.lpu1@gmail.com',_binary '::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2017-02-26 18:10:31','',0),(9,'anuj.lpu1@gmail.com',_binary '::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2017-02-26 18:13:43','',1),(10,'anuj.lpu1@gmail.com',_binary '::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2017-02-27 18:52:58','',0),(11,'anuj.lpu1@gmail.com',_binary '::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2017-02-27 18:53:07','',1),(12,'anuj.lpu1@gmail.com',_binary '::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2017-03-03 18:00:09','',0),(13,'anuj.lpu1@gmail.com',_binary '::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2017-03-03 18:00:15','',1),(14,'anuj.lpu1@gmail.com',_binary '::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2017-03-06 18:10:26','',1),(15,'anuj.lpu1@gmail.com',_binary '::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2017-03-07 12:28:16','',1),(16,'anuj.lpu1@gmail.com',_binary '::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2017-03-07 18:43:27','',1),(17,'anuj.lpu1@gmail.com',_binary '::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2017-03-07 18:55:33','',1),(18,'anuj.lpu1@gmail.com',_binary '::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2017-03-07 19:44:29','',1),(19,'anuj.lpu1@gmail.com',_binary '::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2017-03-08 19:21:15','',1),(20,'anuj.lpu1@gmail.com',_binary '::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2017-03-15 17:19:38','',1),(21,'anuj.lpu1@gmail.com',_binary '::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2017-03-15 17:20:36','15-03-2017 10:50:39 PM',1),(22,'anuj.lpu1@gmail.com',_binary '::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2017-03-16 01:13:57','',1),(23,'hgfhgf@gmass.com',_binary '::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2018-04-29 09:30:40','',1),(24,'anuj.lpu1@gmail.com',_binary '::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2020-06-22 13:49:46',NULL,0),(25,'anuj.lpu1@gmail.com',_binary '::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2020-06-22 13:54:27','22-06-2020 07:42:06 PM',1),(26,'anuj.lpu1@gmail.com',_binary '::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2020-06-22 20:37:14',NULL,1),(27,'platea21@platea21.com',_binary '::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2020-06-23 00:58:24','22-06-2020 08:40:53 PM',1),(28,'platea21@platea21.com',_binary '::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2020-06-23 01:45:10',NULL,1),(29,'platea21@platea21.com',_binary '::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2020-06-23 03:23:26',NULL,0),(30,'platea21@platea21.com',_binary '::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2020-06-23 03:23:36',NULL,1),(31,'rhlm1999@hotmail.com',_binary '::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2021-08-12 16:22:59',NULL,0),(32,'rhlm1999@hotmail.com',_binary '::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2021-08-12 16:23:58',NULL,0),(33,'rhlm1999@hotmail.com',_binary '::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2021-08-12 16:24:41',NULL,1),(34,'nexar.futbol.6@gmail.com',_binary '::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2021-08-20 04:22:37',NULL,0),(35,'nexar.futbol.6@gmail.com',_binary '::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2021-08-20 04:23:11',NULL,1),(36,'nexar.futbol.6@gmail.com',_binary '::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2021-08-20 04:51:28',NULL,1);
/*!40000 ALTER TABLE `userlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int DEFAULT NULL,
  `billingAddress` longtext,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Anuj Kumar','anuj.lpu1@gmail.com',9009857868,'f925916e2754e5e03f75dd58a5733251','CS New Delhi','New Delhi','Delhi',110001,'New Delhi','New Delhi','Delhi',110092,'2017-02-04 19:30:50',''),(2,'Amit ','amit@gmail.com',8285703355,'5c428d8875d2948607f3e3fe134d71b4','','','',0,'','','',0,'2017-03-15 17:21:22',''),(3,'hg','hgfhgf@gmass.com',1121312312,'827ccb0eea8a706c4c34a16891f84e7b','','','',0,'','','',0,'2018-04-29 09:30:32',''),(4,'Platea21','platea21@platea21.com',948445199,'77821d6f09aad66ace339068f6b7f61c',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-06-23 00:58:07',NULL),(5,'Cristian','rhlm1999@hotmail.com',991538877,'f090c9ee79513fc9cac708d54c0983ed',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-08-12 16:24:30',NULL),(6,'Nexar Cedeño','nexar.futbol.6@gmail.com',959137007,'04c1ad04cf229c361c0d54b93885c17e','Barrio Santa Martha Avenida 34 calle 6','Manta','Manta',130804,'Barrio Santa Martha Avenida 34 calle 6','Manta','Manta',130804,'2021-08-20 04:22:59',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ventas`
--

DROP TABLE IF EXISTS `ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ventas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `claveTransaccion` varchar(200) DEFAULT NULL,
  `PaypalDatos` text,
  `Fecha` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Correo` varchar(200) DEFAULT NULL,
  `Total` decimal(60,2) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas`
--

LOCK TABLES `ventas` WRITE;
/*!40000 ALTER TABLE `ventas` DISABLE KEYS */;
INSERT INTO `ventas` VALUES (1,'1','Array','2021-08-12 06:05:33','maikollx3@gmail.com',4.00,'completado'),(2,'5','Array','2021-08-12 16:26:16','rhlm1999@hotmail.com',4.00,'completado'),(3,'6','Array','2021-08-20 04:23:23','nexar.futbol.6@gmail.com',4.00,'completado'),(4,'6','Array','2021-08-20 04:52:56','nexar.futbol.6@gmail.com',4.15,'completado');
/*!40000 ALTER TABLE `ventas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishlist`
--

DROP TABLE IF EXISTS `wishlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wishlist` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userId` int DEFAULT NULL,
  `productId` int DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishlist`
--

LOCK TABLES `wishlist` WRITE;
/*!40000 ALTER TABLE `wishlist` DISABLE KEYS */;
INSERT INTO `wishlist` VALUES (1,1,0,'2017-02-27 18:53:17'),(2,4,12,'2020-06-23 03:05:43');
/*!40000 ALTER TABLE `wishlist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-08-20  0:17:25
