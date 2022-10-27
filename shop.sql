/*
Navicat MySQL Data Transfer

Source Server         : first_link
Source Server Version : 80016
Source Host           : localhost:3306
Source Database       : shop

Target Server Type    : MYSQL
Target Server Version : 80016
File Encoding         : 65001

Date: 2021-12-30 07:59:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `car`
-- ----------------------------
DROP TABLE IF EXISTS `car`;
CREATE TABLE `car` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `total` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of car
-- ----------------------------
INSERT INTO `car` VALUES ('17', '27', '2', '1', '49.41', '49.41');

-- ----------------------------
-- Table structure for `comment`
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `addTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('7', '3', '35', '真的很不错', '2018-03-20 19:23:03');
INSERT INTO `comment` VALUES ('8', '3', '28', '真好吃', '2018-03-20 19:32:31');

-- ----------------------------
-- Table structure for `item`
-- ----------------------------
DROP TABLE IF EXISTS `item`;
CREATE TABLE `item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `scNum` int(11) DEFAULT NULL COMMENT '收藏数',
  `gmNum` int(11) DEFAULT NULL COMMENT '购买数',
  `url1` varchar(255) DEFAULT NULL,
  `url2` varchar(255) DEFAULT NULL,
  `url3` varchar(255) DEFAULT NULL,
  `url4` varchar(255) DEFAULT NULL,
  `url5` varchar(255) DEFAULT NULL,
  `ms` text,
  `pam1` varchar(255) DEFAULT NULL COMMENT '参数1',
  `pam2` varchar(255) DEFAULT NULL COMMENT '参数2',
  `pam3` varchar(255) DEFAULT NULL COMMENT '参数3',
  `val3` varchar(255) DEFAULT NULL COMMENT '值3',
  `val2` varchar(255) DEFAULT NULL COMMENT '值2',
  `val1` varchar(255) DEFAULT NULL COMMENT '值1',
  `type` int(11) DEFAULT NULL,
  `zk` int(10) DEFAULT NULL COMMENT '折扣',
  `category_id_one` int(11) DEFAULT NULL COMMENT '类别id',
  `category_id_two` int(11) DEFAULT NULL COMMENT '类别2级',
  `isDelete` int(2) DEFAULT NULL COMMENT '0否 1是',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of item
-- ----------------------------
INSERT INTO `item` VALUES ('27', '管家', '54.9', '2', '4', '/test1_war_exploded\\resource\\ueditor\\upload\\c018afa067a911ecf15fb52e96a797a1xuanfengguanjia.png', '/test1_war_exploded\\resource\\ueditor\\upload\\c0199a0067a911ecf15fb52e96a797a1xuanfengguanjia.png', '/test1_war_exploded\\resource\\ueditor\\upload\\c01e7c0067a911ecf15fb52e96a797a1xuanfengguanjia.png', '/test1_war_exploded\\resource\\ueditor\\upload\\c01f3f5067a911ecf15fb52e96a797a1xuanfengguanjia.png', '/test1_war_exploded\\resource\\ueditor\\upload\\c01fdb9067a911ecf15fb52e96a797a1xuanfengguanjia.png', '<p>管家</p>', null, null, null, null, null, null, null, '9', '75', '81', '0');
INSERT INTO `item` VALUES ('28', '银魂', '66.5', '1', '8', '/test1_war_exploded\\resource\\ueditor\\upload\\ab12741067a911ecf15fb52e96a797a1yinhun.png', '/test1_war_exploded\\resource\\ueditor\\upload\\ab13376067a911ecf15fb52e96a797a1yinhun.png', '/test1_war_exploded\\resource\\ueditor\\upload\\ab13fab067a911ecf15fb52e96a797a1yinhun.png', '/test1_war_exploded\\resource\\ueditor\\upload\\ab1951e067a911ecf15fb52e96a797a1yinhun.png', '/test1_war_exploded\\resource\\ueditor\\upload\\ab19ee2067a911ecf15fb52e96a797a1yinhun.png', '<p>银魂</p>', null, null, null, null, null, null, null, '9', '75', '81', '0');
INSERT INTO `item` VALUES ('29', '塔塔开', '49.9', '0', '0', '/test1_war_exploded\\resource\\ueditor\\upload\\8ed3c56067a911ecf15fb52e96a797a1dog.png', '/test1_war_exploded\\resource\\ueditor\\upload\\8ed488b067a911ecf15fb52e96a797a1dog.png', '/test1_war_exploded\\resource\\ueditor\\upload\\8ed5731067a911ecf15fb52e96a797a1dog.png', '/test1_war_exploded\\resource\\ueditor\\upload\\8ed60f5067a911ecf15fb52e96a797a1dog.png', '/test1_war_exploded\\resource\\ueditor\\upload\\8ed9dfe067a911ecf15fb52e96a797a1dog.png', '<p>塔塔开<br/><br/></p><p></p>', null, null, null, null, null, null, null, '8', '75', '81', '0');
INSERT INTO `item` VALUES ('30', '死神', '85', '0', '3', '/test1_war_exploded\\resource\\ueditor\\upload\\774a616067a911ecf15fb52e96a797a1deadgod.png', '/test1_war_exploded\\resource\\ueditor\\upload\\7751664067a911ecf15fb52e96a797a1deadgod.png', '/test1_war_exploded\\resource\\ueditor\\upload\\775250a067a911ecf15fb52e96a797a1deadgod.png', '/test1_war_exploded\\resource\\ueditor\\upload\\7752ece067a911ecf15fb52e96a797a1deadgod.png', '/test1_war_exploded\\resource\\ueditor\\upload\\7753b03067a911ecf15fb52e96a797a1deadgod.png', '<p>死神</p>', null, null, null, null, null, null, null, '9', '75', '81', '0');
INSERT INTO `item` VALUES ('31', '悠哉日常大王', '36', '0', '0', '/test1_war_exploded\\resource\\ueditor\\upload\\58639d2067a911ecf15fb52e96a797a1youzai.png', '/test1_war_exploded\\resource\\ueditor\\upload\\5864878067a911ecf15fb52e96a797a1youzai.png', '/test1_war_exploded\\resource\\ueditor\\upload\\5869deb067a911ecf15fb52e96a797a1youzai.png', '/test1_war_exploded\\resource\\ueditor\\upload\\586aa20067a911ecf15fb52e96a797a1youzai.png', '/test1_war_exploded\\resource\\ueditor\\upload\\586b3e4067a911ecf15fb52e96a797a1youzai.png', '<p>悠哉日常大王</p>', null, null, null, null, null, null, null, '7', '75', '81', '0');
INSERT INTO `item` VALUES ('32', '龙珠', '99', '0', '10', '/test1_war_exploded\\resource\\ueditor\\upload\\35caa65067a911ecf15fb52e96a797a1longzhu.png', '/test1_war_exploded\\resource\\ueditor\\upload\\35cbb7c067a911ecf15fb52e96a797a1longzhu.png', '/test1_war_exploded\\resource\\ueditor\\upload\\35cc7b1067a911ecf15fb52e96a797a1longzhu.png', '/test1_war_exploded\\resource\\ueditor\\upload\\35d2bca067a911ecf15fb52e96a797a1longzhu.png', '/test1_war_exploded\\resource\\ueditor\\upload\\35d37ff067a911ecf15fb52e96a797a1longzhu.png', '<p>龙珠</p>', null, null, null, null, null, null, null, '9', '75', '81', '0');
INSERT INTO `item` VALUES ('33', '名侦探柯南', '80', '1', '0', '/test1_war_exploded\\resource\\ueditor\\upload\\f8afe07068c311ec39d2f62d397b99c8kenan.png', '/test1_war_exploded\\resource\\ueditor\\upload\\f8b0cad068c311ec39d2f62d397b99c8kenan.png', '/test1_war_exploded\\resource\\ueditor\\upload\\f8b18e2068c311ec39d2f62d397b99c8kenan.png', '/test1_war_exploded\\resource\\ueditor\\upload\\f8b2517068c311ec39d2f62d397b99c8kenan.png', '/test1_war_exploded\\resource\\ueditor\\upload\\f8b33bd068c311ec39d2f62d397b99c8kenan.png', '<p>名侦探柯南</p>', null, null, null, null, null, null, null, '9', '75', '76', '0');
INSERT INTO `item` VALUES ('34', '刀剑神域', '85', '0', '4', '/test1_war_exploded\\resource\\ueditor\\upload\\e39113d068c311ec39d2f62d397b99c8sword.png', '/test1_war_exploded\\resource\\ueditor\\upload\\e391d72068c311ec39d2f62d397b99c8sword.png', '/test1_war_exploded\\resource\\ueditor\\upload\\e3929a7068c311ec39d2f62d397b99c8sword.png', '/test1_war_exploded\\resource\\ueditor\\upload\\e39384d068c311ec39d2f62d397b99c8sword.png', '/test1_war_exploded\\resource\\ueditor\\upload\\e394482068c311ec39d2f62d397b99c8sword.png', '<p>刀剑神域</p>', null, null, null, null, null, null, null, '9', '80', '83', '0');
INSERT INTO `item` VALUES ('35', '火影忍者', '25', '0', '8', '/test1_war_exploded\\resource\\ueditor\\upload\\c862eac068c311ec39d2f62d397b99c8naruto.png', '/test1_war_exploded\\resource\\ueditor\\upload\\c863ae1068c311ec39d2f62d397b99c8naruto.png', '/test1_war_exploded\\resource\\ueditor\\upload\\c864987068c311ec39d2f62d397b99c8naruto.png', '/test1_war_exploded\\resource\\ueditor\\upload\\c86582d068c311ec39d2f62d397b99c8naruto.png', '/test1_war_exploded\\resource\\ueditor\\upload\\c8692c5068c311ec39d2f62d397b99c8naruto.png', '<p>火影忍者</p>', null, null, null, null, null, null, null, '9', '69', '82', '0');
INSERT INTO `item` VALUES ('36', '海贼王', '120', '0', '3', '/test1_war_exploded\\resource\\ueditor\\upload\\a97807d068c311ec39d2f62d397b99c8onepiece.png', '/test1_war_exploded\\resource\\ueditor\\upload\\a979194068c311ec39d2f62d397b99c8onepiece.png', '/test1_war_exploded\\resource\\ueditor\\upload\\a97aee0068c311ec39d2f62d397b99c8onepiece.png', '/test1_war_exploded\\resource\\ueditor\\upload\\a97bb15068c311ec39d2f62d397b99c8onepiece.png', '/test1_war_exploded\\resource\\ueditor\\upload\\a97c74a068c311ec39d2f62d397b99c8onepiece.png', '<p>海贼王</p>', null, null, null, null, null, null, null, '5', '69', '70', '0');
INSERT INTO `item` VALUES ('37', '123', '123', '0', '0', '/test1_war_exploded\\resource\\ueditor\\upload\\a5a0762068c711ec39d2f62d397b99c8', '/test1_war_exploded\\resource\\ueditor\\upload\\a5a0762168c711ec39d2f62d397b99c8', '/test1_war_exploded\\resource\\ueditor\\upload\\a5a0762268c711ec39d2f62d397b99c8', '/test1_war_exploded\\resource\\ueditor\\upload\\a5a09d3068c711ec39d2f62d397b99c8', '/test1_war_exploded\\resource\\ueditor\\upload\\a5a41fa068c711ec39d2f62d397b99c8', '123', null, null, null, null, null, null, null, '123', '69', '70', '1');

-- ----------------------------
-- Table structure for `item_category`
-- ----------------------------
DROP TABLE IF EXISTS `item_category`;
CREATE TABLE `item_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `isDelete` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of item_category
-- ----------------------------
INSERT INTO `item_category` VALUES ('50', ' 礼帽', '44', '1');
INSERT INTO `item_category` VALUES ('69', '热血', null, '0');
INSERT INTO `item_category` VALUES ('70', '海贼王', '69', '0');
INSERT INTO `item_category` VALUES ('71', '搞笑', null, '0');
INSERT INTO `item_category` VALUES ('72', '日常', '71', '0');
INSERT INTO `item_category` VALUES ('73', '奇幻', null, '0');
INSERT INTO `item_category` VALUES ('74', '死神', '73', '0');
INSERT INTO `item_category` VALUES ('75', '悬疑', null, '0');
INSERT INTO `item_category` VALUES ('76', '名侦探柯南', '75', '0');
INSERT INTO `item_category` VALUES ('77', '秦冠', '75', '1');
INSERT INTO `item_category` VALUES ('78', '嘎拉', '75', '1');
INSERT INTO `item_category` VALUES ('79', '黄元帅', '75', '1');
INSERT INTO `item_category` VALUES ('80', '动作', null, '0');
INSERT INTO `item_category` VALUES ('81', 'xx', '75', '1');
INSERT INTO `item_category` VALUES ('82', '火影忍者', '69', '0');
INSERT INTO `item_category` VALUES ('83', '刀剑神域', '80', '0');

-- ----------------------------
-- Table structure for `item_order`
-- ----------------------------
DROP TABLE IF EXISTS `item_order`;
CREATE TABLE `item_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `addTime` datetime DEFAULT NULL,
  `total` varchar(255) DEFAULT NULL,
  `isDelete` int(255) DEFAULT NULL,
  `status` int(255) DEFAULT NULL COMMENT '0.新建代发货1.已取消 2已已发货3.到收货4已评价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of item_order
-- ----------------------------
INSERT INTO `item_order` VALUES ('27', null, '3', '2018032017080001', '2018-03-20 17:08:56', '54.9', '0', '3');
INSERT INTO `item_order` VALUES ('28', null, '3', '2018032017380001', '2018-03-20 17:38:52', '653.59', '0', '3');
INSERT INTO `item_order` VALUES ('29', null, '3', '2018032017390001', '2018-03-20 17:39:28', '976.5', '0', '3');
INSERT INTO `item_order` VALUES ('30', null, '3', '2018032019220001', '2018-03-20 19:22:25', '364.5', '0', '3');
INSERT INTO `item_order` VALUES ('31', null, '3', '2018032019310001', '2018-03-20 19:31:23', '359.15999999999997', '0', '1');
INSERT INTO `item_order` VALUES ('32', null, '3', '2018032019310002', '2018-03-20 19:31:50', '59.86', '0', '3');

-- ----------------------------
-- Table structure for `manage`
-- ----------------------------
DROP TABLE IF EXISTS `manage`;
CREATE TABLE `manage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) DEFAULT NULL,
  `passWord` varchar(255) DEFAULT NULL,
  `realName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of manage
-- ----------------------------
INSERT INTO `manage` VALUES ('1', 'admin', '111111', '管理员');

-- ----------------------------
-- Table structure for `message`
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES ('2', '1', '1', '                    \n             1       ');
INSERT INTO `message` VALUES ('3', '2', '2', '                    \n             2       ');

-- ----------------------------
-- Table structure for `news`
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `content` text,
  `addTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('3', '测试公告', '<p>test1</p>', '2018-04-27 14:02:28');
INSERT INTO `news` VALUES ('4', '测试公告2', '<p>test2</p>', '2018-04-27 14:03:09');
INSERT INTO `news` VALUES ('5', '测试公告3', '<p style=\"margin: 10px auto; padding: 0px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Verdana, Arial, sans-serif; font-size: 14px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 23.8px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\">test3<br/></p><p><br/></p>', '2018-04-27 14:03:32');

-- ----------------------------
-- Table structure for `order_detail`
-- ----------------------------
DROP TABLE IF EXISTS `order_detail`;
CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(255) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL COMMENT '0.未退货 1已退货',
  `num` int(11) DEFAULT NULL,
  `total` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order_detail
-- ----------------------------
INSERT INTO `order_detail` VALUES ('54', '27', '27', '0', '1', '1');
INSERT INTO `order_detail` VALUES ('55', '32', '28', '0', '5', '25');
INSERT INTO `order_detail` VALUES ('56', '27', '28', '0', '3', '9');
INSERT INTO `order_detail` VALUES ('57', '28', '28', '0', '1', '1');
INSERT INTO `order_detail` VALUES ('58', '35', '29', '0', '2', '4');
INSERT INTO `order_detail` VALUES ('59', '34', '29', '0', '4', '16');
INSERT INTO `order_detail` VALUES ('60', '32', '29', '0', '3', '9');
INSERT INTO `order_detail` VALUES ('61', '36', '29', '0', '3', '9');
INSERT INTO `order_detail` VALUES ('62', '32', '29', '0', '2', '4');
INSERT INTO `order_detail` VALUES ('63', '35', '30', '0', '6', '36');
INSERT INTO `order_detail` VALUES ('64', '30', '30', '0', '3', '9');
INSERT INTO `order_detail` VALUES ('65', '28', '31', '0', '4', '16');
INSERT INTO `order_detail` VALUES ('66', '28', '31', '0', '2', '4');
INSERT INTO `order_detail` VALUES ('67', '28', '32', '0', '1', '1');

-- ----------------------------
-- Table structure for `sc`
-- ----------------------------
DROP TABLE IF EXISTS `sc`;
CREATE TABLE `sc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sc
-- ----------------------------
INSERT INTO `sc` VALUES ('17', '27', '3');
INSERT INTO `sc` VALUES ('18', '28', '3');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) DEFAULT NULL,
  `passWord` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `realName` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '1', '2', '3', '4', '1', '3', '22');
INSERT INTO `user` VALUES ('2', 'dd', 'dd', 'dd', null, null, null, null);
INSERT INTO `user` VALUES ('3', 'zs', '111111', '12345678933', '测试33', '女', '这里是', '1133');
INSERT INTO `user` VALUES ('6', 'name1', '123456', '18888888', null, null, null, null);
INSERT INTO `user` VALUES ('7', 'name2', '123456', '18888888', null, null, null, null);
INSERT INTO `user` VALUES ('8', '1111112', '11', '11', null, null, null, '111@qq.com');
