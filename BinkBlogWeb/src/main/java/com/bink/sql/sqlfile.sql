/*
SQLyog Community v13.1.6 (64 bit)
MySQL - 5.7.31 : Database - bink_blog
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`bink_blog` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `bink_blog`;

/*Table structure for table `c_config` */

DROP TABLE IF EXISTS `c_config`;

CREATE TABLE `c_config` (
  `id` int(18) NOT NULL COMMENT '主键id',
  `name` varchar(20) NOT NULL COMMENT '配置名称',
  `content` varchar(200) NOT NULL COMMENT '配置内容`u_config`',
  `create_user_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '创建人',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `update_user_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '更新人',
  `delete_flag` varchar(2) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '0' COMMENT '删除标识，1为删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='配置信息表';

/*Data for the table `c_config` */

/*Table structure for table `d_keyword` */

DROP TABLE IF EXISTS `d_keyword`;

CREATE TABLE `d_keyword` (
  `kid` int(18) NOT NULL COMMENT '主键id',
  `keyword` varchar(20) NOT NULL COMMENT '关键字名称',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_user_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '创建人',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `update_user_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '更新人',
  `delete_flag` varchar(2) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '0' COMMENT '删除标识，1为删除',
  PRIMARY KEY (`kid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='关键字字典表';

/*Data for the table `d_keyword` */

/*Table structure for table `d_topic` */

DROP TABLE IF EXISTS `d_topic`;

CREATE TABLE `d_topic` (
  `topic_id` int(18) NOT NULL COMMENT '栏目id',
  `topic_name` varchar(20) NOT NULL COMMENT '栏目名称',
  `topic_level` varchar(5) NOT NULL COMMENT '栏目级别',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_user_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '创建人',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `update_user_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '更新人',
  `delete_flag` varchar(2) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '0' COMMENT '删除标识，1为删除',
  PRIMARY KEY (`topic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='栏目字典表';

/*Data for the table `d_topic` */

/*Table structure for table `log_blog_service` */

DROP TABLE IF EXISTS `log_blog_service`;

CREATE TABLE `log_blog_service` (
  `log_id` int(18) NOT NULL COMMENT '主键id',
  `log_code` varchar(20) NOT NULL COMMENT '日志类型代码',
  `log_content` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT '日志内容',
  `service_id` int(18) NOT NULL COMMENT '业务id,bid',
  `create_user_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '创建人',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `update_user_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '更新人',
  `delete_flag` varchar(2) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '0' COMMENT '删除标识，1为删除',
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='博客业务日志表';

/*Data for the table `log_blog_service` */

/*Table structure for table `log_user_service` */

DROP TABLE IF EXISTS `log_user_service`;

CREATE TABLE `log_user_service` (
  `log_id` int(18) NOT NULL COMMENT '主键id',
  `log_code` varchar(20) NOT NULL COMMENT '日志类型代码',
  `log_content` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT '日志内容',
  `user_id` int(18) NOT NULL COMMENT '用户id',
  `create_user_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '创建人',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `update_user_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '更新人',
  `delete_flag` varchar(2) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '0' COMMENT '删除标识，1为删除',
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户业务日志表';

/*Data for the table `log_user_service` */

/*Table structure for table `s_blog` */

DROP TABLE IF EXISTS `s_blog`;

CREATE TABLE `s_blog` (
  `bid` int(18) NOT NULL COMMENT '博客id',
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '博客标题',
  `author` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '博客作者',
  `pub_date` datetime NOT NULL COMMENT '发布时间',
  `status` varchar(5) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '状态',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_user_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '创建人',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `update_user_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '更新人',
  `delete_flag` varchar(2) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '0' COMMENT '删除标识，1为删除',
  PRIMARY KEY (`bid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='博客主表';

/*Data for the table `s_blog` */

insert  into `s_blog`(`bid`,`title`,`author`,`pub_date`,`status`,`create_time`,`create_user_id`,`update_time`,`update_user_id`,`delete_flag`) values
(1,'标题','作者','2021-04-09 20:39:45','1','2021-04-09 20:39:52','1','2021-04-09 20:39:57',NULL,'0');

/*Table structure for table `s_blog_comment` */

DROP TABLE IF EXISTS `s_blog_comment`;

CREATE TABLE `s_blog_comment` (
  `id` int(18) NOT NULL COMMENT '主键id',
  `bid` int(18) NOT NULL COMMENT '博客id,关联主表id',
  `content` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '评论内容',
  `comment_userid` int(10) NOT NULL COMMENT '评论用户id',
  `comment_time` datetime NOT NULL COMMENT '评论时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='博客评论表';

/*Data for the table `s_blog_comment` */

/*Table structure for table `s_blog_content` */

DROP TABLE IF EXISTS `s_blog_content`;

CREATE TABLE `s_blog_content` (
  `id` int(18) NOT NULL COMMENT '主键id',
  `bid` int(18) NOT NULL COMMENT '博客id,关联主表id',
  `type` varchar(5) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '内容类型,1文件,2字符串',
  `file_id` varchar(5) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '文件id',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_bin COMMENT '博客内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='博客内容表';

/*Data for the table `s_blog_content` */

/*Table structure for table `s_blog_record` */

DROP TABLE IF EXISTS `s_blog_record`;

CREATE TABLE `s_blog_record` (
  `id` int(18) NOT NULL COMMENT '主键id',
  `bid` int(18) NOT NULL COMMENT '博客id,关联主表id',
  `views` int(10) DEFAULT '0' COMMENT '阅读量',
  `stars` int(10) DEFAULT '0' COMMENT '点赞数',
  `comments` int(10) DEFAULT '0' COMMENT '评论数',
  `collections` int(10) DEFAULT '0' COMMENT '收藏数',
  `shares` int(10) DEFAULT '0' COMMENT '分享数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='博客记录表';

/*Data for the table `s_blog_record` */

/*Table structure for table `s_blog_sort` */

DROP TABLE IF EXISTS `s_blog_sort`;

CREATE TABLE `s_blog_sort` (
  `id` int(18) NOT NULL COMMENT '主键id',
  `bid` int(18) NOT NULL COMMENT '博客id,关联主表id',
  `topic` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '博客栏目',
  `key_word` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '关键字',
  `sort` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='博客分类表';

/*Data for the table `s_blog_sort` */

/*Table structure for table `u_user_info` */

DROP TABLE IF EXISTS `u_user_info`;

CREATE TABLE `u_user_info` (
  `user_id` int(18) NOT NULL COMMENT '用户id',
  `phone` varchar(20) NOT NULL COMMENT '手机号码',
  `wechat_number` varchar(20) NOT NULL COMMENT '微信号',
  `real_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '真实姓名',
  `id_number` varchar(20) NOT NULL COMMENT '证件号码',
  `email` varchar(20) NOT NULL COMMENT '邮箱',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户信息表';

/*Data for the table `u_user_info` */

/*Table structure for table `u_user_login` */

DROP TABLE IF EXISTS `u_user_login`;

CREATE TABLE `u_user_login` (
  `user_id` int(18) NOT NULL COMMENT '用户id',
  `user_name` varchar(20) NOT NULL COMMENT '用户名',
  `password` varchar(50) NOT NULL COMMENT '密码',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `update_user_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '更新人',
  `delete_flag` varchar(2) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '0' COMMENT '删除标识，1为删除',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='登录用户表';

/*Data for the table `u_user_login` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
