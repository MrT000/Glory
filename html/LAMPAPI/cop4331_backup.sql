-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: localhost    Database: COP4331
-- ------------------------------------------------------
-- Server version	8.0.32-0ubuntu0.20.04.2

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
-- Table structure for table `Contacts`
--

DROP TABLE IF EXISTS `Contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Contacts` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(50) NOT NULL DEFAULT '',
  `LastName` varchar(50) NOT NULL DEFAULT '',
  `Phone` varchar(50) NOT NULL DEFAULT '',
  `Email` varchar(50) NOT NULL DEFAULT '',
  `UserID` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Contacts`
--

LOCK TABLES `Contacts` WRITE;
/*!40000 ALTER TABLE `Contacts` DISABLE KEYS */;
INSERT INTO `Contacts` VALUES (1,'Chuck','Norris','555-555-5555','chucknorris@gmail.com',1),(2,'Test','McTest','555-555-4545','test@gmail.com',1),(3,'David','Santamaria','516-530-3021','davidsantamaria@gmail.com',2),(4,'jimmy','bob','407-365-2478','THisIsATest@gmail.com',1),(9,'John','Wick','445-445-3432','johnwick@gmail.com',1),(10,'First','Last','123-456-7890','testing@gmail.com',0),(11,'Jane','Doe','123-456-1133','janedoe@doe.com',0),(12,'Testing6','Testing6','121-111-2222','testing6@test.com',0),(13,'test','example','123-456-1234','example@example.com',0),(14,'1','1','1111111111','1@1.com',0),(15,'first','last','999-888-5555','first@lastname.com',0),(16,'John','Smith','112-223-4455','JohnSmith@smithing.com',5),(17,'James','Smith','112-222-3334','James@Smith.com',5),(26,'sldkfnskejfn','pisdjfosjef','123-456-7890','dkfsdifosi@asljdhaosfh.com',24),(27,'Iron','Man','555-5555-5555','Ironman@gmail.com',15),(37,'','','','',39),(38,'df','df','df','df',39),(43,'Smith','Smithing','111-444-3333','Smith@smithing.com',31),(44,'a','','','',23),(48,'Jane','Doe','111-999-2222','jane@doe.com',31),(49,'a','a','a','a',33),(50,'First','last','111-222-3333','First@last.com',31),(53,'test','example','111-333-8888','test@test.com',40),(54,'this','test','123-456-7895','test@email.com',24),(55,'b','b','b','b',33),(56,'1111','2222','111-333-8888','111@gmail.com',31),(57,'test3','test3l','111-8888-3333','test3@gmail.com',31),(58,'testing2','testing2','222-888-3333','testing2@gmail.com',31),(59,'a','a','a','a',23),(60,'test3','test3','111-999-0000','test@3.com',31),(61,'John','Doe','999-000-1234','John@Doe.com',47),(63,'f','f','f','f',33),(64,'d','d','d','d',33),(65,'r','r','r','r',33),(66,'k','k','k','k',33),(67,'y','y','y','y',33);
/*!40000 ALTER TABLE `Contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Users` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `DateCreated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `DateLastLoggedIn` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `FirstName` varchar(50) NOT NULL DEFAULT '',
  `LastName` varchar(50) NOT NULL DEFAULT '',
  `Login` varchar(50) NOT NULL DEFAULT '',
  `Password` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users` VALUES (1,'2023-01-16 16:31:01','2023-01-16 16:31:01','Ethan','Adkins','EthanA','Test'),(2,'2023-01-16 16:32:16','2023-01-16 16:32:16','David','Gilmour','GuitarWiz','Pompeii'),(3,'2023-01-24 17:59:34','2023-01-24 17:59:34','Dwayne','Rock','DaBest','YouKnow1t'),(4,'2023-01-26 14:30:41','2023-01-26 14:30:41','test2','test3','test','test1'),(5,'2023-01-27 21:10:22','2023-01-27 21:10:22','John','Smith','testing1','6b7330782b2feb4924020cc4a57782a9'),(6,'2023-01-27 21:11:06','2023-01-27 21:11:06','Array','Array','test123','cc03e747a6afbbcbf8be7668acfebee5'),(7,'2023-01-27 22:39:51','2023-01-27 22:39:51','Array','Array','Test2','c454552d52d55d3ef56408742887362b'),(8,'2023-01-27 22:41:48','2023-01-27 22:41:48','John','Doe','test3','8ad8757baa8564dc136c1e07507f4a98'),(9,'2023-01-27 22:58:46','2023-01-27 22:58:46','TEST','test','test4','86985e105f79b95d6bc918fb45ec7727'),(10,'2023-01-27 23:01:20','2023-01-27 23:01:20','sdhfosdihfoa','sodifhslkdjf','auihdsdhfoh','Test'),(11,'2023-01-27 23:09:42','2023-01-27 23:09:42','JANE','DONE','test5','e3d704f3542b44a621ebed70dc0efe13'),(12,'2023-01-27 23:13:12','2023-01-27 23:13:12','Ethan','Adkins','Kyle','Test'),(13,'2023-01-28 02:03:41','2023-01-28 02:03:41','kyle','franklin','KyleF','f830f69d23b8224b512a0dc2f5aec974'),(14,'2023-01-29 00:03:39','2023-01-29 00:03:39','kyle','Franklin','KyleFranklin','fa6a5a3224d7da66d9e0bdec25f62cf0'),(15,'2023-01-29 00:16:04','2023-01-29 00:16:04','Ozzy','Osbourne','MadMan','914bd9c4f22e0ed3b42f898316e967f9'),(16,'2023-01-29 00:18:06','2023-01-29 00:18:06','ThisIsATest','ThisIsATest','ThisIsATest','4c0b569e4c96df157eee1b65dd0e4d41'),(17,'2023-01-29 04:24:53','2023-01-29 04:24:53','','','','d41d8cd98f00b204e9800998ecf8427e'),(18,'2023-01-29 22:20:03','2023-01-29 22:20:03','michael','jackson','michael','b41779690b83f182acc67d6388c7bac9'),(19,'2023-01-30 23:00:54','2023-01-30 23:00:54','James','Ko','JimJom','e73bef41471c1d964674ceeeeb40d261'),(20,'2023-01-30 23:14:26','2023-01-30 23:14:26','ThisIsATest3','ThisIsATest3','ThisIsATest3','c11854b83777a36baf27499cd24a4c1e'),(21,'2023-01-30 23:17:19','2023-01-30 23:17:19','James','Ko','testtest','c23b2ed66eedb321c5bcfb5e3724b978'),(22,'2023-01-30 23:17:35','2023-01-30 23:17:35','Kyle','Franklin','ThisIsATest4','5f4dcc3b5aa765d61d8327deb882cf99'),(23,'2023-01-30 23:23:18','2023-01-30 23:23:18','test','account','password','5f4dcc3b5aa765d61d8327deb882cf99'),(24,'2023-01-30 23:24:32','2023-01-30 23:24:32','test','account','Username','5f4dcc3b5aa765d61d8327deb882cf99'),(25,'2023-01-30 23:25:12','2023-01-30 23:25:12','ok','ok','ok123','8b82bd2ef31d867db598fba5014e1762'),(26,'2023-01-30 23:33:58','2023-01-30 23:33:58','j','j','j','363b122c528f54df4a0446b6bab05515'),(27,'2023-01-31 03:31:50','2023-01-31 03:31:50','jay','jay','jay','baba327d241746ee0829e7e88117d4d5'),(28,'2023-01-31 23:23:00','2023-01-31 23:23:00','Pranav','Nair','pranavjnair','5f4dcc3b5aa765d61d8327deb882cf99'),(29,'2023-02-01 23:49:20','2023-02-01 23:49:20','UserF','UserL','user1','24c9e15e52afc47c225b757e7bee1f9d'),(30,'2023-02-02 00:10:17','2023-02-02 00:10:17','johnn','doee','testing2','a119e534072584a0ea88cdea4664aecd'),(31,'2023-02-02 00:44:07','2023-02-02 00:44:07','Janee','Doee','testing6','fd3922914dc2777bb67913efa313ed17'),(32,'2023-02-02 01:02:38','2023-02-02 01:02:38','ex1f','ex1l','ex1','5813fcecdebd817c2ae25cf5ef52950b'),(33,'2023-02-02 02:48:23','2023-02-02 02:48:23','a','a','a','0cc175b9c0f1b6a831c399e269772661'),(34,'2023-02-02 02:48:35','2023-02-02 02:48:35','b','ab','ab','187ef4436122d1cc2f40dc2b92f0eba0'),(35,'2023-02-02 03:02:43','2023-02-02 03:02:43','example3','example3','example3','c458fb5edb84c54f4dc42804622aa0c5'),(36,'2023-02-02 18:32:41','2023-02-02 18:32:41','aa','aa','aa','4124bc0a9335c27f086f24ba207a4912'),(37,'2023-02-03 23:14:50','2023-02-03 23:14:50','g','g','g','b2f5ff47436671b6e533d8dc3614845d'),(38,'2023-02-04 02:29:47','2023-02-04 02:29:47','df','df','ds','eff7d5dba32b4da32d9a67a519434d3f'),(39,'2023-02-04 02:29:57','2023-02-04 02:29:57','df','df','df','eff7d5dba32b4da32d9a67a519434d3f'),(40,'2023-02-05 17:05:28','2023-02-05 17:05:28','example','test','exampletest','10483fa5fceb76d18765067b1373ca09'),(41,'2023-02-05 22:11:04','2023-02-05 22:11:04','Test22','Test22L','Test22','e6ec6632609860f23a78cfcfebc2b52f'),(42,'2023-02-05 22:14:32','2023-02-05 22:14:32','Test23','Test23','Test23','c4ca021841ba7b4b93c06f4d34cc36eb'),(43,'2023-02-05 22:31:21','2023-02-05 22:31:21','Test24','Test24','Test24','6a3febbb5cdc4792ae0ec6914db6bf40'),(44,'2023-02-05 22:36:20','2023-02-05 22:36:20','testing24','testing24','testing24','cbafda5299eb63752e0e7593dc4420cb'),(45,'2023-02-05 22:37:37','2023-02-05 22:37:37','testing25','testing25','testing25','264918b7280404f8f7bcae78394db1f5'),(46,'2023-02-05 23:48:13','2023-02-05 23:48:13','tf','tl','t1','83f1535f99ab0bf4e9d02dfd85d3e3f7'),(47,'2023-02-06 00:18:50','2023-02-06 00:18:50','55','test','test55','7e39cfce74d155294619613f42484f18');
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-06  2:27:09
