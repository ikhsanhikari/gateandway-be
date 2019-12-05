# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.5.5-10.3.16-MariaDB)
# Database: db_gate
# Generation Time: 2019-12-05 03:38:08 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table achievement
# ------------------------------------------------------------

DROP TABLE IF EXISTS `achievement`;

CREATE TABLE `achievement` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `course_name` varchar(255) DEFAULT NULL,
  `associated_with` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `delete_at` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `achievement` WRITE;
/*!40000 ALTER TABLE `achievement` DISABLE KEYS */;

INSERT INTO `achievement` (`id`, `course_name`, `associated_with`, `created_at`, `delete_at`, `status`, `update_at`)
VALUES
	(1,'hikari','hikari','2019-10-23 16:09:26',NULL,1,'2019-10-23 16:09:26'),
	(2,'Hikari','Hikari','2019-10-23 16:11:01','2019-11-13 13:56:01',0,'2019-10-23 16:11:01'),
	(3,'bjh','vhj','2019-10-30 09:11:10','2019-11-13 13:56:02',0,'2019-10-30 09:11:10'),
	(4,'Add','adkk','2019-10-30 11:29:51','2019-11-13 13:19:21',0,'2019-10-30 11:29:51'),
	(5,'','','2019-10-30 11:31:17','2019-11-13 13:19:18',0,'2019-10-30 11:31:17'),
	(6,'bhjkbhjk','hjvbj','2019-10-30 12:32:27','2019-11-13 13:46:37',0,'2019-10-30 12:32:27'),
	(7,'ss','dsd','2019-10-30 12:33:09','2019-11-13 13:19:35',0,'2019-10-30 12:33:09'),
	(8,'Success','Every','2019-10-30 12:35:54','2019-11-13 13:19:16',0,'2019-10-30 12:35:54'),
	(9,'Success','Every','2019-10-30 12:36:50','2019-11-13 13:17:52',0,'2019-10-30 12:36:50'),
	(10,'da','dad','2019-10-30 12:37:00','2019-11-13 13:13:42',0,'2019-10-30 12:37:00'),
	(11,'ss','ss','2019-10-30 12:40:09',NULL,1,'2019-10-30 12:40:09'),
	(12,'sas','sas','2019-10-30 12:41:08',NULL,1,'2019-10-30 12:41:08'),
	(13,'dsd','dsd','2019-10-30 12:41:50',NULL,1,'2019-10-30 12:41:50'),
	(14,'dsd','dsa','2019-10-30 12:42:01',NULL,1,'2019-10-30 12:42:01'),
	(15,'dsdsdsds','dsdsd','2019-10-30 12:42:29',NULL,1,'2019-10-30 12:42:29'),
	(16,'dsd','dsdsds','2019-10-30 12:43:09',NULL,1,'2019-10-30 12:43:09'),
	(17,'sdsds','dsdsd','2019-10-30 12:44:20',NULL,1,'2019-10-30 12:44:20'),
	(18,'Hallo','No','2019-11-11 04:49:44',NULL,1,'2019-11-11 04:49:44'),
	(19,'Tambah','tambah','2019-11-13 12:41:59',NULL,1,'2019-11-13 12:41:59'),
	(20,'T','t','2019-11-13 12:42:35',NULL,1,'2019-11-13 12:42:35'),
	(21,'L','p','2019-11-13 12:44:08',NULL,1,'2019-11-13 12:44:08'),
	(22,'h','h','2019-11-13 12:44:42',NULL,1,'2019-11-13 12:44:42'),
	(23,'Tambah','tambahhhh','2019-11-13 12:50:56',NULL,1,'2019-11-13 12:50:56'),
	(24,'Hayu','hayu','2019-11-13 13:20:41','2019-11-13 13:20:44',0,'2019-11-13 13:20:41'),
	(25,'Teest','Test','2019-11-13 13:46:46','2019-11-13 13:46:49',0,'2019-11-13 13:46:46'),
	(26,'add','add','2019-11-13 13:56:13','2019-11-13 13:56:21',0,'2019-11-13 13:56:13'),
	(27,'Ad','ad','2019-11-13 13:58:54','2019-11-13 14:04:46',0,'2019-11-13 13:58:54'),
	(28,'Test','test','2019-11-13 14:04:53','2019-11-13 14:05:04',0,'2019-11-13 14:04:53'),
	(29,'I hop it work','work','2019-11-13 14:05:50','2019-11-13 14:07:02',0,'2019-11-13 14:05:50'),
	(30,'Give','Mee','2019-11-13 14:07:14','2019-11-13 14:07:53',0,'2019-11-13 14:07:14'),
	(31,'Pleaae','ppp','2019-11-13 14:08:02','2019-11-13 14:09:09',0,'2019-11-13 14:08:02'),
	(32,'k','k','2019-11-13 14:09:56','2019-11-13 14:24:52',0,'2019-11-13 14:09:56'),
	(33,'Aduh Update',' Update','2019-11-13 14:38:51','2019-11-13 15:48:47',0,'2019-11-13 14:38:51'),
	(34,'Ada Ya kan?','Ada Please','2019-11-13 14:38:08',NULL,1,'2019-11-13 14:38:08'),
	(35,'K','k','2019-11-13 14:27:48','2019-11-13 14:35:20',0,'2019-11-13 14:27:48'),
	(36,'Work','Work','2019-11-13 14:32:33','2019-11-13 14:35:21',0,'2019-11-13 14:32:33'),
	(37,'Tambah a','Tambah a','2019-11-13 14:35:36','2019-11-13 14:37:12',0,'2019-11-13 14:35:36'),
	(38,'Add','Add','2019-11-13 14:38:34','2019-11-13 15:48:45',0,'2019-11-13 14:38:34'),
	(39,'FIrst','Nothing','2019-11-14 13:34:41',NULL,1,'2019-11-14 13:34:41');

/*!40000 ALTER TABLE `achievement` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table business_category
# ------------------------------------------------------------

DROP TABLE IF EXISTS `business_category`;

CREATE TABLE `business_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `category` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `delete_at` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `business_category` WRITE;
/*!40000 ALTER TABLE `business_category` DISABLE KEYS */;

INSERT INTO `business_category` (`id`, `category`, `created_at`, `delete_at`, `description`, `status`, `update_at`)
VALUES
	(1,'Coffe Shop','2019-11-12 04:18:28',NULL,'Nothing',1,'2019-11-12 04:18:28');

/*!40000 ALTER TABLE `business_category` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table chat
# ------------------------------------------------------------

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `delete_at` datetime DEFAULT NULL,
  `message` text DEFAULT NULL,
  `partner_id` bigint(20) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;

INSERT INTO `chat` (`id`, `created_at`, `delete_at`, `message`, `partner_id`, `status`, `update_at`, `user_id`)
VALUES
	(1,'2019-11-07 09:04:11',NULL,'Hay',1,1,'2019-11-07 09:04:11',7),
	(2,'2019-11-07 09:04:17',NULL,'Hallo',7,1,'2019-11-07 09:04:17',1),
	(3,'2019-11-07 13:13:41',NULL,'Hallo',10,1,'2019-11-07 13:13:41',1),
	(4,'2019-11-07 13:14:03',NULL,'Hy',1,1,'2019-11-07 13:14:03',10),
	(5,'2019-11-08 07:45:22',NULL,'Test',4,1,'2019-11-08 07:45:22',1),
	(6,'2019-11-08 07:45:28',NULL,'Test',1,1,'2019-11-08 07:45:28',4),
	(7,'2019-11-08 09:06:51',NULL,'Cau',1,1,'2019-11-08 09:06:51',8),
	(8,'2019-11-11 04:04:04',NULL,'Hallo bos',1,1,'2019-11-11 04:04:04',22),
	(9,'2019-11-11 04:04:22',NULL,'HALLO',22,1,'2019-11-11 04:04:22',1),
	(10,'2019-11-11 04:13:21',NULL,'Hallo',22,1,'2019-11-11 04:13:21',7),
	(11,'2019-11-11 04:13:35',NULL,'Hay',7,1,'2019-11-11 04:13:35',22),
	(12,'2019-11-11 04:14:48',NULL,'Test',22,1,'2019-11-11 04:14:48',7),
	(13,'2019-11-11 04:15:04',NULL,'Oh',22,1,'2019-11-11 04:15:04',7),
	(14,'2019-11-11 04:15:18',NULL,'Naon',22,1,'2019-11-11 04:15:18',7),
	(15,'2019-11-11 04:15:24',NULL,'error',7,1,'2019-11-11 04:15:24',22),
	(16,'2019-11-11 04:15:34',NULL,'Iya error euy',22,1,'2019-11-11 04:15:34',7),
	(17,'2019-11-11 04:17:49',NULL,'K',22,1,'2019-11-11 04:17:49',7),
	(18,'2019-11-11 04:18:08',NULL,'w',22,1,'2019-11-11 04:18:08',7),
	(19,'2019-11-11 04:18:33',NULL,'Work',22,1,'2019-11-11 04:18:33',7),
	(20,'2019-11-11 04:18:46',NULL,'Yeahh',7,1,'2019-11-11 04:18:46',22),
	(21,'2019-11-11 04:19:44',NULL,'Halloooooo',22,1,'2019-11-11 04:19:44',7),
	(22,'2019-11-11 04:19:50',NULL,'Error gak ?\n',22,1,'2019-11-11 04:19:50',7),
	(23,'2019-11-11 04:19:53',NULL,'Gkkkk',22,1,'2019-11-11 04:19:53',7),
	(24,'2019-11-11 04:20:09',NULL,'oh sykuur lah',7,1,'2019-11-11 04:20:09',22),
	(25,'2019-11-11 06:57:56',NULL,'Hallo',7,1,'2019-11-11 06:57:56',16),
	(26,'2019-11-11 06:58:08',NULL,'Hay',16,1,'2019-11-11 06:58:08',7),
	(27,'2019-11-11 10:50:53',NULL,'Hallo bro',16,1,'2019-11-11 10:50:53',1),
	(28,'2019-11-11 10:50:59',NULL,'Hallo',1,1,'2019-11-11 10:50:59',16),
	(29,'2019-11-11 10:51:05',NULL,'Kumaha',1,1,'2019-11-11 10:51:05',16),
	(30,'2019-11-11 10:51:09',NULL,'Teeu',16,1,'2019-11-11 10:51:09',1),
	(31,'2019-11-13 11:56:52',NULL,'Hallo',7,1,'2019-11-13 11:56:52',16),
	(32,'2019-11-13 11:57:08',NULL,'Test',7,1,'2019-11-13 11:57:08',16),
	(33,'2019-11-13 11:58:10',NULL,'Jalan ?',16,1,'2019-11-13 11:58:10',7),
	(34,'2019-11-13 11:58:16',NULL,'Mantaplah',7,1,'2019-11-13 11:58:16',16),
	(35,'2019-11-13 11:58:21',NULL,'Okay',16,1,'2019-11-13 11:58:21',7),
	(36,'2019-11-13 11:58:43',NULL,'Hallo',1,1,'2019-11-13 11:58:43',16),
	(37,'2019-11-13 11:58:59',NULL,'Hallo',7,1,'2019-11-13 11:58:59',16),
	(38,'2019-11-13 11:59:49',NULL,'Hay',16,1,'2019-11-13 11:59:49',7),
	(39,'2019-11-13 11:59:55',NULL,'Hallo',7,1,'2019-11-13 11:59:55',16),
	(40,'2019-11-13 12:00:02',NULL,'Aya Naon ?',16,1,'2019-11-13 12:00:02',7),
	(41,'2019-11-13 12:00:23',NULL,'Teu',16,1,'2019-11-13 12:00:23',7),
	(42,'2019-11-13 12:00:32',NULL,'Oh',7,1,'2019-11-13 12:00:32',16),
	(43,'2019-11-13 12:00:43',NULL,'Lah nyambung dong',16,1,'2019-11-13 12:00:43',7),
	(44,'2019-11-13 12:00:49',NULL,'Mantap lah',7,1,'2019-11-13 12:00:49',16),
	(45,'2019-11-13 12:57:33',NULL,'Hallo coy',22,1,'2019-11-13 12:57:33',1),
	(46,'2019-11-13 14:37:52',NULL,'Naon',8,1,'2019-11-13 14:37:52',1),
	(47,'2019-11-14 14:14:40',NULL,'Hallo',1,1,'2019-11-14 14:14:40',28),
	(48,'2019-11-14 14:14:48',NULL,'Naon',28,1,'2019-11-14 14:14:48',1),
	(49,'2019-11-14 14:14:58',NULL,'Teu',28,1,'2019-11-14 14:14:58',1),
	(50,'2019-11-14 14:15:02',NULL,'Oh',1,1,'2019-11-14 14:15:02',28),
	(51,'2019-11-17 06:46:09',NULL,'Woy',1,1,'2019-11-17 06:46:09',28),
	(52,'2019-11-17 06:46:25',NULL,'Naon?',28,1,'2019-11-17 06:46:25',1),
	(53,'2019-11-17 06:46:31',NULL,'Teu',1,1,'2019-11-17 06:46:31',28);

/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cover_photo
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cover_photo`;

CREATE TABLE `cover_photo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `is_apply` bit(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `delete_at` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `cover_photo` WRITE;
/*!40000 ALTER TABLE `cover_photo` DISABLE KEYS */;

INSERT INTO `cover_photo` (`id`, `user_id`, `url`, `is_apply`, `created_at`, `delete_at`, `status`, `update_at`)
VALUES
	(1,1,'test_url',b'0',NULL,NULL,1,NULL),
	(2,1,'test_url',b'0','2019-10-17 04:06:08',NULL,1,'2019-10-17 04:06:08'),
	(3,1,'test',b'0','2019-10-17 04:16:01',NULL,1,'2019-10-17 04:16:01'),
	(4,1,'http://localhost:8080/downloadFile/WhatsApp%20Image%202019-10-13%20at%2018.42.56.jpeg',b'0','2019-10-17 04:18:26',NULL,1,'2019-10-17 04:18:26'),
	(28,5,'http://localhost:8080/downloadFile/69389524_2418618711694184_7951855193736347648_n.jpg',b'0','2019-10-20 17:17:42',NULL,1,'2019-10-20 17:17:42'),
	(6,1,'http://localhost:8080/downloadFile/WhatsApp%20Image%202019-10-07%20at%2013.40.41.jpeg',b'0','2019-10-17 04:41:38',NULL,1,'2019-10-17 04:41:38'),
	(7,1,'http://localhost:8080/downloadFile/WhatsApp%20Image%202019-10-07%20at%2013.40.41.jpeg',b'0','2019-10-17 04:41:57',NULL,1,'2019-10-17 04:41:57'),
	(8,1,'http://localhost:8080/downloadFile/WhatsApp%20Image%202019-10-07%20at%2013.40.41.jpeg',b'0','2019-10-17 04:42:07',NULL,1,'2019-10-17 04:42:07'),
	(9,1,'http://localhost:8080/downloadFile/WhatsApp%20Image%202019-10-13%20at%2018.42.56.jpeg',b'0','2019-10-17 05:22:40',NULL,1,'2019-10-17 05:22:40'),
	(10,1,'http://localhost:8080/downloadFile/WhatsApp%2520Image%25202019-10-07%2520at%252013.40.41.jpeg',b'0','2019-10-17 05:23:05',NULL,1,'2019-10-17 05:23:05'),
	(11,1,'http://localhost:8080/downloadFile/69389524_2418618711694184_7951855193736347648_n.jpg',b'0','2019-10-17 05:36:45',NULL,1,'2019-10-17 05:36:45'),
	(12,1,'http://localhost:8080/downloadFile/WhatsApp%20Image%202019-10-13%20at%2018.42.56.jpeg',b'0','2019-10-17 05:45:30',NULL,1,'2019-10-17 05:45:30'),
	(13,1,'http://localhost:8080/downloadFile/69389524_2418618711694184_7951855193736347648_n.jpg',b'0','2019-10-17 05:49:46',NULL,1,'2019-10-17 05:49:46'),
	(14,1,'http://localhost:8080/downloadFile/WhatsApp%20Image%202019-10-13%20at%2018.42.56.jpeg',b'0','2019-10-18 08:25:25',NULL,1,'2019-10-18 08:25:25'),
	(15,1,'http://localhost:8080/downloadFile/69389524_2418618711694184_7951855193736347648_n.jpg',b'0','2019-10-18 08:25:50',NULL,1,'2019-10-18 08:25:50'),
	(16,1,'http://localhost:8080/downloadFile/WhatsApp%20Image%202019-10-07%20at%2013.40.41.jpeg',b'0','2019-10-18 08:43:35',NULL,1,'2019-10-18 08:43:35'),
	(17,1,'http://localhost:8080/downloadFile/69389524_2418618711694184_7951855193736347648_n.jpg',b'0','2019-10-18 08:46:10',NULL,1,'2019-10-18 08:46:10'),
	(18,1,'http://localhost:8080/downloadFile/WhatsApp%20Image%202019-10-13%20at%2018.42.56.jpeg',b'0','2019-10-18 10:22:58',NULL,1,'2019-10-18 10:22:58'),
	(19,1,'http://localhost:8080/downloadFile/69389524_2418618711694184_7951855193736347648_n.jpg',b'0','2019-10-18 13:25:30',NULL,1,'2019-10-18 13:25:30'),
	(20,1,'http://localhost:8080/downloadFile/WhatsApp%20Image%202019-10-13%20at%2018.42.56.jpeg',b'0','2019-10-18 13:30:46',NULL,1,'2019-10-18 13:30:46'),
	(21,1,'http://localhost:8080/downloadFile/69389524_2418618711694184_7951855193736347648_n.jpg',b'0','2019-10-18 14:34:26',NULL,1,'2019-10-18 14:34:26'),
	(22,2,'http://localhost:8080/downloadFile/WhatsApp%20Image%202019-10-13%20at%2018.42.56.jpeg',b'0','2019-10-19 05:55:44',NULL,1,'2019-10-19 05:55:44'),
	(23,2,'http://localhost:8080/downloadFile/WhatsApp%20Image%202019-10-07%20at%2013.40.41.jpeg',b'0','2019-10-19 06:02:31',NULL,1,'2019-10-19 06:02:31'),
	(24,1,'http://localhost:8080/downloadFile/69389524_2418618711694184_7951855193736347648_n.jpg',b'0','2019-10-19 06:04:01',NULL,1,'2019-10-19 06:04:01'),
	(25,2,'http://localhost:8080/downloadFile/69389524_2418618711694184_7951855193736347648_n.jpg',b'1','2019-10-19 06:06:46',NULL,1,'2019-10-19 06:06:46'),
	(26,3,'http://localhost:8080/downloadFile/69389524_2418618711694184_7951855193736347648_n.jpg',b'1','2019-10-19 07:26:29',NULL,1,'2019-10-19 07:26:29'),
	(27,4,'http://localhost:8080/downloadFile/69389524_2418618711694184_7951855193736347648_n.jpg',b'1','2019-10-19 10:40:30',NULL,1,'2019-10-19 10:40:30'),
	(29,6,'http://localhost:8080/downloadFile/WhatsApp%20Image%202019-10-19%20at%2021.13.28.jpeg',b'1','2019-10-20 17:21:33',NULL,1,'2019-10-20 17:21:33'),
	(30,7,'http://localhost:8080/downloadFile/WhatsApp%20Image%202019-10-19%20at%2021.13.28.jpeg',b'0','2019-10-21 03:39:05',NULL,1,'2019-10-21 03:39:05'),
	(31,10,'http://localhost:8080/downloadFile/WhatsApp%20Image%202019-10-19%20at%2021.13.28.jpeg',b'1','2019-10-21 14:56:50',NULL,1,'2019-10-21 14:56:50'),
	(32,8,'http://localhost:8080/downloadFile/Screen%20Shot%202019-09-26%20at%2015.51.14.png',b'0','2019-10-23 04:22:11',NULL,1,'2019-10-23 04:22:11'),
	(33,5,'http://localhost:8080/downloadFile/Screen%20Shot%202019-08-27%20at%2011.16.19.png',b'1','2019-10-23 06:28:40',NULL,1,'2019-10-23 06:28:40'),
	(34,1,'http://localhost:8080/downloadFile/Screen%20Shot%202019-10-21%20at%2017.31.22.png',b'0','2019-10-23 08:27:49',NULL,1,'2019-10-23 08:27:49'),
	(35,16,'http://localhost:8080/downloadFile/69389524_2418618711694184_7951855193736347648_n.jpg',b'1','2019-10-30 11:51:01',NULL,1,'2019-10-30 11:51:01'),
	(36,1,'http://localhost:8080/downloadFile/69389524_2418618711694184_7951855193736347648_n.jpg',b'0','2019-11-05 03:18:30',NULL,1,'2019-11-05 03:18:30'),
	(37,1,'http://localhost:8080/downloadFile/WhatsApp%20Image%202019-10-19%20at%2021.13.28.jpeg',b'0','2019-11-05 03:19:10',NULL,1,'2019-11-05 03:19:10'),
	(38,1,'http://localhost:8080/downloadFile/Screen%20Shot%202019-10-21%20at%2017.31.22.png',b'0','2019-11-05 05:24:00',NULL,1,'2019-11-05 05:24:00'),
	(39,1,'http://localhost:8080/downloadFile/69389524_2418618711694184_7951855193736347648_n.jpg',b'0','2019-11-05 05:24:29',NULL,1,'2019-11-05 05:24:29'),
	(40,8,'http://localhost:8080/downloadFile/69389524_2418618711694184_7951855193736347648_n.jpg',b'0','2019-11-05 05:58:06',NULL,1,'2019-11-05 05:58:06'),
	(41,8,'http://localhost:8080/downloadFile/69389524_2418618711694184_7951855193736347648_n.jpg',b'0','2019-11-05 05:59:16',NULL,1,'2019-11-05 05:59:16'),
	(42,8,'http://localhost:8080/downloadFile/69389524_2418618711694184_7951855193736347648_n.jpg',b'0','2019-11-05 05:59:57',NULL,1,'2019-11-05 05:59:57'),
	(43,8,'http://localhost:8080/downloadFile/69389524_2418618711694184_7951855193736347648_n.jpg',b'0','2019-11-05 06:01:04',NULL,1,'2019-11-05 06:01:04'),
	(44,8,'http://localhost:8080/downloadFile/69389524_2418618711694184_7951855193736347648_n.jpg',b'1','2019-11-05 06:01:37',NULL,1,'2019-11-05 06:01:37'),
	(45,7,'http://localhost:8080/downloadFile/1573277387101.png',b'0','2019-11-11 04:57:15',NULL,1,'2019-11-11 04:57:15'),
	(46,7,'http://localhost:8080/downloadFile/20191109_093908_0000.png',b'0','2019-11-11 04:59:22',NULL,1,'2019-11-11 04:59:22'),
	(47,7,'http://localhost:8080/downloadFile/69389524_2418618711694184_7951855193736347648_n.jpg',b'0','2019-11-11 05:06:09',NULL,1,'2019-11-11 05:06:09'),
	(48,7,'http://localhost:8080/downloadFile/69389524_2418618711694184_7951855193736347648_n.jpg',b'1','2019-11-11 05:09:50',NULL,1,'2019-11-11 05:09:50'),
	(49,1,'http://localhost:8080/downloadFile/Screen%2520Shot%25202019-08-27%2520at%252011.16.19.png',b'0','2019-11-13 11:19:22',NULL,1,'2019-11-13 11:19:22'),
	(50,1,'http://localhost:8080/downloadFile/69389524_2418618711694184_7951855193736347648_n.jpg',b'0','2019-11-13 11:21:46',NULL,1,'2019-11-13 11:21:46'),
	(51,1,'http://localhost:8080/downloadFile/1573277387101.png',b'0','2019-11-13 13:50:59',NULL,1,'2019-11-13 13:50:59'),
	(52,1,'http://localhost:8080/downloadFile/20191109_093908_0000.png',b'0','2019-11-14 13:30:06',NULL,1,'2019-11-14 13:30:06'),
	(53,28,'http://localhost:8080/downloadFile/69389524_2418618711694184_7951855193736347648_n.jpg',b'1','2019-11-14 13:36:14',NULL,1,'2019-11-14 13:36:14'),
	(54,1,'http://localhost:8080/downloadFile/1573266663039.png',b'0','2019-11-21 04:16:27',NULL,1,'2019-11-21 04:16:27'),
	(55,1,'http://localhost:8080/downloadFile/1573266663039.png',b'0','2019-11-21 04:17:58',NULL,1,'2019-11-21 04:17:58'),
	(56,1,'http://localhost:8080/downloadFile/69389524_2418618711694184_7951855193736347648_n.jpg',b'1','2019-11-21 04:19:07',NULL,1,'2019-11-21 04:19:07');

/*!40000 ALTER TABLE `cover_photo` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table education
# ------------------------------------------------------------

DROP TABLE IF EXISTS `education`;

CREATE TABLE `education` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `school` varchar(255) DEFAULT NULL,
  `degree` varchar(255) DEFAULT NULL,
  `field_of_study` varchar(255) DEFAULT NULL,
  `grade` varchar(255) DEFAULT NULL,
  `activies` varchar(255) DEFAULT NULL,
  `start_year` int(11) DEFAULT NULL,
  `end_year` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `delete_at` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `education` WRITE;
/*!40000 ALTER TABLE `education` DISABLE KEYS */;

INSERT INTO `education` (`id`, `school`, `degree`, `field_of_study`, `grade`, `activies`, `start_year`, `end_year`, `description`, `created_at`, `delete_at`, `status`, `update_at`)
VALUES
	(1,'Pasim University','Management Informatika','MI','A','Nganggur',NULL,NULL,NULL,NULL,NULL,1,NULL),
	(2,'Pasim University','Management Informatika','MI','A','Nganggur',2015,2019,'null','2019-10-16 16:15:18',NULL,1,'2019-10-16 16:15:18'),
	(3,'Pasim University','Management Informatika','MI','A','Nganggur',2015,2019,'null','2019-10-16 16:26:37',NULL,1,'2019-10-16 16:26:37'),
	(4,'Pasim','m','m',NULL,NULL,NULL,NULL,NULL,'2019-11-14 08:55:16','2019-11-14 09:03:07',0,'2019-11-14 08:55:16'),
	(5,'ll','lll','ll',NULL,NULL,NULL,NULL,NULL,'2019-11-14 08:56:40','2019-11-14 09:03:06',0,'2019-11-14 08:56:40'),
	(6,'IO','llj','jl',NULL,NULL,NULL,NULL,NULL,'2019-11-14 08:57:46','2019-11-14 09:03:04',0,'2019-11-14 08:57:46'),
	(7,'Harvard University 2','No 1','no 2',NULL,NULL,NULL,NULL,NULL,'2019-11-14 09:03:29','2019-11-14 09:04:13',0,'2019-11-14 09:03:29'),
	(8,'ITB 2','Industry k','Business k',NULL,NULL,NULL,NULL,NULL,'2019-11-14 09:04:47',NULL,1,'2019-11-14 09:04:47'),
	(9,'K','lL','l',NULL,NULL,NULL,NULL,NULL,'2019-11-14 13:35:01','2019-11-14 13:51:20',0,'2019-11-14 13:35:01'),
	(10,'jk','bk','bk',NULL,NULL,NULL,NULL,NULL,'2019-11-14 14:00:50','2019-11-14 14:01:28',0,'2019-11-14 14:00:50');

/*!40000 ALTER TABLE `education` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table experience
# ------------------------------------------------------------

DROP TABLE IF EXISTS `experience`;

CREATE TABLE `experience` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `headline` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `delete_at` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `experience` WRITE;
/*!40000 ALTER TABLE `experience` DISABLE KEYS */;

INSERT INTO `experience` (`id`, `title`, `company`, `description`, `headline`, `location`, `start_date`, `end_date`, `created_at`, `delete_at`, `status`, `update_at`)
VALUES
	(1,'Programmer','CV Padepokan 79','nothing','gausah','Bandung',NULL,NULL,NULL,'2019-10-15 23:51:37',0,NULL),
	(2,'Programmer Ruby v 2','CV Padepokan 79','nothing','gausah','Bandung','2019-10-15 23:49:56','2019-10-15 23:49:56','2019-10-15 23:53:41','2019-11-13 15:40:05',0,'2019-10-15 23:53:41'),
	(3,'Programmer Ruby','CV Padepokan 79','nothing','gausah','Bandung','2019-10-15 23:49:56','2019-10-15 23:49:56','2019-10-15 23:51:11',NULL,1,'2019-10-15 23:51:11'),
	(4,'Programmer Ruby 2','Tujuh Sembilan',NULL,NULL,'Bendungan',NULL,NULL,'2019-11-13 15:45:33',NULL,1,'2019-11-13 15:45:33'),
	(9,'Programmer 1','oooo 1',NULL,NULL,'oo1',NULL,NULL,'2019-11-14 09:05:09','2019-11-14 09:05:12',0,'2019-11-14 09:05:09'),
	(5,'Try','try','Add',NULL,'yy',NULL,NULL,'2019-11-13 14:55:49','2019-11-13 15:39:52',0,'2019-11-13 14:55:49'),
	(6,'Programmer','PT Tujuh Sembilan',NULL,NULL,'Bandung',NULL,NULL,'2019-11-13 14:59:04','2019-11-13 15:40:02',0,'2019-11-13 14:59:04'),
	(7,'Hal','hl',NULL,NULL,'l',NULL,NULL,'2019-11-13 14:59:45','2019-11-13 15:39:50',0,'2019-11-13 14:59:45'),
	(8,'Work','Work',NULL,NULL,'Work',NULL,NULL,'2019-11-13 15:38:27','2019-11-13 15:39:48',0,'2019-11-13 15:38:27'),
	(10,'Prog','k',NULL,NULL,'k',NULL,NULL,'2019-11-14 13:34:52',NULL,1,'2019-11-14 13:34:52'),
	(11,'DPR','Indonesia Raya',NULL,NULL,'Jakarta Raya',NULL,NULL,'2019-11-17 06:46:56',NULL,1,'2019-11-17 06:46:56');

/*!40000 ALTER TABLE `experience` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table first_comment
# ------------------------------------------------------------

DROP TABLE IF EXISTS `first_comment`;

CREATE TABLE `first_comment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `first_comment` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `delete_at` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  `post_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `first_comment` WRITE;
/*!40000 ALTER TABLE `first_comment` DISABLE KEYS */;

INSERT INTO `first_comment` (`id`, `first_comment`, `created_at`, `delete_at`, `status`, `update_at`, `post_id`, `user_id`)
VALUES
	(1,'Hay','2019-11-07 09:03:59',NULL,1,'2019-11-07 09:03:59',1,7),
	(2,'Hallo','2019-11-07 09:04:05',NULL,1,'2019-11-07 09:04:05',1,1),
	(3,'Halllo','2019-11-09 04:14:22',NULL,1,'2019-11-09 04:14:22',4,1),
	(4,'L','2019-11-09 04:23:35',NULL,1,'2019-11-09 04:23:35',6,2),
	(5,'L','2019-11-09 06:27:10',NULL,1,'2019-11-09 06:27:10',13,1),
	(6,'Hallo','2019-11-09 06:28:02',NULL,1,'2019-11-09 06:28:02',14,1),
	(7,'Hallo','2019-11-11 03:23:15',NULL,1,'2019-11-11 03:23:15',23,11),
	(8,'Test','2019-11-11 03:32:49',NULL,1,'2019-11-11 03:32:49',23,11),
	(9,'Hallo','2019-11-11 03:33:02',NULL,1,'2019-11-11 03:33:02',24,11),
	(10,'Hay','2019-11-11 03:52:34',NULL,1,'2019-11-11 03:52:34',24,1),
	(11,'Naon','2019-11-11 03:52:44',NULL,1,'2019-11-11 03:52:44',24,11),
	(12,'Hallo dui','2019-11-11 03:59:07',NULL,1,'2019-11-11 03:59:07',25,22),
	(13,'Hay','2019-11-11 04:53:49',NULL,1,'2019-11-11 04:53:49',26,7),
	(14,'Aya Naon','2019-11-11 04:53:58',NULL,1,'2019-11-11 04:53:58',26,1),
	(15,'Teu','2019-11-11 04:54:03',NULL,1,'2019-11-11 04:54:03',26,7),
	(16,'Naon ieu\n','2019-11-11 04:54:40',NULL,1,'2019-11-11 04:54:40',25,7),
	(17,'Test','2019-11-11 05:28:12',NULL,1,'2019-11-11 05:28:12',26,7),
	(18,'Tah','2019-11-11 06:50:31',NULL,1,'2019-11-11 06:50:31',26,3),
	(19,'Oke','2019-11-11 06:51:16',NULL,1,'2019-11-11 06:51:16',26,7),
	(20,'Hallo','2019-11-11 15:19:45',NULL,1,'2019-11-11 15:19:45',27,16),
	(21,'Naon ieu','2019-11-11 15:20:28',NULL,1,'2019-11-11 15:20:28',27,16),
	(22,'Naon','2019-11-11 15:22:20',NULL,1,'2019-11-11 15:22:20',28,16),
	(23,'What\'s Your name ? ','2019-11-11 15:22:37',NULL,1,'2019-11-11 15:22:37',27,16),
	(24,'Hallo','2019-11-11 15:25:26',NULL,1,'2019-11-11 15:25:26',27,16),
	(25,'Eh','2019-11-11 15:26:05',NULL,1,'2019-11-11 15:26:05',27,16),
	(26,'Aya naooonnn?','2019-11-11 15:26:14',NULL,1,'2019-11-11 15:26:14',27,16),
	(27,'Hallo','2019-11-11 15:27:48',NULL,1,'2019-11-11 15:27:48',28,16),
	(28,'Ada notif kan?','2019-11-11 15:28:06',NULL,1,'2019-11-11 15:28:06',28,1),
	(29,'Beneran','2019-11-11 15:28:25',NULL,1,'2019-11-11 15:28:25',28,1),
	(30,'Hallo','2019-11-11 15:30:48',NULL,1,'2019-11-11 15:30:48',29,1),
	(31,'Hay','2019-11-11 15:31:37',NULL,1,'2019-11-11 15:31:37',29,1),
	(32,'Work','2019-11-11 15:34:01',NULL,1,'2019-11-11 15:34:01',29,16),
	(33,'Yeah','2019-11-11 15:34:14',NULL,1,'2019-11-11 15:34:14',29,1),
	(34,'I wanna test you','2019-11-11 15:34:45',NULL,1,'2019-11-11 15:34:45',30,1),
	(35,'What will you test ?','2019-11-11 15:34:59',NULL,1,'2019-11-11 15:34:59',30,16),
	(36,'I dunno','2019-11-11 15:35:11',NULL,1,'2019-11-11 15:35:11',30,1),
	(37,'Aya Fotoan teu?','2019-11-11 16:09:29',NULL,1,'2019-11-11 16:09:29',33,16),
	(38,'Wkwk','2019-11-11 16:11:32',NULL,1,'2019-11-11 16:11:32',35,1),
	(39,'What ?','2019-11-11 16:11:44',NULL,1,'2019-11-11 16:11:44',34,16),
	(40,'Waw','2019-11-11 16:21:19',NULL,1,'2019-11-11 16:21:19',41,16),
	(41,'Grest','2019-11-11 16:26:28',NULL,1,'2019-11-11 16:26:28',42,1),
	(42,'Nicee Image','2019-11-14 13:30:32',NULL,1,'2019-11-14 13:30:32',55,1),
	(43,'Haiiii','2019-11-14 13:31:24',NULL,1,'2019-11-14 13:31:24',55,28),
	(44,'Nicce','2019-11-14 13:31:39',NULL,1,'2019-11-14 13:31:39',54,28),
	(45,'What. happen','2019-11-16 16:46:27',NULL,1,'2019-11-16 16:46:27',55,1),
	(46,'Hallo','2019-11-17 06:45:40',NULL,1,'2019-11-17 06:45:40',58,28),
	(47,'Naon ?','2019-11-17 06:45:53',NULL,1,'2019-11-17 06:45:53',58,1),
	(48,'no Commeent?','2019-11-17 09:32:01',NULL,1,'2019-11-17 09:32:01',57,28),
	(49,'Hallo','2019-11-17 09:39:25',NULL,1,'2019-11-17 09:39:25',58,28),
	(50,'Hallo','2019-11-17 09:39:29',NULL,1,'2019-11-17 09:39:29',58,28),
	(51,'Naon','2019-11-17 09:39:46',NULL,1,'2019-11-17 09:39:46',58,28),
	(52,'Teu','2019-11-17 09:39:58',NULL,1,'2019-11-17 09:39:58',58,28),
	(53,'Hallo','2019-11-17 09:41:40',NULL,1,'2019-11-17 09:41:40',58,28),
	(54,'Naha','2019-11-17 09:41:53',NULL,1,'2019-11-17 09:41:53',58,28),
	(55,'Hallo','2019-11-17 09:43:04',NULL,1,'2019-11-17 09:43:04',58,28),
	(56,'Halllo','2019-11-17 10:16:46',NULL,1,'2019-11-17 10:16:46',58,28),
	(57,'Hemmm','2019-11-17 10:17:05',NULL,1,'2019-11-17 10:17:05',58,28),
	(58,'Test','2019-11-17 10:18:30',NULL,1,'2019-11-17 10:18:30',58,28),
	(59,'L','2019-11-17 10:20:57',NULL,1,'2019-11-17 10:20:57',58,28),
	(60,'Haklo','2019-11-17 10:28:56',NULL,1,'2019-11-17 10:28:56',59,28),
	(61,'Aduh','2019-11-17 10:29:03',NULL,1,'2019-11-17 10:29:03',59,28),
	(62,'Test','2019-11-17 10:32:40',NULL,1,'2019-11-17 10:32:40',59,28),
	(63,'tTp','2019-11-17 10:32:57',NULL,1,'2019-11-17 10:32:57',59,28),
	(64,'Iyalah','2019-11-17 10:33:01',NULL,1,'2019-11-17 10:33:01',58,28),
	(65,'Hallo','2019-11-17 10:34:17',NULL,1,'2019-11-17 10:34:17',59,28),
	(66,'Test','2019-11-17 10:36:08',NULL,1,'2019-11-17 10:36:08',55,28),
	(67,'Aduh jadi ngaco','2019-11-17 10:36:22',NULL,1,'2019-11-17 10:36:22',55,28),
	(68,'Iya ngga sih ','2019-11-17 10:36:28',NULL,1,'2019-11-17 10:36:28',55,28),
	(69,'Iya lah','2019-11-17 10:36:40',NULL,1,'2019-11-17 10:36:40',57,28),
	(70,'Aduh','2019-11-17 10:38:23',NULL,1,'2019-11-17 10:38:23',59,28),
	(71,'Test','2019-11-17 11:23:42',NULL,1,'2019-11-17 11:23:42',60,28),
	(72,'Oh Awesome','2019-11-17 11:59:51',NULL,1,'2019-11-17 11:59:51',62,32),
	(73,'Cooment','2019-11-19 10:35:52',NULL,1,'2019-11-19 10:35:52',63,33),
	(74,'Hallo','2019-11-21 03:51:39',NULL,1,'2019-11-21 03:51:39',62,1);

/*!40000 ALTER TABLE `first_comment` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table general_notification
# ------------------------------------------------------------

DROP TABLE IF EXISTS `general_notification`;

CREATE TABLE `general_notification` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `delete_at` datetime DEFAULT NULL,
  `is_read` bit(1) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `general_notification` WRITE;
/*!40000 ALTER TABLE `general_notification` DISABLE KEYS */;

INSERT INTO `general_notification` (`id`, `created_at`, `delete_at`, `is_read`, `message`, `status`, `update_at`, `user_id`, `type`)
VALUES
	(1,'2019-11-07 08:56:02',NULL,b'1','cau  make collabs request ',1,'2019-11-07 08:56:02',1,1),
	(2,'2019-11-07 08:56:02',NULL,b'1','9 Menigirimi anda permintaan collabs',1,'2019-11-07 08:56:02',1,1),
	(3,'2019-11-07 08:56:25',NULL,b'0','Nurikhsan has accepted your collabs request ',1,'2019-11-07 08:56:25',9,1),
	(4,'2019-11-07 08:58:15',NULL,b'1','safari make collabs request ',1,'2019-11-07 08:58:15',1,1),
	(5,'2019-11-07 08:58:15',NULL,b'1','7 Menigirimi anda permintaan collabs',1,'2019-11-07 08:58:15',1,1),
	(6,'2019-11-07 08:58:38',NULL,b'1','Nurikhsan has accepted your collabs request ',1,'2019-11-07 08:58:38',7,1),
	(7,'2019-11-07 09:04:11',NULL,b'1','7 Mengirimi anda pesan, isi pesan : Hay',1,'2019-11-07 09:04:11',1,1),
	(8,'2019-11-07 09:28:30',NULL,b'1','Yodi make collabs request ',1,'2019-11-07 09:28:30',1,1),
	(9,'2019-11-07 09:28:30',NULL,b'1','3 Menigirimi anda permintaan collabs',1,'2019-11-07 09:28:30',1,1),
	(10,'2019-11-07 09:29:19',NULL,b'1','alan make collabs request ',1,'2019-11-07 09:29:19',1,1),
	(11,'2019-11-07 09:29:19',NULL,b'1','4 Menigirimi anda permintaan collabs',1,'2019-11-07 09:29:19',1,1),
	(12,'2019-11-07 09:31:48',NULL,b'1','New make collabs request ',1,'2019-11-07 09:31:48',1,1),
	(13,'2019-11-07 09:31:48',NULL,b'1','5 Menigirimi anda permintaan collabs',1,'2019-11-07 09:31:48',1,1),
	(14,'2019-11-07 09:33:20',NULL,b'1','Hallo make collabs request ',1,'2019-11-07 09:33:20',1,1),
	(15,'2019-11-07 09:34:17',NULL,b'1','Nurikhsan has accepted your collabs request ',1,'2019-11-07 09:34:17',21,1),
	(16,'2019-11-07 13:11:41',NULL,b'1','chrome-cau make collabs request ',1,'2019-11-07 13:11:41',1,1),
	(17,'2019-11-07 13:12:16',NULL,b'0','Nurikhsan has accepted your collabs request ',1,'2019-11-07 13:12:16',10,1),
	(18,'2019-11-08 07:23:01',NULL,b'0','Nurikhsan has accepted your collabs request ',1,'2019-11-08 07:23:01',5,1),
	(19,'2019-11-08 07:23:37',NULL,b'1','Nurikhsan has accepted your collabs request ',1,'2019-11-08 07:23:37',4,1),
	(20,'2019-11-08 07:23:44',NULL,b'1','Nurikhsan has accepted your collabs request ',1,'2019-11-08 07:23:44',3,1),
	(21,'2019-11-08 07:24:57',NULL,b'1','Yodi make collabs request ',1,'2019-11-08 07:24:57',1,1),
	(22,'2019-11-08 07:26:14',NULL,b'1','safari make collabs request ',1,'2019-11-08 07:26:14',1,1),
	(23,'2019-11-08 07:27:13',NULL,b'1','indra make collabs request ',1,'2019-11-08 07:27:13',1,1),
	(24,'2019-11-08 07:27:47',NULL,b'1','cau  make collabs request ',1,'2019-11-08 07:27:47',1,1),
	(25,'2019-11-08 07:28:20',NULL,b'1','alan make collabs request ',1,'2019-11-08 07:28:20',1,1),
	(26,'2019-11-08 07:29:14',NULL,b'1','New make collabs request ',1,'2019-11-08 07:29:14',1,1),
	(27,'2019-11-08 07:44:22',NULL,b'1','Nurikhsan has accepted your collabs request ',1,'2019-11-08 07:44:22',4,1),
	(28,'2019-11-08 09:00:49',NULL,b'1','Nurikhsan has accepted your collabs request ',1,'2019-11-08 09:00:49',8,1),
	(29,'2019-11-08 09:06:04',NULL,b'0','indra make collabs request ',1,'2019-11-08 09:06:04',6,1),
	(30,'2019-11-08 09:06:16',NULL,b'1','chrome has accepted your collabs request ',1,'2019-11-08 09:06:16',8,1),
	(31,'2019-11-08 09:10:31',NULL,b'0','Nurikhsan has accepted your collabs request ',1,'2019-11-08 09:10:31',5,1),
	(32,'2019-11-09 04:22:23',NULL,b'1','test make collabs request ',1,'2019-11-09 04:22:23',1,1),
	(33,'2019-11-09 04:22:39',NULL,b'0','Nurikhsan has accepted your collabs request ',1,'2019-11-09 04:22:39',2,1),
	(34,'2019-11-11 03:51:17',NULL,b'1','Akun make collabs request ',1,'2019-11-11 03:51:17',1,1),
	(35,'2019-11-11 03:51:35',NULL,b'1','Nurikhsan has accepted your collabs request ',1,'2019-11-11 03:51:35',11,1),
	(36,'2019-11-11 04:03:37',NULL,b'1','Nurikhsan make collabs request ',1,'2019-11-11 04:03:37',22,1),
	(37,'2019-11-11 04:03:44',NULL,b'1','Hikaru has accepted your collabs request ',1,'2019-11-11 04:03:44',1,1),
	(38,'2019-11-11 04:08:20',NULL,b'0','safari make collabs request ',1,'2019-11-11 04:08:20',22,1),
	(39,'2019-11-11 04:13:02',NULL,b'1','Hikaru has accepted your collabs request ',1,'2019-11-11 04:13:02',7,1),
	(40,'2019-11-11 04:53:37',NULL,b'1','Nurikhsan has accepted your collabs request ',1,'2019-11-11 04:53:37',7,1),
	(41,'2019-11-11 06:45:28',NULL,b'0','safari make collabs request ',1,'2019-11-11 06:45:28',18,1),
	(42,'2019-11-11 06:48:25',NULL,b'1','safari make collabs request ',1,'2019-11-11 06:48:25',3,1),
	(43,'2019-11-11 06:50:23',NULL,b'1','Yodi has accepted your collabs request ',1,'2019-11-11 06:50:23',7,1),
	(44,'2019-11-11 06:55:59',NULL,b'1','lll make collabs request ',1,'2019-11-11 06:55:59',7,1),
	(45,'2019-11-11 06:56:41',NULL,b'1','safari has accepted your collabs request ',1,'2019-11-11 06:56:41',16,1),
	(46,'2019-11-11 09:54:45',NULL,b'0','safari make collabs request ',1,'2019-11-11 09:54:45',NULL,1),
	(47,'2019-11-11 10:50:12',NULL,b'1','lll make collabs request ',1,'2019-11-11 10:50:12',1,1),
	(48,'2019-11-11 10:50:30',NULL,b'1','Nurikhsan has accepted your collabs request ',1,'2019-11-11 10:50:30',16,1),
	(49,'2019-11-11 15:19:45',NULL,b'1','Nurikhsan comment your status',1,'2019-11-11 15:19:45',1,1),
	(50,'2019-11-11 15:20:28',NULL,b'1','Nurikhsan comment your status',1,'2019-11-11 15:20:28',1,1),
	(51,'2019-11-11 15:22:20',NULL,b'1','lll comment your status (Naon)',1,'2019-11-11 15:22:20',16,1),
	(52,'2019-11-11 15:22:37',NULL,b'1','Nurikhsan comment your status (What\'s Your name ? )',1,'2019-11-11 15:22:37',1,1),
	(53,'2019-11-11 15:25:26',NULL,b'1','Nurikhsan comment your status (Hallo)',1,'2019-11-11 15:25:26',1,1),
	(54,'2019-11-11 15:26:05',NULL,b'1','Nurikhsan comment your status (Eh)',1,'2019-11-11 15:26:05',1,1),
	(55,'2019-11-11 15:26:14',NULL,b'1','Nurikhsan comment your status (Aya naooonnn?)',1,'2019-11-11 15:26:14',1,1),
	(56,'2019-11-11 15:28:06',NULL,b'1','lll comment your status (Ada notif kan?)',1,'2019-11-11 15:28:06',16,1),
	(57,'2019-11-11 15:28:25',NULL,b'1','lll comment your status (Beneran)',1,'2019-11-11 15:28:25',16,1),
	(58,'2019-11-11 15:30:48',NULL,b'1','lll comment your status (Hallo)',1,'2019-11-11 15:30:48',16,1),
	(59,'2019-11-11 15:31:37',NULL,b'1','lll comment your status (Hay)',1,'2019-11-11 15:31:37',16,1),
	(60,'2019-11-11 15:34:15',NULL,b'1','Nurikhsan comment your status (Yeah)',1,'2019-11-11 15:34:15',16,1),
	(61,'2019-11-11 15:34:45',NULL,b'1','Nurikhsan comment your status (I wanna test you)',1,'2019-11-11 15:34:45',16,1),
	(62,'2019-11-11 15:35:11',NULL,b'1','Nurikhsan comment your status (I dunno)',1,'2019-11-11 15:35:11',16,1),
	(63,'2019-11-11 16:11:32',NULL,b'1','Nurikhsan comment your status (Wkwk)',1,'2019-11-11 16:11:32',16,1),
	(64,'2019-11-11 16:11:44',NULL,b'1','lll comment your status (What ?)',1,'2019-11-11 16:11:44',1,1),
	(65,'2019-11-11 16:21:19',NULL,b'1','lll comment your status (Waw)',1,'2019-11-11 16:21:19',1,1),
	(66,'2019-11-11 16:26:28',NULL,b'1','Nurikhsan comment your status (Grest)',1,'2019-11-11 16:26:28',16,1),
	(67,'2019-11-12 06:46:23',NULL,b'1','lll make collabs request ',1,'2019-11-12 06:46:23',24,1),
	(68,'2019-11-13 09:13:37',NULL,b'1','Kimi has accepted your collabs request ',1,'2019-11-13 09:13:37',16,NULL),
	(69,'2019-11-13 12:53:04',NULL,b'0','lll make collabs request ',1,'2019-11-13 12:53:04',29,NULL),
	(70,'2019-11-13 12:53:35',NULL,b'0','lll make collabs request ',1,'2019-11-13 12:53:35',6,NULL),
	(71,'2019-11-14 13:31:08',NULL,b'1','ame make collabs request ',1,'2019-11-14 13:31:08',1,NULL),
	(72,'2019-11-14 13:31:14',NULL,b'1','Nurikhsan has accepted your collabs request ',1,'2019-11-14 13:31:14',28,NULL),
	(73,'2019-11-14 13:31:24',NULL,b'1','ame comment your status (Haiiii)',1,'2019-11-14 13:31:24',1,NULL),
	(74,'2019-11-14 13:31:39',NULL,b'1','ame comment your status (Nicce)',1,'2019-11-14 13:31:39',1,NULL),
	(75,'2019-11-14 13:56:31',NULL,b'0','ame make collabs request ',1,'2019-11-14 13:56:31',NULL,NULL),
	(76,'2019-11-17 06:45:40',NULL,b'1','ame comment your status (Hallo)',1,'2019-11-17 06:45:40',1,NULL),
	(77,'2019-11-17 09:32:01',NULL,b'1','ame comment your status (no Commeent?)',1,'2019-11-17 09:32:01',1,NULL),
	(78,'2019-11-17 09:39:25',NULL,b'1','ame comment your status (Hallo)',1,'2019-11-17 09:39:25',1,NULL),
	(79,'2019-11-17 09:39:29',NULL,b'1','ame comment your status (Hallo)',1,'2019-11-17 09:39:29',1,NULL),
	(80,'2019-11-17 09:39:46',NULL,b'1','ame comment your status (Naon)',1,'2019-11-17 09:39:46',1,NULL),
	(81,'2019-11-17 09:39:58',NULL,b'1','ame comment your status (Teu)',1,'2019-11-17 09:39:58',1,NULL),
	(82,'2019-11-17 09:41:40',NULL,b'1','ame comment your status (Hallo)',1,'2019-11-17 09:41:40',1,NULL),
	(83,'2019-11-17 09:41:53',NULL,b'1','ame comment your status (Naha)',1,'2019-11-17 09:41:53',1,NULL),
	(84,'2019-11-17 09:43:04',NULL,b'1','ame comment your status (Hallo)',1,'2019-11-17 09:43:04',1,NULL),
	(85,'2019-11-17 10:16:46',NULL,b'1','ame comment your status (Halllo)',1,'2019-11-17 10:16:46',1,NULL),
	(86,'2019-11-17 10:17:05',NULL,b'1','ame comment your status (Hemmm)',1,'2019-11-17 10:17:05',1,NULL),
	(87,'2019-11-17 10:18:30',NULL,b'1','ame comment your status (Test)',1,'2019-11-17 10:18:30',1,NULL),
	(88,'2019-11-17 10:20:57',NULL,b'1','ame comment your status (L)',1,'2019-11-17 10:20:57',1,NULL),
	(89,'2019-11-17 10:33:01',NULL,b'1','ame comment your status (Iyalah)',1,'2019-11-17 10:33:01',1,NULL),
	(90,'2019-11-17 10:36:08',NULL,b'1','ame comment your status (Test)',1,'2019-11-17 10:36:08',1,NULL),
	(91,'2019-11-17 10:36:22',NULL,b'1','ame comment your status (Aduh jadi ngaco)',1,'2019-11-17 10:36:22',1,NULL),
	(92,'2019-11-17 10:36:28',NULL,b'1','ame comment your status (Iya ngga sih )',1,'2019-11-17 10:36:28',1,NULL),
	(93,'2019-11-17 10:36:40',NULL,b'1','ame comment your status (Iya lah)',1,'2019-11-17 10:36:40',1,NULL),
	(94,'2019-11-17 11:21:37',NULL,b'1','ame make collabs request ',1,'2019-11-17 11:21:37',7,NULL),
	(95,'2019-11-17 11:21:45',NULL,b'0','safari has accepted your collabs request ',1,'2019-11-17 11:21:45',28,NULL),
	(96,'2019-11-17 11:23:42',NULL,b'1','ame comment your status (Test)',1,'2019-11-17 11:23:42',7,NULL),
	(97,'2019-11-17 11:25:06',NULL,b'0','indra make collabs request ',1,'2019-11-17 11:25:06',28,NULL),
	(98,'2019-11-17 11:25:10',NULL,b'0','ame has accepted your collabs request ',1,'2019-11-17 11:25:10',8,NULL),
	(99,'2019-11-17 11:25:28',NULL,b'1','indra make collabs request ',1,'2019-11-17 11:25:28',7,NULL),
	(100,'2019-11-17 12:00:08',NULL,b'1','nur make collabs request ',1,'2019-11-17 12:00:08',1,NULL),
	(101,'2019-11-17 12:00:26',NULL,b'1','Nurikhsan has accepted your collabs request ',1,'2019-11-17 12:00:26',32,NULL),
	(102,'2019-11-17 12:07:19',NULL,b'1','safari make collabs request ',1,'2019-11-17 12:07:19',32,NULL),
	(103,'2019-11-17 12:07:26',NULL,b'1','nur has accepted your collabs request ',1,'2019-11-17 12:07:26',7,NULL),
	(104,'2019-11-17 12:07:36',NULL,b'1','nur interest your businesss',1,'2019-11-17 12:07:36',7,NULL),
	(105,'2019-11-17 12:08:02',NULL,b'1','safari interest your businesss',1,'2019-11-17 12:08:02',32,NULL),
	(106,'2019-11-19 10:35:47',NULL,b'0','UMKM interest your businesss',1,'2019-11-19 10:35:47',33,NULL),
	(107,'2019-11-21 03:51:40',NULL,b'0','Nurikhsan comment your status (Hallo)',1,'2019-11-21 03:51:40',32,NULL),
	(108,'2019-11-21 06:03:40',NULL,b'1','nur interest your businesss',1,'2019-11-21 06:03:40',1,NULL);

/*!40000 ALTER TABLE `general_notification` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table interest_post
# ------------------------------------------------------------

DROP TABLE IF EXISTS `interest_post`;

CREATE TABLE `interest_post` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `is_interest` bit(1) DEFAULT NULL,
  `post_id` bigint(20) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `delete_at` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `interest_post` WRITE;
/*!40000 ALTER TABLE `interest_post` DISABLE KEYS */;

INSERT INTO `interest_post` (`id`, `user_id`, `is_interest`, `post_id`, `created_at`, `delete_at`, `status`, `update_at`)
VALUES
	(1,28,b'1',58,'2019-11-17 09:12:08',NULL,1,'2019-11-17 09:12:08'),
	(2,7,b'0',58,'2019-11-17 09:13:02',NULL,1,'2019-11-17 09:13:02'),
	(3,7,b'1',57,'2019-11-17 09:16:01',NULL,1,'2019-11-17 09:16:01'),
	(4,28,b'1',57,'2019-11-17 09:17:14',NULL,1,'2019-11-17 09:17:14'),
	(5,28,b'1',59,'2019-11-17 10:40:27',NULL,1,'2019-11-17 10:40:27'),
	(6,28,b'1',55,'2019-11-17 10:50:46',NULL,1,'2019-11-17 10:50:46'),
	(7,7,b'1',60,'2019-11-17 11:21:55',NULL,1,'2019-11-17 11:21:55'),
	(8,28,b'1',60,'2019-11-17 11:24:13',NULL,1,'2019-11-17 11:24:13'),
	(9,8,b'1',59,'2019-11-17 11:25:17',NULL,1,'2019-11-17 11:25:17'),
	(10,8,b'1',58,'2019-11-17 11:48:32',NULL,1,'2019-11-17 11:48:32'),
	(11,1,b'1',60,'2019-11-17 11:49:02',NULL,1,'2019-11-17 11:49:02'),
	(12,28,b'1',61,'2019-11-17 11:57:04',NULL,1,'2019-11-17 11:57:04'),
	(13,1,b'1',62,'2019-11-17 12:00:40',NULL,1,'2019-11-17 12:00:40'),
	(14,32,b'1',62,'2019-11-17 12:01:43',NULL,1,'2019-11-17 12:01:43'),
	(15,32,b'1',60,'2019-11-17 12:07:36',NULL,1,'2019-11-17 12:07:36'),
	(16,7,b'1',62,'2019-11-17 12:08:02',NULL,1,'2019-11-17 12:08:02'),
	(17,33,b'1',63,'2019-11-19 10:35:47',NULL,1,'2019-11-19 10:35:47'),
	(18,32,b'1',65,'2019-11-21 06:03:40',NULL,1,'2019-11-21 06:03:40');

/*!40000 ALTER TABLE `interest_post` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table partner
# ------------------------------------------------------------

DROP TABLE IF EXISTS `partner`;

CREATE TABLE `partner` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `partner_id` bigint(20) DEFAULT NULL,
  `confirm_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `delete_at` datetime DEFAULT NULL,
  `is_confirm` bit(1) DEFAULT NULL,
  `is_remove` bit(1) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `partner` WRITE;
/*!40000 ALTER TABLE `partner` DISABLE KEYS */;

INSERT INTO `partner` (`id`, `user_id`, `partner_id`, `confirm_at`, `created_at`, `delete_at`, `is_confirm`, `is_remove`, `status`, `update_at`)
VALUES
	(1,3,1,NULL,'2019-11-08 07:24:57',NULL,b'0',b'0',1,'2019-11-08 07:24:57'),
	(2,7,1,'2019-11-11 04:53:37','2019-11-08 07:26:14',NULL,b'1',b'0',1,'2019-11-08 07:26:14'),
	(3,8,1,'2019-11-08 09:00:49','2019-11-08 07:27:13',NULL,b'1',b'0',1,'2019-11-08 07:27:13'),
	(4,9,1,NULL,'2019-11-08 07:27:47',NULL,b'0',b'0',1,'2019-11-08 07:27:47'),
	(5,4,1,'2019-11-08 07:44:22','2019-11-08 07:28:20',NULL,b'1',b'0',1,'2019-11-08 07:28:20'),
	(6,5,1,'2019-11-08 09:10:31','2019-11-08 07:29:14',NULL,b'1',b'0',1,'2019-11-08 07:29:14'),
	(7,1,4,'2019-11-08 07:44:22','2019-11-08 07:44:22',NULL,b'1',b'0',1,'2019-11-08 07:44:22'),
	(8,1,8,'2019-11-08 09:00:49','2019-11-08 09:00:49',NULL,b'1',b'0',1,'2019-11-08 09:00:49'),
	(9,8,6,'2019-11-08 09:06:16','2019-11-08 09:06:04',NULL,b'1',b'0',1,'2019-11-08 09:06:04'),
	(10,6,8,'2019-11-08 09:06:16','2019-11-08 09:06:16',NULL,b'1',b'0',1,'2019-11-08 09:06:16'),
	(11,1,5,'2019-11-08 09:10:31','2019-11-08 09:10:31',NULL,b'1',b'0',1,'2019-11-08 09:10:31'),
	(12,2,1,'2019-11-09 04:22:39','2019-11-09 04:22:23',NULL,b'1',b'0',1,'2019-11-09 04:22:23'),
	(13,1,2,'2019-11-09 04:22:39','2019-11-09 04:22:39',NULL,b'1',b'0',1,'2019-11-09 04:22:39'),
	(14,11,1,'2019-11-11 03:51:35','2019-11-11 03:51:16',NULL,b'1',b'0',1,'2019-11-11 03:51:16'),
	(15,1,11,'2019-11-11 03:51:35','2019-11-11 03:51:35',NULL,b'1',b'0',1,'2019-11-11 03:51:35'),
	(16,1,22,'2019-11-11 04:03:44','2019-11-11 04:03:37',NULL,b'1',b'0',1,'2019-11-11 04:03:37'),
	(17,22,1,'2019-11-11 04:03:44','2019-11-11 04:03:44',NULL,b'1',b'0',1,'2019-11-11 04:03:44'),
	(18,7,22,'2019-11-11 04:13:02','2019-11-11 04:08:20',NULL,b'1',b'0',1,'2019-11-11 04:08:20'),
	(19,22,7,'2019-11-11 04:13:02','2019-11-11 04:13:02',NULL,b'1',b'0',1,'2019-11-11 04:13:02'),
	(20,1,7,'2019-11-11 04:53:37','2019-11-11 04:53:37',NULL,b'1',b'0',1,'2019-11-11 04:53:37'),
	(21,7,18,NULL,'2019-11-11 06:45:27',NULL,b'0',b'0',1,'2019-11-11 06:45:27'),
	(22,7,3,'2019-11-11 06:50:23','2019-11-11 06:48:25',NULL,b'1',b'0',1,'2019-11-11 06:48:25'),
	(23,3,7,'2019-11-11 06:50:23','2019-11-11 06:50:23',NULL,b'1',b'0',1,'2019-11-11 06:50:23'),
	(24,16,7,'2019-11-11 06:56:41','2019-11-11 06:55:59',NULL,b'1',b'0',1,'2019-11-11 06:55:59'),
	(25,7,16,'2019-11-11 06:56:41','2019-11-11 06:56:41',NULL,b'1',b'0',1,'2019-11-11 06:56:41'),
	(26,7,NULL,NULL,'2019-11-11 09:54:45',NULL,b'0',b'0',1,'2019-11-11 09:54:45'),
	(27,16,1,'2019-11-11 10:50:30','2019-11-11 10:50:12',NULL,b'1',b'0',1,'2019-11-11 10:50:12'),
	(28,1,16,'2019-11-11 10:50:30','2019-11-11 10:50:30',NULL,b'1',b'0',1,'2019-11-11 10:50:30'),
	(29,16,24,'2019-11-13 09:13:37','2019-11-12 06:46:23',NULL,b'1',b'0',1,'2019-11-12 06:46:23'),
	(30,24,16,'2019-11-13 09:13:36','2019-11-13 09:13:36',NULL,b'1',b'0',1,'2019-11-13 09:13:36'),
	(31,16,29,NULL,'2019-11-13 12:53:04',NULL,b'0',b'0',1,'2019-11-13 12:53:04'),
	(32,16,6,NULL,'2019-11-13 12:53:35',NULL,b'0',b'0',1,'2019-11-13 12:53:35'),
	(33,28,1,'2019-11-14 13:31:14','2019-11-14 13:31:08',NULL,b'1',b'0',1,'2019-11-14 13:31:08'),
	(34,1,28,'2019-11-14 13:31:14','2019-11-14 13:31:14',NULL,b'1',b'0',1,'2019-11-14 13:31:14'),
	(35,28,NULL,NULL,'2019-11-14 13:56:30',NULL,b'0',b'0',1,'2019-11-14 13:56:30'),
	(36,28,7,'2019-11-17 11:21:45','2019-11-17 11:21:37',NULL,b'1',b'0',1,'2019-11-17 11:21:37'),
	(37,7,28,'2019-11-17 11:21:45','2019-11-17 11:21:45',NULL,b'1',b'0',1,'2019-11-17 11:21:45'),
	(38,8,28,'2019-11-17 11:25:10','2019-11-17 11:25:06',NULL,b'1',b'0',1,'2019-11-17 11:25:06'),
	(39,28,8,'2019-11-17 11:25:10','2019-11-17 11:25:10',NULL,b'1',b'0',1,'2019-11-17 11:25:10'),
	(40,8,7,NULL,'2019-11-17 11:25:28',NULL,b'0',b'0',1,'2019-11-17 11:25:28'),
	(41,32,1,'2019-11-17 12:00:26','2019-11-17 12:00:08',NULL,b'1',b'0',1,'2019-11-17 12:00:08'),
	(42,1,32,'2019-11-17 12:00:26','2019-11-17 12:00:26',NULL,b'1',b'0',1,'2019-11-17 12:00:26'),
	(43,7,32,'2019-11-17 12:07:26','2019-11-17 12:07:19',NULL,b'1',b'0',1,'2019-11-17 12:07:19'),
	(44,32,7,'2019-11-17 12:07:26','2019-11-17 12:07:26',NULL,b'1',b'0',1,'2019-11-17 12:07:26');

/*!40000 ALTER TABLE `partner` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table post
# ------------------------------------------------------------

DROP TABLE IF EXISTS `post`;

CREATE TABLE `post` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `post` text DEFAULT NULL,
  `unique_postid` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `delete_at` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  `url_photo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;

INSERT INTO `post` (`id`, `user_id`, `post`, `unique_postid`, `created_at`, `delete_at`, `status`, `update_at`, `url_photo`)
VALUES
	(1,3,'Hello World 1 88 a','post-K6JHEX','2019-11-14 11:48:30',NULL,1,'2019-11-14 11:48:30',NULL),
	(2,1,'Test','post-98TJJW','2019-11-08 10:33:15',NULL,1,'2019-11-08 10:33:15',NULL),
	(3,1,'Test','post-X5BCUL','2019-11-08 10:33:23',NULL,1,'2019-11-08 10:33:23',NULL),
	(4,1,'Y','post-79LJJD','2019-11-08 10:33:42',NULL,1,'2019-11-08 10:33:42',NULL),
	(5,1,'Segoe UI','post-W19X70','2019-11-09 04:15:16',NULL,1,'2019-11-09 04:15:16',NULL),
	(6,1,'LL','post-WNDY8L','2019-11-09 04:23:29',NULL,1,'2019-11-09 04:23:29',NULL),
	(7,2,'K','post-1U9HAW','2019-11-09 04:23:41',NULL,1,'2019-11-09 04:23:41',NULL),
	(8,1,'Hallo','post-PUD43A','2019-11-09 05:53:11',NULL,1,'2019-11-09 05:53:11',NULL),
	(9,1,'jhnd\nFsdfd\nsf\ndsf\nds\nf\nds\nfds\n\ndsf\n','post-UTDGAC','2019-11-09 05:53:33',NULL,1,'2019-11-09 05:53:33',NULL),
	(10,1,'LLLL','post-KWK6A3','2019-11-09 05:54:52',NULL,1,'2019-11-09 05:54:52',NULL),
	(11,1,'Test','post-76IB59','2019-11-09 05:55:11',NULL,1,'2019-11-09 05:55:11',NULL),
	(12,1,'Halllooooooo','post-7Z0S1N','2019-11-09 05:59:38',NULL,1,'2019-11-09 05:59:38',NULL),
	(13,1,'LLLL','post-LN29PE','2019-11-09 05:59:52',NULL,1,'2019-11-09 05:59:52',NULL),
	(14,1,'KL','post-QI6V91','2019-11-09 06:27:58',NULL,1,'2019-11-09 06:27:58',NULL),
	(15,1,'sss','post-FXLZ04','2019-11-10 07:19:19',NULL,1,'2019-11-10 07:19:19',NULL),
	(16,1,'WWWWW','post-EN2GND','2019-11-10 07:19:27',NULL,1,'2019-11-10 07:19:27',NULL),
	(17,1,'dsd','post-U9IJ24','2019-11-10 07:20:09',NULL,1,'2019-11-10 07:20:09',NULL),
	(18,1,'q','post-BVZR7D','2019-11-10 07:20:17',NULL,1,'2019-11-10 07:20:17',NULL),
	(19,1,'H','post-9DEGD5','2019-11-10 07:20:37',NULL,1,'2019-11-10 07:20:37',NULL),
	(20,1,'G','post-LR5UHD','2019-11-10 07:20:42',NULL,1,'2019-11-10 07:20:42',NULL),
	(21,1,'a','post-U9BI1D','2019-11-10 07:35:10',NULL,1,'2019-11-10 07:35:10',NULL),
	(22,1,'S','post-SJI4XY','2019-11-10 07:35:16',NULL,1,'2019-11-10 07:35:16',NULL),
	(23,11,'Youre','post-BUV6OM','2019-11-11 03:00:40',NULL,1,'2019-11-11 03:00:40',NULL),
	(24,11,'Type','post-2Y6TFJ','2019-11-11 03:32:57',NULL,1,'2019-11-11 03:32:57',NULL),
	(25,22,'Hallo','post-0APD7V','2019-11-11 03:59:00',NULL,1,'2019-11-11 03:59:00',NULL),
	(26,7,'Hallo','post-35ZINW','2019-11-11 04:08:11',NULL,1,'2019-11-11 04:08:11',NULL),
	(27,1,'Hallo','post-WAWJND','2019-11-11 05:34:21',NULL,1,'2019-11-11 05:34:21',NULL),
	(28,16,'Aman','post-CQ8ETN','2019-11-11 10:41:23',NULL,1,'2019-11-11 10:41:23',NULL),
	(29,16,'Test','post-3CL37R','2019-11-11 15:30:43',NULL,1,'2019-11-11 15:30:43',NULL),
	(30,16,'Hellooo','post-AHSTZQ','2019-11-11 15:34:37',NULL,1,'2019-11-11 15:34:37',NULL),
	(31,16,'Hallo','post-TSOSYH','2019-11-11 15:56:01',NULL,1,'2019-11-11 15:56:01',NULL),
	(32,16,'Hallo','post-1A7HXM','2019-11-11 16:02:17',NULL,1,'2019-11-11 16:02:17','http://localhost:8080/downloadFile/20191109_093908_0000.png'),
	(33,16,'Hallo','post-QV8KJ7','2019-11-11 16:03:35',NULL,1,'2019-11-11 16:03:35',NULL),
	(34,1,'First Gate Posting','post-M19BX4','2019-11-11 16:10:18',NULL,1,'2019-11-11 16:10:18','http://localhost:8080/downloadFile/69389524_2418618711694184_7951855193736347648_n.jpg'),
	(35,16,'Our First Client\nI hope it can bring us for the bright something','post-WSYXLY','2019-11-11 16:11:09',NULL,1,'2019-11-11 16:11:09','http://localhost:8080/downloadFile/coffeshop.jpeg'),
	(36,1,'Without an image','post-9BBRRX','2019-11-11 16:13:05',NULL,1,'2019-11-11 16:13:05',''),
	(37,1,'Without an image','post-S60AMB','2019-11-11 16:13:20',NULL,1,'2019-11-11 16:13:20',''),
	(38,1,'l','post-46AFFM','2019-11-11 16:14:27',NULL,1,'2019-11-11 16:14:27',''),
	(39,1,'Test','post-QQ8HT2','2019-11-11 16:18:28',NULL,1,'2019-11-11 16:18:28',''),
	(40,1,'Amazing','post-441Z85','2019-11-11 16:19:48',NULL,1,'2019-11-11 16:19:48',''),
	(41,1,'With Photo','post-G9V1IO','2019-11-11 16:20:00',NULL,1,'2019-11-11 16:20:00','http://localhost:8080/downloadFile/20191109_093908_0000.png'),
	(42,16,'Indonesia','post-5FQ9Q1','2019-11-11 16:26:02',NULL,1,'2019-11-11 16:26:02','http://localhost:8080/downloadFile/login-background.png'),
	(43,1,'Hallo','post-GSW6Y3','2019-11-12 03:36:57',NULL,1,'2019-11-12 03:36:57','http://localhost:8080/downloadFile/WhatsApp%2520Image%25202019-10-07%2520at%252013.40.41.jpeg'),
	(44,1,'Hay','post-JQM1TL','2019-11-12 03:38:01',NULL,1,'2019-11-12 03:38:01','http://localhost:8080/downloadFile/WhatsApp%20Image%202019-10-13%20at%2018.42.56.jpeg'),
	(45,23,'It is Our Coffe','post-3B3OYI','2019-11-12 06:34:47',NULL,1,'2019-11-12 06:34:47','http://localhost:8080/downloadFile/coffeshop.jpeg'),
	(46,24,'Test Posting','post-T8BEYU','2019-11-12 09:02:18',NULL,1,'2019-11-12 09:02:18',''),
	(47,24,'Hallo','post-GBNSF1','2019-11-13 09:13:28',NULL,1,'2019-11-13 09:13:28','http://localhost:8080/downloadFile/69389524_2418618711694184_7951855193736347648_n.jpg'),
	(48,1,'Test','post-JLL9B5','2019-11-14 11:38:04',NULL,1,'2019-11-14 11:38:04',''),
	(49,1,'Halloooo','post-MV5BS6','2019-11-14 11:59:55',NULL,1,'2019-11-14 11:59:55','http://localhost:8080/downloadFile/WhatsApp%20Image%202019-10-19%20at%2021.13.28.jpeg'),
	(50,1,'Alhamdulillah','post-6G0Z6X','2019-11-14 13:23:33',NULL,1,'2019-11-14 13:23:33','http://localhost:8080/downloadFile/69389524_2418618711694184_7951855193736347648_n.jpg'),
	(51,1,'Test','post-Z07Y9L','2019-11-14 13:22:03',NULL,1,'2019-11-14 13:22:03',''),
	(52,1,'Hallo','post-3LA8YP','2019-11-14 13:25:40',NULL,1,'2019-11-14 13:25:40',''),
	(53,1,'Noh','post-L8N76J','2019-11-14 13:25:51',NULL,1,'2019-11-14 13:25:51','http://localhost:8080/downloadFile/20191109_093908_0000.png'),
	(54,1,'Nih','post-GD6RAF','2019-11-14 13:26:21',NULL,1,'2019-11-14 13:26:21','http://localhost:8080/downloadFile/20191109_093908_0000.png'),
	(55,1,'olll lll lo update But there no update :-(','post-2W3BVT','2019-11-16 16:46:16',NULL,1,'2019-11-16 16:46:16','http://localhost:8080/downloadFile/69389524_2418618711694184_7951855193736347648_n.jpg'),
	(56,28,'Mys post','post-Y3B2OU','2019-11-14 14:11:21',NULL,1,'2019-11-14 14:11:21',''),
	(57,1,'Posting Change To Create Business :\n\nWhat Business Attribute that we have to input :\n1. The title of business\n2. Image that describe your business\n3. Goals for Your Business\n4. Marketing Target for Your Business\n5. Your Current Business Condition (Describe here)\n6. What You need to improve Your Business  (Ex. Investor)\n7. Summary About Your business Idea \n8. Dll\n\n\n\nGimana ?\n\nSo in our App have not posting, but there are create business.\nWhen we create Some Business, we will display some form that must be input \nby user.\nIf like that , so we have unique value and different with other social network.','post-MXU1YB','2019-11-16 17:56:09',NULL,1,'2019-11-16 17:56:09',''),
	(58,1,'Bikin status','post-8GHS2E','2019-11-17 06:45:22',NULL,1,'2019-11-17 06:45:22',''),
	(59,28,'Test again','post-935GUM','2019-11-17 10:41:57',NULL,1,'2019-11-17 10:41:57',''),
	(60,7,'Bikin','post-PUGOAY','2019-11-17 11:21:25',NULL,1,'2019-11-17 11:21:25',''),
	(61,28,'Gate And Way','post-RTQ0GW','2019-11-17 11:53:37',NULL,1,'2019-11-17 11:53:37','http://localhost:8080/downloadFile/69389524_2418618711694184_7951855193736347648_n.jpg'),
	(62,32,'Hallo','post-BPXC02','2019-11-17 11:59:40',NULL,1,'2019-11-17 11:59:40',''),
	(63,33,'Test','post-H4TKH2','2019-11-19 10:35:41',NULL,1,'2019-11-19 10:35:41','http://localhost:8080/downloadFile/1572787513235.png'),
	(64,1,'Hallo','post-03EP5L','2019-11-21 04:01:20',NULL,1,'2019-11-21 04:01:20',''),
	(65,1,'Gate','post-8YLFPY','2019-11-21 04:07:56',NULL,1,'2019-11-21 04:07:56','http://localhost:8080/downloadFile/gate.jpg');

/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table post_first_comment
# ------------------------------------------------------------

DROP TABLE IF EXISTS `post_first_comment`;

CREATE TABLE `post_first_comment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `first_comment_id` bigint(20) DEFAULT NULL,
  `post_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `post_first_comment` WRITE;
/*!40000 ALTER TABLE `post_first_comment` DISABLE KEYS */;

INSERT INTO `post_first_comment` (`id`, `first_comment_id`, `post_id`, `user_id`)
VALUES
	(1,1,1,7),
	(2,2,1,1),
	(3,3,4,1),
	(4,4,6,2),
	(5,5,13,1),
	(6,6,14,1),
	(7,7,23,11),
	(8,8,23,11),
	(9,9,24,11),
	(10,10,24,1),
	(11,11,24,11),
	(12,12,25,22),
	(13,13,26,7),
	(14,14,26,1),
	(15,15,26,7),
	(16,16,25,7),
	(17,17,26,7),
	(18,18,26,3),
	(19,19,26,7),
	(20,20,27,16),
	(21,21,27,16),
	(22,22,28,16),
	(23,23,27,16),
	(24,24,27,16),
	(25,25,27,16),
	(26,26,27,16),
	(27,27,28,16),
	(28,28,28,1),
	(29,29,28,1),
	(30,30,29,1),
	(31,31,29,1),
	(32,32,29,16),
	(33,33,29,1),
	(34,34,30,1),
	(35,35,30,16),
	(36,36,30,1),
	(37,37,33,16),
	(38,38,35,1),
	(39,39,34,16),
	(40,40,41,16),
	(41,41,42,1),
	(42,42,55,1),
	(43,43,55,28),
	(44,44,54,28),
	(45,45,55,1),
	(46,46,58,28),
	(47,47,58,1),
	(48,48,57,28),
	(49,49,58,28),
	(50,50,58,28),
	(51,51,58,28),
	(52,52,58,28),
	(53,53,58,28),
	(54,54,58,28),
	(55,55,58,28),
	(56,56,58,28),
	(57,57,58,28),
	(58,58,58,28),
	(59,59,58,28),
	(60,60,59,28),
	(61,61,59,28),
	(62,62,59,28),
	(63,63,59,28),
	(64,64,58,28),
	(65,65,59,28),
	(66,66,55,28),
	(67,67,55,28),
	(68,68,55,28),
	(69,69,57,28),
	(70,70,59,28),
	(71,71,60,28),
	(72,72,62,32),
	(73,73,63,33),
	(74,74,62,1);

/*!40000 ALTER TABLE `post_first_comment` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table profile_photo
# ------------------------------------------------------------

DROP TABLE IF EXISTS `profile_photo`;

CREATE TABLE `profile_photo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `is_apply` bit(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `delete_at` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `profile_photo` WRITE;
/*!40000 ALTER TABLE `profile_photo` DISABLE KEYS */;

INSERT INTO `profile_photo` (`id`, `user_id`, `url`, `is_apply`, `created_at`, `delete_at`, `status`, `update_at`)
VALUES
	(1,1,'test_url',b'0','2019-10-17 05:35:07',NULL,1,'2019-10-17 05:35:07'),
	(2,1,'http://localhost:8080/downloadFile/WhatsApp%20Image%202019-10-13%20at%2018.42.56.jpeg',b'0','2019-10-17 05:37:45',NULL,1,'2019-10-17 05:37:45'),
	(3,1,'http://localhost:8080/downloadFile/WhatsApp%20Image%202019-10-13%20at%2018.42.56.jpeg',b'0','2019-10-17 05:39:33',NULL,1,'2019-10-17 05:39:33'),
	(4,1,'http://localhost:8080/downloadFile/WhatsApp%20Image%202019-10-07%20at%2013.40.41.jpeg',b'0','2019-10-17 05:45:45',NULL,1,'2019-10-17 05:45:45'),
	(5,1,'http://localhost:8080/downloadFile/WhatsApp%20Image%202019-10-13%20at%2018.42.56.jpeg',b'0','2019-10-17 05:49:54',NULL,1,'2019-10-17 05:49:54'),
	(6,1,'http://localhost:8080/downloadFile/69389524_2418618711694184_7951855193736347648_n.jpg',b'0','2019-10-18 07:30:10',NULL,1,'2019-10-18 07:30:10'),
	(7,1,'http://localhost:8080/downloadFile/WhatsApp%20Image%202019-10-07%20at%2013.40.41.jpeg',b'0','2019-10-18 07:31:11',NULL,1,'2019-10-18 07:31:11'),
	(8,1,'http://localhost:8080/downloadFile/WhatsApp%20Image%202019-10-07%20at%2013.40.41.jpeg',b'0','2019-10-18 07:32:25',NULL,1,'2019-10-18 07:32:25'),
	(9,2,'http://localhost:8080/downloadFile/69389524_2418618711694184_7951855193736347648_n.jpg',b'0','2019-10-18 07:33:57',NULL,1,'2019-10-18 07:33:57'),
	(10,1,'http://localhost:8080/downloadFile/WhatsApp%20Image%202019-10-13%20at%2018.42.56.jpeg',b'0','2019-10-18 08:21:56',NULL,1,'2019-10-18 08:21:56'),
	(11,1,'http://localhost:8080/downloadFile/WhatsApp%20Image%202019-10-07%20at%2013.40.41.jpeg',b'0','2019-10-18 08:22:46',NULL,1,'2019-10-18 08:22:46'),
	(12,1,'http://localhost:8080/downloadFile/WhatsApp%20Image%202019-10-07%20at%2013.40.41.jpeg',b'0','2019-10-18 08:23:22',NULL,1,'2019-10-18 08:23:22'),
	(13,1,'http://localhost:8080/downloadFile/WhatsApp%20Image%202019-10-13%20at%2018.42.56.jpeg',b'0','2019-10-18 08:26:03',NULL,1,'2019-10-18 08:26:03'),
	(14,2,'http://localhost:8080/downloadFile/WhatsApp%20Image%202019-10-13%20at%2018.42.56.jpeg',b'0','2019-10-19 06:02:42',NULL,1,'2019-10-19 06:02:42'),
	(15,1,'http://localhost:8080/downloadFile/WhatsApp%2520Image%25202019-10-07%2520at%252013.40.41.jpeg',b'0','2019-10-19 06:07:05',NULL,1,'2019-10-19 06:07:05'),
	(16,3,'http://localhost:8080/downloadFile/WhatsApp%20Image%202019-10-13%20at%2018.42.56.jpeg',b'0','2019-10-19 07:26:37',NULL,1,'2019-10-19 07:26:37'),
	(17,4,'http://localhost:8080/downloadFile/WhatsApp%20Image%202019-10-13%20at%2018.42.56.jpeg',b'1','2019-10-19 10:40:40',NULL,1,'2019-10-19 10:40:40'),
	(18,5,'http://localhost:8080/downloadFile/WhatsApp%20Image%202019-10-19%20at%2021.13.28.jpeg',b'0','2019-10-20 17:18:27',NULL,1,'2019-10-20 17:18:27'),
	(19,6,'http://localhost:8080/downloadFile/WhatsApp%20Image%202019-10-13%20at%2018.42.56.jpeg',b'0','2019-10-20 17:21:45',NULL,1,'2019-10-20 17:21:45'),
	(20,7,'http://localhost:8080/downloadFile/69389524_2418618711694184_7951855193736347648_n.jpg',b'0','2019-10-21 03:40:30',NULL,1,'2019-10-21 03:40:30'),
	(21,5,'http://localhost:8080/downloadFile/Screen%20Shot%202019-10-21%20at%2017.31.22.png',b'1','2019-10-23 06:28:48',NULL,1,'2019-10-23 06:28:48'),
	(22,1,'http://localhost:8080/downloadFile/Screen%20Shot%202019-10-21%20at%2017.31.22.png',b'0','2019-10-23 06:33:32',NULL,1,'2019-10-23 06:33:32'),
	(23,10,'http://localhost:8080/downloadFile/69389524_2418618711694184_7951855193736347648_n.jpg',b'0','2019-10-23 08:51:36',NULL,1,'2019-10-23 08:51:36'),
	(24,10,'http://localhost:8080/downloadFile/Screen%20Shot%202019-10-21%20at%2017.31.22.png',b'0','2019-10-23 09:11:44',NULL,1,'2019-10-23 09:11:44'),
	(25,8,'http://localhost:8080/downloadFile/Screen%20Shot%202019-09-26%20at%2015.51.14.png',b'0','2019-10-23 14:57:37',NULL,1,'2019-10-23 14:57:37'),
	(26,9,'http://localhost:8080/downloadFile/Screen%20Shot%202019-10-21%20at%2017.31.22.png',b'1','2019-10-23 15:38:46',NULL,1,'2019-10-23 15:38:46'),
	(27,16,'http://localhost:8080/downloadFile/WhatsApp%20Image%202019-10-13%20at%2018.42.56.jpeg',b'1','2019-10-30 11:53:39',NULL,1,'2019-10-30 11:53:39'),
	(28,8,'http://localhost:8080/downloadFile/WhatsApp%2520Image%25202019-10-07%2520at%252013.40.41.jpeg',b'0','2019-11-05 06:02:03',NULL,1,'2019-11-05 06:02:03'),
	(29,8,'http://localhost:8080/downloadFile/WhatsApp%20Image%202019-10-19%20at%2021.13.28.jpeg',b'0','2019-11-05 06:03:53',NULL,1,'2019-11-05 06:03:53'),
	(30,8,'http://localhost:8080/downloadFile/WhatsApp%20Image%202019-10-13%20at%2018.42.56.jpeg',b'1','2019-11-05 06:05:23',NULL,1,'2019-11-05 06:05:23'),
	(31,6,'http://localhost:8080/downloadFile/69389524_2418618711694184_7951855193736347648_n.jpg',b'1','2019-11-05 06:12:53',NULL,1,'2019-11-05 06:12:53'),
	(32,7,'http://localhost:8080/downloadFile/69389524_2418618711694184_7951855193736347648_n.jpg',b'0','2019-11-05 06:55:44',NULL,1,'2019-11-05 06:55:44'),
	(33,10,'http://localhost:8080/downloadFile/69389524_2418618711694184_7951855193736347648_n.jpg',b'1','2019-11-05 07:29:11',NULL,1,'2019-11-05 07:29:11'),
	(34,2,'http://localhost:8080/downloadFile/WhatsApp%20Image%202019-10-19%20at%2021.13.28.jpeg',b'1','2019-11-05 08:37:35',NULL,1,'2019-11-05 08:37:35'),
	(35,1,'http://localhost:8080/downloadFile/WhatsApp%20Image%202019-10-19%20at%2021.13.28.jpeg',b'0','2019-11-09 04:20:44',NULL,1,'2019-11-09 04:20:44'),
	(36,7,'http://localhost:8080/downloadFile/20191109_094303_0000.png',b'0','2019-11-11 04:11:25',NULL,1,'2019-11-11 04:11:25'),
	(37,7,'http://localhost:8080/downloadFile/20191109_093908_0000.png',b'0','2019-11-11 05:03:52',NULL,1,'2019-11-11 05:03:52'),
	(38,7,'http://localhost:8080/downloadFile/1573277387101.png',b'0','2019-11-11 05:04:41',NULL,1,'2019-11-11 05:04:41'),
	(39,7,'http://localhost:8080/downloadFile/1573277387101.png',b'0','2019-11-11 05:05:41',NULL,1,'2019-11-11 05:05:41'),
	(40,7,'http://localhost:8080/downloadFile/69389524_2418618711694184_7951855193736347648_n.jpg',b'0','2019-11-11 05:06:36',NULL,1,'2019-11-11 05:06:36'),
	(41,7,'http://localhost:8080/downloadFile/20191109_093908_0000.png',b'1','2019-11-11 05:07:40',NULL,1,'2019-11-11 05:07:40'),
	(42,3,'http://localhost:8080/downloadFile/1573277387101.png',b'1','2019-11-11 06:50:54',NULL,1,'2019-11-11 06:50:54'),
	(43,1,'http://localhost:8080/downloadFile/coffeshop.jpeg',b'1','2019-11-13 13:52:34',NULL,1,'2019-11-13 13:52:34'),
	(44,28,'http://localhost:8080/downloadFile/WhatsApp%20Image%202019-10-13%20at%2018.42.56.jpeg',b'1','2019-11-14 13:36:26',NULL,1,'2019-11-14 13:36:26');

/*!40000 ALTER TABLE `profile_photo` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table signup_notification
# ------------------------------------------------------------

DROP TABLE IF EXISTS `signup_notification`;

CREATE TABLE `signup_notification` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `delete_at` datetime DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `signup_notification` WRITE;
/*!40000 ALTER TABLE `signup_notification` DISABLE KEYS */;

INSERT INTO `signup_notification` (`id`, `created_at`, `delete_at`, `message`, `status`, `update_at`, `username`)
VALUES
	(1,'2019-11-12 09:19:32',NULL,'Koto Has Joined Gate and Choose Laundry For Their business, Check profile for make your partner',1,'2019-11-12 09:19:32','Koto-L8JTAH'),
	(2,'2019-11-12 10:30:01',NULL,'Lp Has Joined Gate and Choose Salon For Their business, Check profile for make your partner',1,'2019-11-12 10:30:01','Lp-ETB2TD'),
	(3,'2019-11-17 11:58:35',NULL,'nur Has Joined Gate and Choose Laundry For Their business, Check profile for make your partner',1,'2019-11-17 11:58:35','nur-P4ORX3'),
	(4,'2019-11-17 11:59:18',NULL,'nur Has Joined Gate and Choose Laundry For Their business, Check profile for make your partner',1,'2019-11-17 11:59:18','nur-TNDOKN'),
	(5,'2019-11-19 06:56:15',NULL,'UMKM Has Joined Gate and Choose Coffe Shop For Their business, Check profile for make your partner',1,'2019-11-19 06:56:15','UMKM-ZGQABZ');

/*!40000 ALTER TABLE `signup_notification` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table user_achievement
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user_achievement`;

CREATE TABLE `user_achievement` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `achievement_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `user_achievement` WRITE;
/*!40000 ALTER TABLE `user_achievement` DISABLE KEYS */;

INSERT INTO `user_achievement` (`id`, `achievement_id`, `user_id`)
VALUES
	(1,1,4),
	(34,34,1),
	(39,39,28),
	(11,11,16),
	(12,12,16),
	(13,13,16),
	(14,14,16),
	(15,15,16),
	(16,16,16),
	(17,17,16),
	(18,18,7),
	(19,19,16),
	(20,20,16),
	(21,21,16),
	(22,22,16),
	(23,23,16);

/*!40000 ALTER TABLE `user_achievement` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table user_business_category
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user_business_category`;

CREATE TABLE `user_business_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `category_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `user_business_category` WRITE;
/*!40000 ALTER TABLE `user_business_category` DISABLE KEYS */;

INSERT INTO `user_business_category` (`id`, `category_id`, `user_id`)
VALUES
	(1,1,1);

/*!40000 ALTER TABLE `user_business_category` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table user_education
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user_education`;

CREATE TABLE `user_education` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `education_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `user_education` WRITE;
/*!40000 ALTER TABLE `user_education` DISABLE KEYS */;

INSERT INTO `user_education` (`id`, `education_id`, `user_id`)
VALUES
	(1,2,1),
	(2,3,2),
	(7,8,1);

/*!40000 ALTER TABLE `user_education` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table user_experience
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user_experience`;

CREATE TABLE `user_experience` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `experience_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `user_experience` WRITE;
/*!40000 ALTER TABLE `user_experience` DISABLE KEYS */;

INSERT INTO `user_experience` (`id`, `experience_id`, `user_id`)
VALUES
	(9,10,28),
	(2,3,2),
	(3,4,1),
	(10,11,1);

/*!40000 ALTER TABLE `user_experience` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table user_post
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user_post`;

CREATE TABLE `user_post` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `user_post` WRITE;
/*!40000 ALTER TABLE `user_post` DISABLE KEYS */;

INSERT INTO `user_post` (`id`, `post_id`, `user_id`)
VALUES
	(1,1,1),
	(2,2,1),
	(3,3,1),
	(4,4,1),
	(5,5,1),
	(6,6,1),
	(7,7,2),
	(8,8,1),
	(9,9,1),
	(10,10,1),
	(11,11,1),
	(12,12,1),
	(13,13,1),
	(14,14,1),
	(15,15,1),
	(16,16,1),
	(17,17,1),
	(18,18,1),
	(19,19,1),
	(20,20,1),
	(21,21,1),
	(22,22,1),
	(23,23,11),
	(24,24,11),
	(25,25,22),
	(26,26,7),
	(27,27,1),
	(28,28,16),
	(29,29,16),
	(30,30,16),
	(31,31,16),
	(32,32,16),
	(33,33,16),
	(34,34,1),
	(35,35,16),
	(36,36,1),
	(37,37,1),
	(38,38,1),
	(39,39,1),
	(40,40,1),
	(41,41,1),
	(42,42,16),
	(43,43,1),
	(44,44,1),
	(45,45,23),
	(46,46,24),
	(47,47,24),
	(48,48,1),
	(49,49,1),
	(50,50,1),
	(51,51,1),
	(52,52,1),
	(53,53,1),
	(54,54,1),
	(55,55,1),
	(56,56,28),
	(57,57,1),
	(58,58,1),
	(59,59,28),
	(60,60,7),
	(61,61,28),
	(62,62,32),
	(63,63,33),
	(64,64,1),
	(65,65,1);

/*!40000 ALTER TABLE `user_post` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `birth_date` datetime DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `delete_at` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  `cover` varchar(255) DEFAULT NULL,
  `photo_profile` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `business_interest` varchar(255) DEFAULT NULL,
  `role_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `first_name`, `last_name`, `gender`, `phone_number`, `birth_date`, `email`, `username`, `password`, `description`, `created_at`, `delete_at`, `status`, `update_at`, `cover`, `photo_profile`, `address`, `business_interest`, `role_id`)
VALUES
	(1,'Nurikhsan','hikari','Male','0897878878','2019-10-18 17:06:43','hikari29@gmail.com','Nurikhsan-GW4HZW','hikari29','test','2019-10-18 17:06:43',NULL,1,'2019-10-18 17:06:43','http://localhost:8080/downloadFile/69389524_2418618711694184_7951855193736347648_n.jpg','http://localhost:8080/downloadFile/coffeshop.jpeg','NoooNoooNoooNoooNoooNoooNoooNoooNoooNoooNoooNoooNoooNoooNooo','Coffe Shop',1),
	(2,'test','test','Male','08u989u','2019-10-19 03:51:35','test@gmail.com','test-6OEMSK','test','test','2019-10-19 03:51:35',NULL,1,'2019-10-19 03:51:35','http://localhost:8080/downloadFile/69389524_2418618711694184_7951855193736347648_n.jpg','http://localhost:8080/downloadFile/WhatsApp%20Image%202019-10-19%20at%2021.13.28.jpeg',NULL,'Coffe Shop',1),
	(3,'Yodi','Hartadi','Male','0989989889','2019-10-19 07:26:08','yodi@gmail.com','Yodi-SP0AU7','yodi','about','2019-10-19 07:26:08',NULL,1,'2019-10-19 07:26:08',NULL,'http://localhost:8080/downloadFile/1573277387101.png',NULL,'Coffe Shop',1),
	(4,'alan','a','Male','089797','2019-10-19 10:40:06','alan@ymail.com','alan-A883WI','hikari','','2019-10-19 10:40:06',NULL,1,'2019-10-19 10:40:06',NULL,NULL,NULL,'Coffe Shop',1),
	(5,'New','For test','Male','089989','2019-10-20 16:57:32','new@gmail.com','New-CNFDLK','new','adsa','2019-10-20 16:57:32',NULL,1,'2019-10-20 16:57:32',NULL,NULL,NULL,'Coffe Shop',1),
	(6,'chrome','chrome','Male','08989','2019-10-20 17:20:12','chrome@gmail.com','chrome-VAIQAM','chrome',' f','2019-10-20 17:20:12',NULL,1,'2019-10-20 17:20:12',NULL,'http://localhost:8080/downloadFile/69389524_2418618711694184_7951855193736347648_n.jpg',NULL,'Coffe Shop',1),
	(7,'safari','safari','Male','089797o','2019-10-21 03:09:03','safari@gmail.com','safari-8CGAM4','safari','dsfds','2019-10-21 03:09:03',NULL,1,'2019-10-21 03:09:03','http://localhost:8080/downloadFile/69389524_2418618711694184_7951855193736347648_n.jpg','http://localhost:8080/downloadFile/20191109_093908_0000.png',NULL,'Coffe Shop',1),
	(8,'indra','indra','Male','089898','2019-10-21 05:14:44','indra@ymail.com','indra-U961AT','indra','dfa','2019-10-21 05:14:44',NULL,1,'2019-10-21 05:14:44','http://localhost:8080/downloadFile/69389524_2418618711694184_7951855193736347648_n.jpg','http://localhost:8080/downloadFile/WhatsApp%20Image%202019-10-13%20at%2018.42.56.jpeg',NULL,'Coffe Shop',1),
	(9,'cau ','goreng','Male','0898989','2019-10-21 14:52:12','cau@gmail.com','cau -VJ524V','cau','df','2019-10-21 14:52:12',NULL,1,'2019-10-21 14:52:12',NULL,NULL,NULL,'Coffe Shop',1),
	(10,'chrome-cau','cau','Male','089989','2019-10-21 14:53:06','cauchrome@gmail.com','chrome-cau-5IXKF7','cau','sa','2019-10-21 14:53:06',NULL,1,'2019-10-21 14:53:06',NULL,'http://localhost:8080/downloadFile/69389524_2418618711694184_7951855193736347648_n.jpg',NULL,'Coffe Shop',1),
	(11,'Akun','akun','Male','089899','2019-10-30 09:06:52','akun@gmail','Akun-ZO0HBU','chrome','akun','2019-10-30 09:06:52',NULL,1,'2019-10-30 09:06:52',NULL,NULL,NULL,'Coffe Shop',1),
	(12,'hikariiiiii','hikari','Male','0898891','2019-10-30 11:42:37','hikarii@gmail.com','hikariiiiii-K7ZARJ','hikarii','Hikariiii','2019-10-30 11:42:37',NULL,1,'2019-10-30 11:42:37',NULL,NULL,NULL,'Coffe Shop',1),
	(13,'hikariiiiii','hikari','Male','0898891','2019-10-30 11:42:56','hikarii@gmail.com','hikariiiiii-V08V68','hikarii','Hikariiii','2019-10-30 11:42:56',NULL,1,'2019-10-30 11:42:56',NULL,NULL,NULL,'Coffe Shop',1),
	(14,'oooo','ooooo','Male','08989','2019-10-30 11:45:46','kkk@gmail.com','oooo-5R27KX','cau','ada','2019-10-30 11:45:46',NULL,1,'2019-10-30 11:45:46',NULL,NULL,NULL,'Coffe Shop',1),
	(15,'bhm','jhbhk','Male','009899','2019-10-30 11:49:36','cauchromenn@gmail.com','bhm-457PPR','cau','test','2019-10-30 11:49:36',NULL,1,'2019-10-30 11:49:36',NULL,NULL,NULL,'Coffe Shop',1),
	(16,'lll','lll','Male','09989','2019-10-30 11:50:34','cauaachrome@gmail.com','lll-HVLAXM','cau','aaa','2019-10-30 11:50:34',NULL,1,'2019-10-30 11:50:34',NULL,NULL,NULL,'Coffe Shop',1),
	(17,'ll','lll','Male','098898','2019-10-31 09:26:31','akun1@gmail','ll-AXNB23','chrome','dsd','2019-10-31 09:26:31',NULL,1,'2019-10-31 09:26:31',NULL,NULL,NULL,'Coffe Shop',1),
	(18,'Nurikhsan29 Hikari','hikari','L','089656541471','2019-11-01 03:34:04','email@gmail.com','Nurikhsan29 Hikari-797Q2F',NULL,'about','2019-11-01 03:34:04',NULL,1,'2019-11-01 03:34:04',NULL,NULL,NULL,'Coffe Shop',1),
	(19,'assd','dsd','Male','08989','2019-11-01 03:48:26','email2@gmail.com','assd-J80DM3','email','212','2019-11-01 03:48:26',NULL,1,'2019-11-01 03:48:26',NULL,NULL,NULL,'Coffe Shop',1),
	(20,'kjb','kbkb','Male','090','2019-11-01 05:42:44','email23@gmail.com','kjb-99H1PG','email','sa','2019-11-01 05:42:44',NULL,1,'2019-11-01 05:42:44',NULL,NULL,NULL,'Coffe Shop',1),
	(21,'Hallo','hallo','Male','0898','2019-11-06 09:48:58','halo@gmail.com','Hallo-9UGWPL','halo','halo','2019-11-06 09:48:58',NULL,1,'2019-11-06 09:48:58',NULL,NULL,NULL,'Coffe Shop',1),
	(22,'Hikaru','hikaru','Male','0898989','2019-11-11 03:58:41','hikaru@gmail','Hikaru-94XRAB','hikaru','hikaru','2019-11-11 03:58:41',NULL,1,'2019-11-11 03:58:41',NULL,NULL,NULL,'Coffe Shop',1),
	(23,'Nurikhsan','Hikari','Male','089656541471','2019-11-12 06:33:03','ikhsanhikari29@gmail.com','Nurikhsan-4RMQ4H','hikariikhsan','I wanna find all people that like bussines , and i wanna collabs with them','2019-11-12 06:33:03',NULL,1,'2019-11-12 06:33:03',NULL,NULL,'Jl. Syekh nurjati, Cirebon, Ds.Wanasaba kidul, kec.Talun, blok Rahayu II','Coffe Shop',1),
	(24,'Kimi','Maru','Male','08987384','2019-11-12 06:37:45','kimimaru@gmail.com','Kimi-K8ASBW','kimimaru','All good','2019-11-12 06:37:45',NULL,1,'2019-11-12 06:37:45',NULL,NULL,'Konohagakure','Coffe Shop',1),
	(25,'Kirito','kazuto','Male','087373882','2019-11-12 08:49:07','kirito@gmail.com','Kirito-IH6JE0','kirito','Not','2019-11-12 08:49:07',NULL,1,'2019-11-12 08:49:07',NULL,NULL,NULL,'Coffe Shop',1),
	(26,'Mae','lo','Male','0886768','2019-11-12 08:55:20','mae@gmail.com','Mae-E8W7Z5','mae','Noooo','2019-11-12 08:55:20',NULL,1,'2019-11-12 08:55:20',NULL,NULL,NULL,'Coffe Shop',1),
	(27,'lo','tus','Male','08999999','2019-11-12 09:00:50','lo@gmail.com','lo-3A5K6R','lo','Looo','2019-11-12 09:00:50',NULL,1,'2019-11-12 09:00:50',NULL,NULL,'loooooo','Coffe Shop',1),
	(28,'ame','agari','Male','08987878','2019-11-12 09:06:56','ame@gmail.com','ame-6PI320','ame','Lol','2019-11-12 09:06:56',NULL,1,'2019-11-12 09:06:56','http://localhost:8080/downloadFile/69389524_2418618711694184_7951855193736347648_n.jpg','http://localhost:8080/downloadFile/WhatsApp%20Image%202019-10-13%20at%2018.42.56.jpeg','Nothing','Coffe Shop',1),
	(29,'Koto','ko','Male','098u99','2019-11-12 09:19:32','koto@gmail.com','Koto-L8JTAH','koto','Kakkaka','2019-11-12 09:19:32',NULL,1,'2019-11-12 09:19:32',NULL,NULL,'kee','Coffe Shop',1),
	(30,'Lp','pl','Male','089989','2019-11-12 10:30:01','lp@gmail.com','Lp-ETB2TD','pl','aaa','2019-11-12 10:30:01',NULL,1,'2019-11-12 10:30:01',NULL,NULL,'llll','Coffe Shop',1),
	(31,'nur','aeni','Male','08989','2019-11-17 11:58:35','nur@gmail.com','nur-P4ORX3','nur','Hallo world','2019-11-17 11:58:35',NULL,1,'2019-11-17 11:58:35',NULL,NULL,'nur','Laundry',1),
	(32,'nur','yana','Male','0898989','2019-11-17 11:59:18','yana@gmail.com','nur-TNDOKN','yana','Nothing','2019-11-17 11:59:18',NULL,1,'2019-11-17 11:59:18',NULL,NULL,'addres','Laundry',1),
	(33,'UMKM','First',NULL,'09899','2019-11-19 06:56:15','role@gmail.com','UMKM-ZGQABZ','hikari','Role','2019-11-19 06:56:15',NULL,1,'2019-11-19 06:56:15',NULL,NULL,'role','Coffe Shop',2);

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
