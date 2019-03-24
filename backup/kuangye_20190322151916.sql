/* This file is created by MySQLReback 2019-03-22 15:19:14 */
 /* 创建表结构 `bh_aboutus`  */
 DROP TABLE IF EXISTS `bh_aboutus`;/* MySQLReback Separation */ CREATE TABLE `bh_aboutus` (
  `Id` int(4) NOT NULL AUTO_INCREMENT,
  `sty` tinyint(1) NOT NULL DEFAULT '1' COMMENT '//预留属性(sty)',
  `title` varchar(200) DEFAULT NULL COMMENT '//title',
  `topic` char(200) NOT NULL COMMENT '//标题',
  `domain` char(20) DEFAULT NULL COMMENT '//个性域名',
  `pic` char(100) DEFAULT NULL COMMENT '//图片',
  `intro` varchar(255) DEFAULT NULL COMMENT '//简介内容',
  `keyword` varchar(250) DEFAULT NULL COMMENT '//页面关键词',
  `metades` varchar(250) DEFAULT NULL COMMENT '//页面描述',
  `content` text COMMENT '//内容',
  `linkurl` varchar(200) DEFAULT NULL COMMENT '//跳转链接',
  `enabled` tinyint(1) NOT NULL DEFAULT '1' COMMENT '//是否显示栏目',
  `ord` int(2) DEFAULT '0' COMMENT '//排序',
  `date` datetime NOT NULL COMMENT '//发布更新日期',
  PRIMARY KEY (`Id`),
  KEY `sty` (`sty`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `bh_adminauth`  */
 DROP TABLE IF EXISTS `bh_adminauth`;/* MySQLReback Separation */ CREATE TABLE `bh_adminauth` (
  `Id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `sty` tinyint(1) NOT NULL DEFAULT '0' COMMENT '//sty 区分模块',
  `tid` int(2) NOT NULL DEFAULT '0' COMMENT '//上级所属 0表示顶级栏目',
  `name` char(30) DEFAULT NULL COMMENT '//方法名称',
  `isopen` tinyint(1) NOT NULL DEFAULT '0' COMMENT '//是否展开',
  `title` char(42) DEFAULT NULL COMMENT '//方法中文名',
  `linkurl` varchar(150) DEFAULT NULL COMMENT '//链接',
  `tables` char(30) DEFAULT NULL COMMENT '//数据表区分模块',
  `martables` char(35) DEFAULT NULL COMMENT '//二级表区分模块',
  `isspecial` tinyint(1) NOT NULL DEFAULT '0' COMMENT '//特殊权限 不控制显示但是 未勾选仍旧没权限',
  `isimportant` tinyint(1) NOT NULL DEFAULT '0' COMMENT '//是否重要权限',
  `isext` tinyint(1) NOT NULL DEFAULT '0' COMMENT '//扩展图标',
  `icon` char(20) DEFAULT NULL COMMENT '//图标',
  `ord` int(2) NOT NULL DEFAULT '0' COMMENT '//权限排序',
  `date` datetime DEFAULT NULL COMMENT '//修改时间',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=110 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `bh_adminauth` */
 INSERT INTO `bh_adminauth` VALUES ('1','1',null,null,null,'系统管理',null,null,null,null,null,null,null,'2','2016-12-07 15:36:14'),('2','1',null,null,null,'网站管理',null,null,null,null,null,null,null,'1','2016-12-07 15:36:19'),('7','1','1',null,null,'管理首页',null,null,null,null,null,'1','gears','1','2016-12-07 15:34:25'),('8',null,'1',null,null,'管理员设置',null,null,null,null,null,'1','cog','2','2016-09-19 18:07:25'),('9',null,'1',null,null,'数据库管理',null,null,null,null,null,'1','database','3','2016-09-19 18:07:37'),('12','1','7','system/sysmod',null,'系统设置','system/sysmod',null,null,null,'1',null,null,'1','2016-12-07 15:35:06'),('13','1','1','System/syslogs',null,'日志管理','System/syslogs',null,null,null,null,'1','cloud','5','2016-09-19 18:09:31'),('14','1','1','System/syspic',null,'图片管理','System/syspic',null,null,null,null,null,'picture','6','2016-09-19 18:10:05'),('15','1','2',null,null,'广告管理',null,null,null,null,null,'1','flag','4','2018-07-21 11:50:06'),('16','1','1','Online/dataonline',null,'访问统计','Online/dataonline',null,null,null,null,'1','line-chart','7','2016-09-19 18:14:29'),('18','1','7','System/ipfilter',null,'Ip过滤设置','System/ipfilter',null,null,null,null,null,null,'3','2016-09-19 18:17:15'),('19','1','8','System/adminauth',null,'栏目管理','System/adminauth',null,null,null,'1',null,null,'1','2016-10-08 14:31:47'),('20','1','8','System/userlist',null,'管理用户','System/userlist',null,null,null,null,null,null,'3','2016-09-19 18:18:31'),('21','1','8','System/history',null,'登录日志','System/history',null,null,null,null,null,null,'4','2016-09-19 18:19:07'),('22','1','9','System/databackup',null,'数据库备份','System/databackup',null,null,null,null,null,null,'1','2016-09-19 18:19:27'),('23','1','9','System/databackuplist',null,'查看备份','System/databackuplist',null,null,null,null,null,null,'2','2016-09-19 18:19:52'),('88','1','2','website/onlinelist',null,'在线客服','website/onlinelist,tables=onlineqq','onlineqq',null,null,null,'1','user','7','2018-07-21 11:42:02'),('86','1','2','website/message',null,'留言信息','website/message,tables=message','message',null,null,null,'1','commenting','4','2018-07-21 11:41:37'),('87','1','2','website/linkslist',null,'友情链接','website/linkslist,tables=links','links',null,null,null,null,'link','6','2018-07-21 11:41:47'),('85','1','83','website/datalist',null,'资料管理','website/datalist,tables=information&martables=inftype','information','inftype',null,null,'1',null,'2','2016-12-09 19:57:07'),('82','1','2','website/aboutlist',null,'关于我们','website/aboutlist,tables=aboutus','aboutus',null,null,null,'1','cube','1','2018-07-21 11:41:07'),('83','1','2',null,null,'新闻资讯',null,null,null,null,null,'1','list-alt','3','2018-07-26 10:47:44'),('84','1','83','website/datatypelist',null,'类别管理','website/datatypelist,tables=inftype','inftype',null,null,null,'1',null,'1','2016-12-09 19:56:31'),('96','1','15','website/datatypelist',null,'广告类目','website/datatypelist,tables=advtype','advtype',null,null,null,'1',null,'1','2017-04-07 16:05:45'),('97','1','15','System/advlist',null,'广告管理','System/advlist',null,null,null,null,'1',null,'2','2017-04-07 15:44:51'),('95','1','92','Product/productlist',null,'产品管理','Product/productlist,tables=product','product',null,null,null,'1',null,'3','2016-12-19 08:50:27'),('94','1','92','Product/promtaglist',null,'子类管理','Product/promtaglist,tables=promtag','promtag',null,null,null,'1',null,'2','2016-12-19 08:49:27'),('93','1','92','Product/proctaglist',null,'类别管理','Product/proctaglist,tables=proctag','proctag',null,null,null,'1',null,'1','2016-12-19 08:48:37'),('105','2','2','website/aboutlist',null,'服务项目','website/aboutlist,tables=aboutus&sty=2','aboutus',null,null,null,'1','globe','1','2018-07-26 16:39:59'),('77','1','8','System/admindepartment',null,'部门管理','System/admindepartment',null,null,null,null,'1',null,'2','2016-09-24 14:36:41'),('78','1','7','System/syswater',null,'水印设置','System/syswater',null,null,'1',null,null,null,'4','2016-10-08 09:34:38'),('99','1','1',null,null,'百度优化',null,null,null,null,null,'1','jsfiddle','8','2018-07-21 11:40:58'),('100','1','99','Seo/SeoConf',null,'参数设置','Seo/SeoConf',null,null,null,null,'1',null,'1','2017-08-09 17:09:23'),('101','1','99','Seo/SeoSend',null,'手动提交链接','Seo/SeoSend',null,null,null,null,'1',null,'2','2017-08-09 17:10:11'),('102','1','1','Seo/map',null,'网站地图','Seo/map',null,null,null,null,'1','map-o','9','2017-08-09 20:33:04'),('104','1','2',null,null,'修锁案例',null,null,null,null,null,'1','wrench','1','2018-07-26 09:55:57'),('106','2','104','website/datatypelist',null,'分类管理','website/datatypelist,tables=inftype&sty=2','inftype',null,null,null,'1',null,'1','2018-07-27 09:36:40'),('107','2','104','website/datalist',null,'案例列表','website/datalist,tables=information&martables=inftype&sty=2','information','inftype',null,null,'1',null,'2','2018-07-26 16:45:59');/* MySQLReback Separation */
 /* 创建表结构 `bh_admindepartment`  */
 DROP TABLE IF EXISTS `bh_admindepartment`;/* MySQLReback Separation */ CREATE TABLE `bh_admindepartment` (
  `Id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `topic` varchar(50) DEFAULT NULL COMMENT '//topic',
  `auth` varchar(500) DEFAULT NULL COMMENT '//后台权限',
  `ord` int(2) DEFAULT '0' COMMENT '//排序',
  `date` datetime DEFAULT NULL COMMENT '//时间',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `bh_admindepartment` */
 INSERT INTO `bh_admindepartment` VALUES ('1','超级管理员','2,82,105,104,106,107,83,84,85,15,96,97,88,1,7,12,18,78,8,19,77,20,21,9,22,23,13,14,16,99,100,101,102','1','2018-08-06 10:33:27');/* MySQLReback Separation */
 /* 创建表结构 `bh_adminrecord`  */
 DROP TABLE IF EXISTS `bh_adminrecord`;/* MySQLReback Separation */ CREATE TABLE `bh_adminrecord` (
  `Id` int(4) NOT NULL AUTO_INCREMENT,
  `user` char(20) NOT NULL COMMENT '//管理员用户名',
  `ip` char(20) NOT NULL COMMENT '//登录IP',
  `date` datetime DEFAULT NULL COMMENT '//登录时间',
  PRIMARY KEY (`Id`),
  FULLTEXT KEY `user` (`user`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `bh_adminrecord` */
 INSERT INTO `bh_adminrecord` VALUES ('1','admin','0.0.0.0','2018-08-03 09:25:25'),('2','admin','0.0.0.0','2018-08-03 18:08:56'),('3','admin','0.0.0.0','2018-08-04 09:21:43'),('4','admin','0.0.0.0','2018-08-04 18:00:56'),('5','admin','0.0.0.0','2018-08-06 10:32:54'),('6','admin','0.0.0.0','2018-08-07 14:19:46'),('7','admin','0.0.0.0','2018-08-13 10:55:17'),('8','admin','0.0.0.0','2018-08-13 14:33:20'),('9','admin','0.0.0.0','2018-08-13 15:12:28'),('10','admin','0.0.0.0','2018-08-15 08:37:44'),('11','admin','0.0.0.0','2018-08-20 17:43:46'),('12','admin','0.0.0.0','2018-08-21 08:20:05'),('13','admin','0.0.0.0','2018-08-21 08:35:25'),('14','admin','0.0.0.0','2018-08-21 08:41:57'),('15','admin','0.0.0.0','2018-08-24 08:25:16'),('16','admin','192.168.0.200','2019-03-22 15:19:11');/* MySQLReback Separation */
 /* 创建表结构 `bh_adminuser`  */
 DROP TABLE IF EXISTS `bh_adminuser`;/* MySQLReback Separation */ CREATE TABLE `bh_adminuser` (
  `Id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `depid` int(2) NOT NULL DEFAULT '0' COMMENT '//部门ID',
  `user` char(25) DEFAULT NULL COMMENT '//登录名称',
  `userpass` char(42) DEFAULT NULL COMMENT '//登录密码',
  `randcode` char(6) NOT NULL DEFAULT '654321' COMMENT '//随机码',
  `realname` char(30) DEFAULT NULL COMMENT '//管理员名称',
  `email` char(50) DEFAULT NULL COMMENT '//后台邮箱',
  `auth` varchar(500) DEFAULT NULL COMMENT '//后台权限',
  `count` int(2) DEFAULT '0' COMMENT '//累计登录次数',
  `last_ip` char(30) DEFAULT NULL COMMENT '//最后登录Ip',
  `last_time` datetime DEFAULT NULL COMMENT '//最后登录时间',
  `reg_time` datetime DEFAULT NULL COMMENT '//注册时间',
  PRIMARY KEY (`Id`),
  UNIQUE KEY `user` (`user`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `bh_adminuser` */
 INSERT INTO `bh_adminuser` VALUES ('1','1','admin','12241b80badf1834556da58a0bbb98ac','944793','admin','admin@163.com',null,'38','192.168.0.200','2019-03-22 15:19:11','2015-05-25 17:54:12');/* MySQLReback Separation */
 /* 创建表结构 `bh_advdata`  */
 DROP TABLE IF EXISTS `bh_advdata`;/* MySQLReback Separation */ CREATE TABLE `bh_advdata` (
  `Id` int(4) NOT NULL AUTO_INCREMENT,
  `topic` char(200) DEFAULT NULL COMMENT '//标题',
  `pic` char(100) DEFAULT NULL COMMENT '//图片路径',
  `picwidth` int(4) NOT NULL DEFAULT '0' COMMENT '//广告宽度',
  `picheight` int(4) NOT NULL DEFAULT '0' COMMENT '//广告高度',
  `ctag` int(4) DEFAULT '0' COMMENT '//广告分类，数据保留',
  `enabled` tinyint(1) NOT NULL DEFAULT '1' COMMENT '//是否显示',
  `linkurl` varchar(200) DEFAULT '###' COMMENT '//链接地址',
  `remark` char(50) DEFAULT NULL COMMENT '//广告备注',
  `hit` int(4) DEFAULT '1' COMMENT '//点击率',
  `ord` int(2) NOT NULL DEFAULT '0' COMMENT '//广告排序',
  `date` datetime DEFAULT NULL COMMENT '//广告发布时间',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `bh_advdata` */
 INSERT INTO `bh_advdata` VALUES ('1','广告','20180728/5b5c3f0b8c843.jpg',null,null,'1','1','###',null,'1','1','2018-07-28 18:02:06'),('2','内页图片1920 * 300','20180728/1be381370a204.jpg',null,null,'2','1','###',null,'1','1','2018-07-28 16:48:51'),('3','门店','20180728/5b5c338f082f0.jpg',null,null,'3','1','###',null,'1','1','2018-07-28 17:13:16'),('4','执照','20180728/5b5c33d3c61be.jpg',null,null,'4','1','#',null,'1','2','2018-07-30 10:28:06'),('5','证明','20180728/5b5c33f7666a3.jpg',null,null,'5','1','#',null,'1','4','2018-07-30 10:24:05'),('6','锁','20180728/5b5c343c31e89.jpg',null,null,'6','1','#',null,'1','1','2018-07-28 17:15:41'),('9','手机站大图','20180804/5b6500e419c73.jpg',null,null,'7','1','#',null,'1','1','2018-08-04 09:27:46'),('8','首页广告','20180730/5b5e64b32d7d5.jpg',null,null,'1','1','#',null,'1','1','2018-07-30 09:07:35'),('10','手机站大图','20180804/5b651857bb405.jpg',null,null,'7','1','#',null,'1','2','2018-08-04 11:07:20'),('11','手机站大图','20180804/5b6500e419c73.jpg',null,null,'7','1','#',null,'1','3','2018-08-04 09:27:46');/* MySQLReback Separation */
 /* 创建表结构 `bh_advtype`  */
 DROP TABLE IF EXISTS `bh_advtype`;/* MySQLReback Separation */ CREATE TABLE `bh_advtype` (
  `Id` int(4) NOT NULL AUTO_INCREMENT,
  `sty` tinyint(1) NOT NULL DEFAULT '0',
  `domain` char(20) DEFAULT NULL COMMENT '//域名',
  `topic` char(150) DEFAULT NULL COMMENT '//标题',
  `pic` char(100) DEFAULT NULL COMMENT '//图片',
  `ord` smallint(1) DEFAULT '0' COMMENT '//排序',
  `enabled` tinyint(1) DEFAULT '1' COMMENT '//是否显示',
  `date` datetime DEFAULT NULL COMMENT '//发布日期',
  PRIMARY KEY (`Id`),
  KEY `sty` (`sty`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `bh_advtype` */
 INSERT INTO `bh_advtype` VALUES ('1','1',null,'首页banner广告 1920*360',null,'1','1','2017-07-28 14:31:37'),('2','1',null,'内页图片1920 * 300',null,'2','1','2018-07-28 16:48:00'),('3','1',null,'首页关于我们门店图',null,'3','1','2018-08-04 09:22:40'),('4','1',null,'首页关于我们营业执照图',null,'4','1','2018-08-04 09:22:57'),('5','1',null,'首页关于我们执照证明图',null,'5','1','2018-08-04 09:23:18'),('6','1',null,'首页新闻资讯锁图',null,'6','1','2018-08-04 09:23:41'),('7','1',null,'手机首页轮播大图',null,'7','1','2018-08-04 09:24:44');/* MySQLReback Separation */
 /* 创建表结构 `bh_information`  */
 DROP TABLE IF EXISTS `bh_information`;/* MySQLReback Separation */ CREATE TABLE `bh_information` (
  `Id` int(4) NOT NULL AUTO_INCREMENT,
  `sty` tinyint(1) NOT NULL DEFAULT '0' COMMENT '//预留属性(sty)',
  `tag` varchar(50) DEFAULT NULL COMMENT '//TAG标签',
  `istop` tinyint(1) NOT NULL DEFAULT '0' COMMENT '//是否置顶',
  `ishot` tinyint(1) NOT NULL DEFAULT '0' COMMENT '//是否热门新闻',
  `inftype` int(4) NOT NULL DEFAULT '0' COMMENT '//新闻分类ID',
  `topic` varchar(200) DEFAULT NULL COMMENT '//标题',
  `title` varchar(200) DEFAULT NULL COMMENT '//title',
  `intro` varchar(250) DEFAULT NULL COMMENT '//新闻简介',
  `keyword` varchar(250) DEFAULT NULL COMMENT '//关键词',
  `metades` varchar(250) DEFAULT NULL COMMENT '//描述',
  `linkurl` varchar(200) DEFAULT NULL COMMENT '//跳转链接',
  `source` char(20) DEFAULT NULL COMMENT '//来源',
  `author` char(20) DEFAULT NULL COMMENT '//作者',
  `pic` varchar(100) DEFAULT NULL COMMENT '//新闻配图',
  `filename` varchar(200) DEFAULT NULL COMMENT '//fielname',
  `content` blob COMMENT '//内容',
  `enabled` tinyint(1) NOT NULL DEFAULT '1' COMMENT '//是否显示',
  `topiccolor` char(20) DEFAULT NULL COMMENT '//显示颜色',
  `topicsize` char(20) DEFAULT NULL COMMENT '//标题显示大小',
  `isstrong` tinyint(1) NOT NULL DEFAULT '0' COMMENT '//是否加粗',
  `ord` int(2) NOT NULL DEFAULT '0' COMMENT '//排序 默认发布日期，第二按这个排序',
  `hit` int(4) NOT NULL DEFAULT '0' COMMENT '//新闻点击率',
  `date` datetime DEFAULT NULL COMMENT '//发布日期',
  PRIMARY KEY (`Id`),
  KEY `inftype` (`inftype`),
  KEY `sty` (`sty`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `bh_inftype`  */
 DROP TABLE IF EXISTS `bh_inftype`;/* MySQLReback Separation */ CREATE TABLE `bh_inftype` (
  `Id` int(4) NOT NULL AUTO_INCREMENT,
  `sty` tinyint(1) NOT NULL DEFAULT '0' COMMENT '//sty',
  `domain` char(20) DEFAULT NULL COMMENT '//个性域名',
  `topic` char(150) DEFAULT NULL COMMENT '//标题',
  `pic` char(100) DEFAULT NULL COMMENT '//图片',
  `ord` smallint(1) DEFAULT '0' COMMENT '//排序',
  `enabled` tinyint(1) DEFAULT '1' COMMENT '//是否显示',
  `date` datetime DEFAULT NULL COMMENT '//发布日期',
  PRIMARY KEY (`Id`),
  KEY `sty` (`sty`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `bh_links`  */
 DROP TABLE IF EXISTS `bh_links`;/* MySQLReback Separation */ CREATE TABLE `bh_links` (
  `Id` int(4) NOT NULL AUTO_INCREMENT,
  `sty` tinyint(1) NOT NULL DEFAULT '1' COMMENT '//保留字段',
  `topic` char(50) NOT NULL COMMENT '//标题',
  `pic` char(100) DEFAULT NULL COMMENT '//图片',
  `linkurl` char(200) DEFAULT NULL COMMENT '//跳转链接',
  `enabled` tinyint(1) NOT NULL DEFAULT '1' COMMENT '//是否显示栏目',
  `ord` smallint(1) DEFAULT '0' COMMENT '//排序',
  `date` datetime NOT NULL COMMENT '//发布更新日期',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `bh_links` */
 INSERT INTO `bh_links` VALUES ('1','1','百恒网络',null,'http://www.jxbh.cn','1','1','2017-05-12 09:46:23');/* MySQLReback Separation */
 /* 创建表结构 `bh_message`  */
 DROP TABLE IF EXISTS `bh_message`;/* MySQLReback Separation */ CREATE TABLE `bh_message` (
  `Id` int(4) NOT NULL AUTO_INCREMENT,
  `sty` tinyint(1) NOT NULL DEFAULT '0' COMMENT '//留言类型(保留)',
  `topic` char(200) DEFAULT '如内容' COMMENT '//留言主题',
  `address` varchar(250) DEFAULT NULL COMMENT '//联系地址',
  `content` text COMMENT '//留言内容',
  `enabled` tinyint(1) DEFAULT '0' COMMENT '//是否处理',
  `user` char(20) DEFAULT NULL COMMENT '//留言名称',
  `tel` char(35) DEFAULT NULL COMMENT '//联系电话',
  `email` char(50) DEFAULT NULL COMMENT '//联系email',
  `phone` char(35) DEFAULT NULL COMMENT '//联系手机',
  `ip` char(20) DEFAULT NULL COMMENT '//留言人IP',
  `date` datetime DEFAULT NULL COMMENT '//留言时间',
  `recontent` text COMMENT '//回复内容',
  `redate` datetime DEFAULT NULL COMMENT '//回复时间',
  PRIMARY KEY (`Id`),
  KEY `type` (`sty`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `bh_onlineqq`  */
 DROP TABLE IF EXISTS `bh_onlineqq`;/* MySQLReback Separation */ CREATE TABLE `bh_onlineqq` (
  `Id` int(4) NOT NULL AUTO_INCREMENT,
  `sty` tinyint(1) NOT NULL DEFAULT '1' COMMENT '//(sty)',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '// type',
  `topic` char(150) DEFAULT NULL COMMENT '//标题',
  `amount` varchar(100) DEFAULT NULL COMMENT '//账户',
  `weixin` char(100) DEFAULT NULL COMMENT '//微信',
  `phone` char(20) DEFAULT NULL COMMENT '//手机号码',
  `ord` smallint(1) DEFAULT '0' COMMENT '//排序',
  `enabled` tinyint(1) DEFAULT '1' COMMENT '//是否显示',
  `date` datetime DEFAULT NULL COMMENT '//发布日期',
  PRIMARY KEY (`Id`),
  KEY `sty` (`sty`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `bh_onlineqq` */
 INSERT INTO `bh_onlineqq` VALUES ('1','1',null,'百恒科技','282441445',null,null,'1','1','2017-07-31 08:30:18');/* MySQLReback Separation */
 /* 创建表结构 `bh_oretrading`  */
 DROP TABLE IF EXISTS `bh_oretrading`;/* MySQLReback Separation */ CREATE TABLE `bh_oretrading` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `topic` varchar(300) DEFAULT NULL COMMENT '//内容标题',
  `fortype` char(200) DEFAULT NULL COMMENT '//隶属栏目',
  `wordone` varchar(500) DEFAULT NULL COMMENT '//关键词一',
  `wordtwo` varchar(500) DEFAULT NULL COMMENT '//备用字段',
  `country` char(100) DEFAULT NULL COMMENT '//国家',
  `province` char(200) DEFAULT NULL COMMENT '//省',
  `area` varchar(300) DEFAULT NULL COMMENT '面积',
  `reserves` varchar(300) DEFAULT NULL COMMENT '//储量',
  `enabled` tinyint(1) NOT NULL DEFAULT '1' COMMENT '//是否启用',
  `date` datetime DEFAULT NULL COMMENT '//时间',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `bh_proctag`  */
 DROP TABLE IF EXISTS `bh_proctag`;/* MySQLReback Separation */ CREATE TABLE `bh_proctag` (
  `Id` int(4) NOT NULL AUTO_INCREMENT,
  `sty` tinyint(1) NOT NULL DEFAULT '0' COMMENT '//预留属性(sty)',
  `domain` char(20) DEFAULT NULL COMMENT '//个性域名',
  `topic` char(150) DEFAULT NULL COMMENT '//类别标题',
  `pic` char(100) DEFAULT NULL COMMENT '//图片',
  `ord` smallint(1) DEFAULT '0' COMMENT '//新闻类排序',
  `enabled` tinyint(1) DEFAULT '1' COMMENT '//是否显示',
  `date` datetime DEFAULT NULL COMMENT '//发布日期',
  PRIMARY KEY (`Id`),
  KEY `sty` (`sty`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `bh_product`  */
 DROP TABLE IF EXISTS `bh_product`;/* MySQLReback Separation */ CREATE TABLE `bh_product` (
  `Id` int(4) NOT NULL AUTO_INCREMENT,
  `sty` tinyint(1) NOT NULL DEFAULT '0' COMMENT '//预留属性(sty)',
  `tag` varchar(150) DEFAULT NULL COMMENT '//TAG标签',
  `ctag` int(4) NOT NULL DEFAULT '0' COMMENT '//产品分类',
  `mtag` int(4) NOT NULL DEFAULT '0' COMMENT '//mtag',
  `topic` char(200) DEFAULT NULL COMMENT '//产品名称',
  `title` varchar(200) DEFAULT NULL COMMENT '//title',
  `linkurl` varchar(250) DEFAULT NULL COMMENT '//跳转链接',
  `pic` varchar(100) DEFAULT NULL COMMENT '//产品配图',
  `keyword` varchar(250) DEFAULT NULL COMMENT '//关键词',
  `metades` varchar(250) DEFAULT NULL COMMENT '//描述',
  `source` char(20) DEFAULT NULL COMMENT '//来源',
  `author` char(20) DEFAULT NULL COMMENT '//作者',
  `intro` varchar(250) DEFAULT NULL COMMENT '//产品简介',
  `content` text COMMENT '//产品内容',
  `topiccolor` char(20) DEFAULT NULL COMMENT '//显示颜色',
  `ord` int(4) NOT NULL DEFAULT '0' COMMENT '//排序 默认发布日期，第二按这个排序',
  `hit` int(4) NOT NULL DEFAULT '0' COMMENT '//产品点击率',
  `ishot` tinyint(1) NOT NULL DEFAULT '0' COMMENT '//是否热门产品',
  `istop` tinyint(1) NOT NULL DEFAULT '0' COMMENT '//是否置顶',
  `enabled` tinyint(1) NOT NULL DEFAULT '1' COMMENT '//是否显示',
  `date` datetime DEFAULT NULL COMMENT '//发布日期',
  PRIMARY KEY (`Id`),
  KEY `sty` (`sty`),
  KEY `ctag` (`ctag`,`mtag`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `bh_promtag`  */
 DROP TABLE IF EXISTS `bh_promtag`;/* MySQLReback Separation */ CREATE TABLE `bh_promtag` (
  `Id` int(4) NOT NULL AUTO_INCREMENT,
  `sty` tinyint(1) NOT NULL DEFAULT '0' COMMENT '//预留属性(sty)',
  `ctag` int(4) NOT NULL DEFAULT '0' COMMENT '//所属大类',
  `topic` char(50) NOT NULL COMMENT '//分类名称',
  `pic` char(100) DEFAULT NULL COMMENT '//图片',
  `ord` smallint(1) NOT NULL DEFAULT '1' COMMENT '//排序',
  `enabled` tinyint(1) NOT NULL DEFAULT '1' COMMENT '//是否启用',
  `date` datetime NOT NULL COMMENT '//更新时间',
  PRIMARY KEY (`Id`),
  KEY `ctag` (`ctag`),
  FULLTEXT KEY `topic` (`topic`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `bh_promtag` */
 INSERT INTO `bh_promtag` VALUES ('1','1',null,'锁是怎样炼成的',null,'1','1','2018-07-25 14:20:23');/* MySQLReback Separation */
 /* 创建表结构 `bh_seoconf`  */
 DROP TABLE IF EXISTS `bh_seoconf`;/* MySQLReback Separation */ CREATE TABLE `bh_seoconf` (
  `Id` int(4) NOT NULL AUTO_INCREMENT,
  `articleurl` varchar(150) DEFAULT NULL COMMENT '//文章url',
  `marticleurl` varchar(150) DEFAULT NULL COMMENT '//手机站的URL',
  `mipurl` varchar(150) DEFAULT NULL COMMENT 'mipurl',
  `baiduurl` varchar(150) DEFAULT NULL COMMENT '//百度自动推送url',
  `isauto` tinyint(1) NOT NULL DEFAULT '0' COMMENT '//是否自动推送',
  `date` datetime NOT NULL COMMENT '//发布更新日期',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `bh_systemconfig`  */
 DROP TABLE IF EXISTS `bh_systemconfig`;/* MySQLReback Separation */ CREATE TABLE `bh_systemconfig` (
  `Id` tinyint(1) unsigned NOT NULL AUTO_INCREMENT,
  `metatitle` char(250) DEFAULT NULL COMMENT '//title',
  `metades` char(250) DEFAULT NULL COMMENT '//网站描述',
  `metakey` char(250) DEFAULT NULL COMMENT '//关键词',
  `logo` char(50) DEFAULT NULL COMMENT '//logo路径',
  `companyname` char(200) DEFAULT NULL COMMENT '//公司名称',
  `companyurl` char(150) DEFAULT NULL COMMENT '//公司链接',
  `address` char(250) DEFAULT NULL COMMENT '//公司地址',
  `email` char(50) DEFAULT NULL COMMENT '//企业邮箱',
  `tel` char(50) DEFAULT NULL COMMENT '//企业电话',
  `contact` char(100) DEFAULT NULL COMMENT '//联系人',
  `mobile` char(50) DEFAULT NULL COMMENT '//手机号码',
  `fax` char(30) DEFAULT NULL COMMENT '//传真',
  `qq` char(50) DEFAULT NULL COMMENT '//qq号码',
  `weixinpic` varchar(100) DEFAULT NULL COMMENT '//微信二维码',
  `weibourl` varchar(200) DEFAULT NULL COMMENT '//微博链接',
  `icpnote` char(50) DEFAULT NULL COMMENT '//icp备案号',
  `c_reg` tinyint(1) DEFAULT '0' COMMENT '//关闭注册',
  `shieldip` text COMMENT '//需要屏蔽的IP',
  `iptips` char(200) DEFAULT NULL COMMENT '//过滤IP提示语',
  `c_site` tinyint(1) DEFAULT '0' COMMENT '//关闭项目',
  `c_text` char(250) DEFAULT '升级中……' COMMENT '//关闭说明',
  `sys_parameter` text COMMENT '//系统参数',
  `sys_code` text COMMENT '//第三方代码（ex:百度）',
  `sys_notice` varchar(250) DEFAULT NULL COMMENT '//通知，紧急通知',
  `mailsmtp` char(50) CHARACTER SET ucs2 NOT NULL COMMENT '//邮件Smtp',
  `mailport` char(10) CHARACTER SET ucs2 NOT NULL DEFAULT '25' COMMENT '//邮件端口',
  `mailname` char(50) DEFAULT NULL COMMENT '//邮箱名称',
  `mailpass` char(50) DEFAULT NULL COMMENT '//邮箱密码',
  `wordfilter` text COMMENT '//词汇过滤',
  `regread` text COMMENT '//注册须知',
  `copy_info` varchar(200) DEFAULT NULL COMMENT '//页尾版权信息',
  `iswater` tinyint(1) NOT NULL DEFAULT '0' COMMENT '//是否开启水印功能',
  `fontpos` tinyint(1) NOT NULL DEFAULT '9' COMMENT '//水印位置',
  `waterpos` tinyint(1) NOT NULL DEFAULT '9' COMMENT '//水印位置',
  `waterpic` char(50) DEFAULT NULL COMMENT '//水印图片',
  `fonttext` char(50) DEFAULT NULL COMMENT '//文字水印',
  `fontsize` int(4) NOT NULL DEFAULT '20' COMMENT '//文字大小',
  `fontcolor` char(50) NOT NULL DEFAULT '#ffffff' COMMENT '//文字颜色',
  `facetype` tinyint(1) NOT NULL DEFAULT '0' COMMENT '//facetype',
  `rotation` smallint(1) NOT NULL DEFAULT '0' COMMENT '//旋转',
  `wateralpha` tinyint(1) NOT NULL DEFAULT '100' COMMENT '//alpha值',
  `picsize` int(4) NOT NULL DEFAULT '0' COMMENT '//上传大小（图片）',
  `filesize` int(4) NOT NULL DEFAULT '0' COMMENT '//文件上传大小',
  `picsuffix` varchar(500) DEFAULT NULL COMMENT '//允许上传图片的后缀',
  `filesuffix` varchar(500) DEFAULT NULL COMMENT '//允许上传的非图片的后缀',
  `picmaxwidth` int(4) NOT NULL COMMENT '//图片超过尺寸裁剪',
  `picmaxsize` int(4) NOT NULL DEFAULT '0' COMMENT '//当大小大于 该值时也进行裁剪 0表示不进行操作',
  `cropwidth` int(4) NOT NULL DEFAULT '0' COMMENT '//裁剪至',
  `islog` tinyint(1) NOT NULL DEFAULT '0' COMMENT '//开启日志功能',
  `isclear` tinyint(1) NOT NULL DEFAULT '0' COMMENT '//开启日志清理',
  `isonline` tinyint(1) NOT NULL DEFAULT '1' COMMENT '//是否开启收集信息',
  `isqq` tinyint(1) NOT NULL DEFAULT '0' COMMENT '//是否显示客服',
  `urlmodel` tinyint(1) NOT NULL DEFAULT '2' COMMENT '//urlmodel',
  `urlsuffix` char(10) DEFAULT NULL COMMENT '//定义静态后缀',
  `adminpage` smallint(1) NOT NULL DEFAULT '0' COMMENT '//配置分页值',
  `userset` varchar(500) DEFAULT NULL COMMENT '//预留会员信息',
  `adminpath` char(20) DEFAULT NULL COMMENT '//后台',
  `date` datetime DEFAULT NULL COMMENT '//更新日期',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `bh_systemconfig` */
 INSERT INTO `bh_systemconfig` VALUES ('1',null,null,null,null,null,null,null,'13867632507','632507',null,'13867632507',null,'13867632507','20180802/5b6271c91ac33.jpg',null,'赣ICP备12345678号',null,null,'您的IP将禁用一段时间。',null,'网站项目维护中...',null,null,null,'smtp.163.com','25',null,null,null,null,null,null,'9','9',null,'JXBH.CN','36','#1ea5d7','5',null,'25','10240','10240','jpg,gif,png,jpeg','doc,docx,rar,xlsx,mp4','1200','2','1000','1','1','1','1','2',null,'15',null,null,'0000-00-00 00:00:00');/* MySQLReback Separation */
 /* 创建表结构 `bh_title`  */
 DROP TABLE IF EXISTS `bh_title`;/* MySQLReback Separation */ CREATE TABLE `bh_title` (
  `Id` int(4) NOT NULL AUTO_INCREMENT,
  `tables` char(50) DEFAULT NULL COMMENT '关联表',
  `tid` int(4) NOT NULL DEFAULT '0' COMMENT '//关联表ID',
  `title` varchar(200) DEFAULT NULL COMMENT '//title',
  `remark` varchar(50) DEFAULT NULL COMMENT '备注',
  `keyword` varchar(250) DEFAULT NULL COMMENT '//页面关键词',
  `metades` varchar(250) DEFAULT NULL COMMENT '//页面描述',
  `date` datetime NOT NULL COMMENT '//发布更新日期',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;/* MySQLReback Separation */