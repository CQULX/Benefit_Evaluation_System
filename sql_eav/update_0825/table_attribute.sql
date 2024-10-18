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

 Date: 25/08/2024 16:34:06
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
  `equation` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 61 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of table_attribute
-- ----------------------------
INSERT INTO `table_attribute` VALUES (1, 6, 1, 1, NULL);
INSERT INTO `table_attribute` VALUES (2, 8, 1, 1, NULL);
INSERT INTO `table_attribute` VALUES (3, 9, 1, 1, NULL);
INSERT INTO `table_attribute` VALUES (4, 6, 2, 1, NULL);
INSERT INTO `table_attribute` VALUES (5, 8, 2, 1, NULL);
INSERT INTO `table_attribute` VALUES (6, 9, 2, 1, NULL);
INSERT INTO `table_attribute` VALUES (7, 6, 3, 1, NULL);
INSERT INTO `table_attribute` VALUES (8, 8, 3, 1, '');
INSERT INTO `table_attribute` VALUES (9, 9, 3, 1, NULL);
INSERT INTO `table_attribute` VALUES (10, 6, 4, 1, NULL);
INSERT INTO `table_attribute` VALUES (11, 8, 4, 1, NULL);
INSERT INTO `table_attribute` VALUES (12, 9, 4, 1, NULL);
INSERT INTO `table_attribute` VALUES (13, 6, 12, 1, NULL);
INSERT INTO `table_attribute` VALUES (14, 10, 12, 1, NULL);
INSERT INTO `table_attribute` VALUES (15, 11, 12, 0, NULL);
INSERT INTO `table_attribute` VALUES (16, 12, 12, 0, NULL);
INSERT INTO `table_attribute` VALUES (17, 13, 13, 0, NULL);
INSERT INTO `table_attribute` VALUES (18, 14, 13, 0, NULL);
INSERT INTO `table_attribute` VALUES (19, 6, 13, 1, NULL);
INSERT INTO `table_attribute` VALUES (20, 8, 13, 1, NULL);
INSERT INTO `table_attribute` VALUES (21, 9, 13, 1, NULL);
INSERT INTO `table_attribute` VALUES (22, 6, 6, 1, NULL);
INSERT INTO `table_attribute` VALUES (23, 8, 6, 1, NULL);
INSERT INTO `table_attribute` VALUES (24, 9, 6, 1, NULL);
INSERT INTO `table_attribute` VALUES (25, 6, 7, 1, NULL);
INSERT INTO `table_attribute` VALUES (26, 8, 7, 1, NULL);
INSERT INTO `table_attribute` VALUES (27, 9, 7, 1, NULL);
INSERT INTO `table_attribute` VALUES (28, 6, 8, 1, NULL);
INSERT INTO `table_attribute` VALUES (29, 8, 8, 1, NULL);
INSERT INTO `table_attribute` VALUES (30, 9, 8, 1, NULL);
INSERT INTO `table_attribute` VALUES (31, 6, 9, 1, NULL);
INSERT INTO `table_attribute` VALUES (32, 8, 9, 1, NULL);
INSERT INTO `table_attribute` VALUES (33, 9, 9, 1, NULL);
INSERT INTO `table_attribute` VALUES (34, 6, 10, 1, NULL);
INSERT INTO `table_attribute` VALUES (35, 8, 10, 1, NULL);
INSERT INTO `table_attribute` VALUES (36, 9, 10, 1, NULL);
INSERT INTO `table_attribute` VALUES (37, 6, 11, 1, NULL);
INSERT INTO `table_attribute` VALUES (38, 8, 11, 1, NULL);
INSERT INTO `table_attribute` VALUES (39, 9, 11, 1, NULL);
INSERT INTO `table_attribute` VALUES (40, 6, 14, 1, NULL);
INSERT INTO `table_attribute` VALUES (41, 8, 14, 1, NULL);
INSERT INTO `table_attribute` VALUES (42, 9, 14, 1, NULL);
INSERT INTO `table_attribute` VALUES (43, 6, 15, 1, NULL);
INSERT INTO `table_attribute` VALUES (44, 8, 15, 1, NULL);
INSERT INTO `table_attribute` VALUES (45, 9, 15, 1, NULL);
INSERT INTO `table_attribute` VALUES (46, 6, 16, 1, NULL);
INSERT INTO `table_attribute` VALUES (47, 8, 16, 1, NULL);
INSERT INTO `table_attribute` VALUES (48, 9, 16, 1, NULL);
INSERT INTO `table_attribute` VALUES (49, 6, 17, 1, NULL);
INSERT INTO `table_attribute` VALUES (50, 8, 17, 1, NULL);
INSERT INTO `table_attribute` VALUES (51, 9, 17, 1, NULL);
INSERT INTO `table_attribute` VALUES (52, 6, 18, 1, NULL);
INSERT INTO `table_attribute` VALUES (53, 8, 18, 1, NULL);
INSERT INTO `table_attribute` VALUES (54, 9, 18, 1, NULL);
INSERT INTO `table_attribute` VALUES (55, 6, 19, 1, NULL);
INSERT INTO `table_attribute` VALUES (56, 8, 19, 1, NULL);
INSERT INTO `table_attribute` VALUES (57, 9, 19, 1, NULL);
INSERT INTO `table_attribute` VALUES (58, 6, 20, 1, NULL);
INSERT INTO `table_attribute` VALUES (59, 8, 20, 1, NULL);
INSERT INTO `table_attribute` VALUES (60, 9, 20, 1, NULL);

SET FOREIGN_KEY_CHECKS = 1;
