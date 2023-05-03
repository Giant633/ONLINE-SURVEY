-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: platform
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
-- Table structure for table `faculty`
--

DROP TABLE IF EXISTS `faculty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faculty` (
  `fid` varchar(20) NOT NULL,
  `name` char(20) DEFAULT NULL,
  `gender` char(20) DEFAULT NULL,
  `emailid` varchar(80) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`fid`),
  UNIQUE KEY `emailid` (`emailid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faculty`
--

LOCK TABLES `faculty` WRITE;
/*!40000 ALTER TABLE `faculty` DISABLE KEYS */;
INSERT INTO `faculty` VALUES ('123','ramu','male','dc577228@gmail.com','123456'),('456','bobby','male','dcp9676520@gmail.com','12345678'),('789','ram','male','dheerock124@gmail.com','1234');
/*!40000 ALTER TABLE `faculty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surveymeta`
--

DROP TABLE IF EXISTS `surveymeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `surveymeta` (
  `surid` varchar(9) DEFAULT NULL,
  `username` varchar(6) DEFAULT NULL,
  `html` varchar(10) DEFAULT NULL,
  `url` text,
  `date` datetime DEFAULT CURRENT_TIMESTAMP,
  KEY `username` (`username`),
  CONSTRAINT `surveymeta_ibfk_1` FOREIGN KEY (`username`) REFERENCES `faculty` (`fid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveymeta`
--

LOCK TABLES `surveymeta` WRITE;
/*!40000 ALTER TABLE `surveymeta` DISABLE KEYS */;
INSERT INTO `surveymeta` VALUES ('O5hI9gD9y','456','form2','http://127.0.0.1:5000/survey/eyJhbGciOiJIUzUxMiIsImlhdCI6MTY4MjU5MzI3NywiZXhwIjoxNjgyNTkzODc3fQ.eyJzaWQiOiJPNWhJOWdEOXkiLCJodG1sX3BhZ2UiOiJmb3JtMiJ9.R43dQTJw9nKik_iAZY_jCkZ35_fqcNDK22HSbX8b-hlL6El2exGCAW4bpPSvq6pVsnYYDXi_MY71KS8SQmhpSg','2023-04-27 16:31:17'),('J3yQ5nZ8u','456','form4','http://127.0.0.1:5000/survey/eyJhbGciOiJIUzUxMiIsImlhdCI6MTY4MjU5MzQ0MywiZXhwIjoxNjgyNTk0MDQzfQ.eyJzaWQiOiJKM3lRNW5aOHUiLCJodG1sX3BhZ2UiOiJmb3JtNCJ9.nI86YCglXC-4sZ3RjIF7vuyRfmMYkEHgT76TiLPQdCzzlY-abTpP6Hezyitx9yNjxtMrgD1EJUWxKeDbp0M9pQ','2023-04-27 16:34:03'),('J9nG0yW0g','456','form4','http://127.0.0.1:5000/survey/eyJhbGciOiJIUzUxMiIsImlhdCI6MTY4MjYwMTcwMywiZXhwIjoxNjgyNjE2NzAzfQ.eyJzaWQiOiJKOW5HMHlXMGciLCJodG1sX3BhZ2UiOiJmb3JtNCJ9.GXHrz-d_0do7vuG2wOk750KdeSEl1MMK2Ydx6_tobULZItxdB4n9rw9BgfSUFWhkkSbRhQTBbWQqkaS02vUKjQ','2023-04-27 18:51:43'),('L1dS0uZ8c','456','form3','http://127.0.0.1:5000/survey/eyJhbGciOiJIUzUxMiIsImlhdCI6MTY4MjYwMjc1MiwiZXhwIjoxNjgyNjAzMjg0fQ.eyJzaWQiOiJMMWRTMHVaOGMiLCJodG1sX3BhZ2UiOiJmb3JtMyJ9.zt1FTUav4CPjC6G0Wiv-6czHDoPK7aZapj1fLSc_Kuko89mccFk0EyWKF3GfTolCAR7sO7YoalSQrtD0jcobEw','2023-04-27 19:09:12'),('N9iX1qL4d','456','form5','http://127.0.0.1:5000/survey/eyJhbGciOiJIUzUxMiIsImlhdCI6MTY4MjY0ODI3NywiZXhwIjoxNjgyNjUwMjc3fQ.eyJzaWQiOiJOOWlYMXFMNGQiLCJodG1sX3BhZ2UiOiJmb3JtNSJ9.mV753TzWwMkrblccst9qxm3p-G_CNav5qAZVzGqJx80Ms9S8meIFyWSGt_wErflZ92jPrIg8WHBthxQO9YbeUw','2023-04-28 07:47:57'),('S5yR3aQ4h','123','form1','http://127.0.0.1:5000/survey/eyJhbGciOiJIUzUxMiIsImlhdCI6MTY4MjY1NTA0MiwiZXhwIjoxNjgyNjYwMDQyfQ.eyJzaWQiOiJTNXlSM2FRNGgiLCJodG1sX3BhZ2UiOiJmb3JtMSJ9.c4_-of9d9qEWtaLmPbtJ9JCEdCAv1WgwoiLqNSgD_8TxYdrZrMip4e86g80_8cpltn_hIuTSsNupGrbGC4Nqyw','2023-04-28 09:40:42');
/*!40000 ALTER TABLE `surveymeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surveys`
--

DROP TABLE IF EXISTS `surveys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `surveys` (
  `surid` varchar(9) NOT NULL,
  `rollno` varchar(6) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `section` varchar(10) DEFAULT NULL,
  `one` tinytext,
  `two` tinytext,
  `three` tinytext,
  `four` tinytext,
  `five` tinytext,
  `six` tinytext,
  `seven` tinytext,
  `eight` tinytext,
  `nine` tinytext,
  `ten` tinytext,
  `eleven` smallint DEFAULT NULL,
  PRIMARY KEY (`surid`,`rollno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveys`
--

LOCK TABLES `surveys` WRITE;
/*!40000 ALTER TABLE `surveys` DISABLE KEYS */;
INSERT INTO `surveys` VALUES ('G5tI3lO9a','256789','anusha','B.sc MSCs','g','dsds','E','No','Yes','a','s','g','dsdsd','dsds',50),('J3yQ5nZ8u','45','ramu','B.sc MSCs','media','a','g','Yes','Yes','a','E','a','Yes','no.',50),('J9nG0yW0g','203831','ramu','B.sc MSCs','media','g','a','Yes','Yes','y','g','a','No','mnbjhvhjv',50),('N9iX1qL4d','456','ram','B.sc MSCs','Yes','g','g','Yes','Yes','y','g','g','Yes','hgvgh',50),('O5hI9gD9y','203831','ramu','B.sc MSCs','g','E','E','Yes','No','E','g','g','Yes','no',50),('S5yR3aQ4h','45','bobby','B.sc MSCs','g','yuygugug','E','Yes','Yes','g','g','g','hjhbj','hjhjb',50),('T7mC5lT7w','197208','Eswar Nandivada','B.sc MSCs','Yes','E','E','Yes','No','y','g','E','No','xxjhjdsjs',62);
/*!40000 ALTER TABLE `surveys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `username` varchar(6) NOT NULL,
  `password` varchar(35) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('admin','admin');
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

-- Dump completed on 2023-04-28 12:05:17
