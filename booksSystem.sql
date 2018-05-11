/*
SQLyog v10.2 
MySQL - 5.5.56 : Database - booksSystem
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`booksSystem` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `booksSystem`;

/*Table structure for table `book_info` */

DROP TABLE IF EXISTS `book_info`;

CREATE TABLE `book_info` (
  `book_id` int(10) NOT NULL AUTO_INCREMENT,
  `book_code` varchar(255) NOT NULL,
  `book_name` varchar(255) NOT NULL,
  `book_type` int(2) NOT NULL,
  `book_atuthor` varchar(255) NOT NULL,
  `publish_press` varchar(255) NOT NULL,
  `publish_date` datetime NOT NULL,
  `is_borrow` int(2) NOT NULL,
  `createdBy` varchar(255) NOT NULL,
  `creation_time` datetime NOT NULL,
  `last_updatetime` datetime NOT NULL,
  PRIMARY KEY (`book_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

/*Data for the table `book_info` */

insert  into `book_info`(`book_id`,`book_code`,`book_name`,`book_type`,`book_atuthor`,`publish_press`,`publish_date`,`is_borrow`,`createdBy`,`creation_time`,`last_updatetime`) values (1,'qwfwa124','java编程思想',3,'god','zyf出版社','2014-02-04 20:17:25',0,'zyf','2011-03-31 20:18:00','2014-06-17 20:18:10'),(2,'dfq2r1','java入门到入土',1,'zyf','zyf出版社','2014-03-04 20:17:25',1,'zyf','2011-03-31 20:18:00','2014-06-17 20:18:10'),(3,'f1111111er','MySQL入门到删库跑路',2,'cc','zyf出版社','2014-03-04 20:17:25',0,'zyf','2011-04-28 20:18:00','2014-06-17 20:18:10'),(4,'fqwef2','H5入门到要饭',3,'cc','zyf出版社','2014-03-04 20:17:25',0,'zyf','2011-04-03 20:18:00','2014-06-17 20:18:10'),(5,'rt2','Vue.js入门到入狱',2,'qc','zyf出版社','2014-03-04 20:17:25',1,'zyf','2011-04-01 20:18:00','2014-06-17 20:18:10'),(6,'vdsg2g342','颈椎病康复指南',1,'zyp','zyf出版社','2014-03-04 20:17:25',0,'zyf','2011-04-05 20:18:00','2014-06-17 20:18:10'),(7,'asfa','asdasdasdasd',1,'zyp','zyf出版社','2014-03-04 20:17:25',0,'zyf','2011-04-05 20:18:00','2014-06-17 20:18:10'),(8,'asfa','asdasdasdasd',1,'zyp','zyf出版社','2014-03-04 20:17:25',0,'zyf','2011-04-05 20:18:00','2014-06-17 20:18:10'),(9,'asfa','asdasdasdasd',1,'zyp','zyf出版社','2014-03-04 20:17:25',0,'zyf','2011-04-05 20:18:00','2014-06-17 20:18:10'),(10,'asfa','asdasdasdasd',1,'zyp','zyf出版社','2014-03-04 20:17:25',0,'zyf','2011-04-05 20:18:00','2014-06-17 20:18:10'),(11,'asfaascc','asdasdasdasdcc',2,'zypcc','zyf出版社cc','2014-03-04 20:17:25',0,'zyfcc','2011-04-05 20:18:00','2014-06-17 20:18:19'),(12,'xjgb','性价比高',3,'周宇峰z','zz出版社z','2014-03-04 00:00:01',0,'哈哈z','2014-03-04 00:00:01','2014-03-04 00:00:01'),(14,'asa','1234',3,'asfqsf','qwf1','2018-12-12 12:12:25',0,'zyfeeeee33333','2018-12-12 12:12:27','2018-12-12 12:12:29'),(15,'fqwfssd','哈哈哈',1,'周宇峰','qwf1','2018-12-12 12:12:25',1,'zyfeeeee','2018-12-12 12:12:27','2018-12-14 12:12:27');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_code` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `gender` varchar(7) NOT NULL,
  `register_time` datetime NOT NULL,
  `last_logintime` datetime NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_code` (`user_code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `users` */

insert  into `users`(`user_id`,`user_code`,`password`,`email`,`gender`,`register_time`,`last_logintime`) values (1,'1111111','111111','zxc@qq.com','男','2018-02-01 20:10:51','2018-02-02 20:10:55'),(2,'2222222','222222','asd@qq.com','女','2018-02-03 20:11:16','2018-02-04 20:11:19'),(3,'3333333','333333','qwe@qq.com','男','2018-02-06 20:11:42','2018-02-07 20:11:48');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
