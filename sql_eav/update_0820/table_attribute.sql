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

 Date: 21/08/2024 00:27:35
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for table_attribute
-- ----------------------------
DROP TABLE IF EXISTS `table_attribute`;
CREATE TABLE `table_attribute`  (
  `id` int unsigned NOT NULL,
  `attribute_id` int unsigned,
  `table_id` int unsigned,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of table_attribute
-- ----------------------------
INSERT INTO `table_attribute` VALUES (1, 8, 1);
INSERT INTO `table_attribute` VALUES (2, 6, 1);
INSERT INTO `table_attribute` VALUES (3, 9, 1);
INSERT INTO `table_attribute` VALUES (4, 8, 2);
INSERT INTO `table_attribute` VALUES (5, 6, 2);
INSERT INTO `table_attribute` VALUES (6, 9, 2);
INSERT INTO `table_attribute` VALUES (7, 8, 3);
INSERT INTO `table_attribute` VALUES (8, 6, 3);
INSERT INTO `table_attribute` VALUES (9, 9, 3);
INSERT INTO `table_attribute` VALUES (10, 8, 4);
INSERT INTO `table_attribute` VALUES (11, 6, 4);
INSERT INTO `table_attribute` VALUES (12, 9, 4);
INSERT INTO `table_attribute` VALUES (13, 6, 12);
INSERT INTO `table_attribute` VALUES (14, 10, 12);
INSERT INTO `table_attribute` VALUES (15, 11, 12);
INSERT INTO `table_attribute` VALUES (16, 12, 12);

SET FOREIGN_KEY_CHECKS = 1;
