CREATE DATABASE  IF NOT EXISTS `bmx_racing` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `bmx_racing`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: bmx_racing
-- ------------------------------------------------------
-- Server version	5.7.44-log

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
-- Table structure for table `club`
--

DROP TABLE IF EXISTS `club`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `club` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `club_name` varchar(60) CHARACTER SET utf8 DEFAULT NULL,
  `city` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `club_name` (`club_name`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `club`
--

LOCK TABLES `club` WRITE;
/*!40000 ALTER TABLE `club` DISABLE KEYS */;
INSERT INTO `club` VALUES (1,'ГБУ ДО БО СШОР РУСЬ','Брянская обл.'),(2,'ГБУ ДО РМ \"СШОР по велоспорту\"','Мордовия'),(3,'СШ \"Победа\"','Московская обл.'),(4,'МБУ ДО СШ №4 г.Пензы','Пензенская обл.'),(5,'Спортивная школа гонок/SSR','Удмуртская Республика'),(6,'ГБУ ДО \"Московская академия велосипедного спорта\"','Москва'),(7,'г. Коломна АНО \"БК\"','Московская обл.'),(8,'MM RACING','Московская обл.'),(9,'МБУ ДО \"Спортивная школа №4\" МОГК','Краснодарский край'),(10,'\"СШОР №8 им. В.Соколова\"','Омская обл.'),(11,'СПб ГБПОУ \"Олимпийские надежды\"','Санкт-Петербург'),(12,NULL,'Каменск-Уральский'),(13,'ГБУ ДО МО СШОР/MM RACING','Московская обл.'),(14,'ГБУ ДО СШОР Петродворцового р-на СПб','Санкт-Петербург'),(15,'МАУДО \"СШОР\"','Каменск-Уральский'),(16,'ГБПОУ \"МССУОР №2\" Москомспорта','Москва'),(17,'ГБУ ДО МО СШОР/АНО \"БК\"','Московская обл.'),(18,'АНО В/К \"Локомотив-Пенза\"','Пензенская обл.'),(19,'МБУ ДО СШОР \"Сарапул\"','Удмуртская Республика'),(20,'ГБУ ДО МО \"СШОР по велоспорту\"','Московская обл.'),(21,'МБУДО \"СШ ТЭИС\"','Новосибирская обл.'),(22,'ГБУ ДО КК \"СШОР по велосипедному спорту\"','Краснодарский край'),(23,'СШОР \"Академия велоспорта\"','Омская обл.'),(24,'г. Иркутск ОГКУ СШОР \"Олимпиец\"','Иркутская обл.'),(25,'МБУ ДО \"СШОР №2\" Копейск','Челябинская обл.'),(26,'СПб ГБУ ДО СШ \"Локомотив\" Выборгского р-на','Санкт-Петербург'),(27,'УОР ПО-АНО В/К \"Локомотив-Пенза\"','Пензенская обл.');
/*!40000 ALTER TABLE `club` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `participants_view`
--

DROP TABLE IF EXISTS `participants_view`;
/*!50001 DROP VIEW IF EXISTS `participants_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `participants_view` AS SELECT 
 1 AS `year`,
 1 AS `sex`,
 1 AS `id`,
 1 AS `racer_number`,
 1 AS `birthday`,
 1 AS `last_name`,
 1 AS `first_name`,
 1 AS `sports_category`,
 1 AS `club_name`,
 1 AS `city`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `protocol_21_02_2025`
--

DROP TABLE IF EXISTS `protocol_21_02_2025`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `protocol_21_02_2025` (
  `run` int(11) NOT NULL,
  `racer_id` int(11) NOT NULL,
  `lane_1` int(11) NOT NULL,
  `lane_2` int(11) NOT NULL,
  `lane_3` int(11) NOT NULL,
  UNIQUE KEY `racer_id` (`racer_id`),
  UNIQUE KEY `run` (`run`,`lane_1`),
  UNIQUE KEY `run_2` (`run`,`lane_2`),
  UNIQUE KEY `run_3` (`run`,`lane_3`),
  CONSTRAINT `protocol_21_02_2025_ibfk_1` FOREIGN KEY (`racer_id`) REFERENCES `racer` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `protocol_21_02_2025`
--

LOCK TABLES `protocol_21_02_2025` WRITE;
/*!40000 ALTER TABLE `protocol_21_02_2025` DISABLE KEYS */;
INSERT INTO `protocol_21_02_2025` VALUES (1,1,2,7,4),(1,2,8,2,3),(1,3,3,5,6),(1,4,5,1,7),(1,5,4,8,2),(1,6,7,6,1),(1,7,6,3,5),(5,9,5,1,7),(3,10,4,8,2),(5,12,4,8,2),(3,13,3,5,6),(2,14,3,5,6),(2,15,2,7,4),(3,16,8,2,3),(2,17,7,6,1),(4,18,5,1,7),(3,19,5,1,7),(4,20,3,5,6),(2,21,8,2,3),(4,22,8,2,3),(5,23,8,2,3),(4,24,7,6,1),(3,25,7,6,1),(3,26,6,3,5),(2,27,4,8,2),(5,28,3,5,6),(3,29,2,7,4),(5,30,7,6,1),(4,31,6,3,5),(5,32,6,3,5),(4,33,4,8,2),(2,34,6,3,5),(2,35,5,1,7);
/*!40000 ALTER TABLE `protocol_21_02_2025` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `protocol_21_02_2025_view`
--

DROP TABLE IF EXISTS `protocol_21_02_2025_view`;
/*!50001 DROP VIEW IF EXISTS `protocol_21_02_2025_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `protocol_21_02_2025_view` AS SELECT 
 1 AS `year`,
 1 AS `run`,
 1 AS `racer_number`,
 1 AS `last_name`,
 1 AS `first_name`,
 1 AS `club_name`,
 1 AS `city`,
 1 AS `lane_1`,
 1 AS `lane_2`,
 1 AS `lane_3`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `protocol_22_02_2025`
--

DROP TABLE IF EXISTS `protocol_22_02_2025`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `protocol_22_02_2025` (
  `run` int(11) NOT NULL,
  `racer_id` int(11) NOT NULL,
  `lane_1` int(11) NOT NULL,
  `lane_2` int(11) NOT NULL,
  `lane_3` int(11) NOT NULL,
  UNIQUE KEY `racer_id` (`racer_id`),
  UNIQUE KEY `run` (`run`,`lane_1`),
  UNIQUE KEY `run_2` (`run`,`lane_2`),
  UNIQUE KEY `run_3` (`run`,`lane_3`),
  CONSTRAINT `protocol_22_02_2025_ibfk_1` FOREIGN KEY (`racer_id`) REFERENCES `racer` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `protocol_22_02_2025`
--

LOCK TABLES `protocol_22_02_2025` WRITE;
/*!40000 ALTER TABLE `protocol_22_02_2025` DISABLE KEYS */;
INSERT INTO `protocol_22_02_2025` VALUES (1,1,5,1,7),(1,2,7,6,1),(1,3,6,3,5),(1,4,4,8,2),(1,5,3,5,6),(1,6,2,7,4),(1,7,8,2,3),(3,8,2,7,4),(5,9,4,8,2),(2,10,8,2,3),(4,11,2,7,4),(5,12,5,1,7),(3,13,4,8,2),(4,14,8,2,3),(2,15,2,7,4),(3,16,3,5,6),(2,17,5,1,7),(4,18,3,5,6),(3,19,7,6,1),(2,20,7,6,1),(5,21,6,3,5),(4,22,5,1,7),(3,23,5,1,7),(3,24,6,3,5),(4,25,7,6,1),(4,26,4,8,2),(5,27,3,5,6),(2,28,6,3,5),(3,29,8,2,3),(5,31,7,6,1),(2,32,3,5,6),(2,33,4,8,2),(5,34,8,2,3),(4,35,6,3,5);
/*!40000 ALTER TABLE `protocol_22_02_2025` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `protocol_22_02_2025_view`
--

DROP TABLE IF EXISTS `protocol_22_02_2025_view`;
/*!50001 DROP VIEW IF EXISTS `protocol_22_02_2025_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `protocol_22_02_2025_view` AS SELECT 
 1 AS `year`,
 1 AS `run`,
 1 AS `racer_number`,
 1 AS `last_name`,
 1 AS `first_name`,
 1 AS `club_name`,
 1 AS `city`,
 1 AS `lane_1`,
 1 AS `lane_2`,
 1 AS `lane_3`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `race_result_21_02_2025_view`
--

DROP TABLE IF EXISTS `race_result_21_02_2025_view`;
/*!50001 DROP VIEW IF EXISTS `race_result_21_02_2025_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `race_result_21_02_2025_view` AS SELECT 
 1 AS `category`,
 1 AS `place`,
 1 AS `racer_number`,
 1 AS `birthday`,
 1 AS `last_name`,
 1 AS `first_name`,
 1 AS `sports_category`,
 1 AS `city`,
 1 AS `club_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `race_result_22_02_2025_view`
--

DROP TABLE IF EXISTS `race_result_22_02_2025_view`;
/*!50001 DROP VIEW IF EXISTS `race_result_22_02_2025_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `race_result_22_02_2025_view` AS SELECT 
 1 AS `category`,
 1 AS `place`,
 1 AS `racer_number`,
 1 AS `birthday`,
 1 AS `last_name`,
 1 AS `first_name`,
 1 AS `sports_category`,
 1 AS `city`,
 1 AS `club_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `race_results_21_02_2025`
--

DROP TABLE IF EXISTS `race_results_21_02_2025`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `race_results_21_02_2025` (
  `category` enum('1. Мальчики 2019г.р.','2. Мальчики 2018г.р.','3. Мальчики 2017г.р.','4. Девочки 2017г.р. и младше','5. Мальчики 2016г.р.','6. Мальчики 2015г.р.','7. Девочки 2015-2016г.р.','8. Девушки 11-12 лет','9. Юноши 11-12 лет') NOT NULL,
  `place` int(11) NOT NULL,
  `racer_id` int(11) NOT NULL,
  UNIQUE KEY `racer_id` (`racer_id`),
  UNIQUE KEY `category` (`category`,`place`),
  CONSTRAINT `race_results_21_02_2025_ibfk_1` FOREIGN KEY (`racer_id`) REFERENCES `racer` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `race_results_21_02_2025`
--

LOCK TABLES `race_results_21_02_2025` WRITE;
/*!40000 ALTER TABLE `race_results_21_02_2025` DISABLE KEYS */;
INSERT INTO `race_results_21_02_2025` VALUES ('1. Мальчики 2019г.р.',1,7),('1. Мальчики 2019г.р.',2,2),('1. Мальчики 2019г.р.',3,3),('1. Мальчики 2019г.р.',4,1),('1. Мальчики 2019г.р.',5,4),('1. Мальчики 2019г.р.',6,5),('1. Мальчики 2019г.р.',7,6),('2. Мальчики 2018г.р.',1,10),('2. Мальчики 2018г.р.',2,29),('2. Мальчики 2018г.р.',3,14),('2. Мальчики 2018г.р.',4,34),('2. Мальчики 2018г.р.',5,31),('2. Мальчики 2018г.р.',6,25),('2. Мальчики 2018г.р.',7,19),('2. Мальчики 2018г.р.',8,20),('2. Мальчики 2018г.р.',9,28),('2. Мальчики 2018г.р.',10,24),('2. Мальчики 2018г.р.',11,35),('2. Мальчики 2018г.р.',12,21),('2. Мальчики 2018г.р.',13,12),('2. Мальчики 2018г.р.',14,22),('2. Мальчики 2018г.р.',15,23),('2. Мальчики 2018г.р.',16,17),('2. Мальчики 2018г.р.',17,33),('2. Мальчики 2018г.р.',18,13),('2. Мальчики 2018г.р.',19,26),('2. Мальчики 2018г.р.',20,9),('2. Мальчики 2018г.р.',21,27),('2. Мальчики 2018г.р.',22,18),('2. Мальчики 2018г.р.',23,16),('2. Мальчики 2018г.р.',24,32),('2. Мальчики 2018г.р.',25,15);
/*!40000 ALTER TABLE `race_results_21_02_2025` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `race_results_22_02_2025`
--

DROP TABLE IF EXISTS `race_results_22_02_2025`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `race_results_22_02_2025` (
  `category` enum('1. Мальчики 2019г.р.','2. Мальчики 2018г.р.','3. Мальчики 2017г.р.','4. Девочки 2017г.р. и младше','5. Мальчики 2016г.р.','6. Мальчики 2015г.р.','7. Девочки 2015-2016г.р.','8. Девушки 11-12 лет','9. Юноши 11-12 лет') NOT NULL,
  `place` int(11) NOT NULL,
  `racer_id` int(11) NOT NULL,
  UNIQUE KEY `racer_id` (`racer_id`),
  UNIQUE KEY `category` (`category`,`place`),
  CONSTRAINT `race_results_22_02_2025_ibfk_1` FOREIGN KEY (`racer_id`) REFERENCES `racer` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `race_results_22_02_2025`
--

LOCK TABLES `race_results_22_02_2025` WRITE;
/*!40000 ALTER TABLE `race_results_22_02_2025` DISABLE KEYS */;
INSERT INTO `race_results_22_02_2025` VALUES ('1. Мальчики 2019г.р.',1,7),('1. Мальчики 2019г.р.',2,2),('1. Мальчики 2019г.р.',3,3),('1. Мальчики 2019г.р.',4,5),('1. Мальчики 2019г.р.',5,1),('1. Мальчики 2019г.р.',6,6),('1. Мальчики 2019г.р.',7,4),('2. Мальчики 2018г.р.',1,10),('2. Мальчики 2018г.р.',2,29),('2. Мальчики 2018г.р.',3,23),('2. Мальчики 2018г.р.',4,19),('2. Мальчики 2018г.р.',5,22),('2. Мальчики 2018г.р.',6,31),('2. Мальчики 2018г.р.',7,25),('2. Мальчики 2018г.р.',8,14),('2. Мальчики 2018г.р.',9,21),('2. Мальчики 2018г.р.',10,28),('2. Мальчики 2018г.р.',11,11),('2. Мальчики 2018г.р.',12,34),('2. Мальчики 2018г.р.',13,24),('2. Мальчики 2018г.р.',14,17),('2. Мальчики 2018г.р.',15,20),('2. Мальчики 2018г.р.',16,27),('2. Мальчики 2018г.р.',17,8),('2. Мальчики 2018г.р.',18,12),('2. Мальчики 2018г.р.',19,33),('2. Мальчики 2018г.р.',20,13),('2. Мальчики 2018г.р.',21,26),('2. Мальчики 2018г.р.',22,15),('2. Мальчики 2018г.р.',23,35),('2. Мальчики 2018г.р.',24,9),('2. Мальчики 2018г.р.',25,32),('2. Мальчики 2018г.р.',26,16),('2. Мальчики 2018г.р.',27,18);
/*!40000 ALTER TABLE `race_results_22_02_2025` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `racer`
--

DROP TABLE IF EXISTS `racer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `racer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `last_name` varchar(30) CHARACTER SET utf8 NOT NULL,
  `first_name` varchar(30) CHARACTER SET utf8 NOT NULL,
  `racer_number` int(11) DEFAULT NULL,
  `birthday` date NOT NULL,
  `sports_category` enum('б/р','3 сп.юн.р.','2 сп.юн.р.','1 сп.юн.р.','3 сп.р.','2 сп.р.','1 сп.р.','КМС','МС','МСМК') DEFAULT 'б/р',
  `club_id` int(11) DEFAULT NULL,
  `sex` enum('male','female') NOT NULL,
  PRIMARY KEY (`id`),
  KEY `club_id` (`club_id`),
  CONSTRAINT `racer_ibfk_1` FOREIGN KEY (`club_id`) REFERENCES `club` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `racer`
--

LOCK TABLES `racer` WRITE;
/*!40000 ALTER TABLE `racer` DISABLE KEYS */;
INSERT INTO `racer` VALUES (1,'Тавынин','Петр',129,'2019-02-12','б/р',1,'male'),(2,'Галкин','Михаил',20,'2019-04-29','б/р',2,'male'),(3,'Неяскин','Даниил',35,'2019-03-08','б/р',2,'male'),(4,'Колотилов','Марк',493,'2019-02-18','б/р',3,'male'),(5,'Мкртчян','Артак',11,'2019-11-02','б/р',4,'male'),(6,'Капралов','Егор',11,'2019-08-22','б/р',5,'male'),(7,'Касаткин','Роман',12,'2019-06-12','б/р',5,'male'),(8,'Бражников','Демид',87,'2018-11-15','б/р',2,'male'),(9,'Крайнов','Федор',65,'2018-02-13','б/р',2,'male'),(10,'Настюшкин','Михаил',888,'2018-10-02','б/р',2,'male'),(11,'Потапов','Евгений',80,'2018-08-10','б/р',2,'male'),(12,'Пронин','Давид',67,'2018-11-23','б/р',2,'male'),(13,'Пьянзин','Никита',97,'2018-04-16','б/р',2,'male'),(14,'Рожков','Ярослав',100,'2018-03-10','б/р',2,'male'),(15,'Романов','Михаил',15,'2018-10-03','б/р',2,'male'),(16,'Березин','Александр',889,'2018-08-09','б/р',6,'male'),(17,'Зайцев','Максим',32,'2018-09-24','б/р',6,'male'),(18,'Круглов','Константин',301,'2018-10-10','б/р',6,'male'),(19,'Ляшенко','Иван',882,'2018-07-13','б/р',6,'male'),(20,'Пухирь','Роман',502,'2018-08-12','б/р',6,'male'),(21,'Агапов','Константин',218,'2018-09-29','б/р',7,'male'),(22,'Боев','Глеб',211,'2018-12-11','б/р',7,'male'),(23,'Вдовин','Федор',128,'2018-03-21','б/р',8,'male'),(24,'Дерепа','Даниил',255,'2018-08-26','б/р',7,'male'),(25,'Егоров','Григорий',132,'2018-01-05','б/р',8,'male'),(26,'Клименко','Фёдор',452,'2018-06-22','б/р',3,'male'),(27,'Михайлов','Иван',114,'2018-03-14','б/р',8,'male'),(28,'Просветов','Кирилл',135,'2018-05-04','б/р',8,'male'),(29,'Толстых','Данила',118,'2018-02-09','б/р',8,'male'),(30,'Горлов','Никита',117,'2018-05-15','б/р',4,'male'),(31,'Ковин','Роман',31,'2018-07-09','б/р',4,'male'),(32,'Кочарян','Арен',77,'2018-12-18','б/р',4,'male'),(33,'Нестеров','Дмитрий',100,'2018-10-15','б/р',4,'male'),(34,'Зверев','Тарас',16,'2018-03-16','б/р',5,'male'),(35,'Медведев','Александр',66,'2018-10-20','б/р',5,'male');
/*!40000 ALTER TABLE `racer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `participants_view`
--

/*!50001 DROP VIEW IF EXISTS `participants_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `participants_view` AS select year(`racer`.`birthday`) AS `year`,`racer`.`sex` AS `sex`,`racer`.`id` AS `id`,`racer`.`racer_number` AS `racer_number`,`racer`.`birthday` AS `birthday`,`racer`.`last_name` AS `last_name`,`racer`.`first_name` AS `first_name`,`racer`.`sports_category` AS `sports_category`,`club`.`club_name` AS `club_name`,`club`.`city` AS `city` from (`racer` join `club` on((`racer`.`club_id` = `club`.`id`))) order by year(`racer`.`birthday`) desc,`racer`.`sex` desc,`racer`.`id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `protocol_21_02_2025_view`
--

/*!50001 DROP VIEW IF EXISTS `protocol_21_02_2025_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `protocol_21_02_2025_view` AS select year(`racer`.`birthday`) AS `year`,`protocol_21_02_2025`.`run` AS `run`,`racer`.`racer_number` AS `racer_number`,`racer`.`last_name` AS `last_name`,`racer`.`first_name` AS `first_name`,`club`.`club_name` AS `club_name`,`club`.`city` AS `city`,`protocol_21_02_2025`.`lane_1` AS `lane_1`,`protocol_21_02_2025`.`lane_2` AS `lane_2`,`protocol_21_02_2025`.`lane_3` AS `lane_3` from ((`protocol_21_02_2025` join `racer` on((`protocol_21_02_2025`.`racer_id` = `racer`.`id`))) join `club` on((`club`.`id` = `racer`.`club_id`))) order by `protocol_21_02_2025`.`run`,`racer`.`last_name`,`racer`.`first_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `protocol_22_02_2025_view`
--

/*!50001 DROP VIEW IF EXISTS `protocol_22_02_2025_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `protocol_22_02_2025_view` AS select year(`racer`.`birthday`) AS `year`,`protocol_22_02_2025`.`run` AS `run`,`racer`.`racer_number` AS `racer_number`,`racer`.`last_name` AS `last_name`,`racer`.`first_name` AS `first_name`,`club`.`club_name` AS `club_name`,`club`.`city` AS `city`,`protocol_22_02_2025`.`lane_1` AS `lane_1`,`protocol_22_02_2025`.`lane_2` AS `lane_2`,`protocol_22_02_2025`.`lane_3` AS `lane_3` from ((`protocol_22_02_2025` join `racer` on((`protocol_22_02_2025`.`racer_id` = `racer`.`id`))) join `club` on((`club`.`id` = `racer`.`club_id`))) order by `protocol_22_02_2025`.`run`,`racer`.`last_name`,`racer`.`first_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `race_result_21_02_2025_view`
--

/*!50001 DROP VIEW IF EXISTS `race_result_21_02_2025_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `race_result_21_02_2025_view` AS select `race_results_21_02_2025`.`category` AS `category`,`race_results_21_02_2025`.`place` AS `place`,`racer`.`racer_number` AS `racer_number`,`racer`.`birthday` AS `birthday`,`racer`.`last_name` AS `last_name`,`racer`.`first_name` AS `first_name`,`racer`.`sports_category` AS `sports_category`,`club`.`city` AS `city`,`club`.`club_name` AS `club_name` from ((`race_results_21_02_2025` join `racer` on((`race_results_21_02_2025`.`racer_id` = `racer`.`id`))) join `club` on((`club`.`id` = `racer`.`club_id`))) order by `race_results_21_02_2025`.`category`,`race_results_21_02_2025`.`place` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `race_result_22_02_2025_view`
--

/*!50001 DROP VIEW IF EXISTS `race_result_22_02_2025_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `race_result_22_02_2025_view` AS select `race_results_22_02_2025`.`category` AS `category`,`race_results_22_02_2025`.`place` AS `place`,`racer`.`racer_number` AS `racer_number`,`racer`.`birthday` AS `birthday`,`racer`.`last_name` AS `last_name`,`racer`.`first_name` AS `first_name`,`racer`.`sports_category` AS `sports_category`,`club`.`city` AS `city`,`club`.`club_name` AS `club_name` from ((`race_results_22_02_2025` join `racer` on((`race_results_22_02_2025`.`racer_id` = `racer`.`id`))) join `club` on((`club`.`id` = `racer`.`club_id`))) order by `race_results_22_02_2025`.`category`,`race_results_22_02_2025`.`place` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-27 23:34:52
