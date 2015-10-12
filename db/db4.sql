/*
SQLyog Ultimate - MySQL GUI v8.2 
MySQL - 5.6.13 : Database - bonzerzprdquiz
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`bonzerzprdquiz` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `bonzerzprdquiz`;

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
) ENGINE=InnoDB AUTO_INCREMENT=11756 DEFAULT CHARSET=latin1;

/*Data for the table `core_log` */


/*Table structure for table `core_messagecatalogue` */

DROP TABLE IF EXISTS `core_messagecatalogue`;

CREATE TABLE `core_messagecatalogue` (
  `MessageID` int(5) NOT NULL AUTO_INCREMENT,
  `Message` varchar(255) DEFAULT NULL,
  `Module` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`MessageID`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=latin1;

/*Data for the table `core_messagecatalogue` */

insert  into `core_messagecatalogue`(`MessageID`,`Message`,`Module`) values (1,'Failed to login','Core'),(2,'Login Successful!','Core'),(3,'Username exists. Please choose another.','Core'),(4,'Signup Successful!','Core'),(5,'Invalid Parameters supplied.','Core'),(6,'Activated Successfully. Please login now.','Core'),(7,'Failed to activate. Please re-register.','Core'),(8,'Logged in successfully','Core'),(9,'Failed to login','Core'),(10,'Please activate your account first. Check your email.','Core'),(11,'If you entered a valid email address, you will receive instructions shortly.','Core'),(12,'Password changed successfully.','Core'),(13,'Failed to change password','Core'),(14,'Failed to send email. Please try again later.','Core'),(15,'Event Added Successfully!','Core'),(16,'Failed to add event!','Core'),(17,'Added task successfully','Core'),(18,'Failed to add task','Core'),(19,'Deleted task successfully','Core'),(20,'Failed to delete task','Core'),(21,'Added message successfully','Core'),(22,'Failed to add message','Core'),(23,'Added User to Event Successfully','Core'),(24,'Could not add user to event','Core'),(25,'User already exists','Core'),(26,'Task Status Changed Successfully','Core'),(27,'Failed to update task status','Core'),(28,'Task has dependencies. Status can\'t be changed.','Core'),(29,'Event Status Changed','Core'),(30,'Failed to change event status','Core'),(31,'Deleted Event Successfully','Core'),(32,'Event Not Deleted','Core'),(33,'Event updated successfully','Core'),(34,'No changes recorded','Core'),(35,'Task Edited Successfully','Core'),(36,'Task Not Changed','Core'),(37,'Task Name Exists. Please choose another.','Core'),(38,'You have subscribed this user. They need to confirm via email.','Core'),(39,'User Role Added Successfully.','Core'),(40,'Failed to add user role','Core'),(41,'User role not added - no user selected','Core'),(42,'Invalid Event. Please try again.','Core'),(43,'Unable to add user.','Core'),(44,'Edited account successfully','Core'),(45,'Failed to make changes to account','Core'),(46,'Password changed successfully','Core'),(47,'Password did not change','Core'),(48,'No password set','Core'),(49,'Account Deleted. Note that it can take 48 hours to delete your account. You will not be able to use the same email address until then.','Core'),(50,'Unable to delete account','Core'),(51,'Not logged in. Can\'t delete account.','Core'),(52,'Removed from organisation','Core'),(53,'Could not remove organisation','Core'),(54,'Your account has reached the maximum number of events. Please upgrade.','Core'),(55,'Your event has reached the maximum number of tasks. Please upgrade.','Core'),(56,'Added document successfully','Core'),(57,'Failed to add document','Core'),(58,'Deleted document successfully','Core'),(59,'Unable to delete document','Core'),(60,'Feedback submitted! Thanks for that!','Core'),(61,'Failed to save feedback.','Core'),(62,'Thanks for submitting!','Core'),(63,'Failed to submit bug.','Core'),(64,'No user provided','Core'),(65,'Could not execute user balance check','Core'),(66,'Please login first','Core'),(67,'You need to topup','Core'),(68,'Your invitations have been sent.','Core'),(69,'One or more of your invitations did not send','Core'),(70,'You\'ve been logged in. Please remember to change your password.','Core'),(71,'Failed to recognise password recovery code','Core'),(72,'Changed Profile Successfully','Core'),(73,'Failed to change profile','Core'),(74,'Failed to change profile - no data','Core'),(75,'Trivia game addedd successfully!','Trivia'),(76,'Unable to add trivia. Please try again.','Trivia'),(77,'Question added successfully!','Trivia'),(78,'Question failed to add!','Trivia'),(79,'Answer added successfully!','Trivia'),(80,'Answer failed to add!','Trivia'),(81,'Answer saved successfully!','Trivia'),(82,'Failed to save answer!','Trivia'),(83,'You\'ve already answered that question!','Trivia'),(84,'Question status changed!','Trivia'),(85,'Question status change failed!','Trivia'),(86,'Question edit failed','Trivia'),(87,'Question edit success','Trivia'),(88,'Trivia delete failed','Trivia'),(89,'Trivia deleted successfully!','Trivia'),(90,'Trivia question delete failed','Trivia'),(91,'Trivia question deleted successfully!','Trivia'),(92,'Trivia question answers delete failed','Trivia'),(93,'Trivia question answers deleted successfully!','Trivia'),(94,'Trivia edit fail','Trivia'),(95,'Trivia edit success!','Trivia'),(96,'BigScreen question open!','Trivia'),(97,'BigScreen question open failed!','Trivia');

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
) ENGINE=InnoDB AUTO_INCREMENT=288 DEFAULT CHARSET=utf8;

/*Data for the table `core_mq_detail` */

insert  into `core_mq_detail`(`DetailID`,`MQID`,`Name`,`Value`) values (1,1,'from','general@BetterLotteryNumbers.com'),(2,1,'subject','[BetterLotteryNumbers] Registration'),(3,1,'message','Welcome 12323aaa222aa3321,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://192.168.2.12/quiz/activate.php?content=login&code=a6c71e7d62ab044eaada8e8cb7aedf5d \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(4,2,'from','general@BetterLotteryNumbers.com'),(5,2,'to','12323aaa222aa33211@localhost.com'),(6,2,'subject','[BetterLotteryNumbers] Registration'),(7,2,'message','Welcome 12323aaa222aa33211,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://192.168.2.12/quiz/activate.php?content=login&code=05458e470b06c07178024a4516738166 \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(8,3,'from','general@BetterLotteryNumbers.com'),(9,3,'to','12321@localhost.com'),(10,3,'subject','[BetterLotteryNumbers] Registration'),(11,3,'message','Welcome 12321,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://192.168.2.12/quiz/activate.php?content=login&code=6e0c7116368966b47b10d8c0bcf5277f \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(12,4,'from','general@BetterLotteryNumbers.com'),(13,4,'to','123321@localhost.com'),(14,4,'subject','[BetterLotteryNumbers] Registration'),(15,4,'message','Welcome 123321,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://192.168.2.12/quiz/activate.php?content=login&code=c3b1d13bcf2ef736d9acf701aea214b7 \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(16,5,'from','general@BetterLotteryNumbers.com'),(17,5,'to','q@localhost.com'),(18,5,'subject','[BetterLotteryNumbers] Registration'),(19,5,'message','Welcome q,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://192.168.2.12/quiz/activate.php?content=login&code=94c864da44eb4bfbf1cdfe54dfa0e388 \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(20,6,'from','general@BetterLotteryNumbers.com'),(21,6,'to','1@localhost.com'),(22,6,'subject','[BetterLotteryNumbers] Registration'),(23,6,'message','Welcome 1,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://192.168.2.12/quiz/activate.php?content=login&code=0d7aefb0c7ed47676ed6251797e6a74d \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(24,7,'from','general@BetterLotteryNumbers.com'),(25,7,'to','2@localhost.com'),(26,7,'subject','[BetterLotteryNumbers] Registration'),(27,7,'message','Welcome 2,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://192.168.2.12/quiz/activate.php?content=login&code=0b359910a72466273b3a9366919adf05 \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(28,8,'from','general@BetterLotteryNumbers.com'),(29,8,'to','joe@localhost.com'),(30,8,'subject','[BetterLotteryNumbers] Registration'),(31,8,'message','Welcome joe,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://192.168.2.12/quiz/activate.php?content=login&code=03b5a967ee8bb2442ad382dae2c118df \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(32,9,'from','general@BetterLotteryNumbers.com'),(33,9,'to','joe@localhost.com'),(34,9,'subject','[BetterLotteryNumbers] Registration'),(35,9,'message','Welcome joe,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://192.168.2.12/quiz/activate.php?content=login&code=ee66c3262a042e0395535e7e090b60ba \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(36,10,'from','general@BetterLotteryNumbers.com'),(37,10,'to','mike@localhost.com'),(38,10,'subject','[BetterLotteryNumbers] Registration'),(39,10,'message','Welcome mike,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://192.168.2.12/quiz/activate.php?content=login&code=157416144443ac38524005e628666a8c \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(40,11,'from','general@BetterLotteryNumbers.com'),(41,11,'to','joe@localhost.com'),(42,11,'subject','[BetterLotteryNumbers] Registration'),(43,11,'message','Welcome joe,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://192.168.2.12/quiz/activate.php?content=login&code=5c61599e47da8185b44f774376088225 \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(44,12,'from','general@BetterLotteryNumbers.com'),(45,12,'to','mike@localhost.com'),(46,12,'subject','[BetterLotteryNumbers] Registration'),(47,12,'message','Welcome mike,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://192.168.2.12/quiz/activate.php?content=login&code=56b3ae78e2d69a60ca9a557eb8ea9790 \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(48,13,'from','general@BetterLotteryNumbers.com'),(49,13,'to','123@localhost.com'),(50,13,'subject','[BetterLotteryNumbers] Registration'),(51,13,'message','Welcome 123,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://192.168.2.12/quiz/activate.php?content=login&code=bfbb63c45009ab104249ad23f3fba026 \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(52,14,'from','general@BetterLotteryNumbers.com'),(53,14,'to','222@localhost.com'),(54,14,'subject','[BetterLotteryNumbers] Registration'),(55,14,'message','Welcome 222,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://192.168.2.12/quiz/activate.php?content=login&code=c79b4b605b26e191c9f6bf83db85041e \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(56,15,'from','general@BetterLotteryNumbers.com'),(57,15,'to','4344@localhost.com'),(58,15,'subject','[BetterLotteryNumbers] Registration'),(59,15,'message','Welcome 4344,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://192.168.2.12/quiz/activate.php?content=login&code=ba8d16fb4dfbdd5d03c83f3eec29c057 \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(60,16,'from','general@BetterLotteryNumbers.com'),(61,16,'to','333@localhost.com'),(62,17,'from','general@BetterLotteryNumbers.com'),(63,16,'subject','[BetterLotteryNumbers] Registration'),(64,17,'to','333@localhost.com'),(65,17,'subject','[BetterLotteryNumbers] Registration'),(66,16,'message','Welcome 333,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://192.168.2.12/quiz/activate.php?content=login&code=55078d878ce961fc52167590a7df31b5 \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(67,17,'message','Welcome 333,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://192.168.2.12/quiz/activate.php?content=login&code=975413a95837fbace0552e78cb6de1e0 \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(68,18,'from','general@BetterLotteryNumbers.com'),(69,18,'to','44555@localhost.com'),(70,18,'subject','[BetterLotteryNumbers] Registration'),(71,18,'message','Welcome 44555,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://192.168.2.12/quiz/activate.php?content=login&code=476ff85eaf0d9938366fa40246dc83ed \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(72,19,'from','general@BetterLotteryNumbers.com'),(73,19,'to','5555@localhost.com'),(74,19,'subject','[BetterLotteryNumbers] Registration'),(75,19,'message','Welcome 5555,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://192.168.2.12/quiz/activate.php?content=login&code=437f0eda90ea494e5d582a9f188d4564 \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(76,20,'from','general@BetterLotteryNumbers.com'),(77,20,'to','1@localhost.com'),(78,20,'subject','[BetterLotteryNumbers] Registration'),(79,21,'from','general@BetterLotteryNumbers.com'),(80,20,'message','Welcome 1,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://192.168.2.12/quiz/activate.php?content=login&code=0f67dbdd519a3dd2f816c5ea0b155b1d \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(81,21,'to','1@localhost.com'),(82,21,'subject','[BetterLotteryNumbers] Registration'),(83,21,'message','Welcome 1,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://192.168.2.12/quiz/activate.php?content=login&code=bef871e5800bc1852b44d7b33c4cda86 \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(84,22,'from','general@BetterLotteryNumbers.com'),(85,22,'to','123321@localhost.com'),(86,22,'subject','[BetterLotteryNumbers] Registration'),(87,22,'message','Welcome 123321,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://192.168.2.12/quiz/activate.php?content=login&code=22c5539de243fd6c6c643e9a543e4490 \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(88,23,'from','general@BetterLotteryNumbers.com'),(89,23,'to','2@localhost.com'),(90,23,'subject','[BetterLotteryNumbers] Registration'),(91,23,'message','Welcome 2,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://192.168.2.12/quiz/activate.php?content=login&code=e4918c8e86da66bafb667e892d5ce3ae \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(92,24,'from','general@BetterLotteryNumbers.com'),(93,24,'to','3@localhost.com'),(94,24,'subject','[BetterLotteryNumbers] Registration'),(95,24,'message','Welcome 3,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://192.168.2.12/quiz/activate.php?content=login&code=6a323e12009ad579f7e5ec895ef8644d \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(96,25,'from','general@BetterLotteryNumbers.com'),(97,25,'to','4@localhost.com'),(98,25,'subject','[BetterLotteryNumbers] Registration'),(99,25,'message','Welcome 4,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://192.168.2.12/quiz/activate.php?content=login&code=39ff6d68e58cf3419f09a85a96f2218a \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(100,26,'from','general@BetterLotteryNumbers.com'),(101,26,'to','qq@localhost.com'),(102,26,'subject','[BetterLotteryNumbers] Registration'),(103,26,'message','Welcome qq,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://localhost/quiz/activate.php?content=login&code=08d2fed5c69553cfab39324c783512d2 \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(104,27,'from','general@BetterLotteryNumbers.com'),(105,27,'to','qqq@localhost.com'),(106,27,'subject','[BetterLotteryNumbers] Registration'),(107,27,'message','Welcome qqq,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://localhost/quiz/activate.php?content=login&code=a5b7722b495e9686b0054718a88eaffc \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(108,28,'from','general@BetterLotteryNumbers.com'),(109,28,'to','qqqq@localhost.com'),(110,28,'subject','[BetterLotteryNumbers] Registration'),(111,28,'message','Welcome qqqq,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://localhost/quiz/activate.php?content=login&code=0751078f4b45c39ad110ea39f62fe700 \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(112,29,'from','general@BetterLotteryNumbers.com'),(113,29,'to','ww@localhost.com'),(114,29,'subject','[BetterLotteryNumbers] Registration'),(115,29,'message','Welcome ww,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://localhost/quiz/activate.php?content=login&code=e1a0fb6c0cfe61ab9dad78746d7c7416 \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(116,30,'from','general@BetterLotteryNumbers.com'),(117,30,'to','www@localhost.com'),(118,30,'subject','[BetterLotteryNumbers] Registration'),(119,30,'message','Welcome www,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://localhost/quiz/activate.php?content=login&code=bdffc4e6fcc23a42019624eeedc6cc10 \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(120,31,'from','general@BetterLotteryNumbers.com'),(121,31,'to','rr@localhost.com'),(122,31,'subject','[BetterLotteryNumbers] Registration'),(123,31,'message','Welcome rr,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://localhost/quiz/activate.php?content=login&code=9115acf1d1acdbce1344058e5f684ec1 \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(124,32,'from','general@BetterLotteryNumbers.com'),(125,32,'to','aa@localhost.com'),(126,32,'subject','[BetterLotteryNumbers] Registration'),(127,32,'message','Welcome aa,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://localhost/quiz/activate.php?content=login&code=4b9440f1834d6492b89fae6e42403247 \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(128,33,'from','general@BetterLotteryNumbers.com'),(129,33,'to','aaa@localhost.com'),(130,33,'subject','[BetterLotteryNumbers] Registration'),(131,33,'message','Welcome aaa,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://localhost/quiz/activate.php?content=login&code=83aaf9888a42650c9bf10afbd7f07eba \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(132,34,'from','general@BetterLotteryNumbers.com'),(133,34,'to','ddd@localhost.com'),(134,34,'subject','[BetterLotteryNumbers] Registration'),(135,34,'message','Welcome ddd,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://localhost/quiz/activate.php?content=login&code=5005943d75dc3ab71a3493cb6b84ec2c \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(136,35,'from','general@BetterLotteryNumbers.com'),(137,35,'to','ccc@localhost.com'),(138,35,'subject','[BetterLotteryNumbers] Registration'),(139,35,'message','Welcome ccc,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://localhost/quiz/activate.php?content=login&code=231e22bf1d5ba631f3662a5edd0b0133 \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(140,36,'from','general@BetterLotteryNumbers.com'),(141,36,'to','ccce@localhost.com'),(142,36,'subject','[BetterLotteryNumbers] Registration'),(143,36,'message','Welcome ccce,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://localhost/quiz/activate.php?content=login&code=748843bf4cd6eedae147b049dee3090f \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(144,37,'from','general@BetterLotteryNumbers.com'),(145,37,'to','terence@localhost.com'),(146,37,'subject','[BetterLotteryNumbers] Registration'),(147,37,'message','Welcome terence,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://localhost/quiz/activate.php?content=login&code=b9b5da531a848a2b76815c55d3b92053 \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(148,38,'from','general@BetterLotteryNumbers.com'),(149,38,'to','terence1@localhost.com'),(150,38,'subject','[BetterLotteryNumbers] Registration'),(151,38,'message','Welcome terence1,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://localhost/quiz/activate.php?content=login&code=f6d096e0e4e9e99cbe5941f5b70e5340 \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(152,39,'from','general@BetterLotteryNumbers.com'),(153,39,'to','terence11@localhost.com'),(154,39,'subject','[BetterLotteryNumbers] Registration'),(155,39,'message','Welcome terence11,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://localhost/quiz/activate.php?content=login&code=166809be1e37ba5de43ea4a4fe0379ea \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(156,40,'from','general@BetterLotteryNumbers.com'),(157,40,'to','terence2@localhost.com'),(158,40,'subject','[BetterLotteryNumbers] Registration'),(159,40,'message','Welcome terence2,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://localhost/quiz/activate.php?content=login&code=350b9ec48325a0dddffc4b4a87fe7489 \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(160,41,'from','general@BetterLotteryNumbers.com'),(161,41,'to','terence@localhost.com'),(162,41,'subject','[BetterLotteryNumbers] Registration'),(163,41,'message','Welcome terence,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://localhost/quiz/activate.php?content=login&code=296da974d6eaf297974699153bef877a \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(164,42,'from','general@BetterLotteryNumbers.com'),(165,42,'to','t@localhost.com'),(166,42,'subject','[BetterLotteryNumbers] Registration'),(167,42,'message','Welcome t,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://192.168.2.4/quiz/activate.php?content=login&code=6f2c9c53910cf0ba033760af11447d26 \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(168,43,'from','general@BetterLotteryNumbers.com'),(169,43,'to','Cait@localhost.com'),(170,43,'subject','[BetterLotteryNumbers] Registration'),(171,43,'message','Welcome Cait,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://192.168.2.4/quiz/activate.php?content=login&code=57d1bbd71cf9fd678c0237bcfbd1a904 \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(172,44,'from','general@BetterLotteryNumbers.com'),(173,44,'to','Cait1@localhost.com'),(174,44,'subject','[BetterLotteryNumbers] Registration'),(175,44,'message','Welcome Cait1,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://192.168.2.4/quiz/activate.php?content=login&code=e0d473c0bc2935b46e704f73e2c58e59 \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(176,45,'from','general@BetterLotteryNumbers.com'),(177,45,'to','Caitlin@localhost.com'),(178,45,'subject','[BetterLotteryNumbers] Registration'),(179,45,'message','Welcome Caitlin,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://192.168.2.4/quiz/activate.php?content=login&code=6fae5ad37d4a1c9a05d7f4fc0699b373 \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(180,46,'from','general@BetterLotteryNumbers.com'),(181,46,'to','caitlin@localhost.com'),(182,46,'subject','[BetterLotteryNumbers] Registration'),(183,46,'message','Welcome caitlin,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://localhost/quiz/activate.php?content=login&code=306b20d86698b6e673e1f9666c940f66 \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(184,47,'from','general@BetterLotteryNumbers.com'),(185,47,'to','hayley@localhost.com'),(186,47,'subject','[BetterLotteryNumbers] Registration'),(187,47,'message','Welcome hayley,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://localhost/quiz/activate.php?content=login&code=5d08429c1a2bdc62d9000c85ff7825fa \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(188,48,'from','general@BetterLotteryNumbers.com'),(189,48,'to','cameron@localhost.com'),(190,48,'subject','[BetterLotteryNumbers] Registration'),(191,48,'message','Welcome cameron,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://localhost/quiz/activate.php?content=login&code=2091fddf17dcc3a5e5a2486efd4dab38 \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(192,49,'from','general@BetterLotteryNumbers.com'),(193,49,'to','iPad@localhost.com'),(194,49,'subject','[BetterLotteryNumbers] Registration'),(195,49,'message','Welcome iPad,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://192.168.2.4/quiz/activate.php?content=login&code=058cd18cf72c8f0241d14058e6ec42b7 \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(196,50,'from','general@BetterLotteryNumbers.com'),(197,50,'to','iphone5@localhost.com'),(198,50,'subject','[BetterLotteryNumbers] Registration'),(199,50,'message','Welcome iphone5,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://192.168.2.4/quiz/activate.php?content=login&code=f6f23bb318abfdeab20399402217a56b \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(200,51,'from','general@BetterLotteryNumbers.com'),(201,51,'to','c@localhost.com'),(202,51,'subject','[BetterLotteryNumbers] Registration'),(203,51,'message','Welcome c,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://192.168.2.4/quiz/activate.php?content=login&code=02bc413fa86b9342fcf98cb70d349ba4 \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(204,52,'from','general@BetterLotteryNumbers.com'),(205,52,'to','Cc@localhost.com'),(206,52,'subject','[BetterLotteryNumbers] Registration'),(207,52,'message','Welcome Cc,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://192.168.2.4/quiz/activate.php?content=login&code=80f0bda4d99f80c07337b062ab6f681c \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(208,53,'from','general@BetterLotteryNumbers.com'),(209,53,'to','a@localhost.com'),(210,53,'subject','[BetterLotteryNumbers] Registration'),(211,53,'message','Welcome a,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://localhost/quiz/activate.php?content=login&code=7536ceaef434d53e593cbc0aa1aee420 \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(212,54,'from','general@BetterLotteryNumbers.com'),(213,54,'to','b@localhost.com'),(214,54,'subject','[BetterLotteryNumbers] Registration'),(215,54,'message','Welcome b,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://localhost/quiz/activate.php?content=login&code=dc06c9c243973bdf6d5a2e257d2b78e1 \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(216,55,'from','general@BetterLotteryNumbers.com'),(217,55,'to','fringe@localhost.com'),(218,55,'subject','[BetterLotteryNumbers] Registration'),(219,55,'message','Welcome fringe,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://localhost/quiz/activate.php?content=login&code=b2ee508a5e113209d2fcac2bf837e046 \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(220,56,'from','general@BetterLotteryNumbers.com'),(221,56,'to','avengers@localhost.com'),(222,56,'subject','[BetterLotteryNumbers] Registration'),(223,56,'message','Welcome avengers,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://localhost/quiz/activate.php?content=login&code=840afe9652177660e3d2e72fc5d7ca3d \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(224,57,'from','general@BetterLotteryNumbers.com'),(225,57,'to','xmen@localhost.com'),(226,57,'subject','[BetterLotteryNumbers] Registration'),(227,57,'message','Welcome xmen,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://localhost/quiz/activate.php?content=login&code=bf25b1f295afc528b6e791b7b035a814 \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(228,58,'from','general@BetterLotteryNumbers.com'),(229,58,'to','lospollos@localhost.com'),(230,58,'subject','[BetterLotteryNumbers] Registration'),(231,58,'message','Welcome lospollos,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://localhost/quiz/activate.php?content=login&code=f72a9c8e4e9122eb29481f26396bf852 \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(232,59,'from','general@BetterLotteryNumbers.com'),(233,59,'to','avengers@localhost.com'),(234,59,'subject','[BetterLotteryNumbers] Registration'),(235,59,'message','Welcome avengers,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://localhost/quiz/activate.php?content=login&code=f8dcf0890d2e528469dc49a7c5cc1766 \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(236,60,'from','general@BetterLotteryNumbers.com'),(237,60,'to','xmen@localhost.com'),(238,60,'subject','[BetterLotteryNumbers] Registration'),(239,60,'message','Welcome xmen,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://localhost/quiz/activate.php?content=login&code=c11448e6996280c30e5afa9fea29935a \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(240,61,'to','caitlin@localhost.com'),(241,61,'message',''),(242,62,'to','a@localhost.com'),(243,62,'message',''),(244,63,'from','general@BetterLotteryNumbers.com'),(245,63,'to','b@localhost.com'),(246,63,'subject','[BetterLotteryNumbers] Registration'),(247,63,'message','Welcome b,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://localhost/quiz/activate.php?content=login&code=aa1124a1f9637a05c034cd0be6a19013 \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(248,64,'from','general@BetterLotteryNumbers.com'),(249,64,'to','g@localhost.com'),(250,64,'subject','[BetterLotteryNumbers] Registration'),(251,64,'message','Welcome g,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://localhost/quiz/activate.php?content=login&code=e7d7776a5f93c27394e1cb59f8b8b40e \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(252,65,'from','general@BetterLotteryNumbers.com'),(253,65,'to','xmen@localhost.com'),(254,65,'subject','[BetterLotteryNumbers] Registration'),(255,65,'message','Welcome xmen,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://localhost/quiz/activate.php?content=login&code=7f623aaf1be086b4d9437e42e541c00e \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(256,66,'from','general@BetterLotteryNumbers.com'),(257,66,'to','a@localhost.com'),(258,66,'subject','[BetterLotteryNumbers] Registration'),(259,66,'message','Welcome a,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://localhost/quiz/activate.php?content=login&code=cdbac8e7de791ffed7b20447530c2bb4 \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(260,67,'from','general@BetterLotteryNumbers.com'),(261,67,'to','b@localhost.com'),(262,67,'subject','[BetterLotteryNumbers] Registration'),(263,67,'message','Welcome b,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://localhost/quiz/activate.php?content=login&code=7b55e2cacee93b55110534c2e7726ebf \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(264,68,'from','general@BetterLotteryNumbers.com'),(265,68,'to','c@localhost.com'),(266,68,'subject','[BetterLotteryNumbers] Registration'),(267,68,'message','Welcome c,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://localhost/quiz/activate.php?content=login&code=c404f765d8eabb019936dd5646a031ad \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(268,69,'from','general@BetterLotteryNumbers.com'),(269,69,'to','d@localhost.com'),(270,69,'subject','[BetterLotteryNumbers] Registration'),(271,69,'message','Welcome d,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://localhost/quiz/activate.php?content=login&code=0354defcd10f57a5c5938e49f3ae20e6 \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(272,70,'from','general@BetterLotteryNumbers.com'),(273,70,'to','55@localhost.com'),(274,70,'subject','[BetterLotteryNumbers] Registration'),(275,70,'message','Welcome 55,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://localhost/quiz/activate.php?content=login&code=61519e623b243301184ee473b47828df \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(276,71,'from','general@BetterLotteryNumbers.com'),(277,71,'to','99@localhost.com'),(278,71,'subject','[BetterLotteryNumbers] Registration'),(279,71,'message','Welcome 99,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://localhost/quiz/activate.php?content=login&code=cec5e9fd86119b892b782bf14abe3dbe \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(280,72,'from','general@BetterLotteryNumbers.com'),(281,72,'to','selennium@localhost.com'),(282,72,'subject','[BetterLotteryNumbers] Registration'),(283,72,'message','Welcome selennium,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://localhost/quiz/activate.php?content=login&code=8afd8b7d2794cd2eeb105973a2f3d604 \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com'),(284,73,'from','general@BetterLotteryNumbers.com'),(285,73,'to','selennium_player@localhost.com'),(286,73,'subject','[BetterLotteryNumbers] Registration'),(287,73,'message','Welcome selennium_player,\r\nYou have been registered for BetterLotteryNumbers.com, so please activate your account by clicking here:\r\nhttp://localhost/quiz/activate.php?content=login&code=ad465bc0ad2ed5c7d92d5497bea3ea62 \r\n\r\nIf you did not register, please ignore this email.\r\n\r\nRegards, \r\nBetterLotteryNumbers.com');

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
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=latin1;

/*Data for the table `core_mq_master` */

insert  into `core_mq_master`(`MQID`,`Type`,`Status`,`DateTimeInsert`,`DateTimeStart`,`DateTimeEnd`) values (1,'email','new','2014-04-23 00:03:33',NULL,NULL),(2,'email','new','2014-04-23 00:04:09',NULL,NULL),(3,'email','new','2014-04-23 00:04:35',NULL,NULL),(4,'email','new','2014-04-23 00:06:52',NULL,NULL),(5,'email','new','2014-04-23 00:07:28',NULL,NULL),(6,'email','new','2014-04-23 00:09:03',NULL,NULL),(7,'email','new','2014-04-23 00:09:07',NULL,NULL),(8,'email','new','2014-04-23 00:09:23',NULL,NULL),(9,'email','new','2014-04-23 00:09:50',NULL,NULL),(10,'email','new','2014-04-23 00:09:55',NULL,NULL),(11,'email','new','2014-04-23 00:10:25',NULL,NULL),(12,'email','new','2014-04-23 00:10:29',NULL,NULL),(13,'email','new','2014-04-23 00:11:57',NULL,NULL),(14,'email','new','2014-04-23 00:12:01',NULL,NULL),(15,'email','new','2014-04-23 00:12:04',NULL,NULL),(16,'email','new','2014-04-23 00:12:07',NULL,NULL),(17,'email','new','2014-04-23 00:12:08',NULL,NULL),(18,'email','new','2014-04-23 00:12:11',NULL,NULL),(19,'email','new','2014-04-23 00:12:15',NULL,NULL),(20,'email','new','2014-04-23 00:12:40',NULL,NULL),(21,'email','new','2014-04-23 00:12:40',NULL,NULL),(22,'email','new','2014-04-23 00:12:44',NULL,NULL),(23,'email','new','2014-04-23 00:13:40',NULL,NULL),(24,'email','new','2014-04-23 00:13:42',NULL,NULL),(25,'email','new','2014-04-23 00:13:44',NULL,NULL),(26,'email','new','2014-04-23 18:00:45',NULL,NULL),(27,'email','new','2014-04-23 18:04:57',NULL,NULL),(28,'email','new','2014-04-23 18:05:26',NULL,NULL),(29,'email','new','2014-04-23 18:05:53',NULL,NULL),(30,'email','new','2014-04-23 18:06:35',NULL,NULL),(31,'email','new','2014-04-23 18:07:50',NULL,NULL),(32,'email','new','2014-04-23 18:09:28',NULL,NULL),(33,'email','new','2014-04-23 18:12:40',NULL,NULL),(34,'email','new','2014-04-23 18:13:19',NULL,NULL),(35,'email','new','2014-04-23 18:13:55',NULL,NULL),(36,'email','new','2014-04-23 18:14:50',NULL,NULL),(37,'email','new','2014-04-23 18:24:27',NULL,NULL),(38,'email','new','2014-04-23 18:25:57',NULL,NULL),(39,'email','new','2014-04-23 18:26:49',NULL,NULL),(40,'email','new','2014-04-23 18:27:30',NULL,NULL),(41,'email','new','2014-04-25 00:32:13',NULL,NULL),(42,'email','new','2014-04-25 22:22:54',NULL,NULL),(43,'email','new','2014-04-26 14:52:42',NULL,NULL),(44,'email','new','2014-04-26 14:53:36',NULL,NULL),(45,'email','new','2014-04-26 21:37:58',NULL,NULL),(46,'email','new','2014-05-04 01:02:43',NULL,NULL),(47,'email','new','2014-05-04 01:28:05',NULL,NULL),(48,'email','new','2014-05-04 01:49:24',NULL,NULL),(49,'email','new','2014-05-04 12:00:45',NULL,NULL),(50,'email','new','2014-05-04 12:02:14',NULL,NULL),(51,'email','new','2014-05-04 12:07:42',NULL,NULL),(52,'email','new','2014-05-04 12:09:00',NULL,NULL),(53,'email','new','2015-06-04 23:32:16',NULL,NULL),(54,'email','new','2015-06-04 23:32:20',NULL,NULL),(55,'email','new','2015-06-08 21:08:31',NULL,NULL),(56,'email','new','2015-06-08 21:08:49',NULL,NULL),(57,'email','new','2015-06-08 21:23:03',NULL,NULL),(58,'email','new','2015-06-08 21:23:10',NULL,NULL),(59,'email','new','2015-06-08 21:25:38',NULL,NULL),(60,'email','new','2015-06-08 21:26:08',NULL,NULL),(61,'email','new','2015-06-09 22:17:22',NULL,NULL),(62,'email','new','2015-06-09 22:17:51',NULL,NULL),(63,'email','new','2015-06-09 22:18:35',NULL,NULL),(64,'email','new','2015-06-09 22:18:46',NULL,NULL),(65,'email','new','2015-06-10 21:36:56',NULL,NULL),(66,'email','new','2015-06-10 23:04:07',NULL,NULL),(67,'email','new','2015-06-10 23:05:51',NULL,NULL),(68,'email','new','2015-06-10 23:06:18',NULL,NULL),(69,'email','new','2015-06-10 23:07:18',NULL,NULL),(70,'email','new','2015-06-10 23:09:22',NULL,NULL),(71,'email','new','2015-06-10 23:47:02',NULL,NULL),(72,'email','new','2015-06-14 23:31:35',NULL,NULL),(73,'email','new','2015-06-14 23:51:18',NULL,NULL);

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

insert  into `core_sessions`(`SessionID`,`SessionData`,`SessionTime`) values ('1ast0f9mnklbcb6sssk1e7kav5','','2015-06-15 22:38:15'),('1pdb54n1108j73m9p14t0h3ib5','','2015-06-14 23:57:04'),('1t2o5bfsqcl6602sneusi76oh7','userid|s:2:\"63\";username|s:4:\"iPad\";triviaid|s:1:\"3\";','2014-05-04 13:41:35'),('2j9m0nlcs9cvfec1hje0uoc862','','2014-05-04 12:34:49'),('3jbk83h26npm2jksigidp60bj4','','2015-06-22 22:33:57'),('414j1gkbk98b3ivvtk6bcg2kh4','userid|s:2:\"74\";username|s:4:\"xmen\";','2015-06-09 22:17:10'),('4jjsaskm08cvkeeked1htdnud0','','2015-06-16 23:14:11'),('6516n4dun3rb3erea473gm0fr1','userid|s:1:\"2\";username|s:4:\"xmen\";triviaid|s:2:\"10\";','2015-06-10 22:36:33'),('6c5tao1ad2v0i6egkk2i5bfh34','userid|s:2:\"65\";username|s:1:\"c\";triviaid|s:1:\"7\";','2015-06-04 23:50:35'),('6nrn64ah66nv1ljld40u4dtfv2','userid|s:2:\"55\";username|s:7:\"terence\";trivianame|s:10:\"11X Tables\";questionid|s:2:\"19\";question|s:12:\"What is 6X3?\";questiontype|s:2:\"sa\";answerid|s:2:\"62\";triviaid|s:1:\"6\";','2014-05-04 13:47:19'),('79n4dhl4o4mnbndd6t81rpicc4','','2014-05-04 12:34:49'),('7mn9k824fknke1nfqhcomnn231','userid|s:1:\"7\";username|s:2:\"55\";trivianame|s:3:\"888\";triviaid|s:2:\"12\";question|s:1:\"2\";questiontype|s:2:\"mc\";answerid|s:3:\"243\";','2015-06-11 00:09:43'),('91accse70ogbfmbevi5egq9433','userid|s:1:\"1\";username|s:5:\"admin\";trivianame|s:14:\"Dead or Alive?\";question|s:4:\"Zuma\";questiontype|s:2:\"mc\";answerid|s:3:\"265\";triviaid|s:2:\"21\";questionid|s:2:\"56\";','2015-06-15 23:52:24'),('9mpck9fng8ld0l0s4aa1p3mo34','userid|s:1:\"1\";username|s:5:\"admin\";trivianame|s:23:\"Best albums of all time\";currentquestionid|s:2:\"55\";triviaid|s:2:\"22\";question|s:33:\"Who sang &quot;Billie Jean&quot;?\";questiontype|s:2:\"sa\";answerid|s:3:\"274\";','2015-06-22 22:35:59'),('bf00d9jkt546ro4de674aj80s0','userid|s:2:\"74\";username|s:4:\"xmen\";triviaid|s:1:\"8\";','2015-06-08 22:38:52'),('bpfpm8hm2ckep9idsikdn72rk4','userid|s:1:\"1\";username|s:5:\"admin\";trivianame|s:0:\"\";triviaid|s:2:\"21\";','2015-06-23 23:19:41'),('bternre3nrqk9tsgsk12h2a2h2','','2015-06-15 00:08:00'),('c9o470pesltefugir1dnf5lov7','','2015-06-10 21:18:12'),('cqklugkf1nsqvnitca6ln8gfc7','userid|s:2:\"55\";username|s:7:\"terence\";trivianame|s:8:\"StAART 1\";questionid|s:2:\"23\";triviaid|s:1:\"7\";question|s:22:\"single answer quesiton\";questiontype|s:2:\"sa\";answerid|s:2:\"81\";edit_question|b:1;','2015-06-07 00:20:54'),('d820qbseojo2up24e1rlnpapf4','userid|s:2:\"73\";username|s:8:\"avengers\";triviaid|s:1:\"8\";','2015-06-08 22:38:39'),('dfuqcgqbar8i4cjkmu4iculil3','userid|s:1:\"1\";username|s:5:\"admin\";triviaid|s:2:\"21\";trivianame|s:14:\"Dead or Alive?\";currentquestionid|s:2:\"55\";','2015-06-22 00:04:03'),('dqchdhu2uhgn4tndv5fosns0b6','','2015-06-10 23:53:14'),('dsei569usqdpceo2mtd50dho84','','2015-06-09 23:34:27'),('ei19mq67b5ccmlmd76qfhgnpm1','userid|s:1:\"1\";username|s:5:\"admin\";triviaid|s:1:\"9\";trivianame|s:12:\"big or small\";questionid|s:2:\"34\";question|s:15:\"big or small or\";questiontype|s:2:\"mc\";answerid|s:3:\"192\";','2015-06-09 23:33:58'),('eom2op0hr2738hu7ecaa753id7','','2015-06-08 20:28:24'),('est0012j5vg03l2645lusu15a0','','2015-06-08 20:28:23'),('fhhuq6qc2jpopph3co841vgap3','','2015-06-10 23:53:14'),('fj0d4qdgljj67icd18vqvos865','userid|s:2:\"55\";username|s:7:\"terence\";triviaid|s:1:\"8\";trivianame|s:14:\"Dead or Alive?\";question|s:15:\"Hillary Clinton\";questiontype|s:2:\"mc\";answerid|s:3:\"186\";','2015-06-08 22:35:54'),('ghhnkk83p7j1sk465ojtv39rb5','triviaid|N;','2014-05-04 12:34:49'),('i3h5hhqsq2cg02lpeocrj053v0','','2015-06-10 23:53:14'),('iekf69gjp7upkspf2a7vafru76','','2015-06-10 23:13:40'),('iqc5cbkc0fogsbebc70klhce94','userid|s:2:\"62\";username|s:7:\"cameron\";triviaid|s:1:\"1\";','2014-05-04 02:01:05'),('j8ldu2r3fblitjrsotkpkafrd7','userid|s:2:\"66\";username|s:2:\"Cc\";triviaid|s:1:\"5\";','2014-05-04 13:03:58'),('k7fjtji81bq08h791gtpn50gj3','','2015-06-10 21:18:13'),('mcjq92vtrrkn94maecn65ov936','userid|s:2:\"64\";username|s:7:\"iphone5\";triviaid|s:1:\"1\";','2014-05-04 13:08:40'),('oa9m6bsp55o9p2ceqql3c2dno1','','2015-06-08 21:10:58'),('pds4lp0tp4pl03jpkn2k5vgsu6','userid|s:2:\"55\";username|s:7:\"terence\";triviaid|N;','2015-06-09 22:13:28'),('rbs5lb77hmi8d3mmbdam5b74b3','userid|s:2:\"72\";username|s:9:\"lospollos\";triviaid|s:1:\"8\";','2015-06-08 21:25:03'),('rdjvvdabggqb14o8so5hj96rm1','userid|s:2:\"70\";username|s:8:\"avengers\";triviaid|s:1:\"8\";','2015-06-08 21:10:52'),('sf4v6gkngvfv6qts27leaj5mg5','','2014-05-04 12:34:50'),('t0si2pl4vj71eelqeft7i67ov7','userid|s:1:\"8\";username|s:2:\"99\";triviaid|s:2:\"12\";','2015-06-11 00:12:44'),('v7lhehbvankmlujepo3lbvlur3','','2015-06-10 23:13:40'),('vhjomkbcgjb83cqnjj0oveen31','userid|s:2:\"55\";username|s:7:\"terence\";triviaid|s:1:\"7\";trivianame|s:8:\"StAART 1\";questionid|s:2:\"21\";question|s:10:\"Bill Gates\";questiontype|s:2:\"mc\";answerid|s:2:\"74\";','2015-06-04 23:48:25'),('vo4nptnrntd1nkfefqq83d14t0','','2015-06-14 23:57:04'),('vqiodjno2hs53e3vamk6dpcp92','','2014-05-10 17:18:07');

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
  `DateTimeLastSeen` datetime DEFAULT NULL,
  PRIMARY KEY (`UserID`),
  UNIQUE KEY `NewIndex1` (`UserLogin`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin2;

/*Data for the table `core_usermaster` */

insert  into `core_usermaster`(`UserID`,`UserLogin`,`UserPassword`,`FullName`,`EmailAddress`,`Activated`,`ActivationCode`,`PasswordResetCode`,`ContactDetails`,`AccountStatus`,`DateTimeCreated`,`Timezone`,`APIAuthCode`,`LastLogin`,`LoginCount`,`DateTimeLastSeen`) values (1,'admin@localhost.com','93574670da3ddf3179827a0685ff80b0','admin',NULL,'y',NULL,NULL,NULL,'Active',NULL,NULL,NULL,NULL,37,'2015-06-23 23:19:40'),(2,'xmen@localhost.com','aa1ea007f07aa246732b3c633fc2ad3c','xmen',NULL,'y','b2e602004e526a7e3467fb344226ead1',NULL,NULL,'Active','2015-06-10 21:36:56',NULL,'0997111c279427947ce5f2ad18b3f2a5',NULL,0,'2015-06-10 22:49:22'),(3,'a@localhost.com','0cc175b9c0f1b6a831c399e269772661','a',NULL,'y','2ef4e3b8a8e3421d6b8308836ed0e12e',NULL,NULL,'Active','2015-06-10 23:04:07',NULL,'43defb5ddfa70505e104bf8c81b3706d',NULL,0,'2015-06-10 23:04:43'),(4,'b@localhost.com','92eb5ffee6ae2fec3ad71c777531578f','b',NULL,'y','3d1f3a0583a41542eceae466eda82a4f',NULL,NULL,'Active','2015-06-10 23:05:51',NULL,'b32ac46b6b412f65c775d560297b275c',NULL,0,'2015-06-10 23:06:18'),(5,'c@localhost.com','4a8a08f09d37b73795649038408b5f33','c',NULL,'y','7d7ae403867af7db899918c17243c44f',NULL,NULL,'Active','2015-06-10 23:06:18',NULL,'2f02bb144b41d66e092e8369e34537f4',NULL,0,'2015-06-10 23:07:17'),(6,'d@localhost.com','8277e0910d750195b448797616e091ad','d',NULL,'y','65f52ee90382be3ce27a4a2703b41edd',NULL,NULL,'Active','2015-06-10 23:07:17',NULL,'edbacd7a8ab442e65ce2ad82b7da03af',NULL,0,'2015-06-10 23:08:35'),(7,'55@localhost.com','b53b3a3d6ab90ce0268229151c9bde11','55',NULL,'y','3a8c440e2b1f1aec443a495654874841',NULL,NULL,'Active','2015-06-10 23:09:22',NULL,'09065b041678128b356854aee2230a18',NULL,0,'2015-06-11 00:09:43'),(8,'99@localhost.com','ac627ab1ccbdb62ec96e702f07f6425b','99',NULL,'y','cef304de0035887e62dff6f4108869ed',NULL,NULL,'Active','2015-06-10 23:47:02',NULL,'d8e12fbf63bca4070978006f6d0100c5',NULL,0,'2015-06-22 21:43:53'),(9,'selennium@localhost.com','63b8ae456efd778e309ced4087832132','selennium',NULL,'y','dea2a02970c9f2462029a340e4abd6b8',NULL,NULL,'Active','2015-06-14 23:31:34',NULL,'56bed89f7915845252f90933a0d7ccb4',NULL,0,'2015-06-15 00:07:41'),(10,'selennium_player@localhost.com','f354255204d68ebcefba849ad2fc3147','selennium_player',NULL,'y','eebeaabb55709b7480487e0b6901601c',NULL,NULL,'Active','2015-06-14 23:51:18',NULL,'4656b0deb3ed2b302255aa74ff94e05b',NULL,0,'2015-06-15 00:05:05');

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

insert  into `core_userroles`(`UserID`,`RoleID`) values (2,2),(3,2),(4,2),(5,2),(6,2),(7,2),(8,2),(9,2),(10,2);

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
  `TriviaCode` varchar(30) DEFAULT NULL,
  `DateTimeEdited` datetime DEFAULT NULL,
  `UserIDEdited` int(11) DEFAULT NULL,
  PRIMARY KEY (`TriviaID`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

/*Data for the table `trivia_master` */

insert  into `trivia_master`(`TriviaID`,`TriviaName`,`UserLimit`,`PublicPrivate`,`DateTimeCreated`,`Status`,`UserIDCreated`,`TriviaCode`,`DateTimeEdited`,`UserIDEdited`) values (17,'Selennium quiz',0,'public','2015-06-14 23:55:24','open',9,NULL,NULL,NULL),(18,'123456',4,'public','2015-06-15 22:55:07','open',1,'4567789','2015-06-15 23:22:18',1),(19,'1234',3,'private','2015-06-15 23:11:10','deleted',1,'45678',NULL,NULL),(20,'1234',3,'private','2015-06-15 23:12:12','deleted',1,'45678','2015-06-15 23:18:41',1),(21,'Dead or Alive?',1,'public','2015-06-15 23:32:19','open',1,'deadoralive',NULL,NULL),(22,'Best albums of all time',1,'public','2015-06-22 22:13:07','open',1,'',NULL,NULL);

/*Table structure for table `trivia_master_players` */

DROP TABLE IF EXISTS `trivia_master_players`;

CREATE TABLE `trivia_master_players` (
  `TriviaID` int(5) DEFAULT NULL,
  `UserID` int(5) DEFAULT NULL,
  `DateTimeStarted` datetime DEFAULT NULL,
  `DateTimeLastSeen` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `trivia_master_players` */

insert  into `trivia_master_players`(`TriviaID`,`UserID`,`DateTimeStarted`,`DateTimeLastSeen`) values (21,1,NULL,NULL),(21,2,NULL,NULL),(21,3,NULL,NULL),(21,4,NULL,NULL),(21,5,NULL,NULL);

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
  PRIMARY KEY (`AnswerID`),
  KEY `FK_trivia_question_answers` (`QuestionID`),
  CONSTRAINT `FK_trivia_question_answers` FOREIGN KEY (`QuestionID`) REFERENCES `trivia_question_master` (`QuestionID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=275 DEFAULT CHARSET=latin1;

/*Data for the table `trivia_question_answers` */

insert  into `trivia_question_answers`(`AnswerID`,`QuestionID`,`Answer`,`Ordering`,`CorrectAnswer`) values (256,53,'The cure for mercury',1,'y'),(257,53,'Some other answer',2,'n'),(258,53,'Another answer',3,'n'),(259,53,'Yet another answer',4,'n'),(260,54,'Dead',1,'y'),(261,54,'Alive',2,'n'),(262,55,'Dead',1,'n'),(263,55,'Alive',2,'y'),(264,56,'Dead',1,'n'),(265,56,'Alive',2,'y'),(266,57,'Pink Floyd',1,'n'),(267,57,'Beatles',2,'n'),(268,57,'Eagles',3,'n'),(269,57,'ACDC',4,'y'),(270,58,'Michael Jackson',1,'y'),(271,58,'Michael',2,'y'),(272,58,'Jackson',3,'y'),(273,58,'MK',4,'y'),(274,58,'Wacko Jacko',5,'y');

/*Table structure for table `trivia_question_attachments` */

DROP TABLE IF EXISTS `trivia_question_attachments`;

CREATE TABLE `trivia_question_attachments` (
  `AttachmentID` int(5) NOT NULL AUTO_INCREMENT,
  `QuestionID` int(5) DEFAULT NULL,
  `Filetype` varchar(20) DEFAULT NULL,
  `Filesize` varchar(20) DEFAULT NULL,
  `Filename` varchar(20) DEFAULT NULL,
  `Attachment` longblob,
  PRIMARY KEY (`AttachmentID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `trivia_question_attachments` */

/*Table structure for table `trivia_question_master` */

DROP TABLE IF EXISTS `trivia_question_master`;

CREATE TABLE `trivia_question_master` (
  `QuestionID` int(5) NOT NULL AUTO_INCREMENT,
  `TriviaID` int(5) DEFAULT NULL,
  `Question` varchar(255) DEFAULT NULL,
  `Points` smallint(2) DEFAULT NULL,
  `QuestionType` varchar(10) DEFAULT NULL,
  `Status` varchar(10) DEFAULT 'closed',
  `BigScreenStatus` varchar(10) DEFAULT 'closed',
  PRIMARY KEY (`QuestionID`),
  KEY `FK_trivia_question_master` (`TriviaID`),
  CONSTRAINT `FK_trivia_question_master` FOREIGN KEY (`TriviaID`) REFERENCES `trivia_master` (`TriviaID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=latin1;

/*Data for the table `trivia_question_master` */

insert  into `trivia_question_master`(`QuestionID`,`TriviaID`,`Question`,`Points`,`QuestionType`,`Status`,`BigScreenStatus`) values (53,17,'Why the name selennium?',0,'mc','closed','closed'),(54,21,'Michael Jackson',1,'mc','open','closed'),(55,21,'Obama',1,'mc','open','closed'),(56,21,'Zuma',1,'mc','open','open'),(57,22,'Who was the artist that released the album &quot;Back in Black&quot;?',4,'mc','closed','open'),(58,22,'Who sang &quot;Billie Jean&quot;?',5,'sa','closed','closed');

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
  PRIMARY KEY (`UserAnswerID`),
  KEY `FK_trivia_user_answers` (`QuestionID`),
  CONSTRAINT `FK_trivia_user_answers` FOREIGN KEY (`QuestionID`) REFERENCES `trivia_question_master` (`QuestionID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `trivia_user_answers` */

insert  into `trivia_user_answers`(`UserAnswerID`,`QuestionID`,`Answer`,`Correct`,`Points`,`UserID`,`DateTimeAnswered`) values (1,54,'Dead','y',1,1,'2015-06-15 23:43:32'),(2,55,'Alive','y',1,1,'2015-06-23 23:19:23');

/* Procedure structure for procedure `sp_core_organisation_exists` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_core_organisation_exists` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`bonzerzprdquiz`@`%` PROCEDURE `sp_core_organisation_exists`(
	IN pOrganisationName VARCHAR(255)
	)
BEGIN	
	
	SELECT OrganisationID FROM core_organisation_master WHERE OrganisationName = pOrganisationName;
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_core_organisation_master_add` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_core_organisation_master_add` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`bonzerzprdquiz`@`%` PROCEDURE `sp_core_organisation_master_add`(IN pAPIAuthCode VARCHAR(100),IN pOrganisationName VARCHAR(255))
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

/*!50003 CREATE DEFINER=`bonzerzprdquiz`@`%` PROCEDURE `sp_core_organisation_user_add`(IN pAPIAuthCode VARCHAR(100),IN pOrganisationID INT(5),IN pUserID INT(5))
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

/*!50003 CREATE DEFINER=`bonzerzprdquiz`@`%` PROCEDURE `sp_core_userauth`(IN pUserLogin varchar(50), IN pUserPassword varchar(50))
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

/*!50003 CREATE DEFINER=`bonzerzprdquiz`@`%` PROCEDURE `sp_core_usermaster_activate`(IN pCode VARCHAR(100))
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

/*!50003 CREATE DEFINER=`bonzerzprdquiz`@`%` PROCEDURE `sp_core_usermaster_add`(in pUserLogin VARCHAR(50),
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

/*!50003 CREATE DEFINER=`bonzerzprdquiz`@`%` PROCEDURE `sp_core_usermaster_exists`(
	IN pUserLogin VARCHAR(50)
	)
BEGIN	
	
	SELECT COUNT(*) as Total FROM core_usermaster WHERE UserLogin = pUserLogin;
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_core_usermaster_get_pwcode` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_core_usermaster_get_pwcode` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`bonzerzprdquiz`@`%` PROCEDURE `sp_core_usermaster_get_pwcode`(IN pCode VARCHAR(100))
BEGIN
	SELECT UserID
	FROM core_usermaster
	WHERE PasswordResetCode = pCode;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_core_usermaster_lastlogin` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_core_usermaster_lastlogin` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`bonzerzprdquiz`@`%` PROCEDURE `sp_core_usermaster_lastlogin`(in pUserLogin VARCHAR(50))
BEGIN
	UPDATE core_usermaster SET LastLogin = SYSDATE(), LoginCount = LoginCount+1 WHERE UserLogin = pUserLogin;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_core_usermaster_pw_code` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_core_usermaster_pw_code` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`bonzerzprdquiz`@`%` PROCEDURE `sp_core_usermaster_pw_code`(IN pUserLogin varchar(100), in pCode VARCHAR(100))
BEGIN	
	UPDATE core_usermaster SET PasswordResetCode = pCode WHERE UserLogin = pUserLogin;	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_core_userrole_add` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_core_userrole_add` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`bonzerzprdquiz`@`%` PROCEDURE `sp_core_userrole_add`(IN pUserID INT(5),IN pRoleID INT(5))
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

/*!50003 CREATE DEFINER=`bonzerzprdquiz`@`%` PROCEDURE `sp_mq_count_queue_type`(IN pType VARCHAR(15))
BEGIN
	SELECT count(*) as total FROM core_mq_master WHERE type = pType AND status = 'new';
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_mq_detail_insert` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_mq_detail_insert` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`bonzerzprdquiz`@`%` PROCEDURE `sp_mq_detail_insert`(IN pMQID INT(5),IN pName VARCHAR(255),IN pValue TEXT)
BEGIN
	INSERT INTO core_mq_detail (MQID,Name,Value) VALUES (pMQID,pName,pValue);
	SELECT last_insert_id() as id;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_mq_get_messages` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_mq_get_messages` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`bonzerzprdquiz`@`%` PROCEDURE `sp_mq_get_messages`(IN pType VARCHAR(15))
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

/*!50003 CREATE DEFINER=`bonzerzprdquiz`@`%` PROCEDURE `sp_mq_log`(IN pMQID INT(5), IN pDescription VARCHAR(255))
BEGIN
	INSERT INTO core_mq_log (MQID,Description,DateTimeLog) VALUES (pMQID,pDescription,sysdate());
	SELECT last_insert_id() AS id;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_mq_master_insert` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_mq_master_insert` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`bonzerzprdquiz`@`%` PROCEDURE `sp_mq_master_insert`(IN pType VARCHAR(15))
BEGIN
	INSERT INTO core_mq_master (Type,DateTimeInsert) VALUES (pType,sysdate());
	SELECT last_insert_id() as id;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_mq_message_complete` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_mq_message_complete` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`bonzerzprdquiz`@`%` PROCEDURE `sp_mq_message_complete`(IN pMQID INT(5))
BEGIN
	UPDATE core_mq_master SET status = 'completed' WHERE MQID = pMQID;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_mq_message_details` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_mq_message_details` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`bonzerzprdquiz`@`%` PROCEDURE `sp_mq_message_details`(IN pMQID INT(5))
BEGIN
SELECT *
	FROM core_mq_detail
	WHERE MQID = pMQID;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_trivia_answers` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_trivia_answers` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`bonzerzprdquiz`@`%` PROCEDURE `sp_trivia_answers`(IN pQuestionID INT(5))
BEGIN
	SELECT AnswerID, Answer
	FROM trivia_question_answers
	WHERE QuestionID = pQuestionID;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_trivia_bigscreen_current_question` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_trivia_bigscreen_current_question` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `sp_trivia_bigscreen_current_question`(IN pTriviaID INT(5))
BEGIN
	SELECT QuestionID
	FROM trivia_question_master
	WHERE TriviaID = pTriviaID
	AND BigScreenStatus = 'open';
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_trivia_bigscreen_open_question` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_trivia_bigscreen_open_question` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `sp_trivia_bigscreen_open_question`(IN pUserID INT(5), IN pTriviaID INT(5),IN pQuestionID INT(5))
BEGIN
	
	UPDATE trivia_question_master
	SET BigScreenStatus = 'closed'
	WHERE TriviaID = pTriviaID
	AND TriviaID IN (SELECT TriviaID FROM trivia_master WHERE TriviaID = pTriviaID AND UserIDCreated = pUserID);
	UPDATE trivia_question_master
	SET BigScreenStatus = 'open'
	WHERE TriviaID = pTriviaID
	AND QuestionID = pQuestionID
	AND TriviaID IN (SELECT TriviaID FROM trivia_master WHERE TriviaID = pTriviaID AND UserIDCreated = pUserID);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_trivia_browse` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_trivia_browse` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`bonzerzprdquiz`@`%` PROCEDURE `sp_trivia_browse`()
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

/*!50003 CREATE DEFINER=`bonzerzprdquiz`@`%` PROCEDURE `sp_trivia_browse_my`(IN pUserID INT(5))
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

/*!50003 CREATE DEFINER=`bonzerzprdquiz`@`%` PROCEDURE `sp_trivia_halloffame`()
BEGIN
SELECT cu.UserID, cu.FullName, SUM(tua.Points) AS total
FROM trivia_user_answers tua, core_usermaster cu
WHERE tua.UserID = cu.UserID
GROUP BY tua.UserID
ORDER BY total DESC;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_trivia_halloffame_details` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_trivia_halloffame_details` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`bonzerzprdquiz`@`%` PROCEDURE `sp_trivia_halloffame_details`(IN pUserID INT(5))
BEGIN
SELECT b.QuestionID, b.Question, a.Answer, a.Correct, a.Points
FROM trivia_user_answers a, trivia_question_master b
WHERE a.UserID = pUserID
AND a.QuestionID = b.QuestionID;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_trivia_master_add` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_trivia_master_add` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`bonzerzprdquiz`@`%` PROCEDURE `sp_trivia_master_add`(IN pTriviaName VARCHAR(255),IN pTriviaCode VARCHAR(30),IN pUserLimit INT(5), IN pPublicPrivate VARCHAR(10), IN pUserIDCreated INT(5))
BEGIN
	INSERT INTO trivia_master (TriviaName,TriviaCode,UserLimit,PublicPrivate,DateTimeCreated,UserIDCreated)
	VALUES (pTriviaName,pTriviaCode,pUserLimit,pPublicPrivate,sysdate(),pUserIDCreated);
	SELECT Last_Insert_ID() as TriviaID;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_trivia_master_browse` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_trivia_master_browse` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`bonzerzprdquiz`@`%` PROCEDURE `sp_trivia_master_browse`(IN pTriviaID INT(5))
BEGIN
	SELECT *
	FROM trivia_master
	WHERE TriviaID = pTriviaID;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_trivia_master_count_new` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_trivia_master_count_new` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`bonzerzprdquiz`@`%` PROCEDURE `sp_trivia_master_count_new`(IN pTriviaID INT(5))
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

/*!50003 CREATE DEFINER=`bonzerzprdquiz`@`%` PROCEDURE `sp_trivia_master_delete`(IN pUserID INT(5), IN pTriviaID INT(5))
BEGIN
	UPDATE trivia_master
	SET STATUS = 'deleted'
	WHERE TriviaID = pTriviaID;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_trivia_master_edit` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_trivia_master_edit` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`bonzerzprdquiz`@`%` PROCEDURE `sp_trivia_master_edit`(IN pTriviaID INT(5), IN pTriviaName VARCHAR(255),IN pTriviaCode VARCHAR(30),IN pUserLimit INT(5), IN pPublicPrivate VARCHAR(10), IN pUserIDEdited INT(5))
BEGIN
	UPDATE trivia_master 
	SET TriviaName = pTriviaName,
	TriviaCode = pTriviaCode,
	UserLimit = pUserLimit,
	PublicPrivate = pPublicPrivate,
	DateTimeEdited = sysdate(),
	UserIDEdited = pUserIDEdited
	WHERE TriviaID = pTriviaID;
	SELECT pTriviaID as TriviaID;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_trivia_master_halloffame` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_trivia_master_halloffame` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`bonzerzprdquiz`@`%` PROCEDURE `sp_trivia_master_halloffame`(IN pTriviaID INT(5))
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

/* Procedure structure for procedure `sp_trivia_master_id_from_code` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_trivia_master_id_from_code` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `sp_trivia_master_id_from_code`(IN pTriviaCode VARCHAR(30))
BEGIN
	SELECT TriviaID
	FROM trivia_master
	WHERE TriviaCode = pTriviaCode;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_trivia_master_questions_browse` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_trivia_master_questions_browse` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`bonzerzprdquiz`@`%` PROCEDURE `sp_trivia_master_questions_browse`(IN pTriviaID INT(5))
BEGIN
	SELECT b.QuestionID, b.Question
	FROM trivia_master a, trivia_question_master b
	WHERE a.TriviaID = pTriviaID
	AND a.TriviaID = b.TriviaID;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_trivia_online_users` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_trivia_online_users` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `sp_trivia_online_users`()
BEGIN
SELECT FullName, CONCAT(ROUND((SYSDATE() - DateTimeLastSeen) / 60),' minutes ago') AS lastseen
FROM core_usermaster
WHERE DateTimeLastSeen > DATE_ADD(SYSDATE(), INTERVAL - 10 MINUTE);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_trivia_questions` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_trivia_questions` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`bonzerzprdquiz`@`%` PROCEDURE `sp_trivia_questions`(IN pTriviaID INT(5))
BEGIN
	SELECT QuestionID, Question, Status, BigScreenStatus
	FROM trivia_question_master tqm
	WHERE TriviaID = pTriviaID	
	ORDER BY QuestionID;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_trivia_questions_bigscreen` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_trivia_questions_bigscreen` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`bonzerzprdquiz`@`%` PROCEDURE `sp_trivia_questions_bigscreen`(IN pTriviaID INT(5))
BEGIN
	SELECT QuestionID, Question
	FROM trivia_question_master tqm
	WHERE TriviaID = pTriviaID	
	AND BigScreenStatus = 'open'
	ORDER BY QuestionID LIMIT 1;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_trivia_questions_my` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_trivia_questions_my` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`bonzerzprdquiz`@`%` PROCEDURE `sp_trivia_questions_my`(IN pUserID INT(5), IN pTriviaID INT(5))
BEGIN
	SELECT QuestionID, Question, Status
	FROM trivia_question_master tqm
	WHERE TriviaID = pTriviaID
	AND QuestionID NOT IN (SELECT QuestionID FROM trivia_user_answers WHERE UserID = pUserID)	
	AND Status = 'open'
	ORDER BY QuestionID LIMIT 1;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_trivia_question_answer` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_trivia_question_answer` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`bonzerzprdquiz`@`%` PROCEDURE `sp_trivia_question_answer`(IN pQuestionID INT(5),IN pAnswer VARCHAR(100))
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

/*!50003 CREATE DEFINER=`bonzerzprdquiz`@`%` PROCEDURE `sp_trivia_question_answered`(IN pUserID INT(5),IN pQuestionID INT(5))
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

/*!50003 CREATE DEFINER=`bonzerzprdquiz`@`%` PROCEDURE `sp_trivia_question_answer_add`(IN pQuestionID INT(5),IN pAnswer VARCHAR(100), IN pOrdering TINYINT(1),IN pCorrectAnswer CHAR(1))
BEGIN
	INSERT INTO trivia_question_answers (QuestionID,Answer,Ordering,CorrectAnswer)
	VALUES (pQuestionID,pAnswer,pOrdering,pCorrectAnswer);
	SELECT Last_Insert_ID() as AnswerID;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_trivia_question_answer_browse` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_trivia_question_answer_browse` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`bonzerzprdquiz`@`%` PROCEDURE `sp_trivia_question_answer_browse`(IN pQuestionID INT(5))
BEGIN
	SELECT *
	FROM trivia_question_answers
	WHERE QuestionID = pQuestionID;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_trivia_question_answer_delete` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_trivia_question_answer_delete` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`bonzerzprdquiz`@`%` PROCEDURE `sp_trivia_question_answer_delete`(IN pQuestionID INT(5))
BEGIN
	DELETE FROM trivia_question_answers
	WHERE QuestionID = pQuestionID;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_trivia_question_count` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_trivia_question_count` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`bonzerzprdquiz`@`%` PROCEDURE `sp_trivia_question_count`(IN pTriviaID INT(5))
BEGIN
	SELECT COUNT(*) AS total
	FROM trivia_question_master
	WHERE TriviaID = pTriviaID;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_trivia_question_get_answer` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_trivia_question_get_answer` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`bonzerzprdquiz`@`%` PROCEDURE `sp_trivia_question_get_answer`(IN pQuestionID INT(5))
BEGIN
SELECT Answer
FROM trivia_question_answers
WHERE CorrectAnswer = 'y'
AND QuestionID = pQuestionID
ORDER BY AnswerID
LIMIT 1;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_trivia_question_master_add` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_trivia_question_master_add` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`bonzerzprdquiz`@`%` PROCEDURE `sp_trivia_question_master_add`(IN pTriviaID INT(5),IN pQuestion VARCHAR(255), IN pPoints SMALLINT(2),IN pQuestionType VARCHAR(10))
BEGIN
	INSERT INTO trivia_question_master (TriviaID,Question,Points,QuestionType)
	VALUES (pTriviaID,pQuestion,pPoints,pQuestionType);
	SELECT Last_Insert_ID() as QuestionID;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_trivia_question_master_browse` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_trivia_question_master_browse` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`bonzerzprdquiz`@`%` PROCEDURE `sp_trivia_question_master_browse`(IN pQuestionID INT(5))
BEGIN
	SELECT *
	FROM trivia_question_master
	WHERE QuestionID = pQuestionID;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_trivia_question_master_delete` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_trivia_question_master_delete` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`bonzerzprdquiz`@`%` PROCEDURE `sp_trivia_question_master_delete`(IN pTriviaID INT(5), IN pQuestionID INT(5))
BEGIN	
	DELETE FROM trivia_question_master 
	WHERE QuestionID = pQuestionID
	AND TriviaID = pTriviaID;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_trivia_question_master_edit` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_trivia_question_master_edit` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`bonzerzprdquiz`@`%` PROCEDURE `sp_trivia_question_master_edit`(IN pTriviaID INT(5),IN pQuestionID INT(5),IN pQuestion VARCHAR(255), IN pPoints SMALLINT(2),IN pQuestionType VARCHAR(10))
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

/* Procedure structure for procedure `sp_trivia_question_players_unanswered` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_trivia_question_players_unanswered` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `sp_trivia_question_players_unanswered`(IN pTriviaID INT(5), IN pQuestionID INT(5))
BEGIN
SELECT DISTINCT(d.FullName), b.Question
FROM trivia_master a, trivia_question_master b, trivia_master_players c, core_usermaster d
WHERE a.TriviaID = 21
AND b.QuestionID = 54
AND a.TriviaID = b.TriviaID
AND b.TriviaID = c.TriviaID
AND c.UserID NOT IN (SELECT e.UserID FROM trivia_user_answers e WHERE e.QuestionID = b.QuestionID)
AND c.UserID = d.UserID;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_trivia_question_status_edit` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_trivia_question_status_edit` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`bonzerzprdquiz`@`%` PROCEDURE `sp_trivia_question_status_edit`(In pUserID INT(5),IN pQuestionID INT(5),IN pStatus VARCHAR(10))
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

/*!50003 CREATE DEFINER=`bonzerzprdquiz`@`%` PROCEDURE `sp_trivia_user_answer`(IN pQuestionID INT(5),IN pAnswer VARCHAR(100),IN pCorrect CHAR(1),IN pPoints smallint(2),IN pUserID INT(5))
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