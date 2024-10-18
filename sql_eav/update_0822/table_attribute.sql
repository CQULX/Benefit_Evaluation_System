/*
 Navicat Premium Dump SQL

 Source Server         : LocalMysql
 Source Server Type    : MySQL
 Source Server Version : 80300 (8.3.0)
 Source Host           : localhost:3306
 Source Schema         : eav

 Target Server Type    : MySQL
 Target Server Version : 80300 (8.3.0)
 File Encoding         : 65001

 Date: 22/08/2024 16:05:19
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for table_attribute
-- ----------------------------
DROP TABLE IF EXISTS `table_attribute`;
CREATE TABLE `table_attribute`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `attribute_id` int UNSIGNED NOT NULL,
  `table_id` int UNSIGNED NOT NULL,
  `entity_related` int NOT NULL COMMENT '标识属性是否和实体相关：0不相关、1相关,如果不相关则不作为列名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of table_attribute
-- ----------------------------
INSERT INTO `table_attribute` VALUES (1, 8, 1, 1);
INSERT INTO `table_attribute` VALUES (2, 6, 1, 1);
INSERT INTO `table_attribute` VALUES (3, 9, 1, 1);
INSERT INTO `table_attribute` VALUES (4, 8, 2, 1);
INSERT INTO `table_attribute` VALUES (5, 6, 2, 1);
INSERT INTO `table_attribute` VALUES (6, 9, 2, 1);
INSERT INTO `table_attribute` VALUES (7, 8, 3, 1);
INSERT INTO `table_attribute` VALUES (8, 6, 3, 1);
INSERT INTO `table_attribute` VALUES (9, 9, 3, 1);
INSERT INTO `table_attribute` VALUES (10, 8, 4, 1);
INSERT INTO `table_attribute` VALUES (11, 6, 4, 1);
INSERT INTO `table_attribute` VALUES (12, 9, 4, 1);
INSERT INTO `table_attribute` VALUES (13, 6, 12, 1);
INSERT INTO `table_attribute` VALUES (14, 10, 12, 1);
INSERT INTO `table_attribute` VALUES (15, 11, 12, 1);
INSERT INTO `table_attribute` VALUES (16, 12, 12, 1);
INSERT INTO `table_attribute` VALUES (17, 13, 13, 0);
INSERT INTO `table_attribute` VALUES (18, 14, 13, 0);
INSERT INTO `table_attribute` VALUES (19, 6, 13, 1);
INSERT INTO `table_attribute` VALUES (20, 8, 13, 1);
INSERT INTO `table_attribute` VALUES (21, 9, 13, 1);

SET FOREIGN_KEY_CHECKS = 1;
