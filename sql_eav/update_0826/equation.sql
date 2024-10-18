/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80100
 Source Host           : localhost:3306
 Source Schema         : ry-vue

 Target Server Type    : MySQL
 Target Server Version : 80100
 File Encoding         : 65001

 Date: 26/08/2024 21:44:25
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for equation
-- ----------------------------
DROP TABLE IF EXISTS `equation`;
CREATE TABLE `equation`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `table_id` int(0) DEFAULT NULL,
  `attribute_id` int(0) DEFAULT NULL,
  `is_product` int(0) DEFAULT NULL,
  `entity_id` int(0) DEFAULT NULL,
  `equation` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of equation
-- ----------------------------
INSERT INTO `equation` VALUES (1, 3, 8, 1, NULL, '[1,8,i]*[2,8,i]');
INSERT INTO `equation` VALUES (2, 3, 8, 0, 14, 'SUM[3,8,i]');
INSERT INTO `equation` VALUES (3, 3, 8, 0, 13, '[3,8,14,i]-[3,8,11,i]-[3,8,12,i]');
INSERT INTO `equation` VALUES (4, 3, 9, 2, NULL, 'SUM[3,8]');
INSERT INTO `equation` VALUES (5, 4, 8, 0, 11, '[3,8,11,i]*1.06');
INSERT INTO `equation` VALUES (6, 4, 8, 0, 12, '[3,8,12,i]*1.09');
INSERT INTO `equation` VALUES (7, 4, 8, 0, 13, '[3,8,13,i]*1.13');
INSERT INTO `equation` VALUES (8, 4, 8, 0, 15, '[4,8,11,i]+[4,8,12,i]+[4,8,13,i]');
INSERT INTO `equation` VALUES (9, 1, 9, 2, NULL, 'SUM[1,8]');
INSERT INTO `equation` VALUES (10, 4, 9, 2, NULL, 'SUM[4,8]');
INSERT INTO `equation` VALUES (11, 8, 8, 1, NULL, '0+[6,8,i]-[7,8,i]:[8,8,i-1]+[6,8,i]-[7,8,i]');
INSERT INTO `equation` VALUES (12, 10, 8, 1, NULL, '[8,8,i]*[9,8,i]*[10,46]/3:[8,8,i-1]*[9,8,i]*12+([6,8,i]-[7,8,i])*[9,8,i]*12/3');
INSERT INTO `equation` VALUES (13, 10, 8, 0, 36, 'SUM[10,8,i]');
INSERT INTO `equation` VALUES (14, 11, 8, 1, NULL, '[10,8,i]*1.06');
INSERT INTO `equation` VALUES (15, 11, 8, 0, 7, '[10,8,7,i]*1.09');
INSERT INTO `equation` VALUES (16, 11, 8, 0, 37, 'SUM[11,8,i]');

SET FOREIGN_KEY_CHECKS = 1;
