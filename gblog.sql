-- MySQL dump 10.13  Distrib 5.7.21, for osx10.13 (x86_64)
--
-- Host: localhost    Database: gblog
-- ------------------------------------------------------
-- Server version	5.7.21

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
-- Table structure for table `t_option`
--

DROP TABLE IF EXISTS `t_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_option` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_option`
--

LOCK TABLES `t_option` WRITE;
/*!40000 ALTER TABLE `t_option` DISABLE KEYS */;
INSERT INTO `t_option` VALUES (1,'sitename','gblog演示'),(2,'siteurl','http://www.ptapp.cn'),(3,'subtitle','基于Go语言和Beego框架的博客系统'),(4,'pagesize','10'),(5,'keywords','Go语言,博客程序,gblog'),(6,'description','基于Go语言和Beego框架的博客系统'),(7,'email','spxcds86@gmail.com'),(8,'theme','default'),(9,'timezone','8'),(10,'stat','');
/*!40000 ALTER TABLE `t_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_post`
--

DROP TABLE IF EXISTS `t_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_post` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `author` varchar(15) NOT NULL DEFAULT '' COMMENT '作者',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '标题',
  `color` varchar(7) NOT NULL DEFAULT '' COMMENT '标题颜色',
  `url_name` varchar(100) NOT NULL DEFAULT '' COMMENT 'url名',
  `url_type` tinyint(3) NOT NULL DEFAULT '0' COMMENT 'url访问形式',
  `content` mediumtext NOT NULL COMMENT '内容',
  `tags` varchar(100) NOT NULL DEFAULT '' COMMENT '标签',
  `views` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '查看次数',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态{0:正常,1:草稿,2:回收站}',
  `post_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '发布时间',
  `update_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `is_top` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否置顶',
  PRIMARY KEY (`id`),
  KEY `userid` (`user_id`),
  KEY `posttime` (`post_time`),
  KEY `urlname` (`url_name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_post`
--

LOCK TABLES `t_post` WRITE;
/*!40000 ALTER TABLE `t_post` DISABLE KEYS */;
INSERT INTO `t_post` VALUES (1,1,'admin','关于我','','about',1,'<p>90后</p><p><br/></p>','',2,0,'2013-12-31 18:27:49','2018-02-13 00:22:04',0),(2,1,'admin','友情链接','','links',1,'<p><a href=\"https://google.com\" target=\"_self\" title=\"\">谷歌</a><br/></p><p><a href=\"https://www.baidu.com\" target=\"_self\" title=\"\">百度</a><br/></p><p><br/></p>','',5,0,'2013-12-31 18:29:54','2018-02-13 00:21:37',0),(6,1,'admin','Space X重型猎鹰发射成功','','',0,'<p><a class=\"baikekeyl\" href=\"http://beijing.bitauto.com/\" title=\"\" target=\"_blank\" style=\"box-sizing: border-box; background-color: rgb(255, 255, 255); color: rgb(51, 51, 51); text-decoration-line: none; border-bottom: 1px dotted rgb(204, 204, 204); font-family: &quot;Microsoft Yahei&quot;, PingFangSC-Regular, &quot;Hiragino Sans GB&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; text-indent: 32px; white-space: normal;\">北京</a><span style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, PingFangSC-Regular, &quot;Hiragino Sans GB&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; text-indent: 32px; background-color: rgb(255, 255, 255);\">时间04:45，SpaceX公司的</span><a class=\"baikekeyl\" href=\"http://car.bitauto.com/lieying/\" title=\"猎鹰\" target=\"_blank\" style=\"box-sizing: border-box; background-color: rgb(255, 255, 255); color: rgb(51, 51, 51); text-decoration-line: none; border-bottom: 1px dotted rgb(204, 204, 204); font-family: &quot;Microsoft Yahei&quot;, PingFangSC-Regular, &quot;Hiragino Sans GB&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; text-indent: 32px; white-space: normal;\">猎鹰</a><span style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, PingFangSC-Regular, &quot;Hiragino Sans GB&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; text-indent: 32px; background-color: rgb(255, 255, 255);\">重型运载火箭于美国宇航局肯尼迪航天中心的佛罗里达州卡纳维拉尔角发射场发射成功，并完成了一级火箭回收。而作为压舱物的</span><a class=\"baikekeyl\" href=\"http://car.bitauto.com/tesla-20204/\" title=\"特斯拉\" target=\"_blank\" style=\"box-sizing: border-box; background-color: rgb(255, 255, 255); color: rgb(51, 51, 51); text-decoration-line: none; border-bottom: 1px dotted rgb(204, 204, 204); font-family: &quot;Microsoft Yahei&quot;, PingFangSC-Regular, &quot;Hiragino Sans GB&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; text-indent: 32px; white-space: normal;\">特斯拉</a><span style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, PingFangSC-Regular, &quot;Hiragino Sans GB&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; text-indent: 32px; background-color: rgb(255, 255, 255);\">&nbsp;Roadster</span><a class=\"baikekeyl\" href=\"http://car.bitauto.com/paoche/\" title=\"\" target=\"_blank\" style=\"box-sizing: border-box; background-color: rgb(255, 255, 255); color: rgb(51, 51, 51); text-decoration-line: none; border-bottom: 1px dotted rgb(204, 204, 204); font-family: &quot;Microsoft Yahei&quot;, PingFangSC-Regular, &quot;Hiragino Sans GB&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; text-indent: 32px; white-space: normal;\">跑车</a><span style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, PingFangSC-Regular, &quot;Hiragino Sans GB&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; text-indent: 32px; background-color: rgb(255, 255, 255);\">也成为了人类第一辆走出地球，遨游外太空的量产车。</span></p><p><span style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, PingFangSC-Regular, &quot;Hiragino Sans GB&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; text-indent: 32px; background-color: rgb(255, 255, 255);\"><br/></span></p><p><span style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, PingFangSC-Regular, &quot;Hiragino Sans GB&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; text-indent: 32px; background-color: rgb(255, 255, 255);\"><span style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, PingFangSC-Regular, &quot;Hiragino Sans GB&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; text-indent: 32px; background-color: rgb(255, 255, 255);\">埃隆·马斯克在火箭里放置了一台他自己的特斯拉 Roadster跑车。除了这台漂亮的红色小跑车外，一个身着Space X公司宇航服的假人也坐在驾驶座，与火箭一起被送入到地球—火星的转移轨道上。同时跑车上的三台摄像机也会将拍摄到的视频传回地球。参考埃隆·马斯克的设想，如果一切顺利，这台跑车将在宇宙中飞行超过10亿年。</span></span></p><p><span style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, PingFangSC-Regular, &quot;Hiragino Sans GB&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; text-indent: 32px; background-color: rgb(255, 255, 255);\"><span style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, PingFangSC-Regular, &quot;Hiragino Sans GB&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; text-indent: 32px; background-color: rgb(255, 255, 255);\"><br/></span></span></p>','',7,0,'2018-02-13 00:22:10','2018-02-13 00:25:06',0);
/*!40000 ALTER TABLE `t_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_tag`
--

DROP TABLE IF EXISTS `t_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_tag` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '标签名',
  `count` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '使用次数',
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_tag`
--

LOCK TABLES `t_tag` WRITE;
/*!40000 ALTER TABLE `t_tag` DISABLE KEYS */;
INSERT INTO `t_tag` VALUES (1,'iPhone',0),(2,'越狱',0);
/*!40000 ALTER TABLE `t_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_tag_post`
--

DROP TABLE IF EXISTS `t_tag_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_tag_post` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `tag_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '标签id',
  `post_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '内容id',
  `post_status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '内容状态',
  `post_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '发布时间',
  PRIMARY KEY (`id`),
  KEY `tagid` (`tag_id`),
  KEY `postid` (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_tag_post`
--

LOCK TABLES `t_tag_post` WRITE;
/*!40000 ALTER TABLE `t_tag_post` DISABLE KEYS */;
INSERT INTO `t_tag_post` VALUES (1,1,22,0,'2013-12-31 10:33:46'),(2,2,22,0,'2013-12-31 10:33:46'),(3,1,21,0,'2013-12-31 10:33:49'),(4,2,21,0,'2013-12-31 10:33:49'),(5,1,20,0,'2013-12-31 10:33:51'),(6,2,20,0,'2013-12-31 10:33:51');
/*!40000 ALTER TABLE `t_tag_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_user`
--

DROP TABLE IF EXISTS `t_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_user` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(15) NOT NULL DEFAULT '' COMMENT '用户名',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '密码',
  `email` varchar(50) NOT NULL DEFAULT '' COMMENT '邮箱',
  `login_count` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '登录次数',
  `last_ip` varchar(15) NOT NULL DEFAULT '0' COMMENT '最后登录ip',
  `last_login` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '最后登录时间',
  `authkey` char(10) NOT NULL DEFAULT '' COMMENT '登录key',
  `active` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否激活',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`user_name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_user`
--

LOCK TABLES `t_user` WRITE;
/*!40000 ALTER TABLE `t_user` DISABLE KEYS */;
INSERT INTO `t_user` VALUES (1,'admin','21232f297a57a5a743894a0e4a801fc3','admin@admin.com',8,'[','2018-02-13 01:39:06','',1);
/*!40000 ALTER TABLE `t_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-02-12 17:39:51
