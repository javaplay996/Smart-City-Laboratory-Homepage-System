/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssmm73am
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmm73am` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmm73am`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssmm73am/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssmm73am/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssmm73am/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `dianziqikan` */

DROP TABLE IF EXISTS `dianziqikan`;

CREATE TABLE `dianziqikan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bianhao` varchar(200) DEFAULT NULL COMMENT '编号',
  `zazhimingcheng` varchar(200) DEFAULT NULL COMMENT '杂志名称',
  `suoshufenlei` varchar(200) DEFAULT NULL COMMENT '所属分类',
  `jianjie` longtext COMMENT '简介',
  `fujianxiazai` varchar(200) DEFAULT NULL COMMENT '附件下载',
  `faxingdanwei` varchar(200) DEFAULT NULL COMMENT '发行单位',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='电子期刊';

/*Data for the table `dianziqikan` */

insert  into `dianziqikan`(`id`,`addtime`,`bianhao`,`zazhimingcheng`,`suoshufenlei`,`jianjie`,`fujianxiazai`,`faxingdanwei`,`faburiqi`,`tupian`,`thumbsupnum`,`crazilynum`) values (121,'2021-04-05 11:07:46','编号1','杂志名称1','所属分类1','xx','','xx','2021-04-05','http://localhost:8080/ssmm73am/upload/dianziqikan_tupian1.jpg',1,1),(122,'2021-04-05 11:07:46','编号2','杂志名称2','所属分类2','简介2','','发行单位2','2021-04-05','http://localhost:8080/ssmm73am/upload/dianziqikan_tupian2.jpg',2,2),(123,'2021-04-05 11:07:46','编号3','杂志名称3','所属分类3','简介3','','发行单位3','2021-04-05','http://localhost:8080/ssmm73am/upload/dianziqikan_tupian3.jpg',4,3),(124,'2021-04-05 11:07:46','编号4','杂志名称4','所属分类4','简介4','','发行单位4','2021-04-05','http://localhost:8080/ssmm73am/upload/dianziqikan_tupian4.jpg',4,4),(125,'2021-04-05 11:07:46','编号5','杂志名称5','所属分类5','简介5','','发行单位5','2021-04-05','http://localhost:8080/ssmm73am/upload/dianziqikan_tupian5.jpg',5,5),(126,'2021-04-05 11:07:46','编号6','杂志名称6','所属分类6','简介6','','发行单位6','2021-04-05','http://localhost:8080/ssmm73am/upload/dianziqikan_tupian6.jpg',6,6);

/*Table structure for table `discussdianziqikan` */

DROP TABLE IF EXISTS `discussdianziqikan`;

CREATE TABLE `discussdianziqikan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617592305156 DEFAULT CHARSET=utf8 COMMENT='电子期刊评论表';

/*Data for the table `discussdianziqikan` */

insert  into `discussdianziqikan`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (171,'2021-04-05 11:07:46',1,1,'用户名1','评论内容1','回复内容1'),(172,'2021-04-05 11:07:46',2,2,'用户名2','评论内容2','回复内容2'),(173,'2021-04-05 11:07:46',3,3,'用户名3','评论内容3','回复内容3'),(174,'2021-04-05 11:07:46',4,4,'用户名4','评论内容4','回复内容4'),(175,'2021-04-05 11:07:46',5,5,'用户名5','评论内容5','回复内容5'),(176,'2021-04-05 11:07:46',6,6,'用户名6','评论内容6','回复内容6'),(1617592305155,'2021-04-05 11:11:44',123,1617592251323,'1','dsdd',NULL);

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617592321943 DEFAULT CHARSET=utf8 COMMENT='学术交流';

/*Data for the table `forum` */

insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (141,'2021-04-05 11:07:46','帖子标题1','帖子内容1',1,1,'用户名1','开放'),(142,'2021-04-05 11:07:46','帖子标题2','帖子内容2',2,2,'用户名2','开放'),(143,'2021-04-05 11:07:46','帖子标题3','帖子内容3',3,3,'用户名3','开放'),(144,'2021-04-05 11:07:46','帖子标题4','帖子内容4',4,4,'用户名4','开放'),(145,'2021-04-05 11:07:46','帖子标题5','帖子内容5',5,5,'用户名5','开放'),(146,'2021-04-05 11:07:46','帖子标题6','帖子内容6',6,6,'用户名6','开放'),(1617592320653,'2021-04-05 11:11:59','ddd','<p>请输入内容ddd</p>',0,1617592251323,'1','开放'),(1617592321942,'2021-04-05 11:12:01','ddd','<p>请输入内容ddd</p>',0,1617592251323,'1','开放');

/*Table structure for table `guojihuiyi` */

DROP TABLE IF EXISTS `guojihuiyi`;

CREATE TABLE `guojihuiyi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huiyibianhao` varchar(200) DEFAULT NULL COMMENT '会议编号',
  `huiyizhuti` varchar(200) DEFAULT NULL COMMENT '会议主题',
  `huiyigaishu` longtext COMMENT '会议概述',
  `huiyichengyuan` varchar(200) DEFAULT NULL COMMENT '会议成员',
  `ziyuanxiazai` varchar(200) DEFAULT NULL COMMENT '资源下载',
  `zhubanfang` varchar(200) DEFAULT NULL COMMENT '主办方',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8 COMMENT='国际会议';

/*Data for the table `guojihuiyi` */

insert  into `guojihuiyi`(`id`,`addtime`,`huiyibianhao`,`huiyizhuti`,`huiyigaishu`,`huiyichengyuan`,`ziyuanxiazai`,`zhubanfang`,`tupian`) values (131,'2021-04-05 11:07:46','xx','xx','xx','xx','','xx','http://localhost:8080/ssmm73am/upload/guojihuiyi_tupian1.jpg'),(132,'2021-04-05 11:07:46','会议编号2','会议主题2','会议概述2','会议成员2','','主办方2','http://localhost:8080/ssmm73am/upload/guojihuiyi_tupian2.jpg'),(133,'2021-04-05 11:07:46','会议编号3','会议主题3','会议概述3','会议成员3','','主办方3','http://localhost:8080/ssmm73am/upload/guojihuiyi_tupian3.jpg'),(134,'2021-04-05 11:07:46','会议编号4','会议主题4','会议概述4','会议成员4','','主办方4','http://localhost:8080/ssmm73am/upload/guojihuiyi_tupian4.jpg'),(135,'2021-04-05 11:07:46','会议编号5','会议主题5','会议概述5','会议成员5','','主办方5','http://localhost:8080/ssmm73am/upload/guojihuiyi_tupian5.jpg'),(136,'2021-04-05 11:07:46','会议编号6','会议主题6','会议概述6','会议成员6','','主办方6','http://localhost:8080/ssmm73am/upload/guojihuiyi_tupian6.jpg');

/*Table structure for table `huodongxinxi` */

DROP TABLE IF EXISTS `huodongxinxi`;

CREATE TABLE `huodongxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huodongzhuti` varchar(200) DEFAULT NULL COMMENT '活动主题',
  `huodongdidian` varchar(200) DEFAULT NULL COMMENT '活动地点',
  `huodongmude` varchar(200) DEFAULT NULL COMMENT '活动目的',
  `huodongneirong` longtext COMMENT '活动内容',
  `canyurenyuan` varchar(200) DEFAULT NULL COMMENT '参与人员',
  `huodongduixiang` varchar(200) DEFAULT NULL COMMENT '活动对象',
  `huodongshijian` date DEFAULT NULL COMMENT '活动时间',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='活动信息';

/*Data for the table `huodongxinxi` */

insert  into `huodongxinxi`(`id`,`addtime`,`huodongzhuti`,`huodongdidian`,`huodongmude`,`huodongneirong`,`canyurenyuan`,`huodongduixiang`,`huodongshijian`,`tupian`) values (81,'2021-04-05 11:07:46','活动主题1','活动地点1','活动目的1','xxx','参与人员1','活动对象1','2021-04-05','http://localhost:8080/ssmm73am/upload/huodongxinxi_tupian1.jpg'),(82,'2021-04-05 11:07:46','活动主题2','活动地点2','活动目的2','活动内容2','参与人员2','活动对象2','2021-04-05','http://localhost:8080/ssmm73am/upload/huodongxinxi_tupian2.jpg'),(83,'2021-04-05 11:07:46','活动主题3','活动地点3','活动目的3','活动内容3','参与人员3','活动对象3','2021-04-05','http://localhost:8080/ssmm73am/upload/huodongxinxi_tupian3.jpg'),(84,'2021-04-05 11:07:46','活动主题4','活动地点4','活动目的4','活动内容4','参与人员4','活动对象4','2021-04-05','http://localhost:8080/ssmm73am/upload/huodongxinxi_tupian4.jpg'),(85,'2021-04-05 11:07:46','活动主题5','活动地点5','活动目的5','活动内容5','参与人员5','活动对象5','2021-04-05','http://localhost:8080/ssmm73am/upload/huodongxinxi_tupian5.jpg'),(86,'2021-04-05 11:07:46','活动主题6','活动地点6','活动目的6','活动内容6','参与人员6','活动对象6','2021-04-05','http://localhost:8080/ssmm73am/upload/huodongxinxi_tupian6.jpg');

/*Table structure for table `jiangxiangxinxi` */

DROP TABLE IF EXISTS `jiangxiangxinxi`;

CREATE TABLE `jiangxiangxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuhao` varchar(200) DEFAULT NULL COMMENT '序号',
  `jiangxiangmingcheng` varchar(200) DEFAULT NULL COMMENT '奖项名称',
  `leibie` varchar(200) DEFAULT NULL COMMENT '类别',
  `jiangxiangshuoming` varchar(200) DEFAULT NULL COMMENT '奖项说明',
  `pingbishijian` varchar(200) DEFAULT NULL COMMENT '评比时间',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='奖项信息';

/*Data for the table `jiangxiangxinxi` */

insert  into `jiangxiangxinxi`(`id`,`addtime`,`xuhao`,`jiangxiangmingcheng`,`leibie`,`jiangxiangshuoming`,`pingbishijian`,`beizhu`,`fengmian`) values (91,'2021-04-05 11:07:46','序号1','xx','xx','xx','评比时间1','xx','http://localhost:8080/ssmm73am/upload/jiangxiangxinxi_fengmian1.jpg'),(92,'2021-04-05 11:07:46','序号2','奖项名称2','类别2','奖项说明2','评比时间2','备注2','http://localhost:8080/ssmm73am/upload/jiangxiangxinxi_fengmian2.jpg'),(93,'2021-04-05 11:07:46','序号3','奖项名称3','类别3','奖项说明3','评比时间3','备注3','http://localhost:8080/ssmm73am/upload/jiangxiangxinxi_fengmian3.jpg'),(94,'2021-04-05 11:07:46','序号4','奖项名称4','类别4','奖项说明4','评比时间4','备注4','http://localhost:8080/ssmm73am/upload/jiangxiangxinxi_fengmian4.jpg'),(95,'2021-04-05 11:07:46','序号5','奖项名称5','类别5','奖项说明5','评比时间5','备注5','http://localhost:8080/ssmm73am/upload/jiangxiangxinxi_fengmian5.jpg'),(96,'2021-04-05 11:07:46','序号6','奖项名称6','类别6','奖项说明6','评比时间6','备注6','http://localhost:8080/ssmm73am/upload/jiangxiangxinxi_fengmian6.jpg');

/*Table structure for table `jiaoshi` */

DROP TABLE IF EXISTS `jiaoshi`;

CREATE TABLE `jiaoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) NOT NULL COMMENT '工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gonghao` (`gonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1617592365534 DEFAULT CHARSET=utf8 COMMENT='教师';

/*Data for the table `jiaoshi` */

insert  into `jiaoshi`(`id`,`addtime`,`gonghao`,`mima`,`xingming`,`xingbie`,`zhicheng`,`shouji`,`youxiang`,`zhaopian`) values (31,'2021-04-05 11:07:46','教师1','123456','姓名1','女','职称1','13823888881','773890001@qq.com','http://localhost:8080/ssmm73am/upload/jiaoshi_zhaopian1.jpg'),(32,'2021-04-05 11:07:46','教师2','123456','姓名2','男','职称2','13823888882','773890002@qq.com','http://localhost:8080/ssmm73am/upload/jiaoshi_zhaopian2.jpg'),(33,'2021-04-05 11:07:46','教师3','123456','姓名3','男','职称3','13823888883','773890003@qq.com','http://localhost:8080/ssmm73am/upload/jiaoshi_zhaopian3.jpg'),(34,'2021-04-05 11:07:46','教师4','123456','姓名4','男','职称4','13823888884','773890004@qq.com','http://localhost:8080/ssmm73am/upload/jiaoshi_zhaopian4.jpg'),(35,'2021-04-05 11:07:46','教师5','123456','姓名5','男','职称5','13823888885','773890005@qq.com','http://localhost:8080/ssmm73am/upload/jiaoshi_zhaopian5.jpg'),(36,'2021-04-05 11:07:46','教师6','123456','姓名6','男','职称6','13823888886','773890006@qq.com','http://localhost:8080/ssmm73am/upload/jiaoshi_zhaopian6.jpg'),(1617592365533,'2021-04-05 11:12:45','2','2','2',NULL,'','','',NULL);

/*Table structure for table `keyanbaogao` */

DROP TABLE IF EXISTS `keyanbaogao`;

CREATE TABLE `keyanbaogao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `baogaomingcheng` varchar(200) DEFAULT NULL COMMENT '报告名称',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `yanjiuneirong` varchar(200) DEFAULT NULL COMMENT '研究内容',
  `fujian` varchar(200) DEFAULT NULL COMMENT '附件',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `beizhu` longtext COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617592387294 DEFAULT CHARSET=utf8 COMMENT='科研报告';

/*Data for the table `keyanbaogao` */

insert  into `keyanbaogao`(`id`,`addtime`,`gonghao`,`xingming`,`baogaomingcheng`,`leixing`,`yanjiuneirong`,`fujian`,`faburiqi`,`beizhu`) values (101,'2021-04-05 11:07:46','工号1','姓名1','报告名称1','类型1','研究内容1','','2021-04-05','备注1'),(102,'2021-04-05 11:07:46','工号2','姓名2','报告名称2','类型2','研究内容2','','2021-04-05','备注2'),(103,'2021-04-05 11:07:46','工号3','姓名3','报告名称3','类型3','研究内容3','','2021-04-05','备注3'),(104,'2021-04-05 11:07:46','工号4','姓名4','报告名称4','类型4','研究内容4','','2021-04-05','备注4'),(105,'2021-04-05 11:07:46','工号5','姓名5','报告名称5','类型5','研究内容5','','2021-04-05','备注5'),(106,'2021-04-05 11:07:46','工号6','姓名6','报告名称6','类型6','研究内容6','','2021-04-05','备注6'),(1617592387293,'2021-04-05 11:13:06','2','2','22','22','222','','2021-04-06','2222');

/*Table structure for table `keyanchengguo` */

DROP TABLE IF EXISTS `keyanchengguo`;

CREATE TABLE `keyanchengguo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xiangmumingcheng` varchar(200) DEFAULT NULL COMMENT '项目名称',
  `jishujianjie` longtext COMMENT '技术简介',
  `yingyongfanwei` longtext COMMENT '应用范围',
  `baogaowenjian` varchar(200) DEFAULT NULL COMMENT '报告文件',
  `yanjiutuandui` varchar(200) DEFAULT NULL COMMENT '研究团队',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617592406196 DEFAULT CHARSET=utf8 COMMENT='科研成果';

/*Data for the table `keyanchengguo` */

insert  into `keyanchengguo`(`id`,`addtime`,`gonghao`,`xingming`,`xiangmumingcheng`,`jishujianjie`,`yingyongfanwei`,`baogaowenjian`,`yanjiutuandui`,`faburiqi`,`tupian`) values (111,'2021-04-05 11:07:46','工号1','姓名1','项目名称1','技术简介1','应用范围1','','研究团队1','2021-04-05','http://localhost:8080/ssmm73am/upload/keyanchengguo_tupian1.jpg'),(112,'2021-04-05 11:07:46','工号2','姓名2','项目名称2','技术简介2','应用范围2','','研究团队2','2021-04-05','http://localhost:8080/ssmm73am/upload/keyanchengguo_tupian2.jpg'),(113,'2021-04-05 11:07:46','工号3','姓名3','项目名称3','技术简介3','应用范围3','','研究团队3','2021-04-05','http://localhost:8080/ssmm73am/upload/keyanchengguo_tupian3.jpg'),(114,'2021-04-05 11:07:46','工号4','姓名4','项目名称4','技术简介4','应用范围4','','研究团队4','2021-04-05','http://localhost:8080/ssmm73am/upload/keyanchengguo_tupian4.jpg'),(115,'2021-04-05 11:07:46','工号5','姓名5','项目名称5','技术简介5','应用范围5','','研究团队5','2021-04-05','http://localhost:8080/ssmm73am/upload/keyanchengguo_tupian5.jpg'),(116,'2021-04-05 11:07:46','工号6','姓名6','项目名称6','技术简介6','应用范围6','','研究团队6','2021-04-05','http://localhost:8080/ssmm73am/upload/keyanchengguo_tupian6.jpg'),(1617592406195,'2021-04-05 11:13:25','2','2','22','22','22','','222','2021-04-27','http://localhost:8080/ssmm73am/upload/1617592401030.jpg');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=167 DEFAULT CHARSET=utf8 COMMENT='公示信息';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (161,'2021-04-05 11:07:46','标题1','简介1','http://localhost:8080/ssmm73am/upload/news_picture1.jpg','内容1'),(162,'2021-04-05 11:07:46','标题2','简介2','http://localhost:8080/ssmm73am/upload/news_picture2.jpg','内容2'),(163,'2021-04-05 11:07:46','标题3','简介3','http://localhost:8080/ssmm73am/upload/news_picture3.jpg','内容3'),(164,'2021-04-05 11:07:46','标题4','简介4','http://localhost:8080/ssmm73am/upload/news_picture4.jpg','内容4'),(165,'2021-04-05 11:07:46','标题5','简介5','http://localhost:8080/ssmm73am/upload/news_picture5.jpg','内容5'),(166,'2021-04-05 11:07:46','标题6','简介6','http://localhost:8080/ssmm73am/upload/news_picture6.jpg','内容6');

/*Table structure for table `shebeixinxi` */

DROP TABLE IF EXISTS `shebeixinxi`;

CREATE TABLE `shebeixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shebeibianhao` varchar(200) DEFAULT NULL COMMENT '设备编号',
  `shebeimingcheng` varchar(200) DEFAULT NULL COMMENT '设备名称',
  `shebeileixing` varchar(200) DEFAULT NULL COMMENT '设备类型',
  `suozaiweizhi` varchar(200) DEFAULT NULL COMMENT '所在位置',
  `yongtu` longtext COMMENT '用途',
  `zhuyishixiang` longtext COMMENT '注意事项',
  `shiyongqingkuang` varchar(200) DEFAULT NULL COMMENT '使用情况',
  `shebeixiangqing` longtext COMMENT '设备详情',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='设备信息';

/*Data for the table `shebeixinxi` */

insert  into `shebeixinxi`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`shebeileixing`,`suozaiweizhi`,`yongtu`,`zhuyishixiang`,`shiyongqingkuang`,`shebeixiangqing`,`tupian`) values (71,'2021-04-05 11:07:46','设备编号1','设备名称1','设备类型1','所在位置1','xxx','xx','未使用','<p>xx</p>','http://localhost:8080/ssmm73am/upload/shebeixinxi_tupian1.jpg'),(72,'2021-04-05 11:07:46','设备编号2','设备名称2','设备类型2','所在位置2','用途2','注意事项2','使用中','设备详情2','http://localhost:8080/ssmm73am/upload/shebeixinxi_tupian2.jpg'),(73,'2021-04-05 11:07:46','设备编号3','设备名称3','设备类型3','所在位置3','用途3','注意事项3','使用中','设备详情3','http://localhost:8080/ssmm73am/upload/shebeixinxi_tupian3.jpg'),(74,'2021-04-05 11:07:46','设备编号4','设备名称4','设备类型4','所在位置4','用途4','注意事项4','使用中','设备详情4','http://localhost:8080/ssmm73am/upload/shebeixinxi_tupian4.jpg'),(75,'2021-04-05 11:07:46','设备编号5','设备名称5','设备类型5','所在位置5','用途5','注意事项5','使用中','设备详情5','http://localhost:8080/ssmm73am/upload/shebeixinxi_tupian5.jpg'),(76,'2021-04-05 11:07:46','设备编号6','设备名称6','设备类型6','所在位置6','用途6','注意事项6','使用中','设备详情6','http://localhost:8080/ssmm73am/upload/shebeixinxi_tupian6.jpg');

/*Table structure for table `shiyandongtai` */

DROP TABLE IF EXISTS `shiyandongtai`;

CREATE TABLE `shiyandongtai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shiyanmingcheng` varchar(200) DEFAULT NULL COMMENT '实验名称',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `shiyanneirong` longtext COMMENT '实验内容',
  `jinzhanqingkuang` longtext COMMENT '进展情况',
  `shiyantuandui` varchar(200) DEFAULT NULL COMMENT '实验团队',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='实验动态';

/*Data for the table `shiyandongtai` */

insert  into `shiyandongtai`(`id`,`addtime`,`shiyanmingcheng`,`leixing`,`shiyanneirong`,`jinzhanqingkuang`,`shiyantuandui`,`fabushijian`,`tupian`) values (41,'2021-04-05 11:07:46','实验名称1','类型1','<p>xx</p>','xxx','xx','2021-04-13','http://localhost:8080/ssmm73am/upload/shiyandongtai_tupian1.jpg'),(42,'2021-04-05 11:07:46','实验名称2','类型2','实验内容2','进展情况2','实验团队2','2021-04-05','http://localhost:8080/ssmm73am/upload/shiyandongtai_tupian2.jpg'),(43,'2021-04-05 11:07:46','实验名称3','类型3','实验内容3','进展情况3','实验团队3','2021-04-05','http://localhost:8080/ssmm73am/upload/shiyandongtai_tupian3.jpg'),(44,'2021-04-05 11:07:46','实验名称4','类型4','实验内容4','进展情况4','实验团队4','2021-04-05','http://localhost:8080/ssmm73am/upload/shiyandongtai_tupian4.jpg'),(45,'2021-04-05 11:07:46','实验名称5','类型5','实验内容5','进展情况5','实验团队5','2021-04-05','http://localhost:8080/ssmm73am/upload/shiyandongtai_tupian5.jpg'),(46,'2021-04-05 11:07:46','实验名称6','类型6','实验内容6','进展情况6','实验团队6','2021-04-05','http://localhost:8080/ssmm73am/upload/shiyandongtai_tupian6.jpg');

/*Table structure for table `shiyanleixing` */

DROP TABLE IF EXISTS `shiyanleixing`;

CREATE TABLE `shiyanleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='实验类型';

/*Data for the table `shiyanleixing` */

insert  into `shiyanleixing`(`id`,`addtime`,`leixing`) values (51,'2021-04-05 11:07:46','xx'),(52,'2021-04-05 11:07:46','类型2'),(53,'2021-04-05 11:07:46','类型3'),(54,'2021-04-05 11:07:46','类型4'),(55,'2021-04-05 11:07:46','类型5'),(56,'2021-04-05 11:07:46','类型6');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617592299561 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1617592299560,'2021-04-05 11:11:39',1617592251323,123,'dianziqikan','杂志名称3','http://localhost:8080/ssmm73am/upload/dianziqikan_tupian3.jpg');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

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

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1617592251323,'1','xuesheng','学生','pcxc14kgehggermml3q4vjrsln0hr3qv','2021-04-05 11:10:55','2021-04-05 12:10:55'),(2,1617592365533,'2','jiaoshi','教师','6n1xnhh2hccwkgyv40liubhvfbqwdb3t','2021-04-05 11:12:49','2021-04-05 12:12:49'),(3,1,'abo','users','管理员','qadxxtn5xm6cohmg96y0op03uaulaw38','2021-04-05 11:13:52','2021-04-05 12:13:53');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-05 11:07:46');

/*Table structure for table `xuesheng` */

DROP TABLE IF EXISTS `xuesheng`;

CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuejihao` varchar(200) DEFAULT NULL COMMENT '学籍号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `mima` varchar(200) DEFAULT NULL COMMENT '密码',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianji` varchar(200) DEFAULT NULL COMMENT '年级',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuejihao` (`xuejihao`)
) ENGINE=InnoDB AUTO_INCREMENT=1617592251324 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `xuesheng` */

insert  into `xuesheng`(`id`,`addtime`,`xuejihao`,`xueshengxingming`,`mima`,`xingbie`,`nianji`,`banji`,`zhuanye`,`lianxidianhua`,`youxiang`,`shenfenzheng`,`zhaopian`) values (11,'2021-04-05 11:07:46','学生1','学生姓名1','123456','男','大二','班级1','类型2','13823888881','773890001@qq.com','440300199101010001','http://localhost:8080/ssmm73am/upload/xuesheng_zhaopian1.jpg'),(12,'2021-04-05 11:07:46','学生2','学生姓名2','123456','男','大一','班级2','专业2','13823888882','773890002@qq.com','440300199202020002','http://localhost:8080/ssmm73am/upload/xuesheng_zhaopian2.jpg'),(13,'2021-04-05 11:07:46','学生3','学生姓名3','123456','男','大一','班级3','专业3','13823888883','773890003@qq.com','440300199303030003','http://localhost:8080/ssmm73am/upload/xuesheng_zhaopian3.jpg'),(14,'2021-04-05 11:07:46','学生4','学生姓名4','123456','男','大一','班级4','专业4','13823888884','773890004@qq.com','440300199404040004','http://localhost:8080/ssmm73am/upload/xuesheng_zhaopian4.jpg'),(15,'2021-04-05 11:07:46','学生5','学生姓名5','123456','男','大一','班级5','专业5','13823888885','773890005@qq.com','440300199505050005','http://localhost:8080/ssmm73am/upload/xuesheng_zhaopian5.jpg'),(16,'2021-04-05 11:07:46','学生6','学生姓名6','123456','男','大一','班级6','专业6','13823888886','773890006@qq.com','440300199606060006','http://localhost:8080/ssmm73am/upload/xuesheng_zhaopian6.jpg'),(1617592251323,'2021-04-05 11:10:51','1','1','1','男','大一','','类型1','','','',NULL);

/*Table structure for table `xueshutuandui` */

DROP TABLE IF EXISTS `xueshutuandui`;

CREATE TABLE `xueshutuandui` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tuanduimingcheng` varchar(200) DEFAULT NULL COMMENT '团队名称',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `tuanduirenshu` int(11) DEFAULT NULL COMMENT '团队人数',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `chenglishijian` date DEFAULT NULL COMMENT '成立时间',
  `beizhu` longtext COMMENT '备注',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='学术团队';

/*Data for the table `xueshutuandui` */

insert  into `xueshutuandui`(`id`,`addtime`,`tuanduimingcheng`,`leixing`,`jiaoshixingming`,`tuanduirenshu`,`banji`,`chenglishijian`,`beizhu`,`zhaopian`) values (61,'2021-04-05 11:07:46','团队名称1','类型1','教师姓名1',10,'班级1','2021-04-05','备注1','http://localhost:8080/ssmm73am/upload/xueshutuandui_zhaopian1.jpg'),(62,'2021-04-05 11:07:46','团队名称2','类型2','教师姓名2',2,'班级2','2021-04-05','备注2','http://localhost:8080/ssmm73am/upload/xueshutuandui_zhaopian2.jpg'),(63,'2021-04-05 11:07:46','团队名称3','类型3','教师姓名3',3,'班级3','2021-04-05','备注3','http://localhost:8080/ssmm73am/upload/xueshutuandui_zhaopian3.jpg'),(64,'2021-04-05 11:07:46','团队名称4','类型4','教师姓名4',4,'班级4','2021-04-05','备注4','http://localhost:8080/ssmm73am/upload/xueshutuandui_zhaopian4.jpg'),(65,'2021-04-05 11:07:46','团队名称5','类型5','教师姓名5',5,'班级5','2021-04-05','备注5','http://localhost:8080/ssmm73am/upload/xueshutuandui_zhaopian5.jpg'),(66,'2021-04-05 11:07:46','团队名称6','类型6','教师姓名6',6,'班级6','2021-04-05','备注6','http://localhost:8080/ssmm73am/upload/xueshutuandui_zhaopian6.jpg');

/*Table structure for table `zhuanyeleixing` */

DROP TABLE IF EXISTS `zhuanyeleixing`;

CREATE TABLE `zhuanyeleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='专业类型';

/*Data for the table `zhuanyeleixing` */

insert  into `zhuanyeleixing`(`id`,`addtime`,`leixing`) values (21,'2021-04-05 11:07:46','xx'),(22,'2021-04-05 11:07:46','类型2'),(23,'2021-04-05 11:07:46','类型3'),(24,'2021-04-05 11:07:46','类型4'),(25,'2021-04-05 11:07:46','类型5'),(26,'2021-04-05 11:07:46','类型6');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
