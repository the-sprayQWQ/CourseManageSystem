/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 80029
Source Host           : localhost:3306
Source Database       : manage

Target Server Type    : MYSQL
Target Server Version : 80029
File Encoding         : 65001

Date: 2022-05-22 16:10:40
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `cid` int NOT NULL AUTO_INCREMENT,
  `cnum` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ctime` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `capacity` int NOT NULL,
  `teacher` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `credit` float(16,0) NOT NULL,
  `cname` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('1', '1', '45', '8', '小明', '5', '数据库及其原理');
INSERT INTO `course` VALUES ('2', '2', '45', '8', '小华', '5', 'C++');
INSERT INTO `course` VALUES ('3', '3', '45', '9', '小李', '5', 'Java程序设计');

-- ----------------------------
-- Table structure for flag
-- ----------------------------
DROP TABLE IF EXISTS `flag`;
CREATE TABLE `flag` (
  `selectCourseFlag` tinyint NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`selectCourseFlag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of flag
-- ----------------------------

-- ----------------------------
-- Table structure for kind
-- ----------------------------
DROP TABLE IF EXISTS `kind`;
CREATE TABLE `kind` (
  `Kid` int NOT NULL AUTO_INCREMENT,
  `pname` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `cnum` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `type` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`Kid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of kind
-- ----------------------------
INSERT INTO `kind` VALUES ('3', '软件工程', '1', '计算机');
INSERT INTO `kind` VALUES ('4', '软件工程', '2', '软件');

-- ----------------------------
-- Table structure for profession
-- ----------------------------
DROP TABLE IF EXISTS `profession`;
CREATE TABLE `profession` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `pname` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `college` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`pid`),
  UNIQUE KEY `pname` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of profession
-- ----------------------------
INSERT INTO `profession` VALUES ('1', '计算机', '计算机与计算科学');
INSERT INTO `profession` VALUES ('2', '计算机', '计算机与计算科学');
INSERT INTO `profession` VALUES ('3', '计算机', '计算机与计算科学');

-- ----------------------------
-- Table structure for record
-- ----------------------------
DROP TABLE IF EXISTS `record`;
CREATE TABLE `record` (
  `rid` int NOT NULL AUTO_INCREMENT,
  `uid` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `operate` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `oid` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `oname` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `date` datetime(6) NOT NULL,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of record
-- ----------------------------
INSERT INTO `record` VALUES ('1', '123', '增加学生', '2', '赵四', '2022-04-30 09:13:34.000000');
INSERT INTO `record` VALUES ('2', '123', '删除学生', '2', '赵四', '2022-04-30 09:13:55.000000');
INSERT INTO `record` VALUES ('3', '123', '删除学生', '1', '李华', '2022-04-30 09:13:57.000000');
INSERT INTO `record` VALUES ('4', '123', '增加学生', '1', '王世琛', '2022-04-30 09:14:10.000000');
INSERT INTO `record` VALUES ('5', '123', '删除课程', '1', '数据库', '2022-04-30 09:14:42.000000');
INSERT INTO `record` VALUES ('6', '123', '删除学生', '1', '王世琛', '2022-04-30 09:15:33.043000');
INSERT INTO `record` VALUES ('7', '123', '增加学生', '20183033607', '王世琛', '2022-04-30 09:15:48.666000');
INSERT INTO `record` VALUES ('8', '123', '增加学生', '2', '李四', '2022-04-30 09:18:12.028000');
INSERT INTO `record` VALUES ('9', '123', '删除学生', '20183033607', '王世琛', '2022-04-30 09:19:19.628000');
INSERT INTO `record` VALUES ('10', '123', '删除学生', '2', '李四', '2022-04-30 09:19:22.105000');
INSERT INTO `record` VALUES ('11', '123', '增加课程', '1', '数据库及其原理', '2022-04-30 09:23:14.713000');
INSERT INTO `record` VALUES ('12', '123', '增加学生', '1', '李四', '2022-04-30 09:24:33.399000');
INSERT INTO `record` VALUES ('13', '123', '删除学生', '1', '李四', '2022-04-30 09:35:43.432000');
INSERT INTO `record` VALUES ('14', '123', '增加学生', '1', '李华', '2022-04-30 09:36:05.100000');
INSERT INTO `record` VALUES ('15', '123', '增加学生', '2', '赵四', '2022-04-30 09:42:03.068000');
INSERT INTO `record` VALUES ('16', '123', '更新学生', '1', '李华', '2022-04-30 09:50:16.753000');
INSERT INTO `record` VALUES ('17', '123', '增加课程', '2', 'C++', '2022-04-30 09:52:09.405000');
INSERT INTO `record` VALUES ('18', '123', '删除学生', '1', '李华', '2022-04-30 10:03:22.269000');
INSERT INTO `record` VALUES ('19', '2', '退课', '1', '数据库及其原理', '2022-04-30 13:14:25.175000');
INSERT INTO `record` VALUES ('20', '2', '退课', '1', '数据库及其原理', '2022-04-30 14:06:32.169000');
INSERT INTO `record` VALUES ('21', '123', '增加学生', '3', '王五', '2022-05-02 09:34:04.442000');
INSERT INTO `record` VALUES ('22', '123', '更新学生', '2', '赵二', '2022-05-02 09:35:03.175000');
INSERT INTO `record` VALUES ('23', '123', '增加课程', '3', 'Java程序设计', '2022-05-02 10:08:46.499000');
INSERT INTO `record` VALUES ('24', '123', '更新课程', '3', 'Java程序设计', '2022-05-02 10:09:42.914000');
INSERT INTO `record` VALUES ('25', '123', '删除学生', '3', '王五', '2022-05-18 10:04:15.900000');
INSERT INTO `record` VALUES ('26', '123', '增加学生', '3', '王五', '2022-05-18 10:07:12.931000');
INSERT INTO `record` VALUES ('27', '123', '更新学生', '2', '赵四', '2022-05-18 10:08:12.697000');
INSERT INTO `record` VALUES ('28', '123', '删除学生', '3', '王五', '2022-05-18 10:09:19.837000');
INSERT INTO `record` VALUES ('29', '123', '更新学生', '2', '赵二', '2022-05-18 10:10:20.398000');
INSERT INTO `record` VALUES ('30', '123', '增加学生', '3', '王五', '2022-05-18 10:10:46.042000');

-- ----------------------------
-- Table structure for select_course
-- ----------------------------
DROP TABLE IF EXISTS `select_course`;
CREATE TABLE `select_course` (
  `sid` int NOT NULL AUTO_INCREMENT,
  `cid` int NOT NULL,
  `sdate` datetime(6) NOT NULL,
  `uid` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of select_course
-- ----------------------------
INSERT INTO `select_course` VALUES ('1', '3', '2022-05-26 19:03:15.000000', '2');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `No` int NOT NULL AUTO_INCREMENT,
  `uid` varchar(16) NOT NULL,
  `uname` varchar(16) NOT NULL,
  `pwd` varchar(16) NOT NULL,
  `type` varchar(16) NOT NULL,
  `college` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `profession` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `stuClass` varchar(16) DEFAULT NULL,
  `wxid` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `stu_class` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`No`),
  UNIQUE KEY `uid` (`No`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '123', 'm0001', '123', '1', null, null, null, null, null);
INSERT INTO `user` VALUES ('9', '2', '赵二', '234', '2', '计算机与计算科学学院', '软件工程', null, null, '6');
INSERT INTO `user` VALUES ('12', '3', '王五', '3', '2', '计算机与计算科学学院', '软件工程', null, null, '6');
