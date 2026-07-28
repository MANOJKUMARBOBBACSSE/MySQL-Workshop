-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: functiondatamysql
-- ------------------------------------------------------
-- Server version	8.0.43

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
-- Table structure for table `hospital`
--

DROP TABLE IF EXISTS `hospital`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hospital` (
  `Hospital_Code` int NOT NULL,
  `Hospital_Name` varchar(100) NOT NULL,
  `Hospital_Location` varchar(1000) NOT NULL,
  PRIMARY KEY (`Hospital_Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospital`
--

LOCK TABLES `hospital` WRITE;
/*!40000 ALTER TABLE `hospital` DISABLE KEYS */;
INSERT INTO `hospital` VALUES (101,'VS Hospital','No. 815/306, Poonamallee High Road, Kilpauk, Chennai, Chennai District, Tamil Nadu - 600010'),(102,'Apollo Hospital','No. 21, Greams Lane, Greams Road, Thousand Lights, Chennai, Chennai District, Tamil Nadu - 600006'),(103,'BLK Super Speciality Hospital','No. 5, Pusa Road, Rajendra Place, New Delhi, Central Delhi District, Delhi - 110005'),(104,'Max Super Speciality Hospital','Plot No. 1, Sector 56, Phase 6, Mohali, Sahibzada Ajit Singh Nagar District, Punjab - 160055'),(105,'Medanta - The Medicity','CH Baktawar Singh Road, Sector 38, Gurugram, Gurugram District, Haryana - 122001'),(106,'Fortis Hospital','No. 154/9, Bannerghatta Road, Opposite IIM Bangalore, Bengaluru, Bengaluru Urban District, Karnataka - 560076'),(107,'Artemis Hospital','Sector 51, Golf Course Extension Road, Gurugram, Gurugram District, Haryana - 122001'),(108,'Wockhardt Hospital','Wani House, Mumbai Agra Road, Wadala Naka, Nashik, Nashik District, Maharashtra - 422001'),(109,'Narayana Health','No. 258/A, Bommasandra Industrial Area, Hosur Road, Bengaluru, Bengaluru Urban District, Karnataka - 560099'),(110,'Columbia Asia Hospital','No. 85-1, Bannimantapa A Layout, Mysuru, Mysuru District, Karnataka - 570015');
/*!40000 ALTER TABLE `hospital` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-07-28 15:51:06
