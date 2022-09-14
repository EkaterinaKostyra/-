-- MySQL dump 10.13  Distrib 8.0.27, for Linux (x86_64)
--
-- Host: 176.117.195.94    Database: fitness_club
-- ------------------------------------------------------
-- Server version	8.0.27-0ubuntu0.20.04.1

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
  `IDclub` int NOT NULL,
  `name_` text,
  `address` text,
  `rukovoditel` text,
  `phone` text,
  PRIMARY KEY (`IDclub`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `club`
--

LOCK TABLES `club` WRITE;
/*!40000 ALTER TABLE `club` DISABLE KEYS */;
INSERT INTO `club` VALUES (1101,'Фитнес-Хаус','ул.Будапештская 8/13','Маслянкин Сергей','+79019999910'),(1102,'Скиллфит','ул.Космонавтов 45','Иванов Илья','+79019999911'),(1103,'Молния','ул.Бухаресткая 91','Кузнецов Дмитрий','+79019999913'),(1104,'Фитлэнд','ул.Белы Куна 3','Долгий Павел','+79019999915'),(1105,'Атлант','ул.Фучика 15/1','Безруков Артем','+79019999917');
/*!40000 ALTER TABLE `club` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `IDcustomer` int NOT NULL,
  `birth` date DEFAULT NULL,
  `passport` text,
  `phone` text,
  `firstname` text,
  `lastname` text,
  PRIMARY KEY (`IDcustomer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'1997-11-02','5236 989235','+79814328974','Евгения','Сидорова'),(2,'2003-07-24','5729 042928','+79024456002','Дарья','Рыбина'),(3,'2000-10-10','1901 242583','+79315567283','Иван','Козлов'),(4,'1974-01-01','8317 342784','+79129993409','Сергей','Петров'),(5,'1982-02-16','0242 433599','+78084238204','Людмила','Чумакова'),(6,'1999-09-13','5829 353024','+79118334772','Федор','Галкин'),(7,'2001-11-11','1234 545893','+79213822994','Надежда','Зинченко'),(8,'1995-03-23','9357 250200','+79314859933','Алексей','Шувалов'),(9,'1989-04-07','4284 200458','+70248574294','Дарья','Белова'),(10,'1994-12-21','3513 234513','+79024719475','Александр','Зубов');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dolzhnost`
--

DROP TABLE IF EXISTS `dolzhnost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dolzhnost` (
  `IDdolzhnost` int NOT NULL,
  `name_` text,
  PRIMARY KEY (`IDdolzhnost`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dolzhnost`
--

LOCK TABLES `dolzhnost` WRITE;
/*!40000 ALTER TABLE `dolzhnost` DISABLE KEYS */;
INSERT INTO `dolzhnost` VALUES (1,'тренер'),(2,'старший тренер'),(3,'управляющий'),(4,'бармен'),(5,'администратор'),(6,'менеджер');
/*!40000 ALTER TABLE `dolzhnost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `fitness_clubs`
--

DROP TABLE IF EXISTS `fitness_clubs`;
/*!50001 DROP VIEW IF EXISTS `fitness_clubs`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `fitness_clubs` AS SELECT 
 1 AS `IDvisit`,
 1 AS `IDservise`,
 1 AS `name_`,
 1 AS `IDcustomer`,
 1 AS `lastname`,
 1 AS `firstname`,
 1 AS `IDclub`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `number_of_cliaents`
--

DROP TABLE IF EXISTS `number_of_cliaents`;
/*!50001 DROP VIEW IF EXISTS `number_of_cliaents`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `number_of_cliaents` AS SELECT 
 1 AS `IDclub`,
 1 AS `customers_number`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `number_of_visits`
--

DROP TABLE IF EXISTS `number_of_visits`;
/*!50001 DROP VIEW IF EXISTS `number_of_visits`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `number_of_visits` AS SELECT 
 1 AS `IDcustomer`,
 1 AS `number_`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `rating`
--

DROP TABLE IF EXISTS `rating`;
/*!50001 DROP VIEW IF EXISTS `rating`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `rating` AS SELECT 
 1 AS `name_`,
 1 AS `visits_number`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `servise`
--

DROP TABLE IF EXISTS `servise`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servise` (
  `IDservise` int NOT NULL,
  `name_` text,
  `visit_price` text,
  PRIMARY KEY (`IDservise`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servise`
--

LOCK TABLES `servise` WRITE;
/*!40000 ALTER TABLE `servise` DISABLE KEYS */;
INSERT INTO `servise` VALUES (1,'тренажерный зал','700'),(2,'бассейн','800'),(3,'зумба','750'),(4,'бокс','650'),(5,'акваэробика','850'),(6,'пилатес','900'),(7,'йога','850'),(8,'степ','750');
/*!40000 ALTER TABLE `servise` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sotrudniki`
--

DROP TABLE IF EXISTS `sotrudniki`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sotrudniki` (
  `IDsotrudnika` int NOT NULL,
  `IDclub` int NOT NULL,
  `IDdolzhnost` int NOT NULL,
  `birth` date DEFAULT NULL,
  `passport` text,
  `phone` text,
  `address` text,
  `start_date` date DEFAULT NULL,
  `firstname` text,
  `lastname` text,
  `grad` text,
  PRIMARY KEY (`IDsotrudnika`,`IDclub`,`IDdolzhnost`),
  KEY `fr1` (`IDclub`),
  KEY `fr2` (`IDdolzhnost`),
  CONSTRAINT `fr1` FOREIGN KEY (`IDclub`) REFERENCES `club` (`IDclub`),
  CONSTRAINT `fr2` FOREIGN KEY (`IDdolzhnost`) REFERENCES `dolzhnost` (`IDdolzhnost`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sotrudniki`
--

LOCK TABLES `sotrudniki` WRITE;
/*!40000 ALTER TABLE `sotrudniki` DISABLE KEYS */;
INSERT INTO `sotrudniki` VALUES (1,1101,1,'1984-01-01','8715 673518','+79129999901','ул.Мира 11','2020-01-12','Павел','Аксаков','Высшее'),(2,1101,2,'1978-02-02','3958 599355','+79129999902','ул. Молодежная 14/2','2021-09-02','Наталья','Портонва','Среднее'),(3,1101,3,'1992-03-03','2060 405683','+79129999903','ул.Южная 55','2015-05-15','Денис','Белкин','Высшее'),(4,1101,4,'1989-04-04','1594 593405','+79129999904','ул.Ленина 23','2018-01-19','Роман','Полунов','Высшее'),(5,1101,5,'1991-05-05','2050 530455','+79129999905','ул.Лесная 94','2020-11-11','Валерий','Карпов','Среднее'),(6,1101,6,'1981-06-06','2234 634223','+79129999906','ул.Садовая 19/6','2013-04-16','Андрей','Рыбин','Среднее'),(7,1102,1,'1997-07-07','0239 496303','+79129999907','ул.Савушкина 28','2021-04-21','Ангелина','Гордеева','Высшее'),(8,1102,2,'2000-08-08','5020 504303','+79129999908','ул.Набережная 13','2019-10-10','Степан','Судорин','Высшее'),(9,1102,3,'1977-09-09','4569 243456','+79129999909','ул.Заречная 76','2017-08-09','Екатерина','Матвиенко','Высшее'),(10,1102,4,'1994-10-10','2040 593049','+79129999910','ул.Солнечная 32','2018-05-06','Мария','Судникова','Среднее'),(11,1102,5,'1989-05-19','3459 930455','+79129999911','ул.Московская 24','2018-05-24','Татьяна','Милая','Среднее'),(12,1102,6,'1989-03-14','2304 953045','+79129999912','ул.Сингапурская 45/1','2021-03-12','Людмила','Арсентьева','Среднее'),(13,1103,1,'1987-10-13','0209 245900','+79129999913','ул.Длинная44','2021-01-05','Светлана','Губина','Среднее'),(14,1103,2,'1998-12-01','2395 049533','+79129999914','ул.Красивая 90','2021-05-13','Наталья','Коткина','Высшее'),(15,1103,3,'1994-11-30','2094 059659','+79129999915','ул.Столярова 63/2','2020-03-15','Ольга','Маслина','Высшее'),(16,1103,4,'1995-07-11','2983 029352','+79129999916','ул.Добрая 33','2016-03-26','Мария','Верстова','Среднее'),(17,1103,5,'1999-11-16','8293 920359','+79129999917','ул.Темная 21','2021-01-28','Варвара','Гурина','Высшее'),(18,1103,6,'2000-03-27','2938 203585','+79129999918','ул.Косых 13/3','2020-06-29','Полина','Денисова','Среднее'),(19,1104,1,'1992-02-02','2832 209459','+79129999919','ул.Петровская 97','2020-12-01','Сергей','Канев','Среднее'),(20,1104,2,'1993-09-03','8929 283959','+79129999920','ул.Рубенштейна 15','2019-09-12','Денис','Малых','Среднее'),(21,1104,3,'1989-10-28','2983 239511','+79129999921','ул.Пионерская 49','2017-03-24','Максим','Смирнов','Высшее'),(22,1104,4,'1988-08-12','1235 203952','+79129999922','ул.Возейская 20','2014-10-10','Дмитрий','Морозов','Высшее'),(23,1104,5,'2000-10-16','2341 124904','+79129999923','ул.Черных 38','2018-06-06','Артем','Васильев','Среднее'),(24,1104,6,'1992-01-02','1294 203955','+79129999924','ул.Новая 77/4','2021-05-14','Марина','Грибова','Высшее'),(25,1105,1,'1993-05-30','0234 235502','+79129999925','ул.Солянка 10','2021-04-17','Екатерина','Павлова','Выслшее'),(26,1105,2,'1990-07-13','9394 994949','+79129999926','ул.Егерская 40','2021-11-03','Александр','Макаров','Среднее'),(27,1105,3,'1999-04-04','0987 754312','+79129999927','ул.Елецкая 22','2021-02-21','Степан','Новиков','Высшее'),(28,1105,4,'2000-02-21','9999 234999','+79129999928','ул.Подмосковная 29/2','2017-09-19','Татьяна','Ларина','Высшее'),(29,1105,5,'1989-03-10','3294 340999 ','+79129999929','ул.Полимерная 73','2019-03-13','Мария','Михайлова','Среднее'),(30,1105,6,'1996-06-26','4234 943027','+79129999930','ул.Юных 81','2021-10-19','Егор','Соколов','Среднее');
/*!40000 ALTER TABLE `sotrudniki` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status_`
--

DROP TABLE IF EXISTS `status_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status_` (
  `IDstatus_` int NOT NULL,
  `IDcustomer` int NOT NULL,
  `status_name` text,
  `status_level` int DEFAULT NULL,
  PRIMARY KEY (`IDstatus_`,`IDcustomer`),
  KEY `fr8` (`IDcustomer`),
  CONSTRAINT `fr8` FOREIGN KEY (`IDcustomer`) REFERENCES `customer` (`IDcustomer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status_`
--

LOCK TABLES `status_` WRITE;
/*!40000 ALTER TABLE `status_` DISABLE KEYS */;
INSERT INTO `status_` VALUES (201,1,'бронза',2),(202,2,'серебро',1),(203,3,'серебро',1),(204,4,'серебро',1),(205,5,'бронза',2),(206,6,'серебро',1),(207,7,'бронза',2),(208,8,'серебро',1),(209,9,'бронза',2),(210,10,'платина',3);
/*!40000 ALTER TABLE `status_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subs`
--

DROP TABLE IF EXISTS `subs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subs` (
  `IDsubs` int NOT NULL,
  `IDcustomer` int NOT NULL,
  `IDtype_of_subs` int NOT NULL,
  `activation_` date DEFAULT NULL,
  `expiration_` date DEFAULT NULL,
  `condition_` text,
  PRIMARY KEY (`IDsubs`,`IDcustomer`,`IDtype_of_subs`),
  KEY `fr3` (`IDcustomer`),
  KEY `fr4` (`IDtype_of_subs`),
  CONSTRAINT `fr3` FOREIGN KEY (`IDcustomer`) REFERENCES `customer` (`IDcustomer`),
  CONSTRAINT `fr4` FOREIGN KEY (`IDtype_of_subs`) REFERENCES `type_of_subs` (`IDtype_of_subs`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subs`
--

LOCK TABLES `subs` WRITE;
/*!40000 ALTER TABLE `subs` DISABLE KEYS */;
INSERT INTO `subs` VALUES (101,1,1001,'2021-12-10','2022-01-10','активен'),(102,2,1001,'2021-04-03','2022-04-03','активен'),(103,3,1002,'2020-12-30','2021-12-30','активен'),(104,4,1001,'2021-01-01','2022-01-01','активен'),(105,5,1001,'2021-03-05','2022-03-05','активен'),(106,6,1002,'2021-11-30','2021-12-30','активен'),(107,7,1002,'2021-12-03','2022-01-03','активен'),(108,8,1003,'2021-07-17','2022-07-17','активен'),(109,9,1002,'2021-11-25','2021-12-25','активен'),(110,10,1003,'2021-10-19','2022-10-19','активен');
/*!40000 ALTER TABLE `subs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `the_most_active`
--

DROP TABLE IF EXISTS `the_most_active`;
/*!50001 DROP VIEW IF EXISTS `the_most_active`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `the_most_active` AS SELECT 
 1 AS `IDcustomer`,
 1 AS `number_visits`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `type_of_subs`
--

DROP TABLE IF EXISTS `type_of_subs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `type_of_subs` (
  `IDtype_of_subs` int NOT NULL,
  `name_` text,
  `price_month` text,
  `price_year` text,
  PRIMARY KEY (`IDtype_of_subs`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type_of_subs`
--

LOCK TABLES `type_of_subs` WRITE;
/*!40000 ALTER TABLE `type_of_subs` DISABLE KEYS */;
INSERT INTO `type_of_subs` VALUES (1001,'Стандарт','2500','30000'),(1002,'Серебрянный','3500','42000'),(1003,'Золотой','5000','60000');
/*!40000 ALTER TABLE `type_of_subs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visit`
--

DROP TABLE IF EXISTS `visit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `visit` (
  `IDvisit` int NOT NULL,
  `IDservise` int NOT NULL,
  `IDsotrudnika` int NOT NULL,
  `IDcustomer` int NOT NULL,
  `date_` date DEFAULT NULL,
  `time_` time DEFAULT NULL,
  PRIMARY KEY (`IDvisit`,`IDservise`,`IDsotrudnika`,`IDcustomer`),
  KEY `fr5` (`IDcustomer`),
  KEY `fr6` (`IDsotrudnika`),
  KEY `fr7` (`IDservise`),
  CONSTRAINT `fr5` FOREIGN KEY (`IDcustomer`) REFERENCES `customer` (`IDcustomer`),
  CONSTRAINT `fr6` FOREIGN KEY (`IDsotrudnika`) REFERENCES `sotrudniki` (`IDsotrudnika`),
  CONSTRAINT `fr7` FOREIGN KEY (`IDservise`) REFERENCES `servise` (`IDservise`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visit`
--

LOCK TABLES `visit` WRITE;
/*!40000 ALTER TABLE `visit` DISABLE KEYS */;
INSERT INTO `visit` VALUES (1,1,1,1,'2021-12-11','10:00:00'),(2,2,7,2,'2021-05-15','12:00:00'),(3,1,2,3,'2021-03-14','10:00:00'),(4,3,13,4,'2021-07-07','18:30:00'),(5,1,19,10,'2021-12-11','10:00:00'),(6,2,25,6,'2021-12-02','12:00:00'),(7,1,13,8,'2021-12-11','10:00:00'),(8,2,8,10,'2021-12-02','12:00:00'),(9,1,20,9,'2021-12-11','10:00:00'),(10,3,26,10,'2021-07-07','18:30:00'),(11,4,14,10,'2021-11-11','13:45:00'),(12,2,25,9,'2021-12-02','12:00:00'),(13,2,2,8,'2021-12-02','12:00:00'),(14,2,13,3,'2021-12-02','12:00:00'),(15,5,19,6,'2021-12-18','15:15:00'),(16,5,7,10,'2021-12-07','15:15:00'),(17,5,19,4,'2021-12-07','15:15:00'),(18,3,14,3,'2021-07-07','18:30:00'),(19,5,19,2,'2021-12-07','15:15:00'),(20,2,7,1,'2021-12-18','12:00:00'),(21,3,13,1,'2021-07-07','18:30:00'),(22,5,2,3,'2021-12-07','15:15:00'),(23,8,1,2,'2021-07-12','19:00:00'),(24,7,25,4,'2021-09-23','20:00:00'),(25,3,8,5,'2021-07-07','18:30:00'),(26,7,19,6,'2021-12-21','20:00:00'),(27,6,26,1,'2021-12-28','16:30:00'),(28,3,26,8,'2021-07-07','18:30:00'),(29,4,13,8,'2021-11-11','13:45:00'),(30,6,7,10,'2021-10-19','16:30:00'),(31,6,8,3,'2021-10-19','16:30:00'),(32,8,14,4,'2021-01-01','19:00:00'),(33,8,26,5,'2021-04-18','19:00:00'),(34,7,13,6,'2021-12-28','20:00:00'),(35,7,2,3,'2021-12-28','20:00:00'),(36,5,25,8,'2021-12-07','15:15:00'),(37,3,14,9,'2021-11-26','18:30:00'),(38,7,25,10,'2021-12-28','20:00:00'),(39,8,2,10,'2021-10-28','19:00:00'),(40,6,8,10,'2021-11-19','16:30:00'),(41,6,14,2,'2021-08-24','16:30:00'),(42,7,2,3,'2021-05-18','20:00:00'),(43,7,26,5,'2021-12-28','20:00:00'),(44,3,7,4,'2021-11-26','18:30:00'),(45,5,8,6,'2021-12-14','15:15:00'),(46,6,25,3,'2021-11-19','16:30:00'),(47,6,7,2,'2021-09-19','16:30:00'),(48,6,13,8,'2021-10-19','16:30:00'),(49,6,8,10,'2021-12-19','16:30:00'),(50,6,26,2,'2021-12-03','16:30:00');
/*!40000 ALTER TABLE `visit` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `visit_AFTER_INSERT` AFTER INSERT ON `visit` FOR EACH ROW BEGIN
call fitness_club.update_status();
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `visit_AFTER_UPDATE` AFTER UPDATE ON `visit` FOR EACH ROW BEGIN
call fitness_club.update_status();
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `visit_AFTER_DELETE` AFTER DELETE ON `visit` FOR EACH ROW BEGIN
call fitness_club.update_status();
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Dumping events for database 'fitness_club'
--

--
-- Dumping routines for database 'fitness_club'
--
/*!50003 DROP PROCEDURE IF EXISTS `clients to different clubs` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `clients to different clubs`()
BEGIN
SELECT COUNT(distinct blabla.IDcustomer) FROM (
    SELECT
        IDcustomer,
        firstname,
        lastname,
        COUNT(distinct IDclub) as clubs_number
    FROM fitness_clubs
    GROUP BY IDcustomer
    ) as blabla;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `date_visit` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `date_visit`(in dstart date, in dend date)
BEGIN
select * FROM visit
where date_ between dstart and dend;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `doesn't attend` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `doesn't attend`()
BEGIN
SELECT
    subs.IDcustomer,
    customer.firstname,
    customer.lastname,
    customer.phone
FROM subs
LEFT JOIN customer ON subs.IDcustomer = customer.IDcustomer
WHERE subs.IDcustomer NOT IN
    (
    SELECT IDcustomer FROM visit
    );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `update_status` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `update_status`()
BEGIN
	declare done bool default false;
	declare per1 int;
	declare per2 int;
    declare per3 int;
    declare max_visits int;
	declare cursor1 cursor for select IDstatus_, number_of_visits.IDcustomer, number_ from number_of_visits join status_ on status_.IDcustomer=number_of_visits.IDcustomer;
	declare continue handler for not found set done=true;
	open cursor1;
    set max_visits = (select max(number_) from number_of_visits);
	my_loop: loop
	fetch cursor1 into per1, per2, per3;
	if done then leave my_loop;
	end if;
    if 0 <= per3 and per3 <= 4 then update status_ set status_name='бронза', status_level=2 where IDstatus_=per1 and IDcustomer=per2;
    elseif 5 <= per3 and per3 <= (max_visits-1) then update status_ set status_name='серебро', status_level=1 where IDstatus_=per1 and IDcustomer=per2;
    elseif per3 = max_visits then update status_ set status_name='платина', status_level=3 where IDstatus_=per1 and IDcustomer=per2;
    end if;
	end loop;
	close cursor1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `fitness_clubs`
--

/*!50001 DROP VIEW IF EXISTS `fitness_clubs`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `fitness_clubs` AS select `visit`.`IDvisit` AS `IDvisit`,`servise`.`IDservise` AS `IDservise`,`servise`.`name_` AS `name_`,`customer`.`IDcustomer` AS `IDcustomer`,`customer`.`lastname` AS `lastname`,`customer`.`firstname` AS `firstname`,`club`.`IDclub` AS `IDclub` from ((((((`visit` left join `servise` on((`visit`.`IDservise` = `servise`.`IDservise`))) left join `customer` on((`customer`.`IDcustomer` = `visit`.`IDcustomer`))) left join `subs` on((`subs`.`IDcustomer` = `customer`.`IDcustomer`))) left join `sotrudniki` on((`sotrudniki`.`IDsotrudnika` = `visit`.`IDsotrudnika`))) left join `club` on((`club`.`IDclub` = `sotrudniki`.`IDclub`))) left join `dolzhnost` on((`dolzhnost`.`IDdolzhnost` = `sotrudniki`.`IDdolzhnost`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `number_of_cliaents`
--

/*!50001 DROP VIEW IF EXISTS `number_of_cliaents`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `number_of_cliaents` AS select `fitness_clubs`.`IDclub` AS `IDclub`,count(distinct `fitness_clubs`.`IDcustomer`) AS `customers_number` from `fitness_clubs` group by `fitness_clubs`.`IDclub` order by `customers_number` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `number_of_visits`
--

/*!50001 DROP VIEW IF EXISTS `number_of_visits`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `number_of_visits` AS select `customer`.`IDcustomer` AS `IDcustomer`,count(`visit`.`IDvisit`) AS `number_` from (`customer` left join `visit` on((`visit`.`IDcustomer` = `customer`.`IDcustomer`))) group by `customer`.`IDcustomer` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `rating`
--

/*!50001 DROP VIEW IF EXISTS `rating`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `rating` AS select `fitness_clubs`.`name_` AS `name_`,count(`fitness_clubs`.`IDvisit`) AS `visits_number` from `fitness_clubs` group by `fitness_clubs`.`name_` order by `visits_number` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `the_most_active`
--

/*!50001 DROP VIEW IF EXISTS `the_most_active`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `the_most_active` AS select `fitness_clubs`.`IDcustomer` AS `IDcustomer`,count(`fitness_clubs`.`IDvisit`) AS `number_visits` from `fitness_clubs` group by `fitness_clubs`.`IDcustomer` order by `number_visits` desc limit 1 */;
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

-- Dump completed on 2021-12-29  1:30:10
