/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50534
Source Host           : localhost:3306
Source Database       : goo

Target Server Type    : MYSQL
Target Server Version : 50534
File Encoding         : 65001

Date: 2014-12-07 09:26:23
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `chatting`
-- ----------------------------
DROP TABLE IF EXISTS `chatting`;
CREATE TABLE `chatting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `deal` int(11) DEFAULT NULL,
  `info` varchar(255) DEFAULT NULL,
  `user` int(11) DEFAULT NULL,
  `time_stamp` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chatting
-- ----------------------------
INSERT INTO `chatting` VALUES ('1', '1', 'hello', '1', '2014-12-06 14:42:22');
INSERT INTO `chatting` VALUES ('2', '1', '_(:3ゝ∠)_', '1', '2014-12-06 14:42:44');

-- ----------------------------
-- Table structure for `deal`
-- ----------------------------
DROP TABLE IF EXISTS `deal`;
CREATE TABLE `deal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shop` varchar(50) DEFAULT NULL,
  `user` int(11) DEFAULT NULL,
  `info` varchar(255) DEFAULT NULL,
  `deadline` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of deal
-- ----------------------------
INSERT INTO `deal` VALUES ('1', '赛百味', '1', '买买买', '2014-12-09 14:44:01');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `users_name` varchar(255) DEFAULT NULL,
  `users_password` varchar(255) DEFAULT NULL,
  `users_phone` varchar(255) DEFAULT NULL,
  `users_email` varchar(255) DEFAULT NULL,
  `users_role_id` int(11) DEFAULT NULL,
  `users_info` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'admin', '123456', null, null, null, null);
