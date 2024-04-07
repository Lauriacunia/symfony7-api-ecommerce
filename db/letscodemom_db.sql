-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: localhost    Database: letscodemom
-- ------------------------------------------------------
-- Server version	8.0.36-0ubuntu0.22.04.1

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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `id` int NOT NULL AUTO_INCREMENT,
  `full_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_id` int DEFAULT NULL,
  `costumer_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_D4E6F818BAC62AF` (`city_id`),
  KEY `IDX_D4E6F8160B71152` (`costumer_id`),
  CONSTRAINT `FK_D4E6F8160B71152` FOREIGN KEY (`costumer_id`) REFERENCES `costumer` (`id`),
  CONSTRAINT `FK_D4E6F818BAC62AF` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (13,'160 Calle de la Justicia planta baja6 D','52426',25,36),(14,'92 Calle de la Alegría ático 8 D','57718',29,28),(15,'991 Calle de la Alegría planta baja 4 D','58435',6,50),(16,'616 Calle Real planta baja5 D','59558',22,15),(17,'185 Paseo de la Castellana planta baja 10 D','59579',46,35),(18,'748 Calle de la Ciudad planta baja9 D','56042',17,40),(19,'31 Calle del Cambio planta baja 2 D','55561',22,25),(20,'155 Calle de la Esperanza planta baja4 D','54343',12,44),(21,'616 Calle de la Luna planta baja 5 D','56329',37,37),(22,'500 Calle de la Solidaridad planta baja9 D','55273',1,25),(23,'370 Calle de la Tranquilidad planta baja4 D','50434',8,30),(24,'550 Calle Desconocida piso 8 D','53662',30,44),(25,'552 Calle de la Libertad piso 3 D','57678',6,15),(26,'113 Calle de la Vida planta baja3 D','50921',36,12),(27,'38 Calle de las Estrellas ático 6 D','53787',17,28),(28,'699 Calle Desconocida piso 7 D','55656',42,23),(29,'758 Calle de la Naturaleza planta baja4 D','59240',30,8),(30,'3 Calle de la Montaña planta baja3 D','59308',44,31),(31,'378 Calle de la Paz piso 1 D','54599',9,23),(32,'709 Calle de la Igualdad planta baja3 D','54355',17,19),(33,'819 Calle Mayor planta baja 8 D','50084',43,13),(34,'669 Calle del Campo planta baja3 D','52989',35,27),(35,'591 Calle de la Amistad planta baja2 D','55772',23,28),(36,'363 Calle de la Constitución planta baja5 D','57193',18,29),(37,'814 Calle de la Amistad ático 7 D','53329',32,9),(38,'960 Calle de la Solidaridad planta baja 8 D','53923',29,36),(39,'786 Calle Desconocida planta baja3 D','58660',35,43),(40,'204 Calle de la Naturaleza planta baja 9 D','54795',38,14),(41,'168 Calle Desconocida ático 5 D','59150',7,47),(42,'206 Calle de la Justicia planta baja8 D','57066',12,1),(43,'342 Calle de la Muerte ático 3 D','57893',12,40),(44,'299 Calle del Carmen planta baja 6 D','50996',41,40),(45,'476 Avenida del Sol planta baja 4 D','58501',5,47),(46,'366 Paseo de la Castellana planta baja3 D','51023',36,15),(47,'277 Calle del Mar planta baja4 D','55104',22,30),(48,'691 Calle de la Vida ático 5 D','55465',13,33),(49,'495 Calle de las Estrellas planta baja9 D','58147',34,45),(50,'407 Calle de la Paz planta baja6 D','55562',6,42),(51,'867 Calle Desconocida planta baja 4 D','58907',26,43),(52,'781 Calle de la Alegría piso 4 D','51119',21,35),(53,'253 Calle de la Constitución piso 2 D','55045',48,14),(54,'479 Calle del Bosque ático 7 D','58179',7,11),(55,'693 Calle Desconocida planta baja4 D','58716',16,50),(56,'960 Calle Desconocida ático 3 D','51737',6,4),(57,'13 Calle Desconocida piso 4 D','51245',33,42),(58,'241 Calle de la Muerte planta baja9 D','58723',41,23),(59,'823 Calle del Cambio ático 3 D','53142',43,14),(60,'789 Calle de la Libertad ático 6 D','57207',42,50),(61,'466 Calle del Amor ático 8 D','58526',45,44),(62,'665 Calle del Crecimiento planta baja 2 D','58651',40,18);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (5,'Libros','Descripción de la categoría de libros y revistas'),(6,'Tecnología','Descripción de la categoría de joyería y relojes'),(7,'Bolsos','Descripción de la categoría de electrónica y gadgets'),(8,'Tecnología','Descripción de la categoría de ropa y accesorios'),(9,'Accesorios','Descripción de la categoría de juguetes y juegos'),(10,'Calzado','Descripción de la categoría de calzado y complementos'),(11,'Muebles','Descripción de la categoría de artículos para el hogar'),(12,'Cosméticos','Descripción de la categoría de artículos deportivos'),(13,'Accesorios','Descripción de la categoría de artículos deportivos'),(14,'Alimentación','Descripción de la categoría de tecnología y dispositivos'),(15,'Hogar','Descripción de la categoría de libros y revistas'),(16,'Hogar','Descripción de la categoría de electrodomésticos y utensilios de cocina'),(17,'Joyas','Descripción de la categoría de calzado y complementos'),(18,'Hogar','Descripción de la categoría de joyería y relojes'),(19,'Libros','Descripción de la categoría de libros y revistas'),(20,'Alimentación','Descripción de la categoría de electrónica y gadgets'),(21,'Cosméticos','Descripción de la categoría de muebles y decoración'),(22,'Accesorios','Descripción de la categoría de bolsos y carteras'),(23,'Bolsos','Descripción de la categoría de electrodomésticos y utensilios de cocina'),(24,'Calzado','Descripción de la categoría de joyería y relojes');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `city` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` VALUES (1,'Luanda'),(2,'Shanghai'),(3,'Bogor'),(4,'Wuhan'),(5,'Osaka'),(6,'Pyongyang'),(7,'Baghdad'),(8,'Lagos'),(9,'Shanghai'),(10,'Lahore'),(11,'Dar es Salaam'),(12,'Karachi'),(13,'Seúl'),(14,'Río de Janeiro'),(15,'Buenos Aires'),(16,'Surabaya'),(17,'Buenos Aires'),(18,'Chongqing'),(19,'París'),(20,'Khartoum'),(21,'Surabaya'),(22,'Nueva York'),(23,'Ciudad de México'),(24,'Bogor'),(25,'Londres'),(26,'Bogotá'),(27,'Shanghai'),(28,'Lima'),(29,'Lima'),(30,'Yangon'),(31,'Chongqing'),(32,'Lima'),(33,'Wuhan'),(34,'Khartoum'),(35,'Londres'),(36,'Mumbai'),(37,'Riyadh'),(38,'Luanda'),(39,'Bogotá'),(40,'Tianjin'),(41,'Dhaka'),(42,'Río de Janeiro'),(43,'Mumbai'),(44,'Bangkok'),(45,'Dar es Salaam'),(46,'Cairo'),(47,'Luanda'),(48,'Santiago'),(49,'Seúl'),(50,'Ciudad de México');
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `costumer`
--

DROP TABLE IF EXISTS `costumer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `costumer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `costumer`
--

LOCK TABLES `costumer` WRITE;
/*!40000 ALTER TABLE `costumer` DISABLE KEYS */;
INSERT INTO `costumer` VALUES (1,'Agustín_736','+34 1050011062'),(2,'Blanca_958','+34 1422036465'),(3,'Felipe_730','+34 1112619979'),(4,'Eva_575','+34 1414615172'),(5,'Gonzalo_287','+34 628475750'),(6,'Blanca_398','+34 683451801'),(7,'Benito_75','+34 1107300296'),(8,'Elisa_274','+34 1130826457'),(9,'Alicia_870','+34 1469010034'),(10,'Ángel_195','+34 888489849'),(11,'Abril_125','+34 1115918429'),(12,'Cristina_736','+34 784249867'),(13,'Guillermo_470','+34 1410193176'),(14,'Alejandro_752','+34 1040709143'),(15,'Andrés_489','+34 1381517095'),(16,'Jesús_775','+34 822222156'),(17,'Jorge_807','+34 876812378'),(18,'Alicia_657','+34 1444993500'),(19,'Fernando_795','+34 1325547196'),(20,'Ernesto_817','+34 728952626'),(21,'Beatriz_899','+34 1226437210'),(22,'Gabriel_834','+34 1333257337'),(23,'Elena_421','+34 946783763'),(24,'Eva_164','+34 1344754348'),(25,'Ernesto_747','+34 1317187691'),(26,'Francisco_328','+34 966649315'),(27,'Agustín_47','+34 667878984'),(28,'Antonio_948','+34 630788636'),(29,'Bruno_537','+34 1230359790'),(30,'Jorge_357','+34 697491436'),(31,'Claudia_34','+34 1279601956'),(32,'Fátima_101','+34 1035889185'),(33,'Alicia_143','+34 921883453'),(34,'Carlos_722','+34 1081669648'),(35,'Cristina_937','+34 742720038'),(36,'Laura_437','+34 812524019'),(37,'Jesús_644','+34 1148481945'),(38,'Alicia_744','+34 940408495'),(39,'Eva_156','+34 1323668510'),(40,'Diego_355','+34 702452860'),(41,'Cristina_182','+34 957180478'),(42,'César_998','+34 1208212429'),(43,'Carolina_901','+34 913122833'),(44,'Adrián_139','+34 1128092533'),(45,'Daniel_819','+34 1093087556'),(46,'Benito_767','+34 1488507529'),(47,'Ernesto_219','+34 767239745'),(48,'Benito_806','+34 789477795'),(49,'Ernesto_546','+34 1342751946'),(50,'Claudia_960','+34 904256624');
/*!40000 ALTER TABLE `costumer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctrine_migration_versions`
--

LOCK TABLES `doctrine_migration_versions` WRITE;
/*!40000 ALTER TABLE `doctrine_migration_versions` DISABLE KEYS */;
INSERT INTO `doctrine_migration_versions` VALUES ('DoctrineMigrations\\Version20240405135205','2024-04-05 13:52:18',59),('DoctrineMigrations\\Version20240405144243','2024-04-05 14:43:33',264),('DoctrineMigrations\\Version20240405145206','2024-04-05 14:52:11',128),('DoctrineMigrations\\Version20240405151219','2024-04-05 15:12:24',604),('DoctrineMigrations\\Version20240405151839','2024-04-05 15:18:46',1461),('DoctrineMigrations\\Version20240406175844','2024-04-06 17:59:01',1455),('DoctrineMigrations\\Version20240406180311','2024-04-06 18:03:14',34),('DoctrineMigrations\\Version20240406180725','2024-04-06 18:07:27',183),('DoctrineMigrations\\Version20240406191111','2024-04-06 19:11:15',139);
/*!40000 ALTER TABLE `doctrine_migration_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (1,'2023-12-28 20:20:41'),(2,'2023-04-08 20:20:41'),(3,'2024-02-04 20:20:41'),(4,'2023-05-28 20:20:41'),(5,'2023-06-23 20:20:41'),(6,'2023-11-26 20:20:41'),(7,'2023-10-26 20:20:41'),(8,'2024-02-11 20:20:41'),(9,'2023-11-05 20:20:41'),(10,'2023-08-15 20:20:41'),(11,'2023-04-22 20:20:41'),(12,'2023-05-26 20:20:41'),(13,'2023-10-21 20:20:41'),(14,'2023-07-27 20:20:41'),(15,'2024-02-29 20:20:41'),(16,'2023-11-02 20:20:41'),(17,'2023-06-07 20:20:41'),(18,'2023-05-22 20:20:41'),(19,'2023-05-16 20:20:41'),(20,'2023-06-05 20:20:41'),(21,'2023-10-03 20:20:41'),(22,'2024-03-23 20:20:41'),(23,'2023-08-10 20:20:41'),(24,'2024-02-03 20:20:41'),(25,'2023-05-15 20:20:41'),(26,'2023-04-19 20:20:41'),(27,'2024-02-15 20:20:41'),(28,'2023-06-17 20:20:41'),(29,'2023-08-28 20:20:41'),(30,'2023-08-22 20:20:41'),(31,'2023-12-20 20:20:41'),(32,'2023-08-27 20:20:41'),(33,'2024-02-06 20:20:41'),(34,'2023-04-08 20:20:41'),(35,'2023-10-08 20:20:41'),(36,'2023-10-13 20:20:41'),(37,'2023-05-02 20:20:41'),(38,'2024-01-21 20:20:41'),(39,'2024-01-07 20:20:41'),(40,'2023-08-27 20:20:41'),(41,'2023-12-11 20:20:41'),(42,'2023-06-29 20:20:41'),(43,'2023-05-13 20:20:41'),(44,'2024-01-29 20:20:41'),(45,'2024-01-11 20:20:41'),(46,'2023-08-23 20:20:41'),(47,'2023-11-14 20:20:41'),(48,'2024-02-23 20:20:41'),(49,'2023-11-10 20:20:41'),(50,'2023-08-06 20:20:41');
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_product`
--

DROP TABLE IF EXISTS `order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_product` (
  `order_id` int NOT NULL,
  `product_id` int NOT NULL,
  PRIMARY KEY (`order_id`,`product_id`),
  KEY `IDX_2530ADE68D9F6D38` (`order_id`),
  KEY `IDX_2530ADE64584665A` (`product_id`),
  CONSTRAINT `FK_2530ADE64584665A` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_2530ADE68D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_product`
--

LOCK TABLES `order_product` WRITE;
/*!40000 ALTER TABLE `order_product` DISABLE KEYS */;
INSERT INTO `order_product` VALUES (1,46),(1,50),(2,48),(2,75),(3,67),(3,72),(4,49),(4,53),(5,46),(5,51),(6,54),(6,68),(7,47),(7,52),(8,49),(8,53),(9,46),(9,50),(10,48),(10,55),(11,47),(11,52),(12,49),(12,53),(13,94),(13,95),(14,48),(14,54),(15,52),(15,88),(16,49),(16,53),(17,46),(17,73),(18,48),(18,55),(19,52),(19,69),(20,53),(20,55),(21,66),(21,71),(22,48),(22,54),(23,47),(23,52),(24,53),(24,67),(25,50),(25,92),(26,55),(26,90),(27,52),(27,70),(28,49),(28,53),(29,51),(29,60),(30,54),(30,56),(31,47),(31,50),(32,49),(32,53),(33,46),(33,50),(34,48),(34,55),(35,47),(35,52),(36,53),(36,88),(37,46),(37,51),(38,48),(38,73),(39,47),(39,52),(40,49),(40,53),(41,46),(41,50),(42,48),(42,55),(43,47),(43,52),(44,49),(44,53),(45,46),(45,51),(46,48),(46,54),(47,47),(47,90),(48,49),(48,53),(49,50),(49,94),(50,48),(50,55);
/*!40000 ALTER TABLE `order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock` int NOT NULL,
  `price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (46,'Abrigo de encaje','Descripción de una vintage y retro',63,3.28),(47,'Falda de mezclilla','Descripción de una chic y juvenil',90,38.23),(48,'Remera de punto','Descripción de una elegante y sofisticada',48,62.66),(49,'Abrigo de cuero','Descripción de una trendy y fashion',4,72.47),(50,'Chaqueta de poliéster','Descripción de una sofisticada y original',33,5.29),(51,'Falda de poliéster','Descripción de una deportiva y dinámica',66,73.69),(52,'Falda vaquero','Descripción de una clásica y atemporal',19,54.12),(53,'Producto sin nombre de mezclilla','Descripción de una versátil y moderna',53,45.64),(54,'Bufanda de terciopelo','Descripción de una llamativa y extravagante',45,91.22),(55,'Camisa vaquero','Descripción de una cómoda y elegante',37,81.96),(56,'Camisa de algodón','Descripción de una elegante y sofisticada',70,66.21),(57,'Pantalones holgado','Descripción de una vintage y retro',16,69.96),(58,'Blusa a cuadros','Descripción de una chic y juvenil',12,44.86),(59,'Producto sin nombre estampado','Descripción de una vintage y retro',67,17.83),(60,'Traje ajustado','Descripción de una trendy y fashion',43,70.22),(61,'Remera de punto','Descripción de una elegante y sofisticada',43,38.63),(62,'Remera vaquero','Descripción de una clásica y atemporal',87,99.36),(63,'Bufanda de cuero','Descripción de una cómoda y elegante',78,86.94),(64,'Vestido a cuadros','Descripción de una clásica y atemporal',93,25.47),(65,'Traje ajustado','Descripción de una exclusiva y glamurosa',77,17.56),(66,'Falda ajustado','Descripción de una minimalista y trendy',26,29.66),(67,'Abrigo de seda','Descripción de una casual y desenfadada',10,57.56),(68,'Pantalones a rayas','Descripción de una llamativa y extravagante',62,64.36),(69,'Campera de punto','Descripción de una chic y juvenil',43,16.55),(70,'Chaqueta de poliéster','Descripción de una versátil y moderna',65,9.51),(71,'Falda holgado','Descripción de una clásica y atemporal',35,33.61),(72,'Pantalones de terciopelo','Descripción de una refinada y urbana',44,99.64),(73,'Chaqueta de seda','Descripción de una llamativa y extravagante',91,29.72),(74,'Jeans de punto','Descripción de una casual y desenfadada',68,42.08),(75,'Vestido de terciopelo','Descripción de una elegante y sofisticada',28,60.15),(76,'Producto sin nombre estampado','Descripción de una cómoda y elegante',93,63.36),(77,'Campera de terciopelo','Descripción de una minimalista y trendy',83,20.53),(78,'Pantalones ajustado','Descripción de una informal y casual',27,57.05),(79,'Chaleco de poliéster','Descripción de una clásica y atemporal',93,33.88),(80,'Camisa de seda','Descripción de una sofisticada y original',36,12.51),(81,'Chaqueta de punto','Descripción de una trendy y fashion',40,40.83),(82,'Producto sin nombre de seda','Descripción de una minimalista y trendy',41,7.10),(83,'Camisa de seda','Descripción de una exclusiva y glamurosa',78,30.18),(84,'Producto sin nombre de punto','Descripción de una versátil y moderna',25,97.11),(85,'Traje a cuadros','Descripción de una trendy y fashion',97,26.40),(86,'Falda de algodón','Descripción de una refinada y urbana',96,59.05),(87,'Gorra de seda','Descripción de una cómoda y elegante',13,65.85),(88,'Camisa de cuero','Descripción de una minimalista y trendy',70,66.21),(89,'Pantalones holgado','Descripción de una exclusiva y glamurosa',61,30.71),(90,'Traje de algodón','Descripción de una sofisticada y original',90,95.07),(91,'Gorra vaquero','Descripción de una trendy y fashion',88,94.07),(92,'Gorra de punto','Descripción de una vintage y retro',2,10.43),(93,'Bufanda de lana','Descripción de una llamativa y extravagante',52,36.25),(94,'Vestido de lana','Descripción de una vintage y retro',51,41.51),(95,'Falda de algodón','Descripción de una clásica y atemporal',67,94.71);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_category`
--

DROP TABLE IF EXISTS `product_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_category` (
  `product_id` int NOT NULL,
  `category_id` int NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `IDX_CDFC73564584665A` (`product_id`),
  KEY `IDX_CDFC735612469DE2` (`category_id`),
  CONSTRAINT `FK_CDFC735612469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_CDFC73564584665A` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_category`
--

LOCK TABLES `product_category` WRITE;
/*!40000 ALTER TABLE `product_category` DISABLE KEYS */;
INSERT INTO `product_category` VALUES (46,11),(47,18),(48,18),(49,8),(50,10),(51,17),(52,8),(53,22),(54,15),(55,15),(56,9),(57,6),(58,5),(59,17),(60,9),(61,20),(62,11),(63,13),(64,20),(65,22),(66,6),(67,14),(68,12),(69,24),(70,20),(71,6),(72,9),(73,15),(74,14),(75,11),(76,20),(77,11),(78,24),(79,15),(80,6),(81,19),(82,6),(83,9),(84,21),(85,21),(86,14),(87,20),(88,15),(89,24),(90,16),(91,10),(92,6),(93,6),(94,6),(95,11);
/*!40000 ALTER TABLE `product_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase`
--

DROP TABLE IF EXISTS `purchase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchase` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `costumer_id` int DEFAULT NULL,
  `order_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_6117D13B8D9F6D38` (`order_id`),
  KEY `IDX_6117D13B60B71152` (`costumer_id`),
  CONSTRAINT `FK_6117D13B60B71152` FOREIGN KEY (`costumer_id`) REFERENCES `costumer` (`id`),
  CONSTRAINT `FK_6117D13B8D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase`
--

LOCK TABLES `purchase` WRITE;
/*!40000 ALTER TABLE `purchase` DISABLE KEYS */;
INSERT INTO `purchase` VALUES (1,'2023-04-22 20:56:17',4,1),(2,'2023-06-20 20:56:17',7,2),(3,'2024-02-27 20:56:17',9,3),(4,'2024-02-10 20:56:17',15,4),(5,'2023-10-29 20:56:17',11,5),(6,'2023-07-11 20:56:17',3,6),(7,'2023-11-19 20:56:17',6,7),(8,'2023-07-30 20:56:17',4,8),(9,'2023-12-17 20:56:17',5,9),(10,'2023-10-25 20:56:17',23,10),(11,'2023-12-05 20:56:17',36,11),(12,'2023-12-04 20:56:17',44,12),(13,'2023-07-28 20:56:17',40,13),(14,'2023-10-28 20:56:17',1,14),(15,'2024-02-20 20:56:17',49,15),(16,'2023-12-13 20:56:17',31,16),(17,'2024-01-27 20:56:17',27,17),(18,'2024-03-30 20:56:17',16,18),(19,'2023-09-28 20:56:17',1,19),(20,'2023-09-13 20:56:17',29,20),(21,'2024-01-07 20:56:17',7,21),(22,'2023-09-19 20:56:17',6,22),(23,'2023-04-08 20:56:17',48,23),(24,'2023-12-02 20:56:17',49,24),(25,'2023-07-14 20:56:17',50,25),(26,'2023-08-24 20:56:17',30,26),(27,'2023-05-09 20:56:17',29,27),(28,'2023-07-25 20:56:17',28,28),(29,'2023-07-01 20:56:17',22,29),(30,'2023-07-11 20:56:17',19,30),(31,'2023-11-13 20:56:17',20,31),(32,'2023-06-29 20:56:17',11,32),(33,'2023-08-08 20:56:17',15,33),(34,'2024-04-03 20:56:17',16,34),(35,'2024-03-18 20:56:17',17,35),(36,'2024-01-11 20:56:17',1,36),(37,'2024-03-28 20:56:17',3,37),(38,'2023-11-08 20:56:17',4,38),(39,'2023-04-11 20:56:17',5,39),(40,'2023-07-20 20:56:17',9,40),(41,'2023-08-30 20:56:17',10,41),(42,'2023-05-24 20:56:17',11,42),(43,'2023-09-18 20:56:17',12,43),(44,'2024-02-14 20:56:17',34,44),(45,'2024-03-16 20:56:17',35,45),(46,'2023-05-25 20:56:17',37,46),(47,'2024-02-03 20:56:17',49,47),(48,'2024-01-05 20:56:17',47,48),(49,'2023-07-07 20:56:17',22,49),(50,'2023-04-08 20:56:17',11,50);
/*!40000 ALTER TABLE `purchase` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-07 20:10:03
