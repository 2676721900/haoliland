/*
Navicat MySQL Data Transfer

Source Server         : looca
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : haolilaisql

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2019-09-18 13:12:29
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `buy`
-- ----------------------------
DROP TABLE IF EXISTS `buy`;
CREATE TABLE `buy` (
  `bid` int(11) NOT NULL AUTO_INCREMENT COMMENT '购买id',
  `rname` char(50) NOT NULL COMMENT '收货人姓名',
  `rtel` char(50) NOT NULL COMMENT '收货人手机号',
  `rdate` date NOT NULL COMMENT '收货日期',
  `raddress` varchar(50) NOT NULL COMMENT '收获地址',
  PRIMARY KEY (`bid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='购买表';

-- ----------------------------
-- Records of buy
-- ----------------------------

-- ----------------------------
-- Table structure for `price`
-- ----------------------------
DROP TABLE IF EXISTS `price`;
CREATE TABLE `price` (
  `prid` int(11) NOT NULL AUTO_INCREMENT COMMENT '价格id',
  `pid` int(11) NOT NULL COMMENT '产品id',
  `spec` char(50) NOT NULL COMMENT '产品规格',
  `price` double NOT NULL COMMENT '价格',
  PRIMARY KEY (`prid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='产品价格表';

-- ----------------------------
-- Records of price
-- ----------------------------

-- ----------------------------
-- Table structure for `product`
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `pid` int(11) NOT NULL AUTO_INCREMENT COMMENT '产品id',
  `pname` char(50) NOT NULL COMMENT '产品名',
  `pexplain` char(50) DEFAULT NULL COMMENT '产品说明',
  `pimg` varchar(100) NOT NULL COMMENT '产品图片',
  `pimgs` varchar(500) NOT NULL COMMENT '轮播图片',
  `pimginfo` varchar(100) NOT NULL COMMENT '产品说明图片',
  `pcategory` tinytext NOT NULL COMMENT '0蛋糕，1零食',
  `pseries` tinytext NOT NULL COMMENT '0经典，1儿童，2尊爱',
  `ppoint` int(11) NOT NULL COMMENT '积分',
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='产品表';

-- ----------------------------
-- Records of product
-- ----------------------------

-- ----------------------------
-- Table structure for `shopcar`
-- ----------------------------
DROP TABLE IF EXISTS `shopcar`;
CREATE TABLE `shopcar` (
  `sid` int(11) NOT NULL AUTO_INCREMENT COMMENT '购物车id',
  `pid` int(11) NOT NULL COMMENT '产品id',
  `count` int(11) NOT NULL COMMENT '购买',
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='购物车';

-- ----------------------------
-- Records of shopcar
-- ----------------------------

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `uid` tinyint(4) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `tel` char(50) NOT NULL COMMENT '手机号',
  `passwd` char(50) NOT NULL COMMENT '密码',
  `regtime` datetime NOT NULL COMMENT '注册时间',
  `logintime` datetime NOT NULL COMMENT '登录时间',
  `admin` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0为用户，1为后台管理员',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0未登录，1登录',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of user
-- ----------------------------
