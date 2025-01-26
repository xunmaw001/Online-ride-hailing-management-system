-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssmzzg74
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Current Database: `ssmzzg74`
--

/*!40000 DROP DATABASE IF EXISTS `ssmzzg74`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `ssmzzg74` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `ssmzzg74`;

--
-- Table structure for table `aboutus`
--

DROP TABLE IF EXISTS `aboutus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aboutus` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `subtitle` varchar(200) DEFAULT NULL COMMENT '副标题',
  `content` longtext NOT NULL COMMENT '内容',
  `picture1` longtext COMMENT '图片1',
  `picture2` longtext COMMENT '图片2',
  `picture3` longtext COMMENT '图片3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='关于我们';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aboutus`
--

LOCK TABLES `aboutus` WRITE;
/*!40000 ALTER TABLE `aboutus` DISABLE KEYS */;
INSERT INTO `aboutus` VALUES (1,'2023-02-11 04:18:49','关于我们','ABOUT US','不管你想要怎样的生活，你都要去努力争取，不多尝试一些事情怎么知道自己适合什么、不适合什么呢?\n你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪些素质;你说你计划晨跑，但总是因为学习、工作辛苦或者身体不舒服第二天起不了床;你说你一直梦想一个人去长途旅行，但是没钱，父母觉得危险。其实，我已经厌倦了你这样说说而已的把戏，我觉得就算我告诉你如何去做，你也不会照做，因为你根本什么都不做。','upload/aboutus_picture1.jpg','upload/aboutus_picture2.jpg','upload/aboutus_picture3.jpg');
/*!40000 ALTER TABLE `aboutus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cheliangxinxi`
--

DROP TABLE IF EXISTS `cheliangxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cheliangxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `chepaihao` varchar(200) DEFAULT NULL COMMENT '车牌号',
  `cheliangpinpai` varchar(200) DEFAULT NULL COMMENT '车辆品牌',
  `zhaopian` longtext COMMENT '照片',
  `cheliangyanse` varchar(200) DEFAULT NULL COMMENT '车辆颜色',
  `cheliangleixing` varchar(200) DEFAULT NULL COMMENT '车辆类型',
  `cheliangzhuangtai` varchar(200) DEFAULT NULL COMMENT '车辆状态',
  `zhuceshijian` date DEFAULT NULL COMMENT '注册时间',
  `qibujia` float DEFAULT NULL COMMENT '起步价',
  `danjia` float DEFAULT NULL COMMENT '每公里/元',
  `cheliangxiangqing` longtext COMMENT '车辆详情',
  `sijizhanghao` varchar(200) DEFAULT NULL COMMENT '司机账号',
  `sijixingming` varchar(200) DEFAULT NULL COMMENT '司机姓名',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`),
  UNIQUE KEY `chepaihao` (`chepaihao`)
) ENGINE=InnoDB AUTO_INCREMENT=1676089406887 DEFAULT CHARSET=utf8 COMMENT='车辆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cheliangxinxi`
--

LOCK TABLES `cheliangxinxi` WRITE;
/*!40000 ALTER TABLE `cheliangxinxi` DISABLE KEYS */;
INSERT INTO `cheliangxinxi` VALUES (31,'2023-02-11 04:18:49','车牌号1','车辆品牌1','upload/cheliangxinxi_zhaopian1.jpg,upload/cheliangxinxi_zhaopian2.jpg,upload/cheliangxinxi_zhaopian3.jpg','白','SUV','有客','2023-02-11',1,1,'车辆详情1','司机账号1','司机姓名1','联系方式1','2023-02-11 12:18:49',1),(32,'2023-02-11 04:18:49','车牌号2','车辆品牌2','upload/cheliangxinxi_zhaopian2.jpg,upload/cheliangxinxi_zhaopian3.jpg,upload/cheliangxinxi_zhaopian4.jpg','白','SUV','有客','2023-02-11',2,2,'车辆详情2','司机账号2','司机姓名2','联系方式2','2023-02-11 12:20:15',3),(33,'2023-02-11 04:18:49','车牌号3','车辆品牌3','upload/cheliangxinxi_zhaopian3.jpg,upload/cheliangxinxi_zhaopian4.jpg,upload/cheliangxinxi_zhaopian5.jpg','白','SUV','有客','2023-02-11',3,3,'车辆详情3','司机账号3','司机姓名3','联系方式3','2023-02-11 12:18:49',3),(34,'2023-02-11 04:18:49','车牌号4','车辆品牌4','upload/cheliangxinxi_zhaopian4.jpg,upload/cheliangxinxi_zhaopian5.jpg,upload/cheliangxinxi_zhaopian6.jpg','白','SUV','有客','2023-02-11',4,4,'车辆详情4','司机账号4','司机姓名4','联系方式4','2023-02-11 12:20:56',5),(35,'2023-02-11 04:18:49','车牌号5','车辆品牌5','upload/cheliangxinxi_zhaopian5.jpg,upload/cheliangxinxi_zhaopian6.jpg,upload/cheliangxinxi_zhaopian7.jpg','白','SUV','有客','2023-02-11',5,5,'车辆详情5','司机账号5','司机姓名5','联系方式5','2023-02-11 12:18:49',5),(36,'2023-02-11 04:18:49','车牌号6','车辆品牌6','upload/cheliangxinxi_zhaopian6.jpg,upload/cheliangxinxi_zhaopian7.jpg,upload/cheliangxinxi_zhaopian8.jpg','白','SUV','有客','2023-02-11',6,6,'车辆详情6','司机账号6','司机姓名6','联系方式6','2023-02-11 12:20:50',7),(37,'2023-02-11 04:18:49','车牌号7','车辆品牌7','upload/cheliangxinxi_zhaopian7.jpg,upload/cheliangxinxi_zhaopian8.jpg,upload/cheliangxinxi_zhaopian9.jpg','白','SUV','有客','2023-02-11',7,7,'车辆详情7','司机账号7','司机姓名7','联系方式7','2023-02-11 12:20:19',8),(38,'2023-02-11 04:18:49','车牌号8','车辆品牌8','upload/cheliangxinxi_zhaopian8.jpg,upload/cheliangxinxi_zhaopian9.jpg,upload/cheliangxinxi_zhaopian10.jpg','白','SUV','有客','2023-02-11',8,8,'车辆详情8','司机账号8','司机姓名8','联系方式8','2023-02-11 12:18:49',8),(1676089406886,'2023-02-11 04:23:26','12541','品牌','upload/1676089393743.jpg','黑','SUV','有客','2023-02-11',10,12,'<p>网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统</p>','22','张翼','13336665521','2023-02-11 12:23:56',2);
/*!40000 ALTER TABLE `cheliangxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/1676089364819.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dingdanxinxi`
--

DROP TABLE IF EXISTS `dingdanxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dingdanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `chepaihao` varchar(200) DEFAULT NULL COMMENT '车牌号',
  `cheliangpinpai` varchar(200) DEFAULT NULL COMMENT '车辆品牌',
  `qibujia` float DEFAULT NULL COMMENT '起步价',
  `danjia` float DEFAULT NULL COMMENT '单价',
  `xingshijuli` float DEFAULT NULL COMMENT '公里',
  `zongfeiyong` float DEFAULT NULL COMMENT '总费用',
  `xiachedian` varchar(200) DEFAULT NULL COMMENT '下车点',
  `daodashijian` datetime DEFAULT NULL COMMENT '到达时间',
  `sijizhanghao` varchar(200) DEFAULT NULL COMMENT '司机账号',
  `sijixingming` varchar(200) DEFAULT NULL COMMENT '司机姓名',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `dingdanbeizhu` longtext COMMENT '订单备注',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1676089557530 DEFAULT CHARSET=utf8 COMMENT='订单信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dingdanxinxi`
--

LOCK TABLES `dingdanxinxi` WRITE;
/*!40000 ALTER TABLE `dingdanxinxi` DISABLE KEYS */;
INSERT INTO `dingdanxinxi` VALUES (61,'2023-02-11 04:18:49','车牌号1','车辆品牌1',1,1,1,1,'下车点1','2023-02-11 12:18:49','司机账号1','司机姓名1','联系方式1','用户账号1','用户姓名1','联系电话1','订单备注1','未支付'),(62,'2023-02-11 04:18:49','车牌号2','车辆品牌2',2,2,2,2,'下车点2','2023-02-11 12:18:49','司机账号2','司机姓名2','联系方式2','用户账号2','用户姓名2','联系电话2','订单备注2','未支付'),(63,'2023-02-11 04:18:49','车牌号3','车辆品牌3',3,3,3,3,'下车点3','2023-02-11 12:18:49','司机账号3','司机姓名3','联系方式3','用户账号3','用户姓名3','联系电话3','订单备注3','未支付'),(64,'2023-02-11 04:18:49','车牌号4','车辆品牌4',4,4,4,4,'下车点4','2023-02-11 12:18:49','司机账号4','司机姓名4','联系方式4','用户账号4','用户姓名4','联系电话4','订单备注4','未支付'),(65,'2023-02-11 04:18:49','车牌号5','车辆品牌5',5,5,5,5,'下车点5','2023-02-11 12:18:49','司机账号5','司机姓名5','联系方式5','用户账号5','用户姓名5','联系电话5','订单备注5','未支付'),(66,'2023-02-11 04:18:49','车牌号6','车辆品牌6',6,6,6,6,'下车点6','2023-02-11 12:18:49','司机账号6','司机姓名6','联系方式6','用户账号6','用户姓名6','联系电话6','订单备注6','未支付'),(67,'2023-02-11 04:18:49','车牌号7','车辆品牌7',7,7,7,7,'下车点7','2023-02-11 12:18:49','司机账号7','司机姓名7','联系方式7','用户账号7','用户姓名7','联系电话7','订单备注7','未支付'),(68,'2023-02-11 04:18:49','车牌号8','车辆品牌8',8,8,8,8,'下车点8','2023-02-11 12:18:49','司机账号8','司机姓名8','联系方式8','用户账号8','用户姓名8','联系电话8','订单备注8','未支付'),(1676089557529,'2023-02-11 04:25:57','12541','品牌',10,12,9,118,'地点','2023-02-11 12:25:13','22','张翼','13336665521','11','张怡','13336655214','<p>网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统</p>','已支付');
/*!40000 ALTER TABLE `dingdanxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gongzixinxi`
--

DROP TABLE IF EXISTS `gongzixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gongzixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuefen` varchar(200) DEFAULT NULL COMMENT '月份',
  `sijizhanghao` varchar(200) DEFAULT NULL COMMENT '司机账号',
  `sijixingming` varchar(200) DEFAULT NULL COMMENT '司机姓名',
  `jibengongzi` int(11) DEFAULT NULL COMMENT '基本工资',
  `jiangjinticheng` int(11) DEFAULT NULL COMMENT '奖金提成',
  `butiefeiyong` int(11) DEFAULT NULL COMMENT '补贴费用',
  `shifagongzi` int(11) DEFAULT NULL COMMENT '实发工资',
  `beizhu` longtext COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1676089736375 DEFAULT CHARSET=utf8 COMMENT='工资信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gongzixinxi`
--

LOCK TABLES `gongzixinxi` WRITE;
/*!40000 ALTER TABLE `gongzixinxi` DISABLE KEYS */;
INSERT INTO `gongzixinxi` VALUES (101,'2023-02-11 04:18:49','月份1','司机账号1','司机姓名1',1,1,1,1,'备注1'),(102,'2023-02-11 04:18:49','月份2','司机账号2','司机姓名2',2,2,2,2,'备注2'),(103,'2023-02-11 04:18:49','月份3','司机账号3','司机姓名3',3,3,3,3,'备注3'),(104,'2023-02-11 04:18:49','月份4','司机账号4','司机姓名4',4,4,4,4,'备注4'),(105,'2023-02-11 04:18:49','月份5','司机账号5','司机姓名5',5,5,5,5,'备注5'),(106,'2023-02-11 04:18:49','月份6','司机账号6','司机姓名6',6,6,6,6,'备注6'),(107,'2023-02-11 04:18:49','月份7','司机账号7','司机姓名7',7,7,7,7,'备注7'),(108,'2023-02-11 04:18:49','月份8','司机账号8','司机姓名8',8,8,8,8,'备注8'),(1676089736374,'2023-02-11 04:28:55','1月份','22','张翼',3000,1000,500,4500,'<p>网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统</p>');
/*!40000 ALTER TABLE `gongzixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiangfaxinxi`
--

DROP TABLE IF EXISTS `jiangfaxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiangfaxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiangfabianhao` varchar(200) DEFAULT NULL COMMENT '奖罚编号',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `sijizhanghao` varchar(200) DEFAULT NULL COMMENT '司机账号',
  `sijixingming` varchar(200) DEFAULT NULL COMMENT '司机姓名',
  `jiangfaleixing` varchar(200) DEFAULT NULL COMMENT '奖罚类型',
  `jiangfashijian` date DEFAULT NULL COMMENT '奖罚时间',
  `jiangfaxiangqing` longtext COMMENT '奖罚详情',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jiangfabianhao` (`jiangfabianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1676089684379 DEFAULT CHARSET=utf8 COMMENT='奖罚信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiangfaxinxi`
--

LOCK TABLES `jiangfaxinxi` WRITE;
/*!40000 ALTER TABLE `jiangfaxinxi` DISABLE KEYS */;
INSERT INTO `jiangfaxinxi` VALUES (81,'2023-02-11 04:18:49','1111111111','标题1','司机账号1','司机姓名1','奖励','2023-02-11','奖罚详情1'),(82,'2023-02-11 04:18:49','2222222222','标题2','司机账号2','司机姓名2','奖励','2023-02-11','奖罚详情2'),(83,'2023-02-11 04:18:49','3333333333','标题3','司机账号3','司机姓名3','奖励','2023-02-11','奖罚详情3'),(84,'2023-02-11 04:18:49','4444444444','标题4','司机账号4','司机姓名4','奖励','2023-02-11','奖罚详情4'),(85,'2023-02-11 04:18:49','5555555555','标题5','司机账号5','司机姓名5','奖励','2023-02-11','奖罚详情5'),(86,'2023-02-11 04:18:49','6666666666','标题6','司机账号6','司机姓名6','奖励','2023-02-11','奖罚详情6'),(87,'2023-02-11 04:18:49','7777777777','标题7','司机账号7','司机姓名7','奖励','2023-02-11','奖罚详情7'),(88,'2023-02-11 04:18:49','8888888888','标题8','司机账号8','司机姓名8','奖励','2023-02-11','奖罚详情8'),(1676089684378,'2023-02-11 04:28:03','1676089666649','奖罚','22','张翼','奖励','2023-02-11','<p>网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统</p>');
/*!40000 ALTER TABLE `jiangfaxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` longtext NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1676089352650 DEFAULT CHARSET=utf8 COMMENT='公告信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (121,'2023-02-11 04:18:49','有梦想，就要努力去实现','不管你想要怎样的生活，你都要去努力争取，不多尝试一些事情怎么知道自己适合什么、不适合什么呢?你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪些素质;你说你计划晨跑，但总是因为学习、工作辛苦或者身体不舒服第二天起不了床;你说你一直梦想一个人去长途旅行，但是没钱，父母觉得危险。','upload/news_picture1.jpg','<p>不管你想要怎样的生活，你都要去努力争取，不多尝试一些事情怎么知道自己适合什么、不适合什么呢?</p><p>你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪些素质;你说你计划晨跑，但总是因为学习、工作辛苦或者身体不舒服第二天起不了床;你说你一直梦想一个人去长途旅行，但是没钱，父母觉得危险。其实，我已经厌倦了你这样说说而已的把戏，我觉得就算我告诉你如何去做，你也不会照做，因为你根本什么都不做。</p><p>真正有行动力的人不需要别人告诉他如何做，因为他已经在做了。就算碰到问题，他也会自己想办法，自己动手去解决或者主动寻求可以帮助他的人，而不是等着别人为自己解决问题。</p><p>首先要学习独立思考。花一点时间想一下自己喜欢什么，梦想是什么，不要别人说想环游世界，你就说你的梦想是环游世界。</p><p>很多人说现实束缚了自己，其实在这个世界上，我们一直都可以有很多选择，生活的决定权也—直都在自己手上，只是我们缺乏行动力而已。</p><p>如果你觉得安于现状是你想要的，那选择安于现状就会让你幸福和满足;如果你不甘平庸，选择一条改变、进取和奋斗的道路，在这个追求的过程中，你也一样会感到快乐。所谓的成功，即是按照自己想要的生活方式生活。最糟糕的状态，莫过于当你想要选择一条不甘平庸、改变、进取和奋斗的道路时，却以一种安于现状的方式生活，最后抱怨自己没有得到想要的人生。</p><p>因为喜欢，你不是在苦苦坚持，也因为喜欢，你愿意投入时间、精力，长久以往，获得成功就是自然而然的事情。</p>'),(122,'2023-02-11 04:18:49','又是一年毕业季','又是一年毕业季，感慨万千，还记的自己刚进学校那时候的情景，我拖着沉重的行李箱站在偌大的教学楼前面，感叹自己未来的日子即将在这个陌生的校园里度过，而如今斗转星移，浮光掠影，弹指之间，那些青葱岁月如同白驹过隙般悄然从指缝溜走。过去的种种在胸口交集纠结，像打翻的五味瓶，甜蜜，酸楚，苦涩，一并涌上心头。','upload/news_picture2.jpg','<p>又是一年毕业季，感慨万千，还记的自己刚进学校那时候的情景，我拖着沉重的行李箱站在偌大的教学楼前面，感叹自己未来的日子即将在这个陌生的校园里度过，而如今斗转星移，浮光掠影，弹指之间，那些青葱岁月如同白驹过隙般悄然从指缝溜走。</p><p>过去的种种在胸口交集纠结，像打翻的五味瓶，甜蜜，酸楚，苦涩，一并涌上心头。一直都是晚会的忠实参与者，无论是台前还是幕后，忽然间，角色转变，那种感觉确实难以用语言表达。</p><p>	过去的三年，总是默默地期盼着这个好雨时节，因为这时候，会有灿烂的阳光，会有满目的百花争艳，会有香甜的冰激凌，这是个毕业的季节，当时不经世事的我们会殷切地期待学校那一大堆的活动，期待穿上绚丽的演出服或者礼仪服，站在大礼堂镁光灯下尽情挥洒我们的澎拜的激情。</p><p>百感交集，隔岸观火与身临其境的感觉竟是如此不同。从来没想过一场晚会送走的是我们自己的时候会是怎样的感情，毕业就真的意味着结束吗?倔强的我们不愿意承认，谢谢学弟学妹们慷慨的将这次的主题定为“我们在这里”。我知道，这可能是他们对我们这些过来人的尊敬和施舍。</p><p>没有为这场晚会排练、奔波，没有为班级、学生会、文学院出点力，还真有点不习惯，百般无奈中，用“工作忙”个万能的借口来搪塞自己，欺骗别人。其实自己心里明白，那只是在逃避，只是不愿面对繁华落幕后的萧条和落寞。大四了，大家各奔东西，想凑齐班上的人真的是难上加难，敏燕从越南回来，刚落地就匆匆回了学校，那么恋家的人也启程回来了，睿睿学姐也是从家赶来跟我们团圆。大家—如既往的寒暄、打趣、调侃对方，似乎一切又回到了当初的单纯美好。</p><p>看着舞台上活泼可爱的学弟学妹们，如同一群机灵的小精灵，清澈的眼神，稚嫩的肢体，轻快地步伐，用他们那热情洋溢的舞姿渲染着在场的每一个人，我知道，我不应该羡慕嫉妒他们，不应该顾自怜惜逝去的青春，不应该感叹夕阳无限好，曾经，我们也拥有过，曾经，我们也年轻过，曾经，我们也灿烂过。我深深地告诉自己，人生的每个阶段都是美的，年轻有年轻的活力，成熟也有成熟的魅力。多—份稳重、淡然、优雅，也是漫漫时光掠影遗留下的.珍贵赏赐。</p>'),(123,'2023-02-11 04:18:49','挫折路上，坚持常在心间','回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。','upload/news_picture3.jpg','<p>回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?</p><p>清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。</p><p>是的，面对道途上那无情的嘲讽，面对步伐中那重复的摔跤，面对激流与硬石之间猛烈的碰撞，我们必须选择那富于阴雨，却最终见到彩虹的荆棘路。也许，经历了那暴风雨的洗礼，我们便会变得自信，幸福也随之而来。</p><p>司马迁屡遭羞辱，却依然在狱中撰写《史记》，作为一名史学家，不因王权而极度赞赏，也不因卑微而极度批判，然而他在坚持自己操守的同时，却依然要受统治阶级的阻碍，他似乎无权选择自己的本职。但是，他不顾于此，只是在面对道途的阻隔之时，他依然选择了走下去的信念。终于一部开山巨作《史记》诞生，为后人留下一份馈赠，也许在他完成毕生的杰作之时，他微微地笑了，没有什么比梦想实现更快乐的了......</p><p>	或许正如“长风破浪会有时，直挂云帆济沧海”一般，欣欣然地走向看似深渊的崎岖路，而在一番耕耘之后，便会发现这里另有一番天地。也许这就是困难与快乐的交融。</p><p>也许在形形色色的社会中，我们常能看到一份坚持，一份自信，但这里却还有一类人。这类人在暴风雨来临之际，只会闪躲，从未懂得这也是一种历炼，这何尝不是一份快乐。在阴暗的角落里，总是独自在哭，带着伤愁，看不到一点希望。</p><p>我们不能堕落于此，而要像海燕那般，在苍茫的大海上，高傲地飞翔，任何事物都无法阻挡，任何事都是幸福快乐的。</p>'),(124,'2023-02-11 04:18:49','挫折是另一个生命的开端','当遇到挫折或失败，你是看见失败还是看见机会?挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。','upload/news_picture4.jpg','<p>当遇到挫折或失败，你是看见失败还是看见机会?</p><p>挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。</p><p>人生在世，从古到今，不分天子平民，机遇虽有不同，但总不免有身陷困境或遭遇难题之处，这时候唯有通权达变，才能使人转危为安，甚至反败为胜。</p><p>大部分的人，一生当中，最痛苦的经验是失去所爱的人，其次是丢掉一份工作。其实，经得起考验的人，就算是被开除也不会惊慌，要学会面对。</p><p>	“塞翁失马，焉知非福。”人生的道路，并不是每一步都迈向成功，这就是追求的意义。我们还要认识到一点，挫折作为一种情绪状态和一种个人体验，各人的耐受性是大不相同的，有的人经历了一次次挫折，就能够坚忍不拔，百折不挠;有的人稍遇挫折便意志消沉，一蹶不振。所以，挫折感是一种主观感受，因为人的目的和需要不同，成功标准不同，所以同一种活动对于不同的人可能会造成不同的挫折感受。</p><p>凡事皆以平常心来看待，对于生命顺逆不要太执著。能够“破我执”是很高层的人生境界。</p><p>人事的艰难就是一种考验。就像—支剑要有磨刀来磨，剑才会利:一块璞玉要有粗石来磨，才会发出耀眼的光芒。我们能够做到的，只是如何减少、避免那些由于自身的原因所造成的挫折，而在遇到痛苦和挫折之后，则力求化解痛苦，争取幸福。我们要知道，痛苦和挫折是双重性的，它既是我们人生中难以完全避免的，也是我们在争取成功时，不可缺少的一种动力。因为我认为，推动我们奋斗的力量，不仅仅是对成功的渴望，还有为摆脱痛苦和挫折而进行的奋斗。</p>'),(125,'2023-02-11 04:18:49','你要去相信，没有到不了的明天','有梦想就去努力，因为在这一辈子里面，现在不去勇敢的努力，也许就再也没有机会了。你要去相信，一定要相信，没有到不了的明天。不要被命运打败，让自己变得更强大。不管你现在是一个人走在异乡的街道上始终没有找到一丝归属感，还是你在跟朋友们一起吃饭开心址笑着的时候闪过一丝落寞。','upload/news_picture5.jpg','<p>有梦想就去努力，因为在这一辈子里面，现在不去勇敢的努力，也许就再也没有机会了。你要去相信，一定要相信，没有到不了的明天。不要被命运打败，让自己变得更强大。</p><p>不管你现在是一个人走在异乡的街道上始终没有找到一丝归属感，还是你在跟朋友们一起吃饭开心址笑着的时候闪过一丝落寞。</p><p>	不管你现在是在图书馆里背着怎么也看不进去的英语单词，还是你现在迷茫地看不清未来的方向不知道要往哪走。</p><p>不管你现在是在努力着去实现梦想却没能拉近与梦想的距离，还是你已经慢慢地找不到自己的梦想了。</p><p>你都要去相信，没有到不了的明天。</p><p>	有的时候你的梦想太大，别人说你的梦想根本不可能实现;有的时候你的梦想又太小，又有人说你胸无大志;有的时候你对死党说着将来要去环游世界的梦想，却换来他的不屑一顾，于是你再也不提自己的梦想;有的时候你突然说起将来要开个小店的愿望，却发现你讲述的那个人，并没有听到你在说什么。</p><p>不过又能怎么样呢，未来始终是自己的，梦想始终是自己的，没有人会来帮你实现它。</p><p>也许很多时候我们只是需要朋友的一句鼓励，一句安慰，却也得不到。但是相信我，世界上还有很多人，只是想要和你说说话。</p><p>因为我们都一样。一样的被人说成固执，一样的在追逐他们眼里根本不在意的东西。</p><p>所以，又有什么关系呢，别人始终不是你、不能懂你的心情，你又何必多去解释呢。这个世界会来阻止你，困难也会接踵而至，其实真正关键的只有自己，有没有那个倔强。</p><p>这个世界上没有不带伤的人，真正能治愈自己的，只有自己。</p>'),(126,'2023-02-11 04:18:49','离开是一种痛苦，是一种勇气，但同样也是一个考验，是一个新的开端','无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。','upload/news_picture6.jpg','<p>无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。离别的确是一种痛苦，但同样也是我们走入社会，走向新环境、新领域的一个开端，希望大家在以后新的工作岗位上能够确定自己的新起点，坚持不懈，向着更新、更高的目标前进，因为人生最美好的东西永远都在最前方!</p><p>忆往昔峥嵘岁月，看今朝潮起潮落，望未来任重而道远。作为新时代的我们，就应在失败时，能拼搏奋起，去谱写人生的辉煌。在成功时，亦能居安思危，不沉湎于一时的荣耀、鲜花和掌声中，时时刻刻怀着一颗积极寻找自己新的奶酪的心，处变不惊、成败不渝，始终踏着自己坚实的步伐，从零开始，不断向前迈进，这样才能在这风起云涌、变幻莫测的社会大潮中成为真正的弄潮儿!</p>'),(127,'2023-02-11 04:18:49','Leave未必是一种痛苦','无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。','upload/news_picture7.jpg','<p>无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。离别的确是一种痛苦，但同样也是我们走入社会，走向新环境、新领域的一个开端，希望大家在以后新的工作岗位上能够确定自己的新起点，坚持不懈，向着更新、更高的目标前进，因为人生最美好的东西永远都在最前方!</p><p>忆往昔峥嵘岁月，看今朝潮起潮落，望未来任重而道远。作为新时代的我们，就应在失败时，能拼搏奋起，去谱写人生的辉煌。在成功时，亦能居安思危，不沉湎于一时的荣耀、鲜花和掌声中，时时刻刻怀着一颗积极寻找自己新的奶酪的心，处变不惊、成败不渝，始终踏着自己坚实的步伐，从零开始，不断向前迈进，这样才能在这风起云涌、变幻莫测的社会大潮中成为真正的弄潮儿!</p>'),(128,'2023-02-11 04:18:49','坚持才会成功','回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。','upload/news_picture8.jpg','<p>回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?</p><p>清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。</p><p>是的，面对道途上那无情的嘲讽，面对步伐中那重复的摔跤，面对激流与硬石之间猛烈的碰撞，我们必须选择那富于阴雨，却最终见到彩虹的荆棘路。也许，经历了那暴风雨的洗礼，我们便会变得自信，幸福也随之而来。</p><p>司马迁屡遭羞辱，却依然在狱中撰写《史记》，作为一名史学家，不因王权而极度赞赏，也不因卑微而极度批判，然而他在坚持自己操守的同时，却依然要受统治阶级的阻碍，他似乎无权选择自己的本职。但是，他不顾于此，只是在面对道途的阻隔之时，他依然选择了走下去的信念。终于一部开山巨作《史记》诞生，为后人留下一份馈赠，也许在他完成毕生的杰作之时，他微微地笑了，没有什么比梦想实现更快乐的了......</p><p>	或许正如“长风破浪会有时，直挂云帆济沧海”一般，欣欣然地走向看似深渊的崎岖路，而在一番耕耘之后，便会发现这里另有一番天地。也许这就是困难与快乐的交融。</p><p>也许在形形色色的社会中，我们常能看到一份坚持，一份自信，但这里却还有一类人。这类人在暴风雨来临之际，只会闪躲，从未懂得这也是一种历炼，这何尝不是一份快乐。在阴暗的角落里，总是独自在哭，带着伤愁，看不到一点希望。</p><p>我们不能堕落于此，而要像海燕那般，在苍茫的大海上，高傲地飞翔，任何事物都无法阻挡，任何事都是幸福快乐的。</p>'),(1676089352649,'2023-02-11 04:22:31','网约车管理系统','网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统','upload/1676089349896.jpg','<p>网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统v网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统<img src=\"http://localhost:8080/ssmzzg74/upload/1676089347612.jpg\"></p>');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qianyuexinxi`
--

DROP TABLE IF EXISTS `qianyuexinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qianyuexinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `sijizhanghao` varchar(200) DEFAULT NULL COMMENT '司机账号',
  `sijixingming` varchar(200) DEFAULT NULL COMMENT '司机姓名',
  `qianyuewenjian` longtext COMMENT '签约文件',
  `qianyueriqi` date DEFAULT NULL COMMENT '签约日期',
  `beizhu` longtext COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1676089718832 DEFAULT CHARSET=utf8 COMMENT='签约信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qianyuexinxi`
--

LOCK TABLES `qianyuexinxi` WRITE;
/*!40000 ALTER TABLE `qianyuexinxi` DISABLE KEYS */;
INSERT INTO `qianyuexinxi` VALUES (91,'2023-02-11 04:18:49','标题1','司机账号1','司机姓名1','','2023-02-11','备注1'),(92,'2023-02-11 04:18:49','标题2','司机账号2','司机姓名2','','2023-02-11','备注2'),(93,'2023-02-11 04:18:49','标题3','司机账号3','司机姓名3','','2023-02-11','备注3'),(94,'2023-02-11 04:18:49','标题4','司机账号4','司机姓名4','','2023-02-11','备注4'),(95,'2023-02-11 04:18:49','标题5','司机账号5','司机姓名5','','2023-02-11','备注5'),(96,'2023-02-11 04:18:49','标题6','司机账号6','司机姓名6','','2023-02-11','备注6'),(97,'2023-02-11 04:18:49','标题7','司机账号7','司机姓名7','','2023-02-11','备注7'),(98,'2023-02-11 04:18:49','标题8','司机账号8','司机姓名8','','2023-02-11','备注8'),(1676089718831,'2023-02-11 04:28:38','标题','22','张翼','upload/1676089716257.doc','2023-02-11','网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统');
/*!40000 ALTER TABLE `qianyuexinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quxiaoxinxi`
--

DROP TABLE IF EXISTS `quxiaoxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quxiaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `chepaihao` varchar(200) DEFAULT NULL COMMENT '车牌号',
  `cheliangpinpai` varchar(200) DEFAULT NULL COMMENT '车辆品牌',
  `qibujia` float DEFAULT NULL COMMENT '起步价',
  `danjia` float DEFAULT NULL COMMENT '单价',
  `shangchedidian` varchar(200) DEFAULT NULL COMMENT '上车地点',
  `mudedi` varchar(200) DEFAULT NULL COMMENT '目的地',
  `quxiaoshijian` datetime DEFAULT NULL COMMENT '取消时间',
  `sijizhanghao` varchar(200) DEFAULT NULL COMMENT '司机账号',
  `sijixingming` varchar(200) DEFAULT NULL COMMENT '司机姓名',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `quxiaoyuanyin` longtext COMMENT '取消原因',
  `sfsh` varchar(200) DEFAULT '待审核' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1676089486356 DEFAULT CHARSET=utf8 COMMENT='取消信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quxiaoxinxi`
--

LOCK TABLES `quxiaoxinxi` WRITE;
/*!40000 ALTER TABLE `quxiaoxinxi` DISABLE KEYS */;
INSERT INTO `quxiaoxinxi` VALUES (51,'2023-02-11 04:18:49','车牌号1','车辆品牌1',1,1,'上车地点1','目的地1','2023-02-11 12:18:49','司机账号1','司机姓名1','联系方式1','用户账号1','用户姓名1','联系电话1','取消原因1','是',''),(52,'2023-02-11 04:18:49','车牌号2','车辆品牌2',2,2,'上车地点2','目的地2','2023-02-11 12:18:49','司机账号2','司机姓名2','联系方式2','用户账号2','用户姓名2','联系电话2','取消原因2','是',''),(53,'2023-02-11 04:18:49','车牌号3','车辆品牌3',3,3,'上车地点3','目的地3','2023-02-11 12:18:49','司机账号3','司机姓名3','联系方式3','用户账号3','用户姓名3','联系电话3','取消原因3','是',''),(54,'2023-02-11 04:18:49','车牌号4','车辆品牌4',4,4,'上车地点4','目的地4','2023-02-11 12:18:49','司机账号4','司机姓名4','联系方式4','用户账号4','用户姓名4','联系电话4','取消原因4','是',''),(55,'2023-02-11 04:18:49','车牌号5','车辆品牌5',5,5,'上车地点5','目的地5','2023-02-11 12:18:49','司机账号5','司机姓名5','联系方式5','用户账号5','用户姓名5','联系电话5','取消原因5','是',''),(56,'2023-02-11 04:18:49','车牌号6','车辆品牌6',6,6,'上车地点6','目的地6','2023-02-11 12:18:49','司机账号6','司机姓名6','联系方式6','用户账号6','用户姓名6','联系电话6','取消原因6','是',''),(57,'2023-02-11 04:18:49','车牌号7','车辆品牌7',7,7,'上车地点7','目的地7','2023-02-11 12:18:49','司机账号7','司机姓名7','联系方式7','用户账号7','用户姓名7','联系电话7','取消原因7','是',''),(58,'2023-02-11 04:18:49','车牌号8','车辆品牌8',8,8,'上车地点8','目的地8','2023-02-11 12:18:49','司机账号8','司机姓名8','联系方式8','用户账号8','用户姓名8','联系电话8','取消原因8','是',''),(1676089486355,'2023-02-11 04:24:46','12541','品牌',10,12,'地点','目的地','2023-02-11 12:24:42','22','张翼','13336665521','11','张怡','13336655214','<p>网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统</p>','是','可以的哦');
/*!40000 ALTER TABLE `quxiaoxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `siji`
--

DROP TABLE IF EXISTS `siji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `siji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `sijizhanghao` varchar(200) NOT NULL COMMENT '司机账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `sijixingming` varchar(200) NOT NULL COMMENT '司机姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `touxiang` longtext COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `sijizhanghao` (`sijizhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1676089287132 DEFAULT CHARSET=utf8 COMMENT='司机';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `siji`
--

LOCK TABLES `siji` WRITE;
/*!40000 ALTER TABLE `siji` DISABLE KEYS */;
INSERT INTO `siji` VALUES (21,'2023-02-11 04:18:49','司机账号1','123456','司机姓名1','男','13823888881','upload/siji_touxiang1.jpg'),(22,'2023-02-11 04:18:49','司机账号2','123456','司机姓名2','男','13823888882','upload/siji_touxiang2.jpg'),(23,'2023-02-11 04:18:49','司机账号3','123456','司机姓名3','男','13823888883','upload/siji_touxiang3.jpg'),(24,'2023-02-11 04:18:49','司机账号4','123456','司机姓名4','男','13823888884','upload/siji_touxiang4.jpg'),(25,'2023-02-11 04:18:49','司机账号5','123456','司机姓名5','男','13823888885','upload/siji_touxiang5.jpg'),(26,'2023-02-11 04:18:49','司机账号6','123456','司机姓名6','男','13823888886','upload/siji_touxiang6.jpg'),(27,'2023-02-11 04:18:49','司机账号7','123456','司机姓名7','男','13823888887','upload/siji_touxiang7.jpg'),(28,'2023-02-11 04:18:49','司机账号8','123456','司机姓名8','男','13823888888','upload/siji_touxiang8.jpg'),(1676089287131,'2023-02-11 04:21:27','22','22','张翼','男','13336665521','upload/1676089285322.png');
/*!40000 ALTER TABLE `siji` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '商品id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '名称',
  `picture` longtext NOT NULL COMMENT '图片',
  `type` varchar(200) DEFAULT '1' COMMENT '类型(1:收藏,21:赞,22:踩,31:竞拍参与,41:关注)',
  `inteltype` varchar(200) DEFAULT NULL COMMENT '推荐类型',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1676089419716 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1676089258072,'2023-02-11 04:20:57',1676089241306,34,'cheliangxinxi','车牌号4','upload/cheliangxinxi_zhaopian4.jpg','1',NULL,NULL),(1676089419715,'2023-02-11 04:23:39',1676089241306,1676089406886,'cheliangxinxi','12541','upload/1676089393743.jpg','1',NULL,NULL);
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `systemintro`
--

DROP TABLE IF EXISTS `systemintro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `systemintro` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `subtitle` varchar(200) DEFAULT NULL COMMENT '副标题',
  `content` longtext NOT NULL COMMENT '内容',
  `picture1` longtext COMMENT '图片1',
  `picture2` longtext COMMENT '图片2',
  `picture3` longtext COMMENT '图片3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='关于我们';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `systemintro`
--

LOCK TABLES `systemintro` WRITE;
/*!40000 ALTER TABLE `systemintro` DISABLE KEYS */;
INSERT INTO `systemintro` VALUES (1,'2023-02-11 04:18:49','系统简介','SYSTEM INTRODUCTION','当遇到挫折或失败，你是看见失败还是看见机会?挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。人生在世，从古到今，不分天子平民，机遇虽有不同，但总不免有身陷困境或遭遇难题之处，这时候唯有通权达变，才能使人转危为安，甚至反败为胜。大部分的人，一生当中，最痛苦的经验是失去所爱的人，其次是丢掉一份工作。其实，经得起考验的人，就算是被开除也不会惊慌，要学会面对。','upload/systemintro_picture1.jpg','upload/systemintro_picture2.jpg','upload/systemintro_picture3.jpg');
/*!40000 ALTER TABLE `systemintro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1676089241306,'11','yonghu','用户','ejbv9qlpo2og2gac4803dqd78ql50pcv','2023-02-11 04:20:45','2023-02-11 05:27:33'),(2,1676089287131,'22','siji','司机','82o3jk1srlnhi6m4m0n548gbrhyemwk5','2023-02-11 04:21:30','2023-02-11 05:29:04'),(3,1,'admin','users','管理员','abrqe15d7i1z62nkpbtsbfbfypl95n6g','2023-02-11 04:21:40','2023-02-11 05:29:19');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tousuxinxi`
--

DROP TABLE IF EXISTS `tousuxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tousuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `sijizhanghao` varchar(200) DEFAULT NULL COMMENT '司机账号',
  `sijixingming` varchar(200) DEFAULT NULL COMMENT '司机姓名',
  `tousuriqi` date DEFAULT NULL COMMENT '投诉日期',
  `tousuneirong` longtext COMMENT '投诉内容',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `sfsh` varchar(200) DEFAULT '待审核' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1676089590825 DEFAULT CHARSET=utf8 COMMENT='投诉信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tousuxinxi`
--

LOCK TABLES `tousuxinxi` WRITE;
/*!40000 ALTER TABLE `tousuxinxi` DISABLE KEYS */;
INSERT INTO `tousuxinxi` VALUES (71,'2023-02-11 04:18:49','标题1','司机账号1','司机姓名1','2023-02-11','投诉内容1','用户账号1','用户姓名1','是',''),(72,'2023-02-11 04:18:49','标题2','司机账号2','司机姓名2','2023-02-11','投诉内容2','用户账号2','用户姓名2','是',''),(73,'2023-02-11 04:18:49','标题3','司机账号3','司机姓名3','2023-02-11','投诉内容3','用户账号3','用户姓名3','是',''),(74,'2023-02-11 04:18:49','标题4','司机账号4','司机姓名4','2023-02-11','投诉内容4','用户账号4','用户姓名4','是',''),(75,'2023-02-11 04:18:49','标题5','司机账号5','司机姓名5','2023-02-11','投诉内容5','用户账号5','用户姓名5','是',''),(76,'2023-02-11 04:18:49','标题6','司机账号6','司机姓名6','2023-02-11','投诉内容6','用户账号6','用户姓名6','是',''),(77,'2023-02-11 04:18:49','标题7','司机账号7','司机姓名7','2023-02-11','投诉内容7','用户账号7','用户姓名7','是',''),(78,'2023-02-11 04:18:49','标题8','司机账号8','司机姓名8','2023-02-11','投诉内容8','用户账号8','用户姓名8','是',''),(1676089590824,'2023-02-11 04:26:30','标题','22','张翼','2023-02-11','<p>网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统</p>','11','张怡','是','好的，知道了，会改进的');
/*!40000 ALTER TABLE `tousuxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin','管理员','2023-02-11 04:18:50');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) NOT NULL COMMENT '用户账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yonghuxingming` varchar(200) NOT NULL COMMENT '用户姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `touxiang` longtext COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuzhanghao` (`yonghuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1676089241307 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (12,'2023-02-11 04:18:49','用户账号2','123456','用户姓名2','男','13823888882','upload/yonghu_touxiang2.jpg'),(13,'2023-02-11 04:18:49','用户账号3','123456','用户姓名3','男','13823888883','upload/yonghu_touxiang3.jpg'),(14,'2023-02-11 04:18:49','用户账号4','123456','用户姓名4','男','13823888884','upload/yonghu_touxiang4.jpg'),(15,'2023-02-11 04:18:49','用户账号5','123456','用户姓名5','男','13823888885','upload/yonghu_touxiang5.jpg'),(16,'2023-02-11 04:18:49','用户账号6','123456','用户姓名6','男','13823888886','upload/yonghu_touxiang6.jpg'),(17,'2023-02-11 04:18:49','用户账号7','123456','用户姓名7','男','13823888887','upload/yonghu_touxiang7.jpg'),(18,'2023-02-11 04:18:49','用户账号8','123456','用户姓名8','男','13823888888','upload/yonghu_touxiang8.jpg'),(1676089241306,'2023-02-11 04:20:41','11','11','张怡','女','13336655214','upload/1676089239423.jpg');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yuyuexinxi`
--

DROP TABLE IF EXISTS `yuyuexinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yuyuexinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `chepaihao` varchar(200) DEFAULT NULL COMMENT '车牌号',
  `cheliangpinpai` varchar(200) DEFAULT NULL COMMENT '车辆品牌',
  `qibujia` float DEFAULT NULL COMMENT '起步价',
  `danjia` float DEFAULT NULL COMMENT '单价',
  `shangchedidian` varchar(200) DEFAULT NULL COMMENT '上车地点',
  `mudedi` varchar(200) DEFAULT NULL COMMENT '目的地',
  `yuyueshijian` datetime DEFAULT NULL COMMENT '预约时间',
  `yuyuebeizhu` longtext COMMENT '预约备注',
  `sijizhanghao` varchar(200) DEFAULT NULL COMMENT '司机账号',
  `sijixingming` varchar(200) DEFAULT NULL COMMENT '司机姓名',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `sfsh` varchar(200) DEFAULT '待审核' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1676089434914 DEFAULT CHARSET=utf8 COMMENT='预约信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yuyuexinxi`
--

LOCK TABLES `yuyuexinxi` WRITE;
/*!40000 ALTER TABLE `yuyuexinxi` DISABLE KEYS */;
INSERT INTO `yuyuexinxi` VALUES (41,'2023-02-11 04:18:49','车牌号1','车辆品牌1',1,1,'上车地点1','目的地1','2023-02-11 12:18:49','预约备注1','司机账号1','司机姓名1','联系方式1','用户账号1','用户姓名1','联系电话1','是',''),(42,'2023-02-11 04:18:49','车牌号2','车辆品牌2',2,2,'上车地点2','目的地2','2023-02-11 12:18:49','预约备注2','司机账号2','司机姓名2','联系方式2','用户账号2','用户姓名2','联系电话2','是',''),(43,'2023-02-11 04:18:49','车牌号3','车辆品牌3',3,3,'上车地点3','目的地3','2023-02-11 12:18:49','预约备注3','司机账号3','司机姓名3','联系方式3','用户账号3','用户姓名3','联系电话3','是',''),(44,'2023-02-11 04:18:49','车牌号4','车辆品牌4',4,4,'上车地点4','目的地4','2023-02-11 12:18:49','预约备注4','司机账号4','司机姓名4','联系方式4','用户账号4','用户姓名4','联系电话4','是',''),(45,'2023-02-11 04:18:49','车牌号5','车辆品牌5',5,5,'上车地点5','目的地5','2023-02-11 12:18:49','预约备注5','司机账号5','司机姓名5','联系方式5','用户账号5','用户姓名5','联系电话5','是',''),(46,'2023-02-11 04:18:49','车牌号6','车辆品牌6',6,6,'上车地点6','目的地6','2023-02-11 12:18:49','预约备注6','司机账号6','司机姓名6','联系方式6','用户账号6','用户姓名6','联系电话6','是',''),(47,'2023-02-11 04:18:49','车牌号7','车辆品牌7',7,7,'上车地点7','目的地7','2023-02-11 12:18:49','预约备注7','司机账号7','司机姓名7','联系方式7','用户账号7','用户姓名7','联系电话7','是',''),(48,'2023-02-11 04:18:49','车牌号8','车辆品牌8',8,8,'上车地点8','目的地8','2023-02-11 12:18:49','预约备注8','司机账号8','司机姓名8','联系方式8','用户账号8','用户姓名8','联系电话8','是',''),(1676089434913,'2023-02-11 04:23:54','12541','品牌',10,12,'地点','目的地','2023-02-11 12:23:42','<p>网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统网约车管理系统</p>','22','张翼','13336665521','11','张怡','13336655214','是','可以的');
/*!40000 ALTER TABLE `yuyuexinxi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-15 20:15:45
