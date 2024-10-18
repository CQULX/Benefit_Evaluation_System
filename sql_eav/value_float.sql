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

 Date: 09/08/2024 20:00:58
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for value_float
-- ----------------------------
DROP TABLE IF EXISTS `value_float`;
CREATE TABLE `value_float`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键ID（但感觉没啥用）',
  `project_info_id` int NOT NULL COMMENT '对应的项目ID',
  `project_entity_id` int NULL DEFAULT NULL COMMENT '对应的项目实体ID',
  `table_id` int NOT NULL COMMENT '属于的表的ID',
  `attribute_id` int NOT NULL COMMENT '属于的属性的ID',
  `value` float NULL DEFAULT NULL COMMENT 'float类型的属性值',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of value_float
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
