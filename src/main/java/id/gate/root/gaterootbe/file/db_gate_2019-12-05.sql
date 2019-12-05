# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.5.5-10.3.16-MariaDB)
# Database: db_gate
# Generation Time: 2019-12-05 03:34:18 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


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



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
