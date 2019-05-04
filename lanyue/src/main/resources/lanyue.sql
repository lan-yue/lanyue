/*
Navicat MySQL Data Transfer

Source Server         : root
Source Server Version : 50724
Source Host           : localhost:3306
Source Database       : lanyue

Target Server Type    : MYSQL
Target Server Version : 50724
File Encoding         : 65001

Date: 2019-05-04 14:20:37
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for about
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
-- Table structure for aboutus
-- ----------------------------
DROP TABLE IF EXISTS `aboutus`;
CREATE TABLE `aboutus` (
  `id` varchar(20) NOT NULL DEFAULT '' COMMENT '主键',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  `tel` varchar(20) DEFAULT NULL COMMENT '座机电话',
  `phone` varchar(20) DEFAULT NULL COMMENT '手机电话',
  `email` varchar(20) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of aboutus
-- ----------------------------
INSERT INTO `aboutus` VALUES ('1', '四川 成都市 高新区 天府大道 3号', '028-8888888', '13332123122', ' lanyue@126.com');

-- ----------------------------
-- Table structure for cooperative
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
-- Table structure for employee
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
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `new_id` int(255) NOT NULL AUTO_INCREMENT,
  `new_title` varchar(255) NOT NULL,
  `new_subcontent` varchar(255) NOT NULL,
  `new_content` text NOT NULL,
  `new_date` date NOT NULL,
  PRIMARY KEY (`new_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('1', '斯坦福教授张首晟：量子计算、人工智能和区块链', '3月25日，美国斯坦福大学讲座教授张首晟在深圳IT领袖峰会上，发表了主题为《量子计算、人工智能与区块链》的演讲。\r\n\r\n \r\n\r\n在演讲中，张首晟教授表示，人工智能需要数据，但数据往往被中心化平台垄断，因而阻碍了创新步伐。从这种意义上人工智能有所欠缺。加密经济学创造了一个对数据提供者有正确激励机制的数据市场，人工智能能够依赖这个数据市场起飞。', '<h2>斯坦福教授张首晟：量子计算、人工智能和区块链</h2><p>在演讲中，张首晟教授表示，人工智能需要数据，但数据往往被中心化平台垄断，因而阻碍了创新步伐。从这种意义上人工智能有所欠缺。加密经济学创造了一个对数据提供者有正确激励机制的数据市场，人工智能能够依赖这个数据市场起飞。在演讲中，张首晟教授表示，人工智能需要数据，但数据往往被中心化平台垄断，因而阻碍了创新步伐。从这种意义上人工智能有所欠缺。加密经济学创造了一个对数据提供者有正确激励机制的数据市场，人工智能能够依赖这个数据市场起飞。在演讲中，张首晟教授表示，人工智能需要数据，但数据往往被中心化平台垄断，因而阻碍了创新步伐。从这种意义上人工智能有所欠缺。加密经济学创造了一个对数据提供者有正确激励机制的数据市场，人工智能能够依赖这个数据市场起飞。在演讲中，张首晟教授表示，人工智能需要数据，但数据往往被中心化平台垄断，因而阻碍了创新步伐。从这种意义上人工智能有所欠缺。加密经济学创造了一个对数据提供者有正确激励机制的数据市场，人工智能能够依赖这个数据市场起飞。在演讲中，张首晟教授表示，人工智能需要数据，但数据往往被中心化平台垄断，因而阻碍了创新步伐。从这种意义上人工智能有所欠缺。加密经济学创造了一个对数据提供者有正确激励机制的数据市场，人工智能能够依赖这个数据市场起飞。在演讲中，张首晟教授表示，人工智能需要数据，但数据往往被中心化平台垄断，因而阻碍了创新步伐。从这种意义上人工智能有所欠缺。加密经济学创造了一个对数据提供者有正确激励机制的数据市场，人工智能能够依赖这个数据市场起飞。在演讲中，张首晟教授表示，人工智能需要数据，但数据往往被中心化平台垄断，因而阻碍了创新步伐。从这种意义上人工智能有所欠缺。加密经济学创造了一个对数据提供者有正确激励机制的数据市场，人工智能能够依赖这个数据市场起飞。在演讲中，张首晟教授表示，人工智能需要数据，但数据往往被中心化平台垄断，因而阻碍了创新步伐。从这种意义上人工智能有所欠缺。加密经济学创造了一个对数据提供者有正确激励机制的数据市场，人工智能能够依赖这个数据市场起飞。</p>', '2019-05-03');
INSERT INTO `news` VALUES ('2', 'MOOC与职业教育', '随着网络教育的普及，MOOC以其工具资源多元化、课程易于使用、课程受众面广、课程参与自主性等特点成为一种全新的学习平台，成功实现了一种高端知识的交换，对当前的职业教育体系产生了较大的影响。因此研究MOOC背景下我国职业教育改革实施策略，对于推动MOOC教育以及职业教育事业的发展皆具有重要意义。', '<h2>MOOC与职业教育</h2><p>在演讲中，张首晟教授表示，人工智能需要数据，但数据往往被中心化平台垄断，因而阻碍了创新步伐。从这种意义上人工智能有所欠缺。加密经济学创造了一个对数据提供者有正确激励机制的数据市场，人工智能能够依赖这个数据市场起飞。在演讲中，张首晟教授表示，人工智能需要数据，但数据往往被中心化平台垄断，因而阻碍了创新步伐。从这种意义上人工智能有所欠缺。加密经济学创造了一个对数据提供者有正确激励机制的数据市场，人工智能能够依赖这个数据市场起飞。在演讲中，张首晟教授表示，人工智能需要数据，但数据往往被中心化平台垄断，因而阻碍了创新步伐。从这种意义上人工智能有所欠缺。加密经济学创造了一个对数据提供者有正确激励机制的数据市场，人工智能能够依赖这个数据市场起飞。在演讲中，张首晟教授表示，人工智能需要数据，但数据往往被中心化平台垄断，因而阻碍了创新步伐。从这种意义上人工智能有所欠缺。加密经济学创造了一个对数据提供者有正确激励机制的数据市场，人工智能能够依赖这个数据市场起飞。在演讲中，张首晟教授表示，人工智能需要数据，但数据往往被中心化平台垄断，因而阻碍了创新步伐。从这种意义上人工智能有所欠缺。加密经济学创造了一个对数据提供者有正确激励机制的数据市场，人工智能能够依赖这个数据市场起飞。在演讲中，张首晟教授表示，人工智能需要数据，但数据往往被中心化平台垄断，因而阻碍了创新步伐。从这种意义上人工智能有所欠缺。加密经济学创造了一个对数据提供者有正确激励机制的数据市场，人工智能能够依赖这个数据市场起飞。在演讲中，张首晟教授表示，人工智能需要数据，但数据往往被中心化平台垄断，因而阻碍了创新步伐。从这种意义上人工智能有所欠缺。加密经济学创造了一个对数据提供者有正确激励机制的数据市场，人工智能能够依赖这个数据市场起飞。在演讲中，张首晟教授表示，人工智能需要数据，但数据往往被中心化平台垄断，因而阻碍了创新步伐。从这种意义上人工智能有所欠缺。加密经济学创造了一个对数据提供者有正确激励机制的数据市场，人工智能能够依赖这个数据市场起飞。</p>', '2019-05-02');
INSERT INTO `news` VALUES ('3', '大数据时代，信息化建设如何在高职诊改工作中发挥出洪荒之力？', '随着职业教育全面深化综合改革，国家对职业院校自主保证人才培养质量机制提出了新的改革要求，根据教育部办公厅《关于建立职业院校教学工作诊断与改进制度的通知》（教职成厅 [2015]2 号）和《高等职业院校内部质量保证体 系诊断与改进指导方案（试行）》（教职成司函 [2015]168 号） 等系列文件精神，全国高等职业院校正全面推进学校内部质 量保证体系诊断与改进工作。', '<h2>斯坦福教授张首晟：量子计算、人工智能和区块链</h2><p>在演讲中，张首晟教授表示，人工智能需要数据，但数据往往被中心化平台垄断，因而阻碍了创新步伐。从这种意义上人工智能有所欠缺。加密经济学创造了一个对数据提供者有正确激励机制的数据市场，人工智能能够依赖这个数据市场起飞。在演讲中，张首晟教授表示，人工智能需要数据，但数据往往被中心化平台垄断，因而阻碍了创新步伐。从这种意义上人工智能有所欠缺。加密经济学创造了一个对数据提供者有正确激励机制的数据市场，人工智能能够依赖这个数据市场起飞。在演讲中，张首晟教授表示，人工智能需要数据，但数据往往被中心化平台垄断，因而阻碍了创新步伐。从这种意义上人工智能有所欠缺。加密经济学创造了一个对数据提供者有正确激励机制的数据市场，人工智能能够依赖这个数据市场起飞。在演讲中，张首晟教授表示，人工智能需要数据，但数据往往被中心化平台垄断，因而阻碍了创新步伐。从这种意义上人工智能有所欠缺。加密经济学创造了一个对数据提供者有正确激励机制的数据市场，人工智能能够依赖这个数据市场起飞。在演讲中，张首晟教授表示，人工智能需要数据，但数据往往被中心化平台垄断，因而阻碍了创新步伐。从这种意义上人工智能有所欠缺。加密经济学创造了一个对数据提供者有正确激励机制的数据市场，人工智能能够依赖这个数据市场起飞。在演讲中，张首晟教授表示，人工智能需要数据，但数据往往被中心化平台垄断，因而阻碍了创新步伐。从这种意义上人工智能有所欠缺。加密经济学创造了一个对数据提供者有正确激励机制的数据市场，人工智能能够依赖这个数据市场起飞。在演讲中，张首晟教授表示，人工智能需要数据，但数据往往被中心化平台垄断，因而阻碍了创新步伐。从这种意义上人工智能有所欠缺。加密经济学创造了一个对数据提供者有正确激励机制的数据市场，人工智能能够依赖这个数据市场起飞。在演讲中，张首晟教授表示，人工智能需要数据，但数据往往被中心化平台垄断，因而阻碍了创新步伐。从这种意义上人工智能有所欠缺。加密经济学创造了一个对数据提供者有正确激励机制的数据市场，人工智能能够依赖这个数据市场起飞。</p>', '2019-05-04');
INSERT INTO `news` VALUES ('4', '浅谈系统集成的分类及应用', '页面组建化。可组合、可重用、可保护。\r\n\r\nReact可以创建存放组件的虚拟DOM（文档对象模型Document Object Model）。\r\n\r\n这一特点为开发人员提供了高度灵活性和惊人的性能收益，从而大幅提升了工作效率。\r\n\r\nJavascript库React的主要优势是合理地利用了本地API达到了跨平台的效果。', '<h2>浅谈系统集成的分类及应用</h2><p>在演讲中，张首晟教授表示，人工智能需要数据，但数据往往被中心化平台垄断，因而阻碍了创新步伐。从这种意义上人工智能有所欠缺。加密经济学创造了一个对数据提供者有正确激励机制的数据市场，人工智能能够依赖这个数据市场起飞。在演讲中，张首晟教授表示，人工智能需要数据，但数据往往被中心化平台垄断，因而阻碍了创新步伐。从这种意义上人工智能有所欠缺。加密经济学创造了一个对数据提供者有正确激励机制的数据市场，人工智能能够依赖这个数据市场起飞。在演讲中，张首晟教授表示，人工智能需要数据，但数据往往被中心化平台垄断，因而阻碍了创新步伐。从这种意义上人工智能有所欠缺。加密经济学创造了一个对数据提供者有正确激励机制的数据市场，人工智能能够依赖这个数据市场起飞。在演讲中，张首晟教授表示，人工智能需要数据，但数据往往被中心化平台垄断，因而阻碍了创新步伐。从这种意义上人工智能有所欠缺。加密经济学创造了一个对数据提供者有正确激励机制的数据市场，人工智能能够依赖这个数据市场起飞。在演讲中，张首晟教授表示，人工智能需要数据，但数据往往被中心化平台垄断，因而阻碍了创新步伐。从这种意义上人工智能有所欠缺。加密经济学创造了一个对数据提供者有正确激励机制的数据市场，人工智能能够依赖这个数据市场起飞。在演讲中，张首晟教授表示，人工智能需要数据，但数据往往被中心化平台垄断，因而阻碍了创新步伐。从这种意义上人工智能有所欠缺。加密经济学创造了一个对数据提供者有正确激励机制的数据市场，人工智能能够依赖这个数据市场起飞。在演讲中，张首晟教授表示，人工智能需要数据，但数据往往被中心化平台垄断，因而阻碍了创新步伐。从这种意义上人工智能有所欠缺。加密经济学创造了一个对数据提供者有正确激励机制的数据市场，人工智能能够依赖这个数据市场起飞。在演讲中，张首晟教授表示，人工智能需要数据，但数据往往被中心化平台垄断，因而阻碍了创新步伐。从这种意义上人工智能有所欠缺。加密经济学创造了一个对数据提供者有正确激励机制的数据市场，人工智能能够依赖这个数据市场起飞。</p>', '2019-05-01');

-- ----------------------------
-- Table structure for product
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
-- Table structure for product_case
-- ----------------------------
DROP TABLE IF EXISTS `product_case`;
CREATE TABLE `product_case` (
  `pc_id` int(255) NOT NULL AUTO_INCREMENT,
  `pc_title` varchar(255) NOT NULL,
  `pc_subtitle` varchar(255) NOT NULL,
  `pc_img` varchar(255) DEFAULT NULL,
  `pc_content` text NOT NULL,
  PRIMARY KEY (`pc_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product_case
-- ----------------------------
INSERT INTO `product_case` VALUES ('1', 'XXXX公司', '与XXXXX公司进行了XXX合作', 'images/about.jpg', '啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊，啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊，啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊');

-- ----------------------------
-- Table structure for t_join
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
INSERT INTO `t_join` VALUES ('1', '招聘销售', '负责销售内勤，配合销售主管完成相应任务;男女不限，26周岁以上，有驾照优先;有市政工程，机电工程类销售经验；非诚勿扰;', '2019-05-02');
INSERT INTO `t_join` VALUES ('2', '招聘销售助理', '负责销售内勤，配合销售主管完成相应任务;男女不限，26周岁以上，有驾照优先;有市政工程，机电工程类销售经验；非诚勿扰;', '2019-05-02');
INSERT INTO `t_join` VALUES ('3', '招聘销售助理3', '负责销售内勤，配合销售主管完成相应任务;男女不限，26周岁以上', '2019-05-06');
