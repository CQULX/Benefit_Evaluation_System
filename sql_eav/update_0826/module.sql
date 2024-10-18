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

 Date: 26/08/2024 21:44:44
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for module
-- ----------------------------
DROP TABLE IF EXISTS `module`;
CREATE TABLE `module`  (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT '模块ID',
  `template_id` int(0) NOT NULL COMMENT '属于的模板id',
  `page_index` int(0) NOT NULL COMMENT '模块所在页数',
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '模块名称',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of module
-- ----------------------------
INSERT INTO `module` VALUES (7, 1, 7, '基准库', '2024-08-26 13:25:26', '2024-08-26 13:25:30');
INSERT INTO `module` VALUES (6, 1, 6, '综合评估', '2024-08-26 13:26:24', '2024-08-26 13:26:28');
INSERT INTO `module` VALUES (5, 1, 5, '流水明细', '2024-07-18 14:00:00', '2024-07-18 14:00:00');
INSERT INTO `module` VALUES (4, 1, 4, '折旧摊销', '2024-07-18 13:00:00', '2024-07-18 13:00:00');
INSERT INTO `module` VALUES (3, 1, 3, '开支明细', '2024-07-18 12:00:00', '2024-07-18 12:00:00');
INSERT INTO `module` VALUES (2, 1, 2, '收益明细', '2024-07-18 11:00:00', '2024-07-18 11:00:00');
INSERT INTO `module` VALUES (1, 1, 1, '投入明细', '2024-07-18 10:00:00', '2024-07-18 10:00:00');

SET FOREIGN_KEY_CHECKS = 1;
