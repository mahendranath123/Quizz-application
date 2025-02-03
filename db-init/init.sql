CREATE DATABASE  IF NOT EXISTS `quiz` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `quiz`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: quiz
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `answers`
--

DROP TABLE IF EXISTS `answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `answers` (
  `question_id` int NOT NULL,
  `correct_option` int DEFAULT NULL,
  PRIMARY KEY (`question_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answers`
--

LOCK TABLES `answers` WRITE;
/*!40000 ALTER TABLE `answers` DISABLE KEYS */;
/*!40000 ALTER TABLE `answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `computer_questions`
--

DROP TABLE IF EXISTS `computer_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `computer_questions` (
  `question_id` int NOT NULL,
  `question` varchar(255) DEFAULT NULL,
  `opt1` varchar(255) DEFAULT NULL,
  `opt2` varchar(255) DEFAULT NULL,
  `opt3` varchar(255) DEFAULT NULL,
  `opt4` varchar(255) DEFAULT NULL,
  `correct_option` int NOT NULL,
  PRIMARY KEY (`question_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `computer_questions`
--

LOCK TABLES `computer_questions` WRITE;
/*!40000 ALTER TABLE `computer_questions` DISABLE KEYS */;
INSERT INTO `computer_questions` VALUES (1,'What does CPU stand for?','Central Processing Unit','Computer Personal Unit','Central Personal Unit','Central Process Unit',1),(2,'Which language is used for web apps?','PHP','Python','JavaScript','All of the above',4),(3,'What is the main memory of a computer called?','RAM','ROM','CPU','GPU',1),(4,'Which device is used to connect to the internet?','Router','Switch','Modem','Hub',1),(5,'What does HTML stand for?','Hyper Text Markup Language','High Text Markup Language','Hyper Tabular Markup Language','None of these',1),(6,'What is the brain of the computer?','RAM','ROM','CPU','Hard Disk',3),(7,'Which company developed the Windows operating system?','Apple','Microsoft','Google','IBM',2),(8,'What is the shortcut key to copy text in most computer systems?','Ctrl + C','Ctrl + V','Ctrl + X','Ctrl + Z',1),(9,'What is the full form of Wi-Fi?','Wireless Fidelity','Wired Fidelity','Wireless Finder','Wireless Filter',1),(10,'Which of the following is not an operating system?','Windows','Linux','Oracle','DOS',3);
/*!40000 ALTER TABLE `computer_questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `computeruser_answers`
--

DROP TABLE IF EXISTS `computeruser_answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `computeruser_answers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `question_id` int DEFAULT NULL,
  `selected_option` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `question_id` (`question_id`),
  CONSTRAINT `computeruser_answers_ibfk_1` FOREIGN KEY (`question_id`) REFERENCES `computer_questions` (`question_id`)
) ENGINE=InnoDB AUTO_INCREMENT=185 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `computeruser_answers`
--

LOCK TABLES `computeruser_answers` WRITE;
/*!40000 ALTER TABLE `computeruser_answers` DISABLE KEYS */;
INSERT INTO `computeruser_answers` VALUES (1,1,2),(2,2,2),(3,3,2),(4,4,2),(5,5,1),(6,6,1),(7,7,1),(8,8,2),(9,9,2),(10,10,1),(11,1,2),(12,2,2),(13,3,2),(14,4,2),(15,5,1),(16,6,1),(17,7,1),(18,8,2),(19,9,2),(20,10,1),(21,1,1),(22,2,1),(23,3,1),(24,4,1),(25,5,1),(26,6,1),(27,7,1),(28,8,1),(29,9,1),(30,10,1),(31,1,1),(32,2,2),(33,3,2),(34,4,2),(35,5,1),(36,6,1),(37,7,1),(38,8,2),(39,9,1),(40,10,1),(41,1,1),(42,2,1),(43,3,1),(44,4,4),(45,5,1),(46,6,3),(47,7,1),(48,8,4),(49,10,1),(50,1,1),(51,2,2),(52,4,1),(53,6,2),(54,1,1),(55,2,2),(56,3,1),(57,5,1),(58,6,4),(59,8,1),(60,10,1),(61,1,1),(62,2,1),(63,3,1),(64,5,1),(65,10,2),(66,1,1),(67,2,1),(68,3,2),(69,5,1),(70,7,2),(71,8,2),(72,10,1),(73,1,1),(74,2,1),(75,3,1),(76,4,2),(77,5,2),(78,7,1),(79,10,1),(80,1,1),(81,3,1),(82,5,1),(83,7,3),(84,1,1),(85,2,1),(86,3,1),(87,4,2),(88,5,1),(89,1,1),(90,2,1),(91,3,2),(92,4,2),(93,5,2),(94,6,2),(95,7,1),(96,8,2),(97,1,1),(98,2,1),(99,3,3),(100,5,4),(101,7,1),(102,10,2),(103,1,1),(104,2,1),(105,3,1),(106,4,2),(107,5,2),(108,7,1),(109,9,1),(110,1,1),(111,2,1),(112,3,1),(113,4,2),(114,5,2),(115,7,1),(116,9,1),(117,1,1),(118,2,1),(119,3,3),(120,9,2),(121,1,1),(122,2,1),(123,3,2),(124,4,2),(125,6,2),(126,9,2),(127,1,1),(128,2,2),(129,4,1),(130,7,1),(131,10,1),(132,1,1),(133,2,2),(134,3,2),(135,4,2),(136,6,1),(137,7,2),(138,8,3),(139,9,2),(140,1,1),(141,2,4),(142,3,1),(143,4,1),(144,6,3),(145,7,2),(146,8,1),(147,9,1),(148,10,4),(149,1,1),(150,2,4),(151,3,2),(152,4,1),(153,5,2),(154,1,1),(155,2,4),(156,3,1),(157,5,1),(158,6,1),(159,7,1),(160,9,1),(161,1,1),(162,2,1),(163,3,1),(164,4,2),(165,5,2),(166,7,1),(167,1,1),(168,2,1),(169,3,1),(170,4,2),(171,5,2),(172,7,1),(173,1,1),(174,2,2),(175,3,2),(176,6,1),(177,1,1),(178,2,1),(179,3,2),(180,4,2),(181,5,2),(182,6,1),(183,7,2),(184,8,3);
/*!40000 ALTER TABLE `computeruser_answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `finance_questions`
--

DROP TABLE IF EXISTS `finance_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `finance_questions` (
  `question_id` int NOT NULL AUTO_INCREMENT,
  `question` varchar(255) NOT NULL,
  `opt1` varchar(100) NOT NULL,
  `opt2` varchar(100) NOT NULL,
  `opt3` varchar(100) NOT NULL,
  `opt4` varchar(100) NOT NULL,
  `correct_option` int NOT NULL,
  PRIMARY KEY (`question_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `finance_questions`
--

LOCK TABLES `finance_questions` WRITE;
/*!40000 ALTER TABLE `finance_questions` DISABLE KEYS */;
INSERT INTO `finance_questions` VALUES (1,'What is the term for the difference between a company?s current assets and current liabilities?','Net Worth','Working Capital','Gross Margin','Operating Income',2),(2,'Which financial statement shows a company?s revenue and expenses?','Balance Sheet','Cash Flow Statement','Income Statement','Statement of Retained Earnings',3),(3,'What does ROI stand for?','Return on Investment','Rate of Inflation','Revenue of Interest','Return on Income',1),(4,'Which ratio is calculated by dividing total debt by total assets?','Debt to Equity Ratio','Current Ratio','Debt to Asset Ratio','Quick Ratio',3),(5,'What is the primary purpose of an audit?','Tax Calculation','Asset Valuation','Compliance Assurance','Financial Reporting',3),(6,'What is EBITDA?','Earnings Before Interest, Taxes, Depreciation, and Amortization','Earnings Before Interest, Taxes, Debt, and Amortization','Earnings Before Inflation, Taxes, Depreciation, and Amortization','Earnings Before Income, Taxes, Depreciation, and Assets',1),(7,'Which financial metric is used to evaluate the efficiency of an investment?','Net Present Value','Gross Profit Margin','Return on Investment','Earnings Per Share',3),(8,'Which document outlines a company?s financial projections for the next year?','Annual Report','Budget','Strategic Plan','Cash Flow Statement',2),(9,'What does the term liquidity refer to?','Ability to meet long-term obligations','Ability to meet short-term obligations','Profitability of a company','Revenue growth rate',2),(10,'Which term refers to the cost of borrowing money?','Interest Rate','Dividend Yield','Capital Gain','Return on Equity',1);
/*!40000 ALTER TABLE `finance_questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `financeuser_answers`
--

DROP TABLE IF EXISTS `financeuser_answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `financeuser_answers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `question_id` int NOT NULL,
  `selected_option` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `question_id` (`question_id`),
  CONSTRAINT `financeuser_answers_ibfk_1` FOREIGN KEY (`question_id`) REFERENCES `finance_questions` (`question_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `financeuser_answers`
--

LOCK TABLES `financeuser_answers` WRITE;
/*!40000 ALTER TABLE `financeuser_answers` DISABLE KEYS */;
INSERT INTO `financeuser_answers` VALUES (1,1,2),(2,2,2),(3,3,2),(4,4,2),(5,5,2),(6,6,2),(13,7,2),(14,8,1),(15,9,2),(16,10,2);
/*!40000 ALTER TABLE `financeuser_answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `health_questions`
--

DROP TABLE IF EXISTS `health_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `health_questions` (
  `question_id` int NOT NULL AUTO_INCREMENT,
  `question` varchar(255) NOT NULL,
  `opt1` varchar(255) NOT NULL,
  `opt2` varchar(255) NOT NULL,
  `opt3` varchar(255) NOT NULL,
  `opt4` varchar(255) NOT NULL,
  `correct_option` int NOT NULL,
  PRIMARY KEY (`question_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `health_questions`
--

LOCK TABLES `health_questions` WRITE;
/*!40000 ALTER TABLE `health_questions` DISABLE KEYS */;
INSERT INTO `health_questions` VALUES (1,'What is the normal body temperature?','36°C','37°C','38°C','39°C',2),(2,'How many bones are in the human body?','204','206','208','210',2),(3,'Which vitamin is produced when a person is exposed to sunlight?','Vitamin A','Vitamin B','Vitamin C','Vitamin D',4),(4,'What is the largest organ of the human body?','Liver','Heart','Skin','Lung',3),(5,'Which blood type is known as the universal donor?','A','B','AB','O',4),(6,'How many chambers does the human heart have?','2','3','4','5',3),(7,'What is the main component of bones and teeth?','Calcium','Iron','Magnesium','Potassium',1),(8,'What is the rarest blood type?','A','B','AB','O',3),(9,'What part of the human body is the mandible?','Jaw','Arm','Leg','Foot',1),(10,'Which organ is responsible for pumping blood throughout the body?','Brain','Heart','Liver','Kidney',2);
/*!40000 ALTER TABLE `health_questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `healthuser_answers`
--

DROP TABLE IF EXISTS `healthuser_answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `healthuser_answers` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `question_id` int DEFAULT NULL,
  `selected_option` int DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `question_id` (`question_id`),
  CONSTRAINT `healthuser_answers_ibfk_1` FOREIGN KEY (`question_id`) REFERENCES `health_questions` (`question_id`)
) ENGINE=InnoDB AUTO_INCREMENT=278 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `healthuser_answers`
--

LOCK TABLES `healthuser_answers` WRITE;
/*!40000 ALTER TABLE `healthuser_answers` DISABLE KEYS */;
INSERT INTO `healthuser_answers` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,2),(7,7,1),(8,8,1),(9,9,1),(10,10,1),(11,10,1),(12,10,1),(13,1,1),(14,2,1),(15,3,2),(16,4,2),(17,5,2),(18,6,2),(19,7,3),(20,8,2),(21,9,1),(22,10,2),(23,1,2),(24,2,2),(25,3,2),(26,4,2),(27,5,2),(28,6,2),(29,7,1),(30,8,1),(31,9,1),(32,10,1),(33,1,3),(34,2,2),(35,3,2),(36,4,2),(37,5,2),(38,6,2),(39,7,1),(40,8,2),(41,9,2),(42,10,1),(43,1,3),(44,2,2),(45,3,2),(46,4,2),(47,5,2),(48,6,2),(49,7,1),(50,8,2),(51,9,2),(52,10,1),(53,1,1),(54,2,1),(55,3,1),(56,4,1),(57,5,2),(58,6,2),(59,7,2),(60,8,2),(61,9,2),(62,10,1),(63,1,2),(64,2,1),(65,3,1),(66,4,1),(67,5,1),(68,6,2),(69,7,1),(70,8,1),(71,9,1),(72,10,1),(73,1,1),(74,2,2),(75,3,2),(76,4,2),(77,5,2),(78,1,2),(79,4,1),(80,10,1),(81,1,1),(82,2,2),(83,4,1),(84,5,3),(85,6,4),(86,7,1),(87,8,1),(88,9,1),(89,10,1),(90,1,1),(91,2,1),(92,3,3),(93,4,3),(94,5,3),(95,6,4),(96,7,4),(97,8,2),(98,9,1),(99,10,1),(100,1,1),(101,2,2),(102,4,2),(103,6,2),(104,7,3),(105,8,2),(106,10,1),(107,1,1),(108,2,1),(109,3,1),(110,4,2),(111,5,1),(112,6,0),(113,7,0),(114,8,2),(115,9,0),(116,10,0),(117,1,1),(118,2,1),(119,3,1),(120,4,2),(121,5,1),(122,6,0),(123,7,0),(124,8,2),(125,9,2),(126,10,0),(127,1,2),(128,2,2),(129,3,2),(130,4,4),(131,5,0),(132,6,3),(133,7,0),(134,8,0),(135,9,1),(136,10,1),(137,1,2),(138,2,2),(139,3,2),(140,4,1),(141,5,2),(142,7,1),(143,9,1),(144,1,2),(145,2,1),(146,3,2),(147,4,2),(148,5,2),(149,8,3),(150,10,1),(151,1,1),(152,2,1),(153,3,1),(154,4,1),(155,5,1),(156,7,1),(157,8,4),(158,10,1),(159,1,1),(160,2,1),(161,3,1),(162,4,2),(163,5,1),(164,6,1),(165,7,3),(166,10,2),(167,1,1),(168,2,1),(169,3,2),(170,5,1),(171,7,2),(172,9,1),(173,1,1),(174,2,2),(175,3,4),(176,5,2),(177,7,2),(178,8,2),(179,1,1),(180,2,1),(181,3,2),(182,4,2),(183,5,3),(184,6,2),(185,7,2),(186,8,3),(187,1,1),(188,2,1),(189,3,1),(190,4,1),(191,5,1),(192,7,3),(193,9,1),(194,1,1),(195,2,1),(196,3,1),(197,4,2),(198,6,4),(199,8,1),(200,10,1),(201,1,1),(202,2,2),(203,3,3),(204,4,2),(205,5,2),(206,6,2),(207,7,3),(208,9,3),(209,1,1),(210,2,1),(211,3,1),(212,4,2),(213,5,1),(214,6,2),(215,7,3),(216,1,2),(217,2,2),(218,3,3),(219,4,2),(220,5,4),(221,6,2),(222,7,3),(223,1,2),(224,2,2),(225,3,1),(226,4,2),(227,5,2),(228,6,3),(229,7,3),(230,9,2),(231,1,1),(232,2,2),(233,3,2),(234,4,1),(235,5,1),(236,6,2),(237,7,2),(238,8,2),(239,1,1),(240,2,1),(241,3,1),(242,4,1),(243,6,3),(244,9,2),(245,1,1),(246,2,1),(247,3,1),(248,4,2),(249,5,3),(250,7,1),(251,9,2),(252,3,1),(253,4,1),(254,5,1),(255,6,2),(256,8,1),(257,9,2),(258,1,2),(259,2,2),(260,4,1),(261,6,1),(262,8,1),(263,1,1),(264,2,2),(265,4,2),(266,6,2),(267,9,1),(268,1,2),(269,2,2),(270,3,2),(271,4,2),(272,5,1),(273,6,1),(274,7,1),(275,8,1),(276,9,2),(277,10,2);
/*!40000 ALTER TABLE `healthuser_answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `math_questions`
--

DROP TABLE IF EXISTS `math_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `math_questions` (
  `question_id` int NOT NULL AUTO_INCREMENT,
  `question` varchar(255) NOT NULL,
  `opt1` varchar(255) NOT NULL,
  `opt2` varchar(255) NOT NULL,
  `opt3` varchar(255) NOT NULL,
  `opt4` varchar(255) NOT NULL,
  `correct_option` int NOT NULL,
  PRIMARY KEY (`question_id`),
  UNIQUE KEY `unique_question` (`question`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `math_questions`
--

LOCK TABLES `math_questions` WRITE;
/*!40000 ALTER TABLE `math_questions` DISABLE KEYS */;
INSERT INTO `math_questions` VALUES (1,'What is 2 + 2?','3','4','5','6',2),(2,'What is 3 * 3?','6','7','8','9',4),(3,'What is the square root of 16?','2','3','4','5',3),(4,'What is 10 - 7?','2','3','4','5',2),(5,'What is 6 / 2?','2','3','4','5',3),(6,'What is 5 + 7?','10','11','12','13',3),(7,'What is 8 - 4?','2','3','4','5',3),(8,'What is 9 / 3?','2','3','4','5',2),(9,'What is 7 * 2?','12','13','14','15',3),(10,'What is the cube of 3?','6','9','27','81',3),(11,'What is the value of ( 7 + 5 )?','10  ','11 ','12  ','13',2);
/*!40000 ALTER TABLE `math_questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mathuser_answers`
--

DROP TABLE IF EXISTS `mathuser_answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mathuser_answers` (
  `user_answer_id` int NOT NULL AUTO_INCREMENT,
  `question_id` int NOT NULL,
  `selected_option` int NOT NULL,
  PRIMARY KEY (`user_answer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=396 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mathuser_answers`
--

LOCK TABLES `mathuser_answers` WRITE;
/*!40000 ALTER TABLE `mathuser_answers` DISABLE KEYS */;
INSERT INTO `mathuser_answers` VALUES (1,1,1),(2,2,1),(3,3,2),(4,4,2),(5,5,2),(6,6,4),(7,7,2),(8,8,2),(9,9,3),(10,10,1),(11,1,1),(12,2,2),(13,3,2),(14,4,2),(15,5,1),(16,6,1),(17,7,1),(18,8,2),(19,9,1),(20,10,1),(21,1,1),(22,2,1),(23,3,2),(24,1,1),(25,2,1),(26,3,1),(27,4,1),(28,5,2),(29,6,2),(30,7,2),(31,8,2),(32,9,2),(33,10,2),(34,1,1),(35,2,1),(36,3,2),(37,4,2),(38,5,2),(39,6,2),(40,7,2),(41,8,2),(42,9,1),(43,10,2),(44,1,1),(45,2,1),(46,3,1),(47,4,1),(48,5,2),(49,6,2),(50,7,1),(51,8,2),(52,9,2),(53,10,1),(54,1,2),(55,2,1),(56,3,1),(57,4,2),(58,5,2),(59,6,1),(60,7,2),(61,8,2),(62,9,3),(63,10,2),(64,1,1),(65,2,1),(66,3,1),(67,4,1),(68,5,1),(69,6,1),(70,7,1),(71,8,1),(72,9,1),(73,10,1),(74,1,2),(75,2,2),(76,3,2),(77,4,1),(78,5,2),(79,6,2),(80,7,2),(81,1,2),(82,2,2),(83,3,2),(84,4,1),(85,5,2),(86,6,2),(87,7,2),(88,1,1),(89,2,1),(90,3,2),(91,4,2),(92,5,1),(93,6,2),(94,7,1),(95,8,1),(96,9,2),(97,10,2),(98,1,2),(99,2,2),(100,3,2),(101,4,2),(102,5,2),(103,6,2),(104,7,2),(105,8,1),(106,9,1),(107,10,1),(108,1,2),(109,2,1),(110,3,1),(111,4,1),(112,5,1),(113,6,1),(114,7,1),(115,8,1),(116,10,1),(117,1,1),(118,2,1),(119,3,1),(120,4,1),(121,5,1),(122,6,1),(123,7,1),(124,8,1),(125,9,1),(126,10,1),(127,1,2),(128,2,1),(129,3,1),(130,4,1),(131,5,1),(132,6,1),(133,7,1),(134,8,1),(135,10,1),(136,1,1),(137,2,1),(138,3,1),(139,4,1),(140,5,1),(141,6,1),(142,7,1),(143,8,1),(144,9,1),(145,10,1),(146,1,1),(147,2,1),(148,3,1),(149,4,1),(150,5,1),(151,6,1),(152,7,1),(153,8,1),(154,9,1),(155,10,1),(156,1,0),(157,2,0),(158,3,0),(159,4,0),(160,5,0),(161,6,0),(162,7,0),(163,8,0),(164,9,0),(165,10,0),(166,1,2),(167,2,1),(168,3,2),(169,4,2),(170,5,2),(171,6,2),(172,7,2),(173,8,1),(174,9,1),(175,10,1),(176,1,2),(177,2,2),(178,3,1),(179,1,1),(180,2,2),(181,3,0),(182,4,0),(183,5,0),(184,6,0),(185,7,0),(186,8,1),(187,9,1),(188,10,1),(189,1,2),(190,2,4),(191,3,0),(192,4,0),(193,5,0),(194,6,0),(195,7,1),(196,8,0),(197,9,0),(198,10,2),(199,1,2),(200,2,1),(201,3,0),(202,4,1),(203,5,3),(204,6,2),(205,7,2),(206,8,1),(207,9,2),(208,10,0),(209,1,1),(210,2,2),(211,3,2),(212,4,2),(213,5,0),(214,6,0),(215,7,0),(216,8,0),(217,9,0),(218,10,0),(219,11,2),(220,1,2),(221,2,2),(222,3,3),(223,4,3),(224,5,2),(225,6,1),(226,7,1),(227,8,1),(228,9,1),(229,10,1),(230,11,1),(231,1,0),(232,2,0),(233,3,0),(234,4,0),(235,5,2),(236,6,1),(237,7,2),(238,8,0),(239,9,0),(240,10,2),(241,11,0),(242,1,0),(243,2,0),(244,3,0),(245,4,0),(246,5,0),(247,6,0),(248,7,0),(249,8,0),(250,9,0),(251,10,0),(252,11,0),(253,1,0),(254,2,0),(255,3,0),(256,4,0),(257,5,0),(258,6,0),(259,7,0),(260,8,0),(261,9,0),(262,10,0),(263,11,0),(264,1,0),(265,2,0),(266,3,0),(267,4,0),(268,5,0),(269,6,0),(270,7,0),(271,8,0),(272,9,0),(273,10,0),(274,11,0),(275,1,0),(276,2,0),(277,3,0),(278,4,0),(279,5,0),(280,6,0),(281,7,0),(282,8,0),(283,9,0),(284,10,4),(285,11,1),(286,1,0),(287,2,0),(288,3,0),(289,4,0),(290,5,0),(291,6,0),(292,7,0),(293,8,0),(294,9,0),(295,10,2),(296,11,1),(297,1,0),(298,2,0),(299,3,0),(300,4,0),(301,5,0),(302,6,0),(303,7,0),(304,8,0),(305,9,4),(306,10,3),(307,11,3),(308,1,1),(309,2,2),(310,3,0),(311,4,1),(312,5,0),(313,6,0),(314,7,1),(315,8,0),(316,9,3),(317,10,0),(318,11,0),(319,1,1),(320,2,2),(321,3,0),(322,4,1),(323,5,0),(324,6,0),(325,7,1),(326,8,0),(327,9,3),(328,10,0),(329,11,0),(330,1,1),(331,2,2),(332,3,0),(333,4,1),(334,5,0),(335,6,0),(336,7,1),(337,8,0),(338,9,3),(339,10,0),(340,11,0),(341,1,1),(342,2,2),(343,3,0),(344,4,1),(345,5,0),(346,6,0),(347,7,1),(348,8,0),(349,9,3),(350,10,0),(351,11,0),(352,1,0),(353,2,0),(354,3,0),(355,4,0),(356,5,0),(357,6,0),(358,7,0),(359,8,0),(360,9,0),(361,10,0),(362,11,0),(363,1,0),(364,2,0),(365,3,0),(366,4,0),(367,5,0),(368,6,0),(369,7,0),(370,8,0),(371,9,0),(372,10,1),(373,11,3),(374,1,0),(375,2,0),(376,3,0),(377,4,0),(378,5,0),(379,6,0),(380,7,0),(381,8,0),(382,9,0),(383,10,1),(384,11,3),(385,1,2),(386,2,1),(387,3,1),(388,4,1),(389,5,1),(390,6,1),(391,7,0),(392,8,1),(393,9,0),(394,10,1),(395,11,0);
/*!40000 ALTER TABLE `mathuser_answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `questions` (
  `question_id` int NOT NULL AUTO_INCREMENT,
  `question` varchar(255) NOT NULL,
  `opt1` varchar(100) NOT NULL,
  `opt2` varchar(100) NOT NULL,
  `opt3` varchar(100) NOT NULL,
  `opt4` varchar(100) NOT NULL,
  `correct_option` int NOT NULL,
  PRIMARY KEY (`question_id`),
  UNIQUE KEY `unique_question` (`question`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (1,'What is the term for the difference between a company?s current assets and current liabilities?','Net Worth','Working Capital','Gross Margin','Operating Income',2),(2,'Which financial statement shows a company?s revenue and expenses?','Balance Sheet','Cash Flow Statement','Income Statement','Statement of Retained Earnings',3),(3,'What does ROI stand for?','Return on Investment','Rate of Inflation','Revenue of Interest','Return on Income',1),(4,'Which ratio is calculated by dividing total debt by total assets?','Debt to Equity Ratio','Current Ratio','Debt to Asset Ratio','Quick Ratio',3),(5,'What is the primary purpose of an audit?','Tax Calculation','Asset Valuation','Compliance Assurance','Financial Reporting',3),(6,'What is EBITDA?','Earnings Before Interest, Taxes, Depreciation, and Amortization','Earnings Before Interest, Taxes, Debt, and Amortization','Earnings Before Inflation, Taxes, Depreciation, and Amortization','Earnings Before Income, Taxes, Depreciation, and Assets',1),(7,'Which financial metric is used to evaluate the efficiency of an investment?','Net Present Value','Gross Profit Margin','Return on Investment','Earnings Per Share',3),(8,'Which document outlines a company?s financial projections for the next year?','Annual Report','Budget','Strategic Plan','Cash Flow Statement',2),(9,'What does the term liquidity refer to?','Ability to meet long-term obligations','Ability to meet short-term obligations','Profitability of a company','Revenue growth rate',2),(10,'Which term refers to the cost of borrowing money?','Interest Rate','Dividend Yield','Capital Gain','Return on Equity',1);
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quizzes`
--

DROP TABLE IF EXISTS `quizzes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quizzes` (
  `quiz_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`quiz_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quizzes`
--

LOCK TABLES `quizzes` WRITE;
/*!40000 ALTER TABLE `quizzes` DISABLE KEYS */;
INSERT INTO `quizzes` VALUES (1,'Math Quiz'),(2,'Science Quiz'),(3,'History Quiz');
/*!40000 ALTER TABLE `quizzes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reg`
--

DROP TABLE IF EXISTS `reg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reg` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(60) DEFAULT NULL,
  `lastnm` varchar(60) DEFAULT NULL,
  `passwd` varchar(60) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `mobileno` bigint DEFAULT NULL,
  `birth` varchar(60) DEFAULT NULL,
  `gender` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reg`
--

LOCK TABLES `reg` WRITE;
/*!40000 ALTER TABLE `reg` DISABLE KEYS */;
INSERT INTO `reg` VALUES (1,'admin','ankush','123','yasg@dfdfdd',88559897,'2024-06-26','Male'),(2,'azar','khan','mp','aj@gmail.com',88559897,'2024-06-20','Male'),(3,'aga','ad','mp','yash@gamail.com',8550555555,'2024-06-19','Male'),(4,'tejas','gdf','123','yasg@gmail.com',1234567890,'2002-04-01','Male'),(5,'tejas','ghost','akash123','tejas@gmail.com',7878774445,'2024-07-18','Male'),(6,'akash','mp','akash','akash123@gmail.com',8778777878,'2024-07-25','Male'),(7,'akash663655','mp.069/','mp','akash@gmail.com',8850613599,'2024-07-09','Male'),(8,'akash','mp','akash123','akash123@gmail.com',8850613599,'2024-07-09','Male'),(9,'akash','mp','akash123','akash123@gmail.com',8850613599,'2024-07-09','Male'),(10,'akash','mp','akash123','akash123@gmail.com',8855247788,'2024-07-01','Male'),(11,'tejas','mp','akash123','tejas123@gmail.com',8850613599,'2024-07-02','Male'),(12,'akash','mp','Akash@123','akash123@gmail.com',8787774445,'2024-07-18','Male'),(13,'akash','mp','Akash@123','akash123@gmail.com',8787774445,'2024-07-18','Male'),(14,'mahendranath','mp','Akash@123','akas@gmail.com',7898977865,'2024-07-25','Male'),(15,'akash','mp','Akash123@','Akash12@gmail.com',8856157899,'2024-07-10','Male'),(16,'mahendranath','mp','Akash@123','mahendranath123mp@gmail.com',8369824485,'2025-01-26','Male');
/*!40000 ALTER TABLE `reg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `science_questions`
--

DROP TABLE IF EXISTS `science_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `science_questions` (
  `question_id` int NOT NULL AUTO_INCREMENT,
  `question` varchar(255) NOT NULL,
  `opt1` varchar(255) NOT NULL,
  `opt2` varchar(255) NOT NULL,
  `opt3` varchar(255) NOT NULL,
  `opt4` varchar(255) NOT NULL,
  `correct_option` int NOT NULL,
  PRIMARY KEY (`question_id`),
  UNIQUE KEY `unique_question` (`question`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `science_questions`
--

LOCK TABLES `science_questions` WRITE;
/*!40000 ALTER TABLE `science_questions` DISABLE KEYS */;
INSERT INTO `science_questions` VALUES (1,'What is the chemical symbol for water?','H2O','O2','CO2','NaCl',1),(2,'What planet is known as the Red Planet?','Earth','Mars','Jupiter','Saturn',2),(3,'What gas do plants absorb from the atmosphere?','Oxygen','Hydrogen','Nitrogen','Carbon Dioxide',4),(4,'What is the hardest natural substance on Earth?','Gold','Iron','Diamond','Platinum',3),(5,'What is the speed of light?','300,000 km/s','150,000 km/s','200,000 km/s','250,000 km/s',1),(6,'What is the primary gas found in the air we breathe?','Oxygen','Carbon Dioxide','Nitrogen','Hydrogen',3),(7,'Which planet is the hottest in our solar system?','Venus','Mars','Mercury','Jupiter',1),(8,'What is the chemical symbol for calcium?','Ca','cA','Na','O2',1);
/*!40000 ALTER TABLE `science_questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scienceuser_answers`
--

DROP TABLE IF EXISTS `scienceuser_answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `scienceuser_answers` (
  `user_answer_id` int NOT NULL AUTO_INCREMENT,
  `question_id` int NOT NULL,
  `selected_option` int NOT NULL,
  PRIMARY KEY (`user_answer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=193 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scienceuser_answers`
--

LOCK TABLES `scienceuser_answers` WRITE;
/*!40000 ALTER TABLE `scienceuser_answers` DISABLE KEYS */;
INSERT INTO `scienceuser_answers` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,2),(7,7,1),(8,8,2),(9,1,1),(10,2,2),(11,3,2),(12,4,2),(13,5,2),(14,7,3),(15,8,1),(16,1,2),(17,2,2),(18,3,2),(19,4,2),(20,5,2),(21,6,2),(22,7,2),(23,1,1),(24,2,1),(25,4,1),(26,1,1),(27,2,2),(28,4,1),(29,6,1),(30,1,1),(31,2,1),(32,3,3),(33,4,3),(34,5,2),(35,1,1),(36,3,1),(37,4,2),(38,5,2),(39,7,2),(40,2,4),(41,4,2),(42,5,4),(43,7,1),(44,1,1),(45,3,1),(46,6,2),(47,1,1),(48,3,1),(49,4,1),(50,1,1),(51,2,1),(52,3,1),(53,4,1),(54,5,1),(55,6,1),(56,7,1),(57,1,1),(58,2,1),(59,3,1),(60,4,1),(61,5,1),(62,6,1),(63,7,1),(64,1,1),(65,1,-1),(66,2,-1),(67,3,-1),(68,4,-1),(69,5,-1),(70,6,-1),(71,7,-1),(72,8,-1),(73,1,1),(74,2,1),(75,3,1),(76,4,1),(77,5,1),(78,6,1),(79,7,1),(80,8,1),(81,1,1),(82,2,2),(83,3,-1),(84,4,-1),(85,5,1),(86,6,-1),(87,7,-1),(88,8,-1),(89,1,1),(90,2,1),(91,3,-1),(92,4,-1),(93,5,-1),(94,6,1),(95,7,1),(96,8,-1),(97,1,1),(98,2,1),(99,3,1),(100,4,1),(101,5,-1),(102,6,-1),(103,7,-1),(104,8,-1),(105,1,2),(106,2,-1),(107,3,3),(108,4,-1),(109,5,2),(110,6,-1),(111,7,-1),(112,8,1),(113,1,1),(114,2,1),(115,3,1),(116,4,1),(117,5,1),(118,6,1),(119,7,1),(120,8,-1),(121,1,1),(122,2,1),(123,3,3),(124,4,-1),(125,5,-1),(126,6,-1),(127,7,-1),(128,8,2),(129,1,1),(130,2,1),(131,3,1),(132,4,3),(133,5,-1),(134,6,-1),(135,7,2),(136,8,-1),(137,1,-1),(138,2,-1),(139,3,-1),(140,4,-1),(141,5,-1),(142,6,-1),(143,7,-1),(144,8,-1),(145,1,-1),(146,2,-1),(147,3,-1),(148,4,-1),(149,5,-1),(150,6,-1),(151,7,-1),(152,8,-1),(153,1,2),(154,2,-1),(155,3,2),(156,4,-1),(157,5,3),(158,6,-1),(159,7,-1),(160,8,-1),(161,1,2),(162,2,1),(163,3,2),(164,4,1),(165,5,3),(166,6,-1),(167,7,2),(168,8,1),(169,1,-1),(170,2,-1),(171,3,-1),(172,4,-1),(173,5,-1),(174,6,-1),(175,7,-1),(176,8,-1),(177,1,2),(178,2,-1),(179,3,1),(180,4,3),(181,5,-1),(182,6,-1),(183,7,1),(184,8,-1),(185,1,2),(186,2,2),(187,3,2),(188,4,1),(189,5,2),(190,6,2),(191,7,2),(192,8,1);
/*!40000 ALTER TABLE `scienceuser_answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_studies_questions`
--

DROP TABLE IF EXISTS `social_studies_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_studies_questions` (
  `question_id` int NOT NULL AUTO_INCREMENT,
  `question` varchar(255) NOT NULL,
  `opt1` varchar(255) NOT NULL,
  `opt2` varchar(255) NOT NULL,
  `opt3` varchar(255) NOT NULL,
  `opt4` varchar(255) NOT NULL,
  `correct_option` int NOT NULL,
  PRIMARY KEY (`question_id`),
  UNIQUE KEY `unique_question` (`question`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_studies_questions`
--

LOCK TABLES `social_studies_questions` WRITE;
/*!40000 ALTER TABLE `social_studies_questions` DISABLE KEYS */;
INSERT INTO `social_studies_questions` VALUES (1,'Who was the first President of the United States?','George Washington','Thomas Jefferson','Abraham Lincoln','John Adams',1),(2,'What is the capital of France?','Paris','Rome','Berlin','Madrid',1),(3,'Which country is known as the Land of the Rising Sun?','China','South Korea','Japan','India',3),(4,'What is the largest desert in the world?','Sahara','Gobi','Kalahari','Antarctica',1),(5,'Who wrote the Declaration of Independence?','George Washington','Benjamin Franklin','Thomas Jefferson','John Adams',3),(6,'Which ancient civilization built the Pyramids?','Romans','Greeks','Egyptians','Mayans',3),(7,'What is the longest river in the world?','Amazon','Nile','Yangtze','Mississippi',2),(8,'Who was the British Prime Minister during World War II?','Winston Churchill','Neville Chamberlain','Clement Attlee','Margaret Thatcher',1),(9,'Which continent is the smallest by land area?','Europe','Australia','Antarctica','South America',2),(10,'What was the primary purpose of the Great Wall of China?','Trade','Tourism','Defense','Transport',3);
/*!40000 ALTER TABLE `social_studies_questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ssuser_answers`
--

DROP TABLE IF EXISTS `ssuser_answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ssuser_answers` (
  `user_answer_id` int NOT NULL AUTO_INCREMENT,
  `question_id` int NOT NULL,
  `selected_option` int DEFAULT NULL,
  PRIMARY KEY (`user_answer_id`),
  KEY `question_id` (`question_id`),
  CONSTRAINT `ssuser_answers_ibfk_1` FOREIGN KEY (`question_id`) REFERENCES `social_studies_questions` (`question_id`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ssuser_answers`
--

LOCK TABLES `ssuser_answers` WRITE;
/*!40000 ALTER TABLE `ssuser_answers` DISABLE KEYS */;
INSERT INTO `ssuser_answers` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,2),(6,6,2),(7,7,2),(8,8,1),(9,9,2),(10,10,2),(11,1,1),(12,2,1),(13,3,1),(14,4,1),(15,5,2),(16,6,1),(17,7,2),(18,8,3),(19,9,2),(20,10,2),(21,1,1),(22,2,1),(23,3,1),(24,4,1),(25,5,3),(26,6,2),(27,7,2),(28,8,2),(29,9,2),(30,10,2),(31,1,2),(32,3,1),(33,5,1),(34,8,2),(35,1,1),(36,2,2),(37,3,2),(38,4,2),(39,5,2),(40,6,2),(41,7,2),(42,8,4),(43,9,2),(44,10,2),(45,1,2),(46,3,1),(47,5,1),(48,1,1),(49,2,1),(50,4,1),(51,6,2),(52,8,2),(53,1,1),(54,2,1),(55,3,1),(56,4,4),(57,5,0),(58,6,1),(59,7,0),(60,8,1),(61,9,0),(62,10,0),(63,1,1),(64,2,1),(65,3,1),(66,4,4),(67,5,0),(68,6,1),(69,7,0),(70,8,1),(71,9,0),(72,10,0),(73,1,1),(74,2,1),(75,3,1),(76,4,1),(77,5,0),(78,6,1),(79,7,0),(80,8,1),(81,9,0),(82,10,0),(83,1,1),(84,2,1),(85,3,1),(86,4,1),(87,5,0),(88,6,2),(89,7,0),(90,8,0),(91,9,0),(92,10,0),(93,1,0),(94,2,0),(95,3,0),(96,4,0),(97,5,0),(98,6,0),(99,7,0),(100,8,0),(101,9,0),(102,10,0),(103,1,1),(104,2,1),(105,3,3),(106,4,1),(107,5,2),(108,6,3),(109,7,2),(110,8,0),(111,9,0),(112,10,0);
/*!40000 ALTER TABLE `ssuser_answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_answers`
--

DROP TABLE IF EXISTS `user_answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_answers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `question_id` int NOT NULL,
  `selected_option` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `question_id` (`question_id`),
  CONSTRAINT `user_answers_ibfk_1` FOREIGN KEY (`question_id`) REFERENCES `questions` (`question_id`)
) ENGINE=InnoDB AUTO_INCREMENT=260 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_answers`
--

LOCK TABLES `user_answers` WRITE;
/*!40000 ALTER TABLE `user_answers` DISABLE KEYS */;
INSERT INTO `user_answers` VALUES (1,1,2),(2,2,2),(3,3,2),(4,4,2),(5,5,1),(6,6,1),(7,7,2),(8,8,3),(9,9,2),(10,10,2),(11,1,1),(12,2,1),(13,3,3),(14,4,3),(15,5,3),(16,6,3),(17,7,2),(18,8,2),(19,9,2),(20,10,2),(21,1,1),(22,2,2),(23,3,2),(24,4,1),(25,5,2),(26,6,1),(27,7,1),(28,8,1),(29,9,2),(30,10,1),(31,1,2),(32,2,1),(33,3,1),(34,4,1),(35,5,1),(36,6,1),(37,7,1),(38,9,4),(39,10,1),(40,1,2),(41,2,2),(42,3,2),(43,4,2),(44,5,2),(45,6,2),(46,7,1),(47,8,2),(48,9,2),(49,10,1),(50,1,2),(51,2,2),(52,3,2),(53,4,3),(54,5,2),(55,10,1),(56,1,2),(57,2,1),(58,3,1),(59,4,2),(60,5,2),(61,6,2),(62,7,2),(63,8,1),(64,1,2),(65,2,1),(66,3,2),(67,4,2),(68,5,1),(69,6,1),(70,7,1),(71,8,1),(72,1,1),(73,2,1),(74,3,1),(75,4,1),(76,5,1),(77,6,1),(78,7,2),(79,8,1),(80,1,2),(81,2,2),(82,3,2),(83,4,2),(84,5,2),(85,6,2),(86,7,2),(87,8,2),(88,1,2),(89,2,2),(90,3,2),(91,4,2),(92,5,2),(93,6,2),(94,7,2),(95,8,1),(96,1,1),(97,2,1),(98,3,1),(99,4,1),(100,5,1),(101,6,2),(102,7,2),(103,8,2),(104,1,1),(105,2,1),(106,3,1),(107,4,1),(108,5,1),(109,6,2),(110,7,1),(111,8,1),(112,1,1),(113,2,1),(114,3,1),(115,4,1),(116,5,1),(117,6,1),(118,1,1),(119,3,1),(120,6,2),(121,7,2),(122,8,2),(123,1,1),(124,2,2),(125,3,2),(126,4,2),(127,5,2),(128,6,2),(129,7,1),(130,8,1),(131,1,1),(132,2,1),(133,3,2),(134,4,2),(135,5,2),(136,6,2),(137,7,1),(138,8,1),(139,1,1),(140,2,1),(141,3,1),(142,4,1),(143,5,2),(144,6,1),(145,7,2),(146,8,2),(147,1,1),(148,2,1),(149,3,1),(150,4,1),(151,5,2),(152,6,1),(153,7,2),(154,8,2),(155,1,1),(156,2,1),(157,3,1),(158,4,2),(159,5,2),(160,6,2),(161,7,2),(162,8,1),(163,1,1),(164,2,1),(165,3,1),(166,4,2),(167,5,2),(168,6,2),(169,7,2),(170,8,1),(171,1,1),(172,2,1),(173,3,2),(174,4,2),(175,5,2),(176,6,1),(177,7,1),(178,8,2),(179,9,1),(180,10,1),(181,1,1),(182,2,1),(183,3,1),(184,4,1),(185,5,1),(186,6,1),(187,7,1),(188,8,1),(189,1,1),(190,2,1),(191,3,1),(192,4,1),(193,5,1),(194,1,1),(195,2,1),(196,3,1),(197,4,1),(198,5,1),(199,6,1),(200,7,2),(201,8,1),(202,1,1),(203,2,2),(204,4,1),(205,5,1),(206,7,1),(207,9,1),(208,1,2),(209,2,1),(210,3,1),(211,4,2),(212,5,2),(213,1,2),(214,2,2),(215,3,2),(216,4,1),(217,7,2),(218,8,2),(219,10,1),(220,1,1),(221,2,1),(222,3,3),(223,4,0),(224,5,2),(225,6,0),(226,7,2),(227,8,3),(228,9,0),(229,10,0),(230,1,1),(231,2,1),(232,3,1),(233,4,2),(234,5,0),(235,6,0),(236,7,2),(237,8,0),(238,9,2),(239,10,0),(240,1,0),(241,2,0),(242,3,0),(243,4,0),(244,5,0),(245,6,0),(246,7,0),(247,8,0),(248,9,0),(249,10,0),(250,1,0),(251,2,0),(252,3,0),(253,4,0),(254,5,0),(255,6,0),(256,7,0),(257,8,0),(258,9,2),(259,10,2);
/*!40000 ALTER TABLE `user_answers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-25 12:05:37

