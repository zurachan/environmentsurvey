CREATE DATABASE  IF NOT EXISTS `ES` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ES`;
-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: 35.247.129.160    Database: ES
-- ------------------------------------------------------
-- Server version	8.0.18-google

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
-- Table structure for table `Answers`
--

DROP TABLE IF EXISTS `Answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Answers` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `CreatedDate` datetime NOT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  `DeletedDate` datetime DEFAULT NULL,
  `Answer` text COLLATE utf8mb4_unicode_ci,
  `isCorrect` int(11) NOT NULL,
  `QuestionId` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_Answers_QuestionId` (`QuestionId`),
  CONSTRAINT `FK__Answers__Questio__30F848ED` FOREIGN KEY (`QuestionId`) REFERENCES `Questions` (`Id`) ON DELETE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Answers`
--

LOCK TABLES `Answers` WRITE;
/*!40000 ALTER TABLE `Answers` DISABLE KEYS */;
INSERT INTO `Answers` VALUES (1,'2021-08-22 14:03:52',NULL,NULL,'Troposphere',1,1),(2,'2021-08-22 14:03:52',NULL,NULL,'Mesosphere',2,1),(3,'2021-08-22 14:03:53',NULL,NULL,'Thermosphere',2,1),(4,'2021-08-22 14:03:53',NULL,NULL,'Stratosphere',2,1),(5,'2021-08-22 14:04:20',NULL,NULL,'Oxygen',2,2),(6,'2021-08-22 14:04:21',NULL,NULL,'Carbon',2,2),(7,'2021-08-22 14:04:21',NULL,NULL,'Nitrogen',1,2),(8,'2021-08-22 14:04:21',NULL,NULL,'Hydrogen',2,2),(9,'2021-08-22 14:04:53',NULL,NULL,'meteorology',1,3),(10,'2021-08-22 14:04:54',NULL,NULL,'climatology',2,3),(11,'2021-08-22 14:04:54',NULL,NULL,'aeronomy',2,3),(12,'2021-08-22 14:04:54',NULL,NULL,'aerology',2,3),(13,'2021-08-22 14:05:27',NULL,NULL,'Mesosphere',2,4),(14,'2021-08-22 14:05:27',NULL,NULL,'Troposphere',2,4),(15,'2021-08-22 14:05:28',NULL,NULL,'Exosphere',1,4),(16,'2021-08-22 14:05:28',NULL,NULL,'Stratosphere',2,4),(17,'2021-08-22 14:07:46',NULL,NULL,'CO2',2,5),(18,'2021-08-22 14:07:47',NULL,NULL,'CH4',2,5),(19,'2021-08-22 14:07:48',NULL,NULL,'Water Vapor',2,5),(20,'2021-08-22 14:07:48',NULL,NULL,'All of the above',1,5),(21,'2021-08-22 14:09:00',NULL,NULL,'The name of climate change legislation that was passed by Congress',2,6),(22,'2021-08-22 14:09:00',NULL,NULL,'When you paint your house green to become an environmentalist',2,6),(23,'2021-08-22 14:09:00',NULL,NULL,'When the gases in our atmosphere trap heat and block it from escaping our planet',1,6),(24,'2021-08-22 14:09:01',NULL,NULL,'When you build a green house',2,6),(25,'2021-08-22 14:09:40',NULL,NULL,'The ice sheets are declining, glaciers are in retreat globally, and our oceans are more acidic than ever',2,7),(26,'2021-08-22 14:09:41',NULL,NULL,'Surface temperatures are setting new heat records about each year',2,7),(27,'2021-08-22 14:09:41',NULL,NULL,'More extreme weather like droughts, heat waves, and hurricanes',2,7),(28,'2021-08-22 14:09:42',NULL,NULL,'All of the above',1,7),(29,'2021-08-22 14:10:29',NULL,NULL,'To protect biodiversity and end the deforestation of the world’s rainforests',2,8),(30,'2021-08-22 14:10:30',NULL,NULL,'To keep global temperature rise well below 2℃ pre-industrial levels and to pursue a path to limit warming to 1.5℃',1,8),(31,'2021-08-22 14:10:30',NULL,NULL,'To limit sea level rise to 3 feet above current levels',2,8),(32,'2021-08-22 14:10:30',NULL,NULL,'To pursue a goal of 100% clean, renewable energy',2,8),(33,'2021-08-22 14:11:01',NULL,NULL,'UK',2,9),(34,'2021-08-22 14:11:01',NULL,NULL,'USA',2,9),(35,'2021-08-22 14:11:02',NULL,NULL,'China',1,9),(36,'2021-08-22 14:11:02',NULL,NULL,'Russia',2,9),(37,'2021-08-22 14:11:33',NULL,NULL,'1%',2,10),(38,'2021-08-22 14:11:34',NULL,NULL,'14%',1,10),(39,'2021-08-22 14:11:34',NULL,NULL,'33%',2,10),(40,'2021-08-22 14:11:34',NULL,NULL,'70%',2,10),(41,'2021-08-22 14:15:24',NULL,NULL,'It is a biodegradable material so it eventually disintegrates',2,11),(42,'2021-08-22 14:15:24',NULL,NULL,'It never fully goes away, it just breaks into little pieces',1,11),(43,'2021-08-22 14:15:25',NULL,NULL,'There is no such thing as plastic waste, all plastic is recycled',2,11),(44,'2021-08-22 14:15:25',NULL,NULL,'All of the above',2,11),(45,'2021-08-22 14:15:51',NULL,NULL,'They mistake it for food and cannot digest it',2,12),(46,'2021-08-22 14:15:51',NULL,NULL,'They can get tangled in it which hinders their ability to swim',2,12),(47,'2021-08-22 14:15:52',NULL,NULL,'Bacteria on plastic can give coral diseases',2,12),(48,'2021-08-22 14:15:52',NULL,NULL,'A, B, and C',1,12),(49,'2021-08-22 14:16:15',NULL,NULL,'1 million tons',2,13),(50,'2021-08-22 14:16:16',NULL,NULL,'8 million tons',1,13),(51,'2021-08-22 14:16:16',NULL,NULL,'20 million tons',2,13),(52,'2021-08-22 14:16:17',NULL,NULL,'50 million tons',2,13),(53,'2021-08-22 14:16:44',NULL,NULL,'52',2,14),(54,'2021-08-22 14:16:45',NULL,NULL,'693',1,14),(55,'2021-08-22 14:16:45',NULL,NULL,'1,326',2,14),(56,'2021-08-22 14:16:45',NULL,NULL,'5,489',2,14),(57,'2021-08-22 14:17:58',NULL,NULL,'9%',1,15),(58,'2021-08-22 14:17:58',NULL,NULL,'35%',2,15),(59,'2021-08-22 14:17:58',NULL,NULL,'50%',2,15),(60,'2021-08-22 14:17:59',NULL,NULL,'75%',2,15),(61,'2021-08-22 14:18:25',NULL,NULL,'25,000',2,16),(62,'2021-08-22 14:18:26',NULL,NULL,'100,000',2,16),(63,'2021-08-22 14:18:26',NULL,NULL,'250,000,000',2,16),(64,'2021-08-22 14:18:26',NULL,NULL,'500,000,000',1,16),(65,'2021-08-22 14:19:01',NULL,NULL,'1%',2,17),(66,'2021-08-22 14:19:02',NULL,NULL,'5%',1,17),(67,'2021-08-22 14:19:02',NULL,NULL,'30%',2,17),(68,'2021-08-22 14:19:03',NULL,NULL,'It doesn\'t account for any part because plastic is not made using oil',2,17),(69,'2021-08-22 14:19:30',NULL,NULL,'12 minutes',1,18),(70,'2021-08-22 14:19:31',NULL,NULL,'1 hour',2,18),(71,'2021-08-22 14:19:31',NULL,NULL,'1 day',2,18),(72,'2021-08-22 14:19:32',NULL,NULL,'1 week',2,18),(73,'2021-08-22 14:20:57',NULL,NULL,'2020',2,19),(74,'2021-08-22 14:20:57',NULL,NULL,'2050',1,19),(75,'2021-08-22 14:20:58',NULL,NULL,'2250',2,19),(76,'2021-08-22 14:20:58',NULL,NULL,'3000',2,19),(77,'2021-08-22 14:25:36',NULL,NULL,'A type of organism that is at risk of extinction.',1,20),(78,'2021-08-22 14:25:36',NULL,NULL,'A species found on land and in the ocean.',2,20),(79,'2021-08-22 14:25:36',NULL,NULL,'A species that is threatened by prey.',2,20),(80,'2021-08-22 14:25:37',NULL,NULL,'All of the above.',2,20),(81,'2021-08-22 14:26:13',NULL,NULL,'100%',2,21),(82,'2021-08-22 14:26:13',NULL,NULL,'30%',2,21),(83,'2021-08-22 14:26:14',NULL,NULL,'65%',2,21),(84,'2021-08-22 14:26:14',NULL,NULL,'90%',1,21),(85,'2021-08-22 14:26:42',NULL,NULL,'Buy and use oxybenzone and octinoxate-free sunscreen.',2,22),(86,'2021-08-22 14:26:42',NULL,NULL,'Avoid purchasing coral.',2,22),(87,'2021-08-22 14:26:43',NULL,NULL,'Choose seafood that has been sustainably sourced.',2,22),(88,'2021-08-22 14:26:43',NULL,NULL,'All of the above.',1,22),(89,'2021-08-22 14:27:23',NULL,NULL,'50 per day.',2,23),(90,'2021-08-22 14:27:23',NULL,NULL,'175 per day.',2,23),(91,'2021-08-22 14:27:24',NULL,NULL,'100 per day.',1,23),(92,'2021-08-22 14:27:24',NULL,NULL,'15 per day.',2,23),(93,'2021-08-22 14:27:51',NULL,NULL,'Microplastics are not a threat to crustaceans because they are biodegradable and safe to digest.',2,24),(94,'2021-08-22 14:27:51',NULL,NULL,'Microplastics are so small that they do not post any harm to crustaceans or humans.',2,24),(95,'2021-08-22 14:27:52',NULL,NULL,'Microplastics can damage organs and increase exposure to toxic chemicals. This can threaten immune function, growth and reproduction. This has potentially larger implications up the food chain for humans.',1,24),(96,'2021-08-22 14:27:52',NULL,NULL,'None of the above.',2,24),(97,'2021-08-22 14:29:10',NULL,NULL,'Giraffes.',2,25),(98,'2021-08-22 14:29:11',NULL,NULL,'Elephants',2,25),(99,'2021-08-22 14:29:11',NULL,NULL,'Whales',2,25),(100,'2021-08-22 14:29:12',NULL,NULL,'All of the above.',1,25),(101,'2021-08-22 14:30:19',NULL,NULL,'Afghanistan',2,26),(102,'2021-08-22 14:30:20',NULL,NULL,'Guatemala',2,26),(103,'2021-08-22 14:30:20',NULL,NULL,'Vietnam',2,26),(104,'2021-08-22 14:30:20',NULL,NULL,'All of the above',1,26),(105,'2021-08-22 14:30:55',NULL,NULL,'The United States',1,27),(106,'2021-08-22 14:30:55',NULL,NULL,'Denmark',2,27),(107,'2021-08-22 14:30:55',NULL,NULL,'Portugal',2,27),(108,'2021-08-22 14:30:56',NULL,NULL,'Costa Rica',2,27),(109,'2021-08-22 14:31:26',NULL,NULL,'Hydropower',2,28),(110,'2021-08-22 14:31:26',NULL,NULL,'Wind',2,28),(111,'2021-08-22 14:31:27',NULL,NULL,'Natural gas',1,28),(112,'2021-08-22 14:31:27',NULL,NULL,'Solar',2,28),(113,'2021-08-22 14:31:51',NULL,NULL,'They contribute to environmental degradation and pollution',2,29),(114,'2021-08-22 14:31:51',NULL,NULL,'They harm local communities',2,29),(115,'2021-08-22 14:31:52',NULL,NULL,'They contribute to human health problems',2,29),(116,'2021-08-22 14:31:52',NULL,NULL,'All of the above',1,29),(117,'2021-08-22 14:32:20',NULL,NULL,'1%',2,30),(118,'2021-08-22 14:32:20',NULL,NULL,'11%',1,30),(119,'2021-08-22 14:32:21',NULL,NULL,'40%',2,30),(120,'2021-08-22 14:32:21',NULL,NULL,'70%',2,30),(121,'2021-08-22 14:32:44',NULL,NULL,'Solar',1,31),(122,'2021-08-22 14:32:44',NULL,NULL,'Solar',1,32),(123,'2021-08-22 14:32:45',NULL,NULL,'Biomass',2,31),(124,'2021-08-22 14:32:45',NULL,NULL,'Biomass',2,32),(125,'2021-08-22 14:32:45',NULL,NULL,'Geothermal',2,31),(126,'2021-08-22 14:32:45',NULL,NULL,'Geothermal',2,32),(127,'2021-08-22 14:32:45',NULL,NULL,'None of the above',2,31),(128,'2021-08-22 14:32:45',NULL,NULL,'None of the above',2,32),(129,'2021-08-22 14:33:15',NULL,NULL,'0',2,33),(130,'2021-08-22 14:33:15',NULL,NULL,'20',2,33),(131,'2021-08-22 14:33:15',NULL,NULL,'70',2,33),(132,'2021-08-22 14:33:16',NULL,NULL,'140',1,33),(133,'2021-08-22 14:33:45',NULL,NULL,'Hawaii',2,34),(134,'2021-08-22 14:33:46',NULL,NULL,'California',2,34),(135,'2021-08-22 14:33:46',NULL,NULL,'Maine',2,34),(136,'2021-08-22 14:33:46',NULL,NULL,'All of the above.',1,34),(137,'2021-08-24 16:39:17',NULL,NULL,'Minimal tillage',2,35),(138,'2021-08-24 16:39:17',NULL,NULL,'Crop Rotation',2,35),(139,'2021-08-24 16:39:17',NULL,NULL,'Composting',2,35),(140,'2021-08-24 16:39:17',NULL,NULL,'Monoculture',1,35),(141,'2021-08-24 16:39:53',NULL,NULL,'Crop Rotation',1,36),(142,'2021-08-24 16:39:53',NULL,NULL,'Cover crops',2,36),(143,'2021-08-24 16:39:53',NULL,NULL,'Biodiversity',2,36),(144,'2021-08-24 16:39:53',NULL,NULL,'None of the above',2,36),(145,'2021-08-24 16:40:20',NULL,NULL,'28%',2,37),(146,'2021-08-24 16:40:20',NULL,NULL,'33%',2,37),(147,'2021-08-24 16:40:21',NULL,NULL,'46%',1,37),(148,'2021-08-24 16:40:21',NULL,NULL,'54%',2,37),(149,'2021-08-24 16:40:56',NULL,NULL,'Fossil fuels industry',2,38),(150,'2021-08-24 16:40:56',NULL,NULL,'Animal Agriculture',1,38),(151,'2021-08-24 16:40:56',NULL,NULL,'Solar and Wind',2,38),(152,'2021-08-24 16:40:56',NULL,NULL,'Transportation',2,38),(153,'2021-08-24 16:41:24',NULL,NULL,'Conventional',2,39),(154,'2021-08-24 16:41:24',NULL,NULL,'Organic',2,39),(155,'2021-08-24 16:41:24',NULL,NULL,'Regenerative',1,39),(156,'2021-08-24 16:41:24',NULL,NULL,'Organic and Regenerative',2,39),(157,'2021-08-24 16:41:54',NULL,NULL,'Glyphosate',2,40),(158,'2021-08-24 16:41:54',NULL,NULL,'Atrazine',2,40),(159,'2021-08-24 16:41:54',NULL,NULL,'Paraquat',2,40),(160,'2021-08-24 16:41:54',NULL,NULL,'All of the above',1,40),(161,'2021-08-24 16:42:31',NULL,NULL,'1/3',1,41),(162,'2021-08-24 16:42:31',NULL,NULL,'1/4',2,41),(163,'2021-08-24 16:42:31',NULL,NULL,'1/8',2,41),(164,'2021-08-24 16:42:31',NULL,NULL,'1/5',2,41),(165,'2021-08-30 11:48:35',NULL,NULL,'A',1,42),(166,'2021-08-30 11:48:35',NULL,NULL,'B',2,42),(167,'2021-08-30 11:48:35',NULL,NULL,'C',2,42),(168,'2021-08-30 11:48:35',NULL,NULL,'D',2,42);
/*!40000 ALTER TABLE `Answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FAQs`
--

DROP TABLE IF EXISTS `FAQs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `FAQs` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `CreatedDate` datetime NOT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  `DeletedDate` datetime DEFAULT NULL,
  `Issue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Solution` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FAQs`
--

LOCK TABLES `FAQs` WRITE;
/*!40000 ALTER TABLE `FAQs` DISABLE KEYS */;
INSERT INTO `FAQs` VALUES (1,'2021-08-28 11:27:29',NULL,NULL,'How to register for the survey?','Joining survey panels is very easy. You’ll be presented with an online registration form, which will ask some basic questions such as your name, email address, date of birth, etc.\n'),(2,'2021-08-28 11:27:39',NULL,NULL,'How to participate in the survey?','First, you need to choose a seminar to register. After that, admin will accept or decline your registration request. If it is approved, you will be able to participate in the surveys of that seminar.'),(3,'2021-08-28 11:27:47',NULL,NULL,'How will I be intimated with the new survey?','After registration, you will get E-mail updates about our latest and special seminals.'),(4,'2021-08-28 11:27:56',NULL,NULL,'What if it gives error, after participating in the entire survey, and clicked on the submit button at the last for submitting the survey?','I’m sorry to hear that. Please contact support about your issue.'),(5,'2021-08-28 11:28:05',NULL,NULL,'Why I am unable to participate in the survey?','There are two reasons for this. First, you are not a registered user and second, it is a technical problem'),(6,'2021-08-28 11:28:14',NULL,NULL,'Why my registration request is not accepted?','Because you don\'t belong to institution.'),(7,'2021-08-28 11:28:21',NULL,NULL,'Will there be any benefit if participated in the survey?','If you won, you will get prize and reward points at school.'),(8,'2021-08-28 11:28:28',NULL,NULL,'How to participate in the competitions?','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin non elit eros. Ut nisi mauris, rhoncus consectetur viverra a, consequat quis quam. '),(9,'2021-08-28 11:28:36',NULL,NULL,'What if there are some arrears in participating the survey?','Cras diam augue, congue eget iaculis at, porttitor fermentum sapien. Pellentesque erat lorem, fermentum quis risus eget, dapibus cursus purus. Fusce posuere sapien a rhoncus rhoncus.');
/*!40000 ALTER TABLE `FAQs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Questions`
--

DROP TABLE IF EXISTS `Questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Questions` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `CreatedDate` datetime NOT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  `DeletedDate` datetime DEFAULT NULL,
  `Question` text COLLATE utf8mb4_unicode_ci,
  `SubjectId` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_Questions_SubjectId` (`SubjectId`),
  CONSTRAINT `FK__Questions__Subject__36B17696` FOREIGN KEY (`SubjectId`) REFERENCES `Subjects` (`Id`) ON DELETE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Questions`
--

LOCK TABLES `Questions` WRITE;
/*!40000 ALTER TABLE `Questions` DISABLE KEYS */;
INSERT INTO `Questions` VALUES (1,'2021-08-22 14:03:51',NULL,NULL,'Name the atmospheric layer closest to the ground',1),(2,'2021-08-22 14:04:20',NULL,NULL,'The most abundant gas on the earth’s atmosphere is',1),(3,'2021-08-22 14:04:53',NULL,NULL,'The study of weather is called?',1),(4,'2021-08-22 14:05:26',NULL,NULL,'Which one of the following is NOT a primary layer of the atmosphere?',1),(5,'2021-08-22 14:07:46',NULL,NULL,'Which of the following is a greenhouse gas?',1),(6,'2021-08-22 14:08:59',NULL,NULL,'What is the Greenhouse effect?',1),(7,'2021-08-22 14:09:40',NULL,NULL,'Which of the following are consequences associated with climate change?',1),(8,'2021-08-22 14:10:29',NULL,NULL,'What was agreed to in the \"Paris Agreement\" that came out of COP-21, held in Paris in 2015?',1),(9,'2021-08-22 14:11:00',NULL,NULL,'Which of these countries emits the most carbon dioxide?',1),(10,'2021-08-22 14:11:33',NULL,NULL,'What percentage of the global greenhouse gas emissions does the transportation sector emit?',1),(11,'2021-08-22 14:15:24',NULL,NULL,'What happens to plastic waste when left in the environment?',2),(12,'2021-08-22 14:15:50',NULL,NULL,'Why is plastic dangerous for marine life?',2),(13,'2021-08-22 14:16:15',NULL,NULL,'How many million tons of plastic are dumped in our oceans every year?',2),(14,'2021-08-22 14:16:44',NULL,NULL,'How many marine species are harmed by plastic pollution?',2),(15,'2021-08-22 14:17:57',NULL,NULL,'What percent of its plastic does the U.S. recycle?',2),(16,'2021-08-22 14:18:25',NULL,NULL,'Approximately, Americans use about how many plastic drinking straws per day?',2),(17,'2021-08-22 14:19:01',NULL,NULL,'What percentage of U.S. crude oil consumption does plastic production account for?',2),(18,'2021-08-22 14:19:30',NULL,NULL,'On average, how long is a plastic bag used by a person before being thrown away?',2),(19,'2021-08-22 14:20:56',NULL,NULL,'By what year do scientists predict plastic will outweigh fish in the ocean, pound for pound?',2),(20,'2021-08-22 14:25:35',NULL,NULL,'What is an endangered species?',3),(21,'2021-08-22 14:26:13',NULL,NULL,'What percentage of crops are dependent on bee pollination in the U.S.?',3),(22,'2021-08-22 14:26:41',NULL,NULL,'What can you do to help protect coral reefs?',3),(23,'2021-08-22 14:27:22',NULL,NULL,'Poaching is a severe threat to elephants. How many elephants are killed for their tusks?',3),(24,'2021-08-22 14:27:50',NULL,NULL,'How are microplastics (plastics that are less than 5 millimeters long) a threat to crustaceans?',3),(25,'2021-08-22 14:29:10',NULL,NULL,'Which of the following are threatened with extinction?',3),(26,'2021-08-22 14:30:19',NULL,NULL,'Which of these countries have vowed to use only 100% renewable energy by 2050?',4),(27,'2021-08-22 14:30:54',NULL,NULL,'Which country has not run completely on renewable energy for a period of time?',4),(28,'2021-08-22 14:31:26',NULL,NULL,'Which of the following is not considered to be a source of renewable energy?',4),(29,'2021-08-22 14:31:50',NULL,NULL,'Which of the following are negative impacts of burning fossil fuels?',4),(30,'2021-08-22 14:32:20',NULL,NULL,'In 2019, about how much of the United States’ energy consumption derived from renewable sources?',4),(31,'2021-08-22 14:32:44',NULL,NULL,'Which is one of the fastest growing renewable energy sectors in the world?',4),(32,'2021-08-22 14:32:44',NULL,NULL,'Which is one of the fastest growing renewable energy sectors in the world?',4),(33,'2021-08-22 14:33:14',NULL,NULL,'According to scientists, about how many countries could run entirely on wind, solar and water power by 2050?',4),(34,'2021-08-22 14:33:45',NULL,NULL,'Which US state has proposed to commit to 100% renewable energy electricity?',4),(35,'2021-08-24 16:39:17',NULL,NULL,'Which of the following is NOT a regenerative agriculture practice?',5),(36,'2021-08-24 16:39:53',NULL,NULL,'What is the practice of growing a series of different types of crops in the same area across a sequence of growing seasons? This practice reduces reliance on one set of nutrients, pest and weed pressure, and the probability of developing resistant pest and weeds',5),(37,'2021-08-24 16:40:20',NULL,NULL,'What percentage of the world’s forests have been destroyed?',5),(38,'2021-08-24 16:40:56',NULL,NULL,'What sector is the 2nd largest contributor to human-made greenhouse gas (GHG) emissions and is a leading cause of deforestation, water and air pollution and biodiversity loss?',5),(39,'2021-08-24 16:41:24',NULL,NULL,'What type of farming is defined by the creation of beneficial ecological outcomes?',5),(40,'2021-08-24 16:41:54',NULL,NULL,'Which of the following pesticides are banned in other countries but not the U.S.?',5),(41,'2021-08-24 16:42:31',NULL,NULL,'What percentage of food globally is wasted annually?',5),(42,'2021-08-30 11:48:35',NULL,NULL,'quest',2);
/*!40000 ALTER TABLE `Questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Results`
--

DROP TABLE IF EXISTS `Results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Results` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `CreatedDate` datetime NOT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  `DeletedDate` datetime DEFAULT NULL,
  `Point` int(11) NOT NULL,
  `SubmitTime` double NOT NULL,
  `UserId` int(11) NOT NULL,
  `SurveyId` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_Results_SurveyId` (`SurveyId`),
  KEY `IX_Results_UserId` (`UserId`),
  CONSTRAINT `FK__Results__SurveyI__36B12243` FOREIGN KEY (`SurveyId`) REFERENCES `Surveys` (`Id`) ON DELETE RESTRICT,
  CONSTRAINT `FK__Results__UserId__35BCFE0A` FOREIGN KEY (`UserId`) REFERENCES `Users` (`Id`) ON DELETE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Results`
--

LOCK TABLES `Results` WRITE;
/*!40000 ALTER TABLE `Results` DISABLE KEYS */;
INSERT INTO `Results` VALUES (3,'2021-08-29 09:44:13',NULL,NULL,3,40,38,7),(7,'2021-08-30 09:59:41',NULL,NULL,8,440,2,8);
/*!40000 ALTER TABLE `Results` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Seminars`
--

DROP TABLE IF EXISTS `Seminars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Seminars` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `CreatedDate` datetime NOT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  `DeletedDate` datetime DEFAULT NULL,
  `Name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Description` text COLLATE utf8mb4_unicode_ci,
  `Image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Location` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Author` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SubjectId` int(11) NOT NULL,
  `forUser` int(11) NOT NULL,
  `StartDate` datetime NOT NULL,
  `EndTime` datetime NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_Seminars_SubjectId` (`SubjectId`),
  CONSTRAINT `FK__Seminars__Subject__36B57510` FOREIGN KEY (`SubjectId`) REFERENCES `Subjects` (`Id`) ON DELETE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Seminars`
--

LOCK TABLES `Seminars` WRITE;
/*!40000 ALTER TABLE `Seminars` DISABLE KEYS */;
INSERT INTO `Seminars` VALUES (1,'2021-08-22 14:42:06','2021-08-28 10:44:07',NULL,'ACT ON CLIMATE CHANGE','The scientific evidence is clear and irrefutable — human activity is causing our planet to warm at an alarming rate. International bodies of scientists have warned that we have just over a decade to halve our emissions to avoid the most devastating impacts of climate change on our food supply, national security, global health, extreme weather, and more.\r\nThere is simply no time to waste. We need urgent and ambitious action at every level, from heads of state submitting increased national commitments to the Paris Agreement on climate change and cities walking the talk, to private sector leaders addressing climate change at every step of the supply chain, finance heads committing to divest from fossil fuels and green their investments and individual citizens using their unique influence to drive change and make an impact.','https://res.cloudinary.com/dhy6m4jwi/image/upload/v1630147328/vpenvrydcid6z6a7yoom.jpg-vpenvrydcid6z6a7yoom','Hanoi','Harry Potter',1,2,'2021-08-29 05:08:00','2021-08-30 12:08:00'),(2,'2021-08-22 14:45:22','2021-08-28 10:41:50',NULL,'GO CLEAN ENERGY','YOU MAY BE ABLE TO CHOOSE WHAT TURNS ON YOUR LIGHTS.\r\nConsumer demand for renewable energy sources is one of the most immediate actions you can take to lower your carbon footprint. As the cost of constructing renewable energy sources like wind, solar and geothermal decreases, renewable energy is now an economical option for utilities.\r\nWouldn’t you be happier knowing that when you flip the light switch at home that electricity is flowing from a solar panel or wind turbine?','https://res.cloudinary.com/dhy6m4jwi/image/upload/v1630147305/n2nmzqohmsjqjagskl5q.jpg-n2nmzqohmsjqjagskl5q','Hanoi','Barry Allen',4,2,'2021-08-30 07:08:00','2021-09-06 17:09:38'),(3,'2021-08-24 04:02:49','2021-08-30 02:52:34',NULL,'END PLASTIC POLLUTION','This campaign is changing human attitudes about and behavior toward  plastics and reducing plastic pollution. The End Plastic Pollution campaign helps people understand the impacts of plastic pollution on human and ecosystem health and how everyday actions can lessen the problem. \r\n\r\nThe campaign draws attention to the harmful effects of plastic in our environment — harming marine and human health, littering beaches and landscapes, clogging waste streams and landfills — and empowers people to make a difference.  ','https://res.cloudinary.com/dhy6m4jwi/image/upload/v1630147268/qwq5li9ibut5uypx0kyt.jpg-qwq5li9ibut5uypx0kyt','Ha Noi','Tony Stark',2,2,'2021-08-31 07:08:00','2021-09-15 17:09:13'),(4,'2021-08-24 16:30:11','2021-08-28 10:40:01',NULL,'PROTECT OUR SPECIES','The Endangered Species Act has conserved some of our nation’s most iconic species since 1973. It’s also provided leadership to other country’s guidelines for protecting species.\r\n\r\nThis act has an excellent track record, effectively implementing conservation strategies for iconic creatures, including the Florida manatee, the grizzly bear and the bald eagle.\r\n\r\nToday, however, it’s under attack. The recent proposed revisions by the EPA would likely hurt the near-perfect record of preventing species extinction. ','https://res.cloudinary.com/dhy6m4jwi/image/upload/v1630147191/igwhfd3jhbpisenyzr6q.jpg-igwhfd3jhbpisenyzr6q','Ha Noi','Steve Rogers',3,2,'2021-08-31 08:08:00','2021-09-22 17:09:02'),(5,'2021-08-27 12:18:35','2021-08-28 10:22:36','2021-08-28 10:39:33','test1','test edit ảnh Test 1','https://res.cloudinary.com/dhy6m4jwi/image/upload/v1630146145/ilpm0rku1p6ddpsbitpl.jpg-ilpm0rku1p6ddpsbitpl','HN','bach',1,2,'2021-08-28 06:08:09','2021-08-31 03:08:14'),(6,'2021-08-30 03:10:54',NULL,NULL,'Endangered Species Comprehension','Plants and animals maintain the health of an ecosystem. When a species becomes endangered, it’s a sign that an ecosystem is out of balance. And the consequences can be critical.\r\n\r\nEcosystems are groups of plants and animals that are found in the same area and interact with each other. These interactions make up and maintain the environments we know today – like rainforests, mountains and savannahs. \r\n\r\nBut the balance within an ecosystem isn’t always easy to maintain; the loss of one species often triggers the loss of others. ','https://res.cloudinary.com/dhy6m4jwi/image/upload/v1630292960/n16zvgfpajczb47bgqgx.jpg-n16zvgfpajczb47bgqgx','Ha Noi','John Wick',3,2,'2021-09-01 08:09:00','2021-09-22 17:09:35'),(7,'2021-08-30 04:48:58','2021-08-30 08:21:20',NULL,'Plastic Pollution Crisis','Plastic pollution has become one of the most pressing environmental issues, as rapidly increasing production of disposable plastic products overwhelms the world’s ability to deal with them. Plastic pollution is most visible in developing Asian and African nations, where garbage collection systems are often inefficient or nonexistent. But the developed world, especially in countries with low recycling rates, also has trouble properly collecting discarded plastics. Plastic trash has become so ubiquitous it has prompted efforts to write a global treaty negotiated by the United Nations.','https://res.cloudinary.com/dhy6m4jwi/image/upload/v1630298928/jrgdgiovfcyfh9if141q.jpg-jrgdgiovfcyfh9if141q','Ha Noi','Arthur Curry',2,2,'2021-08-31 00:08:00','2021-09-28 17:09:59'),(8,'2021-08-30 11:45:54',NULL,NULL,'new seminar','demo new semianr','https://res.cloudinary.com/dhy6m4jwi/image/upload/v1630323945/dqpibrafhfhhxsjj0fuo.jpg-dqpibrafhfhhxsjj0fuo','Ha noi','Mr Tuan',2,2,'2021-08-30 18:08:28','2021-09-04 04:09:33');
/*!40000 ALTER TABLE `Seminars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Subjects`
--

DROP TABLE IF EXISTS `Subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Subjects` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `CreatedDate` datetime NOT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  `DeletedDate` datetime DEFAULT NULL,
  `Subject1` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Subjects`
--

LOCK TABLES `Subjects` WRITE;
/*!40000 ALTER TABLE `Subjects` DISABLE KEYS */;
INSERT INTO `Subjects` VALUES (1,'2021-08-22 13:44:40',NULL,NULL,'Climate'),(2,'2021-08-22 14:13:37',NULL,NULL,'Plastic Pollution'),(3,'2021-08-22 14:24:17',NULL,NULL,'Species'),(4,'2021-08-22 14:29:48',NULL,NULL,'CLEAN ENERGY'),(5,'2021-08-24 16:35:23','2021-08-24 16:35:45',NULL,'Regenerative Agriculture');
/*!40000 ALTER TABLE `Subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SupportInfo`
--

DROP TABLE IF EXISTS `SupportInfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SupportInfo` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `CreatedDate` datetime NOT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  `DeletedDate` datetime DEFAULT NULL,
  `Company` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `CompanyTel` text COLLATE utf8mb4_unicode_ci,
  `Supporter` text COLLATE utf8mb4_unicode_ci,
  `SupporterTel` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SupportInfo`
--

LOCK TABLES `SupportInfo` WRITE;
/*!40000 ALTER TABLE `SupportInfo` DISABLE KEYS */;
INSERT INTO `SupportInfo` VALUES (1,'2021-08-28 11:35:01','2021-08-30 11:49:28',NULL,'Environment Survey','Số 8A Tôn Thất Thuyết, Mỹ Đình, Nam Từ Liêm, Hà Nội','02473008855','John Doe','02473008877');
/*!40000 ALTER TABLE `SupportInfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Survey_Questions`
--

DROP TABLE IF EXISTS `Survey_Questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Survey_Questions` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `CreatedDate` datetime NOT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  `DeletedDate` datetime DEFAULT NULL,
  `SurveyId` int(11) NOT NULL,
  `QuestionId` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_Survey_Questions_QuestionId` (`QuestionId`),
  KEY `IX_Survey_Questions_SurveyId` (`SurveyId`),
  CONSTRAINT `FK__Survey_Qu__Quest__3A81B327` FOREIGN KEY (`QuestionId`) REFERENCES `Questions` (`Id`) ON DELETE RESTRICT,
  CONSTRAINT `FK__Survey_Qu__Surve__398D8EEE` FOREIGN KEY (`SurveyId`) REFERENCES `Surveys` (`Id`) ON DELETE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Survey_Questions`
--

LOCK TABLES `Survey_Questions` WRITE;
/*!40000 ALTER TABLE `Survey_Questions` DISABLE KEYS */;
INSERT INTO `Survey_Questions` VALUES (23,'0001-01-01 00:00:00',NULL,NULL,7,1),(24,'0001-01-01 00:00:00',NULL,NULL,7,2),(25,'0001-01-01 00:00:00',NULL,NULL,7,3),(26,'0001-01-01 00:00:00',NULL,NULL,7,4),(27,'0001-01-01 00:00:00',NULL,NULL,7,5),(28,'0001-01-01 00:00:00',NULL,NULL,8,26),(29,'0001-01-01 00:00:00',NULL,NULL,8,27),(30,'0001-01-01 00:00:00',NULL,NULL,8,28),(31,'0001-01-01 00:00:00',NULL,NULL,8,29),(32,'0001-01-01 00:00:00',NULL,NULL,8,30),(33,'0001-01-01 00:00:00',NULL,NULL,8,31),(34,'0001-01-01 00:00:00',NULL,NULL,8,32),(35,'0001-01-01 00:00:00',NULL,NULL,8,33),(36,'0001-01-01 00:00:00',NULL,NULL,9,11),(37,'0001-01-01 00:00:00',NULL,NULL,9,12),(38,'0001-01-01 00:00:00',NULL,NULL,9,13),(39,'0001-01-01 00:00:00',NULL,NULL,9,14),(40,'0001-01-01 00:00:00',NULL,NULL,9,15),(41,'0001-01-01 00:00:00',NULL,NULL,10,11),(42,'0001-01-01 00:00:00',NULL,NULL,10,12),(43,'0001-01-01 00:00:00',NULL,NULL,10,13),(44,'0001-01-01 00:00:00',NULL,NULL,10,14),(45,'0001-01-01 00:00:00',NULL,NULL,10,15),(46,'2021-08-30 08:01:34',NULL,NULL,10,16),(47,'0001-01-01 00:00:00',NULL,NULL,11,11),(48,'0001-01-01 00:00:00',NULL,NULL,11,12),(49,'0001-01-01 00:00:00',NULL,NULL,11,13),(50,'0001-01-01 00:00:00',NULL,NULL,11,14),(51,'0001-01-01 00:00:00',NULL,NULL,11,15),(52,'0001-01-01 00:00:00',NULL,NULL,11,16),(53,'0001-01-01 00:00:00',NULL,NULL,11,17),(54,'0001-01-01 00:00:00',NULL,NULL,12,26),(55,'0001-01-01 00:00:00',NULL,NULL,12,27),(56,'0001-01-01 00:00:00',NULL,NULL,12,28),(57,'0001-01-01 00:00:00',NULL,NULL,12,29),(58,'0001-01-01 00:00:00',NULL,NULL,12,30),(59,'0001-01-01 00:00:00',NULL,NULL,12,31),(60,'0001-01-01 00:00:00',NULL,NULL,12,32),(61,'0001-01-01 00:00:00',NULL,NULL,12,33),(62,'0001-01-01 00:00:00',NULL,NULL,13,11),(63,'0001-01-01 00:00:00',NULL,'2021-08-30 11:47:21',13,12),(64,'0001-01-01 00:00:00',NULL,NULL,13,13),(65,'0001-01-01 00:00:00',NULL,NULL,13,14),(66,'0001-01-01 00:00:00',NULL,NULL,13,15),(67,'0001-01-01 00:00:00',NULL,NULL,13,16),(68,'2021-08-30 11:47:21',NULL,NULL,13,17);
/*!40000 ALTER TABLE `Survey_Questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Surveys`
--

DROP TABLE IF EXISTS `Surveys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Surveys` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `CreatedDate` datetime NOT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  `DeletedDate` datetime DEFAULT NULL,
  `Name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `StartDate` datetime NOT NULL,
  `EndTime` datetime NOT NULL,
  `Status` int(11) NOT NULL,
  `SerminarId` int(11) NOT NULL,
  `Description` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`Id`),
  KEY `IX_Surveys_SerminarId` (`SerminarId`),
  CONSTRAINT `FK__Surveys__Sermina__2C3393D0` FOREIGN KEY (`SerminarId`) REFERENCES `Seminars` (`Id`) ON DELETE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Surveys`
--

LOCK TABLES `Surveys` WRITE;
/*!40000 ALTER TABLE `Surveys` DISABLE KEYS */;
INSERT INTO `Surveys` VALUES (7,'2021-08-27 06:09:34','2021-08-28 10:45:03',NULL,'Introduce','2021-08-29 06:00:00','2021-08-30 11:00:00',0,1,'First Appoarch'),(8,'2021-08-27 06:11:49',NULL,NULL,'First Week','2021-08-30 07:00:00','2021-09-03 17:00:00',0,2,'Introduce'),(9,'2021-08-30 02:53:43',NULL,NULL,'Introduce','2021-09-01 07:00:00','2021-09-03 17:00:00',0,3,'What is plastic pollution'),(10,'2021-08-30 08:00:48','2021-08-30 08:20:50',NULL,'Introduce','2021-08-31 06:00:00','2021-09-01 17:00:00',0,7,'Introduce what is the most important thing'),(11,'2021-08-30 08:06:14','2021-08-30 17:41:36',NULL,'Final Test','2021-09-21 06:00:00','2021-09-28 17:00:00',0,7,'Problem overview'),(12,'2021-08-30 09:22:36',NULL,NULL,'General Information','2021-09-05 06:00:00','2021-09-06 12:00:00',0,2,'Synthesize student knowledge'),(13,'2021-08-30 11:46:38',NULL,NULL,'survey test','2021-08-30 18:46:00','2021-08-31 12:00:00',0,8,'test');
/*!40000 ALTER TABLE `Surveys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserSeminars`
--

DROP TABLE IF EXISTS `UserSeminars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `UserSeminars` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `CreatedDate` datetime NOT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  `DeletedDate` datetime DEFAULT NULL,
  `UserId` int(11) NOT NULL,
  `SeminarId` int(11) NOT NULL,
  `Status` int(11) NOT NULL DEFAULT (_utf8mb4'1'),
  PRIMARY KEY (`Id`),
  KEY `IX_UserSeminars_SeminarId` (`SeminarId`),
  KEY `IX_UserSeminars_UserId` (`UserId`),
  CONSTRAINT `FK__UserSeminars__SurveyI__36B12243` FOREIGN KEY (`SeminarId`) REFERENCES `Seminars` (`Id`) ON DELETE RESTRICT,
  CONSTRAINT `FK__UserSeminars__UserId__35BCFE0A` FOREIGN KEY (`UserId`) REFERENCES `Users` (`Id`) ON DELETE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserSeminars`
--

LOCK TABLES `UserSeminars` WRITE;
/*!40000 ALTER TABLE `UserSeminars` DISABLE KEYS */;
INSERT INTO `UserSeminars` VALUES (1,'2021-08-28 11:09:04',NULL,NULL,38,1,1),(2,'2021-08-28 11:29:16',NULL,NULL,2,3,1),(3,'2021-08-28 11:30:49',NULL,NULL,2,2,1),(4,'2021-08-28 11:30:56',NULL,NULL,2,1,1),(5,'2021-08-28 11:31:03',NULL,NULL,2,4,1),(6,'2021-08-29 02:20:32',NULL,NULL,6,1,1),(7,'2021-08-30 05:12:25',NULL,NULL,6,7,1),(8,'2021-08-30 05:12:25',NULL,NULL,38,2,1),(9,'2021-08-30 05:12:25',NULL,NULL,37,2,1),(10,'2021-08-30 05:12:25',NULL,NULL,36,2,1),(11,'2021-08-30 09:56:34',NULL,NULL,2,7,1),(12,'2021-08-30 09:56:41',NULL,NULL,2,6,1),(13,'2021-08-30 09:56:41',NULL,NULL,6,2,1),(14,'2021-08-30 11:33:59',NULL,NULL,40,7,2),(15,'2021-08-30 11:34:09',NULL,NULL,40,3,1);
/*!40000 ALTER TABLE `UserSeminars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User_Answers`
--

DROP TABLE IF EXISTS `User_Answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `User_Answers` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `CreatedDate` datetime NOT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  `DeletedDate` datetime DEFAULT NULL,
  `SurveyQuestionId` int(11) NOT NULL,
  `AnswerId` int(11) DEFAULT NULL,
  `UserId` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_User_Answers_AnswerId` (`AnswerId`),
  KEY `IX_User_Answers_SurveyQuestionId` (`SurveyQuestionId`),
  KEY `IX_User_Answers_UserId` (`UserId`),
  CONSTRAINT `FK__User_Answ__Answe__3E52440B` FOREIGN KEY (`AnswerId`) REFERENCES `Answers` (`Id`) ON DELETE RESTRICT,
  CONSTRAINT `FK__User_Answ__Surve__3D5E1FD2` FOREIGN KEY (`SurveyQuestionId`) REFERENCES `Survey_Questions` (`Id`) ON DELETE RESTRICT,
  CONSTRAINT `FK__User_Answ__UserI__3F466844` FOREIGN KEY (`UserId`) REFERENCES `Users` (`Id`) ON DELETE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User_Answers`
--

LOCK TABLES `User_Answers` WRITE;
/*!40000 ALTER TABLE `User_Answers` DISABLE KEYS */;
INSERT INTO `User_Answers` VALUES (1,'2021-08-29 08:03:04',NULL,NULL,23,2,2),(2,'2021-08-29 08:03:04',NULL,NULL,24,6,2),(3,'2021-08-29 08:03:04',NULL,NULL,25,10,2),(4,'2021-08-29 08:03:04',NULL,NULL,26,13,2),(5,'2021-08-29 08:03:04',NULL,NULL,27,19,2),(6,'2021-08-29 08:51:24',NULL,NULL,23,1,6),(7,'2021-08-29 08:51:24',NULL,NULL,24,6,6),(8,'2021-08-29 08:51:24',NULL,NULL,25,11,6),(9,'2021-08-29 08:51:24',NULL,NULL,26,16,6),(10,'2021-08-29 08:51:24',NULL,NULL,27,19,6),(11,'2021-08-29 09:44:54',NULL,NULL,23,2,38),(12,'2021-08-29 09:44:54',NULL,NULL,24,7,38),(13,'2021-08-29 09:44:54',NULL,NULL,25,10,38),(14,'2021-08-29 09:44:54',NULL,NULL,26,15,38),(15,'2021-08-29 09:44:54',NULL,NULL,27,20,38),(16,'2021-08-30 09:02:15',NULL,NULL,28,104,38),(17,'2021-08-30 09:02:15',NULL,NULL,29,106,38),(18,'2021-08-30 09:02:15',NULL,NULL,30,111,38),(19,'2021-08-30 09:02:15',NULL,NULL,31,115,38),(20,'2021-08-30 09:02:15',NULL,NULL,32,118,38),(21,'2021-08-30 09:02:15',NULL,NULL,33,123,38),(22,'2021-08-30 09:02:15',NULL,NULL,34,124,38),(23,'2021-08-30 09:02:15',NULL,NULL,35,132,38),(24,'2021-08-30 09:05:29',NULL,NULL,28,101,37),(25,'2021-08-30 09:05:29',NULL,NULL,29,108,37),(26,'2021-08-30 09:05:29',NULL,NULL,31,113,37),(27,'2021-08-30 09:05:29',NULL,NULL,32,120,37),(28,'2021-08-30 09:05:29',NULL,NULL,33,125,37),(29,'2021-08-30 09:05:29',NULL,NULL,34,124,37),(30,'2021-08-30 09:05:29',NULL,NULL,35,130,37),(31,'2021-08-30 09:05:29',NULL,NULL,30,NULL,37),(32,'2021-08-30 16:31:01',NULL,NULL,28,101,36),(33,'2021-08-30 16:31:02',NULL,NULL,29,105,36),(34,'2021-08-30 16:31:02',NULL,NULL,30,111,36),(35,'2021-08-30 16:31:02',NULL,NULL,31,116,36),(36,'2021-08-30 16:31:03',NULL,NULL,32,117,36),(37,'2021-08-30 16:31:03',NULL,NULL,33,123,36),(38,'2021-08-30 16:31:03',NULL,NULL,34,124,36),(39,'2021-08-30 16:31:03',NULL,NULL,35,130,36),(40,'2021-08-30 16:33:28',NULL,NULL,28,102,38),(41,'2021-08-30 16:33:28',NULL,NULL,29,106,38),(42,'2021-08-30 16:33:29',NULL,NULL,30,110,38),(43,'2021-08-30 16:33:29',NULL,NULL,31,114,38),(44,'2021-08-30 16:33:29',NULL,NULL,32,119,38),(45,'2021-08-30 16:33:29',NULL,NULL,33,123,38),(46,'2021-08-30 16:33:30',NULL,NULL,34,124,38),(47,'2021-08-30 16:33:30',NULL,NULL,35,130,38),(48,'2021-08-30 09:47:49',NULL,NULL,28,102,36),(49,'2021-08-30 09:47:50',NULL,NULL,29,108,36),(50,'2021-08-30 09:47:50',NULL,NULL,30,110,36),(51,'2021-08-30 09:47:50',NULL,NULL,31,114,36),(52,'2021-08-30 09:47:50',NULL,NULL,32,119,36),(53,'2021-08-30 09:47:50',NULL,NULL,33,123,36),(54,'2021-08-30 09:47:50',NULL,NULL,34,124,36),(55,'2021-08-30 09:47:50',NULL,NULL,35,131,36),(56,'2021-08-30 09:49:32',NULL,NULL,28,104,36),(57,'2021-08-30 09:49:32',NULL,NULL,29,107,36),(58,'2021-08-30 09:49:32',NULL,NULL,30,111,36),(59,'2021-08-30 09:49:32',NULL,NULL,31,116,36),(60,'2021-08-30 09:49:32',NULL,NULL,32,119,36),(61,'2021-08-30 09:49:33',NULL,NULL,33,121,36),(62,'2021-08-30 09:49:33',NULL,NULL,34,128,36),(63,'2021-08-30 09:49:33',NULL,NULL,35,131,36),(64,'2021-08-30 09:57:01',NULL,NULL,28,104,36),(65,'2021-08-30 09:57:01',NULL,NULL,29,107,36),(66,'2021-08-30 09:57:01',NULL,NULL,30,111,36),(67,'2021-08-30 09:57:01',NULL,NULL,31,116,36),(68,'2021-08-30 09:57:01',NULL,NULL,32,119,36),(69,'2021-08-30 09:57:01',NULL,NULL,33,121,36),(70,'2021-08-30 09:57:01',NULL,NULL,34,124,36),(71,'2021-08-30 09:57:01',NULL,NULL,35,130,36),(72,'2021-08-30 10:07:02',NULL,NULL,28,104,2),(73,'2021-08-30 10:07:02',NULL,NULL,29,105,2),(74,'2021-08-30 10:07:02',NULL,NULL,30,111,2),(75,'2021-08-30 10:07:02',NULL,NULL,31,116,2),(76,'2021-08-30 10:07:02',NULL,NULL,32,118,2),(77,'2021-08-30 10:07:02',NULL,NULL,33,121,2),(78,'2021-08-30 10:07:02',NULL,NULL,34,122,2),(79,'2021-08-30 10:07:02',NULL,NULL,35,132,2),(80,'2021-08-30 10:48:28',NULL,NULL,28,101,6),(81,'2021-08-30 10:48:29',NULL,NULL,29,106,6),(82,'2021-08-30 10:48:29',NULL,NULL,30,110,6),(83,'2021-08-30 10:48:29',NULL,NULL,31,115,6),(84,'2021-08-30 10:48:29',NULL,NULL,32,120,6),(85,'2021-08-30 10:48:29',NULL,NULL,33,125,6),(86,'2021-08-30 10:48:29',NULL,NULL,34,128,6),(87,'2021-08-30 10:48:29',NULL,NULL,35,132,6),(88,'2021-08-30 10:50:45',NULL,NULL,28,102,36),(89,'2021-08-30 10:50:45',NULL,NULL,29,107,36),(90,'2021-08-30 10:50:45',NULL,NULL,30,111,36),(91,'2021-08-30 10:50:45',NULL,NULL,31,116,36),(92,'2021-08-30 10:50:45',NULL,NULL,32,118,36),(93,'2021-08-30 10:50:45',NULL,NULL,33,125,36),(94,'2021-08-30 10:50:45',NULL,NULL,34,124,36),(95,'2021-08-30 10:50:45',NULL,NULL,35,130,36),(96,'2021-08-30 11:36:37',NULL,NULL,28,102,37),(97,'2021-08-30 11:36:37',NULL,NULL,29,106,37),(98,'2021-08-30 11:36:37',NULL,NULL,30,109,37),(99,'2021-08-30 11:36:37',NULL,NULL,31,115,37),(100,'2021-08-30 11:36:37',NULL,NULL,32,119,37),(101,'2021-08-30 11:36:37',NULL,NULL,33,125,37),(102,'2021-08-30 11:36:37',NULL,NULL,34,126,37),(103,'2021-08-30 11:36:37',NULL,NULL,35,130,37),(104,'2021-08-30 11:40:18',NULL,NULL,28,101,6),(105,'2021-08-30 11:40:18',NULL,NULL,29,105,6),(106,'2021-08-30 11:40:18',NULL,NULL,30,109,6),(107,'2021-08-30 11:40:18',NULL,NULL,31,113,6),(108,'2021-08-30 11:40:18',NULL,NULL,32,117,6),(109,'2021-08-30 11:40:18',NULL,NULL,33,121,6),(110,'2021-08-30 11:40:18',NULL,NULL,34,122,6),(111,'2021-08-30 11:40:18',NULL,NULL,35,131,6);
/*!40000 ALTER TABLE `User_Answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Users` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `CreatedDate` datetime NOT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  `DeletedDate` datetime DEFAULT NULL,
  `Username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NumberId` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Role` text COLLATE utf8mb4_unicode_ci,
  `LastName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FirstName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Tel` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Address` text COLLATE utf8mb4_unicode_ci,
  `Gender` int(11) DEFAULT NULL,
  `Status` int(11) DEFAULT (_utf8mb4'1'),
  `Image` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Username_UNIQUE` (`Username`),
  UNIQUE KEY `Email_UNIQUE` (`Email`),
  UNIQUE KEY `Tel_UNIQUE` (`Tel`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users` VALUES (2,'2021-08-20 08:52:02','2021-08-30 10:10:02',NULL,'tuanvm','$2a$11$fp5o9XJi8sJ4WheJlyD1x.v4E58sqZEEynCN8/UtGuKnd.iLRXjEy','T1911008','STUDENT','Tuan','Vu Minh','minhtuan1690002@gmail.com','0327439204','abc',0,1,'https://res.cloudinary.com/dhy6m4jwi/image/upload/v1630318162/m78bbayvcnrxffwjpc8s.jpg-m78bbayvcnrxffwjpc8s'),(4,'2021-08-20 09:07:11',NULL,'2021-08-30 11:43:00','test','$2a$11$ud3FgUxtmnBfyk4RJ/VdoukydK4oeo1cBSt.Wb8NPkln3mF.q8opa','1234','EMPLOYEE','test','test','test@gmail.com','9403940943',NULL,0,1,'https://res.cloudinary.com/dhy6m4jwi/image/upload/v1630242849/rlzhr6ko8kg1bmnloesk.jpg'),(5,'2021-08-20 09:21:11',NULL,NULL,'test2','$2a$11$Z05Hf7GOmg5./IyG4xZJ/uDWKnGt4z3CNMTg1usofhnzIjmr..owu','3456','EMPLOYEE','test','test','tuanvmth1911008@fpt.edu.vn','4234343454',NULL,0,1,'https://res.cloudinary.com/dhy6m4jwi/image/upload/v1630242849/rlzhr6ko8kg1bmnloesk.jpg'),(6,'2021-08-20 10:08:23','2021-08-30 11:41:07',NULL,'vinhmt','$2a$11$aNFHVu3y2r/xs7WdxyQY4ulDLSROw.OYvtobs.xNaJxC0IpXzhIGK','TH1910012','ADMIN','Vinh','Mai Thành','vinhmtth1910012@fpt.edu.vn','0385108816',NULL,0,1,'https://res.cloudinary.com/dhy6m4jwi/image/upload/v1630323665/xuc0i6ut6hrjo0qszsae.jpg-xuc0i6ut6hrjo0qszsae'),(35,'2021-08-21 04:08:20',NULL,NULL,'huett','$2a$11$I/KQ/rapeCpiDNiDD1BuauLry/cm4BloxHyNpCY8RI/aOOHhH5BLW','Th1910013','EMPLOYEE','Huệ','Trịnh Thị','thanhvinh@gmail.com','0975765567',NULL,1,1,'https://res.cloudinary.com/dhy6m4jwi/image/upload/v1630242849/rlzhr6ko8kg1bmnloesk.jpg'),(36,'2021-08-22 12:30:25','2021-08-30 09:48:23',NULL,'cvb1994','$2a$11$P8PaBDbWpoMkmKZmEJi/zugexc9SD0uWU9JSlyR.xwPQEro2KgIUq','1281150003','ADMIN','cao','bach','vuongbach1994@gmail.com','0332677102',NULL,0,1,'https://res.cloudinary.com/dhy6m4jwi/image/upload/v1630316899/fafzjrxtcjk45l2zdlzr.jpg-fafzjrxtcjk45l2zdlzr'),(37,'2021-08-28 10:05:31',NULL,NULL,'vinhmt1993','$2a$11$Ov7.GvPpJcY3rWBWsPS7ueSZT5UF9CXebjU/NoVADlvlDZlT8Vwy.','Th1910014','STUDENT','Vinh','Mai Thành','thanhvinh1@gmail.com','0975934318',NULL,0,1,'https://res.cloudinary.com/dhy6m4jwi/image/upload/v1630242849/rlzhr6ko8kg1bmnloesk.jpg'),(38,'2021-08-28 11:07:00','2021-08-30 11:39:48',NULL,'bachcao','$2a$11$GJfSWPvk6IaLzcyMMgzvwOVaL1Zy4yt1gDdXpu6K/XNiSmgbZ9RSK','1281150002','STUDENT','cao','bach','bachcvth1911012@fpt.edu.vn','0332677103',NULL,0,1,'https://res.cloudinary.com/dhy6m4jwi/image/upload/v1630323579/vmeh3f7uwa39j8vc9ngr.jpg-vmeh3f7uwa39j8vc9ngr'),(39,'2021-08-28 11:07:00','2021-08-30 09:58:16',NULL,'admin','$2a$12$oPAVaa7f2KStw.FEFZoC8.6WYAMfLCgvtQrdY7BAEWRugxT4/Gv0.','11111111','ADMIN','Admin','Admin','admin@gmail.com',NULL,'Admin',0,1,'https://res.cloudinary.com/dhy6m4jwi/image/upload/v1630317491/iozx5gmcv63bmgdhfaci.jpg-iozx5gmcv63bmgdhfaci'),(40,'2021-08-30 11:30:08',NULL,NULL,'vinhmtth','$2a$11$9LAWQjzHlgUdh.h9ShvyVuJtX94Re6siCiw.zxp7c2QCYyuJihb9u','Th1910017','STUDENT','Vinh','Mai Thành','thanhvinh200293@gmail.com','0385108819',NULL,0,1,'https://res.cloudinary.com/dhy6m4jwi/image/upload/v1630245597/dcstxkiigmqnk634baka.jpg-dcstxkiigmqnk634baka');
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `__EFMigrationsHistory`
--

DROP TABLE IF EXISTS `__EFMigrationsHistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `__EFMigrationsHistory` (
  `MigrationId` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ProductVersion` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`MigrationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `__EFMigrationsHistory`
--

LOCK TABLES `__EFMigrationsHistory` WRITE;
/*!40000 ALTER TABLE `__EFMigrationsHistory` DISABLE KEYS */;
INSERT INTO `__EFMigrationsHistory` VALUES ('20210820060127_initdb','3.1.10');
/*!40000 ALTER TABLE `__EFMigrationsHistory` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-08-30 20:08:11
