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

 Date: 26/08/2024 21:45:18
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for project_entity
-- ----------------------------
DROP TABLE IF EXISTS `project_entity`;
CREATE TABLE `project_entity`  (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT '项目_实体表ID',
  `project_info_id` int(0) NOT NULL COMMENT '对应的项目ID',
  `entity_id` int(0) NOT NULL COMMENT '对应的实体ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of project_entity
-- ----------------------------
INSERT INTO `project_entity` VALUES (19, 6, 1);
INSERT INTO `project_entity` VALUES (23, 6, 7);
INSERT INTO `project_entity` VALUES (24, 6, 8);
INSERT INTO `project_entity` VALUES (25, 14, 1);
INSERT INTO `project_entity` VALUES (26, 14, 4);
INSERT INTO `project_entity` VALUES (27, 14, 5);

SET FOREIGN_KEY_CHECKS = 1;
