/*
SQLyog Ultimate - MySQL GUI v8.2 
MySQL - 5.6.13 : Database - quiz
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`quiz` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `quiz`;

/*Table structure for table `chat_master` */

DROP TABLE IF EXISTS `chat_master`;

CREATE TABLE `chat_master` (
  `ChatID` int(5) NOT NULL AUTO_INCREMENT,
  `UserID` int(5) DEFAULT NULL,
  `Message` varchar(255) DEFAULT NULL,
  `DateTimeMessage` datetime DEFAULT NULL,
  PRIMARY KEY (`ChatID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `chat_master` */

/*Table structure for table `chat_user_track` */

DROP TABLE IF EXISTS `chat_user_track`;

CREATE TABLE `chat_user_track` (
  `UserID` int(5) DEFAULT NULL,
  `ChatID` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `chat_user_track` */

/*Table structure for table `core_log` */

DROP TABLE IF EXISTS `core_log`;

CREATE TABLE `core_log` (
  `ID` int(5) NOT NULL AUTO_INCREMENT,
  `SCRIPT_NAME` varchar(255) DEFAULT NULL,
  `DateTimeLogged` datetime DEFAULT NULL,
  `SessionID` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1650 DEFAULT CHARSET=latin1;

/*Data for the table `core_log` */

insert  into `core_log`(`ID`,`SCRIPT_NAME`,`DateTimeLogged`,`SessionID`) values (1,'cron','2014-04-22 22:40:17','cte39qano0ij64u5no5ol7ojh3'),(2,'cron','2014-04-22 22:40:20','k7i1h7vdfaa6dv2tpp97vfkai3'),(3,'cron','2014-04-22 22:41:25','cte39qano0ij64u5no5ol7ojh3'),(4,'cron','2014-04-22 22:41:47','cte39qano0ij64u5no5ol7ojh3'),(5,'cron','2014-04-22 22:42:03','cte39qano0ij64u5no5ol7ojh3'),(6,'cron','2014-04-22 22:47:35','cte39qano0ij64u5no5ol7ojh3'),(7,'cron','2014-04-22 22:47:44','k7i1h7vdfaa6dv2tpp97vfkai3'),(8,'cron','2014-04-22 22:48:26','k7i1h7vdfaa6dv2tpp97vfkai3'),(9,'cron','2014-04-22 22:48:54','cte39qano0ij64u5no5ol7ojh3'),(10,'cron','2014-04-22 22:48:57','k7i1h7vdfaa6dv2tpp97vfkai3'),(11,'cron','2014-04-22 22:52:43','cte39qano0ij64u5no5ol7ojh3'),(12,'cron','2014-04-22 22:53:19','cte39qano0ij64u5no5ol7ojh3'),(13,'cron','2014-04-22 22:53:23','cte39qano0ij64u5no5ol7ojh3'),(14,'cron','2014-04-22 22:54:46','cte39qano0ij64u5no5ol7ojh3'),(15,'cron','2014-04-22 22:58:15','cte39qano0ij64u5no5ol7ojh3'),(16,'cron','2014-04-22 22:58:17','cte39qano0ij64u5no5ol7ojh3'),(17,'cron','2014-04-22 22:58:28','cte39qano0ij64u5no5ol7ojh3'),(18,'cron','2014-04-22 22:59:22','cte39qano0ij64u5no5ol7ojh3'),(19,'cron','2014-04-22 22:59:42','cte39qano0ij64u5no5ol7ojh3'),(20,'cron','2014-04-22 22:59:45','cte39qano0ij64u5no5ol7ojh3'),(21,'cron','2014-04-22 22:59:56','cte39qano0ij64u5no5ol7ojh3'),(22,'cron','2014-04-22 23:00:51','cte39qano0ij64u5no5ol7ojh3'),(23,'cron','2014-04-22 23:00:54','cte39qano0ij64u5no5ol7ojh3'),(24,'cron','2014-04-22 23:00:54','cte39qano0ij64u5no5ol7ojh3'),(25,'cron','2014-04-22 23:01:20','cte39qano0ij64u5no5ol7ojh3'),(26,'cron','2014-04-22 23:01:37','cte39qano0ij64u5no5ol7ojh3'),(27,'cron','2014-04-22 23:01:42','cte39qano0ij64u5no5ol7ojh3'),(28,'cron','2014-04-22 23:02:23','cte39qano0ij64u5no5ol7ojh3'),(29,'cron','2014-04-22 23:03:17','cte39qano0ij64u5no5ol7ojh3'),(30,'cron','2014-04-22 23:03:22','cte39qano0ij64u5no5ol7ojh3'),(31,'cron','2014-04-22 23:04:58','cte39qano0ij64u5no5ol7ojh3'),(32,'cron','2014-04-22 23:05:16','cte39qano0ij64u5no5ol7ojh3'),(33,'cron','2014-04-22 23:05:18','cte39qano0ij64u5no5ol7ojh3'),(34,'cron','2014-04-22 23:05:37','cte39qano0ij64u5no5ol7ojh3'),(35,'cron','2014-04-22 23:07:46','cte39qano0ij64u5no5ol7ojh3'),(36,'cron','2014-04-22 23:07:50','cte39qano0ij64u5no5ol7ojh3'),(37,'cron','2014-04-22 23:07:57','k7i1h7vdfaa6dv2tpp97vfkai3'),(38,'cron','2014-04-22 23:08:13','k7i1h7vdfaa6dv2tpp97vfkai3'),(39,'cron','2014-04-22 23:08:54','cte39qano0ij64u5no5ol7ojh3'),(40,'cron','2014-04-22 23:09:05','k7i1h7vdfaa6dv2tpp97vfkai3'),(41,'cron','2014-04-22 23:09:09','k7i1h7vdfaa6dv2tpp97vfkai3'),(42,'cron','2014-04-22 23:11:01','cte39qano0ij64u5no5ol7ojh3'),(43,'cron','2014-04-22 23:11:37','cte39qano0ij64u5no5ol7ojh3'),(44,'cron','2014-04-22 23:11:49','cte39qano0ij64u5no5ol7ojh3'),(45,'cron','2014-04-22 23:11:59','cte39qano0ij64u5no5ol7ojh3'),(46,'cron','2014-04-22 23:13:40','cte39qano0ij64u5no5ol7ojh3'),(47,'cron','2014-04-22 23:13:55','cte39qano0ij64u5no5ol7ojh3'),(48,'cron','2014-04-22 23:14:23','cte39qano0ij64u5no5ol7ojh3'),(49,'cron','2014-04-22 23:14:39','cte39qano0ij64u5no5ol7ojh3'),(50,'cron','2014-04-22 23:14:42','cte39qano0ij64u5no5ol7ojh3'),(51,'cron','2014-04-22 23:15:06','cte39qano0ij64u5no5ol7ojh3'),(52,'cron','2014-04-22 23:15:07','cte39qano0ij64u5no5ol7ojh3'),(53,'cron','2014-04-22 23:28:30','cte39qano0ij64u5no5ol7ojh3'),(54,'cron','2014-04-22 23:28:42','cte39qano0ij64u5no5ol7ojh3'),(55,'cron','2014-04-22 23:29:21','cte39qano0ij64u5no5ol7ojh3'),(56,'cron','2014-04-22 23:29:57','cte39qano0ij64u5no5ol7ojh3'),(57,'cron','2014-04-22 23:30:26','cte39qano0ij64u5no5ol7ojh3'),(58,'cron','2014-04-22 23:30:30','cte39qano0ij64u5no5ol7ojh3'),(59,'cron','2014-04-22 23:30:32','cte39qano0ij64u5no5ol7ojh3'),(60,'cron','2014-04-22 23:30:35','cte39qano0ij64u5no5ol7ojh3'),(61,'cron','2014-04-22 23:30:43','cte39qano0ij64u5no5ol7ojh3'),(62,'cron','2014-04-22 23:30:46','cte39qano0ij64u5no5ol7ojh3'),(63,'cron','2014-04-22 23:30:47','cte39qano0ij64u5no5ol7ojh3'),(64,'cron','2014-04-22 23:30:48','cte39qano0ij64u5no5ol7ojh3'),(65,'cron','2014-04-22 23:30:49','cte39qano0ij64u5no5ol7ojh3'),(66,'cron','2014-04-22 23:31:28','cte39qano0ij64u5no5ol7ojh3'),(67,'cron','2014-04-22 23:31:33','cte39qano0ij64u5no5ol7ojh3'),(68,'cron','2014-04-22 23:31:48','cte39qano0ij64u5no5ol7ojh3'),(69,'cron','2014-04-22 23:32:08','cte39qano0ij64u5no5ol7ojh3'),(70,'cron','2014-04-22 23:32:13','cte39qano0ij64u5no5ol7ojh3'),(71,'cron','2014-04-22 23:32:38','cte39qano0ij64u5no5ol7ojh3'),(72,'cron','2014-04-22 23:32:39','cte39qano0ij64u5no5ol7ojh3'),(73,'cron','2014-04-22 23:32:40','cte39qano0ij64u5no5ol7ojh3'),(74,'cron','2014-04-22 23:32:47','cte39qano0ij64u5no5ol7ojh3'),(75,'cron','2014-04-22 23:33:04','cte39qano0ij64u5no5ol7ojh3'),(76,'cron','2014-04-22 23:33:14','cte39qano0ij64u5no5ol7ojh3'),(77,'cron','2014-04-22 23:33:30','cte39qano0ij64u5no5ol7ojh3'),(78,'cron','2014-04-22 23:33:40','cte39qano0ij64u5no5ol7ojh3'),(79,'cron','2014-04-22 23:33:44','cte39qano0ij64u5no5ol7ojh3'),(80,'cron','2014-04-22 23:33:44','cte39qano0ij64u5no5ol7ojh3'),(81,'cron','2014-04-22 23:36:47','cte39qano0ij64u5no5ol7ojh3'),(82,'cron','2014-04-22 23:36:53','cte39qano0ij64u5no5ol7ojh3'),(83,'cron','2014-04-22 23:36:53','cte39qano0ij64u5no5ol7ojh3'),(84,'cron','2014-04-22 23:37:01','cte39qano0ij64u5no5ol7ojh3'),(85,'cron','2014-04-22 23:37:14','cte39qano0ij64u5no5ol7ojh3'),(86,'cron','2014-04-22 23:37:19','cte39qano0ij64u5no5ol7ojh3'),(87,'cron','2014-04-22 23:37:19','cte39qano0ij64u5no5ol7ojh3'),(88,'cron','2014-04-22 23:37:44','cte39qano0ij64u5no5ol7ojh3'),(89,'cron','2014-04-22 23:37:48','cte39qano0ij64u5no5ol7ojh3'),(90,'cron','2014-04-22 23:37:49','cte39qano0ij64u5no5ol7ojh3'),(91,'cron','2014-04-22 23:38:02','cte39qano0ij64u5no5ol7ojh3'),(92,'cron','2014-04-22 23:38:06','cte39qano0ij64u5no5ol7ojh3'),(93,'cron','2014-04-22 23:38:09','cte39qano0ij64u5no5ol7ojh3'),(94,'cron','2014-04-22 23:38:16','cte39qano0ij64u5no5ol7ojh3'),(95,'cron','2014-04-22 23:38:26','cte39qano0ij64u5no5ol7ojh3'),(96,'cron','2014-04-22 23:38:45','cte39qano0ij64u5no5ol7ojh3'),(97,'cron','2014-04-22 23:38:50','cte39qano0ij64u5no5ol7ojh3'),(98,'cron','2014-04-22 23:38:50','cte39qano0ij64u5no5ol7ojh3'),(99,'cron','2014-04-22 23:39:48','cte39qano0ij64u5no5ol7ojh3'),(100,'cron','2014-04-22 23:39:52','cte39qano0ij64u5no5ol7ojh3'),(101,'cron','2014-04-22 23:39:52','cte39qano0ij64u5no5ol7ojh3'),(102,'cron','2014-04-22 23:40:10','cte39qano0ij64u5no5ol7ojh3'),(103,'cron','2014-04-22 23:40:39','cte39qano0ij64u5no5ol7ojh3'),(104,'cron','2014-04-22 23:40:39','cte39qano0ij64u5no5ol7ojh3'),(105,'cron','2014-04-22 23:40:51','cte39qano0ij64u5no5ol7ojh3'),(106,'cron','2014-04-22 23:41:02','cte39qano0ij64u5no5ol7ojh3'),(107,'cron','2014-04-22 23:41:07','cte39qano0ij64u5no5ol7ojh3'),(108,'cron','2014-04-22 23:41:11','cte39qano0ij64u5no5ol7ojh3'),(109,'cron','2014-04-22 23:41:15','cte39qano0ij64u5no5ol7ojh3'),(110,'cron','2014-04-22 23:41:45','cte39qano0ij64u5no5ol7ojh3'),(111,'cron','2014-04-22 23:42:19','cte39qano0ij64u5no5ol7ojh3'),(112,'cron','2014-04-22 23:42:51','cte39qano0ij64u5no5ol7ojh3'),(113,'cron','2014-04-22 23:43:08','cte39qano0ij64u5no5ol7ojh3'),(114,'cron','2014-04-22 23:43:49','cte39qano0ij64u5no5ol7ojh3'),(115,'cron','2014-04-22 23:43:59','cte39qano0ij64u5no5ol7ojh3'),(116,'cron','2014-04-22 23:44:12','cte39qano0ij64u5no5ol7ojh3'),(117,'cron','2014-04-22 23:44:58','cte39qano0ij64u5no5ol7ojh3'),(118,'cron','2014-04-22 23:45:09','cte39qano0ij64u5no5ol7ojh3'),(119,'cron','2014-04-22 23:45:16','cte39qano0ij64u5no5ol7ojh3'),(120,'cron','2014-04-22 23:45:21','cte39qano0ij64u5no5ol7ojh3'),(121,'cron','2014-04-22 23:45:44','cte39qano0ij64u5no5ol7ojh3'),(122,'cron','2014-04-22 23:46:06','cte39qano0ij64u5no5ol7ojh3'),(123,'cron','2014-04-22 23:47:12','cte39qano0ij64u5no5ol7ojh3'),(124,'cron','2014-04-22 23:47:38','cte39qano0ij64u5no5ol7ojh3'),(125,'cron','2014-04-22 23:48:50','cte39qano0ij64u5no5ol7ojh3'),(126,'cron','2014-04-22 23:49:10','cte39qano0ij64u5no5ol7ojh3'),(127,'cron','2014-04-22 23:49:20','cte39qano0ij64u5no5ol7ojh3'),(128,'cron','2014-04-22 23:49:23','cte39qano0ij64u5no5ol7ojh3'),(129,'cron','2014-04-22 23:49:30','cte39qano0ij64u5no5ol7ojh3'),(130,'cron','2014-04-22 23:49:32','cte39qano0ij64u5no5ol7ojh3'),(131,'cron','2014-04-22 23:49:37','cte39qano0ij64u5no5ol7ojh3'),(132,'cron','2014-04-22 23:49:37','cte39qano0ij64u5no5ol7ojh3'),(133,'cron','2014-04-22 23:50:12','cte39qano0ij64u5no5ol7ojh3'),(134,'cron','2014-04-22 23:50:14','cte39qano0ij64u5no5ol7ojh3'),(135,'cron','2014-04-22 23:50:15','cte39qano0ij64u5no5ol7ojh3'),(136,'cron','2014-04-22 23:50:16','cte39qano0ij64u5no5ol7ojh3'),(137,'cron','2014-04-22 23:50:17','cte39qano0ij64u5no5ol7ojh3'),(138,'cron','2014-04-22 23:50:19','cte39qano0ij64u5no5ol7ojh3'),(139,'cron','2014-04-22 23:50:20','cte39qano0ij64u5no5ol7ojh3'),(140,'cron','2014-04-22 23:50:20','cte39qano0ij64u5no5ol7ojh3'),(141,'cron','2014-04-22 23:50:21','cte39qano0ij64u5no5ol7ojh3'),(142,'cron','2014-04-22 23:50:37','k7i1h7vdfaa6dv2tpp97vfkai3'),(143,'cron','2014-04-22 23:51:09','cte39qano0ij64u5no5ol7ojh3'),(144,'cron','2014-04-22 23:51:13','k7i1h7vdfaa6dv2tpp97vfkai3'),(145,'cron','2014-04-22 23:51:20','k7i1h7vdfaa6dv2tpp97vfkai3'),(146,'cron','2014-04-22 23:51:20','k7i1h7vdfaa6dv2tpp97vfkai3'),(147,'cron','2014-04-22 23:51:32','k7i1h7vdfaa6dv2tpp97vfkai3'),(148,'cron','2014-04-22 23:53:18','cte39qano0ij64u5no5ol7ojh3'),(149,'cron','2014-04-22 23:53:18','cte39qano0ij64u5no5ol7ojh3'),(150,'cron','2014-04-22 23:53:23','cte39qano0ij64u5no5ol7ojh3'),(151,'cron','2014-04-22 23:53:39','cte39qano0ij64u5no5ol7ojh3'),(152,'cron','2014-04-22 23:53:54','cte39qano0ij64u5no5ol7ojh3'),(153,'cron','2014-04-22 23:54:04','cte39qano0ij64u5no5ol7ojh3'),(154,'cron','2014-04-22 23:55:40','cte39qano0ij64u5no5ol7ojh3'),(155,'cron','2014-04-22 23:55:45','cte39qano0ij64u5no5ol7ojh3'),(156,'cron','2014-04-22 23:55:54','cte39qano0ij64u5no5ol7ojh3'),(157,'cron','2014-04-22 23:56:05','cte39qano0ij64u5no5ol7ojh3'),(158,'cron','2014-04-22 23:57:53','cte39qano0ij64u5no5ol7ojh3'),(159,'cron','2014-04-22 23:57:56','cte39qano0ij64u5no5ol7ojh3'),(160,'cron','2014-04-22 23:59:01','cte39qano0ij64u5no5ol7ojh3'),(161,'cron','2014-04-22 23:59:09','cte39qano0ij64u5no5ol7ojh3'),(162,'cron','2014-04-22 23:59:33','cte39qano0ij64u5no5ol7ojh3'),(163,'cron','2014-04-22 23:59:35','cte39qano0ij64u5no5ol7ojh3'),(164,'cron','2014-04-23 00:02:08','cte39qano0ij64u5no5ol7ojh3'),(165,'cron','2014-04-23 00:02:10','cte39qano0ij64u5no5ol7ojh3'),(166,'cron','2014-04-23 00:03:31','cte39qano0ij64u5no5ol7ojh3'),(167,'cron','2014-04-23 00:03:33','cte39qano0ij64u5no5ol7ojh3'),(168,'cron','2014-04-23 00:04:09','cte39qano0ij64u5no5ol7ojh3'),(169,'cron','2014-04-23 00:04:15','cte39qano0ij64u5no5ol7ojh3'),(170,'cron','2014-04-23 00:04:30','cte39qano0ij64u5no5ol7ojh3'),(171,'cron','2014-04-23 00:04:35','cte39qano0ij64u5no5ol7ojh3'),(172,'cron','2014-04-23 00:04:35','cte39qano0ij64u5no5ol7ojh3'),(173,'cron','2014-04-23 00:04:50','cte39qano0ij64u5no5ol7ojh3'),(174,'cron','2014-04-23 00:04:52','cte39qano0ij64u5no5ol7ojh3'),(175,'cron','2014-04-23 00:05:36','cte39qano0ij64u5no5ol7ojh3'),(176,'cron','2014-04-23 00:05:40','cte39qano0ij64u5no5ol7ojh3'),(177,'cron','2014-04-23 00:05:42','cte39qano0ij64u5no5ol7ojh3'),(178,'cron','2014-04-23 00:05:43','cte39qano0ij64u5no5ol7ojh3'),(179,'cron','2014-04-23 00:05:50','cte39qano0ij64u5no5ol7ojh3'),(180,'cron','2014-04-23 00:06:43','cte39qano0ij64u5no5ol7ojh3'),(181,'cron','2014-04-23 00:06:51','cte39qano0ij64u5no5ol7ojh3'),(182,'cron','2014-04-23 00:06:51','cte39qano0ij64u5no5ol7ojh3'),(183,'cron','2014-04-23 00:06:58','cte39qano0ij64u5no5ol7ojh3'),(184,'cron','2014-04-23 00:07:21','cte39qano0ij64u5no5ol7ojh3'),(185,'cron','2014-04-23 00:07:24','cte39qano0ij64u5no5ol7ojh3'),(186,'cron','2014-04-23 00:07:28','cte39qano0ij64u5no5ol7ojh3'),(187,'cron','2014-04-23 00:07:28','cte39qano0ij64u5no5ol7ojh3'),(188,'cron','2014-04-23 00:07:32','cte39qano0ij64u5no5ol7ojh3'),(189,'cron','2014-04-23 00:08:57','cte39qano0ij64u5no5ol7ojh3'),(190,'cron','2014-04-23 00:09:02','cte39qano0ij64u5no5ol7ojh3'),(191,'cron','2014-04-23 00:09:02','cte39qano0ij64u5no5ol7ojh3'),(192,'cron','2014-04-23 00:09:05','cte39qano0ij64u5no5ol7ojh3'),(193,'cron','2014-04-23 00:09:06','cte39qano0ij64u5no5ol7ojh3'),(194,'cron','2014-04-23 00:09:09','cte39qano0ij64u5no5ol7ojh3'),(195,'cron','2014-04-23 00:09:22','cte39qano0ij64u5no5ol7ojh3'),(196,'cron','2014-04-23 00:09:23','cte39qano0ij64u5no5ol7ojh3'),(197,'cron','2014-04-23 00:09:24','cte39qano0ij64u5no5ol7ojh3'),(198,'cron','2014-04-23 00:09:25','cte39qano0ij64u5no5ol7ojh3'),(199,'cron','2014-04-23 00:09:27','cte39qano0ij64u5no5ol7ojh3'),(200,'cron','2014-04-23 00:09:50','cte39qano0ij64u5no5ol7ojh3'),(201,'cron','2014-04-23 00:09:50','cte39qano0ij64u5no5ol7ojh3'),(202,'cron','2014-04-23 00:09:54','cte39qano0ij64u5no5ol7ojh3'),(203,'cron','2014-04-23 00:09:54','cte39qano0ij64u5no5ol7ojh3'),(204,'cron','2014-04-23 00:09:54','cte39qano0ij64u5no5ol7ojh3'),(205,'cron','2014-04-23 00:10:00','cte39qano0ij64u5no5ol7ojh3'),(206,'cron','2014-04-23 00:10:00','cte39qano0ij64u5no5ol7ojh3'),(207,'cron','2014-04-23 00:10:00','cte39qano0ij64u5no5ol7ojh3'),(208,'cron','2014-04-23 00:10:00','cte39qano0ij64u5no5ol7ojh3'),(209,'cron','2014-04-23 00:10:18','cte39qano0ij64u5no5ol7ojh3'),(210,'cron','2014-04-23 00:10:25','cte39qano0ij64u5no5ol7ojh3'),(211,'cron','2014-04-23 00:10:25','cte39qano0ij64u5no5ol7ojh3'),(212,'cron','2014-04-23 00:10:29','cte39qano0ij64u5no5ol7ojh3'),(213,'cron','2014-04-23 00:10:29','cte39qano0ij64u5no5ol7ojh3'),(214,'cron','2014-04-23 00:10:29','cte39qano0ij64u5no5ol7ojh3'),(215,'cron','2014-04-23 00:10:32','cte39qano0ij64u5no5ol7ojh3'),(216,'cron','2014-04-23 00:10:32','cte39qano0ij64u5no5ol7ojh3'),(217,'cron','2014-04-23 00:10:32','cte39qano0ij64u5no5ol7ojh3'),(218,'cron','2014-04-23 00:10:32','cte39qano0ij64u5no5ol7ojh3'),(219,'cron','2014-04-23 00:11:50','cte39qano0ij64u5no5ol7ojh3'),(220,'cron','2014-04-23 00:11:57','cte39qano0ij64u5no5ol7ojh3'),(221,'cron','2014-04-23 00:11:57','cte39qano0ij64u5no5ol7ojh3'),(222,'cron','2014-04-23 00:12:01','cte39qano0ij64u5no5ol7ojh3'),(223,'cron','2014-04-23 00:12:01','cte39qano0ij64u5no5ol7ojh3'),(224,'cron','2014-04-23 00:12:01','cte39qano0ij64u5no5ol7ojh3'),(225,'cron','2014-04-23 00:12:04','cte39qano0ij64u5no5ol7ojh3'),(226,'cron','2014-04-23 00:12:04','cte39qano0ij64u5no5ol7ojh3'),(227,'cron','2014-04-23 00:12:04','cte39qano0ij64u5no5ol7ojh3'),(228,'cron','2014-04-23 00:12:04','cte39qano0ij64u5no5ol7ojh3'),(229,'cron','2014-04-23 00:12:07','cte39qano0ij64u5no5ol7ojh3'),(230,'cron','2014-04-23 00:12:07','cte39qano0ij64u5no5ol7ojh3'),(231,'cron','2014-04-23 00:12:07','cte39qano0ij64u5no5ol7ojh3'),(232,'cron','2014-04-23 00:12:07','cte39qano0ij64u5no5ol7ojh3'),(233,'cron','2014-04-23 00:12:07','cte39qano0ij64u5no5ol7ojh3'),(234,'cron','2014-04-23 00:12:11','cte39qano0ij64u5no5ol7ojh3'),(235,'cron','2014-04-23 00:12:11','cte39qano0ij64u5no5ol7ojh3'),(236,'cron','2014-04-23 00:12:11','cte39qano0ij64u5no5ol7ojh3'),(237,'cron','2014-04-23 00:12:11','cte39qano0ij64u5no5ol7ojh3'),(238,'cron','2014-04-23 00:12:11','cte39qano0ij64u5no5ol7ojh3'),(239,'cron','2014-04-23 00:12:11','cte39qano0ij64u5no5ol7ojh3'),(240,'cron','2014-04-23 00:12:14','cte39qano0ij64u5no5ol7ojh3'),(241,'cron','2014-04-23 00:12:14','cte39qano0ij64u5no5ol7ojh3'),(242,'cron','2014-04-23 00:12:14','cte39qano0ij64u5no5ol7ojh3'),(243,'cron','2014-04-23 00:12:14','cte39qano0ij64u5no5ol7ojh3'),(244,'cron','2014-04-23 00:12:14','cte39qano0ij64u5no5ol7ojh3'),(245,'cron','2014-04-23 00:12:14','cte39qano0ij64u5no5ol7ojh3'),(246,'cron','2014-04-23 00:12:15','cte39qano0ij64u5no5ol7ojh3'),(247,'cron','2014-04-23 00:12:40','cte39qano0ij64u5no5ol7ojh3'),(248,'cron','2014-04-23 00:12:40','cte39qano0ij64u5no5ol7ojh3'),(249,'cron','2014-04-23 00:12:40','cte39qano0ij64u5no5ol7ojh3'),(250,'cron','2014-04-23 00:12:40','cte39qano0ij64u5no5ol7ojh3'),(251,'cron','2014-04-23 00:12:40','cte39qano0ij64u5no5ol7ojh3'),(252,'cron','2014-04-23 00:12:40','cte39qano0ij64u5no5ol7ojh3'),(253,'cron','2014-04-23 00:12:40','cte39qano0ij64u5no5ol7ojh3'),(254,'cron','2014-04-23 00:12:40','cte39qano0ij64u5no5ol7ojh3'),(255,'cron','2014-04-23 00:12:43','cte39qano0ij64u5no5ol7ojh3'),(256,'cron','2014-04-23 00:12:43','cte39qano0ij64u5no5ol7ojh3'),(257,'cron','2014-04-23 00:12:43','cte39qano0ij64u5no5ol7ojh3'),(258,'cron','2014-04-23 00:12:43','cte39qano0ij64u5no5ol7ojh3'),(259,'cron','2014-04-23 00:12:43','cte39qano0ij64u5no5ol7ojh3'),(260,'cron','2014-04-23 00:12:43','cte39qano0ij64u5no5ol7ojh3'),(261,'cron','2014-04-23 00:12:43','cte39qano0ij64u5no5ol7ojh3'),(262,'cron','2014-04-23 00:12:43','cte39qano0ij64u5no5ol7ojh3'),(263,'cron','2014-04-23 00:12:43','cte39qano0ij64u5no5ol7ojh3'),(264,'cron','2014-04-23 00:12:46','cte39qano0ij64u5no5ol7ojh3'),(265,'cron','2014-04-23 00:12:46','cte39qano0ij64u5no5ol7ojh3'),(266,'cron','2014-04-23 00:12:46','cte39qano0ij64u5no5ol7ojh3'),(267,'cron','2014-04-23 00:12:46','cte39qano0ij64u5no5ol7ojh3'),(268,'cron','2014-04-23 00:12:46','cte39qano0ij64u5no5ol7ojh3'),(269,'cron','2014-04-23 00:12:46','cte39qano0ij64u5no5ol7ojh3'),(270,'cron','2014-04-23 00:12:46','cte39qano0ij64u5no5ol7ojh3'),(271,'cron','2014-04-23 00:12:46','cte39qano0ij64u5no5ol7ojh3'),(272,'cron','2014-04-23 00:12:46','cte39qano0ij64u5no5ol7ojh3'),(273,'cron','2014-04-23 00:12:46','cte39qano0ij64u5no5ol7ojh3'),(274,'cron','2014-04-23 00:12:52','cte39qano0ij64u5no5ol7ojh3'),(275,'cron','2014-04-23 00:12:52','cte39qano0ij64u5no5ol7ojh3'),(276,'cron','2014-04-23 00:12:52','cte39qano0ij64u5no5ol7ojh3'),(277,'cron','2014-04-23 00:12:52','cte39qano0ij64u5no5ol7ojh3'),(278,'cron','2014-04-23 00:12:52','cte39qano0ij64u5no5ol7ojh3'),(279,'cron','2014-04-23 00:12:52','cte39qano0ij64u5no5ol7ojh3'),(280,'cron','2014-04-23 00:12:52','cte39qano0ij64u5no5ol7ojh3'),(281,'cron','2014-04-23 00:12:52','cte39qano0ij64u5no5ol7ojh3'),(282,'cron','2014-04-23 00:12:52','cte39qano0ij64u5no5ol7ojh3'),(283,'cron','2014-04-23 00:12:52','cte39qano0ij64u5no5ol7ojh3'),(284,'cron','2014-04-23 00:12:52','cte39qano0ij64u5no5ol7ojh3'),(285,'cron','2014-04-23 00:13:33','cte39qano0ij64u5no5ol7ojh3'),(286,'cron','2014-04-23 00:13:37','cte39qano0ij64u5no5ol7ojh3'),(287,'cron','2014-04-23 00:13:39','cte39qano0ij64u5no5ol7ojh3'),(288,'cron','2014-04-23 00:13:41','cte39qano0ij64u5no5ol7ojh3'),(289,'cron','2014-04-23 00:13:44','cte39qano0ij64u5no5ol7ojh3'),(290,'cron','2014-04-23 17:59:20','gqh2ed0i7j2do5tdtahiree8u3'),(291,'cron','2014-04-23 17:59:23','gqh2ed0i7j2do5tdtahiree8u3'),(292,'cron','2014-04-23 17:59:27','gqh2ed0i7j2do5tdtahiree8u3'),(293,'cron','2014-04-23 18:00:06','gqh2ed0i7j2do5tdtahiree8u3'),(294,'cron','2014-04-23 18:00:20','gqh2ed0i7j2do5tdtahiree8u3'),(295,'cron','2014-04-23 18:00:45','gqh2ed0i7j2do5tdtahiree8u3'),(296,'cron','2014-04-23 18:04:49','gqh2ed0i7j2do5tdtahiree8u3'),(297,'cron','2014-04-23 18:04:54','gqh2ed0i7j2do5tdtahiree8u3'),(298,'cron','2014-04-23 18:04:57','gqh2ed0i7j2do5tdtahiree8u3'),(299,'cron','2014-04-23 18:05:22','gqh2ed0i7j2do5tdtahiree8u3'),(300,'cron','2014-04-23 18:05:25','gqh2ed0i7j2do5tdtahiree8u3'),(301,'cron','2014-04-23 18:05:49','gqh2ed0i7j2do5tdtahiree8u3'),(302,'cron','2014-04-23 18:05:53','gqh2ed0i7j2do5tdtahiree8u3'),(303,'cron','2014-04-23 18:06:30','gqh2ed0i7j2do5tdtahiree8u3'),(304,'cron','2014-04-23 18:06:34','gqh2ed0i7j2do5tdtahiree8u3'),(305,'cron','2014-04-23 18:07:45','gqh2ed0i7j2do5tdtahiree8u3'),(306,'cron','2014-04-23 18:07:50','gqh2ed0i7j2do5tdtahiree8u3'),(307,'cron','2014-04-23 18:07:58','gqh2ed0i7j2do5tdtahiree8u3'),(308,'cron','2014-04-23 18:09:24','gqh2ed0i7j2do5tdtahiree8u3'),(309,'cron','2014-04-23 18:09:27','gqh2ed0i7j2do5tdtahiree8u3'),(310,'cron','2014-04-23 18:11:42','gqh2ed0i7j2do5tdtahiree8u3'),(311,'cron','2014-04-23 18:12:35','gqh2ed0i7j2do5tdtahiree8u3'),(312,'cron','2014-04-23 18:12:38','gqh2ed0i7j2do5tdtahiree8u3'),(313,'cron','2014-04-23 18:12:40','gqh2ed0i7j2do5tdtahiree8u3'),(314,'cron','2014-04-23 18:13:11','gqh2ed0i7j2do5tdtahiree8u3'),(315,'cron','2014-04-23 18:13:14','gqh2ed0i7j2do5tdtahiree8u3'),(316,'cron','2014-04-23 18:13:18','gqh2ed0i7j2do5tdtahiree8u3'),(317,'cron','2014-04-23 18:13:51','gqh2ed0i7j2do5tdtahiree8u3'),(318,'cron','2014-04-23 18:13:55','gqh2ed0i7j2do5tdtahiree8u3'),(319,'cron','2014-04-23 18:14:45','gqh2ed0i7j2do5tdtahiree8u3'),(320,'cron','2014-04-23 18:14:50','gqh2ed0i7j2do5tdtahiree8u3'),(321,'cron','2014-04-23 18:14:52','gqh2ed0i7j2do5tdtahiree8u3'),(322,'cron','2014-04-23 18:23:36','gqh2ed0i7j2do5tdtahiree8u3'),(323,'cron','2014-04-23 18:23:36','gqh2ed0i7j2do5tdtahiree8u3'),(324,'cron','2014-04-23 18:24:27','gqh2ed0i7j2do5tdtahiree8u3'),(325,'cron','2014-04-23 18:24:27','gqh2ed0i7j2do5tdtahiree8u3'),(326,'cron','2014-04-23 18:24:27','gqh2ed0i7j2do5tdtahiree8u3'),(327,'cron','2014-04-23 18:25:08','gqh2ed0i7j2do5tdtahiree8u3'),(328,'cron','2014-04-23 18:25:57','gqh2ed0i7j2do5tdtahiree8u3'),(329,'cron','2014-04-23 18:26:47','gqh2ed0i7j2do5tdtahiree8u3'),(330,'cron','2014-04-23 18:26:49','gqh2ed0i7j2do5tdtahiree8u3'),(331,'cron','2014-04-23 18:27:25','gqh2ed0i7j2do5tdtahiree8u3'),(332,'cron','2014-04-23 18:27:29','gqh2ed0i7j2do5tdtahiree8u3'),(333,'cron','2014-04-23 18:27:30','gqh2ed0i7j2do5tdtahiree8u3'),(334,'cron','2014-04-23 18:27:30','gqh2ed0i7j2do5tdtahiree8u3'),(335,'cron','2014-04-23 18:27:44','gqh2ed0i7j2do5tdtahiree8u3'),(336,'cron','2014-04-23 18:27:48','gqh2ed0i7j2do5tdtahiree8u3'),(337,'cron','2014-04-23 18:28:23','gqh2ed0i7j2do5tdtahiree8u3'),(338,'cron','2014-04-23 18:28:38','gqh2ed0i7j2do5tdtahiree8u3'),(339,'cron','2014-04-23 18:28:42','gqh2ed0i7j2do5tdtahiree8u3'),(340,'cron','2014-04-23 18:28:44','gqh2ed0i7j2do5tdtahiree8u3'),(341,'cron','2014-04-25 00:30:08','5d6e1shn345l79kp7g0t1ng7a7'),(342,'cron','2014-04-25 00:30:08','5d6e1shn345l79kp7g0t1ng7a7'),(343,'cron','2014-04-25 00:30:12','5d6e1shn345l79kp7g0t1ng7a7'),(344,'cron','2014-04-25 00:31:39','5d6e1shn345l79kp7g0t1ng7a7'),(345,'cron','2014-04-25 00:31:47','5d6e1shn345l79kp7g0t1ng7a7'),(346,'cron','2014-04-25 00:32:13','5d6e1shn345l79kp7g0t1ng7a7'),(347,'cron','2014-04-25 00:32:14','5d6e1shn345l79kp7g0t1ng7a7'),(348,'cron','2014-04-25 00:33:06','5d6e1shn345l79kp7g0t1ng7a7'),(349,'cron','2014-04-25 00:33:10','5d6e1shn345l79kp7g0t1ng7a7'),(350,'cron','2014-04-25 00:33:29','5d6e1shn345l79kp7g0t1ng7a7'),(351,'cron','2014-04-25 00:47:08','5d6e1shn345l79kp7g0t1ng7a7'),(352,'cron','2014-04-25 00:47:11','5d6e1shn345l79kp7g0t1ng7a7'),(353,'cron','2014-04-25 00:47:15','5d6e1shn345l79kp7g0t1ng7a7'),(354,'cron','2014-04-25 00:48:12','5d6e1shn345l79kp7g0t1ng7a7'),(355,'cron','2014-04-25 00:48:17','5d6e1shn345l79kp7g0t1ng7a7'),(356,'cron','2014-04-25 00:48:18','5d6e1shn345l79kp7g0t1ng7a7'),(357,'cron','2014-04-25 00:48:19','5d6e1shn345l79kp7g0t1ng7a7'),(358,'cron','2014-04-25 00:48:40','5d6e1shn345l79kp7g0t1ng7a7'),(359,'cron','2014-04-25 00:48:44','5d6e1shn345l79kp7g0t1ng7a7'),(360,'cron','2014-04-25 00:48:55','5d6e1shn345l79kp7g0t1ng7a7'),(361,'cron','2014-04-25 00:49:45','5d6e1shn345l79kp7g0t1ng7a7'),(362,'cron','2014-04-25 00:49:50','5d6e1shn345l79kp7g0t1ng7a7'),(363,'cron','2014-04-25 00:49:51','5d6e1shn345l79kp7g0t1ng7a7'),(364,'cron','2014-04-25 00:54:17','5d6e1shn345l79kp7g0t1ng7a7'),(365,'cron','2014-04-25 00:54:33','5d6e1shn345l79kp7g0t1ng7a7'),(366,'cron','2014-04-25 00:54:44','5d6e1shn345l79kp7g0t1ng7a7'),(367,'cron','2014-04-25 01:06:24','5d6e1shn345l79kp7g0t1ng7a7'),(368,'cron','2014-04-25 01:06:34','5d6e1shn345l79kp7g0t1ng7a7'),(369,'cron','2014-04-25 01:06:57','5d6e1shn345l79kp7g0t1ng7a7'),(370,'cron','2014-04-25 01:07:11','5d6e1shn345l79kp7g0t1ng7a7'),(371,'cron','2014-04-25 01:08:00','5d6e1shn345l79kp7g0t1ng7a7'),(372,'cron','2014-04-25 01:08:04','5d6e1shn345l79kp7g0t1ng7a7'),(373,'cron','2014-04-25 01:08:07','5d6e1shn345l79kp7g0t1ng7a7'),(374,'cron','2014-04-25 01:08:24','5d6e1shn345l79kp7g0t1ng7a7'),(375,'cron','2014-04-25 01:08:31','5d6e1shn345l79kp7g0t1ng7a7'),(376,'cron','2014-04-25 01:08:37','5d6e1shn345l79kp7g0t1ng7a7'),(377,'cron','2014-04-25 01:08:50','5d6e1shn345l79kp7g0t1ng7a7'),(378,'cron','2014-04-25 01:08:54','5d6e1shn345l79kp7g0t1ng7a7'),(379,'cron','2014-04-25 01:09:09','5d6e1shn345l79kp7g0t1ng7a7'),(380,'cron','2014-04-25 01:09:38','5d6e1shn345l79kp7g0t1ng7a7'),(381,'cron','2014-04-25 01:10:28','5d6e1shn345l79kp7g0t1ng7a7'),(382,'cron','2014-04-25 01:10:43','5d6e1shn345l79kp7g0t1ng7a7'),(383,'cron','2014-04-25 01:11:15','5d6e1shn345l79kp7g0t1ng7a7'),(384,'cron','2014-04-25 01:11:24','5d6e1shn345l79kp7g0t1ng7a7'),(385,'cron','2014-04-25 01:11:27','5d6e1shn345l79kp7g0t1ng7a7'),(386,'cron','2014-04-25 01:11:35','5d6e1shn345l79kp7g0t1ng7a7'),(387,'cron','2014-04-25 01:11:49','5d6e1shn345l79kp7g0t1ng7a7'),(388,'cron','2014-04-25 01:11:52','5d6e1shn345l79kp7g0t1ng7a7'),(389,'cron','2014-04-25 01:11:55','5d6e1shn345l79kp7g0t1ng7a7'),(390,'cron','2014-04-25 01:16:21','5d6e1shn345l79kp7g0t1ng7a7'),(391,'cron','2014-04-25 01:16:31','5d6e1shn345l79kp7g0t1ng7a7'),(392,'cron','2014-04-25 01:16:34','5d6e1shn345l79kp7g0t1ng7a7'),(393,'cron','2014-04-25 01:16:38','5d6e1shn345l79kp7g0t1ng7a7'),(394,'cron','2014-04-25 01:16:38','5d6e1shn345l79kp7g0t1ng7a7'),(395,'cron','2014-04-25 01:18:50','5d6e1shn345l79kp7g0t1ng7a7'),(396,'cron','2014-04-25 01:19:07','5d6e1shn345l79kp7g0t1ng7a7'),(397,'cron','2014-04-25 01:19:21','5d6e1shn345l79kp7g0t1ng7a7'),(398,'cron','2014-04-25 22:05:33','rmgdj3gnlcre02s0ll2nf1jqe3'),(399,'cron','2014-04-25 22:05:33','rmgdj3gnlcre02s0ll2nf1jqe3'),(400,'cron','2014-04-25 22:05:48','rmgdj3gnlcre02s0ll2nf1jqe3'),(401,'cron','2014-04-25 22:09:40','rmgdj3gnlcre02s0ll2nf1jqe3'),(402,'cron','2014-04-25 22:09:44','rmgdj3gnlcre02s0ll2nf1jqe3'),(403,'cron','2014-04-25 22:10:25','rmgdj3gnlcre02s0ll2nf1jqe3'),(404,'cron','2014-04-25 22:10:34','rmgdj3gnlcre02s0ll2nf1jqe3'),(405,'cron','2014-04-25 22:10:58','rmgdj3gnlcre02s0ll2nf1jqe3'),(406,'cron','2014-04-25 22:11:10','rmgdj3gnlcre02s0ll2nf1jqe3'),(407,'cron','2014-04-25 22:11:14','rmgdj3gnlcre02s0ll2nf1jqe3'),(408,'cron','2014-04-25 22:11:18','rmgdj3gnlcre02s0ll2nf1jqe3'),(409,'cron','2014-04-25 22:11:21','rmgdj3gnlcre02s0ll2nf1jqe3'),(410,'cron','2014-04-25 22:11:38','rmgdj3gnlcre02s0ll2nf1jqe3'),(411,'cron','2014-04-25 22:11:54','rmgdj3gnlcre02s0ll2nf1jqe3'),(412,'cron','2014-04-25 22:12:01','rmgdj3gnlcre02s0ll2nf1jqe3'),(413,'cron','2014-04-25 22:12:05','rmgdj3gnlcre02s0ll2nf1jqe3'),(414,'cron','2014-04-25 22:12:10','rmgdj3gnlcre02s0ll2nf1jqe3'),(415,'cron','2014-04-25 22:12:48','rmgdj3gnlcre02s0ll2nf1jqe3'),(416,'cron','2014-04-25 22:12:55','rmgdj3gnlcre02s0ll2nf1jqe3'),(417,'cron','2014-04-25 22:13:00','rmgdj3gnlcre02s0ll2nf1jqe3'),(418,'cron','2014-04-25 22:13:10','rmgdj3gnlcre02s0ll2nf1jqe3'),(419,'cron','2014-04-25 22:13:12','rmgdj3gnlcre02s0ll2nf1jqe3'),(420,'cron','2014-04-25 22:13:18','rmgdj3gnlcre02s0ll2nf1jqe3'),(421,'cron','2014-04-25 22:13:21','rmgdj3gnlcre02s0ll2nf1jqe3'),(422,'cron','2014-04-25 22:13:34','rmgdj3gnlcre02s0ll2nf1jqe3'),(423,'cron','2014-04-25 22:13:40','rmgdj3gnlcre02s0ll2nf1jqe3'),(424,'cron','2014-04-25 22:13:40','rmgdj3gnlcre02s0ll2nf1jqe3'),(425,'cron','2014-04-25 22:17:02','qquqqv9ldb41iakeb3peci8t23'),(426,'cron','2014-04-25 22:17:03','qquqqv9ldb41iakeb3peci8t23'),(427,'cron','2014-04-25 22:17:16','rsejujiilv17g12i31rh95reg4'),(428,'cron','2014-04-25 22:17:16','rsejujiilv17g12i31rh95reg4'),(429,'cron','2014-04-25 22:17:22','rsejujiilv17g12i31rh95reg4'),(430,'cron','2014-04-25 22:17:33','rsejujiilv17g12i31rh95reg4'),(431,'cron','2014-04-25 22:17:36','rsejujiilv17g12i31rh95reg4'),(432,'cron','2014-04-25 22:17:42','rsejujiilv17g12i31rh95reg4'),(433,'cron','2014-04-25 22:17:52','rsejujiilv17g12i31rh95reg4'),(434,'cron','2014-04-25 22:17:54','rsejujiilv17g12i31rh95reg4'),(435,'cron','2014-04-25 22:17:57','rsejujiilv17g12i31rh95reg4'),(436,'cron','2014-04-25 22:18:06','rsejujiilv17g12i31rh95reg4'),(437,'cron','2014-04-25 22:18:06','rsejujiilv17g12i31rh95reg4'),(438,'cron','2014-04-25 22:20:27','qquqqv9ldb41iakeb3peci8t23'),(439,'cron','2014-04-25 22:20:34','qquqqv9ldb41iakeb3peci8t23'),(440,'cron','2014-04-25 22:20:37','qquqqv9ldb41iakeb3peci8t23'),(441,'cron','2014-04-25 22:20:38','qquqqv9ldb41iakeb3peci8t23'),(442,'cron','2014-04-25 22:21:25','qquqqv9ldb41iakeb3peci8t23'),(443,'cron','2014-04-25 22:21:25','qquqqv9ldb41iakeb3peci8t23'),(444,'cron','2014-04-25 22:21:28','qquqqv9ldb41iakeb3peci8t23'),(445,'cron','2014-04-25 22:21:29','qquqqv9ldb41iakeb3peci8t23'),(446,'cron','2014-04-25 22:21:32','qquqqv9ldb41iakeb3peci8t23'),(447,'cron','2014-04-25 22:21:35','qquqqv9ldb41iakeb3peci8t23'),(448,'cron','2014-04-25 22:21:48','qquqqv9ldb41iakeb3peci8t23'),(449,'cron','2014-04-25 22:21:48','qquqqv9ldb41iakeb3peci8t23'),(450,'cron','2014-04-25 22:21:51','qquqqv9ldb41iakeb3peci8t23'),(451,'cron','2014-04-25 22:21:59','qquqqv9ldb41iakeb3peci8t23'),(452,'cron','2014-04-25 22:22:01','qquqqv9ldb41iakeb3peci8t23'),(453,'cron','2014-04-25 22:22:40','qquqqv9ldb41iakeb3peci8t23'),(454,'cron','2014-04-25 22:22:44','qquqqv9ldb41iakeb3peci8t23'),(455,'cron','2014-04-25 22:22:45','qquqqv9ldb41iakeb3peci8t23'),(456,'cron','2014-04-25 22:22:45','qquqqv9ldb41iakeb3peci8t23'),(457,'cron','2014-04-25 22:22:46','qquqqv9ldb41iakeb3peci8t23'),(458,'cron','2014-04-25 22:22:53','qquqqv9ldb41iakeb3peci8t23'),(459,'cron','2014-04-25 22:22:54','qquqqv9ldb41iakeb3peci8t23'),(460,'cron','2014-04-25 22:22:59','qquqqv9ldb41iakeb3peci8t23'),(461,'cron','2014-04-25 22:23:01','qquqqv9ldb41iakeb3peci8t23'),(462,'cron','2014-04-25 22:23:04','qquqqv9ldb41iakeb3peci8t23'),(463,'cron','2014-04-25 22:23:06','qquqqv9ldb41iakeb3peci8t23'),(464,'cron','2014-04-25 22:23:09','qquqqv9ldb41iakeb3peci8t23'),(465,'cron','2014-04-25 22:23:11','qquqqv9ldb41iakeb3peci8t23'),(466,'cron','2014-04-25 22:23:15','qquqqv9ldb41iakeb3peci8t23'),(467,'cron','2014-04-25 22:23:17','qquqqv9ldb41iakeb3peci8t23'),(468,'cron','2014-04-25 22:23:19','qquqqv9ldb41iakeb3peci8t23'),(469,'cron','2014-04-25 22:23:34','qquqqv9ldb41iakeb3peci8t23'),(470,'cron','2014-04-25 22:23:35','qquqqv9ldb41iakeb3peci8t23'),(471,'cron','2014-04-25 22:23:38','qquqqv9ldb41iakeb3peci8t23'),(472,'cron','2014-04-25 22:23:41','qquqqv9ldb41iakeb3peci8t23'),(473,'cron','2014-04-25 22:23:44','qquqqv9ldb41iakeb3peci8t23'),(474,'cron','2014-04-25 22:23:44','qquqqv9ldb41iakeb3peci8t23'),(475,'cron','2014-04-25 22:23:47','qquqqv9ldb41iakeb3peci8t23'),(476,'cron','2014-04-25 22:23:51','qquqqv9ldb41iakeb3peci8t23'),(477,'cron','2014-04-25 22:23:51','qquqqv9ldb41iakeb3peci8t23'),(478,'cron','2014-04-25 22:24:37','qquqqv9ldb41iakeb3peci8t23'),(479,'cron','2014-04-25 22:24:40','qquqqv9ldb41iakeb3peci8t23'),(480,'cron','2014-04-25 22:24:41','qquqqv9ldb41iakeb3peci8t23'),(481,'cron','2014-04-25 22:37:36','qquqqv9ldb41iakeb3peci8t23'),(482,'cron','2014-04-25 22:37:38','qquqqv9ldb41iakeb3peci8t23'),(483,'cron','2014-04-25 22:37:58','qquqqv9ldb41iakeb3peci8t23'),(484,'cron','2014-04-25 22:38:08','qquqqv9ldb41iakeb3peci8t23'),(485,'cron','2014-04-25 22:41:21','qquqqv9ldb41iakeb3peci8t23'),(486,'cron','2014-04-25 22:43:23','qquqqv9ldb41iakeb3peci8t23'),(487,'cron','2014-04-25 22:43:24','qquqqv9ldb41iakeb3peci8t23'),(488,'cron','2014-04-25 22:44:09','qquqqv9ldb41iakeb3peci8t23'),(489,'cron','2014-04-25 22:44:39','qquqqv9ldb41iakeb3peci8t23'),(490,'cron','2014-04-25 22:44:46','qquqqv9ldb41iakeb3peci8t23'),(491,'cron','2014-04-25 22:44:48','qquqqv9ldb41iakeb3peci8t23'),(492,'cron','2014-04-25 22:44:51','qquqqv9ldb41iakeb3peci8t23'),(493,'cron','2014-04-25 22:44:52','qquqqv9ldb41iakeb3peci8t23'),(494,'cron','2014-04-25 22:44:53','qquqqv9ldb41iakeb3peci8t23'),(495,'cron','2014-04-25 22:45:02','qquqqv9ldb41iakeb3peci8t23'),(496,'cron','2014-04-25 22:45:04','qquqqv9ldb41iakeb3peci8t23'),(497,'cron','2014-04-25 22:45:08','qquqqv9ldb41iakeb3peci8t23'),(498,'cron','2014-04-25 22:45:09','qquqqv9ldb41iakeb3peci8t23'),(499,'cron','2014-04-25 22:45:36','qquqqv9ldb41iakeb3peci8t23'),(500,'cron','2014-04-25 22:45:37','qquqqv9ldb41iakeb3peci8t23'),(501,'cron','2014-04-25 22:46:00','qquqqv9ldb41iakeb3peci8t23'),(502,'cron','2014-04-25 22:46:02','qquqqv9ldb41iakeb3peci8t23'),(503,'cron','2014-04-25 22:46:17','qquqqv9ldb41iakeb3peci8t23'),(504,'cron','2014-04-25 22:46:24','qquqqv9ldb41iakeb3peci8t23'),(505,'cron','2014-04-25 22:46:45','qquqqv9ldb41iakeb3peci8t23'),(506,'cron','2014-04-25 22:47:32','qquqqv9ldb41iakeb3peci8t23'),(507,'cron','2014-04-25 22:47:44','qquqqv9ldb41iakeb3peci8t23'),(508,'cron','2014-04-25 22:47:47','qquqqv9ldb41iakeb3peci8t23'),(509,'cron','2014-04-25 22:49:10','qquqqv9ldb41iakeb3peci8t23'),(510,'cron','2014-04-25 22:49:11','qquqqv9ldb41iakeb3peci8t23'),(511,'cron','2014-04-25 22:49:38','qquqqv9ldb41iakeb3peci8t23'),(512,'cron','2014-04-25 22:49:46','qquqqv9ldb41iakeb3peci8t23'),(513,'cron','2014-04-25 22:49:46','qquqqv9ldb41iakeb3peci8t23'),(514,'cron','2014-04-25 22:50:06','qquqqv9ldb41iakeb3peci8t23'),(515,'cron','2014-04-25 22:53:06','qquqqv9ldb41iakeb3peci8t23'),(516,'cron','2014-04-25 22:53:37','qquqqv9ldb41iakeb3peci8t23'),(517,'cron','2014-04-25 22:53:59','rsejujiilv17g12i31rh95reg4'),(518,'cron','2014-04-25 22:54:09','rsejujiilv17g12i31rh95reg4'),(519,'cron','2014-04-25 22:54:09','rsejujiilv17g12i31rh95reg4'),(520,'cron','2014-04-26 10:59:06','qquqqv9ldb41iakeb3peci8t23'),(521,'cron','2014-04-26 11:00:28','qquqqv9ldb41iakeb3peci8t23'),(522,'cron','2014-04-26 11:01:09','qquqqv9ldb41iakeb3peci8t23'),(523,'cron','2014-04-26 11:01:11','qquqqv9ldb41iakeb3peci8t23'),(524,'cron','2014-04-26 11:02:06','3f2upkooh7l7l37v559u2t1qa5'),(525,'cron','2014-04-26 11:02:07','3f2upkooh7l7l37v559u2t1qa5'),(526,'cron','2014-04-26 11:04:39','3f2upkooh7l7l37v559u2t1qa5'),(527,'cron','2014-04-26 11:04:42','3f2upkooh7l7l37v559u2t1qa5'),(528,'cron','2014-04-26 11:04:43','3f2upkooh7l7l37v559u2t1qa5'),(529,'cron','2014-04-26 11:06:08','3f2upkooh7l7l37v559u2t1qa5'),(530,'cron','2014-04-26 11:06:20','3f2upkooh7l7l37v559u2t1qa5'),(531,'cron','2014-04-26 11:06:20','3f2upkooh7l7l37v559u2t1qa5'),(532,'cron','2014-04-26 11:06:28','3f2upkooh7l7l37v559u2t1qa5'),(533,'cron','2014-04-26 11:06:28','3f2upkooh7l7l37v559u2t1qa5'),(534,'cron','2014-04-26 11:15:25','3f2upkooh7l7l37v559u2t1qa5'),(535,'cron','2014-04-26 11:16:15','3f2upkooh7l7l37v559u2t1qa5'),(536,'cron','2014-04-26 11:17:17','3f2upkooh7l7l37v559u2t1qa5'),(537,'cron','2014-04-26 11:17:41','3f2upkooh7l7l37v559u2t1qa5'),(538,'cron','2014-04-26 11:17:52','3f2upkooh7l7l37v559u2t1qa5'),(539,'cron','2014-04-26 11:17:55','3f2upkooh7l7l37v559u2t1qa5'),(540,'cron','2014-04-26 11:18:00','3f2upkooh7l7l37v559u2t1qa5'),(541,'cron','2014-04-26 11:19:11','3f2upkooh7l7l37v559u2t1qa5'),(542,'cron','2014-04-26 11:21:54','3f2upkooh7l7l37v559u2t1qa5'),(543,'cron','2014-04-26 11:22:00','3f2upkooh7l7l37v559u2t1qa5'),(544,'cron','2014-04-26 11:22:33','3f2upkooh7l7l37v559u2t1qa5'),(545,'cron','2014-04-26 11:22:41','3f2upkooh7l7l37v559u2t1qa5'),(546,'cron','2014-04-26 11:22:54','3f2upkooh7l7l37v559u2t1qa5'),(547,'cron','2014-04-26 11:23:02','3f2upkooh7l7l37v559u2t1qa5'),(548,'cron','2014-04-26 11:23:39','3f2upkooh7l7l37v559u2t1qa5'),(549,'cron','2014-04-26 11:23:57','d4jc8v1pd6ua459v03r2cmq6a6'),(550,'cron','2014-04-26 11:26:13','3f2upkooh7l7l37v559u2t1qa5'),(551,'cron','2014-04-26 11:26:19','3f2upkooh7l7l37v559u2t1qa5'),(552,'cron','2014-04-26 11:26:44','3f2upkooh7l7l37v559u2t1qa5'),(553,'cron','2014-04-26 11:26:46','3f2upkooh7l7l37v559u2t1qa5'),(554,'cron','2014-04-26 11:26:50','3f2upkooh7l7l37v559u2t1qa5'),(555,'cron','2014-04-26 11:27:32','3f2upkooh7l7l37v559u2t1qa5'),(556,'cron','2014-04-26 11:27:36','3f2upkooh7l7l37v559u2t1qa5'),(557,'cron','2014-04-26 11:28:42','3f2upkooh7l7l37v559u2t1qa5'),(558,'cron','2014-04-26 11:35:45','3f2upkooh7l7l37v559u2t1qa5'),(559,'cron','2014-04-26 11:37:15','3f2upkooh7l7l37v559u2t1qa5'),(560,'cron','2014-04-26 11:37:20','3f2upkooh7l7l37v559u2t1qa5'),(561,'cron','2014-04-26 12:18:33','3f2upkooh7l7l37v559u2t1qa5'),(562,'cron','2014-04-26 12:18:38','3f2upkooh7l7l37v559u2t1qa5'),(563,'cron','2014-04-26 12:18:49','3f2upkooh7l7l37v559u2t1qa5'),(564,'cron','2014-04-26 12:19:29','3f2upkooh7l7l37v559u2t1qa5'),(565,'cron','2014-04-26 12:20:02','3f2upkooh7l7l37v559u2t1qa5'),(566,'cron','2014-04-26 12:20:11','3f2upkooh7l7l37v559u2t1qa5'),(567,'cron','2014-04-26 12:20:11','3f2upkooh7l7l37v559u2t1qa5'),(568,'cron','2014-04-26 12:42:42','3f2upkooh7l7l37v559u2t1qa5'),(569,'cron','2014-04-26 12:42:49','3f2upkooh7l7l37v559u2t1qa5'),(570,'cron','2014-04-26 12:42:49','3f2upkooh7l7l37v559u2t1qa5'),(571,'cron','2014-04-26 12:42:51','3f2upkooh7l7l37v559u2t1qa5'),(572,'cron','2014-04-26 12:42:52','3f2upkooh7l7l37v559u2t1qa5'),(573,'cron','2014-04-26 12:42:56','3f2upkooh7l7l37v559u2t1qa5'),(574,'cron','2014-04-26 12:42:56','3f2upkooh7l7l37v559u2t1qa5'),(575,'cron','2014-04-26 12:42:58','3f2upkooh7l7l37v559u2t1qa5'),(576,'cron','2014-04-26 12:42:58','3f2upkooh7l7l37v559u2t1qa5'),(577,'cron','2014-04-26 12:43:13','3f2upkooh7l7l37v559u2t1qa5'),(578,'cron','2014-04-26 12:49:37','3f2upkooh7l7l37v559u2t1qa5'),(579,'cron','2014-04-26 12:50:07','3f2upkooh7l7l37v559u2t1qa5'),(580,'cron','2014-04-26 12:50:07','3f2upkooh7l7l37v559u2t1qa5'),(581,'cron','2014-04-26 12:50:12','3f2upkooh7l7l37v559u2t1qa5'),(582,'cron','2014-04-26 12:51:44','3f2upkooh7l7l37v559u2t1qa5'),(583,'cron','2014-04-26 12:54:50','3f2upkooh7l7l37v559u2t1qa5'),(584,'cron','2014-04-26 12:56:47','3f2upkooh7l7l37v559u2t1qa5'),(585,'cron','2014-04-26 12:58:24','3f2upkooh7l7l37v559u2t1qa5'),(586,'cron','2014-04-26 12:58:56','3f2upkooh7l7l37v559u2t1qa5'),(587,'cron','2014-04-26 12:59:09','3f2upkooh7l7l37v559u2t1qa5'),(588,'cron','2014-04-26 13:12:12','1j4f1rdi7desamffqts80at5g6'),(589,'cron','2014-04-26 13:12:12','1j4f1rdi7desamffqts80at5g6'),(590,'cron','2014-04-26 14:09:40','1j4f1rdi7desamffqts80at5g6'),(591,'cron','2014-04-26 14:09:40','1j4f1rdi7desamffqts80at5g6'),(592,'cron','2014-04-26 14:10:08','1j4f1rdi7desamffqts80at5g6'),(593,'cron','2014-04-26 14:10:12','1j4f1rdi7desamffqts80at5g6'),(594,'cron','2014-04-26 14:10:17','1j4f1rdi7desamffqts80at5g6'),(595,'cron','2014-04-26 14:10:17','1j4f1rdi7desamffqts80at5g6'),(596,'cron','2014-04-26 14:10:24','1j4f1rdi7desamffqts80at5g6'),(597,'cron','2014-04-26 14:10:35','1j4f1rdi7desamffqts80at5g6'),(598,'cron','2014-04-26 14:10:35','1j4f1rdi7desamffqts80at5g6'),(599,'cron','2014-04-26 14:10:57','1j4f1rdi7desamffqts80at5g6'),(600,'cron','2014-04-26 14:10:58','1j4f1rdi7desamffqts80at5g6'),(601,'cron','2014-04-26 14:11:11','1j4f1rdi7desamffqts80at5g6'),(602,'cron','2014-04-26 14:11:11','1j4f1rdi7desamffqts80at5g6'),(603,'cron','2014-04-26 14:34:25','3f2upkooh7l7l37v559u2t1qa5'),(604,'cron','2014-04-26 14:34:25','3f2upkooh7l7l37v559u2t1qa5'),(605,'cron','2014-04-26 14:34:27','3f2upkooh7l7l37v559u2t1qa5'),(606,'cron','2014-04-26 14:34:37','3f2upkooh7l7l37v559u2t1qa5'),(607,'cron','2014-04-26 14:34:49','3f2upkooh7l7l37v559u2t1qa5'),(608,'cron','2014-04-26 14:34:49','3f2upkooh7l7l37v559u2t1qa5'),(609,'cron','2014-04-26 14:35:01','3f2upkooh7l7l37v559u2t1qa5'),(610,'cron','2014-04-26 14:35:01','3f2upkooh7l7l37v559u2t1qa5'),(611,'cron','2014-04-26 14:35:02','3f2upkooh7l7l37v559u2t1qa5'),(612,'cron','2014-04-26 14:35:31','3f2upkooh7l7l37v559u2t1qa5'),(613,'cron','2014-04-26 14:36:11','3f2upkooh7l7l37v559u2t1qa5'),(614,'cron','2014-04-26 14:36:11','3f2upkooh7l7l37v559u2t1qa5'),(615,'cron','2014-04-26 14:37:02','3f2upkooh7l7l37v559u2t1qa5'),(616,'cron','2014-04-26 14:37:02','3f2upkooh7l7l37v559u2t1qa5'),(617,'cron','2014-04-26 14:37:08','3f2upkooh7l7l37v559u2t1qa5'),(618,'cron','2014-04-26 14:37:08','3f2upkooh7l7l37v559u2t1qa5'),(619,'cron','2014-04-26 14:37:18','3f2upkooh7l7l37v559u2t1qa5'),(620,'cron','2014-04-26 14:37:19','3f2upkooh7l7l37v559u2t1qa5'),(621,'cron','2014-04-26 14:37:23','3f2upkooh7l7l37v559u2t1qa5'),(622,'cron','2014-04-26 14:37:23','3f2upkooh7l7l37v559u2t1qa5'),(623,'cron','2014-04-26 14:37:43','3f2upkooh7l7l37v559u2t1qa5'),(624,'cron','2014-04-26 14:37:43','3f2upkooh7l7l37v559u2t1qa5'),(625,'cron','2014-04-26 14:38:05','3f2upkooh7l7l37v559u2t1qa5'),(626,'cron','2014-04-26 14:38:05','3f2upkooh7l7l37v559u2t1qa5'),(627,'cron','2014-04-26 14:38:09','3f2upkooh7l7l37v559u2t1qa5'),(628,'cron','2014-04-26 14:38:09','3f2upkooh7l7l37v559u2t1qa5'),(629,'cron','2014-04-26 14:38:15','3f2upkooh7l7l37v559u2t1qa5'),(630,'cron','2014-04-26 14:43:32','3f2upkooh7l7l37v559u2t1qa5'),(631,'cron','2014-04-26 14:43:46','3f2upkooh7l7l37v559u2t1qa5'),(632,'cron','2014-04-26 14:43:54','3f2upkooh7l7l37v559u2t1qa5'),(633,'cron','2014-04-26 14:43:55','3f2upkooh7l7l37v559u2t1qa5'),(634,'cron','2014-04-26 14:43:57','3f2upkooh7l7l37v559u2t1qa5'),(635,'cron','2014-04-26 14:44:24','3f2upkooh7l7l37v559u2t1qa5'),(636,'cron','2014-04-26 14:44:24','3f2upkooh7l7l37v559u2t1qa5'),(637,'cron','2014-04-26 14:44:27','3f2upkooh7l7l37v559u2t1qa5'),(638,'cron','2014-04-26 14:44:31','3f2upkooh7l7l37v559u2t1qa5'),(639,'cron','2014-04-26 14:44:31','3f2upkooh7l7l37v559u2t1qa5'),(640,'cron','2014-04-26 14:44:32','3f2upkooh7l7l37v559u2t1qa5'),(641,'cron','2014-04-26 14:44:38','3f2upkooh7l7l37v559u2t1qa5'),(642,'cron','2014-04-26 14:44:38','3f2upkooh7l7l37v559u2t1qa5'),(643,'cron','2014-04-26 14:44:39','3f2upkooh7l7l37v559u2t1qa5'),(644,'cron','2014-04-26 14:45:20','1j4f1rdi7desamffqts80at5g6'),(645,'cron','2014-04-26 14:45:20','1j4f1rdi7desamffqts80at5g6'),(646,'cron','2014-04-26 14:45:26','1j4f1rdi7desamffqts80at5g6'),(647,'cron','2014-04-26 14:48:58','3f2upkooh7l7l37v559u2t1qa5'),(648,'cron','2014-04-26 14:48:58','3f2upkooh7l7l37v559u2t1qa5'),(649,'cron','2014-04-26 14:49:00','3f2upkooh7l7l37v559u2t1qa5'),(650,'cron','2014-04-26 14:49:05','3f2upkooh7l7l37v559u2t1qa5'),(651,'cron','2014-04-26 14:49:05','3f2upkooh7l7l37v559u2t1qa5'),(652,'cron','2014-04-26 14:49:21','3f2upkooh7l7l37v559u2t1qa5'),(653,'cron','2014-04-26 14:49:21','3f2upkooh7l7l37v559u2t1qa5'),(654,'cron','2014-04-26 14:49:31','3f2upkooh7l7l37v559u2t1qa5'),(655,'cron','2014-04-26 14:49:32','3f2upkooh7l7l37v559u2t1qa5'),(656,'cron','2014-04-26 14:52:24','lad2r10ap0a8apnmtf2ej8pjk1'),(657,'cron','2014-04-26 14:52:24','lad2r10ap0a8apnmtf2ej8pjk1'),(658,'cron','2014-04-26 14:52:41','lad2r10ap0a8apnmtf2ej8pjk1'),(659,'cron','2014-04-26 14:52:42','lad2r10ap0a8apnmtf2ej8pjk1'),(660,'cron','2014-04-26 14:52:44','lad2r10ap0a8apnmtf2ej8pjk1'),(661,'cron','2014-04-26 14:53:00','lad2r10ap0a8apnmtf2ej8pjk1'),(662,'cron','2014-04-26 14:53:03','lad2r10ap0a8apnmtf2ej8pjk1'),(663,'cron','2014-04-26 14:53:05','lad2r10ap0a8apnmtf2ej8pjk1'),(664,'cron','2014-04-26 14:53:07','lad2r10ap0a8apnmtf2ej8pjk1'),(665,'cron','2014-04-26 14:53:08','lad2r10ap0a8apnmtf2ej8pjk1'),(666,'cron','2014-04-26 14:53:18','lad2r10ap0a8apnmtf2ej8pjk1'),(667,'cron','2014-04-26 14:53:35','lad2r10ap0a8apnmtf2ej8pjk1'),(668,'cron','2014-04-26 14:53:36','lad2r10ap0a8apnmtf2ej8pjk1'),(669,'cron','2014-04-26 14:53:54','lad2r10ap0a8apnmtf2ej8pjk1'),(670,'cron','2014-04-26 14:53:59','lad2r10ap0a8apnmtf2ej8pjk1'),(671,'cron','2014-04-26 14:55:04','lad2r10ap0a8apnmtf2ej8pjk1'),(672,'cron','2014-04-26 14:55:04','lad2r10ap0a8apnmtf2ej8pjk1'),(673,'cron','2014-04-26 14:57:16','lad2r10ap0a8apnmtf2ej8pjk1'),(674,'cron','2014-04-26 14:57:17','lad2r10ap0a8apnmtf2ej8pjk1'),(675,'cron','2014-04-26 14:58:21','lad2r10ap0a8apnmtf2ej8pjk1'),(676,'cron','2014-04-26 14:58:21','lad2r10ap0a8apnmtf2ej8pjk1'),(677,'cron','2014-04-26 14:59:16','lad2r10ap0a8apnmtf2ej8pjk1'),(678,'cron','2014-04-26 14:59:17','lad2r10ap0a8apnmtf2ej8pjk1'),(679,'cron','2014-04-26 15:00:53','lad2r10ap0a8apnmtf2ej8pjk1'),(680,'cron','2014-04-26 15:00:54','lad2r10ap0a8apnmtf2ej8pjk1'),(681,'cron','2014-04-26 15:00:59','lad2r10ap0a8apnmtf2ej8pjk1'),(682,'cron','2014-04-26 15:01:03','lad2r10ap0a8apnmtf2ej8pjk1'),(683,'cron','2014-04-26 15:01:08','lad2r10ap0a8apnmtf2ej8pjk1'),(684,'cron','2014-04-26 15:01:08','lad2r10ap0a8apnmtf2ej8pjk1'),(685,'cron','2014-04-26 15:01:12','lad2r10ap0a8apnmtf2ej8pjk1'),(686,'cron','2014-04-26 15:01:15','lad2r10ap0a8apnmtf2ej8pjk1'),(687,'cron','2014-04-26 15:01:28','lad2r10ap0a8apnmtf2ej8pjk1'),(688,'cron','2014-04-26 15:01:35','lad2r10ap0a8apnmtf2ej8pjk1'),(689,'cron','2014-04-26 15:02:12','lad2r10ap0a8apnmtf2ej8pjk1'),(690,'cron','2014-04-26 15:02:12','lad2r10ap0a8apnmtf2ej8pjk1'),(691,'cron','2014-04-26 15:02:53','lad2r10ap0a8apnmtf2ej8pjk1'),(692,'cron','2014-04-26 15:02:53','lad2r10ap0a8apnmtf2ej8pjk1'),(693,'cron','2014-04-26 15:04:12','lad2r10ap0a8apnmtf2ej8pjk1'),(694,'cron','2014-04-26 15:04:13','lad2r10ap0a8apnmtf2ej8pjk1'),(695,'cron','2014-04-26 15:05:26','lad2r10ap0a8apnmtf2ej8pjk1'),(696,'cron','2014-04-26 15:05:26','lad2r10ap0a8apnmtf2ej8pjk1'),(697,'cron','2014-04-26 15:06:09','lad2r10ap0a8apnmtf2ej8pjk1'),(698,'cron','2014-04-26 15:06:10','lad2r10ap0a8apnmtf2ej8pjk1'),(699,'cron','2014-04-26 15:06:32','lad2r10ap0a8apnmtf2ej8pjk1'),(700,'cron','2014-04-26 15:06:32','lad2r10ap0a8apnmtf2ej8pjk1'),(701,'cron','2014-04-26 15:06:36','lad2r10ap0a8apnmtf2ej8pjk1'),(702,'cron','2014-04-26 15:06:43','lad2r10ap0a8apnmtf2ej8pjk1'),(703,'cron','2014-04-26 15:13:06','3f2upkooh7l7l37v559u2t1qa5'),(704,'cron','2014-04-26 15:13:06','3f2upkooh7l7l37v559u2t1qa5'),(705,'cron','2014-04-26 15:13:44','3f2upkooh7l7l37v559u2t1qa5'),(706,'cron','2014-04-26 15:13:44','3f2upkooh7l7l37v559u2t1qa5'),(707,'cron','2014-04-26 15:13:46','3f2upkooh7l7l37v559u2t1qa5'),(708,'cron','2014-04-26 15:21:58','lad2r10ap0a8apnmtf2ej8pjk1'),(709,'cron','2014-04-26 15:21:59','lad2r10ap0a8apnmtf2ej8pjk1'),(710,'cron','2014-04-26 15:30:54','3f2upkooh7l7l37v559u2t1qa5'),(711,'cron','2014-04-26 15:31:14','3f2upkooh7l7l37v559u2t1qa5'),(712,'cron','2014-04-26 15:31:36','3f2upkooh7l7l37v559u2t1qa5'),(713,'cron','2014-04-26 15:36:41','3f2upkooh7l7l37v559u2t1qa5'),(714,'cron','2014-04-26 15:36:54','3f2upkooh7l7l37v559u2t1qa5'),(715,'cron','2014-04-26 15:38:45','3f2upkooh7l7l37v559u2t1qa5'),(716,'cron','2014-04-26 15:44:42','3f2upkooh7l7l37v559u2t1qa5'),(717,'cron','2014-04-26 15:44:55','3f2upkooh7l7l37v559u2t1qa5'),(718,'cron','2014-04-26 15:45:16','3f2upkooh7l7l37v559u2t1qa5'),(719,'cron','2014-04-26 15:45:19','3f2upkooh7l7l37v559u2t1qa5'),(720,'cron','2014-04-26 15:45:27','3f2upkooh7l7l37v559u2t1qa5'),(721,'cron','2014-04-26 15:53:07','3f2upkooh7l7l37v559u2t1qa5'),(722,'cron','2014-04-26 15:53:16','3f2upkooh7l7l37v559u2t1qa5'),(723,'cron','2014-04-26 15:53:20','3f2upkooh7l7l37v559u2t1qa5'),(724,'cron','2014-04-26 15:53:26','3f2upkooh7l7l37v559u2t1qa5'),(725,'cron','2014-04-26 15:53:30','3f2upkooh7l7l37v559u2t1qa5'),(726,'cron','2014-04-26 15:53:41','3f2upkooh7l7l37v559u2t1qa5'),(727,'cron','2014-04-26 15:53:44','3f2upkooh7l7l37v559u2t1qa5'),(728,'cron','2014-04-26 15:54:02','3f2upkooh7l7l37v559u2t1qa5'),(729,'cron','2014-04-26 15:54:15','3f2upkooh7l7l37v559u2t1qa5'),(730,'cron','2014-04-26 15:54:24','3f2upkooh7l7l37v559u2t1qa5'),(731,'cron','2014-04-26 16:06:36','3f2upkooh7l7l37v559u2t1qa5'),(732,'cron','2014-04-26 16:07:03','3f2upkooh7l7l37v559u2t1qa5'),(733,'cron','2014-04-26 16:07:06','3f2upkooh7l7l37v559u2t1qa5'),(734,'cron','2014-04-26 16:07:06','3f2upkooh7l7l37v559u2t1qa5'),(735,'cron','2014-04-26 16:10:26','3f2upkooh7l7l37v559u2t1qa5'),(736,'cron','2014-04-26 16:11:30','3f2upkooh7l7l37v559u2t1qa5'),(737,'cron','2014-04-26 16:21:09','3f2upkooh7l7l37v559u2t1qa5'),(738,'cron','2014-04-26 16:21:43','3f2upkooh7l7l37v559u2t1qa5'),(739,'cron','2014-04-26 16:22:47','3f2upkooh7l7l37v559u2t1qa5'),(740,'cron','2014-04-26 16:22:50','3f2upkooh7l7l37v559u2t1qa5'),(741,'cron','2014-04-26 16:22:53','3f2upkooh7l7l37v559u2t1qa5'),(742,'cron','2014-04-26 16:22:54','3f2upkooh7l7l37v559u2t1qa5'),(743,'cron','2014-04-26 16:24:00','3f2upkooh7l7l37v559u2t1qa5'),(744,'cron','2014-04-26 16:24:08','3f2upkooh7l7l37v559u2t1qa5'),(745,'cron','2014-04-26 16:24:54','3f2upkooh7l7l37v559u2t1qa5'),(746,'cron','2014-04-26 16:25:36','3f2upkooh7l7l37v559u2t1qa5'),(747,'cron','2014-04-26 16:26:10','3f2upkooh7l7l37v559u2t1qa5'),(748,'cron','2014-04-26 16:28:40','3f2upkooh7l7l37v559u2t1qa5'),(749,'cron','2014-04-26 16:46:16','3f2upkooh7l7l37v559u2t1qa5'),(750,'cron','2014-04-26 16:46:20','3f2upkooh7l7l37v559u2t1qa5'),(751,'cron','2014-04-26 16:46:37','3f2upkooh7l7l37v559u2t1qa5'),(752,'cron','2014-04-26 16:46:40','3f2upkooh7l7l37v559u2t1qa5'),(753,'cron','2014-04-26 16:47:05','3f2upkooh7l7l37v559u2t1qa5'),(754,'cron','2014-04-26 16:47:19','3f2upkooh7l7l37v559u2t1qa5'),(755,'cron','2014-04-26 16:47:33','3f2upkooh7l7l37v559u2t1qa5'),(756,'cron','2014-04-26 21:32:48','o6fve0u50q60qc5pl6jp9a7nb7'),(757,'cron','2014-04-26 21:32:48','o6fve0u50q60qc5pl6jp9a7nb7'),(758,'cron','2014-04-26 21:32:53','o6fve0u50q60qc5pl6jp9a7nb7'),(759,'cron','2014-04-26 21:32:54','o6fve0u50q60qc5pl6jp9a7nb7'),(760,'cron','2014-04-26 21:32:59','o6fve0u50q60qc5pl6jp9a7nb7'),(761,'cron','2014-04-26 21:33:02','o6fve0u50q60qc5pl6jp9a7nb7'),(762,'cron','2014-04-26 21:33:03','o6fve0u50q60qc5pl6jp9a7nb7'),(763,'cron','2014-04-26 21:33:27','o6fve0u50q60qc5pl6jp9a7nb7'),(764,'cron','2014-04-26 21:33:30','o6fve0u50q60qc5pl6jp9a7nb7'),(765,'cron','2014-04-26 21:34:20','o6fve0u50q60qc5pl6jp9a7nb7'),(766,'cron','2014-04-26 21:35:27','o6fve0u50q60qc5pl6jp9a7nb7'),(767,'cron','2014-04-26 21:35:58','o6fve0u50q60qc5pl6jp9a7nb7'),(768,'cron','2014-04-26 21:36:32','o6fve0u50q60qc5pl6jp9a7nb7'),(769,'cron','2014-04-26 21:36:34','o6fve0u50q60qc5pl6jp9a7nb7'),(770,'cron','2014-04-26 21:36:52','o6fve0u50q60qc5pl6jp9a7nb7'),(771,'cron','2014-04-26 21:37:02','o6fve0u50q60qc5pl6jp9a7nb7'),(772,'cron','2014-04-26 21:37:04','o6fve0u50q60qc5pl6jp9a7nb7'),(773,'cron','2014-04-26 21:37:07','o6fve0u50q60qc5pl6jp9a7nb7'),(774,'cron','2014-04-26 21:37:11','o6fve0u50q60qc5pl6jp9a7nb7'),(775,'cron','2014-04-26 21:37:14','t77jpmh17skrbocre68ifii9p7'),(776,'cron','2014-04-26 21:37:14','t77jpmh17skrbocre68ifii9p7'),(777,'cron','2014-04-26 21:37:58','t77jpmh17skrbocre68ifii9p7'),(778,'cron','2014-04-26 21:37:59','t77jpmh17skrbocre68ifii9p7'),(779,'cron','2014-04-26 21:38:16','t77jpmh17skrbocre68ifii9p7'),(780,'cron','2014-04-26 21:38:56','t77jpmh17skrbocre68ifii9p7'),(781,'cron','2014-04-26 21:38:57','t77jpmh17skrbocre68ifii9p7'),(782,'cron','2014-04-26 21:39:47','o6fve0u50q60qc5pl6jp9a7nb7'),(783,'cron','2014-04-26 21:39:49','o6fve0u50q60qc5pl6jp9a7nb7'),(784,'cron','2014-04-26 21:39:52','o6fve0u50q60qc5pl6jp9a7nb7'),(785,'cron','2014-04-26 21:40:08','t77jpmh17skrbocre68ifii9p7'),(786,'cron','2014-04-26 21:40:09','o6fve0u50q60qc5pl6jp9a7nb7'),(787,'cron','2014-04-26 21:40:09','t77jpmh17skrbocre68ifii9p7'),(788,'cron','2014-04-26 21:40:53','o6fve0u50q60qc5pl6jp9a7nb7'),(789,'cron','2014-04-26 21:41:02','t77jpmh17skrbocre68ifii9p7'),(790,'cron','2014-04-26 21:41:03','t77jpmh17skrbocre68ifii9p7'),(791,'cron','2014-04-26 21:41:46','o6fve0u50q60qc5pl6jp9a7nb7'),(792,'cron','2014-04-26 21:41:51','o6fve0u50q60qc5pl6jp9a7nb7'),(793,'cron','2014-04-26 21:41:53','o6fve0u50q60qc5pl6jp9a7nb7'),(794,'cron','2014-04-26 21:42:26','t77jpmh17skrbocre68ifii9p7'),(795,'cron','2014-04-26 21:42:26','t77jpmh17skrbocre68ifii9p7'),(796,'cron','2014-04-26 21:43:19','t77jpmh17skrbocre68ifii9p7'),(797,'cron','2014-04-26 21:43:20','t77jpmh17skrbocre68ifii9p7'),(798,'cron','2014-04-26 21:44:14','t77jpmh17skrbocre68ifii9p7'),(799,'cron','2014-04-26 21:44:14','t77jpmh17skrbocre68ifii9p7'),(800,'cron','2014-04-26 21:44:56','t77jpmh17skrbocre68ifii9p7'),(801,'cron','2014-04-26 21:44:56','t77jpmh17skrbocre68ifii9p7'),(802,'cron','2014-04-26 21:45:03','t77jpmh17skrbocre68ifii9p7'),(803,'cron','2014-04-26 21:45:03','t77jpmh17skrbocre68ifii9p7'),(804,'cron','2014-04-26 21:45:50','t77jpmh17skrbocre68ifii9p7'),(805,'cron','2014-04-26 21:45:50','t77jpmh17skrbocre68ifii9p7'),(806,'cron','2014-04-26 21:46:23','t77jpmh17skrbocre68ifii9p7'),(807,'cron','2014-04-26 21:46:23','t77jpmh17skrbocre68ifii9p7'),(808,'cron','2014-04-26 21:47:37','t77jpmh17skrbocre68ifii9p7'),(809,'cron','2014-04-26 21:47:38','t77jpmh17skrbocre68ifii9p7'),(810,'cron','2014-04-26 21:48:09','t77jpmh17skrbocre68ifii9p7'),(811,'cron','2014-04-26 21:48:10','t77jpmh17skrbocre68ifii9p7'),(812,'cron','2014-04-26 21:48:21','t77jpmh17skrbocre68ifii9p7'),(813,'cron','2014-04-26 21:49:15','t77jpmh17skrbocre68ifii9p7'),(814,'cron','2014-04-26 21:49:25','t77jpmh17skrbocre68ifii9p7'),(815,'cron','2014-04-26 21:49:32','t77jpmh17skrbocre68ifii9p7'),(816,'cron','2014-04-26 21:49:36','t77jpmh17skrbocre68ifii9p7'),(817,'cron','2014-04-26 21:49:41','t77jpmh17skrbocre68ifii9p7'),(818,'cron','2014-04-26 21:49:46','t77jpmh17skrbocre68ifii9p7'),(819,'cron','2014-04-26 21:50:00','t77jpmh17skrbocre68ifii9p7'),(820,'cron','2014-04-26 21:50:06','t77jpmh17skrbocre68ifii9p7'),(821,'cron','2014-04-26 21:51:03','o6fve0u50q60qc5pl6jp9a7nb7'),(822,'cron','2014-04-26 21:51:15','o6fve0u50q60qc5pl6jp9a7nb7'),(823,'cron','2014-04-26 21:55:16','o6fve0u50q60qc5pl6jp9a7nb7'),(824,'cron','2014-04-26 21:55:42','o6fve0u50q60qc5pl6jp9a7nb7'),(825,'cron','2014-04-26 21:56:10','o6fve0u50q60qc5pl6jp9a7nb7'),(826,'cron','2014-04-26 21:56:19','o6fve0u50q60qc5pl6jp9a7nb7'),(827,'cron','2014-04-26 21:56:24','o6fve0u50q60qc5pl6jp9a7nb7'),(828,'cron','2014-04-26 21:58:05','o6fve0u50q60qc5pl6jp9a7nb7'),(829,'cron','2014-04-26 21:58:07','o6fve0u50q60qc5pl6jp9a7nb7'),(830,'cron','2014-04-26 21:59:39','o6fve0u50q60qc5pl6jp9a7nb7'),(831,'cron','2014-04-26 21:59:50','o6fve0u50q60qc5pl6jp9a7nb7'),(832,'cron','2014-04-26 22:00:16','o6fve0u50q60qc5pl6jp9a7nb7'),(833,'cron','2014-04-26 22:05:12','o6fve0u50q60qc5pl6jp9a7nb7'),(834,'cron','2014-04-26 22:05:40','o6fve0u50q60qc5pl6jp9a7nb7'),(835,'cron','2014-04-26 22:05:53','o6fve0u50q60qc5pl6jp9a7nb7'),(836,'cron','2014-04-26 22:05:58','o6fve0u50q60qc5pl6jp9a7nb7'),(837,'cron','2014-04-26 22:06:06','o6fve0u50q60qc5pl6jp9a7nb7'),(838,'cron','2014-04-26 22:25:13','o6fve0u50q60qc5pl6jp9a7nb7'),(839,'cron','2014-04-26 22:25:15','o6fve0u50q60qc5pl6jp9a7nb7'),(840,'cron','2014-04-26 22:25:51','o6fve0u50q60qc5pl6jp9a7nb7'),(841,'cron','2014-04-26 22:29:02','o6fve0u50q60qc5pl6jp9a7nb7'),(842,'cron','2014-04-26 22:29:32','o6fve0u50q60qc5pl6jp9a7nb7'),(843,'cron','2014-04-26 22:29:38','o6fve0u50q60qc5pl6jp9a7nb7'),(844,'cron','2014-04-26 22:29:38','o6fve0u50q60qc5pl6jp9a7nb7'),(845,'cron','2014-04-26 22:30:10','o6fve0u50q60qc5pl6jp9a7nb7'),(846,'cron','2014-04-26 22:30:10','o6fve0u50q60qc5pl6jp9a7nb7'),(847,'cron','2014-04-26 22:30:32','o6fve0u50q60qc5pl6jp9a7nb7'),(848,'cron','2014-04-26 22:30:32','o6fve0u50q60qc5pl6jp9a7nb7'),(849,'cron','2014-04-26 22:30:41','o6fve0u50q60qc5pl6jp9a7nb7'),(850,'cron','2014-04-26 22:30:43','o6fve0u50q60qc5pl6jp9a7nb7'),(851,'cron','2014-04-26 22:38:00','o6fve0u50q60qc5pl6jp9a7nb7'),(852,'cron','2014-04-26 22:38:10','o6fve0u50q60qc5pl6jp9a7nb7'),(853,'cron','2014-04-26 22:38:23','o6fve0u50q60qc5pl6jp9a7nb7'),(854,'cron','2014-04-26 23:06:37','o6fve0u50q60qc5pl6jp9a7nb7'),(855,'cron','2014-04-26 23:06:37','o6fve0u50q60qc5pl6jp9a7nb7'),(856,'cron','2014-04-26 23:11:00','o6fve0u50q60qc5pl6jp9a7nb7'),(857,'cron','2014-04-26 23:11:04','o6fve0u50q60qc5pl6jp9a7nb7'),(858,'cron','2014-04-26 23:11:04','o6fve0u50q60qc5pl6jp9a7nb7'),(859,'cron','2014-04-26 23:11:23','o6fve0u50q60qc5pl6jp9a7nb7'),(860,'cron','2014-04-26 23:11:23','o6fve0u50q60qc5pl6jp9a7nb7'),(861,'cron','2014-04-26 23:11:25','o6fve0u50q60qc5pl6jp9a7nb7'),(862,'cron','2014-04-26 23:12:31','o6fve0u50q60qc5pl6jp9a7nb7'),(863,'cron','2014-04-26 23:13:00','o6fve0u50q60qc5pl6jp9a7nb7'),(864,'cron','2014-04-26 23:13:02','o6fve0u50q60qc5pl6jp9a7nb7'),(865,'cron','2014-04-26 23:13:03','o6fve0u50q60qc5pl6jp9a7nb7'),(866,'cron','2014-04-26 23:14:03','o6fve0u50q60qc5pl6jp9a7nb7'),(867,'cron','2014-04-26 23:14:05','o6fve0u50q60qc5pl6jp9a7nb7'),(868,'cron','2014-04-26 23:14:07','o6fve0u50q60qc5pl6jp9a7nb7'),(869,'cron','2014-04-26 23:14:09','o6fve0u50q60qc5pl6jp9a7nb7'),(870,'cron','2014-04-26 23:14:10','o6fve0u50q60qc5pl6jp9a7nb7'),(871,'cron','2014-04-26 23:14:15','o6fve0u50q60qc5pl6jp9a7nb7'),(872,'cron','2014-04-26 23:14:20','o6fve0u50q60qc5pl6jp9a7nb7'),(873,'cron','2014-04-26 23:14:48','o6fve0u50q60qc5pl6jp9a7nb7'),(874,'cron','2014-04-26 23:14:50','o6fve0u50q60qc5pl6jp9a7nb7'),(875,'cron','2014-04-26 23:14:53','o6fve0u50q60qc5pl6jp9a7nb7'),(876,'cron','2014-04-26 23:15:07','o6fve0u50q60qc5pl6jp9a7nb7'),(877,'cron','2014-04-26 23:15:13','o6fve0u50q60qc5pl6jp9a7nb7'),(878,'cron','2014-04-26 23:15:58','o6fve0u50q60qc5pl6jp9a7nb7'),(879,'cron','2014-04-26 23:16:34','o6fve0u50q60qc5pl6jp9a7nb7'),(880,'cron','2014-04-26 23:16:34','o6fve0u50q60qc5pl6jp9a7nb7'),(881,'cron','2014-04-26 23:17:18','o6fve0u50q60qc5pl6jp9a7nb7'),(882,'cron','2014-04-26 23:17:25','o6fve0u50q60qc5pl6jp9a7nb7'),(883,'cron','2014-04-26 23:17:25','o6fve0u50q60qc5pl6jp9a7nb7'),(884,'cron','2014-04-26 23:17:43','o6fve0u50q60qc5pl6jp9a7nb7'),(885,'cron','2014-04-26 23:17:44','o6fve0u50q60qc5pl6jp9a7nb7'),(886,'cron','2014-04-26 23:17:49','o6fve0u50q60qc5pl6jp9a7nb7'),(887,'cron','2014-04-26 23:17:49','o6fve0u50q60qc5pl6jp9a7nb7'),(888,'cron','2014-04-26 23:18:01','o6fve0u50q60qc5pl6jp9a7nb7'),(889,'cron','2014-04-26 23:18:02','o6fve0u50q60qc5pl6jp9a7nb7'),(890,'cron','2014-04-26 23:18:14','o6fve0u50q60qc5pl6jp9a7nb7'),(891,'cron','2014-04-26 23:18:14','o6fve0u50q60qc5pl6jp9a7nb7'),(892,'cron','2014-04-26 23:18:36','o6fve0u50q60qc5pl6jp9a7nb7'),(893,'cron','2014-04-26 23:18:36','o6fve0u50q60qc5pl6jp9a7nb7'),(894,'cron','2014-04-26 23:18:48','o6fve0u50q60qc5pl6jp9a7nb7'),(895,'cron','2014-04-26 23:18:49','o6fve0u50q60qc5pl6jp9a7nb7'),(896,'cron','2014-04-26 23:19:47','o6fve0u50q60qc5pl6jp9a7nb7'),(897,'cron','2014-04-26 23:19:47','o6fve0u50q60qc5pl6jp9a7nb7'),(898,'cron','2014-04-26 23:20:00','o6fve0u50q60qc5pl6jp9a7nb7'),(899,'cron','2014-04-26 23:20:01','o6fve0u50q60qc5pl6jp9a7nb7'),(900,'cron','2014-04-26 23:20:03','o6fve0u50q60qc5pl6jp9a7nb7'),(901,'cron','2014-04-26 23:20:03','o6fve0u50q60qc5pl6jp9a7nb7'),(902,'cron','2014-04-26 23:21:39','o6fve0u50q60qc5pl6jp9a7nb7'),(903,'cron','2014-04-26 23:21:41','o6fve0u50q60qc5pl6jp9a7nb7'),(904,'cron','2014-04-26 23:21:43','o6fve0u50q60qc5pl6jp9a7nb7'),(905,'cron','2014-04-26 23:22:08','o6fve0u50q60qc5pl6jp9a7nb7'),(906,'cron','2014-04-26 23:22:46','o6fve0u50q60qc5pl6jp9a7nb7'),(907,'cron','2014-04-26 23:23:21','o6fve0u50q60qc5pl6jp9a7nb7'),(908,'cron','2014-04-26 23:23:24','o6fve0u50q60qc5pl6jp9a7nb7'),(909,'cron','2014-04-26 23:25:17','o6fve0u50q60qc5pl6jp9a7nb7'),(910,'cron','2014-04-26 23:25:40','o6fve0u50q60qc5pl6jp9a7nb7'),(911,'cron','2014-04-26 23:25:57','o6fve0u50q60qc5pl6jp9a7nb7'),(912,'cron','2014-04-26 23:26:07','o6fve0u50q60qc5pl6jp9a7nb7'),(913,'cron','2014-04-26 23:26:20','o6fve0u50q60qc5pl6jp9a7nb7'),(914,'cron','2014-04-26 23:26:30','o6fve0u50q60qc5pl6jp9a7nb7'),(915,'cron','2014-04-26 23:26:39','o6fve0u50q60qc5pl6jp9a7nb7'),(916,'cron','2014-04-26 23:27:45','o6fve0u50q60qc5pl6jp9a7nb7'),(917,'cron','2014-04-26 23:27:47','o6fve0u50q60qc5pl6jp9a7nb7'),(918,'cron','2014-04-26 23:40:49','o6fve0u50q60qc5pl6jp9a7nb7'),(919,'cron','2014-04-26 23:41:19','o6fve0u50q60qc5pl6jp9a7nb7'),(920,'cron','2014-04-26 23:41:49','o6fve0u50q60qc5pl6jp9a7nb7'),(921,'cron','2014-04-26 23:41:59','o6fve0u50q60qc5pl6jp9a7nb7'),(922,'cron','2014-04-26 23:42:10','o6fve0u50q60qc5pl6jp9a7nb7'),(923,'cron','2014-04-26 23:42:29','o6fve0u50q60qc5pl6jp9a7nb7'),(924,'cron','2014-04-26 23:42:32','o6fve0u50q60qc5pl6jp9a7nb7'),(925,'cron','2014-04-26 23:42:41','o6fve0u50q60qc5pl6jp9a7nb7'),(926,'cron','2014-04-26 23:42:43','o6fve0u50q60qc5pl6jp9a7nb7'),(927,'cron','2014-04-26 23:42:45','o6fve0u50q60qc5pl6jp9a7nb7'),(928,'cron','2014-04-26 23:42:48','o6fve0u50q60qc5pl6jp9a7nb7'),(929,'cron','2014-04-26 23:42:52','o6fve0u50q60qc5pl6jp9a7nb7'),(930,'cron','2014-04-26 23:42:55','o6fve0u50q60qc5pl6jp9a7nb7'),(931,'cron','2014-04-26 23:42:58','o6fve0u50q60qc5pl6jp9a7nb7'),(932,'cron','2014-04-26 23:43:00','o6fve0u50q60qc5pl6jp9a7nb7'),(933,'cron','2014-04-26 23:43:03','o6fve0u50q60qc5pl6jp9a7nb7'),(934,'cron','2014-04-26 23:43:08','o6fve0u50q60qc5pl6jp9a7nb7'),(935,'cron','2014-04-26 23:43:09','o6fve0u50q60qc5pl6jp9a7nb7'),(936,'cron','2014-04-26 23:43:12','o6fve0u50q60qc5pl6jp9a7nb7'),(937,'cron','2014-04-26 23:43:18','o6fve0u50q60qc5pl6jp9a7nb7'),(938,'cron','2014-04-26 23:43:20','o6fve0u50q60qc5pl6jp9a7nb7'),(939,'cron','2014-04-26 23:43:24','o6fve0u50q60qc5pl6jp9a7nb7'),(940,'cron','2014-04-26 23:44:26','o6fve0u50q60qc5pl6jp9a7nb7'),(941,'cron','2014-04-26 23:44:28','o6fve0u50q60qc5pl6jp9a7nb7'),(942,'cron','2014-04-26 23:44:35','o6fve0u50q60qc5pl6jp9a7nb7'),(943,'cron','2014-04-26 23:44:36','o6fve0u50q60qc5pl6jp9a7nb7'),(944,'cron','2014-04-26 23:44:39','o6fve0u50q60qc5pl6jp9a7nb7'),(945,'cron','2014-04-26 23:45:29','o6fve0u50q60qc5pl6jp9a7nb7'),(946,'cron','2014-04-26 23:45:32','o6fve0u50q60qc5pl6jp9a7nb7'),(947,'cron','2014-04-26 23:45:39','o6fve0u50q60qc5pl6jp9a7nb7'),(948,'cron','2014-04-26 23:45:41','o6fve0u50q60qc5pl6jp9a7nb7'),(949,'cron','2014-04-26 23:46:28','o6fve0u50q60qc5pl6jp9a7nb7'),(950,'cron','2014-04-26 23:46:29','o6fve0u50q60qc5pl6jp9a7nb7'),(951,'cron','2014-04-26 23:46:53','o6fve0u50q60qc5pl6jp9a7nb7'),(952,'cron','2014-04-26 23:46:54','o6fve0u50q60qc5pl6jp9a7nb7'),(953,'cron','2014-04-26 23:46:59','o6fve0u50q60qc5pl6jp9a7nb7'),(954,'cron','2014-04-26 23:47:06','o6fve0u50q60qc5pl6jp9a7nb7'),(955,'cron','2014-04-26 23:47:35','o6fve0u50q60qc5pl6jp9a7nb7'),(956,'cron','2014-04-26 23:47:51','o6fve0u50q60qc5pl6jp9a7nb7'),(957,'cron','2014-04-26 23:48:17','o6fve0u50q60qc5pl6jp9a7nb7'),(958,'cron','2014-04-26 23:48:31','o6fve0u50q60qc5pl6jp9a7nb7'),(959,'cron','2014-04-26 23:48:32','o6fve0u50q60qc5pl6jp9a7nb7'),(960,'cron','2014-04-26 23:48:38','o6fve0u50q60qc5pl6jp9a7nb7'),(961,'cron','2014-04-26 23:48:52','o6fve0u50q60qc5pl6jp9a7nb7'),(962,'cron','2014-04-26 23:49:32','o6fve0u50q60qc5pl6jp9a7nb7'),(963,'cron','2014-04-26 23:49:36','o6fve0u50q60qc5pl6jp9a7nb7'),(964,'cron','2014-04-26 23:49:38','o6fve0u50q60qc5pl6jp9a7nb7'),(965,'cron','2014-04-26 23:49:38','o6fve0u50q60qc5pl6jp9a7nb7'),(966,'cron','2014-04-26 23:49:42','o6fve0u50q60qc5pl6jp9a7nb7'),(967,'cron','2014-04-26 23:49:42','o6fve0u50q60qc5pl6jp9a7nb7'),(968,'cron','2014-04-26 23:49:43','o6fve0u50q60qc5pl6jp9a7nb7'),(969,'cron','2014-04-26 23:49:44','o6fve0u50q60qc5pl6jp9a7nb7'),(970,'cron','2014-04-26 23:50:21','o6fve0u50q60qc5pl6jp9a7nb7'),(971,'cron','2014-04-26 23:50:25','o6fve0u50q60qc5pl6jp9a7nb7'),(972,'cron','2014-04-26 23:50:27','o6fve0u50q60qc5pl6jp9a7nb7'),(973,'cron','2014-04-26 23:50:29','o6fve0u50q60qc5pl6jp9a7nb7'),(974,'cron','2014-04-26 23:50:30','o6fve0u50q60qc5pl6jp9a7nb7'),(975,'cron','2014-04-26 23:50:50','o6fve0u50q60qc5pl6jp9a7nb7'),(976,'cron','2014-04-26 23:50:56','o6fve0u50q60qc5pl6jp9a7nb7'),(977,'cron','2014-04-26 23:50:56','o6fve0u50q60qc5pl6jp9a7nb7'),(978,'cron','2014-04-26 23:50:57','o6fve0u50q60qc5pl6jp9a7nb7'),(979,'cron','2014-04-26 23:50:57','o6fve0u50q60qc5pl6jp9a7nb7'),(980,'cron','2014-04-26 23:50:58','o6fve0u50q60qc5pl6jp9a7nb7'),(981,'cron','2014-04-26 23:50:58','o6fve0u50q60qc5pl6jp9a7nb7'),(982,'cron','2014-04-26 23:51:04','o6fve0u50q60qc5pl6jp9a7nb7'),(983,'cron','2014-04-26 23:54:55','o6fve0u50q60qc5pl6jp9a7nb7'),(984,'cron','2014-04-26 23:55:06','o6fve0u50q60qc5pl6jp9a7nb7'),(985,'cron','2014-04-27 00:14:00','o6fve0u50q60qc5pl6jp9a7nb7'),(986,'cron','2014-04-28 22:40:11','p3u2imc78pv9htis5qittbvre2'),(987,'cron','2014-04-28 22:40:12','p3u2imc78pv9htis5qittbvre2'),(988,'cron','2014-04-28 23:16:17','p3u2imc78pv9htis5qittbvre2'),(989,'cron','2014-04-28 23:16:22','p3u2imc78pv9htis5qittbvre2'),(990,'cron','2014-04-28 23:16:22','p3u2imc78pv9htis5qittbvre2'),(991,'cron','2014-04-28 23:17:11','p3u2imc78pv9htis5qittbvre2'),(992,'cron','2014-04-28 23:17:13','p3u2imc78pv9htis5qittbvre2'),(993,'cron','2014-04-28 23:17:17','p3u2imc78pv9htis5qittbvre2'),(994,'cron','2014-04-28 23:17:19','p3u2imc78pv9htis5qittbvre2'),(995,'cron','2014-04-28 23:31:40','p3u2imc78pv9htis5qittbvre2'),(996,'cron','2014-04-28 23:37:39','p3u2imc78pv9htis5qittbvre2'),(997,'cron','2014-04-28 23:37:45','p3u2imc78pv9htis5qittbvre2'),(998,'cron','2014-04-28 23:37:59','p3u2imc78pv9htis5qittbvre2'),(999,'cron','2014-04-28 23:38:03','p3u2imc78pv9htis5qittbvre2'),(1000,'cron','2014-04-28 23:38:34','p3u2imc78pv9htis5qittbvre2'),(1001,'cron','2014-04-28 23:38:38','p3u2imc78pv9htis5qittbvre2'),(1002,'cron','2014-04-28 23:38:44','p3u2imc78pv9htis5qittbvre2'),(1003,'cron','2014-04-28 23:38:47','p3u2imc78pv9htis5qittbvre2'),(1004,'cron','2014-04-28 23:39:12','p3u2imc78pv9htis5qittbvre2'),(1005,'cron','2014-04-28 23:39:21','p3u2imc78pv9htis5qittbvre2'),(1006,'cron','2014-04-28 23:39:24','p3u2imc78pv9htis5qittbvre2'),(1007,'cron','2014-04-28 23:40:42','p3u2imc78pv9htis5qittbvre2'),(1008,'cron','2014-04-28 23:40:55','p3u2imc78pv9htis5qittbvre2'),(1009,'cron','2014-04-28 23:41:02','p3u2imc78pv9htis5qittbvre2'),(1010,'cron','2014-04-28 23:42:04','p3u2imc78pv9htis5qittbvre2'),(1011,'cron','2014-04-28 23:42:07','p3u2imc78pv9htis5qittbvre2'),(1012,'cron','2014-04-28 23:42:07','p3u2imc78pv9htis5qittbvre2'),(1013,'cron','2014-04-28 23:42:11','p3u2imc78pv9htis5qittbvre2'),(1014,'cron','2014-04-28 23:43:10','p3u2imc78pv9htis5qittbvre2'),(1015,'cron','2014-04-28 23:43:27','p3u2imc78pv9htis5qittbvre2'),(1016,'cron','2014-04-28 23:43:44','p3u2imc78pv9htis5qittbvre2'),(1017,'cron','2014-04-30 21:06:07','3mrrajh5apsd72p0d395f7a5c4'),(1018,'cron','2014-04-30 21:06:08','3mrrajh5apsd72p0d395f7a5c4'),(1019,'cron','2014-04-30 21:06:38','3mrrajh5apsd72p0d395f7a5c4'),(1020,'cron','2014-04-30 21:06:38','3mrrajh5apsd72p0d395f7a5c4'),(1021,'cron','2014-04-30 21:06:38','3mrrajh5apsd72p0d395f7a5c4'),(1022,'cron','2014-04-30 21:06:38','3mrrajh5apsd72p0d395f7a5c4'),(1023,'cron','2014-04-30 21:06:38','3mrrajh5apsd72p0d395f7a5c4'),(1024,'cron','2014-04-30 21:06:38','3mrrajh5apsd72p0d395f7a5c4'),(1025,'cron','2014-04-30 21:06:39','3mrrajh5apsd72p0d395f7a5c4'),(1026,'cron','2014-04-30 21:06:39','3mrrajh5apsd72p0d395f7a5c4'),(1027,'cron','2014-04-30 21:06:39','3mrrajh5apsd72p0d395f7a5c4'),(1028,'cron','2014-04-30 21:06:39','3mrrajh5apsd72p0d395f7a5c4'),(1029,'cron','2014-04-30 21:06:39','3mrrajh5apsd72p0d395f7a5c4'),(1030,'cron','2014-04-30 21:06:39','3mrrajh5apsd72p0d395f7a5c4'),(1031,'cron','2014-04-30 21:06:39','3mrrajh5apsd72p0d395f7a5c4'),(1032,'cron','2014-04-30 21:06:40','3mrrajh5apsd72p0d395f7a5c4'),(1033,'cron','2014-04-30 21:06:40','3mrrajh5apsd72p0d395f7a5c4'),(1034,'cron','2014-04-30 21:06:40','3mrrajh5apsd72p0d395f7a5c4'),(1035,'cron','2014-04-30 21:06:40','3mrrajh5apsd72p0d395f7a5c4'),(1036,'cron','2014-04-30 21:06:40','3mrrajh5apsd72p0d395f7a5c4'),(1037,'cron','2014-04-30 21:06:40','3mrrajh5apsd72p0d395f7a5c4'),(1038,'cron','2014-04-30 21:06:40','3mrrajh5apsd72p0d395f7a5c4'),(1039,'cron','2014-04-30 21:06:40','3mrrajh5apsd72p0d395f7a5c4'),(1040,'cron','2014-04-30 21:06:55','3mrrajh5apsd72p0d395f7a5c4'),(1041,'cron','2014-04-30 21:06:55','3mrrajh5apsd72p0d395f7a5c4'),(1042,'cron','2014-04-30 21:08:12','3mrrajh5apsd72p0d395f7a5c4'),(1043,'cron','2014-04-30 21:08:13','3mrrajh5apsd72p0d395f7a5c4'),(1044,'cron','2014-04-30 21:10:20','3mrrajh5apsd72p0d395f7a5c4'),(1045,'cron','2014-04-30 21:10:22','3mrrajh5apsd72p0d395f7a5c4'),(1046,'cron','2014-04-30 21:17:38','3mrrajh5apsd72p0d395f7a5c4'),(1047,'cron','2014-04-30 21:17:42','3mrrajh5apsd72p0d395f7a5c4'),(1048,'cron','2014-04-30 21:20:14','3mrrajh5apsd72p0d395f7a5c4'),(1049,'cron','2014-04-30 21:20:15','3mrrajh5apsd72p0d395f7a5c4'),(1050,'cron','2014-04-30 21:20:20','3mrrajh5apsd72p0d395f7a5c4'),(1051,'cron','2014-05-03 10:24:05','fuhvc2vg46fck94te335h3dsl3'),(1052,'cron','2014-05-03 10:24:06','fuhvc2vg46fck94te335h3dsl3'),(1053,'cron','2014-05-03 10:28:19','fuhvc2vg46fck94te335h3dsl3'),(1054,'cron','2014-05-03 10:28:19','fuhvc2vg46fck94te335h3dsl3'),(1055,'cron','2014-05-03 14:57:21','fuhvc2vg46fck94te335h3dsl3'),(1056,'cron','2014-05-03 23:38:27','iqc5cbkc0fogsbebc70klhce94'),(1057,'cron','2014-05-03 23:38:27','iqc5cbkc0fogsbebc70klhce94'),(1058,'cron','2014-05-03 23:38:35','iqc5cbkc0fogsbebc70klhce94'),(1059,'cron','2014-05-03 23:38:35','iqc5cbkc0fogsbebc70klhce94'),(1060,'cron','2014-05-03 23:39:27','iqc5cbkc0fogsbebc70klhce94'),(1061,'cron','2014-05-03 23:39:29','iqc5cbkc0fogsbebc70klhce94'),(1062,'cron','2014-05-03 23:45:23','iqc5cbkc0fogsbebc70klhce94'),(1063,'cron','2014-05-03 23:45:26','iqc5cbkc0fogsbebc70klhce94'),(1064,'cron','2014-05-03 23:46:19','iqc5cbkc0fogsbebc70klhce94'),(1065,'cron','2014-05-03 23:46:22','iqc5cbkc0fogsbebc70klhce94'),(1066,'cron','2014-05-03 23:46:23','iqc5cbkc0fogsbebc70klhce94'),(1067,'cron','2014-05-03 23:46:24','iqc5cbkc0fogsbebc70klhce94'),(1068,'cron','2014-05-03 23:46:26','iqc5cbkc0fogsbebc70klhce94'),(1069,'cron','2014-05-03 23:46:26','iqc5cbkc0fogsbebc70klhce94'),(1070,'cron','2014-05-03 23:46:28','iqc5cbkc0fogsbebc70klhce94'),(1071,'cron','2014-05-03 23:47:16','iqc5cbkc0fogsbebc70klhce94'),(1072,'cron','2014-05-03 23:47:17','iqc5cbkc0fogsbebc70klhce94'),(1073,'cron','2014-05-03 23:47:18','iqc5cbkc0fogsbebc70klhce94'),(1074,'cron','2014-05-03 23:47:18','iqc5cbkc0fogsbebc70klhce94'),(1075,'cron','2014-05-03 23:47:19','iqc5cbkc0fogsbebc70klhce94'),(1076,'cron','2014-05-03 23:47:19','iqc5cbkc0fogsbebc70klhce94'),(1077,'cron','2014-05-03 23:47:20','iqc5cbkc0fogsbebc70klhce94'),(1078,'cron','2014-05-03 23:47:20','iqc5cbkc0fogsbebc70klhce94'),(1079,'cron','2014-05-03 23:48:14','iqc5cbkc0fogsbebc70klhce94'),(1080,'cron','2014-05-03 23:48:15','iqc5cbkc0fogsbebc70klhce94'),(1081,'cron','2014-05-03 23:48:15','iqc5cbkc0fogsbebc70klhce94'),(1082,'cron','2014-05-03 23:48:15','iqc5cbkc0fogsbebc70klhce94'),(1083,'cron','2014-05-03 23:48:16','iqc5cbkc0fogsbebc70klhce94'),(1084,'cron','2014-05-03 23:48:45','iqc5cbkc0fogsbebc70klhce94'),(1085,'cron','2014-05-03 23:48:54','iqc5cbkc0fogsbebc70klhce94'),(1086,'cron','2014-05-03 23:48:57','iqc5cbkc0fogsbebc70klhce94'),(1087,'cron','2014-05-03 23:49:02','iqc5cbkc0fogsbebc70klhce94'),(1088,'cron','2014-05-03 23:49:04','iqc5cbkc0fogsbebc70klhce94'),(1089,'cron','2014-05-03 23:49:05','iqc5cbkc0fogsbebc70klhce94'),(1090,'cron','2014-05-03 23:49:06','iqc5cbkc0fogsbebc70klhce94'),(1091,'cron','2014-05-03 23:49:07','iqc5cbkc0fogsbebc70klhce94'),(1092,'cron','2014-05-03 23:49:08','iqc5cbkc0fogsbebc70klhce94'),(1093,'cron','2014-05-03 23:49:09','iqc5cbkc0fogsbebc70klhce94'),(1094,'cron','2014-05-03 23:49:09','iqc5cbkc0fogsbebc70klhce94'),(1095,'cron','2014-05-03 23:49:10','iqc5cbkc0fogsbebc70klhce94'),(1096,'cron','2014-05-03 23:49:10','iqc5cbkc0fogsbebc70klhce94'),(1097,'cron','2014-05-03 23:49:11','iqc5cbkc0fogsbebc70klhce94'),(1098,'cron','2014-05-03 23:49:12','iqc5cbkc0fogsbebc70klhce94'),(1099,'cron','2014-05-03 23:49:13','iqc5cbkc0fogsbebc70klhce94'),(1100,'cron','2014-05-03 23:49:13','iqc5cbkc0fogsbebc70klhce94'),(1101,'cron','2014-05-03 23:49:13','iqc5cbkc0fogsbebc70klhce94'),(1102,'cron','2014-05-03 23:49:13','iqc5cbkc0fogsbebc70klhce94'),(1103,'cron','2014-05-03 23:49:14','iqc5cbkc0fogsbebc70klhce94'),(1104,'cron','2014-05-03 23:49:14','iqc5cbkc0fogsbebc70klhce94'),(1105,'cron','2014-05-03 23:49:14','iqc5cbkc0fogsbebc70klhce94'),(1106,'cron','2014-05-03 23:49:15','iqc5cbkc0fogsbebc70klhce94'),(1107,'cron','2014-05-03 23:49:15','iqc5cbkc0fogsbebc70klhce94'),(1108,'cron','2014-05-03 23:49:16','iqc5cbkc0fogsbebc70klhce94'),(1109,'cron','2014-05-03 23:51:00','iqc5cbkc0fogsbebc70klhce94'),(1110,'cron','2014-05-03 23:51:02','iqc5cbkc0fogsbebc70klhce94'),(1111,'cron','2014-05-03 23:51:06','iqc5cbkc0fogsbebc70klhce94'),(1112,'cron','2014-05-03 23:51:16','iqc5cbkc0fogsbebc70klhce94'),(1113,'cron','2014-05-03 23:51:54','iqc5cbkc0fogsbebc70klhce94'),(1114,'cron','2014-05-03 23:51:58','iqc5cbkc0fogsbebc70klhce94'),(1115,'cron','2014-05-03 23:52:04','iqc5cbkc0fogsbebc70klhce94'),(1116,'cron','2014-05-03 23:52:06','iqc5cbkc0fogsbebc70klhce94'),(1117,'cron','2014-05-03 23:52:11','iqc5cbkc0fogsbebc70klhce94'),(1118,'cron','2014-05-03 23:52:15','iqc5cbkc0fogsbebc70klhce94'),(1119,'cron','2014-05-03 23:52:18','iqc5cbkc0fogsbebc70klhce94'),(1120,'cron','2014-05-03 23:53:01','iqc5cbkc0fogsbebc70klhce94'),(1121,'cron','2014-05-03 23:53:02','iqc5cbkc0fogsbebc70klhce94'),(1122,'cron','2014-05-03 23:53:03','iqc5cbkc0fogsbebc70klhce94'),(1123,'cron','2014-05-03 23:53:17','iqc5cbkc0fogsbebc70klhce94'),(1124,'cron','2014-05-03 23:53:19','iqc5cbkc0fogsbebc70klhce94'),(1125,'cron','2014-05-03 23:53:19','iqc5cbkc0fogsbebc70klhce94'),(1126,'cron','2014-05-03 23:53:30','iqc5cbkc0fogsbebc70klhce94'),(1127,'cron','2014-05-03 23:53:30','iqc5cbkc0fogsbebc70klhce94'),(1128,'cron','2014-05-03 23:56:31','iqc5cbkc0fogsbebc70klhce94'),(1129,'cron','2014-05-03 23:56:37','iqc5cbkc0fogsbebc70klhce94'),(1130,'cron','2014-05-03 23:59:16','iqc5cbkc0fogsbebc70klhce94'),(1131,'cron','2014-05-04 00:01:06','iqc5cbkc0fogsbebc70klhce94'),(1132,'cron','2014-05-04 00:03:32','iqc5cbkc0fogsbebc70klhce94'),(1133,'cron','2014-05-04 00:03:34','iqc5cbkc0fogsbebc70klhce94'),(1134,'cron','2014-05-04 00:03:35','iqc5cbkc0fogsbebc70klhce94'),(1135,'cron','2014-05-04 00:04:20','iqc5cbkc0fogsbebc70klhce94'),(1136,'cron','2014-05-04 00:07:08','iqc5cbkc0fogsbebc70klhce94'),(1137,'cron','2014-05-04 00:07:09','iqc5cbkc0fogsbebc70klhce94'),(1138,'cron','2014-05-04 00:07:20','iqc5cbkc0fogsbebc70klhce94'),(1139,'cron','2014-05-04 00:07:24','iqc5cbkc0fogsbebc70klhce94'),(1140,'cron','2014-05-04 00:07:25','iqc5cbkc0fogsbebc70klhce94'),(1141,'cron','2014-05-04 00:07:26','iqc5cbkc0fogsbebc70klhce94'),(1142,'cron','2014-05-04 00:07:27','iqc5cbkc0fogsbebc70klhce94'),(1143,'cron','2014-05-04 00:07:28','iqc5cbkc0fogsbebc70klhce94'),(1144,'cron','2014-05-04 00:07:29','iqc5cbkc0fogsbebc70klhce94'),(1145,'cron','2014-05-04 00:07:29','iqc5cbkc0fogsbebc70klhce94'),(1146,'cron','2014-05-04 00:07:30','iqc5cbkc0fogsbebc70klhce94'),(1147,'cron','2014-05-04 00:07:30','iqc5cbkc0fogsbebc70klhce94'),(1148,'cron','2014-05-04 00:07:31','iqc5cbkc0fogsbebc70klhce94'),(1149,'cron','2014-05-04 00:07:31','iqc5cbkc0fogsbebc70klhce94'),(1150,'cron','2014-05-04 00:09:22','iqc5cbkc0fogsbebc70klhce94'),(1151,'cron','2014-05-04 00:09:23','iqc5cbkc0fogsbebc70klhce94'),(1152,'cron','2014-05-04 00:09:23','iqc5cbkc0fogsbebc70klhce94'),(1153,'cron','2014-05-04 00:09:24','iqc5cbkc0fogsbebc70klhce94'),(1154,'cron','2014-05-04 00:09:28','iqc5cbkc0fogsbebc70klhce94'),(1155,'cron','2014-05-04 00:09:32','iqc5cbkc0fogsbebc70klhce94'),(1156,'cron','2014-05-04 00:09:33','iqc5cbkc0fogsbebc70klhce94'),(1157,'cron','2014-05-04 00:09:36','iqc5cbkc0fogsbebc70klhce94'),(1158,'cron','2014-05-04 00:09:37','iqc5cbkc0fogsbebc70klhce94'),(1159,'cron','2014-05-04 00:09:38','iqc5cbkc0fogsbebc70klhce94'),(1160,'cron','2014-05-04 00:09:38','iqc5cbkc0fogsbebc70klhce94'),(1161,'cron','2014-05-04 00:09:40','iqc5cbkc0fogsbebc70klhce94'),(1162,'cron','2014-05-04 00:09:41','iqc5cbkc0fogsbebc70klhce94'),(1163,'cron','2014-05-04 00:09:42','iqc5cbkc0fogsbebc70klhce94'),(1164,'cron','2014-05-04 00:09:42','iqc5cbkc0fogsbebc70klhce94'),(1165,'cron','2014-05-04 00:09:43','iqc5cbkc0fogsbebc70klhce94'),(1166,'cron','2014-05-04 00:09:43','iqc5cbkc0fogsbebc70klhce94'),(1167,'cron','2014-05-04 00:09:43','iqc5cbkc0fogsbebc70klhce94'),(1168,'cron','2014-05-04 00:09:44','iqc5cbkc0fogsbebc70klhce94'),(1169,'cron','2014-05-04 00:09:44','iqc5cbkc0fogsbebc70klhce94'),(1170,'cron','2014-05-04 00:09:45','iqc5cbkc0fogsbebc70klhce94'),(1171,'cron','2014-05-04 00:09:46','iqc5cbkc0fogsbebc70klhce94'),(1172,'cron','2014-05-04 00:09:46','iqc5cbkc0fogsbebc70klhce94'),(1173,'cron','2014-05-04 00:09:47','iqc5cbkc0fogsbebc70klhce94'),(1174,'cron','2014-05-04 00:09:47','iqc5cbkc0fogsbebc70klhce94'),(1175,'cron','2014-05-04 00:09:47','iqc5cbkc0fogsbebc70klhce94'),(1176,'cron','2014-05-04 00:09:48','iqc5cbkc0fogsbebc70klhce94'),(1177,'cron','2014-05-04 00:09:48','iqc5cbkc0fogsbebc70klhce94'),(1178,'cron','2014-05-04 00:09:48','iqc5cbkc0fogsbebc70klhce94'),(1179,'cron','2014-05-04 00:09:48','iqc5cbkc0fogsbebc70klhce94'),(1180,'cron','2014-05-04 00:09:49','iqc5cbkc0fogsbebc70klhce94'),(1181,'cron','2014-05-04 00:09:49','iqc5cbkc0fogsbebc70klhce94'),(1182,'cron','2014-05-04 00:09:49','iqc5cbkc0fogsbebc70klhce94'),(1183,'cron','2014-05-04 00:09:49','iqc5cbkc0fogsbebc70klhce94'),(1184,'cron','2014-05-04 00:09:49','iqc5cbkc0fogsbebc70klhce94'),(1185,'cron','2014-05-04 00:09:49','iqc5cbkc0fogsbebc70klhce94'),(1186,'cron','2014-05-04 00:09:49','iqc5cbkc0fogsbebc70klhce94'),(1187,'cron','2014-05-04 00:09:50','iqc5cbkc0fogsbebc70klhce94'),(1188,'cron','2014-05-04 00:09:50','iqc5cbkc0fogsbebc70klhce94'),(1189,'cron','2014-05-04 00:09:51','iqc5cbkc0fogsbebc70klhce94'),(1190,'cron','2014-05-04 00:09:51','iqc5cbkc0fogsbebc70klhce94'),(1191,'cron','2014-05-04 00:09:51','iqc5cbkc0fogsbebc70klhce94'),(1192,'cron','2014-05-04 00:09:52','iqc5cbkc0fogsbebc70klhce94'),(1193,'cron','2014-05-04 00:09:52','iqc5cbkc0fogsbebc70klhce94'),(1194,'cron','2014-05-04 00:09:52','iqc5cbkc0fogsbebc70klhce94'),(1195,'cron','2014-05-04 00:09:52','iqc5cbkc0fogsbebc70klhce94'),(1196,'cron','2014-05-04 00:09:52','iqc5cbkc0fogsbebc70klhce94'),(1197,'cron','2014-05-04 00:09:53','iqc5cbkc0fogsbebc70klhce94'),(1198,'cron','2014-05-04 00:09:53','iqc5cbkc0fogsbebc70klhce94'),(1199,'cron','2014-05-04 00:09:53','iqc5cbkc0fogsbebc70klhce94'),(1200,'cron','2014-05-04 00:09:53','iqc5cbkc0fogsbebc70klhce94'),(1201,'cron','2014-05-04 00:09:53','iqc5cbkc0fogsbebc70klhce94'),(1202,'cron','2014-05-04 00:09:53','iqc5cbkc0fogsbebc70klhce94'),(1203,'cron','2014-05-04 00:09:53','iqc5cbkc0fogsbebc70klhce94'),(1204,'cron','2014-05-04 00:09:53','iqc5cbkc0fogsbebc70klhce94'),(1205,'cron','2014-05-04 00:09:54','iqc5cbkc0fogsbebc70klhce94'),(1206,'cron','2014-05-04 00:09:54','iqc5cbkc0fogsbebc70klhce94'),(1207,'cron','2014-05-04 00:09:54','iqc5cbkc0fogsbebc70klhce94'),(1208,'cron','2014-05-04 00:09:54','iqc5cbkc0fogsbebc70klhce94'),(1209,'cron','2014-05-04 00:09:54','iqc5cbkc0fogsbebc70klhce94'),(1210,'cron','2014-05-04 00:09:54','iqc5cbkc0fogsbebc70klhce94'),(1211,'cron','2014-05-04 00:09:54','iqc5cbkc0fogsbebc70klhce94'),(1212,'cron','2014-05-04 00:09:54','iqc5cbkc0fogsbebc70klhce94'),(1213,'cron','2014-05-04 00:09:55','iqc5cbkc0fogsbebc70klhce94'),(1214,'cron','2014-05-04 00:09:55','iqc5cbkc0fogsbebc70klhce94'),(1215,'cron','2014-05-04 00:09:55','iqc5cbkc0fogsbebc70klhce94'),(1216,'cron','2014-05-04 00:09:55','iqc5cbkc0fogsbebc70klhce94'),(1217,'cron','2014-05-04 00:09:55','iqc5cbkc0fogsbebc70klhce94'),(1218,'cron','2014-05-04 00:09:55','iqc5cbkc0fogsbebc70klhce94'),(1219,'cron','2014-05-04 00:09:55','iqc5cbkc0fogsbebc70klhce94'),(1220,'cron','2014-05-04 00:09:55','iqc5cbkc0fogsbebc70klhce94'),(1221,'cron','2014-05-04 00:09:55','iqc5cbkc0fogsbebc70klhce94'),(1222,'cron','2014-05-04 00:09:55','iqc5cbkc0fogsbebc70klhce94'),(1223,'cron','2014-05-04 00:09:56','iqc5cbkc0fogsbebc70klhce94'),(1224,'cron','2014-05-04 00:09:56','iqc5cbkc0fogsbebc70klhce94'),(1225,'cron','2014-05-04 00:09:56','iqc5cbkc0fogsbebc70klhce94'),(1226,'cron','2014-05-04 00:09:56','iqc5cbkc0fogsbebc70klhce94'),(1227,'cron','2014-05-04 00:09:56','iqc5cbkc0fogsbebc70klhce94'),(1228,'cron','2014-05-04 00:09:56','iqc5cbkc0fogsbebc70klhce94'),(1229,'cron','2014-05-04 00:09:57','iqc5cbkc0fogsbebc70klhce94'),(1230,'cron','2014-05-04 00:09:57','iqc5cbkc0fogsbebc70klhce94'),(1231,'cron','2014-05-04 00:09:57','iqc5cbkc0fogsbebc70klhce94'),(1232,'cron','2014-05-04 00:09:57','iqc5cbkc0fogsbebc70klhce94'),(1233,'cron','2014-05-04 00:09:57','iqc5cbkc0fogsbebc70klhce94'),(1234,'cron','2014-05-04 00:09:57','iqc5cbkc0fogsbebc70klhce94'),(1235,'cron','2014-05-04 00:09:57','iqc5cbkc0fogsbebc70klhce94'),(1236,'cron','2014-05-04 00:09:57','iqc5cbkc0fogsbebc70klhce94'),(1237,'cron','2014-05-04 00:09:58','iqc5cbkc0fogsbebc70klhce94'),(1238,'cron','2014-05-04 00:09:58','iqc5cbkc0fogsbebc70klhce94'),(1239,'cron','2014-05-04 00:09:58','iqc5cbkc0fogsbebc70klhce94'),(1240,'cron','2014-05-04 00:09:58','iqc5cbkc0fogsbebc70klhce94'),(1241,'cron','2014-05-04 00:09:58','iqc5cbkc0fogsbebc70klhce94'),(1242,'cron','2014-05-04 00:09:58','iqc5cbkc0fogsbebc70klhce94'),(1243,'cron','2014-05-04 00:09:58','iqc5cbkc0fogsbebc70klhce94'),(1244,'cron','2014-05-04 00:09:58','iqc5cbkc0fogsbebc70klhce94'),(1245,'cron','2014-05-04 00:09:58','iqc5cbkc0fogsbebc70klhce94'),(1246,'cron','2014-05-04 00:09:58','iqc5cbkc0fogsbebc70klhce94'),(1247,'cron','2014-05-04 00:09:59','iqc5cbkc0fogsbebc70klhce94'),(1248,'cron','2014-05-04 00:09:59','iqc5cbkc0fogsbebc70klhce94'),(1249,'cron','2014-05-04 00:09:59','iqc5cbkc0fogsbebc70klhce94'),(1250,'cron','2014-05-04 00:09:59','iqc5cbkc0fogsbebc70klhce94'),(1251,'cron','2014-05-04 00:09:59','iqc5cbkc0fogsbebc70klhce94'),(1252,'cron','2014-05-04 00:09:59','iqc5cbkc0fogsbebc70klhce94'),(1253,'cron','2014-05-04 00:09:59','iqc5cbkc0fogsbebc70klhce94'),(1254,'cron','2014-05-04 00:09:59','iqc5cbkc0fogsbebc70klhce94'),(1255,'cron','2014-05-04 00:09:59','iqc5cbkc0fogsbebc70klhce94'),(1256,'cron','2014-05-04 00:10:00','iqc5cbkc0fogsbebc70klhce94'),(1257,'cron','2014-05-04 00:10:00','iqc5cbkc0fogsbebc70klhce94'),(1258,'cron','2014-05-04 00:10:00','iqc5cbkc0fogsbebc70klhce94'),(1259,'cron','2014-05-04 00:10:00','iqc5cbkc0fogsbebc70klhce94'),(1260,'cron','2014-05-04 00:10:00','iqc5cbkc0fogsbebc70klhce94'),(1261,'cron','2014-05-04 00:10:00','iqc5cbkc0fogsbebc70klhce94'),(1262,'cron','2014-05-04 00:10:00','iqc5cbkc0fogsbebc70klhce94'),(1263,'cron','2014-05-04 00:10:00','iqc5cbkc0fogsbebc70klhce94'),(1264,'cron','2014-05-04 00:10:00','iqc5cbkc0fogsbebc70klhce94'),(1265,'cron','2014-05-04 00:10:01','iqc5cbkc0fogsbebc70klhce94'),(1266,'cron','2014-05-04 00:10:01','iqc5cbkc0fogsbebc70klhce94'),(1267,'cron','2014-05-04 00:10:01','iqc5cbkc0fogsbebc70klhce94'),(1268,'cron','2014-05-04 00:10:01','iqc5cbkc0fogsbebc70klhce94'),(1269,'cron','2014-05-04 00:10:01','iqc5cbkc0fogsbebc70klhce94'),(1270,'cron','2014-05-04 00:10:01','iqc5cbkc0fogsbebc70klhce94'),(1271,'cron','2014-05-04 00:10:01','iqc5cbkc0fogsbebc70klhce94'),(1272,'cron','2014-05-04 00:10:01','iqc5cbkc0fogsbebc70klhce94'),(1273,'cron','2014-05-04 00:10:01','iqc5cbkc0fogsbebc70klhce94'),(1274,'cron','2014-05-04 00:10:01','iqc5cbkc0fogsbebc70klhce94'),(1275,'cron','2014-05-04 00:10:02','iqc5cbkc0fogsbebc70klhce94'),(1276,'cron','2014-05-04 00:10:02','iqc5cbkc0fogsbebc70klhce94'),(1277,'cron','2014-05-04 00:10:02','iqc5cbkc0fogsbebc70klhce94'),(1278,'cron','2014-05-04 00:10:02','iqc5cbkc0fogsbebc70klhce94'),(1279,'cron','2014-05-04 00:10:02','iqc5cbkc0fogsbebc70klhce94'),(1280,'cron','2014-05-04 00:10:02','iqc5cbkc0fogsbebc70klhce94'),(1281,'cron','2014-05-04 00:10:02','iqc5cbkc0fogsbebc70klhce94'),(1282,'cron','2014-05-04 00:10:02','iqc5cbkc0fogsbebc70klhce94'),(1283,'cron','2014-05-04 00:10:02','iqc5cbkc0fogsbebc70klhce94'),(1284,'cron','2014-05-04 00:10:03','iqc5cbkc0fogsbebc70klhce94'),(1285,'cron','2014-05-04 00:10:03','iqc5cbkc0fogsbebc70klhce94'),(1286,'cron','2014-05-04 00:10:03','iqc5cbkc0fogsbebc70klhce94'),(1287,'cron','2014-05-04 00:10:03','iqc5cbkc0fogsbebc70klhce94'),(1288,'cron','2014-05-04 00:10:03','iqc5cbkc0fogsbebc70klhce94'),(1289,'cron','2014-05-04 00:10:03','iqc5cbkc0fogsbebc70klhce94'),(1290,'cron','2014-05-04 00:10:03','iqc5cbkc0fogsbebc70klhce94'),(1291,'cron','2014-05-04 00:10:03','iqc5cbkc0fogsbebc70klhce94'),(1292,'cron','2014-05-04 00:10:04','iqc5cbkc0fogsbebc70klhce94'),(1293,'cron','2014-05-04 00:10:04','iqc5cbkc0fogsbebc70klhce94'),(1294,'cron','2014-05-04 00:10:04','iqc5cbkc0fogsbebc70klhce94'),(1295,'cron','2014-05-04 00:10:04','iqc5cbkc0fogsbebc70klhce94'),(1296,'cron','2014-05-04 00:10:04','iqc5cbkc0fogsbebc70klhce94'),(1297,'cron','2014-05-04 00:10:04','iqc5cbkc0fogsbebc70klhce94'),(1298,'cron','2014-05-04 00:10:04','iqc5cbkc0fogsbebc70klhce94'),(1299,'cron','2014-05-04 00:10:04','iqc5cbkc0fogsbebc70klhce94'),(1300,'cron','2014-05-04 00:10:04','iqc5cbkc0fogsbebc70klhce94'),(1301,'cron','2014-05-04 00:10:04','iqc5cbkc0fogsbebc70klhce94'),(1302,'cron','2014-05-04 00:10:05','iqc5cbkc0fogsbebc70klhce94'),(1303,'cron','2014-05-04 00:10:05','iqc5cbkc0fogsbebc70klhce94'),(1304,'cron','2014-05-04 00:10:05','iqc5cbkc0fogsbebc70klhce94'),(1305,'cron','2014-05-04 00:10:05','iqc5cbkc0fogsbebc70klhce94'),(1306,'cron','2014-05-04 00:10:05','iqc5cbkc0fogsbebc70klhce94'),(1307,'cron','2014-05-04 00:10:05','iqc5cbkc0fogsbebc70klhce94'),(1308,'cron','2014-05-04 00:10:05','iqc5cbkc0fogsbebc70klhce94'),(1309,'cron','2014-05-04 00:10:05','iqc5cbkc0fogsbebc70klhce94'),(1310,'cron','2014-05-04 00:10:05','iqc5cbkc0fogsbebc70klhce94'),(1311,'cron','2014-05-04 00:10:06','iqc5cbkc0fogsbebc70klhce94'),(1312,'cron','2014-05-04 00:10:06','iqc5cbkc0fogsbebc70klhce94'),(1313,'cron','2014-05-04 00:10:06','iqc5cbkc0fogsbebc70klhce94'),(1314,'cron','2014-05-04 00:10:06','iqc5cbkc0fogsbebc70klhce94'),(1315,'cron','2014-05-04 00:10:06','iqc5cbkc0fogsbebc70klhce94'),(1316,'cron','2014-05-04 00:10:06','iqc5cbkc0fogsbebc70klhce94'),(1317,'cron','2014-05-04 00:10:06','iqc5cbkc0fogsbebc70klhce94'),(1318,'cron','2014-05-04 00:10:06','iqc5cbkc0fogsbebc70klhce94'),(1319,'cron','2014-05-04 00:10:07','iqc5cbkc0fogsbebc70klhce94'),(1320,'cron','2014-05-04 00:10:07','iqc5cbkc0fogsbebc70klhce94'),(1321,'cron','2014-05-04 00:10:07','iqc5cbkc0fogsbebc70klhce94'),(1322,'cron','2014-05-04 00:10:07','iqc5cbkc0fogsbebc70klhce94'),(1323,'cron','2014-05-04 00:10:07','iqc5cbkc0fogsbebc70klhce94'),(1324,'cron','2014-05-04 00:10:07','iqc5cbkc0fogsbebc70klhce94'),(1325,'cron','2014-05-04 00:10:07','iqc5cbkc0fogsbebc70klhce94'),(1326,'cron','2014-05-04 00:10:07','iqc5cbkc0fogsbebc70klhce94'),(1327,'cron','2014-05-04 00:10:08','iqc5cbkc0fogsbebc70klhce94'),(1328,'cron','2014-05-04 00:10:08','iqc5cbkc0fogsbebc70klhce94'),(1329,'cron','2014-05-04 00:10:08','iqc5cbkc0fogsbebc70klhce94'),(1330,'cron','2014-05-04 00:10:08','iqc5cbkc0fogsbebc70klhce94'),(1331,'cron','2014-05-04 00:10:09','iqc5cbkc0fogsbebc70klhce94'),(1332,'cron','2014-05-04 00:10:09','iqc5cbkc0fogsbebc70klhce94'),(1333,'cron','2014-05-04 00:10:09','iqc5cbkc0fogsbebc70klhce94'),(1334,'cron','2014-05-04 00:10:09','iqc5cbkc0fogsbebc70klhce94'),(1335,'cron','2014-05-04 00:10:09','iqc5cbkc0fogsbebc70klhce94'),(1336,'cron','2014-05-04 00:10:09','iqc5cbkc0fogsbebc70klhce94'),(1337,'cron','2014-05-04 00:10:09','iqc5cbkc0fogsbebc70klhce94'),(1338,'cron','2014-05-04 00:10:09','iqc5cbkc0fogsbebc70klhce94'),(1339,'cron','2014-05-04 00:10:10','iqc5cbkc0fogsbebc70klhce94'),(1340,'cron','2014-05-04 00:10:10','iqc5cbkc0fogsbebc70klhce94'),(1341,'cron','2014-05-04 00:10:10','iqc5cbkc0fogsbebc70klhce94'),(1342,'cron','2014-05-04 00:10:10','iqc5cbkc0fogsbebc70klhce94'),(1343,'cron','2014-05-04 00:10:10','iqc5cbkc0fogsbebc70klhce94'),(1344,'cron','2014-05-04 00:10:10','iqc5cbkc0fogsbebc70klhce94'),(1345,'cron','2014-05-04 00:10:10','iqc5cbkc0fogsbebc70klhce94'),(1346,'cron','2014-05-04 00:10:10','iqc5cbkc0fogsbebc70klhce94'),(1347,'cron','2014-05-04 00:10:11','iqc5cbkc0fogsbebc70klhce94'),(1348,'cron','2014-05-04 00:10:11','iqc5cbkc0fogsbebc70klhce94'),(1349,'cron','2014-05-04 00:10:11','iqc5cbkc0fogsbebc70klhce94'),(1350,'cron','2014-05-04 00:10:11','iqc5cbkc0fogsbebc70klhce94'),(1351,'cron','2014-05-04 00:10:11','iqc5cbkc0fogsbebc70klhce94'),(1352,'cron','2014-05-04 00:10:11','iqc5cbkc0fogsbebc70klhce94'),(1353,'cron','2014-05-04 00:10:11','iqc5cbkc0fogsbebc70klhce94'),(1354,'cron','2014-05-04 00:10:11','iqc5cbkc0fogsbebc70klhce94'),(1355,'cron','2014-05-04 00:10:12','iqc5cbkc0fogsbebc70klhce94'),(1356,'cron','2014-05-04 00:10:12','iqc5cbkc0fogsbebc70klhce94'),(1357,'cron','2014-05-04 00:10:12','iqc5cbkc0fogsbebc70klhce94'),(1358,'cron','2014-05-04 00:10:12','iqc5cbkc0fogsbebc70klhce94'),(1359,'cron','2014-05-04 00:10:12','iqc5cbkc0fogsbebc70klhce94'),(1360,'cron','2014-05-04 00:10:12','iqc5cbkc0fogsbebc70klhce94'),(1361,'cron','2014-05-04 00:10:13','iqc5cbkc0fogsbebc70klhce94'),(1362,'cron','2014-05-04 00:10:13','iqc5cbkc0fogsbebc70klhce94'),(1363,'cron','2014-05-04 00:10:13','iqc5cbkc0fogsbebc70klhce94'),(1364,'cron','2014-05-04 00:10:17','iqc5cbkc0fogsbebc70klhce94'),(1365,'cron','2014-05-04 00:10:21','iqc5cbkc0fogsbebc70klhce94'),(1366,'cron','2014-05-04 00:10:22','iqc5cbkc0fogsbebc70klhce94'),(1367,'cron','2014-05-04 00:10:25','iqc5cbkc0fogsbebc70klhce94'),(1368,'cron','2014-05-04 00:10:26','iqc5cbkc0fogsbebc70klhce94'),(1369,'cron','2014-05-04 00:10:27','iqc5cbkc0fogsbebc70klhce94'),(1370,'cron','2014-05-04 00:10:27','iqc5cbkc0fogsbebc70klhce94'),(1371,'cron','2014-05-04 00:10:29','iqc5cbkc0fogsbebc70klhce94'),(1372,'cron','2014-05-04 00:10:30','iqc5cbkc0fogsbebc70klhce94'),(1373,'cron','2014-05-04 00:10:31','iqc5cbkc0fogsbebc70klhce94'),(1374,'cron','2014-05-04 00:10:31','iqc5cbkc0fogsbebc70klhce94'),(1375,'cron','2014-05-04 00:10:32','iqc5cbkc0fogsbebc70klhce94'),(1376,'cron','2014-05-04 00:10:32','iqc5cbkc0fogsbebc70klhce94'),(1377,'cron','2014-05-04 00:10:32','iqc5cbkc0fogsbebc70klhce94'),(1378,'cron','2014-05-04 00:10:32','iqc5cbkc0fogsbebc70klhce94'),(1379,'cron','2014-05-04 00:10:33','iqc5cbkc0fogsbebc70klhce94'),(1380,'cron','2014-05-04 00:10:34','iqc5cbkc0fogsbebc70klhce94'),(1381,'cron','2014-05-04 00:10:35','iqc5cbkc0fogsbebc70klhce94'),(1382,'cron','2014-05-04 00:10:35','iqc5cbkc0fogsbebc70klhce94'),(1383,'cron','2014-05-04 00:10:36','iqc5cbkc0fogsbebc70klhce94'),(1384,'cron','2014-05-04 00:10:36','iqc5cbkc0fogsbebc70klhce94'),(1385,'cron','2014-05-04 00:10:37','iqc5cbkc0fogsbebc70klhce94'),(1386,'cron','2014-05-04 00:10:37','iqc5cbkc0fogsbebc70klhce94'),(1387,'cron','2014-05-04 00:10:37','iqc5cbkc0fogsbebc70klhce94'),(1388,'cron','2014-05-04 00:10:37','iqc5cbkc0fogsbebc70klhce94'),(1389,'cron','2014-05-04 00:10:37','iqc5cbkc0fogsbebc70klhce94'),(1390,'cron','2014-05-04 00:10:38','iqc5cbkc0fogsbebc70klhce94'),(1391,'cron','2014-05-04 00:10:38','iqc5cbkc0fogsbebc70klhce94'),(1392,'cron','2014-05-04 00:10:38','iqc5cbkc0fogsbebc70klhce94'),(1393,'cron','2014-05-04 00:10:38','iqc5cbkc0fogsbebc70klhce94'),(1394,'cron','2014-05-04 00:10:38','iqc5cbkc0fogsbebc70klhce94'),(1395,'cron','2014-05-04 00:10:38','iqc5cbkc0fogsbebc70klhce94'),(1396,'cron','2014-05-04 00:10:38','iqc5cbkc0fogsbebc70klhce94'),(1397,'cron','2014-05-04 00:10:39','iqc5cbkc0fogsbebc70klhce94'),(1398,'cron','2014-05-04 00:10:39','iqc5cbkc0fogsbebc70klhce94'),(1399,'cron','2014-05-04 00:10:40','iqc5cbkc0fogsbebc70klhce94'),(1400,'cron','2014-05-04 00:10:40','iqc5cbkc0fogsbebc70klhce94'),(1401,'cron','2014-05-04 00:10:40','iqc5cbkc0fogsbebc70klhce94'),(1402,'cron','2014-05-04 00:10:40','iqc5cbkc0fogsbebc70klhce94'),(1403,'cron','2014-05-04 00:10:41','iqc5cbkc0fogsbebc70klhce94'),(1404,'cron','2014-05-04 00:10:41','iqc5cbkc0fogsbebc70klhce94'),(1405,'cron','2014-05-04 00:10:41','iqc5cbkc0fogsbebc70klhce94'),(1406,'cron','2014-05-04 00:10:42','iqc5cbkc0fogsbebc70klhce94'),(1407,'cron','2014-05-04 00:10:42','iqc5cbkc0fogsbebc70klhce94'),(1408,'cron','2014-05-04 00:10:42','iqc5cbkc0fogsbebc70klhce94'),(1409,'cron','2014-05-04 00:10:42','iqc5cbkc0fogsbebc70klhce94'),(1410,'cron','2014-05-04 00:10:42','iqc5cbkc0fogsbebc70klhce94'),(1411,'cron','2014-05-04 00:10:42','iqc5cbkc0fogsbebc70klhce94'),(1412,'cron','2014-05-04 00:10:42','iqc5cbkc0fogsbebc70klhce94'),(1413,'cron','2014-05-04 00:10:42','iqc5cbkc0fogsbebc70klhce94'),(1414,'cron','2014-05-04 00:10:43','iqc5cbkc0fogsbebc70klhce94'),(1415,'cron','2014-05-04 00:10:43','iqc5cbkc0fogsbebc70klhce94'),(1416,'cron','2014-05-04 00:10:43','iqc5cbkc0fogsbebc70klhce94'),(1417,'cron','2014-05-04 00:10:43','iqc5cbkc0fogsbebc70klhce94'),(1418,'cron','2014-05-04 00:10:43','iqc5cbkc0fogsbebc70klhce94'),(1419,'cron','2014-05-04 00:10:43','iqc5cbkc0fogsbebc70klhce94'),(1420,'cron','2014-05-04 00:10:43','iqc5cbkc0fogsbebc70klhce94'),(1421,'cron','2014-05-04 00:10:43','iqc5cbkc0fogsbebc70klhce94'),(1422,'cron','2014-05-04 00:10:43','iqc5cbkc0fogsbebc70klhce94'),(1423,'cron','2014-05-04 00:10:44','iqc5cbkc0fogsbebc70klhce94'),(1424,'cron','2014-05-04 00:10:44','iqc5cbkc0fogsbebc70klhce94'),(1425,'cron','2014-05-04 00:10:44','iqc5cbkc0fogsbebc70klhce94'),(1426,'cron','2014-05-04 00:10:44','iqc5cbkc0fogsbebc70klhce94'),(1427,'cron','2014-05-04 00:10:44','iqc5cbkc0fogsbebc70klhce94'),(1428,'cron','2014-05-04 00:10:44','iqc5cbkc0fogsbebc70klhce94'),(1429,'cron','2014-05-04 00:10:44','iqc5cbkc0fogsbebc70klhce94'),(1430,'cron','2014-05-04 00:10:44','iqc5cbkc0fogsbebc70klhce94'),(1431,'cron','2014-05-04 00:10:44','iqc5cbkc0fogsbebc70klhce94'),(1432,'cron','2014-05-04 00:10:45','iqc5cbkc0fogsbebc70klhce94'),(1433,'cron','2014-05-04 00:10:45','iqc5cbkc0fogsbebc70klhce94'),(1434,'cron','2014-05-04 00:10:45','iqc5cbkc0fogsbebc70klhce94'),(1435,'cron','2014-05-04 00:10:45','iqc5cbkc0fogsbebc70klhce94'),(1436,'cron','2014-05-04 00:10:45','iqc5cbkc0fogsbebc70klhce94'),(1437,'cron','2014-05-04 00:10:45','iqc5cbkc0fogsbebc70klhce94'),(1438,'cron','2014-05-04 00:10:46','iqc5cbkc0fogsbebc70klhce94'),(1439,'cron','2014-05-04 00:10:46','iqc5cbkc0fogsbebc70klhce94'),(1440,'cron','2014-05-04 00:10:46','iqc5cbkc0fogsbebc70klhce94'),(1441,'cron','2014-05-04 00:10:46','iqc5cbkc0fogsbebc70klhce94'),(1442,'cron','2014-05-04 00:10:46','iqc5cbkc0fogsbebc70klhce94'),(1443,'cron','2014-05-04 00:10:46','iqc5cbkc0fogsbebc70klhce94'),(1444,'cron','2014-05-04 00:10:46','iqc5cbkc0fogsbebc70klhce94'),(1445,'cron','2014-05-04 00:10:46','iqc5cbkc0fogsbebc70klhce94'),(1446,'cron','2014-05-04 00:10:47','iqc5cbkc0fogsbebc70klhce94'),(1447,'cron','2014-05-04 00:10:47','iqc5cbkc0fogsbebc70klhce94'),(1448,'cron','2014-05-04 00:10:47','iqc5cbkc0fogsbebc70klhce94'),(1449,'cron','2014-05-04 00:10:47','iqc5cbkc0fogsbebc70klhce94'),(1450,'cron','2014-05-04 00:10:47','iqc5cbkc0fogsbebc70klhce94'),(1451,'cron','2014-05-04 00:10:47','iqc5cbkc0fogsbebc70klhce94'),(1452,'cron','2014-05-04 00:10:47','iqc5cbkc0fogsbebc70klhce94'),(1453,'cron','2014-05-04 00:10:47','iqc5cbkc0fogsbebc70klhce94'),(1454,'cron','2014-05-04 00:10:48','iqc5cbkc0fogsbebc70klhce94'),(1455,'cron','2014-05-04 00:10:48','iqc5cbkc0fogsbebc70klhce94'),(1456,'cron','2014-05-04 00:10:48','iqc5cbkc0fogsbebc70klhce94'),(1457,'cron','2014-05-04 00:10:48','iqc5cbkc0fogsbebc70klhce94'),(1458,'cron','2014-05-04 00:10:48','iqc5cbkc0fogsbebc70klhce94'),(1459,'cron','2014-05-04 00:10:48','iqc5cbkc0fogsbebc70klhce94'),(1460,'cron','2014-05-04 00:10:48','iqc5cbkc0fogsbebc70klhce94'),(1461,'cron','2014-05-04 00:10:48','iqc5cbkc0fogsbebc70klhce94'),(1462,'cron','2014-05-04 00:10:48','iqc5cbkc0fogsbebc70klhce94'),(1463,'cron','2014-05-04 00:10:48','iqc5cbkc0fogsbebc70klhce94'),(1464,'cron','2014-05-04 00:10:49','iqc5cbkc0fogsbebc70klhce94'),(1465,'cron','2014-05-04 00:10:49','iqc5cbkc0fogsbebc70klhce94'),(1466,'cron','2014-05-04 00:10:49','iqc5cbkc0fogsbebc70klhce94'),(1467,'cron','2014-05-04 00:10:49','iqc5cbkc0fogsbebc70klhce94'),(1468,'cron','2014-05-04 00:10:49','iqc5cbkc0fogsbebc70klhce94'),(1469,'cron','2014-05-04 00:10:49','iqc5cbkc0fogsbebc70klhce94'),(1470,'cron','2014-05-04 00:10:49','iqc5cbkc0fogsbebc70klhce94'),(1471,'cron','2014-05-04 00:10:49','iqc5cbkc0fogsbebc70klhce94'),(1472,'cron','2014-05-04 00:10:49','iqc5cbkc0fogsbebc70klhce94'),(1473,'cron','2014-05-04 00:10:49','iqc5cbkc0fogsbebc70klhce94'),(1474,'cron','2014-05-04 00:10:50','iqc5cbkc0fogsbebc70klhce94'),(1475,'cron','2014-05-04 00:10:50','iqc5cbkc0fogsbebc70klhce94'),(1476,'cron','2014-05-04 00:10:50','iqc5cbkc0fogsbebc70klhce94'),(1477,'cron','2014-05-04 00:10:50','iqc5cbkc0fogsbebc70klhce94'),(1478,'cron','2014-05-04 00:10:50','iqc5cbkc0fogsbebc70klhce94'),(1479,'cron','2014-05-04 00:10:50','iqc5cbkc0fogsbebc70klhce94'),(1480,'cron','2014-05-04 00:10:50','iqc5cbkc0fogsbebc70klhce94'),(1481,'cron','2014-05-04 00:10:50','iqc5cbkc0fogsbebc70klhce94'),(1482,'cron','2014-05-04 00:10:50','iqc5cbkc0fogsbebc70klhce94'),(1483,'cron','2014-05-04 00:10:51','iqc5cbkc0fogsbebc70klhce94'),(1484,'cron','2014-05-04 00:10:51','iqc5cbkc0fogsbebc70klhce94'),(1485,'cron','2014-05-04 00:10:51','iqc5cbkc0fogsbebc70klhce94'),(1486,'cron','2014-05-04 00:10:51','iqc5cbkc0fogsbebc70klhce94'),(1487,'cron','2014-05-04 00:10:51','iqc5cbkc0fogsbebc70klhce94'),(1488,'cron','2014-05-04 00:10:51','iqc5cbkc0fogsbebc70klhce94'),(1489,'cron','2014-05-04 00:10:51','iqc5cbkc0fogsbebc70klhce94'),(1490,'cron','2014-05-04 00:10:51','iqc5cbkc0fogsbebc70klhce94'),(1491,'cron','2014-05-04 00:10:51','iqc5cbkc0fogsbebc70klhce94'),(1492,'cron','2014-05-04 00:10:51','iqc5cbkc0fogsbebc70klhce94'),(1493,'cron','2014-05-04 00:10:52','iqc5cbkc0fogsbebc70klhce94'),(1494,'cron','2014-05-04 00:10:52','iqc5cbkc0fogsbebc70klhce94'),(1495,'cron','2014-05-04 00:10:52','iqc5cbkc0fogsbebc70klhce94'),(1496,'cron','2014-05-04 00:10:52','iqc5cbkc0fogsbebc70klhce94'),(1497,'cron','2014-05-04 00:10:52','iqc5cbkc0fogsbebc70klhce94'),(1498,'cron','2014-05-04 00:10:52','iqc5cbkc0fogsbebc70klhce94'),(1499,'cron','2014-05-04 00:10:52','iqc5cbkc0fogsbebc70klhce94'),(1500,'cron','2014-05-04 00:10:53','iqc5cbkc0fogsbebc70klhce94'),(1501,'cron','2014-05-04 00:10:53','iqc5cbkc0fogsbebc70klhce94'),(1502,'cron','2014-05-04 00:10:53','iqc5cbkc0fogsbebc70klhce94'),(1503,'cron','2014-05-04 00:10:53','iqc5cbkc0fogsbebc70klhce94'),(1504,'cron','2014-05-04 00:10:53','iqc5cbkc0fogsbebc70klhce94'),(1505,'cron','2014-05-04 00:10:53','iqc5cbkc0fogsbebc70klhce94'),(1506,'cron','2014-05-04 00:10:53','iqc5cbkc0fogsbebc70klhce94'),(1507,'cron','2014-05-04 00:10:53','iqc5cbkc0fogsbebc70klhce94'),(1508,'cron','2014-05-04 00:10:53','iqc5cbkc0fogsbebc70klhce94'),(1509,'cron','2014-05-04 00:10:53','iqc5cbkc0fogsbebc70klhce94'),(1510,'cron','2014-05-04 00:10:54','iqc5cbkc0fogsbebc70klhce94'),(1511,'cron','2014-05-04 00:10:54','iqc5cbkc0fogsbebc70klhce94'),(1512,'cron','2014-05-04 00:10:54','iqc5cbkc0fogsbebc70klhce94'),(1513,'cron','2014-05-04 00:10:54','iqc5cbkc0fogsbebc70klhce94'),(1514,'cron','2014-05-04 00:10:54','iqc5cbkc0fogsbebc70klhce94'),(1515,'cron','2014-05-04 00:10:54','iqc5cbkc0fogsbebc70klhce94'),(1516,'cron','2014-05-04 00:10:54','iqc5cbkc0fogsbebc70klhce94'),(1517,'cron','2014-05-04 00:10:55','iqc5cbkc0fogsbebc70klhce94'),(1518,'cron','2014-05-04 00:10:55','iqc5cbkc0fogsbebc70klhce94'),(1519,'cron','2014-05-04 00:10:55','iqc5cbkc0fogsbebc70klhce94'),(1520,'cron','2014-05-04 00:10:55','iqc5cbkc0fogsbebc70klhce94'),(1521,'cron','2014-05-04 00:10:55','iqc5cbkc0fogsbebc70klhce94'),(1522,'cron','2014-05-04 00:10:55','iqc5cbkc0fogsbebc70klhce94'),(1523,'cron','2014-05-04 00:10:55','iqc5cbkc0fogsbebc70klhce94'),(1524,'cron','2014-05-04 00:10:55','iqc5cbkc0fogsbebc70klhce94'),(1525,'cron','2014-05-04 00:10:55','iqc5cbkc0fogsbebc70klhce94'),(1526,'cron','2014-05-04 00:10:56','iqc5cbkc0fogsbebc70klhce94'),(1527,'cron','2014-05-04 00:10:56','iqc5cbkc0fogsbebc70klhce94'),(1528,'cron','2014-05-04 00:10:56','iqc5cbkc0fogsbebc70klhce94'),(1529,'cron','2014-05-04 00:10:56','iqc5cbkc0fogsbebc70klhce94'),(1530,'cron','2014-05-04 00:10:56','iqc5cbkc0fogsbebc70klhce94'),(1531,'cron','2014-05-04 00:10:56','iqc5cbkc0fogsbebc70klhce94'),(1532,'cron','2014-05-04 00:10:56','iqc5cbkc0fogsbebc70klhce94'),(1533,'cron','2014-05-04 00:10:56','iqc5cbkc0fogsbebc70klhce94'),(1534,'cron','2014-05-04 00:10:57','iqc5cbkc0fogsbebc70klhce94'),(1535,'cron','2014-05-04 00:10:57','iqc5cbkc0fogsbebc70klhce94'),(1536,'cron','2014-05-04 00:10:57','iqc5cbkc0fogsbebc70klhce94'),(1537,'cron','2014-05-04 00:10:57','iqc5cbkc0fogsbebc70klhce94'),(1538,'cron','2014-05-04 00:10:57','iqc5cbkc0fogsbebc70klhce94'),(1539,'cron','2014-05-04 00:10:57','iqc5cbkc0fogsbebc70klhce94'),(1540,'cron','2014-05-04 00:10:58','iqc5cbkc0fogsbebc70klhce94'),(1541,'cron','2014-05-04 00:10:58','iqc5cbkc0fogsbebc70klhce94'),(1542,'cron','2014-05-04 00:10:58','iqc5cbkc0fogsbebc70klhce94'),(1543,'cron','2014-05-04 00:10:58','iqc5cbkc0fogsbebc70klhce94'),(1544,'cron','2014-05-04 00:10:58','iqc5cbkc0fogsbebc70klhce94'),(1545,'cron','2014-05-04 00:10:58','iqc5cbkc0fogsbebc70klhce94'),(1546,'cron','2014-05-04 00:10:58','iqc5cbkc0fogsbebc70klhce94'),(1547,'cron','2014-05-04 00:10:58','iqc5cbkc0fogsbebc70klhce94'),(1548,'cron','2014-05-04 00:10:59','iqc5cbkc0fogsbebc70klhce94'),(1549,'cron','2014-05-04 00:10:59','iqc5cbkc0fogsbebc70klhce94'),(1550,'cron','2014-05-04 00:10:59','iqc5cbkc0fogsbebc70klhce94'),(1551,'cron','2014-05-04 00:10:59','iqc5cbkc0fogsbebc70klhce94'),(1552,'cron','2014-05-04 00:10:59','iqc5cbkc0fogsbebc70klhce94'),(1553,'cron','2014-05-04 00:10:59','iqc5cbkc0fogsbebc70klhce94'),(1554,'cron','2014-05-04 00:10:59','iqc5cbkc0fogsbebc70klhce94'),(1555,'cron','2014-05-04 00:10:59','iqc5cbkc0fogsbebc70klhce94'),(1556,'cron','2014-05-04 00:10:59','iqc5cbkc0fogsbebc70klhce94'),(1557,'cron','2014-05-04 00:11:00','iqc5cbkc0fogsbebc70klhce94'),(1558,'cron','2014-05-04 00:11:00','iqc5cbkc0fogsbebc70klhce94'),(1559,'cron','2014-05-04 00:11:00','iqc5cbkc0fogsbebc70klhce94'),(1560,'cron','2014-05-04 00:11:00','iqc5cbkc0fogsbebc70klhce94'),(1561,'cron','2014-05-04 00:11:00','iqc5cbkc0fogsbebc70klhce94'),(1562,'cron','2014-05-04 00:11:00','iqc5cbkc0fogsbebc70klhce94'),(1563,'cron','2014-05-04 00:11:01','iqc5cbkc0fogsbebc70klhce94'),(1564,'cron','2014-05-04 00:11:01','iqc5cbkc0fogsbebc70klhce94'),(1565,'cron','2014-05-04 00:11:01','iqc5cbkc0fogsbebc70klhce94'),(1566,'cron','2014-05-04 00:11:01','iqc5cbkc0fogsbebc70klhce94'),(1567,'cron','2014-05-04 00:11:01','iqc5cbkc0fogsbebc70klhce94'),(1568,'cron','2014-05-04 00:11:01','iqc5cbkc0fogsbebc70klhce94'),(1569,'cron','2014-05-04 00:11:02','iqc5cbkc0fogsbebc70klhce94'),(1570,'cron','2014-05-04 00:11:02','iqc5cbkc0fogsbebc70klhce94'),(1571,'cron','2014-05-04 00:11:02','iqc5cbkc0fogsbebc70klhce94'),(1572,'cron','2014-05-04 00:11:02','iqc5cbkc0fogsbebc70klhce94'),(1573,'cron','2014-05-04 00:11:02','iqc5cbkc0fogsbebc70klhce94'),(1574,'cron','2014-05-04 00:11:02','iqc5cbkc0fogsbebc70klhce94'),(1575,'cron','2014-05-04 00:11:03','iqc5cbkc0fogsbebc70klhce94'),(1576,'cron','2014-05-04 00:11:03','iqc5cbkc0fogsbebc70klhce94'),(1577,'cron','2014-05-04 00:11:03','iqc5cbkc0fogsbebc70klhce94'),(1578,'cron','2014-05-04 00:11:04','iqc5cbkc0fogsbebc70klhce94'),(1579,'cron','2014-05-04 00:11:04','iqc5cbkc0fogsbebc70klhce94'),(1580,'cron','2014-05-04 00:11:04','iqc5cbkc0fogsbebc70klhce94'),(1581,'cron','2014-05-04 00:11:04','iqc5cbkc0fogsbebc70klhce94'),(1582,'cron','2014-05-04 00:11:04','iqc5cbkc0fogsbebc70klhce94'),(1583,'cron','2014-05-04 00:11:04','iqc5cbkc0fogsbebc70klhce94'),(1584,'cron','2014-05-04 00:11:04','iqc5cbkc0fogsbebc70klhce94'),(1585,'cron','2014-05-04 00:11:04','iqc5cbkc0fogsbebc70klhce94'),(1586,'cron','2014-05-04 00:11:05','iqc5cbkc0fogsbebc70klhce94'),(1587,'cron','2014-05-04 00:11:05','iqc5cbkc0fogsbebc70klhce94'),(1588,'cron','2014-05-04 00:11:05','iqc5cbkc0fogsbebc70klhce94'),(1589,'cron','2014-05-04 00:11:05','iqc5cbkc0fogsbebc70klhce94'),(1590,'cron','2014-05-04 00:11:05','iqc5cbkc0fogsbebc70klhce94'),(1591,'cron','2014-05-04 00:11:05','iqc5cbkc0fogsbebc70klhce94'),(1592,'cron','2014-05-04 00:11:05','iqc5cbkc0fogsbebc70klhce94'),(1593,'cron','2014-05-04 00:11:06','iqc5cbkc0fogsbebc70klhce94'),(1594,'cron','2014-05-04 00:11:06','iqc5cbkc0fogsbebc70klhce94'),(1595,'cron','2014-05-04 00:11:06','iqc5cbkc0fogsbebc70klhce94'),(1596,'cron','2014-05-04 00:11:06','iqc5cbkc0fogsbebc70klhce94'),(1597,'cron','2014-05-04 00:11:06','iqc5cbkc0fogsbebc70klhce94'),(1598,'cron','2014-05-04 00:11:06','iqc5cbkc0fogsbebc70klhce94'),(1599,'cron','2014-05-04 00:11:07','iqc5cbkc0fogsbebc70klhce94'),(1600,'cron','2014-05-04 00:11:07','iqc5cbkc0fogsbebc70klhce94'),(1601,'cron','2014-05-04 00:11:07','iqc5cbkc0fogsbebc70klhce94'),(1602,'cron','2014-05-04 00:11:09','iqc5cbkc0fogsbebc70klhce94'),(1603,'cron','2014-05-04 00:11:09','iqc5cbkc0fogsbebc70klhce94'),(1604,'cron','2014-05-04 00:11:09','iqc5cbkc0fogsbebc70klhce94'),(1605,'cron','2014-05-04 00:11:10','iqc5cbkc0fogsbebc70klhce94'),(1606,'cron','2014-05-04 00:11:10','iqc5cbkc0fogsbebc70klhce94'),(1607,'cron','2014-05-04 00:11:10','iqc5cbkc0fogsbebc70klhce94'),(1608,'cron','2014-05-04 00:11:10','iqc5cbkc0fogsbebc70klhce94'),(1609,'cron','2014-05-04 00:11:10','iqc5cbkc0fogsbebc70klhce94'),(1610,'cron','2014-05-04 00:11:11','iqc5cbkc0fogsbebc70klhce94'),(1611,'cron','2014-05-04 00:11:11','iqc5cbkc0fogsbebc70klhce94'),(1612,'cron','2014-05-04 00:11:11','iqc5cbkc0fogsbebc70klhce94'),(1613,'cron','2014-05-04 00:11:16','iqc5cbkc0fogsbebc70klhce94'),(1614,'cron','2014-05-04 00:11:50','iqc5cbkc0fogsbebc70klhce94'),(1615,'cron','2014-05-04 00:11:53','iqc5cbkc0fogsbebc70klhce94'),(1616,'cron','2014-05-04 00:11:53','iqc5cbkc0fogsbebc70klhce94'),(1617,'cron','2014-05-04 00:11:53','iqc5cbkc0fogsbebc70klhce94'),(1618,'cron','2014-05-04 00:11:54','iqc5cbkc0fogsbebc70klhce94'),(1619,'cron','2014-05-04 00:11:54','iqc5cbkc0fogsbebc70klhce94'),(1620,'cron','2014-05-04 00:11:55','iqc5cbkc0fogsbebc70klhce94'),(1621,'cron','2014-05-04 00:11:55','iqc5cbkc0fogsbebc70klhce94'),(1622,'cron','2014-05-04 00:11:56','iqc5cbkc0fogsbebc70klhce94'),(1623,'cron','2014-05-04 00:11:56','iqc5cbkc0fogsbebc70klhce94'),(1624,'cron','2014-05-04 00:11:56','iqc5cbkc0fogsbebc70klhce94'),(1625,'cron','2014-05-04 00:11:56','iqc5cbkc0fogsbebc70klhce94'),(1626,'cron','2014-05-04 00:11:57','iqc5cbkc0fogsbebc70klhce94'),(1627,'cron','2014-05-04 00:11:57','iqc5cbkc0fogsbebc70klhce94'),(1628,'cron','2014-05-04 00:11:57','iqc5cbkc0fogsbebc70klhce94'),(1629,'cron','2014-05-04 00:11:57','iqc5cbkc0fogsbebc70klhce94'),(1630,'cron','2014-05-04 00:12:56','iqc5cbkc0fogsbebc70klhce94'),(1631,'cron','2014-05-04 00:13:01','iqc5cbkc0fogsbebc70klhce94'),(1632,'cron','2014-05-04 00:13:04','iqc5cbkc0fogsbebc70klhce94'),(1633,'cron','2014-05-04 00:13:09','iqc5cbkc0fogsbebc70klhce94'),(1634,'cron','2014-05-04 00:13:13','iqc5cbkc0fogsbebc70klhce94'),(1635,'cron','2014-05-04 00:13:17','iqc5cbkc0fogsbebc70klhce94'),(1636,'cron','2014-05-04 00:13:21','iqc5cbkc0fogsbebc70klhce94'),(1637,'cron','2014-05-04 00:13:25','iqc5cbkc0fogsbebc70klhce94'),(1638,'cron','2014-05-04 00:13:29','iqc5cbkc0fogsbebc70klhce94'),(1639,'cron','2014-05-04 00:13:33','iqc5cbkc0fogsbebc70klhce94'),(1640,'cron','2014-05-04 00:13:37','iqc5cbkc0fogsbebc70klhce94'),(1641,'cron','2014-05-04 00:13:39','iqc5cbkc0fogsbebc70klhce94'),(1642,'cron','2014-05-04 00:13:43','iqc5cbkc0fogsbebc70klhce94'),(1643,'cron','2014-05-04 00:13:47','iqc5cbkc0fogsbebc70klhce94'),(1644,'cron','2014-05-04 00:13:51','iqc5cbkc0fogsbebc70klhce94'),(1645,'cron','2014-05-04 00:13:55','iqc5cbkc0fogsbebc70klhce94'),(1646,'cron','2014-05-04 00:13:59','iqc5cbkc0fogsbebc70klhce94'),(1647,'cron','2014-05-04 00:14:03','iqc5cbkc0fogsbebc70klhce94'),(1648,'cron','2014-05-04 00:14:07','iqc5cbkc0fogsbebc70klhce94'),(1649,'cron','2014-05-04 00:14:11','iqc5cbkc0fogsbebc70klhce94');

/*Table structure for table `core_messagecatalogue` */

DROP TABLE IF EXISTS `core_messagecatalogue`;

CREATE TABLE `core_messagecatalogue` (
  `MessageID` int(5) NOT NULL AUTO_INCREMENT,
  `Message` varchar(255) DEFAULT NULL,
  `Module` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`MessageID`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=latin1;

/*Data for the table `core_messagecatalogue` */

insert  into `core_messagecatalogue`(`MessageID`,`Message`,`Module`) values (1,'Failed to login','Core'),(2,'Login Successful!','Core'),(3,'Username exists. Please choose another.','Core'),(4,'Signup Successful!','Core'),(5,'Invalid Parameters supplied.','Core'),(6,'Activated Successfully. Please login now.','Core'),(7,'Failed to activate. Please re-register.','Core'),(8,'Logged in successfully','Core'),(9,'Failed to login','Core'),(10,'Please activate your account first. Check your email.','Core'),(11,'If you entered a valid email address, you will receive instructions shortly.','Core'),(12,'Password changed successfully.','Core'),(13,'Failed to change password','Core'),(14,'Failed to send email. Please try again later.','Core'),(15,'Event Added Successfully!','Core'),(16,'Failed to add event!','Core'),(17,'Added task successfully','Core'),(18,'Failed to add task','Core'),(19,'Deleted task successfully','Core'),(20,'Failed to delete task','Core'),(21,'Added message successfully','Core'),(22,'Failed to add message','Core'),(23,'Added User to Event Successfully','Core'),(24,'Could not add user to event','Core'),(25,'User already exists','Core'),(26,'Task Status Changed Successfully','Core'),(27,'Failed to update task status','Core'),(28,'Task has dependencies. Status can\'t be changed.','Core'),(29,'Event Status Changed','Core'),(30,'Failed to change event status','Core'),(31,'Deleted Event Successfully','Core'),(32,'Event Not Deleted','Core'),(33,'Event updated successfully','Core'),(34,'No changes recorded','Core'),(35,'Task Edited Successfully','Core'),(36,'Task Not Changed','Core'),(37,'Task Name Exists. Please choose another.','Core'),(38,'You have subscribed this user. They need to confirm via email.','Core'),(39,'User Role Added Successfully.','Core'),(40,'Failed to add user role','Core'),(41,'User role not added - no user selected','Core'),(42,'Invalid Event. Please try again.','Core'),(43,'Unable to add user.','Core'),(44,'Edited account successfully','Core'),(45,'Failed to make changes to account','Core'),(46,'Password changed successfully','Core'),(47,'Password did not change','Core'),(48,'No password set','Core'),(49,'Account Deleted. Note that it can take 48 hours to delete your account. You will not be able to use the same email address until then.','Core'),(50,'Unable to delete account','Core'),(51,'Not logged in. Can\'t delete account.','Core'),(52,'Removed from organisation','Core'),(53,'Could not remove organisation','Core'),(54,'Your account has reached the maximum number of events. Please upgrade.','Core'),(55,'Your event has reached the maximum number of tasks. Please upgrade.','Core'),(56,'Added document successfully','Core'),(57,'Failed to add document','Core'),(58,'Deleted document successfully','Core'),(59,'Unable to delete document','Core'),(60,'Feedback submitted! Thanks for that!','Core'),(61,'Failed to save feedback.','Core'),(62,'Thanks for submitting!','Core'),(63,'Failed to submit bug.','Core'),(64,'No user provided','Core'),(65,'Could not execute user balance check','Core'),(66,'Please login first','Core'),(67,'You need to topup','Core'),(68,'Your invitations have been sent.','Core'),(69,'One or more of your invitations did not send','Core'),(70,'You\'ve been logged in. Please remember to change your password.','Core'),(71,'Failed to recognise password recovery code','Core'),(72,'Changed Profile Successfully','Core'),(73,'Failed to change profile','Core'),(74,'Failed to change profile - no data','Core'),(75,'Trivia game addedd successfully!','Trivia'),(76,'Unable to add trivia. Please try again.','Trivia'),(77,'Question added successfully!','Trivia'),(78,'Question failed to add!','Trivia'),(79,'Answer added successfully!','Trivia'),(80,'Answer failed to add!','Trivia'),(81,'Answer saved successfully!','Trivia'),(82,'Failed to save answer!','Trivia'),(83,'You\'ve already answered that question!','Trivia'),(84,'Question status changed!','Trivia'),(85,'Question status change failed!','Trivia'),(86,'Question edit failed','Trivia'),(87,'Question edit success','Trivia'),(88,'Trivia delete failed','Trivia'),(89,'Trivia deleted successfully!','Trivia'),(90,'Trivia question delete failed','Trivia'),(91,'Trivia question deleted successfully!','Trivia'),(92,'Trivia question answers delete failed','Trivia'),(93,'Trivia question answers deleted successfully!','Trivia');

/*Table structure for table `core_mq_detail` */

DROP TABLE IF EXISTS `core_mq_detail`;

CREATE TABLE `core_mq_detail` (
  `DetailID` int(5) NOT NULL AUTO_INCREMENT,
  `MQID` int(5) DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Value` text,
  PRIMARY KEY (`DetailID`),
  KEY `FK_mq_detail` (`MQID`),
  CONSTRAINT `FK_mq_detail` FOREIGN KEY (`MQID`) REFERENCES `core_mq_master` (`MQID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=216 DEFAULT CHARSET=utf8;

/*Data for the table `core_mq_detail` */

insert  into `core_mq_detail`(`DetailID`,`MQID`,`Name`,`Value`) values (1,1,'from','general@BetterLotteryNumbers.com'),(2,1,'subject','[BetterLotteryNumbers] Registration'),(3,1,'message','Welcome 12323aaa222aa3321,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://192.168.2.12/quiz/activate.php?content=login&code=a6c71e7d62ab044eaada8e8cb7aedf5d \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(4,2,'from','general@BetterLotteryNumbers.com'),(5,2,'to','12323aaa222aa33211@localhost.com'),(6,2,'subject','[BetterLotteryNumbers] Registration'),(7,2,'message','Welcome 12323aaa222aa33211,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://192.168.2.12/quiz/activate.php?content=login&code=05458e470b06c07178024a4516738166 \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(8,3,'from','general@BetterLotteryNumbers.com'),(9,3,'to','12321@localhost.com'),(10,3,'subject','[BetterLotteryNumbers] Registration'),(11,3,'message','Welcome 12321,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://192.168.2.12/quiz/activate.php?content=login&code=6e0c7116368966b47b10d8c0bcf5277f \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(12,4,'from','general@BetterLotteryNumbers.com'),(13,4,'to','123321@localhost.com'),(14,4,'subject','[BetterLotteryNumbers] Registration'),(15,4,'message','Welcome 123321,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://192.168.2.12/quiz/activate.php?content=login&code=c3b1d13bcf2ef736d9acf701aea214b7 \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(16,5,'from','general@BetterLotteryNumbers.com'),(17,5,'to','q@localhost.com'),(18,5,'subject','[BetterLotteryNumbers] Registration'),(19,5,'message','Welcome q,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://192.168.2.12/quiz/activate.php?content=login&code=94c864da44eb4bfbf1cdfe54dfa0e388 \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(20,6,'from','general@BetterLotteryNumbers.com'),(21,6,'to','1@localhost.com'),(22,6,'subject','[BetterLotteryNumbers] Registration'),(23,6,'message','Welcome 1,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://192.168.2.12/quiz/activate.php?content=login&code=0d7aefb0c7ed47676ed6251797e6a74d \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(24,7,'from','general@BetterLotteryNumbers.com'),(25,7,'to','2@localhost.com'),(26,7,'subject','[BetterLotteryNumbers] Registration'),(27,7,'message','Welcome 2,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://192.168.2.12/quiz/activate.php?content=login&code=0b359910a72466273b3a9366919adf05 \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(28,8,'from','general@BetterLotteryNumbers.com'),(29,8,'to','joe@localhost.com'),(30,8,'subject','[BetterLotteryNumbers] Registration'),(31,8,'message','Welcome joe,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://192.168.2.12/quiz/activate.php?content=login&code=03b5a967ee8bb2442ad382dae2c118df \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(32,9,'from','general@BetterLotteryNumbers.com'),(33,9,'to','joe@localhost.com'),(34,9,'subject','[BetterLotteryNumbers] Registration'),(35,9,'message','Welcome joe,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://192.168.2.12/quiz/activate.php?content=login&code=ee66c3262a042e0395535e7e090b60ba \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(36,10,'from','general@BetterLotteryNumbers.com'),(37,10,'to','mike@localhost.com'),(38,10,'subject','[BetterLotteryNumbers] Registration'),(39,10,'message','Welcome mike,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://192.168.2.12/quiz/activate.php?content=login&code=157416144443ac38524005e628666a8c \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(40,11,'from','general@BetterLotteryNumbers.com'),(41,11,'to','joe@localhost.com'),(42,11,'subject','[BetterLotteryNumbers] Registration'),(43,11,'message','Welcome joe,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://192.168.2.12/quiz/activate.php?content=login&code=5c61599e47da8185b44f774376088225 \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(44,12,'from','general@BetterLotteryNumbers.com'),(45,12,'to','mike@localhost.com'),(46,12,'subject','[BetterLotteryNumbers] Registration'),(47,12,'message','Welcome mike,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://192.168.2.12/quiz/activate.php?content=login&code=56b3ae78e2d69a60ca9a557eb8ea9790 \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(48,13,'from','general@BetterLotteryNumbers.com'),(49,13,'to','123@localhost.com'),(50,13,'subject','[BetterLotteryNumbers] Registration'),(51,13,'message','Welcome 123,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://192.168.2.12/quiz/activate.php?content=login&code=bfbb63c45009ab104249ad23f3fba026 \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(52,14,'from','general@BetterLotteryNumbers.com'),(53,14,'to','222@localhost.com'),(54,14,'subject','[BetterLotteryNumbers] Registration'),(55,14,'message','Welcome 222,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://192.168.2.12/quiz/activate.php?content=login&code=c79b4b605b26e191c9f6bf83db85041e \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(56,15,'from','general@BetterLotteryNumbers.com'),(57,15,'to','4344@localhost.com'),(58,15,'subject','[BetterLotteryNumbers] Registration'),(59,15,'message','Welcome 4344,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://192.168.2.12/quiz/activate.php?content=login&code=ba8d16fb4dfbdd5d03c83f3eec29c057 \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(60,16,'from','general@BetterLotteryNumbers.com'),(61,16,'to','333@localhost.com'),(62,17,'from','general@BetterLotteryNumbers.com'),(63,16,'subject','[BetterLotteryNumbers] Registration'),(64,17,'to','333@localhost.com'),(65,17,'subject','[BetterLotteryNumbers] Registration'),(66,16,'message','Welcome 333,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://192.168.2.12/quiz/activate.php?content=login&code=55078d878ce961fc52167590a7df31b5 \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(67,17,'message','Welcome 333,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://192.168.2.12/quiz/activate.php?content=login&code=975413a95837fbace0552e78cb6de1e0 \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(68,18,'from','general@BetterLotteryNumbers.com'),(69,18,'to','44555@localhost.com'),(70,18,'subject','[BetterLotteryNumbers] Registration'),(71,18,'message','Welcome 44555,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://192.168.2.12/quiz/activate.php?content=login&code=476ff85eaf0d9938366fa40246dc83ed \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(72,19,'from','general@BetterLotteryNumbers.com'),(73,19,'to','5555@localhost.com'),(74,19,'subject','[BetterLotteryNumbers] Registration'),(75,19,'message','Welcome 5555,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://192.168.2.12/quiz/activate.php?content=login&code=437f0eda90ea494e5d582a9f188d4564 \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(76,20,'from','general@BetterLotteryNumbers.com'),(77,20,'to','1@localhost.com'),(78,20,'subject','[BetterLotteryNumbers] Registration'),(79,21,'from','general@BetterLotteryNumbers.com'),(80,20,'message','Welcome 1,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://192.168.2.12/quiz/activate.php?content=login&code=0f67dbdd519a3dd2f816c5ea0b155b1d \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(81,21,'to','1@localhost.com'),(82,21,'subject','[BetterLotteryNumbers] Registration'),(83,21,'message','Welcome 1,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://192.168.2.12/quiz/activate.php?content=login&code=bef871e5800bc1852b44d7b33c4cda86 \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(84,22,'from','general@BetterLotteryNumbers.com'),(85,22,'to','123321@localhost.com'),(86,22,'subject','[BetterLotteryNumbers] Registration'),(87,22,'message','Welcome 123321,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://192.168.2.12/quiz/activate.php?content=login&code=22c5539de243fd6c6c643e9a543e4490 \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(88,23,'from','general@BetterLotteryNumbers.com'),(89,23,'to','2@localhost.com'),(90,23,'subject','[BetterLotteryNumbers] Registration'),(91,23,'message','Welcome 2,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://192.168.2.12/quiz/activate.php?content=login&code=e4918c8e86da66bafb667e892d5ce3ae \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(92,24,'from','general@BetterLotteryNumbers.com'),(93,24,'to','3@localhost.com'),(94,24,'subject','[BetterLotteryNumbers] Registration'),(95,24,'message','Welcome 3,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://192.168.2.12/quiz/activate.php?content=login&code=6a323e12009ad579f7e5ec895ef8644d \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(96,25,'from','general@BetterLotteryNumbers.com'),(97,25,'to','4@localhost.com'),(98,25,'subject','[BetterLotteryNumbers] Registration'),(99,25,'message','Welcome 4,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://192.168.2.12/quiz/activate.php?content=login&code=39ff6d68e58cf3419f09a85a96f2218a \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(100,26,'from','general@BetterLotteryNumbers.com'),(101,26,'to','qq@localhost.com'),(102,26,'subject','[BetterLotteryNumbers] Registration'),(103,26,'message','Welcome qq,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://localhost/quiz/activate.php?content=login&code=08d2fed5c69553cfab39324c783512d2 \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(104,27,'from','general@BetterLotteryNumbers.com'),(105,27,'to','qqq@localhost.com'),(106,27,'subject','[BetterLotteryNumbers] Registration'),(107,27,'message','Welcome qqq,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://localhost/quiz/activate.php?content=login&code=a5b7722b495e9686b0054718a88eaffc \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(108,28,'from','general@BetterLotteryNumbers.com'),(109,28,'to','qqqq@localhost.com'),(110,28,'subject','[BetterLotteryNumbers] Registration'),(111,28,'message','Welcome qqqq,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://localhost/quiz/activate.php?content=login&code=0751078f4b45c39ad110ea39f62fe700 \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(112,29,'from','general@BetterLotteryNumbers.com'),(113,29,'to','ww@localhost.com'),(114,29,'subject','[BetterLotteryNumbers] Registration'),(115,29,'message','Welcome ww,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://localhost/quiz/activate.php?content=login&code=e1a0fb6c0cfe61ab9dad78746d7c7416 \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(116,30,'from','general@BetterLotteryNumbers.com'),(117,30,'to','www@localhost.com'),(118,30,'subject','[BetterLotteryNumbers] Registration'),(119,30,'message','Welcome www,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://localhost/quiz/activate.php?content=login&code=bdffc4e6fcc23a42019624eeedc6cc10 \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(120,31,'from','general@BetterLotteryNumbers.com'),(121,31,'to','rr@localhost.com'),(122,31,'subject','[BetterLotteryNumbers] Registration'),(123,31,'message','Welcome rr,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://localhost/quiz/activate.php?content=login&code=9115acf1d1acdbce1344058e5f684ec1 \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(124,32,'from','general@BetterLotteryNumbers.com'),(125,32,'to','aa@localhost.com'),(126,32,'subject','[BetterLotteryNumbers] Registration'),(127,32,'message','Welcome aa,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://localhost/quiz/activate.php?content=login&code=4b9440f1834d6492b89fae6e42403247 \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(128,33,'from','general@BetterLotteryNumbers.com'),(129,33,'to','aaa@localhost.com'),(130,33,'subject','[BetterLotteryNumbers] Registration'),(131,33,'message','Welcome aaa,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://localhost/quiz/activate.php?content=login&code=83aaf9888a42650c9bf10afbd7f07eba \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(132,34,'from','general@BetterLotteryNumbers.com'),(133,34,'to','ddd@localhost.com'),(134,34,'subject','[BetterLotteryNumbers] Registration'),(135,34,'message','Welcome ddd,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://localhost/quiz/activate.php?content=login&code=5005943d75dc3ab71a3493cb6b84ec2c \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(136,35,'from','general@BetterLotteryNumbers.com'),(137,35,'to','ccc@localhost.com'),(138,35,'subject','[BetterLotteryNumbers] Registration'),(139,35,'message','Welcome ccc,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://localhost/quiz/activate.php?content=login&code=231e22bf1d5ba631f3662a5edd0b0133 \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(140,36,'from','general@BetterLotteryNumbers.com'),(141,36,'to','ccce@localhost.com'),(142,36,'subject','[BetterLotteryNumbers] Registration'),(143,36,'message','Welcome ccce,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://localhost/quiz/activate.php?content=login&code=748843bf4cd6eedae147b049dee3090f \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(144,37,'from','general@BetterLotteryNumbers.com'),(145,37,'to','terence@localhost.com'),(146,37,'subject','[BetterLotteryNumbers] Registration'),(147,37,'message','Welcome terence,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://localhost/quiz/activate.php?content=login&code=b9b5da531a848a2b76815c55d3b92053 \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(148,38,'from','general@BetterLotteryNumbers.com'),(149,38,'to','terence1@localhost.com'),(150,38,'subject','[BetterLotteryNumbers] Registration'),(151,38,'message','Welcome terence1,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://localhost/quiz/activate.php?content=login&code=f6d096e0e4e9e99cbe5941f5b70e5340 \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(152,39,'from','general@BetterLotteryNumbers.com'),(153,39,'to','terence11@localhost.com'),(154,39,'subject','[BetterLotteryNumbers] Registration'),(155,39,'message','Welcome terence11,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://localhost/quiz/activate.php?content=login&code=166809be1e37ba5de43ea4a4fe0379ea \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(156,40,'from','general@BetterLotteryNumbers.com'),(157,40,'to','terence2@localhost.com'),(158,40,'subject','[BetterLotteryNumbers] Registration'),(159,40,'message','Welcome terence2,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://localhost/quiz/activate.php?content=login&code=350b9ec48325a0dddffc4b4a87fe7489 \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(160,41,'from','general@BetterLotteryNumbers.com'),(161,41,'to','terence@localhost.com'),(162,41,'subject','[BetterLotteryNumbers] Registration'),(163,41,'message','Welcome terence,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://localhost/quiz/activate.php?content=login&code=296da974d6eaf297974699153bef877a \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(164,42,'from','general@BetterLotteryNumbers.com'),(165,42,'to','t@localhost.com'),(166,42,'subject','[BetterLotteryNumbers] Registration'),(167,42,'message','Welcome t,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://192.168.2.4/quiz/activate.php?content=login&code=6f2c9c53910cf0ba033760af11447d26 \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(168,43,'from','general@BetterLotteryNumbers.com'),(169,43,'to','Cait@localhost.com'),(170,43,'subject','[BetterLotteryNumbers] Registration'),(171,43,'message','Welcome Cait,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://192.168.2.4/quiz/activate.php?content=login&code=57d1bbd71cf9fd678c0237bcfbd1a904 \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(172,44,'from','general@BetterLotteryNumbers.com'),(173,44,'to','Cait1@localhost.com'),(174,44,'subject','[BetterLotteryNumbers] Registration'),(175,44,'message','Welcome Cait1,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://192.168.2.4/quiz/activate.php?content=login&code=e0d473c0bc2935b46e704f73e2c58e59 \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(176,45,'from','general@BetterLotteryNumbers.com'),(177,45,'to','Caitlin@localhost.com'),(178,45,'subject','[BetterLotteryNumbers] Registration'),(179,45,'message','Welcome Caitlin,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://192.168.2.4/quiz/activate.php?content=login&code=6fae5ad37d4a1c9a05d7f4fc0699b373 \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(180,46,'from','general@BetterLotteryNumbers.com'),(181,46,'to','caitlin@localhost.com'),(182,46,'subject','[BetterLotteryNumbers] Registration'),(183,46,'message','Welcome caitlin,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://localhost/quiz/activate.php?content=login&code=306b20d86698b6e673e1f9666c940f66 \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(184,47,'from','general@BetterLotteryNumbers.com'),(185,47,'to','hayley@localhost.com'),(186,47,'subject','[BetterLotteryNumbers] Registration'),(187,47,'message','Welcome hayley,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://localhost/quiz/activate.php?content=login&code=5d08429c1a2bdc62d9000c85ff7825fa \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(188,48,'from','general@BetterLotteryNumbers.com'),(189,48,'to','cameron@localhost.com'),(190,48,'subject','[BetterLotteryNumbers] Registration'),(191,48,'message','Welcome cameron,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://localhost/quiz/activate.php?content=login&code=2091fddf17dcc3a5e5a2486efd4dab38 \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(192,49,'from','general@BetterLotteryNumbers.com'),(193,49,'to','iPad@localhost.com'),(194,49,'subject','[BetterLotteryNumbers] Registration'),(195,49,'message','Welcome iPad,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://192.168.2.4/quiz/activate.php?content=login&code=058cd18cf72c8f0241d14058e6ec42b7 \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(196,50,'from','general@BetterLotteryNumbers.com'),(197,50,'to','iphone5@localhost.com'),(198,50,'subject','[BetterLotteryNumbers] Registration'),(199,50,'message','Welcome iphone5,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://192.168.2.4/quiz/activate.php?content=login&code=f6f23bb318abfdeab20399402217a56b \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(200,51,'from','general@BetterLotteryNumbers.com'),(201,51,'to','c@localhost.com'),(202,51,'subject','[BetterLotteryNumbers] Registration'),(203,51,'message','Welcome c,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://192.168.2.4/quiz/activate.php?content=login&code=02bc413fa86b9342fcf98cb70d349ba4 \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(204,52,'from','general@BetterLotteryNumbers.com'),(205,52,'to','Cc@localhost.com'),(206,52,'subject','[BetterLotteryNumbers] Registration'),(207,52,'message','Welcome Cc,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://192.168.2.4/quiz/activate.php?content=login&code=80f0bda4d99f80c07337b062ab6f681c \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(208,53,'from','general@BetterLotteryNumbers.com'),(209,53,'to','a@localhost.com'),(210,53,'subject','[BetterLotteryNumbers] Registration'),(211,53,'message','Welcome a,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://localhost/quiz/activate.php?content=login&code=7536ceaef434d53e593cbc0aa1aee420 \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(212,54,'from','general@BetterLotteryNumbers.com'),(213,54,'to','b@localhost.com'),(214,54,'subject','[BetterLotteryNumbers] Registration'),(215,54,'message','Welcome b,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://localhost/quiz/activate.php?content=login&code=dc06c9c243973bdf6d5a2e257d2b78e1 \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com');

/*Table structure for table `core_mq_log` */

DROP TABLE IF EXISTS `core_mq_log`;

CREATE TABLE `core_mq_log` (
  `LogID` int(5) NOT NULL AUTO_INCREMENT,
  `MQID` int(5) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `DateTimeLog` datetime DEFAULT NULL,
  PRIMARY KEY (`LogID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `core_mq_log` */

/*Table structure for table `core_mq_master` */

DROP TABLE IF EXISTS `core_mq_master`;

CREATE TABLE `core_mq_master` (
  `MQID` int(5) NOT NULL AUTO_INCREMENT,
  `Type` varchar(15) DEFAULT NULL,
  `Status` varchar(10) DEFAULT 'new',
  `DateTimeInsert` datetime DEFAULT NULL,
  `DateTimeStart` datetime DEFAULT NULL,
  `DateTimeEnd` datetime DEFAULT NULL,
  PRIMARY KEY (`MQID`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;

/*Data for the table `core_mq_master` */

insert  into `core_mq_master`(`MQID`,`Type`,`Status`,`DateTimeInsert`,`DateTimeStart`,`DateTimeEnd`) values (1,'email','new','2014-04-23 00:03:33',NULL,NULL),(2,'email','new','2014-04-23 00:04:09',NULL,NULL),(3,'email','new','2014-04-23 00:04:35',NULL,NULL),(4,'email','new','2014-04-23 00:06:52',NULL,NULL),(5,'email','new','2014-04-23 00:07:28',NULL,NULL),(6,'email','new','2014-04-23 00:09:03',NULL,NULL),(7,'email','new','2014-04-23 00:09:07',NULL,NULL),(8,'email','new','2014-04-23 00:09:23',NULL,NULL),(9,'email','new','2014-04-23 00:09:50',NULL,NULL),(10,'email','new','2014-04-23 00:09:55',NULL,NULL),(11,'email','new','2014-04-23 00:10:25',NULL,NULL),(12,'email','new','2014-04-23 00:10:29',NULL,NULL),(13,'email','new','2014-04-23 00:11:57',NULL,NULL),(14,'email','new','2014-04-23 00:12:01',NULL,NULL),(15,'email','new','2014-04-23 00:12:04',NULL,NULL),(16,'email','new','2014-04-23 00:12:07',NULL,NULL),(17,'email','new','2014-04-23 00:12:08',NULL,NULL),(18,'email','new','2014-04-23 00:12:11',NULL,NULL),(19,'email','new','2014-04-23 00:12:15',NULL,NULL),(20,'email','new','2014-04-23 00:12:40',NULL,NULL),(21,'email','new','2014-04-23 00:12:40',NULL,NULL),(22,'email','new','2014-04-23 00:12:44',NULL,NULL),(23,'email','new','2014-04-23 00:13:40',NULL,NULL),(24,'email','new','2014-04-23 00:13:42',NULL,NULL),(25,'email','new','2014-04-23 00:13:44',NULL,NULL),(26,'email','new','2014-04-23 18:00:45',NULL,NULL),(27,'email','new','2014-04-23 18:04:57',NULL,NULL),(28,'email','new','2014-04-23 18:05:26',NULL,NULL),(29,'email','new','2014-04-23 18:05:53',NULL,NULL),(30,'email','new','2014-04-23 18:06:35',NULL,NULL),(31,'email','new','2014-04-23 18:07:50',NULL,NULL),(32,'email','new','2014-04-23 18:09:28',NULL,NULL),(33,'email','new','2014-04-23 18:12:40',NULL,NULL),(34,'email','new','2014-04-23 18:13:19',NULL,NULL),(35,'email','new','2014-04-23 18:13:55',NULL,NULL),(36,'email','new','2014-04-23 18:14:50',NULL,NULL),(37,'email','new','2014-04-23 18:24:27',NULL,NULL),(38,'email','new','2014-04-23 18:25:57',NULL,NULL),(39,'email','new','2014-04-23 18:26:49',NULL,NULL),(40,'email','new','2014-04-23 18:27:30',NULL,NULL),(41,'email','new','2014-04-25 00:32:13',NULL,NULL),(42,'email','new','2014-04-25 22:22:54',NULL,NULL),(43,'email','new','2014-04-26 14:52:42',NULL,NULL),(44,'email','new','2014-04-26 14:53:36',NULL,NULL),(45,'email','new','2014-04-26 21:37:58',NULL,NULL),(46,'email','new','2014-05-04 01:02:43',NULL,NULL),(47,'email','new','2014-05-04 01:28:05',NULL,NULL),(48,'email','new','2014-05-04 01:49:24',NULL,NULL),(49,'email','new','2014-05-04 12:00:45',NULL,NULL),(50,'email','new','2014-05-04 12:02:14',NULL,NULL),(51,'email','new','2014-05-04 12:07:42',NULL,NULL),(52,'email','new','2014-05-04 12:09:00',NULL,NULL),(53,'email','new','2015-06-04 23:32:16',NULL,NULL),(54,'email','new','2015-06-04 23:32:20',NULL,NULL);

/*Table structure for table `core_rolemaster` */

DROP TABLE IF EXISTS `core_rolemaster`;

CREATE TABLE `core_rolemaster` (
  `RoleID` int(5) NOT NULL AUTO_INCREMENT,
  `RoleName` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`RoleID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `core_rolemaster` */

insert  into `core_rolemaster`(`RoleID`,`RoleName`) values (1,'Admin'),(2,'User'),(3,'Guest');

/*Table structure for table `core_rolepriv` */

DROP TABLE IF EXISTS `core_rolepriv`;

CREATE TABLE `core_rolepriv` (
  `RoleID` int(5) NOT NULL,
  `RolePriv` varchar(25) NOT NULL,
  PRIMARY KEY (`RoleID`,`RolePriv`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `core_rolepriv` */

insert  into `core_rolepriv`(`RoleID`,`RolePriv`) values (2,'Add Organisation'),(2,'Add Service'),(2,'Add Service Category'),(2,'Add Service Code'),(2,'Add Service Status'),(2,'Add User'),(2,'Add User To Org'),(2,'Browse Codes'),(2,'Browse Services'),(2,'Delete Service Category'),(2,'Delete Service Master'),(2,'Edit Service Category'),(2,'Edit Service Master');

/*Table structure for table `core_sessions` */

DROP TABLE IF EXISTS `core_sessions`;

CREATE TABLE `core_sessions` (
  `SessionID` varchar(255) NOT NULL,
  `SessionData` text,
  `SessionTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`SessionID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `core_sessions` */

insert  into `core_sessions`(`SessionID`,`SessionData`,`SessionTime`) values ('1t2o5bfsqcl6602sneusi76oh7','userid|s:2:\"63\";username|s:4:\"iPad\";triviaid|s:1:\"3\";','2014-05-04 13:41:35'),('2j9m0nlcs9cvfec1hje0uoc862','','2014-05-04 12:34:49'),('6c5tao1ad2v0i6egkk2i5bfh34','userid|s:2:\"65\";username|s:1:\"c\";triviaid|s:1:\"7\";','2015-06-04 23:50:35'),('6nrn64ah66nv1ljld40u4dtfv2','userid|s:2:\"55\";username|s:7:\"terence\";trivianame|s:10:\"11X Tables\";questionid|s:2:\"19\";question|s:12:\"What is 6X3?\";questiontype|s:2:\"sa\";answerid|s:2:\"62\";triviaid|s:1:\"6\";','2014-05-04 13:47:19'),('79n4dhl4o4mnbndd6t81rpicc4','','2014-05-04 12:34:49'),('cqklugkf1nsqvnitca6ln8gfc7','userid|s:2:\"55\";username|s:7:\"terence\";trivianame|s:8:\"StAART 1\";questionid|s:2:\"23\";triviaid|s:1:\"7\";question|s:22:\"single answer quesiton\";questiontype|s:2:\"sa\";answerid|s:2:\"81\";edit_question|b:1;','2015-06-07 00:20:54'),('ghhnkk83p7j1sk465ojtv39rb5','triviaid|N;','2014-05-04 12:34:49'),('iqc5cbkc0fogsbebc70klhce94','userid|s:2:\"62\";username|s:7:\"cameron\";triviaid|s:1:\"1\";','2014-05-04 02:01:05'),('j8ldu2r3fblitjrsotkpkafrd7','userid|s:2:\"66\";username|s:2:\"Cc\";triviaid|s:1:\"5\";','2014-05-04 13:03:58'),('mcjq92vtrrkn94maecn65ov936','userid|s:2:\"64\";username|s:7:\"iphone5\";triviaid|s:1:\"1\";','2014-05-04 13:08:40'),('sf4v6gkngvfv6qts27leaj5mg5','','2014-05-04 12:34:50'),('vhjomkbcgjb83cqnjj0oveen31','userid|s:2:\"55\";username|s:7:\"terence\";triviaid|s:1:\"7\";trivianame|s:8:\"StAART 1\";questionid|s:2:\"21\";question|s:10:\"Bill Gates\";questiontype|s:2:\"mc\";answerid|s:2:\"74\";','2015-06-04 23:48:25'),('vqiodjno2hs53e3vamk6dpcp92','','2014-05-10 17:18:07');

/*Table structure for table `core_usermaster` */

DROP TABLE IF EXISTS `core_usermaster`;

CREATE TABLE `core_usermaster` (
  `UserID` int(5) NOT NULL AUTO_INCREMENT,
  `UserLogin` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `UserPassword` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `FullName` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `EmailAddress` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `Activated` char(1) CHARACTER SET utf8 DEFAULT 'y',
  `ActivationCode` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `PasswordResetCode` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `ContactDetails` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `AccountStatus` varchar(10) CHARACTER SET utf8 DEFAULT 'Active',
  `DateTimeCreated` datetime DEFAULT NULL,
  `Timezone` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `APIAuthCode` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `LastLogin` datetime DEFAULT NULL,
  `LoginCount` int(5) DEFAULT '0',
  PRIMARY KEY (`UserID`),
  UNIQUE KEY `NewIndex1` (`UserLogin`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=latin2;

/*Data for the table `core_usermaster` */

insert  into `core_usermaster`(`UserID`,`UserLogin`,`UserPassword`,`FullName`,`EmailAddress`,`Activated`,`ActivationCode`,`PasswordResetCode`,`ContactDetails`,`AccountStatus`,`DateTimeCreated`,`Timezone`,`APIAuthCode`,`LastLogin`,`LoginCount`) values (1,'admin','21232f297a57a5a743894a0e4a801fc3','admin',NULL,'y',NULL,NULL,NULL,'Active',NULL,NULL,NULL,NULL,0),(55,'terence@localhost.com','ff5390bde5a4cf0aa2006cf2198efd29','terence',NULL,'y','239a5cfdffa0db889b2928792dea4665',NULL,NULL,'Active','2014-04-25 00:32:13',NULL,'cd27e33756691adc733f7effa8a2e719',NULL,0),(56,'t@localhost.com','e358efa489f58062f10dd7316b65649e','t',NULL,'y','955091901955f6d03809d1f25a7a04ad',NULL,NULL,'Active','2014-04-25 22:22:53',NULL,'ee93a11ca9b694cdedfea948626d5256',NULL,0),(60,'caitlin@localhost.com','2698b9129df8bff255b13562392bf895','caitlin',NULL,'y','55144beeeb6354fda94a216cd84d4306',NULL,NULL,'Active','2014-05-04 01:02:43',NULL,'955dcbf8527f2ecd19f511b8f857751f',NULL,0),(61,'hayley@localhost.com','d6d3b08e4affed587dfbec86112bb3a5','hayley',NULL,'y','ab86e18f117ad9ce5841a868b48b9a8e',NULL,NULL,'Active','2014-05-04 01:28:05',NULL,'ff0350eabaf7d117cb1b3e4d8c9fa279',NULL,0),(62,'cameron@localhost.com','bb36feaac46d7aaab418138b578fd7e0','cameron',NULL,'y','9870635b6719090c50c1c05692c84d2b',NULL,NULL,'Active','2014-05-04 01:49:24',NULL,'1c562a71f01549e2e0d53995e4ade0cb',NULL,0),(63,'iPad@localhost.com','09401fded433c34709fd1f1872728162','iPad',NULL,'y','ee483e4174f1cdcb0802bcc7f685b4a6',NULL,NULL,'Active','2014-05-04 12:00:45',NULL,'cd3a8114f69aed34740494afed3da944',NULL,0),(64,'iphone5@localhost.com','57f45a8e2d3d9581b2b081df14458326','iphone5',NULL,'y','7346bff7e06ab607383bf6b1b19cd644',NULL,NULL,'Active','2014-05-04 12:02:14',NULL,'b16112a4194a904434d3a47bebbde3f2',NULL,0),(65,'c@localhost.com','4a8a08f09d37b73795649038408b5f33','c',NULL,'y','fad6ebf5b8b7d202e94b9dde74fcf974',NULL,NULL,'Active','2014-05-04 12:07:42',NULL,'43318360a42ce033fdd8e37c876565f6',NULL,0),(66,'Cc@localhost.com','e0323a9039add2978bf5b49550572c7c','Cc',NULL,'y','c7f566894c6db28273767e5618599241',NULL,NULL,'Active','2014-05-04 12:09:00',NULL,'94b630043b135b2eff6d434bde181b87',NULL,0),(67,'a@localhost.com','0cc175b9c0f1b6a831c399e269772661','a',NULL,'y','aaf88e8fb06c9acaf606e1f013e06d50',NULL,NULL,'Active','2015-06-04 23:32:16',NULL,'0ad33af2ed07102e566770916941c560',NULL,0),(68,'b@localhost.com','92eb5ffee6ae2fec3ad71c777531578f','b',NULL,'y','b8fd10f96a4f6b42ec6bc5bd952111f4',NULL,NULL,'Active','2015-06-04 23:32:20',NULL,'33ae82359e24e0e4129d3476009d6551',NULL,0);

/*Table structure for table `core_userroles` */

DROP TABLE IF EXISTS `core_userroles`;

CREATE TABLE `core_userroles` (
  `UserID` int(5) NOT NULL,
  `RoleID` int(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`UserID`,`RoleID`),
  KEY `FK_userroles1` (`RoleID`),
  CONSTRAINT `FK_core_userroles` FOREIGN KEY (`UserID`) REFERENCES `core_usermaster` (`UserID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `core_userroles` */

insert  into `core_userroles`(`UserID`,`RoleID`) values (55,2),(56,2),(60,2),(61,2),(62,2),(63,2),(64,2),(65,2),(66,2),(67,2),(68,2);

/*Table structure for table `trivia_master` */

DROP TABLE IF EXISTS `trivia_master`;

CREATE TABLE `trivia_master` (
  `TriviaID` int(5) NOT NULL AUTO_INCREMENT,
  `TriviaName` varchar(255) DEFAULT NULL,
  `UserLimit` int(5) DEFAULT NULL,
  `PublicPrivate` varchar(10) DEFAULT NULL,
  `DateTimeCreated` datetime DEFAULT NULL,
  `Status` char(10) DEFAULT 'open',
  `UserIDCreated` int(5) DEFAULT NULL,
  PRIMARY KEY (`TriviaID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `trivia_master` */

insert  into `trivia_master`(`TriviaID`,`TriviaName`,`UserLimit`,`PublicPrivate`,`DateTimeCreated`,`Status`,`UserIDCreated`) values (1,'Music from the 90&#039;s',0,'public','2014-04-26 23:17:25','open',55),(2,'Simple Math',0,'public','2014-05-04 12:04:13','open',55),(3,'7X tables',0,'public','2014-05-04 12:13:08','open',55),(4,'9X Tables',0,'public','2014-05-04 12:21:43','open',55),(5,'6X Tables',0,'public','2014-05-04 13:00:17','open',55),(6,'11X Tables',1,'public','2014-05-04 13:03:52','open',55),(7,'StAART 1',0,'public','2015-06-04 23:33:23','deleted',55);

/*Table structure for table `trivia_membermaster` */

DROP TABLE IF EXISTS `trivia_membermaster`;

CREATE TABLE `trivia_membermaster` (
  `TriviaID` int(5) DEFAULT NULL,
  `MemberID` int(5) DEFAULT NULL,
  `DateTimeJoined` datetime DEFAULT NULL,
  `DateTimeLastSeen` datetime DEFAULT NULL,
  `Role` varchar(25) DEFAULT 'player'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `trivia_membermaster` */

/*Table structure for table `trivia_question_answers` */

DROP TABLE IF EXISTS `trivia_question_answers`;

CREATE TABLE `trivia_question_answers` (
  `AnswerID` int(5) NOT NULL AUTO_INCREMENT,
  `QuestionID` int(5) DEFAULT NULL,
  `Answer` varchar(100) DEFAULT NULL,
  `Ordering` tinyint(1) DEFAULT NULL,
  `CorrectAnswer` char(1) DEFAULT 'n',
  PRIMARY KEY (`AnswerID`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=latin1;

/*Data for the table `trivia_question_answers` */

insert  into `trivia_question_answers`(`AnswerID`,`QuestionID`,`Answer`,`Ordering`,`CorrectAnswer`) values (1,1,'Michael Jackson',1,'y'),(2,1,'Michael',2,'y'),(3,1,'Jackson',3,'y'),(4,2,'Phil Collins',1,'y'),(5,2,'',2,'y'),(6,2,'',3,'y'),(7,3,'1994',1,'n'),(8,3,'1995',2,'y'),(9,3,'1996',3,'n'),(10,3,'1997',4,'n'),(11,4,'1987',1,'n'),(12,4,'1997',2,'y'),(13,4,'2001',3,'n'),(14,4,'2004',4,'n'),(15,5,'Capella',1,'y'),(16,5,'capela',2,'y'),(17,5,'cappela',3,'y'),(18,6,'Vanilla Ice',1,'n'),(19,6,'Ice Ice Baby',2,'n'),(20,6,'Real McCoy',3,'n'),(21,6,'Ice Mc',4,'y'),(22,7,'Bread',1,'n'),(23,7,'Spoon',2,'y'),(24,7,'Milk',3,'n'),(25,7,'Butter',4,'n'),(26,8,'14',1,'y'),(27,8,'',2,'y'),(28,8,'',3,'y'),(29,9,'13',1,'n'),(30,9,'36',2,'y'),(31,9,'38',3,'n'),(32,9,'32',4,'n'),(33,10,'60',1,'y'),(34,10,'',2,'y'),(35,10,'',3,'y'),(36,11,'162',1,'y'),(37,11,'',2,'y'),(38,11,'',3,'y'),(39,12,'49',1,'y'),(40,12,'',2,'y'),(41,12,'',3,'y'),(42,13,'63',1,'y'),(43,13,'',2,'y'),(44,13,'',3,'y'),(45,14,'28',1,'y'),(46,14,'',2,'y'),(47,14,'',3,'y'),(48,15,'42',1,'y'),(49,15,'',2,'y'),(50,15,'',3,'y'),(51,16,'77',1,'y'),(52,16,'',2,'y'),(53,16,'',3,'y'),(54,17,'36',1,'y'),(55,17,'',2,'y'),(56,17,'',3,'y'),(57,18,'48',1,'y'),(58,18,'',2,'y'),(59,18,'',3,'y'),(60,19,'18',1,'y'),(61,19,'',2,'y'),(62,19,'',3,'y'),(63,20,'wacko',1,'y'),(64,20,'jacko',2,'n'),(65,20,'mj',3,'n'),(66,20,'whatever',4,'n'),(67,21,'Dead',1,'y'),(68,21,'Alive',2,'n'),(69,21,'',3,'n'),(70,21,'',4,'n'),(71,22,'Alive',1,'y'),(72,22,'Dead',2,'n'),(73,22,'',3,'n'),(74,22,'',4,'n'),(79,23,'1',1,'y'),(80,23,'2',2,'y'),(81,23,'3',3,'y');

/*Table structure for table `trivia_question_master` */

DROP TABLE IF EXISTS `trivia_question_master`;

CREATE TABLE `trivia_question_master` (
  `QuestionID` int(5) NOT NULL AUTO_INCREMENT,
  `TriviaID` int(5) DEFAULT NULL,
  `Question` varchar(255) DEFAULT NULL,
  `Points` smallint(2) DEFAULT NULL,
  `QuestionType` varchar(10) DEFAULT NULL,
  `Status` varchar(10) DEFAULT 'closed',
  PRIMARY KEY (`QuestionID`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

/*Data for the table `trivia_question_master` */

insert  into `trivia_question_master`(`QuestionID`,`TriviaID`,`Question`,`Points`,`QuestionType`,`Status`) values (1,1,'Who sang &quot;Billie Jean&quot;?',1,'sa','open'),(2,1,'Who sang &quot;Another day in paradise&quot;?',1,'sa','open'),(3,1,'In what year did Scatman John record &quot;Scatmans World&quot;?',1,'mc','open'),(4,1,'In what year did the song &quot;Miami&quot; get released?',2,'mc','open'),(5,1,'Who sang &quot;U Got 2 Let the Music&quot;',3,'sa','open'),(6,1,'Who sang &quot;It&#039;s a rainy day&quot;?',5,'mc','open'),(7,1,'Jam and ____?',2,'mc','open'),(8,2,'What is 5+9?',1,'sa','open'),(9,2,'What is 9X4?',2,'mc','open'),(10,2,'What is 5X12?',2,'sa','open'),(11,2,'What is 120+42?',2,'sa','open'),(12,3,'What is 7X7?',1,'sa','open'),(13,3,'What is 7X9?',2,'sa','open'),(14,3,'What is 4X7?',1,'sa','open'),(15,3,'What is 6X7?',1,'sa','open'),(16,3,'What is 11X7?',1,'sa','open'),(17,5,'What is 6X6?',1,'sa','open'),(18,5,'What is 6X8?',1,'sa','open'),(19,5,'What is 6X3?',1,'sa','open'),(20,6,'who is michael jackson also known as?',45,'mc','closed'),(23,7,'12321',33,'mc','closed'),(24,7,'single answer quesiton',3,'sa','closed');

/*Table structure for table `trivia_user_answers` */

DROP TABLE IF EXISTS `trivia_user_answers`;

CREATE TABLE `trivia_user_answers` (
  `UserAnswerID` int(5) NOT NULL AUTO_INCREMENT,
  `QuestionID` int(5) DEFAULT NULL,
  `Answer` varchar(100) DEFAULT NULL,
  `Correct` char(1) DEFAULT NULL,
  `Points` smallint(2) DEFAULT NULL,
  `UserID` int(5) DEFAULT NULL,
  `DateTimeAnswered` datetime DEFAULT NULL,
  PRIMARY KEY (`UserAnswerID`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=latin1;

/*Data for the table `trivia_user_answers` */

insert  into `trivia_user_answers`(`UserAnswerID`,`QuestionID`,`Answer`,`Correct`,`Points`,`UserID`,`DateTimeAnswered`) values (1,1,'Michael Jackson','y',1,55,'2014-04-28 23:42:04'),(2,2,'Phil Collins','y',1,55,'2014-04-28 23:43:10'),(11,3,'1994','n',0,55,'2014-05-03 23:53:19'),(13,4,'2004','n',0,55,'2014-05-04 00:03:34'),(17,5,'12321','n',0,55,'2014-05-04 00:50:31'),(18,6,'Ice Mc','y',5,55,'2014-05-04 00:50:43'),(19,7,'Spoon','y',2,55,'2014-05-04 00:53:13'),(20,1,'wacko','n',0,60,'2014-05-04 01:02:53'),(21,2,'phil','n',0,60,'2014-05-04 01:02:58'),(22,3,'1997','n',0,60,'2014-05-04 01:03:29'),(23,4,'1997','y',2,60,'2014-05-04 01:03:34'),(24,5,'Capella','y',3,60,'2014-05-04 01:03:47'),(25,6,'Ice Mc','y',5,60,'2014-05-04 01:03:52'),(26,7,'Spoon','y',2,60,'2014-05-04 01:25:02'),(27,1,'michael jackson','y',1,61,'2014-05-04 01:28:28'),(28,2,'phil collins','y',1,61,'2014-05-04 01:33:53'),(31,3,'1995','y',1,61,'2014-05-04 01:35:08'),(32,4,'2004','n',0,61,'2014-05-04 01:35:45'),(33,5,'Capella','y',3,61,'2014-05-04 01:39:33'),(34,6,'Ice Mc','y',5,61,'2014-05-04 01:48:03'),(35,7,'Spoon','y',2,61,'2014-05-04 01:48:21'),(36,1,'Michael Jackson','y',1,62,'2014-05-04 01:58:51'),(37,2,'Phil Collins','y',1,62,'2014-05-04 01:59:02'),(38,3,'1996','n',0,62,'2014-05-04 01:59:09'),(39,4,'1997','y',2,62,'2014-05-04 01:59:24'),(40,5,'capella','y',3,62,'2014-05-04 02:00:03'),(41,6,'Ice Mc','y',5,62,'2014-05-04 02:00:12'),(42,7,'Spoon','y',2,62,'2014-05-04 02:00:38'),(43,8,'14','y',1,63,'2014-05-04 12:09:22'),(44,8,'14','y',1,66,'2014-05-04 12:09:22'),(45,8,'14','y',1,64,'2014-05-04 12:09:28'),(46,9,'36','y',2,66,'2014-05-04 12:09:38'),(47,9,'36','y',2,64,'2014-05-04 12:09:42'),(48,9,'32','n',0,63,'2014-05-04 12:09:44'),(49,10,'60','y',2,66,'2014-05-04 12:10:15'),(50,11,'142','n',0,66,'2014-05-04 12:10:36'),(51,10,'60','y',2,63,'2014-05-04 12:11:46'),(52,10,'60','y',2,64,'2014-05-04 12:12:03'),(53,11,'162','y',2,64,'2014-05-04 12:12:14'),(54,11,'99','n',0,63,'2014-05-04 12:12:18'),(55,12,'49','y',1,66,'2014-05-04 12:59:55'),(56,13,'63','y',2,66,'2014-05-04 13:00:15'),(57,14,'28','y',1,66,'2014-05-04 13:00:35'),(58,15,'42','y',1,66,'2014-05-04 13:00:46'),(59,16,'77','y',1,66,'2014-05-04 13:00:59'),(60,17,'36','y',1,66,'2014-05-04 13:03:07'),(61,18,'49','n',0,66,'2014-05-04 13:03:23'),(62,19,'18','y',1,66,'2014-05-04 13:03:45'),(63,1,'Michael jackson','y',1,64,'2014-05-04 13:07:29'),(64,2,'Phil collibs','n',0,64,'2014-05-04 13:07:45'),(65,3,'1996','n',0,64,'2014-05-04 13:07:54'),(66,4,'2004','n',0,64,'2014-05-04 13:08:01'),(67,5,'Capella','y',3,64,'2014-05-04 13:08:11'),(68,6,'Ice Mc','y',5,64,'2014-05-04 13:08:19'),(69,7,'Spoon','y',2,64,'2014-05-04 13:08:26'),(70,17,'36','y',1,63,'2014-05-04 13:30:19'),(71,18,'48','y',1,63,'2014-05-04 13:30:30'),(72,19,'18','y',1,63,'2014-05-04 13:30:43'),(73,12,'49','y',1,63,'2014-05-04 13:32:52'),(74,13,'63','y',2,63,'2014-05-04 13:33:07'),(75,14,'28','y',1,63,'2014-05-04 13:33:18'),(76,15,'42','y',1,63,'2014-05-04 13:33:29'),(77,16,'77','y',1,63,'2014-05-04 13:33:40'),(78,21,'Alive','n',0,65,'2015-06-04 23:43:30'),(79,22,'Alive','y',2,65,'2015-06-04 23:44:09');

/* Procedure structure for procedure `sp_core_organisation_exists` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_core_organisation_exists` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_core_organisation_exists`(
	IN pOrganisationName VARCHAR(255)
	)
BEGIN	
	
	SELECT OrganisationID FROM core_organisation_master WHERE OrganisationName = pOrganisationName;
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_core_organisation_master_add` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_core_organisation_master_add` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_core_organisation_master_add`(IN pAPIAuthCode VARCHAR(100),IN pOrganisationName VARCHAR(255))
BEGIN
	SELECT count(*) INTO @count_priv
	FROM core_usermaster a, core_userroles b, core_rolepriv c
	WHERE a.APIAuthCode = pAPIAuthCode
	AND a.UserID = b.UserID
	AND b.RoleID = c.RoleID
	AND c.RolePriv = 'Add Organisation';
	
	IF (@count_priv = 1) THEN
		SELECT UserID INTO @userid FROM core_usermaster WHERE APIAuthCode = pApiAuthCode;
		INSERT INTO core_organisation_master(OrganisationName,DateTimeUpdated,UserIDUpdated) VALUES (pOrganisationName,SYSDATE(),@userid);
		SELECT last_INSERT_ID() INTO @organisationid;
		INSERT INTO core_organisation_users (OrganisationID,UserID,DateTimeUpdated,UserIDUpdated) VALUES (@organisationid,@userid,sysdate(),@userid);
		SELECT @organisationid AS OrganisationID, 'Success' AS ReturnCode;
	ELSE
		SELECT 0 AS OrganisationID, 'Failed to add organisation. Check Privileges.' AS ReturnCode;
	END IF;
	
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_core_organisation_user_add` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_core_organisation_user_add` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_core_organisation_user_add`(IN pAPIAuthCode VARCHAR(100),IN pOrganisationID INT(5),IN pUserID INT(5))
BEGIN
	SELECT count(*) INTO @count_priv
	FROM core_usermaster a, core_userroles b, core_rolepriv c
	WHERE a.APIAuthCode = pAPIAuthCode
	AND a.UserID = b.UserID
	AND b.RoleID = c.RoleID
	AND c.RolePriv = 'Add User To Org';
	
	IF (@count_priv = 1) THEN
		SELECT UserID INTO @userid FROM core_usermaster WHERE APIAuthCode = pApiAuthCode;
		SELECT COUNT(*) INTO @count_priv1
		FROM core_organisation_users
		WHERE OrganisationID = pOrganisationID
		AND UserID = pUserID;
		IF (@count_priv1 = 1) THEN			
			REPLACE INTO core_organisation_users (UserID,OrganisationID,DateTimeUpdated,UserIDUpdated)
			VALUES (pUserID,pOrganisationID,SYSDATE(),pUserID);
		END IF;
	END IF;
	
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_core_userauth` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_core_userauth` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_core_userauth`(IN pUserLogin varchar(50), IN pUserPassword varchar(50))
BEGIN
	SELECT UserID,Activated
	FROM core_usermaster
	WHERE UserLogin = pUserLogin
	AND AccountStatus = 'Active'
	AND UserPassword = MD5(pUserPassword);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_core_usermaster_activate` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_core_usermaster_activate` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_core_usermaster_activate`(IN pCode VARCHAR(100))
BEGIN
	UPDATE core_usermaster
	SET Activated = 'y'
	WHERE ActivationCode = pCode;
	SELECT UserID, UserLogin
	FROM core_usermaster
	WHERE ActivationCode = pCode;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_core_usermaster_add` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_core_usermaster_add` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_core_usermaster_add`(in pUserLogin VARCHAR(50),
IN pUserPassword VARCHAR(50),IN pFullName VARCHAR(255), IN pActivationCode varchar(100))
BEGIN
	SELECT COUNT(*) INTO @user_exists
	FROM core_usermaster
	WHERE UserLogin = pUserLogin;
	IF (@user_exists = 0) THEN
		INSERT INTO core_usermaster
		(UserLogin,UserPassword,FullName,ActivationCode,DateTimeCreated,APIAuthCode)
		VALUES (pUserLogin,md5(pUserPassword),pFullName,pActivationCode,sysdate(),MD5(CONCAT(sysdate(),pUserPassword,pActivationCode)));
		SELECT last_insert_id() INTO @userid;
		INSERT INTO core_userroles (UserID,RoleID) VALUES (@userid,2);
		SELECT UserID,APIAuthCode FROM core_usermaster WHERE UserID = @userid;
	ELSE
		SELECT 'Not Auth' AS UserID,'Not Auth' AS APIAuthCode;
	END IF;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_core_usermaster_exists` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_core_usermaster_exists` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_core_usermaster_exists`(
	IN pUserLogin VARCHAR(50)
	)
BEGIN	
	
	SELECT COUNT(*) as Total FROM core_usermaster WHERE UserLogin = pUserLogin;
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_core_usermaster_get_pwcode` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_core_usermaster_get_pwcode` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_core_usermaster_get_pwcode`(IN pCode VARCHAR(100))
BEGIN
	SELECT UserID
	FROM core_usermaster
	WHERE PasswordResetCode = pCode;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_core_usermaster_lastlogin` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_core_usermaster_lastlogin` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_core_usermaster_lastlogin`(in pUserLogin VARCHAR(50))
BEGIN
	UPDATE core_usermaster SET LastLogin = SYSDATE(), LoginCount = LoginCount+1 WHERE UserLogin = pUserLogin;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_core_usermaster_pw_code` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_core_usermaster_pw_code` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_core_usermaster_pw_code`(IN pUserLogin varchar(100), in pCode VARCHAR(100))
BEGIN	
	UPDATE core_usermaster SET PasswordResetCode = pCode WHERE UserLogin = pUserLogin;	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_core_userrole_add` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_core_userrole_add` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_core_userrole_add`(IN pUserID INT(5),IN pRoleID INT(5))
BEGIN
	REPLACE INTO core_userroles
	(UserID,RoleID)
	VALUES (
	pUserID,
	pRoleID);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_mq_count_queue_type` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_mq_count_queue_type` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_mq_count_queue_type`(IN pType VARCHAR(15))
BEGIN
	SELECT count(*) as total FROM core_mq_master WHERE type = pType AND status = 'new';
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_mq_detail_insert` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_mq_detail_insert` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_mq_detail_insert`(IN pMQID INT(5),IN pName VARCHAR(255),IN pValue TEXT)
BEGIN
	INSERT INTO core_mq_detail (MQID,Name,Value) VALUES (pMQID,pName,pValue);
	SELECT last_insert_id() as id;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_mq_get_messages` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_mq_get_messages` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_mq_get_messages`(IN pType VARCHAR(15))
BEGIN
	SELECT *
	FROM core_mq_master
	WHERE status = 'new'
	ORDER BY MQID DESC;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_mq_log` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_mq_log` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_mq_log`(IN pMQID INT(5), IN pDescription VARCHAR(255))
BEGIN
	INSERT INTO core_mq_log (MQID,Description,DateTimeLog) VALUES (pMQID,pDescription,sysdate());
	SELECT last_insert_id() AS id;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_mq_master_insert` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_mq_master_insert` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_mq_master_insert`(IN pType VARCHAR(15))
BEGIN
	INSERT INTO core_mq_master (Type,DateTimeInsert) VALUES (pType,sysdate());
	SELECT last_insert_id() as id;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_mq_message_complete` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_mq_message_complete` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_mq_message_complete`(IN pMQID INT(5))
BEGIN
	UPDATE core_mq_master SET status = 'completed' WHERE MQID = pMQID;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_mq_message_details` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_mq_message_details` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_mq_message_details`(IN pMQID INT(5))
BEGIN
SELECT *
	FROM core_mq_detail
	WHERE MQID = pMQID;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_trivia_answers` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_trivia_answers` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`quizuser`@`%` PROCEDURE `sp_trivia_answers`(IN pQuestionID INT(5))
BEGIN
	SELECT AnswerID, Answer
	FROM trivia_question_answers
	WHERE QuestionID = pQuestionID;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_trivia_browse` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_trivia_browse` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`quizuser`@`%` PROCEDURE `sp_trivia_browse`()
BEGIN
	SELECT TriviaID,TriviaName
	FROM trivia_master
	WHERE PublicPrivate = 'public'
	AND STATUS = 'open'
	ORDER BY TriviaID DESC
	LIMIT 25;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_trivia_browse_my` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_trivia_browse_my` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`quizuser`@`%` PROCEDURE `sp_trivia_browse_my`(IN pUserID INT(5))
BEGIN
	SELECT TriviaID,TriviaName,Status
	FROM trivia_master
	WHERE UserIDCreated = pUserID
	ORDER BY TriviaID DESC
	LIMIT 25;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_trivia_get_first_question` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_trivia_get_first_question` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `sp_trivia_get_first_question`(IN pTriviaID INT(5))
BEGIN
	SELECT MIN(QuestionID) as questionid
	FROM trivia_question_master
	WHERE TriviaID = pTriviaID;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_trivia_get_next_question` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_trivia_get_next_question` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `sp_trivia_get_next_question`(IN pTriviaID INT(5),IN pQuestionID INT(5))
BEGIN
	SELECT QuestionID as questionid
	FROM trivia_question_master
	WHERE TriviaID = pTriviaID
	AND QuestionID > pQuestionID
	ORDER BY QuestionID
	LIMIT 1;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_trivia_halloffame` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_trivia_halloffame` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`quizuser`@`%` PROCEDURE `sp_trivia_halloffame`()
BEGIN
SELECT cu.FullName, SUM(tua.Points) AS total
FROM trivia_user_answers tua, core_usermaster cu
WHERE tua.UserID = cu.UserID
GROUP BY tua.UserID
ORDER BY total DESC;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_trivia_master_add` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_trivia_master_add` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`quizuser`@`%` PROCEDURE `sp_trivia_master_add`(IN pTriviaName VARCHAR(255),IN pUserLimit INT(5), IN pPublicPrivate VARCHAR(10), IN pUserIDCreated INT(5))
BEGIN
	INSERT INTO trivia_master (TriviaName,UserLimit,PublicPrivate,DateTimeCreated,UserIDCreated)
	VALUES (pTriviaName,pUserLimit,pPublicPrivate,sysdate(),pUserIDCreated);
	SELECT Last_Insert_ID() as TriviaID;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_trivia_master_browse` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_trivia_master_browse` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`quizuser`@`%` PROCEDURE `sp_trivia_master_browse`(IN pTriviaID INT(5))
BEGIN
	SELECT *
	FROM trivia_master
	WHERE TriviaID = pTriviaID;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_trivia_master_count_new` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_trivia_master_count_new` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`quizuser`@`%` PROCEDURE `sp_trivia_master_count_new`(IN pTriviaID INT(5))
BEGIN
SELECT COUNT(*) AS total
FROM trivia_master
WHERE TriviaID > pTriviaID
AND PublicPrivate = 'public';
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_trivia_master_delete` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_trivia_master_delete` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`quizuser`@`%` PROCEDURE `sp_trivia_master_delete`(IN pUserID INT(5), IN pTriviaID INT(5))
BEGIN
	UPDATE trivia_master
	SET STATUS = 'deleted'
	WHERE TriviaID = pTriviaID;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_trivia_master_halloffame` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_trivia_master_halloffame` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`quizuser`@`%` PROCEDURE `sp_trivia_master_halloffame`(IN pTriviaID INT(5))
BEGIN
SELECT cu.FullName, SUM(tua.Points) AS total
FROM trivia_user_answers tua, core_usermaster cu, trivia_question_master tqm
WHERE tua.UserID = cu.UserID
AND tua.QuestionID = tqm.QuestionID
AND tqm.TriviaID = pTriviaID
GROUP BY tua.UserID
ORDER BY total DESC;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_trivia_master_questions_browse` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_trivia_master_questions_browse` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`quizuser`@`%` PROCEDURE `sp_trivia_master_questions_browse`(IN pTriviaID INT(5))
BEGIN
	SELECT b.QuestionID, b.Question
	FROM trivia_master a, trivia_question_master b
	WHERE a.TriviaID = pTriviaID
	AND a.TriviaID = b.TriviaID;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_trivia_questions` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_trivia_questions` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`quizuser`@`%` PROCEDURE `sp_trivia_questions`(IN pTriviaID INT(5))
BEGIN
	SELECT QuestionID, Question, Status
	FROM trivia_question_master tqm
	WHERE TriviaID = pTriviaID	
	ORDER BY QuestionID;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_trivia_questions_my` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_trivia_questions_my` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`quizuser`@`%` PROCEDURE `sp_trivia_questions_my`(IN pUserID INT(5), IN pTriviaID INT(5))
BEGIN
	SELECT QuestionID, Question, Status
	FROM trivia_question_master tqm
	WHERE TriviaID = pTriviaID
	AND QuestionID NOT IN (SELECT QuestionID FROM trivia_user_answers WHERE UserID = pUserID)	
	ORDER BY QuestionID LIMIT 1;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_trivia_question_answer` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_trivia_question_answer` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`quizuser`@`%` PROCEDURE `sp_trivia_question_answer`(IN pQuestionID INT(5),IN pAnswer VARCHAR(100))
BEGIN
	SELECT CorrectAnswer
	FROM trivia_question_answers
	WHERE QuestionID = pQuestionID
	AND Answer = pAnswer
	AND CorrectAnswer = 'y';
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_trivia_question_answered` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_trivia_question_answered` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`quizuser`@`%` PROCEDURE `sp_trivia_question_answered`(IN pUserID INT(5),IN pQuestionID INT(5))
BEGIN
	SELECT COUNT(*) AS total
	FROM trivia_user_answers
	WHERE UserID = pUserID
	AND QuestionID = pQuestionID;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_trivia_question_answer_add` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_trivia_question_answer_add` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`quizuser`@`%` PROCEDURE `sp_trivia_question_answer_add`(IN pQuestionID INT(5),IN pAnswer VARCHAR(100), IN pOrdering TINYINT(1),IN pCorrectAnswer CHAR(1))
BEGIN
	INSERT INTO trivia_question_answers (QuestionID,Answer,Ordering,CorrectAnswer)
	VALUES (pQuestionID,pAnswer,pOrdering,pCorrectAnswer);
	SELECT Last_Insert_ID() as AnswerID;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_trivia_question_answer_browse` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_trivia_question_answer_browse` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`quizuser`@`%` PROCEDURE `sp_trivia_question_answer_browse`(IN pQuestionID INT(5))
BEGIN
	SELECT *
	FROM trivia_question_answers
	WHERE QuestionID = pQuestionID;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_trivia_question_answer_delete` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_trivia_question_answer_delete` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`quizuser`@`%` PROCEDURE `sp_trivia_question_answer_delete`(IN pQuestionID INT(5))
BEGIN
	DELETE FROM trivia_question_answers
	WHERE QuestionID = pQuestionID;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_trivia_question_count` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_trivia_question_count` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`quizuser`@`%` PROCEDURE `sp_trivia_question_count`(IN pTriviaID INT(5))
BEGIN
	SELECT COUNT(*) AS total
	FROM trivia_question_master
	WHERE TriviaID = pTriviaID;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_trivia_question_master_add` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_trivia_question_master_add` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`quizuser`@`%` PROCEDURE `sp_trivia_question_master_add`(IN pTriviaID INT(5),IN pQuestion VARCHAR(255), IN pPoints SMALLINT(2),IN pQuestionType VARCHAR(10))
BEGIN
	INSERT INTO trivia_question_master (TriviaID,Question,Points,QuestionType)
	VALUES (pTriviaID,pQuestion,pPoints,pQuestionType);
	SELECT Last_Insert_ID() as QuestionID;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_trivia_question_master_browse` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_trivia_question_master_browse` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`quizuser`@`%` PROCEDURE `sp_trivia_question_master_browse`(IN pQuestionID INT(5))
BEGIN
	SELECT *
	FROM trivia_question_master
	WHERE QuestionID = pQuestionID;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_trivia_question_master_delete` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_trivia_question_master_delete` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`quizuser`@`%` PROCEDURE `sp_trivia_question_master_delete`(IN pTriviaID INT(5), IN pQuestionID INT(5))
BEGIN	
	DELETE FROM trivia_question_master 
	WHERE QuestionID = pQuestionID
	AND TriviaID = pTriviaID;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_trivia_question_master_edit` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_trivia_question_master_edit` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`quizuser`@`%` PROCEDURE `sp_trivia_question_master_edit`(IN pTriviaID INT(5),IN pQuestionID INT(5),IN pQuestion VARCHAR(255), IN pPoints SMALLINT(2),IN pQuestionType VARCHAR(10))
BEGIN
	UPDATE trivia_question_master
	SET Question = pQuestion,
	Points = pPoints,
	QuestionType = pQuestionType
	WHERE TriviaID  = pTriviaID
	AND QuestionID = pQuestionID;
	SELECT pQuestionID as QuestionID;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_trivia_question_status_edit` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_trivia_question_status_edit` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`quizuser`@`%` PROCEDURE `sp_trivia_question_status_edit`(In pUserID INT(5),IN pQuestionID INT(5),IN pStatus VARCHAR(10))
BEGIN
	UPDATE trivia_question_master
	SET STATUS = pStatus
	WHERE QuestionID = pQuestionID
	AND TriviaID IN (SELECT TriviaID FROM trivia_master WHERE UserIDCreated = pUserID);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_trivia_user_answer` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_trivia_user_answer` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`quizuser`@`%` PROCEDURE `sp_trivia_user_answer`(IN pQuestionID INT(5),IN pAnswer VARCHAR(100),IN pCorrect CHAR(1),IN pPoints smallint(2),IN pUserID INT(5))
BEGIN
	INSERT INTO trivia_user_answers (QuestionID,Answer,Correct,Points,UserID,DateTimeAnswered)
	VALUES (pQuestionID,pAnswer,pCorrect,pPoints,pUserID,sysdate());
	SELECT LAST_INSERT_ID() AS UserAnswerID;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_usermaster_activate` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_usermaster_activate` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root1`@`localhost` PROCEDURE `sp_usermaster_activate`(IN pCode VARCHAR(100))
BEGIN
	UPDATE core_usermaster
	SET Activated = 'y'
	WHERE ActivationCode = pCode;
	SELECT UserID, UserLogin
	FROM core_usermaster
	WHERE ActivationCode = pCode;
	
	INSERT INTO ozlotto_user_balances (UserID,Credits,DateTimeTopup)
	SELECT UserID,5,sysdate()
	FROM core_usermaster
	WHERE ActivationCode = pCode
	AND UserID IN (SELECT UserID FROM ozlotto_friend_invitations);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_usermaster_browse` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_usermaster_browse` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root1`@`localhost` PROCEDURE `sp_usermaster_browse`(IN pUserID INT(5))
BEGIN
SELECT *
					FROM core_usermaster
					WHERE UserID = pUserID;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_usermaster_browse_apiauthcode` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_usermaster_browse_apiauthcode` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root1`@`localhost` PROCEDURE `sp_usermaster_browse_apiauthcode`(IN pApiAuthCode VARCHAR(100))
BEGIN
SELECT *
					FROM core_usermaster
					WHERE APIAuthCode = pApiAuthCode;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_usermaster_browse_email` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_usermaster_browse_email` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root1`@`localhost` PROCEDURE `sp_usermaster_browse_email`(IN pUserLogin VARCHAR(50))
BEGIN
SELECT *
					FROM core_usermaster
					WHERE UserLogin = pUserLogin;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_usermaster_delete` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_usermaster_delete` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`servicedeskuser`@`localhost` PROCEDURE `sp_usermaster_delete`(IN pUserID INT(5))
BEGIN
	UPDATE core_usermaster	
	SET AccountStatus = 'Deleted'
	WHERE UserID = pUserID;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_usermaster_edit` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_usermaster_edit` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`servicedeskuser`@`localhost` PROCEDURE `sp_usermaster_edit`(IN pUserID INT(5),IN pFullName VARCHAR(100), IN pTimeZone VARCHAR(50))
BEGIN
	UPDATE core_usermaster
	SET FullName = pFullName,
	Timezone = pTimezone
	WHERE UserID = pUserID;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_usermaster_fullname_change` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_usermaster_fullname_change` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`lotteryuser`@`localhost` PROCEDURE `sp_usermaster_fullname_change`(IN pUserID INT(5), IN pFullName VARCHAR(100))
BEGIN
	UPDATE core_usermaster
	SET FullName = pFullName
	WHERE UserID = pUserID;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_usermaster_pw_change` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_usermaster_pw_change` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`servicedeskuser`@`localhost` PROCEDURE `sp_usermaster_pw_change`(in pUserID INT(5),IN pPass VARCHAR(60))
BEGIN	
	UPDATE core_usermaster SET UserPassword = md5(pPass) WHERE UserID = pUserID;	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_usermaster_pw_code` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_usermaster_pw_code` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`lotteryuser`@`localhost` PROCEDURE `sp_usermaster_pw_code`(IN pUserLogin varchar(100), in pCode VARCHAR(100))
BEGIN	
	UPDATE core_usermaster SET PasswordResetCode = pCode WHERE UserLogin = pUserLogin;	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_usermaster_pw_reset` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_usermaster_pw_reset` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`lotteryuser`@`localhost` PROCEDURE `sp_usermaster_pw_reset`(in pCode VARCHAR(100),IN pPass VARCHAR(60))
BEGIN	
	UPDATE usermaster SET UserPassword = md5(pPass) WHERE PasswordResetCode = pCode;	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_userroles_delete` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_userroles_delete` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`servicedeskuser`@`localhost` PROCEDURE `sp_userroles_delete`(IN pUserID INT(5))
BEGIN
	DELETE FROM userroles WHERE UserID = pUserID;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_userroles_edit` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_userroles_edit` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`lotteryuser`@`localhost` PROCEDURE `sp_userroles_edit`(IN pUserID INT(5),in pRoleID int(5))
BEGIN
	UPDATE userroles
	SET RoleID = pRoleID
	WHERE UserID = pUserID;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_userrole_priv` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_userrole_priv` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`lotteryuser`@`localhost` PROCEDURE `sp_userrole_priv`(IN pUserID INT(5))
BEGIN
	SELECT rp.*
	FROM rolepriv rp, userroles ur, usermaster um
	WHERE um.UserID = pUserID
	AND um.UserID = ur.UserID
	AND ur.RoleID = rp.RoleID;
    END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
