/*
SQLyog Trial v12.01 (64 bit)
MySQL - 5.7.16 : Database - englishload
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`englishload` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `englishload`;

/*Table structure for table `article` */

DROP TABLE IF EXISTS `article`;

CREATE TABLE `article` (
  `article_id` int(4) NOT NULL AUTO_INCREMENT,
  `content` text,
  `title` varchar(50) DEFAULT NULL,
  `author` varchar(50) DEFAULT NULL,
  `uptime` datetime DEFAULT NULL,
  PRIMARY KEY (`article_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `article` */

insert  into `article`(`article_id`,`content`,`title`,`author`,`uptime`) values (1,'精美文章一','文章一','aaa','2017-01-12 00:00:00'),(2,'精美文章二','文章二','bbb','2017-01-12 00:00:00');

/*Table structure for table `bulletin` */

DROP TABLE IF EXISTS `bulletin`;

CREATE TABLE `bulletin` (
  `bulletin_id` int(4) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`bulletin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `bulletin` */

insert  into `bulletin`(`bulletin_id`,`title`,`content`,`date`) values (2,'有新公告了','听力模块','2017-01-12 00:00:00'),(3,'xc','xc','2017-01-15 23:18:58'),(4,'cv','cv','2017-01-15 23:19:37'),(5,'','','2017-01-15 23:21:32');

/*Table structure for table `comment` */

DROP TABLE IF EXISTS `comment`;

CREATE TABLE `comment` (
  `comment_id` int(4) NOT NULL,
  `commentext` text,
  `commentime` datetime DEFAULT NULL,
  `user_id` int(4) DEFAULT NULL,
  `course_id` int(4) DEFAULT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `user_id` (`user_id`),
  KEY `course_id` (`course_id`),
  CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`),
  CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `comment` */

/*Table structure for table `course` */

DROP TABLE IF EXISTS `course`;

CREATE TABLE `course` (
  `course_id` int(4) NOT NULL AUTO_INCREMENT,
  `coursename` varchar(50) DEFAULT NULL,
  `coursetime` datetime DEFAULT NULL,
  `teacher` varchar(50) DEFAULT NULL,
  `clickrate` int(8) DEFAULT NULL,
  `category_id` int(4) DEFAULT NULL,
  `coursecontent` varchar(50) DEFAULT NULL,
  `courseduration` int(50) DEFAULT NULL,
  PRIMARY KEY (`course_id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `category_id` FOREIGN KEY (`category_id`) REFERENCES `coursecategory` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `course` */

insert  into `course`(`course_id`,`coursename`,`coursetime`,`teacher`,`clickrate`,`category_id`,`coursecontent`,`courseduration`) values (1,'王一口语','2017-01-12 00:00:00','王一',0,1,NULL,10),(2,'王二听力','2017-01-12 00:00:00','王二',0,2,NULL,10),(3,'陈一单词','2017-01-12 00:00:00','陈一',0,3,NULL,10),(4,'吴一写作','2017-01-12 00:00:00','吴一',0,4,NULL,11),(5,'陶一语法','2017-01-12 00:00:00','陶一',0,5,NULL,12),(6,'陈二阅读','2017-01-12 00:00:00','陈二',0,6,NULL,20);

/*Table structure for table `course_user` */

DROP TABLE IF EXISTS `course_user`;

CREATE TABLE `course_user` (
  `user_id` int(4) NOT NULL,
  `course_id` int(4) NOT NULL,
  `watchdate` datetime DEFAULT NULL,
  `watchduration` int(50) DEFAULT NULL,
  `course_user_id` int(4) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`course_user_id`),
  KEY `cid` (`course_id`),
  KEY `userid` (`user_id`),
  CONSTRAINT `cid` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`),
  CONSTRAINT `userid` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `course_user` */

/*Table structure for table `coursecategory` */

DROP TABLE IF EXISTS `coursecategory`;

CREATE TABLE `coursecategory` (
  `category_id` int(4) NOT NULL AUTO_INCREMENT,
  `categoryname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `coursecategory` */

insert  into `coursecategory`(`category_id`,`categoryname`) values (1,'口语'),(2,'听力'),(3,'单词'),(4,'写作'),(5,'语法'),(6,'阅读');

/*Table structure for table `gradecategory` */

DROP TABLE IF EXISTS `gradecategory`;

CREATE TABLE `gradecategory` (
  `grade_id` int(4) NOT NULL AUTO_INCREMENT,
  `gradename` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`grade_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `gradecategory` */

insert  into `gradecategory`(`grade_id`,`gradename`) values (1,'四级'),(2,'六级'),(3,'雅思'),(4,'托福'),(5,'GRE'),(6,'其他');

/*Table structure for table `gradecategory_course` */

DROP TABLE IF EXISTS `gradecategory_course`;

CREATE TABLE `gradecategory_course` (
  `grade_id` int(4) NOT NULL,
  `course_id` int(4) NOT NULL,
  `gradecategory_course_id` int(4) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`gradecategory_course_id`),
  KEY `course_id` (`course_id`),
  KEY `grade_id` (`grade_id`),
  CONSTRAINT `course_id` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`),
  CONSTRAINT `grade_id` FOREIGN KEY (`grade_id`) REFERENCES `gradecategory` (`grade_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `gradecategory_course` */

insert  into `gradecategory_course`(`grade_id`,`course_id`,`gradecategory_course_id`) values (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6);

/*Table structure for table `gradecategory_hearing` */

DROP TABLE IF EXISTS `gradecategory_hearing`;

CREATE TABLE `gradecategory_hearing` (
  `grade_id` int(4) NOT NULL,
  `hearing_id` int(4) NOT NULL,
  `gradecategory_hearing_id` int(4) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`gradecategory_hearing_id`),
  KEY `hearingid` (`hearing_id`),
  KEY `gradid` (`grade_id`),
  CONSTRAINT `gradid` FOREIGN KEY (`grade_id`) REFERENCES `gradecategory` (`grade_id`),
  CONSTRAINT `hearingid` FOREIGN KEY (`hearing_id`) REFERENCES `hearing` (`hearing_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `gradecategory_hearing` */

insert  into `gradecategory_hearing`(`grade_id`,`hearing_id`,`gradecategory_hearing_id`) values (1,1,1),(2,2,2);

/*Table structure for table `gradecategory_words` */

DROP TABLE IF EXISTS `gradecategory_words`;

CREATE TABLE `gradecategory_words` (
  `word_id` int(4) NOT NULL,
  `grade_id` int(4) NOT NULL,
  `gradecategory_words_id` int(4) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`gradecategory_words_id`),
  KEY `gradeId` (`grade_id`),
  KEY `wordId` (`word_id`),
  CONSTRAINT `gradeId` FOREIGN KEY (`grade_id`) REFERENCES `gradecategory` (`grade_id`),
  CONSTRAINT `wordId` FOREIGN KEY (`word_id`) REFERENCES `words` (`word_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `gradecategory_words` */

insert  into `gradecategory_words`(`word_id`,`grade_id`,`gradecategory_words_id`) values (1,1,1),(3,2,2);

/*Table structure for table `hearing` */

DROP TABLE IF EXISTS `hearing`;

CREATE TABLE `hearing` (
  `hearing_id` int(4) NOT NULL AUTO_INCREMENT,
  `hearingeng` text,
  `hearingaudio` varchar(50) DEFAULT NULL,
  `hearingtitle` varchar(50) DEFAULT NULL,
  `hearingintro` varchar(255) DEFAULT NULL,
  `hearingch` text,
  `hearingduration` int(50) DEFAULT NULL,
  PRIMARY KEY (`hearing_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `hearing` */

insert  into `hearing`(`hearing_id`,`hearingeng`,`hearingaudio`,`hearingtitle`,`hearingintro`,`hearingch`,`hearingduration`) values (1,NULL,NULL,'a','aa',NULL,NULL),(2,NULL,NULL,'b','bb',NULL,NULL);

/*Table structure for table `permission` */

DROP TABLE IF EXISTS `permission`;

CREATE TABLE `permission` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `name` varchar(128) NOT NULL COMMENT '资源名称',
  `type` varchar(32) NOT NULL COMMENT '资源类型：menu,button,',
  `url` varchar(128) DEFAULT NULL COMMENT '访问url地址',
  `percode` varchar(128) DEFAULT NULL COMMENT '权限代码字符串',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父结点id',
  `parentids` varchar(128) DEFAULT NULL COMMENT '父结点id列表串',
  `sortstring` varchar(128) DEFAULT NULL COMMENT '排序号',
  `available` char(1) DEFAULT NULL COMMENT '是否可用,1：可用，0不可用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `permission` */

insert  into `permission`(`id`,`name`,`type`,`url`,`percode`,`parentid`,`parentids`,`sortstring`,`available`) values (1,'权限','','',NULL,0,'0/','0','1'),(11,'用户管理','menu','/userList.action','user:userlist',1,'0/1/','1.','1'),(12,'商品新增','permission','/item/add.action','item:create',11,'0/1/11/','','1'),(13,'商品修改','permission','/item/editItem.action','item:update',11,'0/1/11/','','1'),(14,'商品删除','permission','','item:delete',11,'0/1/11/','','1'),(15,'商品查询','permission','/item/queryItem.action','item:query',11,'0/1/15/',NULL,'1'),(21,'公告管理','menu','/user/query.action','user:query',1,'0/1/','2.','1'),(22,'用户新增','permission','','user:create',21,'0/1/21/','','1'),(23,'用户修改','permission','','user:update',21,'0/1/21/','','1'),(24,'用户删除','permission','','user:delete',21,'0/1/21/','','1');

/*Table structure for table `role` */

DROP TABLE IF EXISTS `role`;

CREATE TABLE `role` (
  `role_id` int(4) NOT NULL AUTO_INCREMENT,
  `rolename` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `role` */

insert  into `role`(`role_id`,`rolename`) values (1,'学生'),(2,'老师'),(3,'管理员');

/*Table structure for table `role_permission` */

DROP TABLE IF EXISTS `role_permission`;

CREATE TABLE `role_permission` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `role_id` int(4) DEFAULT NULL,
  `permission_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `role_permission` */

insert  into `role_permission`(`id`,`role_id`,`permission_id`) values (1,1,12),(2,1,11),(3,1,21),(4,1,15),(5,1,22),(6,0,13);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `role_id` int(4) DEFAULT NULL COMMENT '这是用户表\r\n',
  `salt` varchar(50) DEFAULT NULL COMMENT '盐',
  `locked` char(1) DEFAULT NULL COMMENT '账号是否锁定，1：锁定，0未锁定',
  PRIMARY KEY (`id`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `role_id` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`id`,`username`,`password`,`phone`,`email`,`role_id`,`salt`,`locked`) values (1,'d','g','fb',NULL,1,NULL,NULL),(6,'er','uk','f',NULL,2,NULL,NULL),(7,'zfrt','jkj',NULL,NULL,3,NULL,NULL),(8,'d','iul',NULL,NULL,3,NULL,NULL),(9,'fg','rd',NULL,NULL,2,NULL,NULL),(12,'fgf','fgf','fg','fg',2,NULL,NULL),(13,'010','010','tyty','rty',1,NULL,NULL),(16,'??','d41d8cd98f00b204e9800998ecf8427e','dfd','dfd',1,NULL,NULL),(17,'??','be83ab3ecd0db773eb2dc1b0a17836a1','23','erz',1,NULL,NULL),(18,'gh','3ad7c2ebb96fcba7cda0cf54a2e802f5','gh','345',1,NULL,NULL),(20,'3','d41d8cd98f00b204e9800998ecf8427e','34','34',3,NULL,NULL),(21,'zhangsan','111111',NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `wordbooks` */

DROP TABLE IF EXISTS `wordbooks`;

CREATE TABLE `wordbooks` (
  `wbook_id` int(4) NOT NULL AUTO_INCREMENT,
  `user_id` int(4) DEFAULT NULL,
  `wname` varchar(50) DEFAULT NULL,
  `wexpress` varchar(255) DEFAULT NULL,
  `wdate` datetime DEFAULT NULL,
  PRIMARY KEY (`wbook_id`),
  KEY `userI` (`user_id`),
  CONSTRAINT `userI` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `wordbooks` */

insert  into `wordbooks`(`wbook_id`,`user_id`,`wname`,`wexpress`,`wdate`) values (1,1,'dfds','dfd','2017-01-21 22:32:11'),(2,1,'vcdf','dfdf',NULL);

/*Table structure for table `wordbooks_words` */

DROP TABLE IF EXISTS `wordbooks_words`;

CREATE TABLE `wordbooks_words` (
  `wbook_id` int(4) NOT NULL,
  `word_id` int(4) NOT NULL,
  `wordbooks_words_id` int(4) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`wordbooks_words_id`),
  KEY `word_id` (`word_id`),
  KEY `wbook_id` (`wbook_id`),
  CONSTRAINT `wbook_id` FOREIGN KEY (`wbook_id`) REFERENCES `wordbooks` (`wbook_id`),
  CONSTRAINT `word_id` FOREIGN KEY (`word_id`) REFERENCES `words` (`word_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `wordbooks_words` */

/*Table structure for table `words` */

DROP TABLE IF EXISTS `words`;

CREATE TABLE `words` (
  `word_id` int(4) NOT NULL AUTO_INCREMENT,
  `wordname` varchar(50) DEFAULT NULL,
  `explanation` varchar(255) DEFAULT NULL,
  `audio` varchar(50) DEFAULT NULL,
  `properity` varchar(50) DEFAULT NULL,
  `example` text,
  `phrase` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`word_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `words` */

insert  into `words`(`word_id`,`wordname`,`explanation`,`audio`,`properity`,`example`,`phrase`) values (1,'word','n.这是单词',NULL,'名词',NULL,'my word'),(2,'english','这是英语',NULL,'名词',NULL,'english music');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
