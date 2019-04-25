/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2017-09-13 15:09:31
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for c
-- ----------------------------
DROP TABLE IF EXISTS `c`;
CREATE TABLE `c` (
  `cno` varchar(32) NOT NULL,
  `cname` varchar(32) DEFAULT NULL,
  `cteacher` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`cno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of c
-- ----------------------------
INSERT INTO `c` VALUES ('1', 'linux', '张老师');
INSERT INTO `c` VALUES ('2', 'MySQL', '李老师');
INSERT INTO `c` VALUES ('3', 'Git', '王老师');
INSERT INTO `c` VALUES ('4', 'Java', '赵老师');
INSERT INTO `c` VALUES ('5', 'Redis', '黎明');

-- ----------------------------
-- Table structure for s
-- ----------------------------
DROP TABLE IF EXISTS `s`;
CREATE TABLE `s` (
  `sno` varchar(32) NOT NULL,
  `sname` varchar(32) NOT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of s
-- ----------------------------
INSERT INTO `s` VALUES ('1', '张三');
INSERT INTO `s` VALUES ('2', '李四');
INSERT INTO `s` VALUES ('3', '王五');
INSERT INTO `s` VALUES ('4', '赵六');

-- ----------------------------
-- Table structure for sc
-- ----------------------------
DROP TABLE IF EXISTS `sc`;
CREATE TABLE `sc` (
  `sno` varchar(32) NOT NULL,
  `cno` varchar(32) NOT NULL,
  `scgrade` varchar(32) NOT NULL,
  KEY `sno` (`sno`),
  KEY `cno` (`cno`),
  CONSTRAINT `cno` FOREIGN KEY (`cno`) REFERENCES `c` (`cno`),
  CONSTRAINT `sno` FOREIGN KEY (`sno`) REFERENCES `s` (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sc
-- ----------------------------
INSERT INTO `sc` VALUES ('1', '1', '50');
INSERT INTO `sc` VALUES ('1', '2', '50');
INSERT INTO `sc` VALUES ('1', '3', '50');
INSERT INTO `sc` VALUES ('2', '2', '80');
INSERT INTO `sc` VALUES ('2', '3', '70');
INSERT INTO `sc` VALUES ('2', '4', '59');
INSERT INTO `sc` VALUES ('3', '1', '60');
INSERT INTO `sc` VALUES ('3', '2', '61');
INSERT INTO `sc` VALUES ('3', '3', '99');
INSERT INTO `sc` VALUES ('3', '4', '100');
INSERT INTO `sc` VALUES ('3', '5', '52');
INSERT INTO `sc` VALUES ('4', '3', '82');
INSERT INTO `sc` VALUES ('4', '4', '99');
INSERT INTO `sc` VALUES ('4', '5', '46');
