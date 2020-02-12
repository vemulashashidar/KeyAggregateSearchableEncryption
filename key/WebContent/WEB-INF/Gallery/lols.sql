/*
MySQL Data Transfer
Source Host: localhost
Source Database: lols
Target Host: localhost
Target Database: lols
Date: 12/14/2014 4:30:01 PM
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for cost
-- ----------------------------
DROP TABLE IF EXISTS `cost`;
CREATE TABLE `cost` (
  `ID` int(255) NOT NULL auto_increment,
  `path` varchar(255) default NULL,
  `val` varchar(255) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `cost` VALUES ('1', 'ab', '1');
INSERT INTO `cost` VALUES ('2', 'bc', '1');
INSERT INTO `cost` VALUES ('3', 'de', '2');
INSERT INTO `cost` VALUES ('4', 'ef', '2');
INSERT INTO `cost` VALUES ('5', 'gh', '2');
INSERT INTO `cost` VALUES ('6', 'hi', '2');
INSERT INTO `cost` VALUES ('7', 'ad', '3');
INSERT INTO `cost` VALUES ('8', 'be', '2');
INSERT INTO `cost` VALUES ('9', 'cf', '2');
INSERT INTO `cost` VALUES ('10', 'dg', '1');
INSERT INTO `cost` VALUES ('11', 'eh', '2');
INSERT INTO `cost` VALUES ('12', 'fi', '2');
INSERT INTO `cost` VALUES ('13', 'ba', '1');
INSERT INTO `cost` VALUES ('14', 'cb', '1');
INSERT INTO `cost` VALUES ('15', 'ed', '2');
INSERT INTO `cost` VALUES ('16', 'fe', '2');
INSERT INTO `cost` VALUES ('17', 'hg', '2');
INSERT INTO `cost` VALUES ('18', 'ih', '2');
INSERT INTO `cost` VALUES ('19', 'da', '3');
INSERT INTO `cost` VALUES ('20', 'eb', '2');
INSERT INTO `cost` VALUES ('21', 'fc', '2');
INSERT INTO `cost` VALUES ('22', 'gd', '1');
INSERT INTO `cost` VALUES ('23', 'he', '2');
INSERT INTO `cost` VALUES ('24', 'if', '2');
