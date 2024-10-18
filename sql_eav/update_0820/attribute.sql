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

 Date: 21/08/2024 00:30:06
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for attribute
-- ----------------------------
DROP TABLE IF EXISTS `attribute`;
CREATE TABLE `attribute`  (
  `id` int unsigned NOT NULL COMMENT '属性ID',
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '属性名称',
  `type` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '属性值的类型',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of attribute
-- ----------------------------
INSERT INTO `attribute` VALUES (1, '序号', 'int', '2024-07-01 10:00:00', '2024-07-01 10:00:00');
INSERT INTO `attribute` VALUES (2, '产品代码', 'varchar', '2024-07-01 10:00:00', '2024-07-01 10:00:00');
INSERT INTO `attribute` VALUES (3, '产品名称', 'varchar', '2024-07-01 10:00:00', '2024-07-01 10:00:00');
INSERT INTO `attribute` VALUES (4, '规格型号', 'varchar', '2024-07-01 10:00:00', '2024-07-01 10:00:00');
INSERT INTO `attribute` VALUES (5, '单位', 'varchar', '2024-07-01 10:00:00', '2024-07-01 10:00:00');
INSERT INTO `attribute` VALUES (6, '类型', 'varchar', '2024-07-01 10:00:00', '2024-07-01 10:00:00');
INSERT INTO `attribute` VALUES (7, '价格', 'float', '2024-07-01 10:00:00', '2024-07-01 10:00:00');
INSERT INTO `attribute` VALUES (8, '年份', 'int', '2024-07-01 18:34:01', '2024-08-18 18:34:05');
INSERT INTO `attribute` VALUES (9, '合计', 'int', '2024-07-01 18:34:17', '2024-08-18 18:34:21');
INSERT INTO `attribute` VALUES (10, '金额（含税）', 'float', '2024-08-17 11:11:41', '2024-08-17 11:11:43');
INSERT INTO `attribute` VALUES (11, '折现率', 'float', '2024-08-18 10:06:53', '2024-08-18 10:06:55');
INSERT INTO `attribute` VALUES (12, '审定税率', 'float', '2024-08-18 10:07:16', '2024-08-18 10:07:18');
INSERT INTO `attribute` VALUES (13, '道路名称', 'varchar', '2024-08-20 18:25:24', '2024-08-20 18:25:28');
INSERT INTO `attribute` VALUES (14, '折旧年限', 'varchar', '2024-08-20 18:26:57', '2024-08-20 18:27:00');
INSERT INTO `attribute` VALUES (15, '当年转资月份', 'varchar', '2024-08-20 18:28:34', '2024-08-20 18:28:36');
INSERT INTO `attribute` VALUES (16, '各年建设类设备使用规模', 'varchar', '2024-08-20 18:29:00', '2024-08-20 18:29:06');
INSERT INTO `attribute` VALUES (17, '道路折旧支出合计金额', 'varchar', '2024-08-20 18:30:47', '2024-08-20 18:30:49');

SET FOREIGN_KEY_CHECKS = 1;
