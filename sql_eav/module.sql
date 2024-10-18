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

 Date: 17/08/2024 17:38:39
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for module
-- ----------------------------
DROP TABLE IF EXISTS `module`;
CREATE TABLE `module`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '模块ID',
  `template_id` int NOT NULL COMMENT '属于的模板id',
  `page_index` int NOT NULL COMMENT '模块所在页数',
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '模块名称',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id` DESC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of module
-- ----------------------------
INSERT INTO `module` VALUES (5, 1, 5, '流水明细', '2024-07-18 14:00:00', '2024-07-18 14:00:00');
INSERT INTO `module` VALUES (4, 1, 4, '折旧摊销', '2024-07-18 13:00:00', '2024-07-18 13:00:00');
INSERT INTO `module` VALUES (3, 1, 3, '开支明细', '2024-07-18 12:00:00', '2024-07-18 12:00:00');
INSERT INTO `module` VALUES (2, 1, 2, '收益明细', '2024-07-18 11:00:00', '2024-07-18 11:00:00');
INSERT INTO `module` VALUES (1, 1, 1, '投入明细', '2024-07-18 10:00:00', '2024-07-18 10:00:00');

SET FOREIGN_KEY_CHECKS = 1;
