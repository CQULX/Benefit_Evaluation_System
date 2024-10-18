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

 Date: 26/08/2024 21:45:32
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for project_subcategory
-- ----------------------------
DROP TABLE IF EXISTS `project_subcategory`;
CREATE TABLE `project_subcategory`  (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT '主键ID:项目小类ID',
  `project_category_id` int(0) DEFAULT NULL COMMENT '属于的项目大类的ID',
  `template_id` int(0) DEFAULT NULL COMMENT '对应的模板的ID',
  `project_subcategory_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '项目小类名称',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of project_subcategory
-- ----------------------------
INSERT INTO `project_subcategory` VALUES (1, 1, 1, '机器学习', '2024-07-18 10:00:00', '2024-07-18 10:00:00');
INSERT INTO `project_subcategory` VALUES (2, 1, 2, '自然语言处理', '2024-07-18 11:00:00', '2024-07-18 11:00:00');
INSERT INTO `project_subcategory` VALUES (3, 2, 3, '数据挖掘', '2024-07-18 12:00:00', '2024-07-18 12:00:00');
INSERT INTO `project_subcategory` VALUES (4, 3, 4, '云存储', '2024-07-18 13:00:00', '2024-07-18 13:00:00');

SET FOREIGN_KEY_CHECKS = 1;
