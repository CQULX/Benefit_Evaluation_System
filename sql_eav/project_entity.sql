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

 Date: 09/08/2024 20:02:13
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
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of project_entity
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
