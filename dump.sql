-- MySQL dump 10.13  Distrib 8.0.23, for osx10.15 (x86_64)
--
-- Host: localhost    Database: ourrealtrip
-- ------------------------------------------------------
-- Server version	8.0.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `accommodation_images`
--

DROP TABLE IF EXISTS `accommodation_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accommodation_images` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image_url` varchar(4000) COLLATE utf8mb4_general_ci NOT NULL,
  `accommodation_id` int NOT NULL,
  `room_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `accommodation_images_accommodation_id_8f3f204e_fk_accommoda` (`accommodation_id`),
  KEY `accommodation_images_room_id_a789246e_fk_rooms_id` (`room_id`),
  CONSTRAINT `accommodation_images_accommodation_id_8f3f204e_fk_accommoda` FOREIGN KEY (`accommodation_id`) REFERENCES `accommodations` (`id`),
  CONSTRAINT `accommodation_images_room_id_a789246e_fk_rooms_id` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accommodation_images`
--

LOCK TABLES `accommodation_images` WRITE;
/*!40000 ALTER TABLE `accommodation_images` DISABLE KEYS */;
INSERT INTO `accommodation_images` VALUES (1,'https://images.unsplash.com/photo-1517840901100-8179e982acb7?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80',1,1),(2,'https://images.unsplash.com/photo-1590073242678-70ee3fc28e8e?ixid=MXwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1608&q=80',1,2),(3,'https://images.unsplash.com/photo-1566073771259-6a8506099945?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80',1,3),(4,'https://images.unsplash.com/photo-1496417263034-38ec4f0b665a?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1502&q=80',1,4),(5,'https://images.unsplash.com/photo-1582719508461-905c673771fd?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1525&q=80',5,5),(6,'https://images.unsplash.com/photo-1564501049412-61c2a3083791?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1489&q=80',5,6),(7,'https://images.unsplash.com/photo-1444201983204-c43cbd584d93?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80',5,7),(8,'https://images.unsplash.com/photo-1563911302283-d2bc129e7570?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1575&q=800',6,8),(9,'https://images.unsplash.com/photo-1445991842772-097fea258e7b?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1500&q=80',6,9),(10,'https://images.unsplash.com/photo-1542314831-068cd1dbfeeb?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80',7,10),(11,'https://images.unsplash.com/photo-1445019980597-93fa8acb246c?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1506&q=80',7,11),(12,'https://images.unsplash.com/photo-1455587734955-081b22074882?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1500&q=80',8,12),(13,'https://images.unsplash.com/photo-1571003123894-1f0594d2b5d9?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1587&q=80',8,13),(14,'https://images.unsplash.com/photo-1568084680786-a84f91d1153c?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1567&q=80',11,14),(15,'https://images.unsplash.com/photo-1498503182468-3b51cbb6cb24?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1500&q=80',16,15),(16,'https://images.unsplash.com/photo-1541971875076-8f970d573be6?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1567&q=80',11,16),(17,'https://images.unsplash.com/photo-1529290130-4ca3753253ae?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1510&q=80',16,17),(18,'https://images.unsplash.com/photo-1495754149474-e54c07932677?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80',16,18),(19,'https://images.unsplash.com/photo-1520250497591-112f2f40a3f4?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1500&q=80',16,19),(20,'https://images.unsplash.com/photo-1505492537188-de71a52767cb?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80',9,20),(21,'https://images.unsplash.com/photo-1525905708812-b271b5e3b2f3?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1602&q=80',15,21),(22,'https://images.unsplash.com/photo-1569369926169-9ee7fb80adeb?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1488&q=80',15,22),(23,'https://images.unsplash.com/photo-1567636788276-40a47795ba4d?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1567&q=80',9,23),(24,'https://images.unsplash.com/photo-1548623832-065a018e01ce?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1617&q=80',17,24),(25,'https://images.unsplash.com/photo-1549109786-eb80da56e693?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1500&q=80',17,25),(26,'https://images.unsplash.com/photo-1594458443732-6a36b90245f0?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80',17,26),(27,'https://images.unsplash.com/photo-1551918120-9739cb430c6d?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1534&q=80',9,27),(28,'https://images.unsplash.com/photo-1580587771525-78b9dba3b914?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1567&q=80',2,28),(29,'https://images.unsplash.com/photo-1493809842364-78817add7ffb?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80',2,29),(30,'https://images.unsplash.com/photo-1564013799919-ab600027ffc6?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80',20,30),(31,'https://images.unsplash.com/photo-1564078516393-cf04bd966897?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1534&q=80',20,31),(32,'https://images.unsplash.com/photo-1560448205-4d9b3e6bb6db?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80',20,32),(33,'https://images.unsplash.com/photo-1546967900-1bea5f16b69d?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1575&q=80',20,33),(34,'https://images.unsplash.com/photo-1523217582562-09d0def993a6?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1600&q=80',21,34),(35,'https://images.unsplash.com/photo-1512917774080-9991f1c4c750?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1500&q=80',21,35),(36,'https://images.unsplash.com/photo-1484154218962-a197022b5858?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1506&q=80',21,36),(37,'https://images.unsplash.com/photo-1448630360428-65456885c650?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1494&q=80',22,37),(38,'https://images.unsplash.com/photo-1522708323590-d24dbb6b0267?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1500&q=80',22,38),(39,'https://images.unsplash.com/photo-1463797221720-6b07e6426c24?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1502&q=80',22,39),(40,'https://images.unsplash.com/photo-1610123172763-1f587473048f?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1546&q=80',22,40),(41,'https://images.unsplash.com/photo-1513506003901-1e6a229e2d15?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1500&q=80',21,41),(42,'https://images.unsplash.com/photo-1574620845949-61a08a005988?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1525&q=80',3,42),(43,'https://images.unsplash.com/photo-1493663284031-b7e3aefcae8e?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1500&q=80',3,43),(44,'https://images.unsplash.com/photo-1561310845-b77f535db1f9?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=934&q=80',4,44),(45,'https://images.unsplash.com/photo-1602872030276-17d4d67bb130?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80',4,45),(46,'https://images.unsplash.com/photo-1614794575071-a8e22b4bc090?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1567&q=80',12,46),(47,'https://images.unsplash.com/photo-1561824045-29ede1bf6944?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1575&q=80',12,47),(48,'https://images.unsplash.com/photo-1614589741169-233209268d70?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1560&q=80',18,48),(49,'https://images.unsplash.com/photo-1572891086295-6c1c7c476549?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1600&q=80',18,49),(50,'https://images.unsplash.com/photo-1546555648-fb7876c40c58?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1510&q=80',18,50),(51,'https://images.unsplash.com/photo-1588865768606-430caafbe707?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80',18,51),(52,'https://images.unsplash.com/photo-1575517111478-7f6afd0973db?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80',10,52),(53,'https://images.unsplash.com/photo-1502672260266-1c1ef2d93688?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1573&q=80',10,53),(54,'https://images.unsplash.com/photo-1436812911242-3d475df4bdd1?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80',13,54),(55,'https://images.unsplash.com/photo-1513694203232-719a280e022f?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1498&q=80',13,55),(56,'https://images.unsplash.com/photo-1589834390005-5d4fb9bf3d32?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1534&q=80',13,56),(57,'https://images.unsplash.com/photo-1422189668989-08f214d6e419?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1575&q=80',14,57),(58,'https://images.unsplash.com/photo-1486946255434-2466348c2166?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1534&q=80',14,58),(59,'https://images.unsplash.com/photo-1543503430-244aace16cbd?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1567&q=80',19,59),(60,'https://images.unsplash.com/photo-1610632215762-9309792c13e7?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1490&q=80',19,60),(61,'https://images.unsplash.com/photo-1522771739844-6a9f6d5f14af?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1502&q=80',10,61),(62,'https://images.unsplash.com/photo-1577429724082-0f3e774edb44?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1534&q=80',10,62),(63,'https://images.unsplash.com/photo-1610632215460-b9d7de5a0c7f?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1600&q=80',10,63),(64,'https://images.unsplash.com/photo-1495433324511-bf8e92934d90?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1500&q=80',13,64),(65,'https://images.unsplash.com/photo-1614579212526-c378624b4cdc?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1533&q=80',13,65);
/*!40000 ALTER TABLE `accommodation_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accommodation_orders`
--

DROP TABLE IF EXISTS `accommodation_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accommodation_orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `total_price` decimal(30,2) NOT NULL,
  `guest` int NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `serial_number` varchar(300) COLLATE utf8mb4_general_ci NOT NULL,
  `room_id` int NOT NULL,
  `order_status_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `accommodation_orders_room_id_b1c031a8_fk_rooms_id` (`room_id`),
  KEY `accommodation_orders_order_status_id_869f1f6d_fk_order_sta` (`order_status_id`),
  KEY `accommodation_orders_user_id_af7bd0f4_fk_users_id` (`user_id`),
  CONSTRAINT `accommodation_orders_order_status_id_869f1f6d_fk_order_sta` FOREIGN KEY (`order_status_id`) REFERENCES `order_statuses` (`id`),
  CONSTRAINT `accommodation_orders_room_id_b1c031a8_fk_rooms_id` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`),
  CONSTRAINT `accommodation_orders_user_id_af7bd0f4_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accommodation_orders`
--

LOCK TABLES `accommodation_orders` WRITE;
/*!40000 ALTER TABLE `accommodation_orders` DISABLE KEYS */;
INSERT INTO `accommodation_orders` VALUES (1,108900.00,2,'2021-03-14 19:15:50.459982','2021-03-14 19:15:50.460005','2021-02-01','2021-02-03','f6bea921-5750-4d1a-bee1-73a05ee0a61c',2,2,1),(2,222000.00,4,'2021-03-14 19:15:50.466167','2021-03-14 19:15:50.466188','2021-02-02','2021-02-10','e2bfc763-07e3-4e05-8c03-4f61b928a6be',3,2,2),(3,227000.00,4,'2021-03-14 19:15:50.472438','2021-03-14 19:15:50.472457','2021-02-14','2021-02-18','bbb27270-a518-4d20-9428-f35aa6aba6b8',4,2,3),(4,100237.00,2,'2021-03-14 19:15:50.476445','2021-03-14 19:15:50.476470','2021-02-09','2021-02-13','a5f2bf90-ec89-4e33-868c-4dfd3bca3b37',1,2,4),(5,108900.00,2,'2021-03-14 19:15:50.483949','2021-03-14 19:15:50.483969','2021-02-03','2021-02-10','f5da048d-2b47-4e24-9e5e-ff38905d6987',2,2,5),(6,222000.00,4,'2021-03-14 19:15:50.488088','2021-03-14 19:15:50.488107','2021-02-12','2021-02-14','1458163c-f462-4adf-9292-40e9485644b4',3,2,6),(7,222000.00,4,'2021-03-14 19:15:50.493648','2021-03-14 19:15:50.493667','2021-02-16','2021-02-19','5d439c67-d6f7-4aa7-88c8-61fb742a4d2a',3,2,7),(8,227000.00,4,'2021-03-14 19:15:50.498970','2021-03-14 19:15:50.499016','2021-02-20','2021-02-27','dfd76c51-dbfc-4c77-bd61-6117e9435898',4,2,1),(9,100237.00,2,'2021-03-14 19:15:50.504975','2021-03-14 19:15:50.504996','2021-02-15','2021-02-19','36b26108-df41-49bd-894e-cb1dba767ed5',1,2,2),(10,108900.00,2,'2021-03-14 19:15:50.509736','2021-03-14 19:15:50.509755','2021-02-13','2021-02-21','0f6326d0-5f67-458c-b7bd-cba433bc433f',2,2,3),(11,222000.00,4,'2021-03-14 19:15:50.513703','2021-03-14 19:15:50.513725','2021-02-20','2021-02-25','e7789426-e609-40b2-9b73-55cdeec928de',3,2,4),(12,78000.00,2,'2021-03-14 19:15:50.518010','2021-03-14 19:15:50.518048','2021-02-01','2021-02-03','c8d701ec-d325-46b5-87f2-da6c6638809f',28,2,5),(13,78000.00,3,'2021-03-14 19:15:50.523942','2021-03-14 19:15:50.523964','2021-02-03','2021-02-10','b630c8cf-ff95-4e80-ad0c-c17b0c64f451',28,2,6),(14,99000.00,2,'2021-03-14 19:15:50.528342','2021-03-14 19:15:50.528361','2021-02-16','2021-02-19','8fed9131-18d3-4598-98d2-370b799158f9',29,2,7),(15,89000.00,2,'2021-03-14 19:15:50.533528','2021-03-14 19:15:50.533547','2021-02-01','2021-02-03','9a36d033-de2b-4dd8-9e4a-bb45d0dbea94',42,2,1),(16,89000.00,2,'2021-03-14 19:15:50.537051','2021-03-14 19:15:50.537069','2021-02-01','2021-02-03','a8990d2c-5c56-45ef-9565-e2ffc39fb39b',43,2,2),(17,89000.00,2,'2021-03-14 19:15:50.543596','2021-03-14 19:15:50.543617','2021-02-03','2021-02-10','3e7de88d-f3b8-4e49-9f71-930936701c92',42,2,3),(18,89000.00,2,'2021-03-14 19:15:50.547972','2021-03-14 19:15:50.547991','2021-02-13','2021-02-21','7d760417-2f8f-4805-82db-0bea673277a3',42,2,4),(19,89000.00,2,'2021-03-14 19:15:50.553047','2021-03-14 19:15:50.553067','2021-02-22','2021-02-23','69790492-fea5-46c9-a645-25483bd1cae8',42,2,5),(20,89000.00,2,'2021-03-14 19:15:50.557137','2021-03-14 19:15:50.557156','2021-02-23','2021-02-24','aea33f1a-de48-4a91-b332-bf54b53b3faf',42,2,6),(21,89000.00,2,'2021-03-14 19:15:50.563576','2021-03-14 19:15:50.563598','2021-02-03','2021-02-05','9b1d96fd-ae07-477b-a2c8-b03d949eae95',43,2,7),(22,89000.00,3,'2021-03-14 19:15:50.568574','2021-03-14 19:15:50.568594','2021-02-05','2021-02-06','7e7582fd-63b9-4d3b-8804-86f7a8102545',43,2,1),(23,89000.00,3,'2021-03-14 19:15:50.574284','2021-03-14 19:15:50.574304','2021-02-06','2021-02-07','e77c4d2e-3ba2-4b5c-a7e8-c5af4177cf1b',43,2,2),(24,89000.00,3,'2021-03-14 19:15:50.577806','2021-03-14 19:15:50.577827','2021-02-07','2021-02-09','be79ef5c-f84e-4a58-9403-a3bf24c4e68a',43,2,3),(25,89000.00,3,'2021-03-14 19:15:50.584004','2021-03-14 19:15:50.584053','2021-02-10','2021-02-12','4c93b333-59f7-40a3-856e-186ea8127654',43,2,4),(26,89000.00,3,'2021-03-14 19:15:50.589071','2021-03-14 19:15:50.589126','2021-02-14','2021-02-15','471f692e-6666-4747-b1a9-46a384f70937',43,2,5),(27,89000.00,3,'2021-03-14 19:15:50.594098','2021-03-14 19:15:50.594119','2021-02-16','2021-02-18','1e5a54b4-e0c6-487b-b5ae-e899e7f6473e',43,2,6),(28,89000.00,2,'2021-03-14 19:15:50.598488','2021-03-14 19:15:50.598507','2021-02-19','2021-02-21','126ece3e-dd56-4574-88da-180d8af09e31',43,2,7),(29,89000.00,2,'2021-03-14 19:15:50.605089','2021-03-14 19:15:50.605109','2021-02-23','2021-02-26','6e85e7d9-d219-4095-9527-ffec95b7c572',43,2,1),(30,89000.00,2,'2021-03-14 19:15:50.609912','2021-03-14 19:15:50.609932','2021-02-24','2021-02-26','4c3e465a-92ea-4396-bac3-d7bb3bc546ab',42,2,2),(31,89000.00,3,'2021-03-14 19:15:50.616371','2021-03-14 19:15:50.616390','2021-02-26','2021-02-27','4cd7d2d0-aa52-4bbd-900f-8ae107bcb5f6',42,2,3),(32,78000.00,2,'2021-03-14 19:15:50.620050','2021-03-14 19:15:50.620069','2021-02-02','2021-02-10','3cb7005e-ffb2-47d7-b07a-90b59670257f',44,2,4),(33,78000.00,2,'2021-03-14 19:15:50.624916','2021-03-14 19:15:50.624976','2021-02-12','2021-02-14','0d44b3e0-5b5c-449c-a39f-d180182bde50',44,2,5),(34,78000.00,2,'2021-03-14 19:15:50.630321','2021-03-14 19:15:50.630342','2021-02-03','2021-02-10','9e2a63bc-aad6-43e3-a74b-9fad3812550b',45,2,6),(35,78000.00,3,'2021-03-14 19:15:50.635864','2021-03-14 19:15:50.635885','2021-02-16','2021-02-19','35d8002d-3635-4743-9517-a932c1aa4189',44,2,7),(36,78000.00,3,'2021-03-14 19:15:50.639681','2021-03-14 19:15:50.639698','2021-02-22','2021-02-25','b953b9d0-7481-4675-8616-c406814e2a30',45,2,1),(37,78000.00,2,'2021-03-14 19:15:50.643568','2021-03-14 19:15:50.643603','2021-02-20','2021-02-25','b1e7e0cb-c34e-4402-be0c-ac26c72975dd',44,2,2),(38,78000.00,2,'2021-03-14 19:15:50.650394','2021-03-14 19:15:50.650414','2021-02-26','2021-02-27','56521f00-b2ea-4461-9859-6ab5d66339d0',45,2,3),(39,50359.00,2,'2021-03-14 19:15:50.655120','2021-03-14 19:15:50.655180','2021-02-02','2021-02-10','7f222b46-463f-4d03-999a-bdef6e88d778',5,2,4),(40,50359.00,2,'2021-03-14 19:15:50.659540','2021-03-14 19:15:50.659560','2021-02-13','2021-02-21','4243db37-7a41-410c-acf4-9a3c3968ad94',6,2,5),(41,198000.00,2,'2021-03-14 19:15:50.663352','2021-03-14 19:15:50.663373','2021-02-26','2021-02-27','37040828-9f4d-4b6d-8fa8-77b34bad1571',7,2,6),(42,19800.00,2,'2021-03-14 19:15:50.670322','2021-03-14 19:15:50.670344','2021-02-20','2021-02-25','47c3e524-2479-45ae-ae73-99ca262bde59',8,2,7),(43,337500.00,2,'2021-03-14 19:15:50.674701','2021-03-14 19:15:50.674743','2021-02-01','2021-02-03','e22717de-8f31-4961-9734-b7d860a883cb',10,2,1),(44,221000.00,1,'2021-03-14 19:15:50.680759','2021-03-14 19:15:50.680781','2021-02-01','2021-02-03','ea0fc3a7-7158-4360-8ac3-eb53b91d822b',11,2,2),(45,221000.00,1,'2021-03-14 19:15:50.685340','2021-03-14 19:15:50.685434','2021-02-03','2021-02-10','b241395d-a949-4925-9581-3eb838cb3532',11,2,3),(46,98000.00,1,'2021-03-14 19:15:50.691746','2021-03-14 19:15:50.691767','2021-02-02','2021-02-10','7c734e27-c58c-4a72-a61a-a639797d4c2f',12,2,4),(47,98000.00,1,'2021-03-14 19:15:50.696646','2021-03-14 19:15:50.696716','2021-02-12','2021-02-14','919e04c8-38c4-485c-b0b7-d5be71feb750',12,2,5),(48,112000.00,1,'2021-03-14 19:15:50.701771','2021-03-14 19:15:50.701789','2021-02-13','2021-02-21','ba2608f1-5fe0-4005-95eb-ba94c126fee2',13,2,6),(49,98000.00,1,'2021-03-14 19:15:50.705602','2021-03-14 19:15:50.705635','2021-02-16','2021-02-19','9cb58a9d-20a3-4ac5-85f2-c68123afc24e',12,2,7),(50,112000.00,1,'2021-03-14 19:15:50.712349','2021-03-14 19:15:50.712369','2021-02-26','2021-02-27','895b11c3-5841-4c5b-8bb0-c47c40a00c0a',13,2,1),(51,98000.00,1,'2021-03-14 19:15:50.717860','2021-03-14 19:15:50.717917','2021-02-20','2021-02-25','93823b63-8119-4425-81fb-3790d513007b',12,2,2),(52,179000.00,4,'2021-03-14 19:15:50.722521','2021-03-14 19:15:50.722542','2021-02-03','2021-02-10','28925cab-8453-49ff-8710-ac54be9cfbd7',20,2,3),(53,88000.00,2,'2021-03-14 19:15:50.726304','2021-03-14 19:15:50.726323','2021-02-12','2021-02-14','09860a17-3b5d-4e24-9138-3faaf3dac80c',52,2,4),(54,77000.00,2,'2021-03-14 19:15:50.733481','2021-03-14 19:15:50.733509','2021-02-02','2021-02-10','a4a68c37-2313-4fc2-9bc7-37e230bbbc7f',53,2,5),(55,120000.00,2,'2021-03-14 19:15:50.737366','2021-03-14 19:15:50.737386','2021-02-03','2021-02-10','72e738ce-56de-4f52-8139-8bda0a268e80',61,2,6),(56,77000.00,2,'2021-03-14 19:15:50.742289','2021-03-14 19:15:50.742307','2021-02-12','2021-02-14','52bda1cc-d154-46a4-9216-cb9e73162508',53,2,7),(57,120000.00,4,'2021-03-14 19:15:50.745731','2021-03-14 19:15:50.745750','2021-02-03','2021-02-10','d823ff50-30e8-437f-81ec-3ed995ced3b2',62,2,1),(58,88000.00,2,'2021-03-14 19:15:50.753414','2021-03-14 19:15:50.753436','2021-02-20','2021-02-25','a0cc6aa7-ee23-4f87-bdbe-4fb6ed9ca7b8',52,2,2),(59,120000.00,2,'2021-03-14 19:15:50.757355','2021-03-14 19:15:50.757375','2021-02-13','2021-02-21','559cc3d9-868a-49b2-9efe-17ef6d3ece28',63,2,3),(60,136000.00,2,'2021-03-14 19:15:50.762701','2021-03-14 19:15:50.762722','2021-02-13','2021-02-21','95350eb1-ae7a-48ba-b478-21e9ce9dbe05',14,2,4),(61,243000.00,2,'2021-03-14 19:15:50.767189','2021-03-14 19:15:50.767238','2021-02-16','2021-02-19','7c138636-f10a-4b47-a1cc-eacf9515379a',16,2,5),(62,136000.00,2,'2021-03-14 19:15:50.772825','2021-03-14 19:15:50.772852','2021-02-26','2021-02-27','61cce9ff-045c-431f-87c8-f095c4a8d575',14,2,6),(63,65000.00,2,'2021-03-14 19:15:50.777185','2021-03-14 19:15:50.777205','2021-02-02','2021-02-04','7a762e79-28a7-46f4-9ba7-aead56e92128',46,2,7),(64,65000.00,2,'2021-03-14 19:15:50.783515','2021-03-14 19:15:50.783536','2021-02-06','2021-02-07','1731d1df-ecca-4874-bed5-0db4a3313f6a',46,2,1),(65,65000.00,2,'2021-03-14 19:15:50.787268','2021-03-14 19:15:50.787287','2021-02-10','2021-02-12','f81ee13b-f1b6-4792-8dec-71bd2dfb4eae',46,2,2),(66,89000.00,4,'2021-03-14 19:15:50.793602','2021-03-14 19:15:50.793623','2021-02-01','2021-02-03','2bedfab8-3ead-4122-9d1c-286a728d8bc4',47,2,3),(67,89000.00,4,'2021-03-14 19:15:50.798119','2021-03-14 19:15:50.798148','2021-02-04','2021-02-06','c93a1226-11a5-4234-836e-eae05c946566',47,2,4),(68,89000.00,4,'2021-03-14 19:15:50.803442','2021-03-14 19:15:50.803462','2021-02-08','2021-02-10','f4641f04-f468-4257-bf2a-b4cce4fce8db',47,2,5),(69,89000.00,4,'2021-03-14 19:15:50.807321','2021-03-14 19:15:50.807341','2021-02-12','2021-02-14','ad5d2cde-948d-444c-9684-22f03a82e898',47,2,6),(70,89000.00,4,'2021-03-14 19:15:50.813392','2021-03-14 19:15:50.813435','2021-02-14','2021-02-15','677623c0-55ad-4491-85fa-3e54be62e56b',47,2,7),(71,89000.00,4,'2021-03-14 19:15:50.818213','2021-03-14 19:15:50.818232','2021-02-16','2021-02-17','f898cbef-d6fb-4402-9564-0e66ba51e2c5',47,2,1),(72,76000.00,2,'2021-03-14 19:15:50.823887','2021-03-14 19:15:50.823907','2021-02-18','2021-02-20','e2bb6d6e-9ed2-47f4-b581-e8424c98eac0',54,2,2),(73,77000.00,2,'2021-03-14 19:15:50.827627','2021-03-14 19:15:50.827646','2021-02-03','2021-02-05','ae0ae2e7-0f51-4a95-a57c-a764a5291234',55,2,3),(74,103000.00,2,'2021-03-14 19:15:50.834557','2021-03-14 19:15:50.834578','2021-02-17','2021-02-19','f32f6211-0cae-4116-b5a6-c0faa474d334',64,2,4),(75,89000.00,3,'2021-03-14 19:15:50.838682','2021-03-14 19:15:50.838701','2021-02-04','2021-02-06','9a87d5d2-8025-4309-97da-9c423fed8a27',56,2,5),(76,103000.00,3,'2021-03-14 19:15:50.843369','2021-03-14 19:15:50.843387','2021-02-15','2021-02-18','c34a7955-69c2-409c-ac3f-07787820d885',65,2,6),(77,77000.00,2,'2021-03-14 19:15:50.847728','2021-03-14 19:15:50.847763','2021-02-06','2021-02-09','e0f4644b-d6a0-449a-aef2-3fe6d18122a0',55,2,7),(78,76000.00,2,'2021-03-14 19:15:50.853794','2021-03-14 19:15:50.853816','2021-02-21','2021-02-22','7e2e8707-379a-4873-8e17-db8cccfc27d4',54,2,1),(79,76000.00,3,'2021-03-14 19:15:50.858087','2021-03-14 19:15:50.858110','2021-02-23','2021-02-25','cec19aa2-de1b-4b9b-a8db-a9a0e137fdb4',54,2,2),(80,76000.00,2,'2021-03-14 19:15:50.865219','2021-03-14 19:15:50.865255','2021-02-26','2021-02-28','c8e5d7ce-91e1-4844-bb1c-e702b2523c46',54,2,3),(81,89000.00,2,'2021-03-14 19:15:50.869295','2021-03-14 19:15:50.869314','2021-02-09','2021-02-11','77f820bb-05de-480c-8045-1347e3ec1bed',56,2,4),(82,110000.00,2,'2021-03-14 19:15:50.875672','2021-03-14 19:15:50.875724','2021-02-03','2021-02-05','f4f671b5-5890-4ff9-a977-e4ae536707fb',57,2,5),(83,130000.00,5,'2021-03-14 19:15:50.880202','2021-03-14 19:15:50.880224','2021-02-05','2021-02-06','89a841f3-5bf1-40b6-958c-3c006aa0a638',58,2,6),(84,130000.00,5,'2021-03-14 19:15:50.886229','2021-03-14 19:15:50.886264','2021-02-07','2021-02-09','f4721c68-04b1-46d7-a34b-6d02bb6503a1',58,2,7),(85,130000.00,5,'2021-03-14 19:15:50.890149','2021-03-14 19:15:50.890169','2021-02-10','2021-02-13','71ec6c9f-babb-4ea1-95e5-401b868de381',58,2,1),(86,110000.00,2,'2021-03-14 19:15:50.896137','2021-03-14 19:15:50.896159','2021-02-07','2021-02-09','9cd4d101-c63e-4828-a091-4fbbb77c855a',57,2,2),(87,110000.00,3,'2021-03-14 19:15:50.901095','2021-03-14 19:15:50.901119','2021-02-09','2021-02-11','0a405932-c688-4462-a71c-7b76743ed679',57,2,3),(88,110000.00,3,'2021-03-14 19:15:50.906680','2021-03-14 19:15:50.906700','2021-02-13','2021-02-14','5dd53291-a489-4d38-aa4d-d2c6367eeb80',57,2,4),(89,110000.00,2,'2021-03-14 19:15:50.910305','2021-03-14 19:15:50.910323','2021-02-15','2021-02-17','6cb72deb-9292-427e-9132-2362fb4ac9b1',57,2,5),(90,110000.00,3,'2021-03-14 19:15:50.915032','2021-03-14 19:15:50.915070','2021-02-19','2021-02-22','23ac5c71-6c50-452c-a5b0-56f3e0172e62',57,2,6),(91,130000.00,4,'2021-03-14 19:15:50.920798','2021-03-14 19:15:50.920818','2021-02-14','2021-02-16','2c28fb70-97ba-4ba8-b128-c6423890e378',58,2,7),(92,180000.00,4,'2021-03-14 19:15:50.924791','2021-03-14 19:15:50.924822','2021-02-10','2021-02-12','511da3f3-d332-415d-a3bd-0fbe9c9e2e73',21,2,1),(93,219000.00,4,'2021-03-14 19:15:50.929232','2021-03-14 19:15:50.929251','2021-02-02','2021-02-10','7f0caa1c-4fd1-4b7e-b31b-ffeddc263ec4',22,2,2),(94,219000.00,4,'2021-03-14 19:15:50.933716','2021-03-14 19:15:50.933736','2021-02-12','2021-02-14','fc78d4b3-3863-4c0d-888c-88f7040c131e',22,2,3),(95,219000.00,4,'2021-03-14 19:15:50.939302','2021-03-14 19:15:50.939350','2021-02-16','2021-02-19','7e9b74ca-25ba-4c68-a410-55a636b0a8b4',22,2,4),(96,180000.00,4,'2021-03-14 19:15:50.943837','2021-03-14 19:15:50.943857','2021-02-01','2021-02-03','238c1a0b-73dd-4a30-9cac-5f7f126d4684',21,2,5),(97,180000.00,4,'2021-03-14 19:15:50.950146','2021-03-14 19:15:50.950190','2021-02-03','2021-02-10','b99ef879-ab70-4835-83f3-48b8cd69ec5a',21,2,6),(98,180000.00,4,'2021-03-14 19:15:50.953839','2021-03-14 19:15:50.953856','2021-02-13','2021-02-21','9c44f035-f250-4b75-a61b-e397de6d3e30',21,2,7),(99,219000.00,4,'2021-03-14 19:15:50.960383','2021-03-14 19:15:50.960404','2021-02-20','2021-02-25','5a2e538b-25ac-4747-ac3d-dcbf9bed0fd9',22,2,1),(100,152000.00,2,'2021-03-14 19:15:50.964823','2021-03-14 19:15:50.964843','2021-02-02','2021-02-10','b65d4a4a-9db2-4b5e-ae95-da9cb6b0ab7b',18,2,2),(101,144000.00,2,'2021-03-14 19:15:50.970093','2021-03-14 19:15:50.970112','2021-02-01','2021-02-03','1f6dab6b-22f0-4f05-9775-3c910befa727',15,2,3),(102,221000.00,4,'2021-03-14 19:15:50.973932','2021-03-14 19:15:50.973950','2021-02-12','2021-02-14','b28e2149-9a03-4629-8c9a-5ff2211dd74f',17,2,4),(103,152000.00,2,'2021-03-14 19:15:50.977947','2021-03-14 19:15:50.977975','2021-02-20','2021-02-25','070ed555-d07f-48c3-8e2d-4da753ad238c',18,2,5),(104,110000.00,2,'2021-03-14 19:15:50.985801','2021-03-14 19:15:50.985820','2021-02-20','2021-02-25','59452713-811d-4a9a-976e-c2432390edcb',19,2,6),(105,144000.00,2,'2021-03-14 19:15:50.991351','2021-03-14 19:15:50.991401','2021-02-03','2021-02-10','b4a00e9e-d8ea-40f7-b835-4303b6c2768e',15,2,7),(106,144000.00,2,'2021-03-14 19:15:50.996077','2021-03-14 19:15:50.996097','2021-02-13','2021-02-21','645509ea-5573-43b2-b295-806e95397b2a',15,2,1),(107,129000.00,2,'2021-03-14 19:15:51.002661','2021-03-14 19:15:51.002682','2021-02-01','2021-02-03','8dc62663-7970-4354-bb28-fda74abd3894',25,2,2),(108,112400.00,2,'2021-03-14 19:15:51.007046','2021-03-14 19:15:51.007067','2021-02-03','2021-02-10','a4758350-9a36-404d-b4a8-5bb1e278bcb3',26,2,3),(109,129000.00,2,'2021-03-14 19:15:51.012760','2021-03-14 19:15:51.012782','2021-02-13','2021-02-21','c965d903-c0c3-499d-9467-8c05e9a1ff02',25,2,4),(110,138000.00,2,'2021-03-14 19:15:51.017293','2021-03-14 19:15:51.017314','2021-02-12','2021-02-14','e35a7078-c46c-4140-a5a1-5d646f2d3baa',24,2,5),(111,112400.00,2,'2021-03-14 19:15:51.023053','2021-03-14 19:15:51.023099','2021-02-13','2021-02-21','b4584831-a525-47bb-9176-708afe25599b',26,2,6),(112,138000.00,2,'2021-03-14 19:15:51.027644','2021-03-14 19:15:51.027664','2021-02-20','2021-02-25','91da1564-e93c-496f-93b1-7661d3672756',24,2,7),(113,119000.00,4,'2021-03-14 19:15:51.034216','2021-03-14 19:15:51.034240','2021-02-02','2021-02-10','6f18aaa8-4b4b-4866-ab8d-1041b1ed86b9',48,2,1),(114,112000.00,4,'2021-03-14 19:15:51.038023','2021-03-14 19:15:51.038042','2021-02-12','2021-02-14','24501809-e87f-4e4d-9f3a-2db71cb71536',49,2,2),(115,116000.00,2,'2021-03-14 19:15:51.044846','2021-03-14 19:15:51.044867','2021-02-01','2021-02-03','cb2f1935-33ed-46fe-8163-52961b174cec',50,2,3),(116,109000.00,2,'2021-03-14 19:15:51.049300','2021-03-14 19:15:51.049324','2021-02-01','2021-02-03','8ab9e28e-33f1-4cc5-a4a5-d6cb73f303bd',59,2,4),(117,109000.00,2,'2021-03-14 19:15:51.055403','2021-03-14 19:15:51.055423','2021-02-03','2021-02-10','29f798a1-1f60-4360-a7f2-9a8ba5f95dd0',59,2,5),(118,109000.00,3,'2021-03-14 19:15:51.059147','2021-03-14 19:15:51.059166','2021-02-12','2021-02-14','254eb89f-c427-4941-ab7d-e6b7bbfd7598',60,2,6),(119,109000.00,3,'2021-03-14 19:15:51.065989','2021-03-14 19:15:51.066075','2021-02-16','2021-02-19','2aa15389-1b1e-4f78-a550-7779ce699231',60,2,7),(120,109000.00,2,'2021-03-14 19:15:51.070621','2021-03-14 19:15:51.070645','2021-02-20','2021-02-25','a10d968f-c2d1-4031-8b8f-3c7ff0de3d75',60,2,1),(121,109000.00,2,'2021-03-14 19:15:51.076420','2021-03-14 19:15:51.076440','2021-02-13','2021-02-21','abba1e1e-a00a-41e1-8eac-b2d2f2b2b469',59,2,2),(122,56000.00,2,'2021-03-14 19:15:51.080196','2021-03-14 19:15:51.080216','2021-02-02','2021-02-10','79dc64a2-67b4-48d6-a66f-2b4002dfaa4f',30,2,3),(123,63000.00,2,'2021-03-14 19:15:51.086288','2021-03-14 19:15:51.086342','2021-02-12','2021-02-14','10028537-7a71-4610-87d2-fa38a57f498a',31,2,4),(124,45000.00,3,'2021-03-14 19:15:51.090722','2021-03-14 19:15:51.090744','2021-02-16','2021-02-19','f734035f-9c03-48e3-be1e-f64fbb198450',32,2,5),(125,109000.00,2,'2021-03-14 19:15:51.096122','2021-03-14 19:15:51.096142','2021-02-02','2021-02-10','a441d3a6-34bc-4193-b6cc-43a4f7e06b3f',34,2,6),(126,120000.00,2,'2021-03-14 19:15:51.100474','2021-03-14 19:15:51.100493','2021-02-01','2021-02-03','1a0387e6-f961-40a4-bc6b-6f3364097053',41,2,7),(127,105000.00,2,'2021-03-14 19:15:51.105776','2021-03-14 19:15:51.105808','2021-02-03','2021-02-10','695aaa3f-c38a-402f-9e61-84db4a34b84b',36,2,1),(128,102000.00,2,'2021-03-14 19:15:51.110430','2021-03-14 19:15:51.110450','2021-02-13','2021-02-21','b6764703-3fd8-49e7-a987-e63bf5658e3c',35,2,2),(129,142000.00,4,'2021-03-14 19:15:51.116819','2021-03-14 19:15:51.116857','2021-02-22','2021-02-25','e11c768c-a4e8-41d0-9d94-739966ec541e',37,2,3),(130,109000.00,2,'2021-03-14 19:15:51.120711','2021-03-14 19:15:51.120732','2021-02-26','2021-02-27','36aed5a1-73eb-43e1-ba65-0158fb57ac20',38,2,4),(131,112000.00,4,'2021-03-14 19:15:51.126760','2021-03-14 19:15:51.126780','2021-02-13','2021-02-21','89a10052-244e-4e99-96cc-6097979465b4',39,2,5),(132,120000.00,5,'2021-03-14 19:15:51.132007','2021-03-14 19:15:51.132027','2021-02-01','2021-02-03','46c7703d-ae58-4f06-9b59-a8629370d1ff',40,2,6),(133,112000.00,4,'2021-03-14 19:15:51.138004','2021-03-14 19:15:51.138024','2021-02-22','2021-02-25','ca167441-1fd8-490b-a7a3-88d21123d7a0',39,2,7),(134,108900.00,2,'2021-03-14 19:15:51.141677','2021-03-14 19:15:51.141696','2021-03-10','2021-03-14','6d52a0f7-7440-4e4e-b464-9740a47755d8',2,2,5),(135,222000.00,4,'2021-03-14 19:15:51.146983','2021-03-14 19:15:51.147046','2021-03-09','2021-03-15','9545fb12-88f8-47ab-8ef7-915bfaa10248',3,2,6),(136,99000.00,2,'2021-03-14 19:15:51.152043','2021-03-14 19:15:51.152063','2021-03-14','2021-03-16','ddac5c6b-bf49-4026-b6dc-9bf1eaa20b07',29,2,7),(137,89000.00,2,'2021-03-14 19:15:51.158066','2021-03-14 19:15:51.158086','2021-03-14','2021-03-16','749776ac-0d0d-483f-9f0b-f1caac9b8df7',42,2,1),(138,89000.00,2,'2021-03-14 19:15:51.162666','2021-03-14 19:15:51.162689','2021-03-15','2021-03-16','e7469888-2486-407e-a4d3-bbaec01a7ac6',43,2,2),(139,89000.00,3,'2021-03-14 19:15:51.169658','2021-03-14 19:15:51.169678','2021-03-16','2021-03-17','145be691-f005-4903-88f0-3cfb3689f497',42,2,3),(140,78000.00,2,'2021-03-14 19:15:51.173875','2021-03-14 19:15:51.173895','2021-03-15','2021-03-19','56faf933-701b-4245-85ad-f2bbb3502aaf',45,2,3),(141,50359.00,2,'2021-03-14 19:15:51.179352','2021-03-14 19:15:51.179373','2021-03-18','2021-03-21','7dfb2af3-87bc-4a35-b2d1-a50a57934ffa',5,2,4),(142,144000.00,2,'2021-03-14 19:15:51.183842','2021-03-14 19:15:51.183863','2021-03-10','2021-03-12','39d0f74f-a075-4420-b585-8d8e834e65ac',15,2,7),(143,144000.00,2,'2021-03-14 19:15:51.189862','2021-03-14 19:15:51.189902','2021-03-12','2021-03-13','cf5b14fc-5d85-4bef-bf03-98cdc26daa5f',15,2,1),(144,129000.00,2,'2021-03-14 19:15:51.194470','2021-03-14 19:15:51.194491','2021-03-10','2021-03-12','af032f4a-dafa-4d83-9f27-8f9547a73e34',25,2,2),(145,112400.00,2,'2021-03-14 19:15:51.200639','2021-03-14 19:15:51.200677','2021-03-12','2021-03-13','eae0f69b-10d3-4b67-8c3a-4e81b04b15b2',26,2,3),(146,219000.00,4,'2021-03-14 19:15:51.204915','2021-03-14 19:15:51.204934','2021-03-14','2021-03-16','b6461d4e-271f-4cd6-949e-cb23e29e2517',22,2,2),(147,219000.00,4,'2021-03-14 19:15:51.211024','2021-03-14 19:15:51.211072','2021-03-16','2021-03-17','3aa52917-283e-4640-af01-0b8d95b234f7',22,2,3),(148,110000.00,2,'2021-03-14 19:15:51.215673','2021-03-14 19:15:51.215696','2021-03-14','2021-03-16','9df2152f-50c6-47a2-bb2d-116d9f9b9ef6',57,2,5),(149,130000.00,2,'2021-03-14 19:15:51.221729','2021-03-14 19:15:51.221753','2021-03-11','2021-03-13','265f6c76-5572-4e59-a64e-1cad18678941',58,2,6),(150,89000.00,4,'2021-03-14 19:15:51.225306','2021-03-14 19:15:51.225325','2021-03-10','2021-03-13','49f8e38b-d272-48ed-ab22-ce2a3e8d7624',47,2,3),(151,89000.00,4,'2021-03-14 19:15:51.228940','2021-03-14 19:15:51.228963','2021-03-13','2021-03-14','0b8412bf-3dee-4f2b-8011-78fff3794b60',47,2,4),(152,88000.00,2,'2021-03-14 19:15:51.236015','2021-03-14 19:15:51.236054','2021-03-17','2021-03-19','cab0bcb8-3f4b-4694-a663-e906080eeb0e',52,2,4),(153,77000.00,2,'2021-03-14 19:15:51.239943','2021-03-14 19:15:51.239991','2021-03-16','2021-03-18','dde6ab58-0844-4c6a-91eb-404a802cba9a',53,2,5);
/*!40000 ALTER TABLE `accommodation_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accommodations`
--

DROP TABLE IF EXISTS `accommodations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accommodations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(1000) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `rate` decimal(5,2) DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_general_ci,
  `address_id` int NOT NULL,
  `category_id` int NOT NULL,
  `city_id` int NOT NULL,
  `host_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `accommodations_address_id_948113b3_fk_addresses_id` (`address_id`),
  KEY `accommodations_category_id_dd718541_fk_categories_id` (`category_id`),
  KEY `accommodations_city_id_14354047_fk_cities_id` (`city_id`),
  KEY `accommodations_host_id_0b5cc34b_fk_hosts_id` (`host_id`),
  CONSTRAINT `accommodations_address_id_948113b3_fk_addresses_id` FOREIGN KEY (`address_id`) REFERENCES `addresses` (`id`),
  CONSTRAINT `accommodations_category_id_dd718541_fk_categories_id` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  CONSTRAINT `accommodations_city_id_14354047_fk_cities_id` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`),
  CONSTRAINT `accommodations_host_id_0b5cc34b_fk_hosts_id` FOREIGN KEY (`host_id`) REFERENCES `hosts` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accommodations`
--

LOCK TABLES `accommodations` WRITE;
/*!40000 ALTER TABLE `accommodations` DISABLE KEYS */;
INSERT INTO `accommodations` VALUES (1,'도시 호텔 제주','아침에 비치는 햇살과 저녁 노을이 환상적인 호텔',3.70,'<div><p>인원 추가비용 안내<br>\n\n전 객실은 2인 기준이며 1인 또는 이불 추가시 1만원 추가요금이 발생합니다.\n미성년자 입실은 불가하며 이로인한 취소는 불가합니다.<br>\n\n이용안내<br>\n\n객실 내 애완동물 반입을 금지하고, 촛불, 휴대용 가스버너, 폭죽 등 화재의 우려가 있는 물건 반입을 금지합니다\n늦은 시간 고성방가, 음주가무 등 타인에게 불쾌감을 줄 수 있는 행동은 삼가주시기 바랍니다.<br></p></div>',22,1,1,1),(2,'제주 원더하우스 109 풀빌라','히노끼 욕조와 모닥불이 있는 풀빌라',4.50,'null',21,3,1,2),(3,'토토 게스트하우스','파도를 감상하며 명상하기 좋은 게스트하우스',4.20,'null',20,4,1,3),(4,'제주 퓨어승연 게스트하우스','테라스에서 보는 아름다운 전망 ',4.30,'null',19,4,1,4),(5,'고구려 스테이 서귀포 하버 호텔','삼백집보다 맛있는 호텔식 중식제공',4.70,'null',18,1,1,5),(6,'호텔위드 유','환상의 길로 이어진 아름다운 숙소',3.90,'null',17,1,1,1),(7,'JS 제주시티 호텔&리조트','아름다운 자연을 느낄 수 있는 숙소',4.60,'null',16,2,1,2),(8,'정민 그리고 봄 호텔&리조트','편안하고 안락한 신축 리조트',4.20,'null',15,2,1,3),(9,'JAEYI 콘테넨탈 제주 리조트','조용한 커피 한잔하며 즐기기 좋은 곳',4.50,'null',14,2,1,4),(10,'진석 더 제주 민박','모닥불피워 힐링하는 풀빌라',4.10,'null',13,5,1,5),(11,'제주 팰리스 하버 호텔','명상과 다도, 온전한 자기몰입 시간을 즐길 수 있는 곳',3.40,'null',12,1,1,1),(12,'마린 킹덤 제주 서귀포 게스트하우스','넓은잔디 마당과 귤밭 그리고 스몰웨딩이 가능한 숙소',3.80,'null',11,4,1,2),(13,'민지망고 민박','숲속, 넓은 정원과 텃밭을 갖춘 숙소',3.20,'null',10,5,1,3),(14,'300플러스 제주 민박','선릉 본점의 맛을 그대로 구현한 중식 무료제공',3.90,'null',9,5,1,4),(15,'베스트 웨더 서귀포 리조트','10가지 테마가 있는 리조트',3.50,'null',8,2,1,5),(16,'킹덤 앙코르 호텔 제주','댕댕이와 함께. 즐길 수 있는 호텔',3.80,'null',7,1,1,1),(17,'앙코르 리베이스 더 제주 리조트','감귤밭 속에 위치한 공간을 즐길 수 있는 숙소',3.20,'null',6,2,1,2),(18,'喜young 게스트하우스','별보며 잠 들 수 있는 따뜻하고 로맨틱한 게스트하우스',3.90,'null',5,4,1,3),(19,'제주 햇빛경토 민박','모든객실에서 바다가 보이는 감성숙소',4.10,'null',4,5,1,4),(20,'서귀포 프리미엄 하우스 빌라','친구, 연인과 아름다운 추억을 만들 수 있는곳',2.80,'null',3,3,1,5),(21,'휴에어 팬션 제주','제주의 푸른 바다가 보이는 힐링숙소',4.50,'null',2,3,1,1),(22,'모여라 팬션 성산','제주 문화를 담은 팬션',4.80,'null',1,3,1,2);
/*!40000 ALTER TABLE `accommodations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addresses`
--

DROP TABLE IF EXISTS `addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `addresses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `latitude` decimal(30,15) NOT NULL,
  `longitude` decimal(30,15) NOT NULL,
  `name` varchar(300) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addresses`
--

LOCK TABLES `addresses` WRITE;
/*!40000 ALTER TABLE `addresses` DISABLE KEYS */;
INSERT INTO `addresses` VALUES (1,33.410311300000000,126.897426500000000,'제주특별자치도 서귀포시 성산읍 온평서로 28'),(2,33.513492900000000,126.865931200000000,'제주특별자치도 제주시 특별자치도, 구좌읍 상도로 9-1 KR'),(3,33.416346000000000,126.889907000000000,'제주특별자치도 서귀포시 성산읍 온평리 2006'),(4,33.240659200000000,126.245191900000000,'제주특별자치도 서귀포시 대정읍 동일리 2243'),(5,33.388399100000000,126.224908400000000,'제주특별자치도 제주시 한림읍 금능1길 26'),(6,33.364743000000000,126.196488000000000,'대한민국 제주특별자치도 제주시 한경면 판포1길 35'),(7,33.244087000000000,126.562422000000000,'대한민국 제주특별자치도 서귀포시 송산동 솔동산로22번길 20'),(8,33.514322000000000,126.672865000000000,'대한민국 제주특별자치도 제주시 조천읍 함선로 250'),(9,33.428370000000000,126.293304000000000,'제주특별자치도 제주시 한림읍 귀덕리 1836-3'),(10,33.486725000000000,126.383543000000000,'대한민국 제주특별자치도 제주시 애월읍 애월해안로 788'),(11,33.514322000000000,126.672865000000000,'대한민국 제주특별자치도 제주시 조천읍 함선로 250'),(12,33.542307000000000,126.674598000000000,'제주특별자치도 제주시 조천읍 함덕리 271-3'),(13,33.519987000000000,126.863886000000000,'제주특별자치도 제주시 구좌읍 상도리 475-9'),(14,33.242160000000000,126.610090000000000,'제주특별자치도 서귀포시 송산동 275-2'),(15,33.387343000000000,126.246443000000000,'제주특별자치도 제주시 한림읍 협재리 2169-1'),(16,33.549596000000000,126.692073000000000,'대한민국 제주특별자치도 제주시 조천읍 북촌북길 58-7'),(17,33.531640000000000,126.796332000000000,'제주특별자치도 제주시 구좌읍 행원리 1950'),(18,33.392535000000000,126.878483000000000,'제주특별자치도 서귀포시 성산읍 난산리 100'),(19,33.513493000000000,126.865931000000000,'제주특별자치도 제주시 특별자치도, 구좌읍 상도로 9-1 KR'),(20,33.490582000000000,126.486753000000000,'제주특별자치도 제주시 연동 도령로 83'),(21,33.517629300000000,126.526788600000000,'제주특별자치도 제주시 건입동 서부두2길 20'),(22,33.447948600000000,126.916212400000000,'제주특별자치도 서귀포시 성산읍 고성리 329-1');
/*!40000 ALTER TABLE `addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `airlines`
--

DROP TABLE IF EXISTS `airlines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `airlines` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(300) COLLATE utf8mb4_general_ci NOT NULL,
  `image_url` varchar(4000) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `airlines`
--

LOCK TABLES `airlines` WRITE;
/*!40000 ALTER TABLE `airlines` DISABLE KEYS */;
INSERT INTO `airlines` VALUES (1,'신영항공','http://wecode.co.kr/static/media/shin.76d5cc6c.png'),(2,'에어JS','http://wecode.co.kr/static/media/yang.0aac1edb.png'),(3,'지영에어','http://wecode.co.kr/static/media/yoon.532096c4.png');
/*!40000 ALTER TABLE `airlines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `airports`
--

DROP TABLE IF EXISTS `airports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `airports` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(400) COLLATE utf8mb4_general_ci NOT NULL,
  `code` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `airports`
--

LOCK TABLES `airports` WRITE;
/*!40000 ALTER TABLE `airports` DISABLE KEYS */;
INSERT INTO `airports` VALUES (1,'김포','GMP'),(2,'제주','CJU');
/*!40000 ALTER TABLE `airports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'호텔'),(2,'리조트'),(3,'펜션'),(4,'게스트하우스'),(5,'감성숙소');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(400) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (1,'제주');
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (9,'accommodation','accommodation'),(10,'accommodation','accommodationimage'),(11,'accommodation','address'),(12,'accommodation','category'),(13,'accommodation','city'),(14,'accommodation','host'),(15,'accommodation','option'),(19,'accommodation','review'),(16,'accommodation','room'),(18,'accommodation','roomoption'),(17,'accommodation','unavailabledate'),(1,'contenttypes','contenttype'),(20,'flight','airline'),(21,'flight','airport'),(24,'flight','flightprice'),(23,'flight','flightschedule'),(22,'flight','flightstatus'),(7,'order','accommodationorder'),(8,'order','flightorder'),(6,'order','orderstatus'),(2,'sessions','session'),(5,'user','favor'),(3,'user','refundaccount'),(4,'user','user');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'accommodation','0001_initial','2021-03-14 19:15:45.407453'),(2,'user','0001_initial','2021-03-14 19:15:45.577457'),(3,'flight','0001_initial','2021-03-14 19:15:45.725556'),(4,'order','0001_initial','2021-03-14 19:15:45.914639'),(5,'accommodation','0002_auto_20210305_1415','2021-03-14 19:15:46.392901'),(6,'accommodation','0003_room_option','2021-03-14 19:15:46.407064'),(7,'contenttypes','0001_initial','2021-03-14 19:15:46.435981'),(8,'contenttypes','0002_remove_content_type_name','2021-03-14 19:15:46.485737'),(9,'user','0002_auto_20210304_2130','2021-03-14 19:15:46.519974'),(10,'user','0003_user_kakao_id','2021-03-14 19:15:46.563373'),(11,'order','0002_auto_20210311_1318','2021-03-14 19:15:46.588303'),(12,'sessions','0001_initial','2021-03-14 19:15:46.606042');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  `session_data` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favors`
--

DROP TABLE IF EXISTS `favors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `favors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `accommodation_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `favors_accommodation_id_9813392c_fk_accommodations_id` (`accommodation_id`),
  KEY `favors_user_id_1a42a69d_fk_users_id` (`user_id`),
  CONSTRAINT `favors_accommodation_id_9813392c_fk_accommodations_id` FOREIGN KEY (`accommodation_id`) REFERENCES `accommodations` (`id`),
  CONSTRAINT `favors_user_id_1a42a69d_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favors`
--

LOCK TABLES `favors` WRITE;
/*!40000 ALTER TABLE `favors` DISABLE KEYS */;
/*!40000 ALTER TABLE `favors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flight_orders`
--

DROP TABLE IF EXISTS `flight_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flight_orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `total_price` decimal(30,2) NOT NULL,
  `passenger` int NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `serial_number` varchar(300) COLLATE utf8mb4_general_ci NOT NULL,
  `flight_price_id` int NOT NULL,
  `order_status_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `flight_orders_flight_price_id_b17c1747_fk_flight_prices_id` (`flight_price_id`),
  KEY `flight_orders_order_status_id_548f956b_fk_order_statuses_id` (`order_status_id`),
  KEY `flight_orders_user_id_51df5233_fk_users_id` (`user_id`),
  CONSTRAINT `flight_orders_flight_price_id_b17c1747_fk_flight_prices_id` FOREIGN KEY (`flight_price_id`) REFERENCES `flight_prices` (`id`),
  CONSTRAINT `flight_orders_order_status_id_548f956b_fk_order_statuses_id` FOREIGN KEY (`order_status_id`) REFERENCES `order_statuses` (`id`),
  CONSTRAINT `flight_orders_user_id_51df5233_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flight_orders`
--

LOCK TABLES `flight_orders` WRITE;
/*!40000 ALTER TABLE `flight_orders` DISABLE KEYS */;
INSERT INTO `flight_orders` VALUES (1,38900.00,1,'2021-03-14 19:15:51.245357','2021-03-14 19:15:51.245375','c36ac210-d1f1-467a-b633-3d36df7d49d1',3,2,3),(2,92700.00,3,'2021-03-14 19:15:51.253978','2021-03-14 19:15:51.254030','29b03c79-1bb5-4cec-9e1a-670922daa223',24,2,2),(3,141800.00,2,'2021-03-14 19:15:51.259197','2021-03-14 19:15:51.259217','033769af-2d06-4d93-890c-b36a3ab16dc7',7,2,7),(4,178800.00,2,'2021-03-14 19:15:51.265683','2021-03-14 19:15:51.265704','cf2c16e7-ba4d-4b7e-8380-99065dd336ef',52,2,2),(5,92400.00,3,'2021-03-14 19:15:51.270289','2021-03-14 19:15:51.270309','749dc548-82c5-42b6-999d-fb5d5436cc66',21,2,5),(6,60000.00,2,'2021-03-14 19:15:51.277468','2021-03-14 19:15:51.277488','01ddd3d2-25ba-4c76-8574-88eb695dfa43',18,2,4),(7,73800.00,2,'2021-03-14 19:15:51.284070','2021-03-14 19:15:51.284091','9ed91581-44b1-498b-ace8-7d80e25c17f4',6,2,5),(8,150900.00,3,'2021-03-14 19:15:51.288545','2021-03-14 19:15:51.288564','dd9ae43a-8d9a-4923-98f8-4fb0baaa6ec6',32,2,7),(9,60000.00,2,'2021-03-14 19:15:51.295216','2021-03-14 19:15:51.295267','5719f457-440f-4c8f-a581-8248fa1e77ca',18,2,4),(10,50300.00,1,'2021-03-14 19:15:51.301117','2021-03-14 19:15:51.301137','97b73a1a-2732-4779-97c3-3919833d5a72',32,2,5),(11,92100.00,2,'2021-03-14 19:15:51.307266','2021-03-14 19:15:51.307285','ea354b75-4422-4c17-8ef7-72e2899dc63f',41,2,1),(12,54000.00,1,'2021-03-14 19:15:51.311453','2021-03-14 19:15:51.311475','36004c92-d63b-469a-bf6a-dfffd5db64f0',53,2,3),(13,70900.00,1,'2021-03-14 19:15:51.320318','2021-03-14 19:15:51.320338','27765413-31a4-4d67-b8dc-9a635cf9c2c6',7,2,6),(14,86000.00,1,'2021-03-14 19:15:51.326392','2021-03-14 19:15:51.326444','01c27b6c-12f3-43bd-a932-a2acd5c12b5d',38,2,2),(15,128600.00,2,'2021-03-14 19:15:51.331904','2021-03-14 19:15:51.331925','e96c8c4c-1b15-4d26-a45d-6b57b9fe9c01',35,2,5),(16,84000.00,2,'2021-03-14 19:15:51.339523','2021-03-14 19:15:51.339544','9318ced1-b724-452f-a12c-9523758e2635',13,2,4),(17,268200.00,3,'2021-03-14 19:15:51.346894','2021-03-14 19:15:51.346919','bd46b133-1f2b-47f0-9235-abaee4e8fe4f',52,2,3),(18,38900.00,1,'2021-03-14 19:15:51.352571','2021-03-14 19:15:51.352590','fa5cacd6-6011-4d11-9d15-2c26d89d22d7',11,2,1),(19,107700.00,3,'2021-03-14 19:15:51.363123','2021-03-14 19:15:51.363147','b7aa76f2-d62b-410f-8add-f2d9e6f375c1',16,2,6),(20,104400.00,3,'2021-03-14 19:15:51.370519','2021-03-14 19:15:51.370539','10dcb86e-172c-456a-a911-3ab5842d0c23',15,2,3);
/*!40000 ALTER TABLE `flight_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flight_prices`
--

DROP TABLE IF EXISTS `flight_prices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flight_prices` (
  `id` int NOT NULL AUTO_INCREMENT,
  `price` decimal(30,2) NOT NULL,
  `remaining_seat` int NOT NULL,
  `flight_schedule_id` int NOT NULL,
  `status_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `flight_prices_flight_schedule_id_85ae7663_fk_flight_schedules_id` (`flight_schedule_id`),
  KEY `flight_prices_status_id_33f7fdb6_fk_flight_statuses_id` (`status_id`),
  CONSTRAINT `flight_prices_flight_schedule_id_85ae7663_fk_flight_schedules_id` FOREIGN KEY (`flight_schedule_id`) REFERENCES `flight_schedules` (`id`),
  CONSTRAINT `flight_prices_status_id_33f7fdb6_fk_flight_statuses_id` FOREIGN KEY (`status_id`) REFERENCES `flight_statuses` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flight_prices`
--

LOCK TABLES `flight_prices` WRITE;
/*!40000 ALTER TABLE `flight_prices` DISABLE KEYS */;
INSERT INTO `flight_prices` VALUES (1,48000.00,4,1,1),(2,43000.00,5,2,2),(3,38900.00,3,3,3),(4,54800.00,1,4,1),(5,44900.00,2,5,2),(6,36900.00,3,6,3),(7,70900.00,3,7,1),(8,61900.00,1,8,2),(9,59900.00,5,9,3),(10,43000.00,4,10,1),(11,38900.00,4,11,2),(12,34900.00,4,12,3),(13,42000.00,1,13,1),(14,39900.00,2,14,2),(15,34800.00,2,15,3),(16,35900.00,2,16,1),(17,32000.00,3,17,2),(18,30000.00,2,18,3),(19,40900.00,5,19,1),(20,32800.00,4,20,2),(21,30800.00,1,21,3),(22,36800.00,4,22,1),(23,34200.00,5,23,2),(24,30900.00,4,24,3),(25,48900.00,1,25,1),(26,40900.00,3,26,2),(27,38900.00,3,27,3),(28,63000.00,4,28,1),(29,59800.00,5,29,2),(30,55900.00,1,30,3),(31,79300.00,2,31,1),(32,50300.00,4,32,2),(33,23300.00,3,33,3),(34,80000.00,3,34,1),(35,64300.00,5,35,2),(36,45200.00,4,36,3),(37,112000.00,1,37,1),(38,86000.00,3,38,2),(39,65400.00,3,39,3),(40,70400.00,3,40,1),(41,46050.00,1,41,2),(42,23000.00,3,42,3),(43,64800.00,3,43,1),(44,43700.00,1,44,2),(45,32000.00,4,45,3),(46,74500.00,4,46,1),(47,44590.00,5,47,2),(48,32400.00,3,48,3),(49,68300.00,4,49,1),(50,38900.00,5,50,2),(51,15900.00,1,51,3),(52,89400.00,4,52,1),(53,54000.00,4,53,2),(54,27400.00,5,54,3),(55,98900.00,4,55,1),(56,71200.00,5,56,2),(57,53000.00,3,57,3),(58,67900.00,4,58,1),(59,45300.00,3,59,2),(60,18900.00,3,60,3),(61,48000.00,3,61,1),(62,43000.00,4,62,2),(63,38900.00,2,63,3),(64,54800.00,2,64,1),(65,44900.00,1,65,2),(66,36900.00,3,66,3),(67,70900.00,1,67,1),(68,61900.00,5,68,2),(69,59900.00,1,69,3),(70,43000.00,4,70,1),(71,38900.00,1,71,2),(72,34900.00,5,72,3),(73,42000.00,4,73,1),(74,39900.00,1,74,2),(75,34800.00,5,75,3),(76,35900.00,3,76,1),(77,32000.00,3,77,2),(78,30000.00,4,78,3),(79,40900.00,2,79,1),(80,32800.00,5,80,2),(81,30800.00,5,81,3),(82,36800.00,3,82,1),(83,34200.00,2,83,2),(84,30900.00,2,84,3),(85,48900.00,1,85,1),(86,40900.00,5,86,2),(87,38900.00,5,87,3),(88,63000.00,4,88,1),(89,59800.00,1,89,2),(90,55900.00,3,90,3),(91,79300.00,4,91,1),(92,50300.00,4,92,2),(93,23300.00,1,93,3),(94,80000.00,1,94,1),(95,64300.00,5,95,2),(96,45200.00,1,96,3),(97,112000.00,2,97,1),(98,86000.00,3,98,2),(99,65400.00,5,99,3),(100,70400.00,4,100,1),(101,46050.00,3,101,2),(102,23000.00,3,102,3),(103,64800.00,5,103,1),(104,43700.00,5,104,2),(105,32000.00,1,105,3),(106,74500.00,3,106,1),(107,44590.00,2,107,2),(108,32400.00,4,108,3),(109,68300.00,4,109,1),(110,38900.00,1,110,2),(111,15900.00,2,111,3),(112,89400.00,1,112,1),(113,54000.00,5,113,2),(114,27400.00,1,114,3),(115,98900.00,3,115,1),(116,71200.00,2,116,2),(117,53000.00,4,117,3),(118,67900.00,1,118,1),(119,45300.00,5,119,2),(120,18900.00,4,120,3);
/*!40000 ALTER TABLE `flight_prices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flight_schedules`
--

DROP TABLE IF EXISTS `flight_schedules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flight_schedules` (
  `id` int NOT NULL AUTO_INCREMENT,
  `flight_code` varchar(45) COLLATE utf8mb4_general_ci NOT NULL,
  `departure_date` date NOT NULL,
  `arrival_date` date NOT NULL,
  `departure_time` time(6) NOT NULL,
  `arrival_time` time(6) NOT NULL,
  `duration_time` time(6) NOT NULL,
  `airline_id` int NOT NULL,
  `arrival_airport_id` int NOT NULL,
  `departure_airport_id` int NOT NULL,
  `time_frame` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `flight_schedules_airline_id_fdee2baf_fk_airlines_id` (`airline_id`),
  KEY `flight_schedules_arrival_airport_id_8b0f9a97_fk_airports_id` (`arrival_airport_id`),
  KEY `flight_schedules_departure_airport_id_5605a1d3_fk_airports_id` (`departure_airport_id`),
  CONSTRAINT `flight_schedules_airline_id_fdee2baf_fk_airlines_id` FOREIGN KEY (`airline_id`) REFERENCES `airlines` (`id`),
  CONSTRAINT `flight_schedules_arrival_airport_id_8b0f9a97_fk_airports_id` FOREIGN KEY (`arrival_airport_id`) REFERENCES `airports` (`id`),
  CONSTRAINT `flight_schedules_departure_airport_id_5605a1d3_fk_airports_id` FOREIGN KEY (`departure_airport_id`) REFERENCES `airports` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flight_schedules`
--

LOCK TABLES `flight_schedules` WRITE;
/*!40000 ALTER TABLE `flight_schedules` DISABLE KEYS */;
INSERT INTO `flight_schedules` VALUES (1,'SY518','2021-03-12','2021-03-12','05:20:00.000000','06:30:00.000000','01:10:00.000000',1,2,1,1),(2,'SY379','2021-03-12','2021-03-12','05:20:00.000000','06:30:00.000000','01:10:00.000000',1,2,1,1),(3,'JS166','2021-03-12','2021-03-12','05:20:00.000000','06:30:00.000000','01:10:00.000000',2,2,1,1),(4,'SY190','2021-03-12','2021-03-12','07:10:00.000000','08:20:00.000000','01:10:00.000000',1,2,1,2),(5,'JY307','2021-03-12','2021-03-12','07:10:00.000000','08:20:00.000000','01:10:00.000000',3,2,1,2),(6,'JS320','2021-03-12','2021-03-12','07:10:00.000000','08:20:00.000000','01:10:00.000000',2,2,1,2),(7,'JY719','2021-03-12','2021-03-12','10:40:00.000000','11:50:00.000000','01:10:00.000000',3,2,1,2),(8,'JY492','2021-03-12','2021-03-12','10:40:00.000000','11:50:00.000000','01:10:00.000000',3,2,1,2),(9,'JS345','2021-03-12','2021-03-12','10:40:00.000000','11:50:00.000000','01:10:00.000000',2,2,1,2),(10,'SY782','2021-03-12','2021-03-12','12:10:00.000000','13:20:00.000000','01:10:00.000000',1,2,1,3),(11,'SY334','2021-03-12','2021-03-12','12:10:00.000000','13:20:00.000000','01:10:00.000000',1,2,1,3),(12,'JY900','2021-03-12','2021-03-12','12:10:00.000000','13:20:00.000000','01:10:00.000000',3,2,1,3),(13,'SY897','2021-03-12','2021-03-12','13:30:00.000000','14:40:00.000000','01:10:00.000000',1,2,1,3),(14,'JS493','2021-03-12','2021-03-12','13:30:00.000000','14:40:00.000000','01:10:00.000000',2,2,1,3),(15,'JS881','2021-03-12','2021-03-12','13:30:00.000000','14:40:00.000000','01:10:00.000000',2,2,1,3),(16,'SY523','2021-03-12','2021-03-12','14:20:00.000000','15:30:00.000000','01:10:00.000000',1,2,1,3),(17,'SY920','2021-03-12','2021-03-12','14:20:00.000000','15:30:00.000000','01:10:00.000000',1,2,1,3),(18,'SY801','2021-03-12','2021-03-12','14:20:00.000000','15:30:00.000000','01:10:00.000000',1,2,1,3),(19,'JY256','2021-03-12','2021-03-12','15:55:00.000000','17:05:00.000000','01:10:00.000000',3,2,1,3),(20,'SY766','2021-03-12','2021-03-12','15:55:00.000000','17:05:00.000000','01:10:00.000000',1,2,1,3),(21,'JS353','2021-03-12','2021-03-12','15:55:00.000000','17:05:00.000000','01:10:00.000000',2,2,1,3),(22,'SY987','2021-03-12','2021-03-12','16:40:00.000000','17:50:00.000000','01:10:00.000000',1,2,1,3),(23,'JS380','2021-03-12','2021-03-12','16:40:00.000000','17:50:00.000000','01:10:00.000000',2,2,1,3),(24,'JY271','2021-03-12','2021-03-12','16:40:00.000000','17:50:00.000000','01:10:00.000000',3,2,1,3),(25,'JS258','2021-03-12','2021-03-12','19:35:00.000000','20:45:00.000000','01:10:00.000000',2,2,1,4),(26,'SY130','2021-03-12','2021-03-12','19:35:00.000000','20:45:00.000000','01:10:00.000000',1,2,1,4),(27,'JS124','2021-03-12','2021-03-12','19:35:00.000000','20:45:00.000000','01:10:00.000000',2,2,1,4),(28,'JS252','2021-03-12','2021-03-12','21:40:00.000000','22:50:00.000000','01:10:00.000000',2,2,1,4),(29,'JS539','2021-03-12','2021-03-12','21:40:00.000000','22:50:00.000000','01:10:00.000000',2,2,1,4),(30,'JY421','2021-03-12','2021-03-12','21:40:00.000000','22:50:00.000000','01:10:00.000000',3,2,1,4),(31,'JS305','2021-03-14','2021-03-14','05:40:00.000000','06:50:00.000000','01:10:00.000000',2,1,2,1),(32,'JY322','2021-03-14','2021-03-14','05:40:00.000000','06:50:00.000000','01:10:00.000000',3,1,2,1),(33,'JS509','2021-03-14','2021-03-14','05:40:00.000000','06:50:00.000000','01:10:00.000000',2,1,2,1),(34,'JY375','2021-03-14','2021-03-14','08:00:00.000000','09:10:00.000000','01:10:00.000000',3,1,2,2),(35,'SY769','2021-03-14','2021-03-14','08:00:00.000000','09:10:00.000000','01:10:00.000000',1,1,2,2),(36,'JY907','2021-03-14','2021-03-14','08:00:00.000000','09:10:00.000000','01:10:00.000000',3,1,2,2),(37,'JY377','2021-03-14','2021-03-14','10:10:00.000000','11:20:00.000000','01:10:00.000000',3,1,2,2),(38,'JY558','2021-03-14','2021-03-14','10:10:00.000000','11:20:00.000000','01:10:00.000000',3,1,2,2),(39,'JY865','2021-03-14','2021-03-14','10:10:00.000000','11:20:00.000000','01:10:00.000000',3,1,2,2),(40,'JY538','2021-03-14','2021-03-14','12:30:00.000000','13:40:00.000000','01:10:00.000000',3,1,2,3),(41,'JS327','2021-03-14','2021-03-14','12:30:00.000000','13:40:00.000000','01:10:00.000000',2,1,2,3),(42,'SY263','2021-03-14','2021-03-14','12:30:00.000000','13:40:00.000000','01:10:00.000000',1,1,2,3),(43,'SY915','2021-03-14','2021-03-14','14:20:00.000000','15:30:00.000000','01:10:00.000000',1,1,2,3),(44,'JY529','2021-03-14','2021-03-14','14:20:00.000000','15:30:00.000000','01:10:00.000000',3,1,2,3),(45,'JS418','2021-03-14','2021-03-14','14:20:00.000000','15:30:00.000000','01:10:00.000000',2,1,2,3),(46,'SY733','2021-03-14','2021-03-14','15:00:00.000000','16:10:00.000000','01:10:00.000000',1,1,2,3),(47,'JS242','2021-03-14','2021-03-14','15:00:00.000000','16:10:00.000000','01:10:00.000000',2,1,2,3),(48,'SY555','2021-03-14','2021-03-14','15:00:00.000000','16:10:00.000000','01:10:00.000000',1,1,2,3),(49,'SY625','2021-03-14','2021-03-14','16:10:00.000000','17:20:00.000000','01:10:00.000000',1,1,2,3),(50,'JY152','2021-03-14','2021-03-14','16:10:00.000000','17:20:00.000000','01:10:00.000000',3,1,2,3),(51,'SY819','2021-03-14','2021-03-14','16:10:00.000000','17:20:00.000000','01:10:00.000000',1,1,2,3),(52,'JY904','2021-03-14','2021-03-14','17:00:00.000000','18:10:00.000000','01:10:00.000000',3,1,2,3),(53,'JY655','2021-03-14','2021-03-14','17:00:00.000000','18:10:00.000000','01:10:00.000000',3,1,2,3),(54,'JS991','2021-03-14','2021-03-14','17:00:00.000000','18:10:00.000000','01:10:00.000000',2,1,2,3),(55,'JY225','2021-03-14','2021-03-14','20:40:00.000000','21:50:00.000000','01:10:00.000000',3,1,2,4),(56,'SY256','2021-03-14','2021-03-14','20:40:00.000000','21:50:00.000000','01:10:00.000000',1,1,2,4),(57,'JY297','2021-03-14','2021-03-14','20:40:00.000000','21:50:00.000000','01:10:00.000000',3,1,2,4),(58,'JS247','2021-03-14','2021-03-14','22:30:00.000000','23:40:00.000000','01:10:00.000000',2,1,2,4),(59,'SY597','2021-03-14','2021-03-14','22:30:00.000000','23:40:00.000000','01:10:00.000000',1,1,2,4),(60,'JS175','2021-03-14','2021-03-14','22:30:00.000000','23:40:00.000000','01:10:00.000000',2,1,2,4),(61,'SY759','2021-03-29','2021-03-29','05:20:00.000000','06:30:00.000000','01:10:00.000000',1,1,2,1),(62,'JY503','2021-03-29','2021-03-29','05:20:00.000000','06:30:00.000000','01:10:00.000000',3,1,2,1),(63,'SY896','2021-03-29','2021-03-29','05:20:00.000000','06:30:00.000000','01:10:00.000000',1,1,2,1),(64,'JY588','2021-03-29','2021-03-29','07:10:00.000000','08:20:00.000000','01:10:00.000000',3,1,2,2),(65,'JS138','2021-03-29','2021-03-29','07:10:00.000000','08:20:00.000000','01:10:00.000000',2,1,2,2),(66,'JY806','2021-03-29','2021-03-29','07:10:00.000000','08:20:00.000000','01:10:00.000000',3,1,2,2),(67,'JY133','2021-03-29','2021-03-29','10:40:00.000000','11:50:00.000000','01:10:00.000000',3,1,2,2),(68,'JY392','2021-03-29','2021-03-29','10:40:00.000000','11:50:00.000000','01:10:00.000000',3,1,2,2),(69,'JS415','2021-03-29','2021-03-29','10:40:00.000000','11:50:00.000000','01:10:00.000000',2,1,2,2),(70,'SY268','2021-03-29','2021-03-29','12:10:00.000000','13:20:00.000000','01:10:00.000000',1,1,2,3),(71,'SY945','2021-03-29','2021-03-29','12:10:00.000000','13:20:00.000000','01:10:00.000000',1,1,2,3),(72,'JY275','2021-03-29','2021-03-29','12:10:00.000000','13:20:00.000000','01:10:00.000000',3,1,2,3),(73,'JS345','2021-03-29','2021-03-29','13:30:00.000000','14:40:00.000000','01:10:00.000000',2,1,2,3),(74,'SY925','2021-03-29','2021-03-29','13:30:00.000000','14:40:00.000000','01:10:00.000000',1,1,2,3),(75,'JY933','2021-03-29','2021-03-29','13:30:00.000000','14:40:00.000000','01:10:00.000000',3,1,2,3),(76,'SY672','2021-03-29','2021-03-29','14:20:00.000000','15:30:00.000000','01:10:00.000000',1,1,2,3),(77,'JY317','2021-03-29','2021-03-29','14:20:00.000000','15:30:00.000000','01:10:00.000000',3,1,2,3),(78,'JS959','2021-03-29','2021-03-29','14:20:00.000000','15:30:00.000000','01:10:00.000000',2,1,2,3),(79,'JY916','2021-03-29','2021-03-29','15:55:00.000000','17:05:00.000000','01:10:00.000000',3,1,2,3),(80,'JS975','2021-03-29','2021-03-29','15:55:00.000000','17:05:00.000000','01:10:00.000000',2,1,2,3),(81,'SY303','2021-03-29','2021-03-29','15:55:00.000000','17:05:00.000000','01:10:00.000000',1,1,2,3),(82,'SY679','2021-03-29','2021-03-29','16:40:00.000000','17:50:00.000000','01:10:00.000000',1,1,2,3),(83,'JY930','2021-03-29','2021-03-29','16:40:00.000000','17:50:00.000000','01:10:00.000000',3,1,2,3),(84,'SY403','2021-03-29','2021-03-29','16:40:00.000000','17:50:00.000000','01:10:00.000000',1,1,2,3),(85,'JS646','2021-03-29','2021-03-29','19:35:00.000000','20:45:00.000000','01:10:00.000000',2,1,2,4),(86,'SY488','2021-03-29','2021-03-29','19:35:00.000000','20:45:00.000000','01:10:00.000000',1,1,2,4),(87,'JS346','2021-03-29','2021-03-29','19:35:00.000000','20:45:00.000000','01:10:00.000000',2,1,2,4),(88,'SY500','2021-03-29','2021-03-29','21:40:00.000000','22:50:00.000000','01:10:00.000000',1,1,2,4),(89,'SY268','2021-03-29','2021-03-29','21:40:00.000000','22:50:00.000000','01:10:00.000000',1,1,2,4),(90,'SY400','2021-03-29','2021-03-29','21:40:00.000000','22:50:00.000000','01:10:00.000000',1,1,2,4),(91,'SY432','2021-03-31','2021-03-31','05:40:00.000000','06:50:00.000000','01:10:00.000000',1,1,2,1),(92,'SY191','2021-03-31','2021-03-31','05:40:00.000000','06:50:00.000000','01:10:00.000000',1,1,2,1),(93,'SY293','2021-03-31','2021-03-31','05:40:00.000000','06:50:00.000000','01:10:00.000000',1,1,2,1),(94,'SY209','2021-03-31','2021-03-31','08:00:00.000000','09:10:00.000000','01:10:00.000000',1,1,2,2),(95,'JS785','2021-03-31','2021-03-31','08:00:00.000000','09:10:00.000000','01:10:00.000000',2,1,2,2),(96,'JY177','2021-03-31','2021-03-31','08:00:00.000000','09:10:00.000000','01:10:00.000000',3,1,2,2),(97,'JY117','2021-03-31','2021-03-31','10:10:00.000000','11:20:00.000000','01:10:00.000000',3,1,2,2),(98,'JS232','2021-03-31','2021-03-31','10:10:00.000000','11:20:00.000000','01:10:00.000000',2,1,2,2),(99,'SY625','2021-03-31','2021-03-31','10:10:00.000000','11:20:00.000000','01:10:00.000000',1,1,2,2),(100,'JS491','2021-03-31','2021-03-31','12:30:00.000000','13:40:00.000000','01:10:00.000000',2,1,2,3),(101,'JY685','2021-03-31','2021-03-31','12:30:00.000000','13:40:00.000000','01:10:00.000000',3,1,2,3),(102,'JY633','2021-03-31','2021-03-31','12:30:00.000000','13:40:00.000000','01:10:00.000000',3,1,2,3),(103,'JS312','2021-03-31','2021-03-31','14:20:00.000000','15:30:00.000000','01:10:00.000000',2,1,2,3),(104,'JY628','2021-03-31','2021-03-31','14:20:00.000000','15:30:00.000000','01:10:00.000000',3,1,2,3),(105,'JY701','2021-03-31','2021-03-31','14:20:00.000000','15:30:00.000000','01:10:00.000000',3,1,2,3),(106,'JS829','2021-03-31','2021-03-31','15:00:00.000000','16:10:00.000000','01:10:00.000000',2,1,2,3),(107,'JY968','2021-03-31','2021-03-31','15:00:00.000000','16:10:00.000000','01:10:00.000000',3,1,2,3),(108,'JS139','2021-03-31','2021-03-31','15:00:00.000000','16:10:00.000000','01:10:00.000000',2,1,2,3),(109,'JY315','2021-03-31','2021-03-31','16:10:00.000000','17:20:00.000000','01:10:00.000000',3,1,2,3),(110,'SY813','2021-03-31','2021-03-31','16:10:00.000000','17:20:00.000000','01:10:00.000000',1,1,2,3),(111,'JY915','2021-03-31','2021-03-31','16:10:00.000000','17:20:00.000000','01:10:00.000000',3,1,2,3),(112,'JS342','2021-03-31','2021-03-31','17:00:00.000000','18:10:00.000000','01:10:00.000000',2,1,2,3),(113,'JS772','2021-03-31','2021-03-31','17:00:00.000000','18:10:00.000000','01:10:00.000000',2,1,2,3),(114,'JY652','2021-03-31','2021-03-31','17:00:00.000000','18:10:00.000000','01:10:00.000000',3,1,2,3),(115,'JY522','2021-03-31','2021-03-31','20:40:00.000000','21:50:00.000000','01:10:00.000000',3,1,2,4),(116,'SY196','2021-03-31','2021-03-31','20:40:00.000000','21:50:00.000000','01:10:00.000000',1,1,2,4),(117,'JY503','2021-03-31','2021-03-31','20:40:00.000000','21:50:00.000000','01:10:00.000000',3,1,2,4),(118,'JS533','2021-03-31','2021-03-31','22:30:00.000000','23:40:00.000000','01:10:00.000000',2,1,2,4),(119,'SY119','2021-03-31','2021-03-31','22:30:00.000000','23:40:00.000000','01:10:00.000000',1,1,2,4),(120,'JY459','2021-03-31','2021-03-31','22:30:00.000000','23:40:00.000000','01:10:00.000000',3,1,2,4);
/*!40000 ALTER TABLE `flight_schedules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flight_statuses`
--

DROP TABLE IF EXISTS `flight_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flight_statuses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flight_statuses`
--

LOCK TABLES `flight_statuses` WRITE;
/*!40000 ALTER TABLE `flight_statuses` DISABLE KEYS */;
INSERT INTO `flight_statuses` VALUES (1,'일반석'),(2,'할인석'),(3,'특가석');
/*!40000 ALTER TABLE `flight_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hosts`
--

DROP TABLE IF EXISTS `hosts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hosts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(400) COLLATE utf8mb4_general_ci NOT NULL,
  `image_url` varchar(4000) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hosts`
--

LOCK TABLES `hosts` WRITE;
/*!40000 ALTER TABLE `hosts` DISABLE KEYS */;
INSERT INTO `hosts` VALUES (1,'이소헌','https://wecode.co.kr/static/media/lee-so.39e2a003.png'),(2,'강경훈','https://ca.slack-edge.com/TH0U6FBTN-U016RK0TS84-1b9d05c46abc-512'),(3,'손승현','https://wecode.co.kr/static/media/son.1887ee25.png'),(4,'박지훈','https://wecode.co.kr/static/media/park.2efd61a7.png'),(5,'유병민','https://wecode.co.kr/static/media/min.cfcc09ee.png');
/*!40000 ALTER TABLE `hosts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `options`
--

DROP TABLE IF EXISTS `options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `options` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(300) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `options`
--

LOCK TABLES `options` WRITE;
/*!40000 ALTER TABLE `options` DISABLE KEYS */;
INSERT INTO `options` VALUES (1,'에어컨'),(2,'세탁기'),(3,'냉장고'),(4,'건조기'),(5,'헤어드라이어기'),(6,'수건'),(7,'린스'),(8,'바디워시'),(9,'치약'),(10,'바베큐시설'),(11,'수영장'),(12,'비누'),(13,'샴푸'),(14,'TV'),(15,'Wi-Fi'),(16,'주차장'),(17,'전용 화장실'),(18,'화장실'),(19,'벙커 침대'),(20,'취사시설'),(21,'테이블'),(22,'엘리베이터'),(23,'욕실'),(24,'전용 욕실'),(25,'옷장'),(26,'행거'),(27,'난방'),(28,'싱글 침대'),(29,'더블 침대'),(30,'2층 침대');
/*!40000 ALTER TABLE `options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_statuses`
--

DROP TABLE IF EXISTS `order_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_statuses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_statuses`
--

LOCK TABLES `order_statuses` WRITE;
/*!40000 ALTER TABLE `order_statuses` DISABLE KEYS */;
INSERT INTO `order_statuses` VALUES (1,'결제 대기'),(2,'결제 완료'),(3,'결제 취소');
/*!40000 ALTER TABLE `order_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refund_accounts`
--

DROP TABLE IF EXISTS `refund_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `refund_accounts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `bank_account_number` varchar(4000) COLLATE utf8mb4_general_ci NOT NULL,
  `bank_name` varchar(300) COLLATE utf8mb4_general_ci NOT NULL,
  `owner` varchar(400) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refund_accounts`
--

LOCK TABLES `refund_accounts` WRITE;
/*!40000 ALTER TABLE `refund_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `refund_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews` (
  `id` int NOT NULL AUTO_INCREMENT,
  `content` varchar(1000) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `image_url` varchar(4000) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `location_rate` decimal(5,2) NOT NULL,
  `sanitary_rate` decimal(5,2) NOT NULL,
  `facility_rate` decimal(5,2) NOT NULL,
  `hospitality_rate` decimal(5,2) NOT NULL,
  `total_rate` decimal(5,2) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `accommodation_id` int NOT NULL,
  `accommodation_order_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `reviews_accommodation_id_c34307b1_fk_accommodations_id` (`accommodation_id`),
  KEY `reviews_accommodation_order__47abf9e7_fk_accommoda` (`accommodation_order_id`),
  KEY `reviews_user_id_c23b0903_fk_users_id` (`user_id`),
  CONSTRAINT `reviews_accommodation_id_c34307b1_fk_accommodations_id` FOREIGN KEY (`accommodation_id`) REFERENCES `accommodations` (`id`),
  CONSTRAINT `reviews_accommodation_order__47abf9e7_fk_accommoda` FOREIGN KEY (`accommodation_order_id`) REFERENCES `accommodation_orders` (`id`),
  CONSTRAINT `reviews_user_id_c23b0903_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (1,'숙소가 인테리어도 감각있고 청결상태도 넘 깔끔했어요.','https://images.unsplash.com/photo-1550399504-8953e1a6ac87?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2087&q=80',3.00,3.00,3.00,4.00,3.30,'2021-03-14 19:15:51.815307','2021-03-14 19:15:51.815343',1,1,1),(2,'구성원 모두 편한한 맘으로 푹 쉬다온다는 느낌이였어요~~','https://images.unsplash.com/photo-1440778303588-435521a205bc?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1950&q=80',3.00,3.00,5.00,5.00,4.00,'2021-03-14 19:15:51.822903','2021-03-14 19:15:51.822924',1,2,2),(3,'출구도 독립적이여서 좋았어요 참 귤따는체험도 하게 해주셔서 감사했습니다 :)','https://images.unsplash.com/photo-1605466908547-d7e584e066cf?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1949&q=80',4.00,5.00,4.00,1.00,3.50,'2021-03-14 19:15:51.829542','2021-03-14 19:15:51.829562',1,3,3),(4,'가족들과 너무나도 편하게 잘 쉬다 왔습니다.','https://images.unsplash.com/photo-1587614381634-068e97d007ad?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1950&q=80',5.00,5.00,5.00,4.00,4.80,'2021-03-14 19:15:51.834998','2021-03-14 19:15:51.835018',1,4,4),(5,'사장님께서 신경을 많이 써주셔서 괜시리 미안한 마음까지 들 정도에요. ^^ 다음 제주도 여행 여기로.','https://images.unsplash.com/photo-1552130632-a5f068fed735?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=975&q=80',3.00,3.00,2.00,5.00,3.30,'2021-03-14 19:15:51.842035','2021-03-14 19:15:51.842057',1,5,5),(6,'갑자기 결정한 제주행에 큰 기대없이 예약한 숙소였어요~ 너무 좋았습니다.','https://images.unsplash.com/photo-1590073242678-70ee3fc28e8e?ixid=MXwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1908&q=80',2.00,2.00,3.00,4.00,2.80,'2021-03-14 19:15:51.847322','2021-03-14 19:15:51.847343',1,6,6),(7,' 너무 만족스러운 숙소 덕에 시작부터 행복한 여행이었습니다. ','https://images.unsplash.com/photo-1566073771259-6a8506099945?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1950&q=80',5.00,4.00,3.00,2.00,3.50,'2021-03-14 19:15:51.853066','2021-03-14 19:15:51.853114',1,7,7),(8,'환하고 깨끗하고 따뜻한 방에, 너른 정원에 귤밭까지..........','https://images.unsplash.com/photo-1590074072786-a66914d668f1?ixid=MXwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1934&q=80',5.00,5.00,3.00,2.00,3.80,'2021-03-14 19:15:51.861874','2021-03-14 19:15:51.861924',1,8,1),(9,'깨끗하고 친절하시고 굴도 딸수있어서 좋았어요.','https://images.unsplash.com/photo-1455587734955-081b22074882?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1920&q=80',3.00,3.00,4.00,5.00,3.80,'2021-03-14 19:15:51.867519','2021-03-14 19:15:51.867539',1,9,2),(10,'가족단위로 가기 매우 적당한듯해요.','',2.00,2.00,1.00,5.00,2.50,'2021-03-14 19:15:51.873131','2021-03-14 19:15:51.873195',1,10,3),(11,'편하게 잘 쉬었습니다 .','',2.00,2.00,3.00,3.00,2.50,'2021-03-14 19:15:51.878555','2021-03-14 19:15:51.878574',1,11,4),(12,'주인분 친절하고 집도 깨끗하니 너무 좋았어요!','',3.00,3.00,3.00,5.00,3.50,'2021-03-14 19:15:51.885814','2021-03-14 19:15:51.885835',2,12,5),(13,'일단 들어가자마자 너무 따뜻했고, 주인아저씨도 너무 친절하셨습니다.','',5.00,5.00,5.00,5.00,5.00,'2021-03-14 19:15:51.890642','2021-03-14 19:15:51.890669',2,13,6),(14,'마지막 가는길에 귤까지 따서 챙겨주시고 너무 좋았습니다! 다음에도 꼭 가겠습니다','',4.00,4.00,4.00,5.00,4.30,'2021-03-14 19:15:51.896342','2021-03-14 19:15:51.896362',2,14,7),(15,'첫인상이 너무너무 좋았던 숙소에요~','',2.00,3.00,3.00,3.00,2.80,'2021-03-14 19:15:51.901932','2021-03-14 19:15:51.901953',3,15,1),(16,' 7개월 아기와 함께 편하게 쉴수 있는 숙소 찾던중 패밀리침대에 깨끗해보이는 내부와 넓은 잔디밭 그리고 넘 예쁜 귤밭까지 너무 마음에 들었는데, 역시나 실제로 보니 더 마음에 들었어요~','',4.00,4.00,4.00,4.00,4.00,'2021-03-14 19:15:51.908069','2021-03-14 19:15:51.908089',3,16,2),(17,'욕실이며 방이며 침구며 다 너무 깨끗하고 뽀송했어요^^ 다음번에 또 오고 싶어요~','',2.00,2.00,2.00,3.00,2.30,'2021-03-14 19:15:51.912301','2021-03-14 19:15:51.912321',3,17,3),(18,'부모님께서 숙소에 예민하신편인데 너무 깔끔하고 깨끗하고 좋아하셨어요 ~~~','',4.00,4.00,3.00,3.00,3.50,'2021-03-14 19:15:51.917824','2021-03-14 19:15:51.917870',3,18,4),(19,'바람많이 불고 춥운 집이었어요.','',1.00,1.00,1.00,2.00,1.30,'2021-03-14 19:15:51.922821','2021-03-14 19:15:51.922840',3,19,5),(20,'귤나무가 많아서 그냥 잘라서 먹기도 하고 맛도 좋았고 또 주인분들도 정말 친절하시고,,,, ','',2.00,2.00,2.00,3.00,2.30,'2021-03-14 19:15:51.928923','2021-03-14 19:15:51.928943',3,20,6),(21,'주위에 엄청 자랑했습니다 완전 추천해요 !! ','',2.00,4.00,4.00,5.00,3.80,'2021-03-14 19:15:51.934513','2021-03-14 19:15:51.934532',3,21,7),(22,'들어가는데 방이 너무 깨끗해서 사용하기 아까울 정도 였어요. ','',2.00,2.00,2.00,3.00,1.80,'2021-03-14 19:15:51.938660','2021-03-14 19:15:51.938685',3,22,1),(23,'진짜 좋아요. 가격대비 시설 너무 좋고 주인분들 최고에요. ','',3.00,3.00,3.00,3.00,3.00,'2021-03-14 19:15:51.943466','2021-03-14 19:15:51.943523',3,23,2),(24,'스몰웨딩도 되고 깨끗하고 마당도 엄청 넓고 ㅠㅠ 최고숙소','',2.00,2.00,4.00,2.00,2.50,'2021-03-14 19:15:51.950670','2021-03-14 19:15:51.950720',3,24,3),(25,'복 곱빼기 받으시고 행복하세요^^','',1.00,2.00,3.00,4.00,2.50,'2021-03-14 19:15:51.955817','2021-03-14 19:15:51.955839',3,25,4),(26,' 리조트는 진정한 힐링이 가능합니다','',1.00,1.00,2.00,2.00,1.50,'2021-03-14 19:15:51.959783','2021-03-14 19:15:51.959803',3,26,5),(27,'혼자 쉬러 왔는데. 비채캠프온것같이  힐링하고 갑니다. 모든게 완벽합니다. 참나를 찾을수있는.','',4.00,4.00,4.00,4.00,4.00,'2021-03-14 19:15:51.966294','2021-03-14 19:15:51.966326',3,27,6),(28,'혼자 여행이었는데 최적의 선택이었어요^^','',5.00,5.00,5.00,5.00,5.00,'2021-03-14 19:15:51.971821','2021-03-14 19:15:51.971840',3,28,7),(29,'조용하고 깨끗했어요','',3.00,3.00,4.00,4.00,3.50,'2021-03-14 19:15:51.976509','2021-03-14 19:15:51.976529',3,29,1),(30,'바로 앞 바다를 바라볼수 있어서 그점 또한 좋았어요......','',4.00,4.00,5.00,5.00,4.50,'2021-03-14 19:15:51.980767','2021-03-14 19:15:51.980787',3,30,2),(31,'들어가자마자 직원분이 너무 친절하게 맞이해주셔서 기분이 좋더라구요','',1.00,1.00,2.00,2.00,1.50,'2021-03-14 19:15:51.986220','2021-03-14 19:15:51.986239',3,31,3),(32,'바다 바로옆에 위치해있어 침대에 누워 바다를 볼 수 있어 좋았습니다......','',2.00,2.00,3.00,3.00,2.50,'2021-03-14 19:15:51.990076','2021-03-14 19:15:51.990096',4,32,4),(33,'힐링을 위한 최적의 숙소입니다. 명상 프로그램도 새로워서 좋았고 조식도 맛있었어요.','',1.00,1.00,2.00,3.00,1.75,'2021-03-14 19:15:51.994964','2021-03-14 19:15:51.994987',4,33,5),(34,'쉼이라는 것이 무엇인지 알려주는 숙소에요.','',2.00,2.00,3.00,4.00,2.75,'2021-03-14 19:15:51.999046','2021-03-14 19:15:51.999065',4,34,6),(35,'방에 누워 경치보고 다도하고 책 읽고 차분해지는 시간이였습니다.','',4.00,4.00,5.00,3.00,4.00,'2021-03-14 19:15:52.004116','2021-03-14 19:15:52.004172',4,35,7),(36,'너무 좋은 시간이었습니다.','',3.00,3.00,4.00,4.00,3.50,'2021-03-14 19:15:52.009399','2021-03-14 19:15:52.009418',4,36,1),(37,'정말 최고였습니다. ','',5.00,5.00,4.00,4.00,4.50,'2021-03-14 19:15:52.013523','2021-03-14 19:15:52.013544',4,37,2),(38,'쉼을 위한 공간이라는 것이 너무나도 잘 느껴지는 곳이였어요. ','',3.00,3.00,2.00,2.00,2.50,'2021-03-14 19:15:52.020068','2021-03-14 19:15:52.020089',4,38,3),(39,'아침 조식 생각하면 전혀 숙소 가격이 아깝지가 않네요!','',1.00,1.00,2.00,2.00,1.50,'2021-03-14 19:15:52.025697','2021-03-14 19:15:52.025717',5,39,4),(40,'만족스러웠어요','',3.00,3.00,4.00,4.00,3.50,'2021-03-14 19:15:52.029117','2021-03-14 19:15:52.029137',5,40,5),(41,'뭐가 문제인지 모르겠지만 자는동안 코가 많이 막히고 간지러웠어요 먼지가 많은 느낌입니다.','',5.00,5.00,1.00,1.00,3.00,'2021-03-14 19:15:52.033850','2021-03-14 19:15:52.033870',5,41,6),(42,'아주 만족스러웠습니다.','',3.00,3.00,3.00,4.00,3.30,'2021-03-14 19:15:52.038877','2021-03-14 19:15:52.038896',6,42,7),(43,'숙소에서 쉬는 것만으로도 충분했던 여행입니다.','',3.00,3.00,5.00,5.00,4.00,'2021-03-14 19:15:52.043472','2021-03-14 19:15:52.043520',7,43,1),(44,'문이 열려있어서 체크인시간에 맞춰서 객실 안내받구 바로 들어가시면 되구 화장실 마저 따뜻해서 너무너무 좋았어요 ㅠㅠ돌담뷰까지 최고..크','',4.00,5.00,4.00,1.00,3.50,'2021-03-14 19:15:52.048625','2021-03-14 19:15:52.048643',7,44,2),(45,'감성적인 숙소에서 너무 좋은 시간 보냈습니다!','',5.00,5.00,5.00,4.00,4.80,'2021-03-14 19:15:52.052743','2021-03-14 19:15:52.052762',7,45,3),(46,'숙소가 정말 예쁘고 깔끔해요! 청결 상태나 룸 컨디션도 정말 좋고, 숙소 내부의 작은 창들, 시멘트 바닥의 조약돌 꽃 같은 작은 디테일에도 신경쓰신게 보였어요! ','',3.00,3.00,2.00,5.00,3.30,'2021-03-14 19:15:52.056610','2021-03-14 19:15:52.056631',8,46,4),(47,'주인 분께서 애정을 가지고 운영하시는 느낌이라 저도 기분 좋게 잘 쉬다 올 수 있었습니다:)......','',2.00,2.00,3.00,4.00,2.80,'2021-03-14 19:15:52.061200','2021-03-14 19:15:52.061223',8,47,5),(48,'주차가 약간 불편해요. ','',5.00,4.00,3.00,2.00,3.50,'2021-03-14 19:15:52.066498','2021-03-14 19:15:52.066524',8,48,6),(49,'옥상에서는 한라산이 보입니다. 2층 공용공간 편의시설 괜찮아요. ','',5.00,5.00,3.00,2.00,3.80,'2021-03-14 19:15:52.070625','2021-03-14 19:15:52.070644',8,49,7),(50,'혼자여행할때 딱 좋은 숙소네요','',3.00,3.00,4.00,5.00,3.80,'2021-03-14 19:15:52.074647','2021-03-14 19:15:52.074667',8,50,1),(51,'넘 좋았어요','',2.00,2.00,1.00,5.00,2.50,'2021-03-14 19:15:52.079542','2021-03-14 19:15:52.079563',8,51,2),(52,'비행기 시간이 애매해서 제주시내에 하루 묵게되었는데, 세상 힙한 숙소더라구요.','',2.00,2.00,3.00,3.00,2.50,'2021-03-14 19:15:52.083682','2021-03-14 19:15:52.083701',9,52,3),(53,'방이 굉장히 넓어서 편하게 쉬다 왔습니다:)','',3.00,3.00,3.00,5.00,3.50,'2021-03-14 19:15:52.088879','2021-03-14 19:15:52.088899',10,53,4),(54,'특히 1층에 있는 멜맥집은 저녁시간에 혼자 돌아다니기가 조금 애매했는데 그 수요를 충족시켜줄 수 있었어요. ......','',5.00,5.00,5.00,5.00,5.00,'2021-03-14 19:15:52.092585','2021-03-14 19:15:52.092603',10,54,5),(55,'가성비 최고라고 생각합니다.','',4.00,4.00,4.00,5.00,4.30,'2021-03-14 19:15:52.096493','2021-03-14 19:15:52.096514',10,55,6),(56,'가격대비 방도 생각보다 크고 좋았습니다. 무엇보다도 직원분들이 친절하시고 재밌어요. ','',2.00,3.00,3.00,3.00,2.80,'2021-03-14 19:15:52.102376','2021-03-14 19:15:52.102396',10,56,7),(57,'숙소 깨끗하고 넓고 컨디션이 넘 좋았어요. 화장실도 넓고 침대도 크고 깔끔했어요! 특히 바로 앞에 산지천이 있고 동문시장도 걸어서 5분정도 거리에 있어서 여행 끝나고 동네 산책하는 기분으로 산책도 하고~','',4.00,4.00,4.00,4.00,4.00,'2021-03-14 19:15:52.106497','2021-03-14 19:15:52.106519',10,57,1),(58,'혼자 여행을 다녀왔는데 되게 만족스러웠어요 .','',2.00,2.00,2.00,3.00,2.30,'2021-03-14 19:15:52.112085','2021-03-14 19:15:52.112104',10,58,2),(59,'밤에 야경도 예쁘고 위치 선정도 좋았어요.','',4.00,4.00,3.00,3.00,3.50,'2021-03-14 19:15:52.117340','2021-03-14 19:15:52.117361',10,59,3),(60,'다음에 또 여행 하게 된다면 다시 올 의향 있습니다.....','',1.00,1.00,1.00,2.00,1.30,'2021-03-14 19:15:52.122096','2021-03-14 19:15:52.122115',11,60,4),(61,'모든게 만족스러웠습니다','',2.00,2.00,2.00,3.00,2.30,'2021-03-14 19:15:52.128256','2021-03-14 19:15:52.128315',11,61,5),(62,'외진 곳에 있어서 뚜벅이들에겐 이동이 쉽지 않은 곳이었는데요. 대신 친절하신 사장님이 샌딩도 해주시고, 많이 배려해주셔서 편하게 쉬다 왔어요. ','',2.00,4.00,4.00,5.00,3.80,'2021-03-14 19:15:52.133027','2021-03-14 19:15:52.133052',11,62,6),(63,' 한적한만큼 제대로 힐링할 수 있었고, 외풍도 없고 온돌식 난방이라 굉장히 따뜻했어요! 주변에 김녕미로공원과 비자림이 있어서 관광도 했어요~','',2.00,2.00,2.00,3.00,1.80,'2021-03-14 19:15:52.136971','2021-03-14 19:15:52.136990',12,63,7),(64,'아이들과 2박3일 여행 너무즐거웠어요','',3.00,3.00,3.00,3.00,3.00,'2021-03-14 19:15:52.141994','2021-03-14 19:15:52.142022',12,64,1),(65,'사장님도 친절하고  참 즐거운  시간이었네요~','',2.00,2.00,4.00,2.00,2.50,'2021-03-14 19:15:52.145873','2021-03-14 19:15:52.145899',12,65,2),(66,'2월에 한번 방문후 너무 맘에들어 한번 더 방문했습니다.','',1.00,2.00,3.00,4.00,2.50,'2021-03-14 19:15:52.150910','2021-03-14 19:15:52.150946',12,66,3),(67,'룸 컨디션도 좋았고 에어컨 잘 나오고 아주 쾌적했습니다. ','',1.00,1.00,2.00,2.00,1.50,'2021-03-14 19:15:52.155115','2021-03-14 19:15:52.155133',12,67,4),(68,'다좋은데 방 바닥만 따뜻해지는건 어쩔수없었어요','',4.00,4.00,4.00,4.00,4.00,'2021-03-14 19:15:52.158683','2021-03-14 19:15:52.158702',12,68,5),(69,'좋아요 접근성은 떨어지지만 아주 깔끔','',5.00,5.00,5.00,5.00,5.00,'2021-03-14 19:15:52.163380','2021-03-14 19:15:52.163399',12,69,6),(70,'거미가있었고 날파리가 침대위에기어다니고.. 청결면은 조금 부족햇던거같아요..','',3.00,3.00,4.00,4.00,3.50,'2021-03-14 19:15:52.167606','2021-03-14 19:15:52.167628',12,70,7),(71,'입구를 찾기가 조금 힘들어요ㅎㅎ 그래도 주위 경관은 이뻐요ㅎ','',4.00,4.00,5.00,5.00,4.50,'2021-03-14 19:15:52.172964','2021-03-14 19:15:52.172983',12,71,1),(72,'깔끔하고 깨끗해서 너무 좋았어요!','',1.00,1.00,2.00,2.00,1.50,'2021-03-14 19:15:52.177027','2021-03-14 19:15:52.177046',13,72,2),(73,'토요일 주말인데 외딴곳에 있어서 그런지 손님이 저희밖에 없는것 같더라구요.','',2.00,2.00,3.00,3.00,2.50,'2021-03-14 19:15:52.182401','2021-03-14 19:15:52.182421',13,73,3),(74,'좋고 친절합니당','',1.00,1.00,2.00,3.00,1.75,'2021-03-14 19:15:52.187083','2021-03-14 19:15:52.187104',13,74,4),(75,'급하게 당일날 예약해서 갔는데, 살짝 외진거 빼고는 좋습니다. ㅎ','',2.00,2.00,3.00,4.00,2.75,'2021-03-14 19:15:52.191930','2021-03-14 19:15:52.191949',13,75,5),(76,'빈티지한 감성과 사장님이 너무 마음에 듭니다.','',4.00,4.00,5.00,3.00,4.00,'2021-03-14 19:15:52.195497','2021-03-14 19:15:52.195514',13,76,6),(77,'시설대비 가격도 너무 좋고 특히 프리존 시설이용이 자유로워 너무 좋았습니다.','',3.00,3.00,4.00,4.00,3.50,'2021-03-14 19:15:52.200272','2021-03-14 19:15:52.200291',13,77,7),(78,'잊지못할 재미난 추억 남기고 편히쉬다 갑니다!','',5.00,5.00,4.00,4.00,4.50,'2021-03-14 19:15:52.205176','2021-03-14 19:15:52.205197',13,78,1),(79,'화장실 냄새쓰 ㅠ','',3.00,3.00,2.00,2.00,2.50,'2021-03-14 19:15:52.209271','2021-03-14 19:15:52.209290',13,79,2),(80,'시설도 좋고 사장님도 좋으셔서 덕분에 편하게 놀다갑니다 감사합니다 ^^','',1.00,1.00,2.00,2.00,1.50,'2021-03-14 19:15:52.214372','2021-03-14 19:15:52.214394',13,80,3),(81,'시설도 좋고 특히 아침조식도주시고 사장님도 친절하십니다!! 다만 숙소내부에 머리카락이 있고 몇가지 부분이 청결하지 못한부분이.있었지만!! 좋았습니다ㅎㅎㅎ!!','',3.00,3.00,4.00,4.00,3.50,'2021-03-14 19:15:52.218984','2021-03-14 19:15:52.219003',13,81,4),(82,'주인 아저씨 친절하시고 저녁에 비취는 불빛들과 틀어주신 노래가 너무 좋았어요~ 마침 바람도 적당히 불어줘서 좋은 시간보냈네요','',5.00,5.00,1.00,1.00,3.00,'2021-03-14 19:15:52.225507','2021-03-14 19:15:52.225538',14,82,5),(83,'되게 좋았습니당 최구:-₩','',3.00,3.00,3.00,4.00,3.30,'2021-03-14 19:15:52.229874','2021-03-14 19:15:52.229895',14,83,6),(84,'시설도 나름 깨끗하고 사장님이 친절하셨습니다. ','',3.00,3.00,5.00,5.00,4.00,'2021-03-14 19:15:52.235347','2021-03-14 19:15:52.235370',14,84,7),(85,'시설 깔끔하고 좋았어요! 사장님도 친절하고 시설도 좋았습니당','',4.00,5.00,4.00,1.00,3.50,'2021-03-14 19:15:52.239627','2021-03-14 19:15:52.239648',14,85,1),(86,'펜션자체는 엄청예뻐요~ 다만 관광지라든가 편의점 마트같은곳이 근처에 없다는게 엄청 큰 흠인것 같아요. 차없으면 안잡으시는게 좋을것 같아요','',5.00,5.00,5.00,4.00,4.80,'2021-03-14 19:15:52.244319','2021-03-14 19:15:52.244340',14,86,2),(87,'잘쉬고 잘놀다 갑니다.','',3.00,3.00,2.00,5.00,3.30,'2021-03-14 19:15:52.248731','2021-03-14 19:15:52.248751',14,87,3),(88,'다음에 제주에 다시오면 꼭 다시 들릴께요ㅎ','',2.00,2.00,3.00,4.00,2.80,'2021-03-14 19:15:52.254241','2021-03-14 19:15:52.254261',14,88,4),(89,'너무너무 잘 놀다갑니다!','',5.00,4.00,3.00,2.00,3.50,'2021-03-14 19:15:52.258314','2021-03-14 19:15:52.258334',14,89,5),(90,'사장님도 친절하시고 뷰 시설 다 너무 이쁘고 좋아요','',5.00,5.00,3.00,2.00,3.80,'2021-03-14 19:15:52.262383','2021-03-14 19:15:52.262402',14,90,6),(91,'정말 신경 많이쓰고 관리하신게 눈에보여요','',3.00,3.00,4.00,5.00,3.80,'2021-03-14 19:15:52.269585','2021-03-14 19:15:52.269605',14,91,7),(92,'사장님께서 친절하셨어요.','',2.00,2.00,1.00,5.00,2.50,'2021-03-14 19:15:52.275622','2021-03-14 19:15:52.275642',15,92,1),(93,'제주도 여행중 묵은 좋은 숙소입니다','',2.00,2.00,3.00,3.00,2.50,'2021-03-14 19:15:52.280020','2021-03-14 19:15:52.280042',15,93,2),(94,'조용히 시간보내기좋은곳 가족단위 ㅊㅊ','',3.00,3.00,3.00,5.00,3.50,'2021-03-14 19:15:52.285630','2021-03-14 19:15:52.285650',15,94,3),(95,'사장님이 너무 좋으시구 연인이나 친구분들 놀기도 좋은거같아요 다시오겠습니다','',5.00,5.00,5.00,5.00,5.00,'2021-03-14 19:15:52.290878','2021-03-14 19:15:52.290898',15,95,4),(96,'친절하시고 펜션이 이뻐요 밤에도 이뿌고','',4.00,4.00,4.00,5.00,4.30,'2021-03-14 19:15:52.296789','2021-03-14 19:15:52.296811',15,96,5),(97,'깨끗하고 인테리어 너무 예쁜숙소이예요','',2.00,3.00,3.00,3.00,2.80,'2021-03-14 19:15:52.302463','2021-03-14 19:15:52.302482',15,97,6),(98,'해수욕장도 가깝고..전기차 충전소도 가깝고...싼가격에 조식까지 좋았습니다','',4.00,4.00,4.00,4.00,4.00,'2021-03-14 19:15:52.307320','2021-03-14 19:15:52.307407',15,98,7),(99,'일상으로 와서 진짜 이 펜션이 가장 기억이 남았습니다ㅠㅠㅠ ','',2.00,2.00,2.00,3.00,2.30,'2021-03-14 19:15:52.312660','2021-03-14 19:15:52.312683',15,99,1),(100,'다음에 동부쪽 놀면 무조건 다시 방문하고 싶을 정도입니다!!','',4.00,4.00,3.00,3.00,3.50,'2021-03-14 19:15:52.318805','2021-03-14 19:15:52.318826',16,100,2),(101,'다같이 어울리기 좋은 프리한 펜션 !','',1.00,1.00,1.00,2.00,1.30,'2021-03-14 19:15:52.324187','2021-03-14 19:15:52.324208',16,101,3),(102,'나쁘지 않았는데요 우선 화장실에서 하수구냄새가 너무 올라와요 ','',2.00,2.00,2.00,3.00,2.30,'2021-03-14 19:15:52.329799','2021-03-14 19:15:52.329822',16,102,4),(103,'일단 사장님이 너무 좋으세요 ㅠㅠ','',2.00,4.00,4.00,5.00,3.80,'2021-03-14 19:15:52.334403','2021-03-14 19:15:52.334424',16,103,5),(104,'신규 펜션이라서 그런지 깔끔하고 좋았는데 여름이거 나무가 많아서 그런지 벌레들이 숙소 내부에는 없지만 밖에 종류별로 많아요....ㅎ ','',2.00,2.00,2.00,3.00,1.80,'2021-03-14 19:15:52.340663','2021-03-14 19:15:52.340683',16,104,6),(105,'숙박 2일전 급하게 2연박 예약하고 갔는데 너무 좋았어여~','',3.00,3.00,3.00,3.00,3.00,'2021-03-14 19:15:52.345598','2021-03-14 19:15:52.345618',16,105,7),(106,'야간에 도착했는데 너무 이뻐서 아이들이 2일째에는 외출 안하고 하루종일 숙소에서 물놀이만 하고 싶다고해서 재미있게 놀았어여~ ','',2.00,2.00,4.00,2.00,2.50,'2021-03-14 19:15:52.351986','2021-03-14 19:15:52.352007',16,106,1),(107,'세상 친절하신 사장님 덕에 편히 쉬다 갑니다!!','',1.00,2.00,3.00,4.00,2.50,'2021-03-14 19:15:52.357239','2021-03-14 19:15:52.357259',17,107,2),(108,'후기에 사장님 친절하셔서 좋다고 했는데 인정이요!','',1.00,1.00,2.00,2.00,1.50,'2021-03-14 19:15:52.363717','2021-03-14 19:15:52.363741',17,108,3),(109,'넘 좋았어요 농구도 하고 커피숍도 있어서 잘쉬었다 왔네요 ','',4.00,4.00,4.00,4.00,4.00,'2021-03-14 19:15:52.369118','2021-03-14 19:15:52.369138',17,109,4),(110,'신기한것도많고 사장님친절해요','',5.00,5.00,5.00,5.00,5.00,'2021-03-14 19:15:52.375037','2021-03-14 19:15:52.375058',17,110,5),(111,'아침에 일어나면 침대에 누워서 창문으로 성산일출봉을 볼 수 있어요! 성산일출봉 오른쪽으로 보이는 일출이 진짜 예뻤어요 근디 오션뷰로 예약해야 볼 수 있어요!','',3.00,3.00,4.00,4.00,3.50,'2021-03-14 19:15:52.379575','2021-03-14 19:15:52.379600',17,111,6),(112,'시설이너무허름하다 분명 오션뷰인데 바다안보임','',4.00,4.00,5.00,5.00,4.50,'2021-03-14 19:15:52.386359','2021-03-14 19:15:52.386379',17,112,7),(113,'Goood','',1.00,1.00,2.00,2.00,1.50,'2021-03-14 19:15:52.391335','2021-03-14 19:15:52.391355',18,113,1),(114,'샤워기 수압이 조금 약한것 말고는 가성비 진짜최고 재방문의사 100%','',2.00,2.00,3.00,3.00,2.50,'2021-03-14 19:15:52.397085','2021-03-14 19:15:52.397106',18,114,2),(115,'친절하고 좋았습니다 매번 제주도 갈 때마다 들러요^^','',1.00,1.00,2.00,3.00,1.75,'2021-03-14 19:15:52.401645','2021-03-14 19:15:52.401666',18,115,3),(116,'방이 너무 더러웠으며 이전 투숙객이 버리고 간 쓰레기도 치우지 않으셔서(그 분이 신발장? 옷장?에 숨겨두시긴 했지만) 직원을 불러서 치워야했음ㅠㅠ','',2.00,2.00,3.00,4.00,2.75,'2021-03-14 19:15:52.407468','2021-03-14 19:15:52.407488',19,116,4),(117,'뷰 최고, 접근성 최고!','',4.00,4.00,5.00,3.00,4.00,'2021-03-14 19:15:52.412421','2021-03-14 19:15:52.412441',19,117,5),(118,'넓어서 쓰기 좋았어요','',3.00,3.00,4.00,4.00,3.50,'2021-03-14 19:15:52.418470','2021-03-14 19:15:52.418492',19,118,6),(119,'관리가 잘..;;;;','',5.00,5.00,4.00,4.00,4.50,'2021-03-14 19:15:52.423825','2021-03-14 19:15:52.423848',19,119,7),(120,'깨끗하고 뷰도 좋아요 추천합니다!!!','',3.00,3.00,2.00,2.00,2.50,'2021-03-14 19:15:52.429690','2021-03-14 19:15:52.429712',19,120,1),(121,'좋은데 침실 화장실 넘 가까워용 ㅜ','',1.00,1.00,2.00,2.00,1.50,'2021-03-14 19:15:52.435663','2021-03-14 19:15:52.435684',19,121,2),(122,'그럭저럭 괜찮았음','',3.00,3.00,4.00,4.00,3.50,'2021-03-14 19:15:52.441172','2021-03-14 19:15:52.441194',20,122,3),(123,'잘 쉬다갑니다','',5.00,5.00,1.00,1.00,3.00,'2021-03-14 19:15:52.445609','2021-03-14 19:15:52.445628',20,123,4),(124,'편하게 쉬다가 갑니다.','',2.00,2.00,3.00,4.00,2.75,'2021-03-14 19:15:52.451848','2021-03-14 19:15:52.451868',20,124,5),(125,'뷰가좋으나 소음이있어요','',4.00,4.00,5.00,3.00,4.00,'2021-03-14 19:15:52.457156','2021-03-14 19:15:52.457177',21,125,6),(126,'가격도 저렴하고 룸컨디션도 좋았어요~','',3.00,3.00,4.00,4.00,3.50,'2021-03-14 19:15:52.463746','2021-03-14 19:15:52.463766',21,126,7),(127,'시설이 가격에 비해 너무 괜찮았어요! ','',5.00,5.00,4.00,4.00,4.50,'2021-03-14 19:15:52.469665','2021-03-14 19:15:52.469708',21,127,1),(128,'조만간 또 제주도 올 예정인데 여기로 예약하겠습니당 ','',3.00,3.00,2.00,2.00,2.50,'2021-03-14 19:15:52.474655','2021-03-14 19:15:52.474676',21,128,2),(129,'조금 전 입실했는데 가성이 좋네요~','',1.00,1.00,2.00,2.00,1.50,'2021-03-14 19:15:52.479769','2021-03-14 19:15:52.479804',22,129,3),(130,'비행기 결항으로  급히 숙소를 찾는데 공항과의 거리도 좋네요.','',3.00,3.00,4.00,4.00,3.50,'2021-03-14 19:15:52.485879','2021-03-14 19:15:52.485901',22,130,4),(131,'내부도 깔끔하고 화장실도 깨끗하고 티비 다시보기가 되어서 너무 좋았네요! ','',5.00,5.00,1.00,1.00,3.00,'2021-03-14 19:15:52.490541','2021-03-14 19:15:52.490561',22,131,5),(132,'가성비 정말 좋았어요!^^','',2.00,3.00,3.00,3.00,2.80,'2021-03-14 19:15:52.496258','2021-03-14 19:15:52.496281',22,132,6),(133,'방도깨끗하고 사장님도 친절하세요. ','',4.00,4.00,4.00,4.00,4.00,'2021-03-14 19:15:52.502055','2021-03-14 19:15:52.502076',22,133,7);
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rooms` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(300) COLLATE utf8mb4_general_ci NOT NULL,
  `price` decimal(30,2) NOT NULL,
  `maximum_capacity` int NOT NULL,
  `basic_capacity` int NOT NULL,
  `extra_price` decimal(30,2) NOT NULL,
  `accommodation_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rooms_accommodation_id_f61591ba_fk_accommodations_id` (`accommodation_id`),
  CONSTRAINT `rooms_accommodation_id_f61591ba_fk_accommodations_id` FOREIGN KEY (`accommodation_id`) REFERENCES `accommodations` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms`
--

LOCK TABLES `rooms` WRITE;
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
INSERT INTO `rooms` VALUES (1,'스탠다드 더블룸',100237.00,2,2,0.00,1),(2,'스탠다드 트윈룸',108900.00,2,2,0.00,1),(3,'패밀리 스위트룸',222000.00,4,4,0.00,1),(4,'패밀리 온돌',227000.00,4,4,0.00,1),(5,'스탠다드 더블룸',50359.00,2,2,0.00,5),(6,'스탠다드 트윈룸',50359.00,2,2,0.00,5),(7,'스탠다드 트윈룸',198000.00,2,2,0.00,6),(8,'스탠다드 트윈룸',19800.00,2,2,0.00,6),(9,'패밀리 스위트룸',198000.00,4,4,0.00,6),(10,'디럭스 트윈룸',337500.00,2,2,0.00,7),(11,'스탠다드 싱글룸',221000.00,1,1,0.00,7),(12,'디럭스 싱글룸',98000.00,1,1,0.00,8),(13,'디럭스 싱글룸',112000.00,1,1,0.00,8),(14,'디럭스 트윈룸',136000.00,2,2,0.00,11),(15,'디럭스 더블룸',144000.00,2,2,0.00,16),(16,'패밀리 스위트룸',243000.00,4,4,0.00,11),(17,'패밀리 스위트룸',221000.00,4,4,0.00,16),(18,'스탠다드 더블룸',152000.00,2,2,0.00,16),(19,'스탠다드 트윈룸',110000.00,2,2,0.00,16),(20,'패밀리 스위트룸',179000.00,4,4,0.00,9),(21,'패밀리 스위트룸',180000.00,4,4,0.00,15),(22,'패밀리 스위트룸',219000.00,4,4,0.00,15),(23,'스탠다드 더블룸',142000.00,2,2,0.00,9),(24,'스탠다드 더블룸',138000.00,2,2,0.00,17),(25,'스탠다드 더블룸',129000.00,2,2,0.00,17),(26,'스탠다드 트윈룸',112400.00,2,2,0.00,17),(27,'스탠다드 트윈룸',170000.00,2,2,0.00,9),(28,'기본형',78000.00,3,2,0.00,2),(29,'고급형',99000.00,3,2,0.00,2),(30,'디럭스 스파A',56000.00,3,2,0.00,20),(31,'디럭스 스파B',63000.00,3,2,0.00,20),(32,'Room 1',45000.00,3,2,0.00,20),(33,'Room 2',45000.00,3,2,0.00,20),(34,'커플 A',109000.00,2,2,0.00,21),(35,'커플 B',102000.00,2,2,0.00,21),(36,'커플 C',105000.00,2,2,0.00,21),(37,'화목한 가족룸',142000.00,4,4,0.00,22),(38,'신나는 친구룸',109000.00,4,2,0.00,22),(39,'재밌는 키즈룸',112000.00,4,4,0.00,22),(40,'패밀리룸 1',120000.00,6,4,0.00,22),(41,'패밀리룸 2',120000.00,5,4,0.00,21),(42,'스튜디오 1',89000.00,3,2,0.00,3),(43,'스튜디오 2',89000.00,3,2,0.00,3),(44,'소통방',78000.00,3,2,0.00,4),(45,'개발방',78000.00,3,2,0.00,4),(46,'놀이방',65000.00,2,2,0.00,12),(47,'담소방',89000.00,4,4,0.00,12),(48,'백엔드방',119000.00,6,4,0.00,18),(49,'프론트방',112000.00,6,4,0.00,18),(50,'행운',116000.00,2,2,0.00,18),(51,'행복',109000.00,2,2,0.00,18),(52,'애월',88000.00,2,2,0.00,10),(53,'세월',77000.00,2,2,0.00,10),(54,'돌담',76000.00,4,2,0.00,13),(55,'한라',77000.00,4,2,0.00,13),(56,'감귤',89000.00,4,2,0.00,13),(57,'제주동쪽',110000.00,3,2,0.00,14),(58,'제주서쪽',130000.00,5,2,0.00,14),(59,'감성07',109000.00,3,2,0.00,19),(60,'감성09',109000.00,3,2,0.00,19),(61,'플레카 A',120000.00,3,2,0.00,10),(62,'플레카 B',120000.00,4,2,0.00,10),(63,'플레카 C',120000.00,4,2,0.00,10),(64,'소담 a',103000.00,3,2,0.00,13),(65,'도담 b',103000.00,3,2,0.00,13);
/*!40000 ALTER TABLE `rooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rooms_options`
--

DROP TABLE IF EXISTS `rooms_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rooms_options` (
  `id` int NOT NULL AUTO_INCREMENT,
  `quantity` int NOT NULL,
  `option_id` int NOT NULL,
  `room_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rooms_options_option_id_51006d69_fk_options_id` (`option_id`),
  KEY `rooms_options_room_id_4df40764_fk_rooms_id` (`room_id`),
  CONSTRAINT `rooms_options_option_id_51006d69_fk_options_id` FOREIGN KEY (`option_id`) REFERENCES `options` (`id`),
  CONSTRAINT `rooms_options_room_id_4df40764_fk_rooms_id` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=544 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms_options`
--

LOCK TABLES `rooms_options` WRITE;
/*!40000 ALTER TABLE `rooms_options` DISABLE KEYS */;
INSERT INTO `rooms_options` VALUES (1,1,29,1),(2,1,24,1),(3,1,17,1),(4,1,14,1),(5,1,16,1),(6,1,10,1),(7,1,5,1),(8,1,15,1),(9,1,6,1),(10,1,29,2),(11,1,24,2),(12,1,17,2),(13,1,14,2),(14,1,16,2),(15,1,8,2),(16,1,11,2),(17,1,1,2),(18,1,29,3),(19,1,24,3),(20,1,17,3),(21,1,14,3),(22,1,16,3),(23,1,10,3),(24,1,5,3),(25,1,6,3),(26,1,7,3),(27,2,29,4),(28,1,24,4),(29,1,17,4),(30,1,14,4),(31,1,16,4),(32,1,1,4),(33,1,11,4),(34,1,10,4),(35,1,5,4),(36,2,29,5),(37,1,24,5),(38,1,17,5),(39,1,14,5),(40,1,16,5),(41,1,15,5),(42,1,6,5),(43,1,7,5),(44,1,8,5),(45,1,29,6),(46,1,24,6),(47,1,17,6),(48,1,14,6),(49,1,16,6),(50,1,11,6),(51,1,1,6),(52,1,10,6),(53,1,5,6),(54,1,15,6),(55,1,29,7),(56,1,24,7),(57,1,17,7),(58,1,14,7),(59,1,16,7),(60,1,6,7),(61,1,7,7),(62,1,8,7),(63,1,11,7),(64,1,1,7),(65,1,29,8),(66,1,24,8),(67,1,17,8),(68,1,14,8),(69,1,16,8),(70,1,10,8),(71,1,5,8),(72,1,15,8),(73,1,6,8),(74,1,29,9),(75,1,24,9),(76,1,17,9),(77,1,14,9),(78,1,16,9),(79,1,7,9),(80,1,8,9),(81,1,11,9),(82,1,1,9),(83,1,10,9),(84,1,5,9),(85,2,29,10),(86,1,24,10),(87,1,17,10),(88,1,14,10),(89,1,16,10),(90,1,15,10),(91,1,6,10),(92,1,7,10),(93,1,8,10),(94,1,11,10),(95,1,29,11),(96,1,24,11),(97,1,17,11),(98,1,14,11),(99,1,16,11),(100,1,1,11),(101,1,10,11),(102,1,5,11),(103,1,15,11),(104,1,29,12),(105,1,24,12),(106,1,17,12),(107,1,14,12),(108,1,16,12),(109,1,6,12),(110,1,7,12),(111,1,8,12),(112,1,11,12),(113,1,29,13),(114,1,24,13),(115,1,17,13),(116,1,14,13),(117,1,16,13),(118,1,1,13),(119,1,10,13),(120,1,5,13),(121,1,15,13),(122,1,29,14),(123,1,24,14),(124,1,17,14),(125,1,14,14),(126,1,16,14),(127,1,6,14),(128,1,7,14),(129,1,8,14),(130,1,11,14),(131,1,29,15),(132,1,24,15),(133,1,17,15),(134,1,14,15),(135,1,16,15),(136,1,1,15),(137,1,10,15),(138,1,5,15),(139,1,15,15),(140,1,28,16),(141,1,24,16),(142,1,17,16),(143,1,14,16),(144,1,16,16),(145,1,6,16),(146,1,7,16),(147,1,8,16),(148,2,29,17),(149,1,24,17),(150,1,17,17),(151,1,14,17),(152,1,16,17),(153,1,10,17),(154,1,5,17),(155,1,15,17),(156,2,29,18),(157,1,24,18),(158,1,17,18),(159,1,14,18),(160,1,16,18),(161,1,6,18),(162,1,7,18),(163,1,8,18),(164,1,11,18),(165,1,28,19),(166,1,24,19),(167,1,17,19),(168,1,14,19),(169,1,16,19),(170,1,1,19),(171,1,10,19),(172,1,5,19),(173,1,15,19),(174,1,28,20),(175,1,24,20),(176,1,17,20),(177,1,14,20),(178,1,16,20),(179,1,11,20),(180,1,1,20),(181,1,10,20),(182,1,5,20),(183,2,29,21),(184,1,24,21),(185,1,17,21),(186,1,14,21),(187,1,16,21),(188,1,15,21),(189,1,6,21),(190,1,7,21),(191,2,29,22),(192,1,24,22),(193,1,17,22),(194,1,14,22),(195,1,16,22),(196,1,8,22),(197,1,11,22),(198,1,1,22),(199,1,10,22),(200,2,29,23),(201,1,24,23),(202,1,17,23),(203,1,14,23),(204,1,16,23),(205,1,5,23),(206,1,15,23),(207,1,6,23),(208,1,7,23),(209,1,28,24),(210,1,24,24),(211,1,17,24),(212,1,14,24),(213,1,16,24),(214,1,8,24),(215,1,11,24),(216,1,1,24),(217,1,10,24),(218,1,28,25),(219,1,24,25),(220,1,17,25),(221,1,14,25),(222,1,16,25),(223,1,5,25),(224,1,15,25),(225,1,6,25),(226,1,29,26),(227,1,24,26),(228,1,17,26),(229,1,14,26),(230,1,16,26),(231,1,7,26),(232,1,8,26),(233,1,29,27),(234,1,24,27),(235,1,17,27),(236,1,14,27),(237,1,16,27),(238,1,11,27),(239,1,1,27),(240,1,10,27),(241,1,29,28),(242,1,24,28),(243,1,17,28),(244,1,14,28),(245,1,16,28),(246,1,7,28),(247,1,8,28),(248,1,11,28),(249,1,29,29),(250,1,24,29),(251,1,17,29),(252,1,14,29),(253,1,16,29),(254,1,10,29),(255,1,5,29),(256,1,15,29),(257,1,6,29),(258,1,29,30),(259,1,24,30),(260,1,17,30),(261,1,14,30),(262,1,16,30),(263,1,1,30),(264,1,10,30),(265,1,5,30),(266,1,15,30),(267,1,6,30),(268,1,29,31),(269,1,24,31),(270,1,17,31),(271,1,14,31),(272,1,16,31),(273,1,7,31),(274,1,8,31),(275,1,11,31),(276,1,1,31),(277,1,29,32),(278,1,24,32),(279,1,17,32),(280,1,14,32),(281,1,16,32),(282,1,10,32),(283,1,5,32),(284,1,15,32),(285,1,6,32),(286,1,29,33),(287,1,24,33),(288,1,17,33),(289,1,14,33),(290,1,16,33),(291,1,7,33),(292,1,8,33),(293,1,11,33),(294,1,1,33),(295,1,29,34),(296,1,24,34),(297,1,17,34),(298,1,14,34),(299,1,16,34),(300,1,10,34),(301,1,5,34),(302,1,15,34),(303,1,6,34),(304,1,29,35),(305,1,24,35),(306,1,17,35),(307,1,14,35),(308,1,16,35),(309,1,7,35),(310,1,8,35),(311,1,11,35),(312,1,1,35),(313,1,29,36),(314,1,24,36),(315,1,17,36),(316,1,14,36),(317,1,16,36),(318,1,10,36),(319,1,5,36),(320,1,15,36),(321,1,29,37),(322,1,24,37),(323,1,17,37),(324,1,14,37),(325,1,16,37),(326,1,6,37),(327,1,7,37),(328,2,29,38),(329,1,24,38),(330,1,17,38),(331,1,14,38),(332,1,16,38),(333,1,11,38),(334,1,1,38),(335,1,10,38),(336,1,29,39),(337,1,24,39),(338,1,17,39),(339,1,14,39),(340,1,16,39),(341,1,5,39),(342,1,15,39),(343,1,6,39),(344,1,7,39),(345,1,29,40),(346,1,24,40),(347,1,17,40),(348,1,14,40),(349,1,16,40),(350,1,11,40),(351,1,1,40),(352,1,10,40),(353,1,5,40),(354,2,29,41),(355,1,24,41),(356,1,17,41),(357,1,14,41),(358,1,16,41),(359,1,15,41),(360,1,6,41),(361,1,7,41),(362,1,8,41),(363,2,29,42),(364,1,24,42),(365,1,17,42),(366,1,14,42),(367,1,16,42),(368,1,1,42),(369,1,29,43),(370,1,24,43),(371,1,17,43),(372,1,14,43),(373,1,16,43),(374,1,10,43),(375,1,5,43),(376,1,15,43),(377,1,29,44),(378,1,24,44),(379,1,17,44),(380,1,14,44),(381,1,16,44),(382,1,6,44),(383,1,7,44),(384,1,8,44),(385,1,28,45),(386,1,24,45),(387,1,17,45),(388,1,14,45),(389,1,16,45),(390,1,11,45),(391,1,1,45),(392,1,28,46),(393,1,24,46),(394,1,17,46),(395,1,14,46),(396,1,16,46),(397,1,10,46),(398,1,5,46),(399,1,15,46),(400,1,28,47),(401,1,24,47),(402,1,17,47),(403,1,14,47),(404,1,16,47),(405,1,10,47),(406,1,5,47),(407,1,15,47),(408,1,29,48),(409,1,24,48),(410,1,17,48),(411,1,14,48),(412,1,16,48),(413,1,6,48),(414,1,7,48),(415,1,8,48),(416,1,28,49),(417,1,24,49),(418,1,17,49),(419,1,14,49),(420,1,16,49),(421,1,15,49),(422,1,6,49),(423,1,7,49),(424,1,8,49),(425,1,29,50),(426,1,24,50),(427,1,17,50),(428,1,14,50),(429,1,16,50),(430,1,11,50),(431,1,1,50),(432,1,10,50),(433,1,5,50),(434,1,15,50),(435,1,6,50),(436,1,28,51),(437,1,24,51),(438,1,17,51),(439,1,14,51),(440,1,16,51),(441,1,7,51),(442,1,8,51),(443,1,11,51),(444,1,29,52),(445,1,24,52),(446,1,17,52),(447,1,14,52),(448,1,16,52),(449,1,1,52),(450,1,10,52),(451,1,5,52),(452,1,28,53),(453,1,24,53),(454,1,17,53),(455,1,14,53),(456,1,16,53),(457,1,15,53),(458,1,6,53),(459,1,7,53),(460,1,29,54),(461,1,24,54),(462,1,17,54),(463,1,14,54),(464,1,16,54),(465,1,8,54),(466,1,11,54),(467,1,1,54),(468,1,28,55),(469,1,24,55),(470,1,17,55),(471,1,14,55),(472,1,16,55),(473,1,10,55),(474,1,5,55),(475,1,15,55),(476,1,29,56),(477,1,24,56),(478,1,17,56),(479,1,14,56),(480,1,16,56),(481,1,6,56),(482,1,7,56),(483,1,29,57),(484,1,24,57),(485,1,17,57),(486,1,14,57),(487,1,16,57),(488,1,11,57),(489,1,1,57),(490,1,10,57),(491,1,29,58),(492,1,24,58),(493,1,17,58),(494,1,14,58),(495,1,16,58),(496,1,5,58),(497,1,15,58),(498,1,6,58),(499,1,29,59),(500,1,24,59),(501,1,17,59),(502,1,14,59),(503,1,16,59),(504,1,6,59),(505,1,7,59),(506,1,8,59),(507,1,29,60),(508,1,24,60),(509,1,17,60),(510,1,14,60),(511,1,16,60),(512,1,11,60),(513,1,1,60),(514,1,10,60),(515,1,29,61),(516,1,24,61),(517,1,17,61),(518,1,14,61),(519,1,16,61),(520,1,5,61),(521,1,15,61),(522,1,6,61),(523,1,29,62),(524,1,24,62),(525,1,17,62),(526,1,14,62),(527,1,16,62),(528,1,7,62),(529,1,8,62),(530,1,28,63),(531,1,24,63),(532,1,17,63),(533,1,14,63),(534,1,16,63),(535,1,11,63),(536,1,1,63),(537,1,29,64),(538,1,24,64),(539,1,17,64),(540,1,14,64),(541,1,16,64),(542,1,10,64),(543,1,5,64);
/*!40000 ALTER TABLE `rooms_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unavailable_dates`
--

DROP TABLE IF EXISTS `unavailable_dates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `unavailable_dates` (
  `id` int NOT NULL AUTO_INCREMENT,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `room_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `unavailable_dates_room_id_cd709947_fk_rooms_id` (`room_id`),
  CONSTRAINT `unavailable_dates_room_id_cd709947_fk_rooms_id` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unavailable_dates`
--

LOCK TABLES `unavailable_dates` WRITE;
/*!40000 ALTER TABLE `unavailable_dates` DISABLE KEYS */;
INSERT INTO `unavailable_dates` VALUES (1,'2021-02-01','2021-02-03',2),(2,'2021-02-02','2021-02-10',3),(3,'2021-02-14','2021-02-18',4),(4,'2021-02-09','2021-02-13',1),(5,'2021-02-03','2021-02-10',2),(6,'2021-02-12','2021-02-14',3),(7,'2021-02-16','2021-02-19',3),(8,'2021-02-20','2021-02-27',4),(9,'2021-02-15','2021-02-19',1),(10,'2021-02-13','2021-02-21',2),(11,'2021-02-20','2021-02-25',3),(12,'2021-02-01','2021-02-03',28),(13,'2021-02-03','2021-02-10',28),(14,'2021-02-16','2021-02-19',29),(15,'2021-02-01','2021-02-03',42),(16,'2021-02-01','2021-02-03',43),(17,'2021-02-03','2021-02-10',42),(18,'2021-02-13','2021-02-21',42),(19,'2021-02-22','2021-02-23',42),(20,'2021-02-23','2021-02-24',42),(21,'2021-02-03','2021-02-05',43),(22,'2021-02-05','2021-02-06',43),(23,'2021-02-06','2021-02-07',43),(24,'2021-02-07','2021-02-09',43),(25,'2021-02-10','2021-02-12',43),(26,'2021-02-14','2021-02-15',43),(27,'2021-02-16','2021-02-18',43),(28,'2021-02-19','2021-02-21',43),(29,'2021-02-23','2021-02-26',43),(30,'2021-02-24','2021-02-26',42),(31,'2021-02-26','2021-02-27',42),(32,'2021-02-02','2021-02-10',44),(33,'2021-02-12','2021-02-14',44),(34,'2021-02-03','2021-02-10',45),(35,'2021-02-16','2021-02-19',44),(36,'2021-02-22','2021-02-25',45),(37,'2021-02-20','2021-02-25',44),(38,'2021-02-26','2021-02-27',45),(39,'2021-02-02','2021-02-10',5),(40,'2021-02-13','2021-02-21',6),(41,'2021-02-26','2021-02-27',7),(42,'2021-02-20','2021-02-25',8),(43,'2021-02-01','2021-02-03',10),(44,'2021-02-01','2021-02-03',11),(45,'2021-02-03','2021-02-10',11),(46,'2021-02-02','2021-02-10',12),(47,'2021-02-12','2021-02-14',12),(48,'2021-02-13','2021-02-21',13),(49,'2021-02-16','2021-02-19',12),(50,'2021-02-26','2021-02-27',13),(51,'2021-02-20','2021-02-25',12),(52,'2021-02-03','2021-02-10',20),(53,'2021-02-12','2021-02-14',52),(54,'2021-02-02','2021-02-10',53),(55,'2021-02-03','2021-02-10',61),(56,'2021-02-12','2021-02-14',53),(57,'2021-02-03','2021-02-10',62),(58,'2021-02-20','2021-02-25',52),(59,'2021-02-13','2021-02-21',63),(60,'2021-02-13','2021-02-21',14),(61,'2021-02-16','2021-02-19',16),(62,'2021-02-26','2021-02-27',14),(63,'2021-02-02','2021-02-04',46),(64,'2021-02-06','2021-02-07',46),(65,'2021-02-10','2021-02-12',46),(66,'2021-02-01','2021-02-03',47),(67,'2021-02-04','2021-02-06',47),(68,'2021-02-08','2021-02-10',47),(69,'2021-02-12','2021-02-14',47),(70,'2021-02-14','2021-02-15',47),(71,'2021-02-16','2021-02-17',47),(72,'2021-02-18','2021-02-20',54),(73,'2021-02-03','2021-02-05',55),(74,'2021-02-17','2021-02-19',64),(75,'2021-02-04','2021-02-06',56),(76,'2021-02-15','2021-02-18',65),(77,'2021-02-06','2021-02-09',55),(78,'2021-02-21','2021-02-22',54),(79,'2021-02-23','2021-02-25',54),(80,'2021-02-26','2021-02-28',54),(81,'2021-02-09','2021-02-11',56),(82,'2021-02-03','2021-02-05',57),(83,'2021-02-05','2021-02-06',58),(84,'2021-02-07','2021-02-09',58),(85,'2021-02-10','2021-02-13',58),(86,'2021-02-07','2021-02-09',57),(87,'2021-02-09','2021-02-11',57),(88,'2021-02-13','2021-02-14',57),(89,'2021-02-15','2021-02-17',57),(90,'2021-02-19','2021-02-22',57),(91,'2021-02-14','2021-02-16',58),(92,'2021-02-10','2021-02-12',21),(93,'2021-02-02','2021-02-10',22),(94,'2021-02-12','2021-02-14',22),(95,'2021-02-16','2021-02-19',22),(96,'2021-02-01','2021-02-03',21),(97,'2021-02-03','2021-02-10',21),(98,'2021-02-13','2021-02-21',21),(99,'2021-02-20','2021-02-25',22),(100,'2021-02-02','2021-02-10',18),(101,'2021-02-01','2021-02-03',15),(102,'2021-02-12','2021-02-14',17),(103,'2021-02-20','2021-02-25',18),(104,'2021-02-20','2021-02-25',19),(105,'2021-02-03','2021-02-10',15),(106,'2021-02-13','2021-02-21',15),(107,'2021-02-01','2021-02-03',25),(108,'2021-02-03','2021-02-10',26),(109,'2021-02-13','2021-02-21',25),(110,'2021-02-12','2021-02-14',24),(111,'2021-02-13','2021-02-21',26),(112,'2021-02-20','2021-02-25',24),(113,'2021-02-02','2021-02-10',48),(114,'2021-02-12','2021-02-14',49),(115,'2021-02-01','2021-02-03',50),(116,'2021-02-01','2021-02-03',59),(117,'2021-02-03','2021-02-10',59),(118,'2021-02-12','2021-02-14',60),(119,'2021-02-16','2021-02-19',60),(120,'2021-02-20','2021-02-25',60),(121,'2021-02-13','2021-02-21',59),(122,'2021-02-02','2021-02-10',30),(123,'2021-02-12','2021-02-14',31),(124,'2021-02-16','2021-02-19',32),(125,'2021-02-02','2021-02-10',34),(126,'2021-02-01','2021-02-03',41),(127,'2021-02-03','2021-02-10',36),(128,'2021-02-13','2021-02-21',35),(129,'2021-02-22','2021-02-25',37),(130,'2021-02-26','2021-02-27',38),(131,'2021-02-13','2021-02-21',39),(132,'2021-02-01','2021-02-03',40),(133,'2021-02-22','2021-02-25',39),(134,'2021-03-10','2021-03-14',2),(135,'2021-03-09','2021-03-15',3),(136,'2021-03-14','2021-03-16',29),(137,'2021-03-14','2021-03-16',42),(138,'2021-03-15','2021-03-16',43),(139,'2021-03-16','2021-03-17',42),(140,'2021-03-15','2021-03-19',45),(141,'2021-03-18','2021-03-21',5),(142,'2021-03-10','2021-03-12',15),(143,'2021-03-12','2021-03-13',15),(144,'2021-03-10','2021-03-12',25),(145,'2021-03-12','2021-03-13',26),(146,'2021-03-14','2021-03-16',22),(147,'2021-03-16','2021-03-17',22),(148,'2021-03-14','2021-03-16',57),(149,'2021-03-11','2021-03-13',58),(150,'2021-03-10','2021-03-13',47),(151,'2021-03-13','2021-03-14',47),(152,'2021-03-17','2021-03-19',52),(153,'2021-03-16','2021-03-18',53);
/*!40000 ALTER TABLE `unavailable_dates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nickname` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `image_url` varchar(4000) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `refund_account_id` int DEFAULT NULL,
  `kakao_id` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `users_refund_account_id_467a87e3_fk_refund_accounts_id` (`refund_account_id`),
  CONSTRAINT `users_refund_account_id_467a87e3_fk_refund_accounts_id` FOREIGN KEY (`refund_account_id`) REFERENCES `refund_accounts` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'user01','user01@ourrealtrip.com','2021-03-14 19:15:48.238334',NULL,NULL,'123456'),(2,'user02','user02@ourrealtrip.com','2021-03-14 19:15:48.244707',NULL,NULL,'234567'),(3,'user03','user03@ourrealtrip.com','2021-03-14 19:15:48.246220',NULL,NULL,'345678'),(4,'user04','user04@ourrealtrip.com','2021-03-14 19:15:48.247673',NULL,NULL,'456789'),(5,'user05','user05@ourrealtrip.com','2021-03-14 19:15:48.249032',NULL,NULL,'567890'),(6,'user06','user06@ourrealtrip.com','2021-03-14 19:15:48.250584',NULL,NULL,'654321'),(7,'user07','user07@ourrealtrip.com','2021-03-14 19:15:48.252680',NULL,NULL,'765432');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-17 18:00:54
