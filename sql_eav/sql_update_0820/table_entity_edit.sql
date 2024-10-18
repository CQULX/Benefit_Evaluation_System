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

 Date: 21/08/2024 00:26:39
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for table_entity_edit
-- ----------------------------
DROP TABLE IF EXISTS `table_entity_edit`;
CREATE TABLE `table_entity_edit`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `table_id` int(0) DEFAULT NULL,
  `entity_id` int(0) DEFAULT NULL,
  `is_edit` int(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 39 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of table_entity_edit
-- ----------------------------
INSERT INTO `table_entity_edit` VALUES (1, 1, 1, 1);
INSERT INTO `table_entity_edit` VALUES (2, 1, 2, 1);
INSERT INTO `table_entity_edit` VALUES (3, 1, 3, 1);
INSERT INTO `table_entity_edit` VALUES (4, 1, 4, 1);
INSERT INTO `table_entity_edit` VALUES (5, 1, 5, 1);
INSERT INTO `table_entity_edit` VALUES (6, 1, 6, 1);
INSERT INTO `table_entity_edit` VALUES (7, 1, 7, 1);
INSERT INTO `table_entity_edit` VALUES (8, 1, 8, 1);
INSERT INTO `table_entity_edit` VALUES (9, 1, 9, 1);
INSERT INTO `table_entity_edit` VALUES (10, 1, 10, 1);
INSERT INTO `table_entity_edit` VALUES (11, 2, 1, 1);
INSERT INTO `table_entity_edit` VALUES (12, 2, 2, 1);
INSERT INTO `table_entity_edit` VALUES (13, 2, 3, 1);
INSERT INTO `table_entity_edit` VALUES (14, 2, 4, 1);
INSERT INTO `table_entity_edit` VALUES (15, 2, 5, 1);
INSERT INTO `table_entity_edit` VALUES (16, 2, 6, 1);
INSERT INTO `table_entity_edit` VALUES (17, 2, 7, 1);
INSERT INTO `table_entity_edit` VALUES (18, 2, 8, 1);
INSERT INTO `table_entity_edit` VALUES (19, 2, 9, 1);
INSERT INTO `table_entity_edit` VALUES (20, 2, 10, 1);
INSERT INTO `table_entity_edit` VALUES (21, 3, 1, 1);
INSERT INTO `table_entity_edit` VALUES (22, 3, 2, 1);
INSERT INTO `table_entity_edit` VALUES (23, 3, 3, 1);
INSERT INTO `table_entity_edit` VALUES (24, 3, 4, 1);
INSERT INTO `table_entity_edit` VALUES (25, 3, 5, 1);
INSERT INTO `table_entity_edit` VALUES (26, 3, 6, 1);
INSERT INTO `table_entity_edit` VALUES (27, 3, 7, 1);
INSERT INTO `table_entity_edit` VALUES (28, 3, 8, 1);
INSERT INTO `table_entity_edit` VALUES (29, 3, 9, 1);
INSERT INTO `table_entity_edit` VALUES (30, 3, 10, 1);
INSERT INTO `table_entity_edit` VALUES (31, 3, 11, 1);
INSERT INTO `table_entity_edit` VALUES (32, 3, 12, 1);
INSERT INTO `table_entity_edit` VALUES (33, 3, 13, 0);
INSERT INTO `table_entity_edit` VALUES (34, 4, 11, 1);
INSERT INTO `table_entity_edit` VALUES (35, 4, 12, 1);
INSERT INTO `table_entity_edit` VALUES (36, 4, 13, 0);
INSERT INTO `table_entity_edit` VALUES (37, 3, 14, 0);
INSERT INTO `table_entity_edit` VALUES (38, 4, 15, 0);

SET FOREIGN_KEY_CHECKS = 1;
