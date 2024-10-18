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

 Date: 25/08/2024 16:24:29
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for project_entity
-- ----------------------------
DROP TABLE IF EXISTS `project_entity`;
CREATE TABLE `project_entity`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '项目_实体表ID',
  `project_info_id` int NOT NULL COMMENT '对应的项目ID',
  `entity_id` int NOT NULL COMMENT '对应的实体ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of project_entity
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
