-- MySQL dump 10.13  Distrib 5.7.22, for Linux (x86_64)
--
-- Host: localhost    Database: books-fillingyoga.com
-- ------------------------------------------------------
-- Server version	5.7.22-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `books` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `src` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plan_id` smallint(6) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '100',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,'books/100 Bodybuilding Tips/100 Bodybuilding Tips.jpg','books/100 Bodybuilding Tips/100 Bodybuilding Tips.pdf','100 Bodybuilding Tips','yoga',1,100,'2019-02-22 08:51:02','2019-02-22 08:51:02'),(2,'books/100 Bowling Tips/100 Bowling Tips.jpg','books/100 Bowling Tips/100 Bowling Tips.pdf','100 Bowling Tips','yoga',2,100,'2019-02-22 08:51:02','2019-02-22 08:51:02'),(3,'books/100 Fitness Product/100 Fitness Product Ideas.jpg','books/100 Fitness Product/100FitnessProductIdeas.pdf','100 Fitness Product','yoga',3,100,'2019-02-22 08:51:02','2019-02-22 08:51:02'),(4,'books/15 Holiday Weight Loss Tips/15 Holiday Weight Loss Tips.jpg','books/15 Holiday Weight Loss Tips/15 Holiday Weight Loss Tips.pdf','15 Holiday Weight Loss Tips','yoga',3,100,'2019-02-22 08:51:02','2019-02-22 08:51:02'),(5,'books/31 Days To Bigger Arms/31 Days To Bigger Arms.jpg','books/31 Days To Bigger Arms/31 Days To Bigger Arms.pdf','31 Days To Bigger Arms','yoga',3,100,'2019-02-22 08:51:02','2019-02-22 08:51:02'),(6,'books/5 Simple Steps To Better Golf/Golf Simplified.jpg','books/5 Simple Steps To Better Golf/5 Simple Steps To Better Golf.pdf','5 Simple Steps To Better Golf','yoga',2,100,'2019-02-22 08:51:02','2019-02-22 08:51:02'),(7,'books/6 Ways To Unlimited Health/6 Ways To Unlimited Health.png','books/6 Ways To Unlimited Health/6 Ways To Unlimited Health.pdf','6 Ways To Unlimited Health','yoga',3,100,'2019-02-22 08:51:02','2019-02-22 08:51:02'),(8,'books/A Bass Fishing Pro/How To Become A Fly Fishing Pro.jpg','books/A Bass Fishing Pro/How To Become A Fly Fishing Pro.pdf','A Bass Fishing Pro','yoga',2,100,'2019-02-22 08:51:02','2019-02-22 08:51:02'),(9,'books/Acquiring the Correct Mental Game Through To the Final Hole/Acquiring the Correct Mental Game Through To the Final Hole.jpg','books/Acquiring the Correct Mental Game Through To the Final Hole/Acquiring the Correct Mental Game Through To the Final Hole.pdf','Acquiring the Correct Mental Game Through To the Final Hole','yoga',3,100,'2019-02-22 08:51:02','2019-02-22 08:51:02'),(10,'books/All About Golf/02.jpg','books/All About Golf/AllAboutGolf.pdf','All About Golf','yoga',1,100,'2019-02-22 08:51:02','2019-02-22 08:51:02'),(11,'books/Athletic Training/Athletic Training.jpg','books/Athletic Training/Athletic Training.pdf','Athletic Training','yoga',1,100,'2019-02-22 08:51:02','2019-02-22 08:51:02'),(12,'books/Bass Fishing 101/Bass Fishing 101.jpg','books/Bass Fishing 101/Bass Fishing 101.pdf','Bass Fishing 101','yoga',2,100,'2019-02-22 08:51:03','2019-02-22 08:51:03'),(13,'books/Best Kickboxing Fitness DVDs/1.png','books/Best Kickboxing Fitness DVDs/Best Kickboxing Fitness DVDs.pdf','Best Kickboxing Fitness DVDs','yoga',2,100,'2019-02-22 08:51:03','2019-02-22 08:51:03');
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (46,'2014_10_12_000000_create_users_table',1),(47,'2014_10_12_100000_create_password_resets_table',1),(48,'2019_01_17_133109_create_books_table',1),(49,'2019_01_17_134522_create_users_books_table',1),(50,'2019_01_17_134707_create_plans_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plans`
--

DROP TABLE IF EXISTS `plans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plans` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `count_books` smallint(6) NOT NULL,
  `price` smallint(6) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trial` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plans`
--

LOCK TABLES `plans` WRITE;
/*!40000 ALTER TABLE `plans` DISABLE KEYS */;
INSERT INTO `plans` VALUES (1,2,25,'Beginner','2 ebooks per week','Workouts plan for a day','Trial period of 5 days at 3 ','priceItem1.png','2019-02-22 08:51:03','2019-02-22 08:51:03'),(2,5,50,'Basic','5 ebooks per week','Workouts plan for a week','Trial period of 5 days at 3 ','priceItem2.png','2019-02-22 08:51:03','2019-02-22 08:51:03'),(3,10,75,'PRO','10 ebooks per week','Workouts plan for a month','Trial period of 5 days at 3 ','priceItem3.png','2019-02-22 08:51:03','2019-02-22 08:51:03');
/*!40000 ALTER TABLE `plans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subscribe_status` tinyint(1) NOT NULL DEFAULT '0',
  `subscribe_date` timestamp NULL DEFAULT NULL,
  `plan_id` smallint(6) NOT NULL DEFAULT '1',
  `role` enum('admin','manager','user') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin@test.com','$2y$10$AUfuaLprL/f7swKhmVToiOZq7XZ38eW/ExW4eBwb/AvWLviiZpUWi','Alessia','Cronin','1425 Rosalia Cliffs','Dorrisberg','Maldives','+6808390006304','32001-6606',1,'2019-02-12 08:51:02',3,'admin','VNd5NPNmOz','2019-01-24 08:51:02','2019-01-24 08:51:02'),(2,'test@test.test','$2y$10$taA3szI7rxeaBrip9o5KaO8fsRcvx./A.MeF/rDUEujNPdnMSHFyW','Flossie','Nienow','1759 Erwin Fords','North Derrickstad','Eritrea','+4871769510047','88279-7256',1,'2019-01-22 08:51:02',1,'user','0EOWJfK3FkEztjeFlC2f13io7tvrLi6rb856BZY4wKnRo9CnddIlmvqb5qNh','2019-01-21 08:51:02','2019-01-21 08:51:02'),(3,'okuneva.roman@example.com','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','Trace','Ratke','84618 Flatley Fields Apt. 745','East Camylle','Oman','+6582376292270','72735-3559',0,NULL,1,'user','4pQDgqyz8I','2019-02-22 08:51:02','2019-02-22 08:51:02'),(4,'lueilwitz.tanya@example.org','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','Agustin','Powlowski','8149 Mustafa Wall','Clemensmouth','Mauritania','+3868876753812','07907-9624',0,NULL,1,'user','unK7p2c9LS','2019-02-22 08:51:02','2019-02-22 08:51:02'),(5,'tstoltenberg@example.org','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','Ara','Kozey','3334 Eldred Summit','North Emmetchester','Solomon Islands','+7634090302769','57696',0,NULL,1,'user','EspOKAJgyo','2019-02-22 08:51:02','2019-02-22 08:51:02'),(6,'goyette.llewellyn@example.net','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','Lisandro','Johnston','741 Dewayne Cliffs','Wildermanstad','Dominican Republic','+3672904790557','99344',0,NULL,1,'user','JGpoOP7B5E','2019-02-22 08:51:02','2019-02-22 08:51:02'),(7,'lottie.lakin@example.net','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','Jacynthe','Rath','9128 Reba Port Apt. 588','Bernitachester','Belarus','+6533001200309','53070',0,NULL,1,'user','cmmqRuzxcH','2019-02-22 08:51:02','2019-02-22 08:51:02'),(8,'fritsch.ryley@example.net','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','Erick','Bauch','27111 Crooks Orchard Suite 219','Harrybury','Moldova','+1149112707494','83545',0,NULL,1,'user','Vql22ZLYks','2019-02-22 08:51:02','2019-02-22 08:51:02'),(9,'cbarton@example.com','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','Jerome','Howe','7310 Russel Villages Apt. 555','West Jayda','Russian Federation','+6552442809096','18682',0,NULL,1,'user','ByHyThyKUu','2019-02-22 08:51:02','2019-02-22 08:51:02'),(10,'cronin.zackery@example.org','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','Lula','Daugherty','98637 Ryan Lights Apt. 793','Gislasonport','Aruba','+2869890873855','27606-6374',0,NULL,1,'user','VSIkwJeJjK','2019-02-22 08:51:02','2019-02-22 08:51:02'),(11,'lesch.buford@example.com','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','Vanessa','Heller','2775 Reichel Flats Suite 942','Port Hershelhaven','Georgia','+8181572768376','79342',0,NULL,1,'user','6T56b0F7JP','2019-02-22 08:51:02','2019-02-22 08:51:02'),(12,'clyde.paucek@example.com','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','Haskell','Tremblay','4884 Maddison Street','Traceyview','Central African Republic','+2271056675127','61299-5909',0,NULL,1,'user','CLdujrUozQ','2019-02-22 08:51:02','2019-02-22 08:51:02');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_books`
--

DROP TABLE IF EXISTS `users_books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_books` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_books`
--

LOCK TABLES `users_books` WRITE;
/*!40000 ALTER TABLE `users_books` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_books` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-22 12:07:58
