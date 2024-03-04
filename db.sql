/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - shequchaosguanli
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`shequchaosguanli` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `shequchaosguanli`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(20) NOT NULL COMMENT '创建用户',
  `address_name` varchar(200) NOT NULL COMMENT '收货人 ',
  `address_phone` varchar(200) NOT NULL COMMENT '电话 ',
  `address_dizhi` varchar(200) NOT NULL COMMENT '地址 ',
  `isdefault_types` int(11) NOT NULL COMMENT '是否默认地址 ',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='收货地址';

/*Data for the table `address` */

insert  into `address`(`id`,`yonghu_id`,`address_name`,`address_phone`,`address_dizhi`,`isdefault_types`,`insert_time`,`update_time`,`create_time`) values (1,1,'张三','13311331211','在地图选择',1,'2022-01-19 13:36:26','2022-01-19 13:36:26','2022-01-19 13:36:26'),(2,2,'王五','13322211311','河南省郑州市中原区中原西路233号中原区林山寨郑州市人民政府(中原中路南)',2,'2022-01-21 10:08:33','2022-01-21 10:08:32','2022-01-21 10:08:33');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '所属用户',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='购物车';

/*Data for the table `cart` */

/*Table structure for table `chaoshi` */

DROP TABLE IF EXISTS `chaoshi`;

CREATE TABLE `chaoshi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `chaoshi_name` varchar(200) DEFAULT NULL COMMENT '超市管理姓名 Search111 ',
  `chaoshi_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `chaoshi_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号 ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `chaoshi_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='超市管理员';

/*Data for the table `chaoshi` */

insert  into `chaoshi`(`id`,`username`,`password`,`chaoshi_name`,`chaoshi_phone`,`chaoshi_id_number`,`sex_types`,`chaoshi_delete`,`create_time`) values (1,'333','123456','超市管理1','17744455641','410882200401042150',1,1,'2022-01-19 09:08:43');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/shequchaosguanli/upload/1642574838128.jpg'),(2,'picture2','http://localhost:8080/shequchaosguanli/upload/1642574857852.jpg'),(3,'picture3','http://localhost:8080/shequchaosguanli/upload/1642575014674.jpg'),(6,'homepage',NULL);

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (74,'shangxia_types','上下架',1,'上架',NULL,NULL,NULL),(75,'shangxia_types','上下架',2,'下架',NULL,NULL,NULL),(76,'shangpin_types','商品类型名称',1,'商品类型1',NULL,NULL,NULL),(77,'shangpin_types','商品类型名称',2,'商品类型2',NULL,NULL,NULL),(78,'shangpin_types','商品类型名称',3,'商品类型3',NULL,NULL,NULL),(79,'shangpin_order_payment_types','支付方式',1,'余额支付',NULL,NULL,NULL),(80,'sex_types','性别类型名称',2,'女',NULL,NULL,NULL),(81,'sex_types','性别类型名称',1,'男',NULL,NULL,NULL),(82,'news_types','新闻类型名称',1,'促销活动',NULL,'',NULL),(83,'news_types','新闻类型名称',2,'推广信息',NULL,'',NULL),(84,'news_types','新闻类型名称',3,'紧急情况',NULL,'',NULL),(85,'shangpin_order_types','订单类型名称',1,'退款',NULL,NULL,NULL),(86,'shangpin_order_types','订单类型名称',2,'已支付',NULL,NULL,NULL),(87,'shangpin_order_types','订单类型名称',3,'已发货',NULL,NULL,NULL),(88,'shangpin_order_types','订单类型名称',4,'已收货',NULL,NULL,NULL),(89,'shangpin_order_types','订单类型名称',5,'已评价',NULL,NULL,NULL),(90,'shangpinchuruku_types','类型',1,'出库',NULL,NULL,NULL),(91,'shangpinchuruku_types','类型',2,'入库',NULL,NULL,NULL),(92,'shangpin_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2022-01-18 17:09:58'),(93,'isdefault_types','是否默认地址',1,'否',NULL,NULL,'2022-01-18 17:09:58'),(94,'isdefault_types','是否默认地址',2,'是',NULL,NULL,'2022-01-18 17:09:58');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `news_name` varchar(200) DEFAULT NULL COMMENT '新闻名称 Search111  ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '新闻图片 ',
  `news_types` int(11) NOT NULL COMMENT '新闻类型 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '新闻发布时间 ',
  `news_content` text COMMENT '新闻详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='新闻信息';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_photo`,`news_types`,`insert_time`,`news_content`,`create_time`) values (1,'新闻1','http://localhost:8080/shequchaosguanli/upload/1642575102816.jpg',1,'2022-01-19 14:51:47','<p><span style=\"color: rgb(96, 98, 102);\">新闻详情1</span></p>','2022-01-19 14:51:47'),(2,'新闻2','http://localhost:8080/shequchaosguanli/upload/1642575177932.jpg',3,'2022-01-19 14:53:01','<p><span style=\"color: rgb(96, 98, 102);\">新闻详情2</span></p>','2022-01-19 14:53:01');

/*Table structure for table `shangpin` */

DROP TABLE IF EXISTS `shangpin`;

CREATE TABLE `shangpin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `shangpin_name` varchar(200) DEFAULT NULL COMMENT '商品名称  Search111 ',
  `shangpin_types` int(11) DEFAULT NULL COMMENT '商品类型  Search111 ',
  `shangpin_photo` varchar(200) DEFAULT NULL COMMENT '商品照片',
  `shangpin_jiliang` varchar(200) DEFAULT NULL COMMENT '计量单位',
  `shangpin_kucun_number` int(11) DEFAULT '0' COMMENT '商品库存',
  `shangpin_old_money` decimal(10,2) DEFAULT NULL COMMENT '商品原价 ',
  `shangpin_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价 ',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `shangpin_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `shangpin_content` text COMMENT '商品简介 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='商品信息';

/*Data for the table `shangpin` */

insert  into `shangpin`(`id`,`shangpin_name`,`shangpin_types`,`shangpin_photo`,`shangpin_jiliang`,`shangpin_kucun_number`,`shangpin_old_money`,`shangpin_new_money`,`shangxia_types`,`shangpin_delete`,`shangpin_content`,`create_time`) values (1,'商品1',1,'http://localhost:8080/shequchaosguanli/upload/1642554616753.jpg','包',897,'25.00','20.00',1,1,'<p><span style=\"color: rgb(96, 98, 102);\">商品简介1</span></p>','2022-01-19 09:10:42'),(2,'商品2',2,'http://localhost:8080/shequchaosguanli/upload/1642554660129.jpg','包',728,'20.00','15.00',1,1,'<p><span style=\"color: rgb(96, 98, 102);\">商品简介2</span></p>','2022-01-19 09:11:14'),(3,'商品3',3,'http://localhost:8080/shequchaosguanli/upload/1642554683281.jpg','包',18,'10.00','5.00',1,1,'<p><span style=\"color: rgb(96, 98, 102);\">商品简介3</span></p>','2022-01-19 09:11:48');

/*Table structure for table `shangpin_collection` */

DROP TABLE IF EXISTS `shangpin_collection`;

CREATE TABLE `shangpin_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shangpin_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='商品收藏';

/*Data for the table `shangpin_collection` */

insert  into `shangpin_collection`(`id`,`shangpin_id`,`yonghu_id`,`shangpin_collection_types`,`insert_time`,`create_time`) values (2,2,2,1,'2022-01-21 09:51:08','2022-01-21 09:51:08');

/*Table structure for table `shangpin_commentback` */

DROP TABLE IF EXISTS `shangpin_commentback`;

CREATE TABLE `shangpin_commentback` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shangpin_commentback_text` text COMMENT '评价内容',
  `reply_text` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='商品评价';

/*Data for the table `shangpin_commentback` */

insert  into `shangpin_commentback`(`id`,`shangpin_id`,`yonghu_id`,`shangpin_commentback_text`,`reply_text`,`insert_time`,`update_time`,`create_time`) values (4,2,2,'我是评价内容','我是回复内容','2022-01-21 10:11:17','2022-01-21 10:21:17','2022-01-21 10:11:17');

/*Table structure for table `shangpin_order` */

DROP TABLE IF EXISTS `shangpin_order`;

CREATE TABLE `shangpin_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单号',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `buy_number` int(200) DEFAULT NULL COMMENT '购买的数量',
  `address_id` int(11) DEFAULT NULL COMMENT '收获地址 ',
  `shangpin_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格 ',
  `shangpin_order_types` int(11) DEFAULT NULL COMMENT '订单类型',
  `shangpin_order_payment_types` int(11) DEFAULT NULL COMMENT '支付类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间 Search111',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='商品订单';

/*Data for the table `shangpin_order` */

insert  into `shangpin_order`(`id`,`shangpin_order_uuid_number`,`shangpin_id`,`yonghu_id`,`buy_number`,`address_id`,`shangpin_order_true_price`,`shangpin_order_types`,`shangpin_order_payment_types`,`insert_time`,`create_time`) values (1,'1642645076335',2,1,1,1,'15.00',1,1,'2022-01-20 10:17:56','2022-01-20 10:17:56'),(2,'1642645076335',3,1,1,1,'5.00',2,1,'2022-01-20 10:17:56','2022-01-20 10:17:56'),(3,'1642645076335',1,1,1,1,'20.00',4,1,'2022-01-20 10:17:56','2022-01-20 10:17:56'),(4,'1642645076335',3,1,1,1,'5.00',5,1,'2022-01-20 10:17:56','2022-01-20 10:17:56'),(5,'1642645076335',1,1,1,1,'20.00',5,1,'2022-01-20 10:17:56','2022-01-20 10:17:56'),(6,'1642730964608',1,2,3,2,'60.00',3,1,'2022-01-21 10:09:25','2022-01-21 10:09:25'),(7,'1642730964608',2,2,1,2,'15.00',5,1,'2022-01-21 10:09:25','2022-01-21 10:09:25'),(8,'1642730964608',3,2,4,2,'20.00',2,1,'2022-01-21 10:09:25','2022-01-21 10:09:25');

/*Table structure for table `shangpinchuruku` */

DROP TABLE IF EXISTS `shangpinchuruku`;

CREATE TABLE `shangpinchuruku` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品名称',
  `shangpinchuruku_number` int(11) DEFAULT '0' COMMENT '出入库数量',
  `shangpinchuruku_types` int(11) DEFAULT NULL COMMENT '类型',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='商品信息';

/*Data for the table `shangpinchuruku` */

insert  into `shangpinchuruku`(`id`,`shangpin_id`,`shangpinchuruku_number`,`shangpinchuruku_types`,`create_time`) values (2,3,10,1,'2022-01-19 09:49:45'),(3,3,1,2,'2022-01-21 09:10:39'),(4,2,90,1,'2022-01-21 09:11:00'),(5,3,2,2,'2022-01-21 11:30:17');

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','imnytxliful0yige4jxp9w686pyfwivb','2022-01-19 09:07:20','2022-01-21 12:29:51'),(2,1,'111','yonghu','用户','qdlqlepv25oqjwnh3473dgnlrrn7numl','2022-01-19 13:34:04','2022-01-21 12:03:12'),(3,2,'222','yonghu','用户','hhbl9ke5zerph9bh84voyvlqltlspvum','2022-01-21 09:49:21','2022-01-21 12:24:37'),(4,1,'333','chaoshi','超市管理员','yk3s2d0mmlur2kznuyuourwnv7t9xns7','2022-01-21 11:31:14','2022-01-21 12:31:14');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-02-25 15:59:12');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号 ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `yonghu_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_photo`,`yonghu_phone`,`yonghu_id_number`,`sex_types`,`new_money`,`yonghu_delete`,`create_time`) values (1,'111','123456','用户1','http://localhost:8080/shequchaosguanli/upload/1642554553658.jpg','13311311131','432114201111111111',1,'979.00',1,'2022-01-19 09:09:47'),(2,'222','123456','用户2','http://localhost:8080/shequchaosguanli/upload/1642729903145.jpg','13311333134','410882199911214111',1,'5.00',1,'2022-01-21 09:49:16');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
