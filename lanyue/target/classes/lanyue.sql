/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50625
Source Host           : localhost:3306
Source Database       : lanyue

Target Server Type    : MYSQL
Target Server Version : 50625
File Encoding         : 65001

Date: 2019-05-02 23:15:40
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `about`
-- ----------------------------
DROP TABLE IF EXISTS `about`;
CREATE TABLE `about` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) NOT NULL,
  `telephone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of about
-- ----------------------------
INSERT INTO `about` VALUES ('1', '成都市锦江区大业路6号1栋3单元7层715号', '11111111111', '11111@ww.com');

-- ----------------------------
-- Table structure for `cooperative`
-- ----------------------------
DROP TABLE IF EXISTS `cooperative`;
CREATE TABLE `cooperative` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `cname` varchar(255) NOT NULL,
  `chref` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cooperative
-- ----------------------------
INSERT INTO `cooperative` VALUES ('1', '百度', 'www.baidu.com');
INSERT INTO `cooperative` VALUES ('2', '腾讯', null);
INSERT INTO `cooperative` VALUES ('3', '搜狐', null);
INSERT INTO `cooperative` VALUES ('4', 'hao123', 'www.hao123.com');
INSERT INTO `cooperative` VALUES ('5', '丫丫', null);
INSERT INTO `cooperative` VALUES ('6', '阿', null);
INSERT INTO `cooperative` VALUES ('7', '三苏', null);

-- ----------------------------
-- Table structure for `employee`
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `introduction` varchar(255) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `shouye` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES ('1', '张三', '哈哈哈哈哈哈哈哈哈哈 哈哈哈哈哈哈哈哈哈哈 哈哈哈哈哈哈哈哈阿 哈哈', 'images/restaurant-1.jpg', '1', '1');
INSERT INTO `employee` VALUES ('2', '李四', '哈哈哈哈哈哈哈哈哈哈 哈哈哈哈哈哈哈哈哈哈 哈哈哈哈哈哈哈哈阿 哈哈', 'images/restaurant-1.jpg', '1', '1');
INSERT INTO `employee` VALUES ('3', '王五', '哈哈哈哈哈哈哈哈哈哈 哈哈哈哈哈哈哈哈哈哈 哈哈哈哈哈哈哈哈阿 哈哈', 'images/restaurant-1.jpg', '1', '1');
INSERT INTO `employee` VALUES ('4', '拉拉', '哈哈哈哈哈哈哈哈哈哈 哈哈哈哈哈哈哈哈哈哈 哈哈哈哈哈哈哈哈阿 哈哈', 'images/restaurant-1.jpg', '1', '1');

-- ----------------------------
-- Table structure for `product`
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `pid` int(255) NOT NULL AUTO_INCREMENT,
  `p_title` varchar(255) NOT NULL,
  `p_content` varchar(255) NOT NULL,
  `p_img` varchar(255) DEFAULT NULL,
  `hots` bigint(255) NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('1', 'aa', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaa', 'images/about.jpg', '100000');
INSERT INTO `product` VALUES ('2', 'bb', 'vbbbbbbbbbbbbbbbbbb bbbbbbbbbbbbbbbbbbbb bbbbbbbbbbbbbbbbbbbb bbbbbbbbbbbbb', 'images/about.jpg', '500');

-- ----------------------------
-- Table structure for `product_case`
-- ----------------------------
DROP TABLE IF EXISTS `product_case`;
CREATE TABLE `product_case` (
  `pc_id` int(255) NOT NULL,
  `pc_title` varchar(255) NOT NULL,
  `pc_subtitle` varchar(255) NOT NULL,
  `pc_img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`pc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product_case
-- ----------------------------

-- ----------------------------
-- Table structure for `t_join`
-- ----------------------------
DROP TABLE IF EXISTS `t_join`;
CREATE TABLE `t_join` (
  `Id` varchar(20) NOT NULL DEFAULT '' COMMENT '主键',
  `post` varchar(20) NOT NULL DEFAULT '' COMMENT '招聘岗位',
  `message` varchar(200) DEFAULT NULL COMMENT '招聘信息',
  `date` date DEFAULT NULL COMMENT '发布招聘时间',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_join
-- ----------------------------
INSERT INTO `t_join` VALUES ('1', '招聘销售', '负责销售内勤，配合销售主管完成相应任务;任职资格：男女不限，26周岁以上，有驾照优先;有市政工程，机电工程类销售经验；非诚勿扰;', '2019-05-02');
INSERT INTO `t_join` VALUES ('2', '招聘销售助理', '负责销售内勤，配合销售主管完成相应任务;任职资格：男女不限，26周岁以上，有驾照优先;有市政工程，机电工程类销售经验；非诚勿扰;', '2019-05-02');
