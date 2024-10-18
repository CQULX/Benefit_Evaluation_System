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

 Date: 09/08/2024 19:56:36
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for project_category
-- ----------------------------
DROP TABLE IF EXISTS `project_category`;
CREATE TABLE `project_category`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键ID：项目大类ID',
  `template_id` int NOT NULL COMMENT '对应的模板ID',
  `project_category_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '项目大类名称',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of project_category
-- ----------------------------
INSERT INTO `project_category` VALUES (1, 1, '人工智能', '2024-07-18 10:00:00', '2024-07-18 10:00:00');
INSERT INTO `project_category` VALUES (2, 1, '大数据', '2024-07-18 11:00:00', '2024-07-18 11:00:00');
INSERT INTO `project_category` VALUES (3, 2, '云计算', '2024-07-18 12:00:00', '2024-07-18 12:00:00');
INSERT INTO `project_category` VALUES (4, 3, '物联网', '2024-07-18 13:00:00', '2024-07-18 13:00:00');
INSERT INTO `project_category` VALUES (5, 3, '区块链', '2024-07-18 14:00:00', '2024-07-18 14:00:00');

SET FOREIGN_KEY_CHECKS = 1;
