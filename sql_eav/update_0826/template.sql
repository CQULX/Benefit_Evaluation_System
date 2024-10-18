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

 Date: 26/08/2024 21:46:11
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for template
-- ----------------------------
DROP TABLE IF EXISTS `template`;
CREATE TABLE `template`  (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT '模板ID',
  `template_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '模板名称',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of template
-- ----------------------------
INSERT INTO `template` VALUES (1, '类型一模板', '2024-07-18 10:00:00', '2024-07-18 10:00:00');
INSERT INTO `template` VALUES (2, '类型二模板', '2024-07-18 11:00:00', '2024-07-18 11:00:00');
INSERT INTO `template` VALUES (3, '类型三模板', '2024-07-18 12:00:00', '2024-07-18 12:00:00');
INSERT INTO `template` VALUES (4, '类型四模板', '2024-07-18 13:00:00', '2024-07-18 13:00:00');
INSERT INTO `template` VALUES (5, '类型五模板', '2024-07-18 14:00:00', '2024-07-18 14:00:00');

SET FOREIGN_KEY_CHECKS = 1;
