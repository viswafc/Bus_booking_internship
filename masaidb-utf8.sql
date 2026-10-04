-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: masaidb
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `bus`
--

DROP TABLE IF EXISTS `bus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bus` (
  `bus_id` int NOT NULL,
  `arrival_time` time(6) DEFAULT NULL,
  `availabe_seats` int DEFAULT NULL,
  `bus_name` varchar(255) DEFAULT NULL,
  `bus_type` varchar(255) DEFAULT NULL,
  `departure_time` time(6) DEFAULT NULL,
  `driver_name` varchar(255) DEFAULT NULL,
  `route_form` varchar(255) DEFAULT NULL,
  `route_to` varchar(255) DEFAULT NULL,
  `seats` int DEFAULT NULL,
  `route_route_id` int DEFAULT NULL,
  `route_from` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bus_id`),
  KEY `FK34202857f4x6hu34lxlbh7y69` (`route_route_id`),
  CONSTRAINT `FK34202857f4x6hu34lxlbh7y69` FOREIGN KEY (`route_route_id`) REFERENCES `route` (`route_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bus`
--

LOCK TABLES `bus` WRITE;
/*!40000 ALTER TABLE `bus` DISABLE KEYS */;
/*!40000 ALTER TABLE `bus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bus_seq`
--

DROP TABLE IF EXISTS `bus_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bus_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bus_seq`
--

LOCK TABLES `bus_seq` WRITE;
/*!40000 ALTER TABLE `bus_seq` DISABLE KEYS */;
INSERT INTO `bus_seq` VALUES (151);
/*!40000 ALTER TABLE `bus_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collage`
--

DROP TABLE IF EXISTS `collage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `collage` (
  `collageId` bigint NOT NULL,
  `collageAddress` varchar(255) DEFAULT NULL,
  `collageName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`collageId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collage`
--

LOCK TABLES `collage` WRITE;
/*!40000 ALTER TABLE `collage` DISABLE KEYS */;
INSERT INTO `collage` VALUES (52,'Address 1','Collage 1'),(53,'Address 2','Collage 2'),(102,'Address 1','Collage 1'),(103,'Address 2','Collage 2'),(152,'Address 1','Collage 1'),(153,'Address 2','Collage 2'),(202,'Address 1','Collage 1'),(203,'Address 2','Collage 2'),(252,'Address 1','Collage 1'),(253,'Address 2','Collage 2');
/*!40000 ALTER TABLE `collage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collage_seq`
--

DROP TABLE IF EXISTS `collage_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `collage_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collage_seq`
--

LOCK TABLES `collage_seq` WRITE;
/*!40000 ALTER TABLE `collage_seq` DISABLE KEYS */;
INSERT INTO `collage_seq` VALUES (351);
/*!40000 ALTER TABLE `collage_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `current_user_session`
--

DROP TABLE IF EXISTS `current_user_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `current_user_session` (
  `user_id` int NOT NULL,
  `local_date_time` datetime(6) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `uuid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `current_user_session`
--

LOCK TABLES `current_user_session` WRITE;
/*!40000 ALTER TABLE `current_user_session` DISABLE KEYS */;
INSERT INTO `current_user_session` VALUES (1,'2023-07-23 12:22:10.197963','admin','wt0Ob5');
/*!40000 ALTER TABLE `current_user_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `empId` int NOT NULL,
  `address` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `salary` int NOT NULL,
  `emp_id` int NOT NULL,
  `gender` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`empId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'sre','raman',22000,0,NULL);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_address`
--

DROP TABLE IF EXISTS `employee_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_address` (
  `emp_id` int NOT NULL,
  `city` varchar(255) DEFAULT NULL,
  `pincode` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_address`
--

LOCK TABLES `employee_address` WRITE;
/*!40000 ALTER TABLE `employee_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_seq`
--

DROP TABLE IF EXISTS `employee_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_seq`
--

LOCK TABLES `employee_seq` WRITE;
/*!40000 ALTER TABLE `employee_seq` DISABLE KEYS */;
INSERT INTO `employee_seq` VALUES (151);
/*!40000 ALTER TABLE `employee_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedback` (
  `feedback_id` int NOT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `driver_rating` int DEFAULT NULL,
  `feedback_date` date DEFAULT NULL,
  `overall_rating` int DEFAULT NULL,
  `service_rating` int DEFAULT NULL,
  `bus_bus_id` int DEFAULT NULL,
  `user_user_login_id` int DEFAULT NULL,
  PRIMARY KEY (`feedback_id`),
  UNIQUE KEY `UK_r88sg8b6tlok026lw3mrwt668` (`bus_bus_id`),
  UNIQUE KEY `UK_7c9bdhspllm9go6dnx9s63p9p` (`user_user_login_id`),
  CONSTRAINT `FK3cscao38988bj2d3glpvn2c0t` FOREIGN KEY (`user_user_login_id`) REFERENCES `user` (`user_login_id`),
  CONSTRAINT `FKnsyckbsa0g31fueyt4lyr7as9` FOREIGN KEY (`bus_bus_id`) REFERENCES `bus` (`bus_id`),
  CONSTRAINT `feedback_chk_1` CHECK (((`driver_rating` >= 1) and (`driver_rating` <= 10))),
  CONSTRAINT `feedback_chk_2` CHECK (((`overall_rating` >= 1) and (`overall_rating` <= 10))),
  CONSTRAINT `feedback_chk_3` CHECK (((`service_rating` >= 1) and (`service_rating` <= 10)))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback_seq`
--

DROP TABLE IF EXISTS `feedback_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedback_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback_seq`
--

LOCK TABLES `feedback_seq` WRITE;
/*!40000 ALTER TABLE `feedback_seq` DISABLE KEYS */;
INSERT INTO `feedback_seq` VALUES (1);
/*!40000 ALTER TABLE `feedback_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `player`
--

DROP TABLE IF EXISTS `player`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `player` (
  `playerId` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` int NOT NULL,
  `skill` varchar(255) DEFAULT NULL,
  `team_teamId` int DEFAULT NULL,
  PRIMARY KEY (`playerId`),
  KEY `FKpcnvwokx5gf0pi5gkg9k5ifvu` (`team_teamId`),
  CONSTRAINT `FKpcnvwokx5gf0pi5gkg9k5ifvu` FOREIGN KEY (`team_teamId`) REFERENCES `team` (`teamId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player`
--

LOCK TABLES `player` WRITE;
/*!40000 ALTER TABLE `player` DISABLE KEYS */;
INSERT INTO `player` VALUES (1,'John Doe',10000,'Batsman',NULL),(2,'John Doe',10000,'Batsman',NULL),(3,'Jane Smith',8000,'Bowler',NULL),(52,'John Doe',10000,'Batsman',NULL),(53,'Jane Smith',8000,'Bowler',NULL);
/*!40000 ALTER TABLE `player` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `player_seq`
--

DROP TABLE IF EXISTS `player_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `player_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player_seq`
--

LOCK TABLES `player_seq` WRITE;
/*!40000 ALTER TABLE `player_seq` DISABLE KEYS */;
INSERT INTO `player_seq` VALUES (151);
/*!40000 ALTER TABLE `player_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservation` (
  `reservation_id` int NOT NULL,
  `destination` varchar(255) DEFAULT NULL,
  `reservation_date` date DEFAULT NULL,
  `reservation_status` varchar(255) DEFAULT NULL,
  `reservation_time` time(6) DEFAULT NULL,
  `reservation_type` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `bus_bus_id` int DEFAULT NULL,
  PRIMARY KEY (`reservation_id`),
  UNIQUE KEY `UK_d9bxpew7nosnn0ob9a9jrwaoq` (`bus_bus_id`),
  CONSTRAINT `FK1cwae71jt1ek8y0yhcdshjuta` FOREIGN KEY (`bus_bus_id`) REFERENCES `bus` (`bus_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation`
--

LOCK TABLES `reservation` WRITE;
/*!40000 ALTER TABLE `reservation` DISABLE KEYS */;
/*!40000 ALTER TABLE `reservation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservation_seq`
--

DROP TABLE IF EXISTS `reservation_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservation_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation_seq`
--

LOCK TABLES `reservation_seq` WRITE;
/*!40000 ALTER TABLE `reservation_seq` DISABLE KEYS */;
INSERT INTO `reservation_seq` VALUES (1);
/*!40000 ALTER TABLE `reservation_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `route`
--

DROP TABLE IF EXISTS `route`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `route` (
  `route_id` int NOT NULL,
  `distance` int DEFAULT NULL,
  `route_from` varchar(255) DEFAULT NULL,
  `route_to` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`route_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `route`
--

LOCK TABLES `route` WRITE;
/*!40000 ALTER TABLE `route` DISABLE KEYS */;
INSERT INTO `route` VALUES (3,200,'delhi','goa');
/*!40000 ALTER TABLE `route` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `route_seq`
--

DROP TABLE IF EXISTS `route_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `route_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `route_seq`
--

LOCK TABLES `route_seq` WRITE;
/*!40000 ALTER TABLE `route_seq` DISABLE KEYS */;
INSERT INTO `route_seq` VALUES (101);
/*!40000 ALTER TABLE `route_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sport`
--

DROP TABLE IF EXISTS `sport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sport` (
  `sportId` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sportId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sport`
--

LOCK TABLES `sport` WRITE;
/*!40000 ALTER TABLE `sport` DISABLE KEYS */;
INSERT INTO `sport` VALUES (1,'Cricket'),(2,'Cricket'),(3,'Football'),(52,'Cricket'),(53,'Football');
/*!40000 ALTER TABLE `sport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sport_seq`
--

DROP TABLE IF EXISTS `sport_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sport_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sport_seq`
--

LOCK TABLES `sport_seq` WRITE;
/*!40000 ALTER TABLE `sport_seq` DISABLE KEYS */;
INSERT INTO `sport_seq` VALUES (151);
/*!40000 ALTER TABLE `sport_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `studentRoll` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `mobileNumber` varchar(255) DEFAULT NULL,
  `studentName` varchar(255) DEFAULT NULL,
  `collage_collageId` bigint DEFAULT NULL,
  PRIMARY KEY (`studentRoll`),
  KEY `FKl95qutgsd7j6qcubw8k83is0d` (`collage_collageId`),
  CONSTRAINT `FKl95qutgsd7j6qcubw8k83is0d` FOREIGN KEY (`collage_collageId`) REFERENCES `collage` (`collageId`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,'Email 1','Mobile 1','Student 1',52),(2,'Email 1','Mobile 1','Student 1',53),(3,'Email 2','Mobile 2','Student 2',52),(4,'Email 2','Mobile 2','Student 2',53),(5,'Email 3','Mobile 3','Student 3',52),(6,'Email 3','Mobile 3','Student 3',53),(7,'Email 4','Mobile 4','Student 4',52),(8,'Email 4','Mobile 4','Student 4',53),(9,'Email 1','Mobile 1','Student 1',102),(10,'Email 1','Mobile 1','Student 1',103),(11,'Email 2','Mobile 2','Student 2',102),(12,'Email 2','Mobile 2','Student 2',103),(13,'Email 3','Mobile 3','Student 3',102),(14,'Email 3','Mobile 3','Student 3',103),(15,'Email 4','Mobile 4','Student 4',102),(16,'Email 4','Mobile 4','Student 4',103),(17,'Email 1','Mobile 1','Student 1',152),(18,'Email 1','Mobile 1','Student 1',153),(19,'Email 2','Mobile 2','Student 2',152),(20,'Email 2','Mobile 2','Student 2',153),(21,'Email 3','Mobile 3','Student 3',152),(22,'Email 3','Mobile 3','Student 3',153),(23,'Email 4','Mobile 4','Student 4',152),(24,'Email 4','Mobile 4','Student 4',153),(25,'Email 1','Mobile 1','Student 1',202),(26,'Email 1','Mobile 1','Student 1',203),(27,'Email 2','Mobile 2','Student 2',202),(28,'Email 2','Mobile 2','Student 2',203),(29,'Email 3','Mobile 3','Student 3',202),(30,'Email 3','Mobile 3','Student 3',203),(31,'Email 4','Mobile 4','Student 4',202),(32,'Email 4','Mobile 4','Student 4',203),(33,'Email 1','Mobile 1','Student 1',252),(34,'Email 1','Mobile 1','Student 1',253),(35,'Email 2','Mobile 2','Student 2',252),(36,'Email 2','Mobile 2','Student 2',253),(37,'Email 3','Mobile 3','Student 3',252),(38,'Email 3','Mobile 3','Student 3',253),(39,'Email 4','Mobile 4','Student 4',252),(40,'Email 4','Mobile 4','Student 4',253);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_table`
--

DROP TABLE IF EXISTS `student_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_table` (
  `id` int NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `course` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `level` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_table`
--

LOCK TABLES `student_table` WRITE;
/*!40000 ALTER TABLE `student_table` DISABLE KEYS */;
INSERT INTO `student_table` VALUES (2,'sre','sb101','rs@gmail.com',6);
/*!40000 ALTER TABLE `student_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team`
--

DROP TABLE IF EXISTS `team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `team` (
  `teamId` int NOT NULL,
  `country` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`teamId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team`
--

LOCK TABLES `team` WRITE;
/*!40000 ALTER TABLE `team` DISABLE KEYS */;
INSERT INTO `team` VALUES (1,'Country A','Team A'),(2,'Country B','Team B'),(52,'Country A','Team A'),(53,'Country B','Team B');
/*!40000 ALTER TABLE `team` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team_seq`
--

DROP TABLE IF EXISTS `team_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `team_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team_seq`
--

LOCK TABLES `team_seq` WRITE;
/*!40000 ALTER TABLE `team_seq` DISABLE KEYS */;
INSERT INTO `team_seq` VALUES (151);
/*!40000 ALTER TABLE `team_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team_sport`
--

DROP TABLE IF EXISTS `team_sport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `team_sport` (
  `teams_teamId` int NOT NULL,
  `sports_sportId` int NOT NULL,
  KEY `FK7sv9tkvd8uhvp961e1913d39r` (`sports_sportId`),
  KEY `FKp0xkrr5cc2rea2lmbc2q4tvkl` (`teams_teamId`),
  CONSTRAINT `FK7sv9tkvd8uhvp961e1913d39r` FOREIGN KEY (`sports_sportId`) REFERENCES `sport` (`sportId`),
  CONSTRAINT `FKp0xkrr5cc2rea2lmbc2q4tvkl` FOREIGN KEY (`teams_teamId`) REFERENCES `team` (`teamId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team_sport`
--

LOCK TABLES `team_sport` WRITE;
/*!40000 ALTER TABLE `team_sport` DISABLE KEYS */;
/*!40000 ALTER TABLE `team_sport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_login_id` int NOT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `password` varchar(10) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `reservation_reservation_id` int DEFAULT NULL,
  PRIMARY KEY (`user_login_id`),
  UNIQUE KEY `UK_lqjrcobrh9jc8wpcar64q1bfh` (`user_name`),
  UNIQUE KEY `UK_4h7cmhnierc8odmidy9iuincc` (`reservation_reservation_id`),
  CONSTRAINT `FK2ngkxieol1mq09cdbvpum6ys8` FOREIGN KEY (`reservation_reservation_id`) REFERENCES `reservation` (`reservation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'8118282396','rs@gmail.com','raju','singh','123456','Raju',NULL),(2,'7186640138','rs@gmail.com','Ramesh','string','string','Ram',NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_seq`
--

DROP TABLE IF EXISTS `user_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_seq`
--

LOCK TABLES `user_seq` WRITE;
/*!40000 ALTER TABLE `user_seq` DISABLE KEYS */;
INSERT INTO `user_seq` VALUES (101);
/*!40000 ALTER TABLE `user_seq` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-11 17:36:14
