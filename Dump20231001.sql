CREATE DATABASE  IF NOT EXISTS `dizitalpods_employee` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `dizitalpods_employee`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: dizitalpods_employee
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `candidate_disp`
--

DROP TABLE IF EXISTS `candidate_disp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidate_disp` (
  `fname` varchar(255) NOT NULL,
  `assigned_on` varchar(255) DEFAULT NULL,
  `client_name` varchar(255) DEFAULT NULL,
  `job_title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`fname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate_disp`
--

LOCK TABLES `candidate_disp` WRITE;
/*!40000 ALTER TABLE `candidate_disp` DISABLE KEYS */;
/*!40000 ALTER TABLE `candidate_disp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidates`
--

DROP TABLE IF EXISTS `candidates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidates` (
  `cno` int NOT NULL AUTO_INCREMENT,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `pno` varchar(15) DEFAULT NULL,
  `alternatepno` varchar(15) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL,
  `rolename` varchar(255) DEFAULT NULL,
  `clientname` varchar(255) DEFAULT NULL,
  `techskills` varchar(100) DEFAULT NULL,
  `otherskills` varchar(100) DEFAULT NULL,
  `totalexp` varchar(50) DEFAULT NULL,
  `prevorgs` varchar(50) DEFAULT NULL,
  `summary` varchar(1000) DEFAULT NULL,
  `naukariid` varchar(100) DEFAULT NULL,
  `linkedinid` varchar(100) DEFAULT NULL,
  `source` varchar(50) DEFAULT NULL,
  `createdon` varchar(50) DEFAULT NULL,
  `createdby` varchar(50) DEFAULT NULL,
  `updatedon` varchar(50) DEFAULT NULL,
  `updatedby` varchar(50) DEFAULT NULL,
  `lockedstatus` varchar(50) DEFAULT NULL,
  `appliedon` date DEFAULT (curdate()),
  PRIMARY KEY (`cno`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidates`
--

LOCK TABLES `candidates` WRITE;
/*!40000 ALTER TABLE `candidates` DISABLE KEYS */;
INSERT INTO `candidates` VALUES (1,'Tauqeer','Ahmed','5464','54254','tau@gmail.com','development',NULL,NULL,'Java','SQL','1 year','United','nil','653','linkedin.com','Google Search','1-06-2022','Sai','2-06-2022','Sai','Locked','2022-07-18'),(21,'Suhail','Rasool','7898464987',NULL,'suhail@yahoo.com',NULL,NULL,NULL,'Java springs, html, css, javascript',NULL,'5 months',NULL,NULL,NULL,'linkedin.com/.in/suhailrasool',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(22,'Abdul','Elahi','09844001352',NULL,'elahi096@gmail.com',NULL,NULL,NULL,'java',NULL,'1',NULL,NULL,NULL,'dafds',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(23,'Abdul','Elah','09844001352',NULL,'elahi096@gmail.com',NULL,NULL,NULL,'',NULL,'1',NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'locked',NULL),(24,'narendra','modi','8142539070',NULL,'modi@india.com',NULL,NULL,NULL,'react',NULL,'7',NULL,NULL,NULL,'dafds',NULL,NULL,NULL,NULL,NULL,'locked',NULL),(25,'Abdul','E','09844001352',NULL,'elahi096@gmail.com',NULL,NULL,NULL,'java',NULL,'12',NULL,NULL,NULL,'dafds',NULL,NULL,NULL,NULL,NULL,'locked',NULL);
/*!40000 ALTER TABLE `candidates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clients` (
  `id` bigint NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `principlecontact` varchar(255) DEFAULT NULL,
  `clientname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,NULL,'contact@accion.com','Bangalore','','Accion'),(2,NULL,'contact@wipro.com','Bangalore','','Wipro'),(3,NULL,'contact@adobe.com','Bangalore','','Adobe');
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `eid` bigint NOT NULL,
  `confirmpassword` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `employeename` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `rolename` varchar(255) DEFAULT NULL,
  `rollid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`eid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (111,'789456.','Manager','prakash@dizitalpods.com','Prakash','789456.','Prakash',NULL,NULL),(112,'12345','Tech lead','suresh@gmail.com','Suresh','12345','suresh',NULL,NULL),(113,'123456','Global Head','ramesh@accion.com','Ramesh','123456','rama',NULL,NULL),(456,'123456.','Developer','tauqeerahmed0699@gmail.com','Tauqeer','123456.','tau',NULL,NULL),(457,'456789','Tech lead','Anil@birlasoft.com','Anil','456789','anil',NULL,NULL),(458,'456','Developer','charith@gmail.com','Charith','456','charith',NULL,NULL),(459,'456','Senior Developer','sumanth@yahoo.com','Sumanth','456','sumu',NULL,NULL),(460,'456','Tech lead','shashank@gmail.com','Shashank','456','shashank',NULL,NULL);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (42);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interview_schedule`
--

DROP TABLE IF EXISTS `interview_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `interview_schedule` (
  `schedule_id` int NOT NULL,
  `assignned_to` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `task` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`schedule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interview_schedule`
--

LOCK TABLES `interview_schedule` WRITE;
/*!40000 ALTER TABLE `interview_schedule` DISABLE KEYS */;
INSERT INTO `interview_schedule` VALUES (21,'me','3','Sat Sep 03 2022','test',''),(23,'test','3','Sun Sep 04 2022','demo','10:14'),(29,'rtyhjj','1','Fri Sep 02 2022','waerstrth','19:17'),(36,'rtyhjj','1','Thu Sep 01 2022','waerstrth','23:39'),(37,'rtyhjj','1','Tue Sep 13 2022','waerstrth','23:39'),(38,'rtyhjj','1','Tue Sep 13 2022','waerstrth','23:39'),(41,'rtyhjj','2','Fri Sep 02 2022','waerstrth','23:41');
/*!40000 ALTER TABLE `interview_schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interviewprocess`
--

DROP TABLE IF EXISTS `interviewprocess`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `interviewprocess` (
  `interviewid` int NOT NULL AUTO_INCREMENT,
  `lock_id` int DEFAULT NULL,
  `stage1` varchar(20) DEFAULT NULL,
  `stage2` varchar(20) DEFAULT NULL,
  `stage3` varchar(20) DEFAULT NULL,
  `i_status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`interviewid`),
  KEY `lock_id` (`lock_id`),
  CONSTRAINT `interviewprocess_ibfk_1` FOREIGN KEY (`lock_id`) REFERENCES `lockcandidate` (`lock_id`)
) ENGINE=InnoDB AUTO_INCREMENT=302 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interviewprocess`
--

LOCK TABLES `interviewprocess` WRITE;
/*!40000 ALTER TABLE `interviewprocess` DISABLE KEYS */;
INSERT INTO `interviewprocess` VALUES (300,200,'Passed','Passed','on_hold','rejected'),(301,201,'Passed','Passed','on_hold','onhold');
/*!40000 ALTER TABLE `interviewprocess` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobdetails`
--

DROP TABLE IF EXISTS `jobdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobdetails` (
  `jobid` int NOT NULL AUTO_INCREMENT,
  `jobtitle` varchar(50) DEFAULT NULL,
  `domain` varchar(50) DEFAULT NULL,
  `rolename` varchar(255) DEFAULT NULL,
  `clientname` varchar(255) DEFAULT NULL,
  `techskills` varchar(100) DEFAULT NULL,
  `exprange` varchar(50) DEFAULT NULL,
  `jobtype` varchar(50) DEFAULT NULL,
  `jobdesc` varchar(1000) DEFAULT NULL,
  `salaryrange` varchar(50) DEFAULT NULL,
  `openpositions` varchar(50) DEFAULT NULL,
  `joiningdate` varchar(50) DEFAULT NULL,
  `jobresponsibilities` varchar(1000) DEFAULT NULL,
  `benefits` varchar(500) DEFAULT NULL,
  `createdby` varchar(50) DEFAULT NULL,
  `createdon` varchar(50) DEFAULT NULL,
  `assignedon` varchar(50) DEFAULT NULL,
  `assignedby` varchar(50) DEFAULT NULL,
  `joinedby` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`jobid`)
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobdetails`
--

LOCK TABLES `jobdetails` WRITE;
/*!40000 ALTER TABLE `jobdetails` DISABLE KEYS */;
INSERT INTO `jobdetails` VALUES (100,'Developer','Full Stack',NULL,'dizitalpods','Java','2 to 3 required','Full time','nil','4 to 8 LPA','45','15-07-2022',NULL,NULL,'Sai','1-06-2022','2-06-2022','Sai',NULL),(101,'Design and Development','UI/UX',NULL,NULL,'HTML, CSS, React','1 year','Full time','wanted experienced guys in front end technologies','5 to 8LPA','5 opened','15-06-2022',NULL,NULL,'Sai','2022-06-01','2022-06-09','SAi',NULL),(102,'Architect','Cloud',NULL,NULL,'AWS, IBM','2 to 3 required','Full time','nil','5 to 9 LPA','45','15-07-2022',NULL,NULL,'Sai','1-06-2022','2-06-2022','Sai',NULL),(104,'Python Developer','Development',NULL,NULL,NULL,'Mid level','Part-Time','Text Box Description demo message','8 to 15 LPA','12','','Text Box Description demo message','Text Box Description demo message',NULL,NULL,NULL,NULL,NULL),(105,'Front end Developer','UI',NULL,NULL,NULL,'Entry level','Full time','Text box','5 to 8 LPA','5','','Text Box','Text Box',NULL,NULL,NULL,NULL,NULL),(106,'UX','UX',NULL,'2',NULL,'Senior level','Part Time','test',NULL,'1','01-01-2022','test','test',NULL,NULL,NULL,'2',NULL),(107,'Python Developer','Development',NULL,'Accion labs',NULL,'Entry level','Part Time','Urgently hiring for developers','3 to 5.5 LPA','12',NULL,'Should know how to be in  a fast pace environment','Medical Insurance',NULL,NULL,NULL,'Prakash',NULL),(110,'Devops Engineer','Integration and cloud',NULL,'JK Tyres',NULL,'Senior level','Full time','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','8 to 15 LPA','03',NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. ',NULL,NULL,NULL,'Prakash',NULL),(111,'Manager','Management',NULL,'Adobe',NULL,'Senior Management','Full Time','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','20 to 30 LPA','1',NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',NULL,NULL,NULL,'Sai Babu',NULL),(112,'Python Developer','Development',NULL,'Adobe',NULL,'Well Experienced','Full time','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','5 to 8 LPA','1',NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. ','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',NULL,NULL,NULL,'Sai Babu',NULL),(113,'Devops Engineer','Integration and cloud',NULL,'Adobe',NULL,'Senior level','Full time','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','5 to 10 LPA','3',NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. ',NULL,NULL,NULL,'Rashmi',NULL),(114,'Devops Engineer','Integration and cloud',NULL,'JK Tyres',NULL,'Entry level','Part Time','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','8 to 10 LPA','2',NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',NULL,NULL,NULL,'Rashmi',NULL),(117,'','',NULL,'Choose',NULL,'','','','','','2022-08-31','','',NULL,NULL,NULL,'Choose',NULL),(118,'Devops Engineer','Integration and cloud',NULL,'JK Tyres',NULL,'Mid level','Full time','Quis auctor elit sed vulputate mi sit amet mauris. Erat velit scelerisque in dictum non consectetur. Semper quis lectus nulla at volutpat diam ut. Vel risus commodo viverra maecenas. Senectus et netus et malesuada fames ac turpis egestas integer. Vulputate sapien nec sagittis aliquam malesuada bibendum arcu. A lacus vestibulum sed arcu non odio euismod. Tortor aliquam nulla facilisi cras fermentum odio eu feugiat. Arcu risus quis varius quam quisque id diam vel quam. Ut venenatis tellus in metus vulputate eu scelerisque felis imperdiet. Sit amet aliquam id diam maecenas.','8 to 10 lpa','1','2022-08-30','Vulputate sapien nec sagittis aliquam malesuada bibendum arcu. A lacus vestibulum sed arcu non odio euismod. Tortor aliquam nulla facilisi cras fermentum odio eu feugiat. Arcu risus quis varius quam quisque id diam vel quam. Ut venenatis tellus in metus vulputate eu scelerisque felis imperdiet. Sit amet aliquam id diam maecenas.','Ut venenatis tellus in metus vulputate eu scelerisque felis imperdiet. Sit amet aliquam id diam maecenas.',NULL,NULL,NULL,'Prakash',NULL),(119,'','',NULL,'Choose',NULL,'','','','','','2022-08-31','','',NULL,NULL,NULL,'Choose',NULL),(120,'Devops Engineer','Development',NULL,'Adobe',NULL,'Mid level','Part Time','Ut venenatis tellus in metus vulputate eu scelerisque felis imperdiet. Sit amet aliquam id diam maecenas.','8 to 10 lpa','12','2022-08-30','Ut venenatis tellus in metus vulputate eu scelerisque felis imperdiet. Sit amet aliquam id diam maecenas.','Ut venenatis tellus in metus vulputate eu scelerisque felis imperdiet. Sit amet aliquam id diam maecenas.',NULL,NULL,NULL,'Rashmi',NULL),(121,'Java Full Stack Developer','Development',NULL,'Adobe',NULL,'Senior Management','Full time','Demo text','5 to 8','12','2022-09-21','Demo text','Demo text',NULL,NULL,NULL,'Sai Babu',NULL),(122,'Demo','demo',NULL,'JK Tyres',NULL,'high',NULL,'demo',NULL,'20','2022-09-16','demo','demo',NULL,NULL,NULL,'Sai Babu',NULL),(123,'Demo','demo',NULL,'JK Tyres',NULL,'high',NULL,'demo',NULL,'20','2022-09-16','demo','demo',NULL,NULL,NULL,'Sai Babu',NULL);
/*!40000 ALTER TABLE `jobdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lockcandidate`
--

DROP TABLE IF EXISTS `lockcandidate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lockcandidate` (
  `lock_id` int NOT NULL AUTO_INCREMENT,
  `cno` int DEFAULT NULL,
  `jobid` int DEFAULT NULL,
  `lockedon` varchar(20) DEFAULT NULL,
  `lockedby` varchar(30) DEFAULT NULL,
  `lockreleasedon` varchar(20) DEFAULT NULL,
  `lockreleasedby` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`lock_id`),
  KEY `cno` (`cno`),
  KEY `jobid` (`jobid`),
  CONSTRAINT `lockcandidate_ibfk_1` FOREIGN KEY (`cno`) REFERENCES `candidates` (`cno`),
  CONSTRAINT `lockcandidate_ibfk_2` FOREIGN KEY (`jobid`) REFERENCES `jobdetails` (`jobid`)
) ENGINE=InnoDB AUTO_INCREMENT=202 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lockcandidate`
--

LOCK TABLES `lockcandidate` WRITE;
/*!40000 ALTER TABLE `lockcandidate` DISABLE KEYS */;
INSERT INTO `lockcandidate` VALUES (200,1,100,'3-06-2022','Sai','4-06-2022','Sai'),(201,1,100,'2022-06-03','Sai, Rashmi','2022-06-04','Sai Babu');
/*!40000 ALTER TABLE `lockcandidate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `referrals`
--

DROP TABLE IF EXISTS `referrals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `referrals` (
  `refer_id` int NOT NULL,
  `age` varchar(255) DEFAULT NULL,
  `experience` varchar(255) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `job_post` varchar(255) DEFAULT NULL,
  `linked_in` varchar(255) DEFAULT NULL,
  `refered_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`refer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `referrals`
--

LOCK TABLES `referrals` WRITE;
/*!40000 ALTER TABLE `referrals` DISABLE KEYS */;
INSERT INTO `referrals` VALUES (1,'25','2','Abdul','Java Developer','linkedin.com/abdul','Sai Babu'),(2,'22','1','Subhan','Python Developer','linkedin.com/subhan','Sai Babu'),(3,'21','3 ','Elahi','Frontend Developer','linkedin.com/elahi','Sai Babu'),(7,'23','6 months','Tauqeer Ahmed','1','linkedin.com/tauqeer','Vijay');
/*!40000 ALTER TABLE `referrals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `roleid` bigint NOT NULL,
  `rolename` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`roleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'Full Stack Developer'),(2,'Backend Developer'),(3,'FrontEnd Developer'),(4,'Devops Engineer'),(5,'Support Engineering'),(6,'Associate Analyst '),(7,'Manager');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `view_name`
--

DROP TABLE IF EXISTS `view_name`;
/*!50001 DROP VIEW IF EXISTS `view_name`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_name` AS SELECT 
 1 AS `fname`,
 1 AS `jobtitle`,
 1 AS `assignedon`,
 1 AS `clientname`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'dizitalpods_employee'
--

--
-- Dumping routines for database 'dizitalpods_employee'
--

--
-- Final view structure for view `view_name`
--

/*!50001 DROP VIEW IF EXISTS `view_name`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_name` AS select `c`.`fname` AS `fname`,`j`.`jobtitle` AS `jobtitle`,`j`.`assignedon` AS `assignedon`,`j`.`clientname` AS `clientname` from (`candidates` `c` join `jobdetails` `j`) */;
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

-- Dump completed on 2023-10-01 21:39:41
