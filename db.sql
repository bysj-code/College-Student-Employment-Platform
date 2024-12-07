/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssmcxll6
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmcxll6` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmcxll6`;

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617971469588 DEFAULT CHARSET=utf8 COMMENT='用户反馈';

/*Data for the table `chat` */

insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (81,'2021-04-09 20:22:45',1,1,'提问1','回复1',0),(82,'2021-04-09 20:22:45',2,2,'提问2','回复2',2),(83,'2021-04-09 20:22:45',3,3,'提问3','回复3',3),(84,'2021-04-09 20:22:45',4,4,'提问4','回复4',4),(85,'2021-04-09 20:22:45',5,5,'提问5','回复5',5),(86,'2021-04-09 20:22:45',6,6,'提问6','回复6',6),(1617971191011,'2021-04-09 20:26:30',1617971129878,NULL,'111',NULL,1),(1617971469587,'2021-04-09 20:31:08',1,1,NULL,'222',NULL);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssmcxll6/upload/1617971425899.jpeg'),(2,'picture2','http://localhost:8080/ssmcxll6/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssmcxll6/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `jianli` */

DROP TABLE IF EXISTS `jianli`;

CREATE TABLE `jianli` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xueshengzhanghao` varchar(200) DEFAULT NULL COMMENT '学生账号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `xueli` varchar(200) DEFAULT NULL COMMENT '学历',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `biyexuexiao` varchar(200) DEFAULT NULL COMMENT '毕业学校',
  `qiwanggangwei` varchar(200) DEFAULT NULL COMMENT '期望岗位',
  `qiwangxingye` varchar(200) DEFAULT NULL COMMENT '期望行业',
  `qiwangxinzi` varchar(200) DEFAULT NULL COMMENT '期望薪资',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617971118917 DEFAULT CHARSET=utf8 COMMENT='简历';

/*Data for the table `jianli` */

insert  into `jianli`(`id`,`addtime`,`xueshengzhanghao`,`xueshengxingming`,`xingbie`,`nianling`,`xueli`,`zhuanye`,`biyexuexiao`,`qiwanggangwei`,`qiwangxingye`,`qiwangxinzi`,`dizhi`,`shouji`,`touxiang`,`userid`) values (61,'2021-04-09 20:22:44','学生账号1','学生姓名1','男','年龄1','大专及以下','专业1','毕业学校1','期望岗位1','期望行业1','期望薪资1','地址1','13823888881','http://localhost:8080/ssmcxll6/upload/jianli_touxiang1.jpg',1),(62,'2021-04-09 20:22:44','学生账号2','学生姓名2','男','年龄2','大专及以下','专业2','毕业学校2','期望岗位2','期望行业2','期望薪资2','地址2','13823888882','http://localhost:8080/ssmcxll6/upload/jianli_touxiang2.jpg',2),(63,'2021-04-09 20:22:44','学生账号3','学生姓名3','男','年龄3','大专及以下','专业3','毕业学校3','期望岗位3','期望行业3','期望薪资3','地址3','13823888883','http://localhost:8080/ssmcxll6/upload/jianli_touxiang3.jpg',3),(64,'2021-04-09 20:22:44','学生账号4','学生姓名4','男','年龄4','大专及以下','专业4','毕业学校4','期望岗位4','期望行业4','期望薪资4','地址4','13823888884','http://localhost:8080/ssmcxll6/upload/jianli_touxiang4.jpg',4),(65,'2021-04-09 20:22:44','学生账号5','学生姓名5','男','年龄5','大专及以下','专业5','毕业学校5','期望岗位5','期望行业5','期望薪资5','地址5','13823888885','http://localhost:8080/ssmcxll6/upload/jianli_touxiang5.jpg',5),(66,'2021-04-09 20:22:44','学生账号6','学生姓名6','男','年龄6','大专及以下','专业6','毕业学校6','期望岗位6','期望行业6','期望薪资6','地址6','13823888886','http://localhost:8080/ssmcxll6/upload/jianli_touxiang6.jpg',6),(1617971118916,'2021-04-09 20:25:18','1','1','','11','本科','11','11','11','11','11','11','12345678999','http://localhost:8080/ssmcxll6/upload/1617971104066.jpeg',1617971057719);

/*Table structure for table `messages` */

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617971196391 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `messages` */

insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (111,'2021-04-09 20:22:45',1,'用户名1','留言内容1','回复内容12222'),(112,'2021-04-09 20:22:45',2,'用户名2','留言内容2','回复内容2'),(114,'2021-04-09 20:22:45',4,'用户名4','留言内容4','回复内容4'),(115,'2021-04-09 20:22:45',5,'用户名5','留言内容5','回复内容5'),(116,'2021-04-09 20:22:45',6,'用户名6','留言内容6','回复内容6'),(1617971196390,'2021-04-09 20:26:36',1617971129878,'1','1111','2222');

/*Table structure for table `mianshiyaoqing` */

DROP TABLE IF EXISTS `mianshiyaoqing`;

CREATE TABLE `mianshiyaoqing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xueshengzhanghao` varchar(200) DEFAULT NULL COMMENT '学生账号',
  `xueshengxingming` varchar(200) NOT NULL COMMENT '学生姓名',
  `biyexuexiao` varchar(200) NOT NULL COMMENT '毕业学校',
  `xueli` varchar(200) DEFAULT NULL COMMENT '学历',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `qiyemingcheng` varchar(200) DEFAULT NULL COMMENT '企业名称',
  `qiwangxinzi` varchar(200) DEFAULT NULL COMMENT '期望薪资',
  `qiwangxingye` varchar(200) DEFAULT NULL COMMENT '期望行业',
  `qiwanggangwei` varchar(200) DEFAULT NULL COMMENT '期望岗位',
  `gangweiyaoqiu` varchar(200) DEFAULT NULL COMMENT '岗位要求',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617971578900 DEFAULT CHARSET=utf8 COMMENT='面试邀请';

/*Data for the table `mianshiyaoqing` */

insert  into `mianshiyaoqing`(`id`,`addtime`,`xueshengzhanghao`,`xueshengxingming`,`biyexuexiao`,`xueli`,`zhuanye`,`zhanghao`,`qiyemingcheng`,`qiwangxinzi`,`qiwangxingye`,`qiwanggangwei`,`gangweiyaoqiu`,`dizhi`,`tupian`) values (71,'2021-04-09 20:22:45','学生账号1','学生姓名1','毕业学校1','学历1','专业1','账号1','企业名称1','期望薪资1','期望行业1','期望岗位1','岗位要求1','地址1','http://localhost:8080/ssmcxll6/upload/mianshiyaoqing_tupian1.jpg'),(72,'2021-04-09 20:22:45','学生账号2','学生姓名2','毕业学校2','学历2','专业2','账号2','企业名称2','期望薪资2','期望行业2','期望岗位2','岗位要求2','地址2','http://localhost:8080/ssmcxll6/upload/mianshiyaoqing_tupian2.jpg'),(73,'2021-04-09 20:22:45','学生账号3','学生姓名3','毕业学校3','学历3','专业3','账号3','企业名称3','期望薪资3','期望行业3','期望岗位3','岗位要求3','地址3','http://localhost:8080/ssmcxll6/upload/mianshiyaoqing_tupian3.jpg'),(74,'2021-04-09 20:22:45','学生账号4','学生姓名4','毕业学校4','学历4','专业4','账号4','企业名称4','期望薪资4','期望行业4','期望岗位4','岗位要求4','地址4','http://localhost:8080/ssmcxll6/upload/mianshiyaoqing_tupian4.jpg'),(75,'2021-04-09 20:22:45','学生账号5','学生姓名5','毕业学校5','学历5','专业5','账号5','企业名称5','期望薪资5','期望行业5','期望岗位5','岗位要求5','地址5','http://localhost:8080/ssmcxll6/upload/mianshiyaoqing_tupian5.jpg'),(76,'2021-04-09 20:22:45','学生账号6','学生姓名6','毕业学校6','学历6','专业6','账号6','企业名称6','期望薪资6','期望行业6','期望岗位6','岗位要求6','地址6','http://localhost:8080/ssmcxll6/upload/mianshiyaoqing_tupian6.jpg'),(1617971174802,'2021-04-09 20:26:14','1','1','11','本科','111','1','11','111','11','111','111','111','http://localhost:8080/ssmcxll6/upload/1617971172425.jpeg');

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
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='招聘资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (101,'2021-04-09 20:22:45','标题12','简介12222','http://localhost:8080/ssmcxll6/upload/news_picture1.jpg','<p>内容122222</p>'),(102,'2021-04-09 20:22:45','标题2','简介2','http://localhost:8080/ssmcxll6/upload/news_picture2.jpg','内容2'),(103,'2021-04-09 20:22:45','标题3','简介3','http://localhost:8080/ssmcxll6/upload/news_picture3.jpg','内容3'),(104,'2021-04-09 20:22:45','标题4','简介4','http://localhost:8080/ssmcxll6/upload/news_picture4.jpg','内容4'),(105,'2021-04-09 20:22:45','标题5','简介5','http://localhost:8080/ssmcxll6/upload/news_picture5.jpg','内容5'),(106,'2021-04-09 20:22:45','标题6','简介6','http://localhost:8080/ssmcxll6/upload/news_picture6.jpg','内容6');

/*Table structure for table `qiuzhixinxi` */

DROP TABLE IF EXISTS `qiuzhixinxi`;

CREATE TABLE `qiuzhixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xueshengzhanghao` varchar(200) NOT NULL COMMENT '学生账号',
  `xueshengxingming` varchar(200) NOT NULL COMMENT '学生姓名',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `qiyemingcheng` varchar(200) DEFAULT NULL COMMENT '企业名称',
  `zhaopingangwei` varchar(200) DEFAULT NULL COMMENT '招聘岗位',
  `xinzi` varchar(200) DEFAULT NULL COMMENT '薪资',
  `xueli` varchar(200) DEFAULT NULL COMMENT '学历',
  `xiangmujingli` longtext COMMENT '项目经历',
  `gongzuojingli` longtext COMMENT '工作经历',
  `qiuzhizhuangtai` varchar(200) DEFAULT NULL COMMENT '求职状态',
  `qiwangxingye` varchar(200) DEFAULT NULL COMMENT '期望行业',
  `beizhu` longtext COMMENT '备注',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617971078429 DEFAULT CHARSET=utf8 COMMENT='求职信息';

/*Data for the table `qiuzhixinxi` */

insert  into `qiuzhixinxi`(`id`,`addtime`,`xueshengzhanghao`,`xueshengxingming`,`zhanghao`,`qiyemingcheng`,`zhaopingangwei`,`xinzi`,`xueli`,`xiangmujingli`,`gongzuojingli`,`qiuzhizhuangtai`,`qiwangxingye`,`beizhu`,`touxiang`,`tupian`,`userid`) values (51,'2021-04-09 20:22:44','学生账号1','学生姓名1','账号1','企业名称1','招聘岗位1','薪资1','大专及以下','项目经历1','工作经历1','离校-随时到岗','期望行业1','备注1','http://localhost:8080/ssmcxll6/upload/qiuzhixinxi_touxiang1.jpg','http://localhost:8080/ssmcxll6/upload/qiuzhixinxi_tupian1.jpg',1),(52,'2021-04-09 20:22:44','学生账号2','学生姓名2','账号2','企业名称2','招聘岗位2','薪资2','大专及以下','项目经历2','工作经历2','离校-随时到岗','期望行业2','备注2','http://localhost:8080/ssmcxll6/upload/qiuzhixinxi_touxiang2.jpg','http://localhost:8080/ssmcxll6/upload/qiuzhixinxi_tupian2.jpg',2),(53,'2021-04-09 20:22:44','学生账号3','学生姓名3','账号3','企业名称3','招聘岗位3','薪资3','大专及以下','项目经历3','工作经历3','离校-随时到岗','期望行业3','备注3','http://localhost:8080/ssmcxll6/upload/qiuzhixinxi_touxiang3.jpg','http://localhost:8080/ssmcxll6/upload/qiuzhixinxi_tupian3.jpg',3),(54,'2021-04-09 20:22:44','学生账号4','学生姓名4','账号4','企业名称4','招聘岗位4','薪资4','大专及以下','项目经历4','工作经历4','离校-随时到岗','期望行业4','备注4','http://localhost:8080/ssmcxll6/upload/qiuzhixinxi_touxiang4.jpg','http://localhost:8080/ssmcxll6/upload/qiuzhixinxi_tupian4.jpg',4),(55,'2021-04-09 20:22:44','学生账号5','学生姓名5','账号5','企业名称5','招聘岗位5','薪资5','大专及以下','项目经历5','工作经历5','离校-随时到岗','期望行业5','备注5','http://localhost:8080/ssmcxll6/upload/qiuzhixinxi_touxiang5.jpg','http://localhost:8080/ssmcxll6/upload/qiuzhixinxi_tupian5.jpg',5),(56,'2021-04-09 20:22:44','学生账号6','学生姓名6','账号6','企业名称6','招聘岗位6','薪资6','大专及以下','项目经历6','工作经历6','离校-随时到岗','期望行业6','备注6','http://localhost:8080/ssmcxll6/upload/qiuzhixinxi_touxiang6.jpg','http://localhost:8080/ssmcxll6/upload/qiuzhixinxi_tupian6.jpg',6),(1617971078428,'2021-04-09 20:24:38','1','1','账号1','企业名称1','招聘岗位1','薪资1','学历1','11','11','','1','11','http://localhost:8080/ssmcxll6/upload/1617971073266.jpeg','http://localhost:8080/ssmcxll6/upload/zhaopinxinxi_tupian1.jpg',1617971057719);

/*Table structure for table `qiye` */

DROP TABLE IF EXISTS `qiye`;

CREATE TABLE `qiye` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `qiyemingcheng` varchar(200) NOT NULL COMMENT '企业名称',
  `tongyishehuixinyongdaima` varchar(200) DEFAULT NULL COMMENT '统一社会信用代码',
  `yingyezhizhao` varchar(200) DEFAULT NULL COMMENT '营业执照',
  `farenxingming` varchar(200) DEFAULT NULL COMMENT '法人姓名',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1617971129879 DEFAULT CHARSET=utf8 COMMENT='企业';

/*Data for the table `qiye` */

insert  into `qiye`(`id`,`addtime`,`zhanghao`,`mima`,`qiyemingcheng`,`tongyishehuixinyongdaima`,`yingyezhizhao`,`farenxingming`,`shenfenzheng`,`shouji`,`youxiang`) values (21,'2021-04-09 20:22:44','企业11','1234561','企业名称11','统一社会信用代码11','http://localhost:8080/ssmcxll6/upload/1617971329850.jpeg','法人姓名11','440300199101010002','13823888882','773890011@qq.com'),(22,'2021-04-09 20:22:44','企业2','123456','企业名称2','统一社会信用代码2','http://localhost:8080/ssmcxll6/upload/qiye_yingyezhizhao2.jpg','法人姓名2','440300199202020002','13823888882','773890002@qq.com'),(23,'2021-04-09 20:22:44','企业3','123456','企业名称3','统一社会信用代码3','http://localhost:8080/ssmcxll6/upload/qiye_yingyezhizhao3.jpg','法人姓名3','440300199303030003','13823888883','773890003@qq.com'),(24,'2021-04-09 20:22:44','企业4','123456','企业名称4','统一社会信用代码4','http://localhost:8080/ssmcxll6/upload/qiye_yingyezhizhao4.jpg','法人姓名4','440300199404040004','13823888884','773890004@qq.com'),(25,'2021-04-09 20:22:44','企业5','123456','企业名称5','统一社会信用代码5','http://localhost:8080/ssmcxll6/upload/qiye_yingyezhizhao5.jpg','法人姓名5','440300199505050005','13823888885','773890005@qq.com'),(1617971129878,'2021-04-09 20:25:29','1','1','11','11','http://localhost:8080/ssmcxll6/upload/1617971500399.jpeg','11','123456789987654321','12345678999','3@qq.com');

/*Table structure for table `qiyeleixing` */

DROP TABLE IF EXISTS `qiyeleixing`;

CREATE TABLE `qiyeleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qiyeleixing` varchar(200) DEFAULT NULL COMMENT '企业类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='企业类型';

/*Data for the table `qiyeleixing` */

insert  into `qiyeleixing`(`id`,`addtime`,`qiyeleixing`,`tupian`) values (41,'2021-04-09 20:22:44','企业类型12','http://localhost:8080/ssmcxll6/upload/1617971357873.jpeg'),(42,'2021-04-09 20:22:44','企业类型2','http://localhost:8080/ssmcxll6/upload/qiyeleixing_tupian2.jpg'),(43,'2021-04-09 20:22:44','企业类型3','http://localhost:8080/ssmcxll6/upload/qiyeleixing_tupian3.jpg'),(45,'2021-04-09 20:22:44','企业类型5','http://localhost:8080/ssmcxll6/upload/qiyeleixing_tupian5.jpg'),(46,'2021-04-09 20:22:44','企业类型6','http://localhost:8080/ssmcxll6/upload/qiyeleixing_tupian6.jpg');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

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

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1617971057719,'1','xuesheng','学生','vzxwa91nfi6rjqy6o2p2n20cfgq37325','2021-04-09 20:24:23','2021-04-09 21:24:24'),(2,1617971129878,'1','qiye','企业','9em9mi6fr6143zmgiawdz625mw71r3yu','2021-04-09 20:25:36','2021-04-09 21:31:27'),(3,1,'abo','users','管理员','bo9vrievnzwhwyskzxiu6xycebfabw70','2021-04-09 20:27:51','2021-04-09 21:27:51');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-09 20:22:45');

/*Table structure for table `xuesheng` */

DROP TABLE IF EXISTS `xuesheng`;

CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xueshengzhanghao` varchar(200) NOT NULL COMMENT '学生账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xueshengxingming` varchar(200) NOT NULL COMMENT '学生姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xueshengzhanghao` (`xueshengzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1617971057720 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `xuesheng` */

insert  into `xuesheng`(`id`,`addtime`,`xueshengzhanghao`,`mima`,`xueshengxingming`,`xingbie`,`shouji`,`youxiang`,`touxiang`) values (11,'2021-04-09 20:22:44','学生11','1234561','学生姓名11','女','13823888882','773898001@qq.com','http://localhost:8080/ssmcxll6/upload/1617971295399.jpeg'),(12,'2021-04-09 20:22:44','学生2','123456','学生姓名2','男','13823888882','773890002@qq.com','http://localhost:8080/ssmcxll6/upload/xuesheng_touxiang2.jpg'),(14,'2021-04-09 20:22:44','学生4','123456','学生姓名4','男','13823888884','773890004@qq.com','http://localhost:8080/ssmcxll6/upload/xuesheng_touxiang4.jpg'),(15,'2021-04-09 20:22:44','学生5','123456','学生姓名5','男','13823888885','773890005@qq.com','http://localhost:8080/ssmcxll6/upload/xuesheng_touxiang5.jpg'),(16,'2021-04-09 20:22:44','学生6','123456','学生姓名6','男','13823888886','773890006@qq.com','http://localhost:8080/ssmcxll6/upload/xuesheng_touxiang6.jpg'),(1617971057719,'2021-04-09 20:24:17','1','1','1','男',NULL,NULL,NULL);

/*Table structure for table `zhaopinxinxi` */

DROP TABLE IF EXISTS `zhaopinxinxi`;

CREATE TABLE `zhaopinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `qiyemingcheng` varchar(200) NOT NULL COMMENT '企业名称',
  `qiyeleixing` varchar(200) NOT NULL COMMENT '企业类型',
  `zhaopingangwei` varchar(200) NOT NULL COMMENT '招聘岗位',
  `xinzi` varchar(200) DEFAULT NULL COMMENT '薪资',
  `xueli` varchar(200) DEFAULT NULL COMMENT '学历',
  `gangweiyaoqiu` longtext COMMENT '岗位要求',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `longitude` float DEFAULT NULL COMMENT '经度',
  `latitude` float DEFAULT NULL COMMENT '纬度',
  `fulladdress` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='招聘信息';

/*Data for the table `zhaopinxinxi` */

insert  into `zhaopinxinxi`(`id`,`addtime`,`zhanghao`,`qiyemingcheng`,`qiyeleixing`,`zhaopingangwei`,`xinzi`,`xueli`,`gangweiyaoqiu`,`dizhi`,`shouji`,`youxiang`,`tupian`,`longitude`,`latitude`,`fulladdress`) values (31,'2021-04-09 20:22:44','账号1','企业名称1','企业类型1','招聘岗位1','薪资1','学历1','岗位要求1','地址1','13823888881','773890001@qq.com','http://localhost:8080/ssmcxll6/upload/zhaopinxinxi_tupian1.jpg',1,1,'宇宙银河系地球1号'),(32,'2021-04-09 20:22:44','账号2','企业名称2','企业类型2','招聘岗位2','薪资2','学历2','岗位要求2','地址2','13823888882','773890002@qq.com','http://localhost:8080/ssmcxll6/upload/zhaopinxinxi_tupian2.jpg',2,2,'宇宙银河系地球2号'),(33,'2021-04-09 20:22:44','账号3','企业名称3','企业类型3','招聘岗位3','薪资3','学历3','岗位要求3','地址3','13823888883','773890003@qq.com','http://localhost:8080/ssmcxll6/upload/zhaopinxinxi_tupian3.jpg',3,3,'宇宙银河系地球3号'),(34,'2021-04-09 20:22:44','账号4','企业名称4','企业类型4','招聘岗位4','薪资4','学历4','岗位要求4','地址4','13823888884','773890004@qq.com','http://localhost:8080/ssmcxll6/upload/zhaopinxinxi_tupian4.jpg',4,4,'宇宙银河系地球4号'),(35,'2021-04-09 20:22:44','账号5','企业名称5','企业类型5','招聘岗位5','薪资5','学历5','岗位要求5','地址5','13823888885','773890005@qq.com','http://localhost:8080/ssmcxll6/upload/zhaopinxinxi_tupian5.jpg',5,5,'宇宙银河系地球5号'),(36,'2021-04-09 20:22:44','账号6','企业名称6','企业类型6','招聘岗位6','薪资6','学历6','岗位要求6','地址6','13823888886','773890006@qq.com','http://localhost:8080/ssmcxll6/upload/zhaopinxinxi_tupian6.jpg',6,6,'宇宙银河系地球6号');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
