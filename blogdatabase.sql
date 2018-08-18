/*
SQLyog Enterprise - MySQL GUI v8.02 RC
MySQL - 5.5.24-log : Database - blog
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`blog` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `blog`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `adminid` int(10) NOT NULL AUTO_INCREMENT,
  `adminname` varchar(100) NOT NULL,
  `adminemail` varchar(100) NOT NULL,
  `adminpassword` int(5) NOT NULL,
  PRIMARY KEY (`adminid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

insert  into `admin`(`adminid`,`adminname`,`adminemail`,`adminpassword`) values (1,'admin','Simran@gmail.com',1234);

/*Table structure for table `comments` */

DROP TABLE IF EXISTS `comments`;

CREATE TABLE `comments` (
  `commentid` int(20) NOT NULL AUTO_INCREMENT,
  `commentpostid` int(20) DEFAULT NULL,
  `commentauthor` varchar(200) DEFAULT NULL,
  `commentdate` date DEFAULT NULL,
  `commentcontent` text,
  `commentapproved` tinyint(1) DEFAULT NULL,
  `commentauthorid` int(20) DEFAULT NULL,
  PRIMARY KEY (`commentid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `comments` */

insert  into `comments`(`commentid`,`commentpostid`,`commentauthor`,`commentdate`,`commentcontent`,`commentapproved`,`commentauthorid`) values (1,7,'Punzz','2018-08-15','good',NULL,4),(2,7,'Simran','2018-08-15','well said',NULL,1),(3,6,'sk','2018-08-15','well said!!!',NULL,3),(4,2,'sk','2018-08-15','nice one...',NULL,3),(5,8,'Simran','2018-08-15','klk;l',NULL,1),(6,3,'Simran','2018-08-16','good',NULL,1),(7,1,'ANKUSH','2018-08-16','good',NULL,7);

/*Table structure for table `posts` */

DROP TABLE IF EXISTS `posts`;

CREATE TABLE `posts` (
  `postid` int(20) NOT NULL AUTO_INCREMENT,
  `postdate` date NOT NULL,
  `posttitle` varchar(200) NOT NULL,
  `postcontent` longtext NOT NULL,
  `poststatus` tinyint(2) DEFAULT '1',
  `postlikecount` int(100) DEFAULT '0',
  `postcommentcount` int(200) DEFAULT '0',
  `postauthorid` int(20) DEFAULT NULL,
  `postauthor` varchar(200) DEFAULT NULL,
  `postdislikecount` int(100) DEFAULT '0',
  PRIMARY KEY (`postid`),
  KEY `FK_posts` (`postauthorid`),
  CONSTRAINT `FK_posts` FOREIGN KEY (`postauthorid`) REFERENCES `user` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `posts` */

insert  into `posts`(`postid`,`postdate`,`posttitle`,`postcontent`,`poststatus`,`postlikecount`,`postcommentcount`,`postauthorid`,`postauthor`,`postdislikecount`) values (1,'2018-08-13','gst','hjghgkjhjh',1,1,1,1,'Simran',0),(2,'2018-08-13','Friends','Friends are those who fades away sorrow and brings a light of happiness in your life.\r\nFriends means a family of companions who teases you, love you,fight with you, fight for you.',1,1,1,1,'Simran',0),(3,'2018-08-13','Book reading','roe;ahieohoraije[iuv[rotvoi[rq vmotir',1,1,1,3,'Sk',0),(4,'2018-08-13','Politics','nvrypeoypnqvcireyncrioycyqehnch',1,0,0,4,'Punzz',0),(5,'2018-08-13','hjvhg','kmlkm',1,0,0,4,'Punzz',0),(6,'2018-08-13','Family','family !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!1',1,1,1,1,'Simran',0),(7,'2018-08-13','ha;kkdkj','kvjeks;jgkej',1,0,2,4,'Punzz',0),(8,'2018-08-13','iugiuhuhoihoi','fyhgiugih',1,1,1,3,'sk',0),(9,'2018-08-16','simran pagal','in grey dress pagal simran sitting beside me',1,0,0,7,'ANKUSH',0);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `userid` int(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(200) NOT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `password` varchar(8) NOT NULL,
  `useremail` varchar(100) NOT NULL,
  `nofposts` int(30) DEFAULT '0',
  `status` int(1) DEFAULT '0',
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`userid`,`username`,`gender`,`password`,`useremail`,`nofposts`,`status`) values (1,'Simran','female','1234','simran@gmail.com',3,1),(3,'sk','Female','1111','sk@gmail.com',2,1),(4,'Punzz','Male','1212','puneet@gmail.com',3,1),(5,'rk','Male','1234','rk@gmail.com',0,0),(7,'ANKUSH','Male','1234567','thapagyanish111@gmail.com',1,1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
