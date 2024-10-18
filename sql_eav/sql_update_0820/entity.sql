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

 Date: 21/08/2024 00:29:50
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for entity
-- ----------------------------
DROP TABLE IF EXISTS `entity`;
CREATE TABLE `entity`  (
  `id` int unsigned NOT NULL COMMENT '实体ID',
  `entity_code` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '产品代码',
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '实体名称',
  `specification` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '规格型号',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL COMMENT '修改时间',
  `project_subcategory_id` int(0) DEFAULT NULL,
  `is_product` int(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of entity
-- ----------------------------
INSERT INTO `entity` VALUES (1, '310101', '双向双车道道路', '有绿植', '2024-07-01 10:00:00', '2024-07-01 10:00:00', 1, 1);
INSERT INTO `entity` VALUES (2, '310102', '双向双车道道路', '无绿植', '2024-07-01 10:00:00', '2024-07-01 10:00:00', 1, 1);
INSERT INTO `entity` VALUES (3, '310103', '双向四车道道路', '', '2024-07-01 10:00:00', '2024-07-01 10:00:00', 1, 1);
INSERT INTO `entity` VALUES (4, '310104', '双向六车道道路', '', '2024-07-01 10:00:00', '2024-07-01 10:00:00', 1, 1);
INSERT INTO `entity` VALUES (5, '310105', '双向八车道道路', '', '2024-07-01 10:00:00', '2024-07-01 10:00:00', 1, 1);
INSERT INTO `entity` VALUES (6, '310200', '单向单车道道路', '', '2024-07-01 10:00:00', '2024-07-01 10:00:00', 1, 1);
INSERT INTO `entity` VALUES (7, '310201', '单向双车道道路', '', '2024-07-01 10:00:00', '2024-07-01 10:00:00', 1, 1);
INSERT INTO `entity` VALUES (8, '310300', '快速路桥', '', '2024-07-01 10:00:00', '2024-07-01 10:00:00', 1, 1);
INSERT INTO `entity` VALUES (9, '310400', '立交路桥', '', '2024-07-01 10:00:00', '2024-07-01 10:00:00', 1, 1);
INSERT INTO `entity` VALUES (10, '310500', '高速路桥', '', '2024-07-01 10:00:00', '2024-07-01 10:00:00', 1, 1);
INSERT INTO `entity` VALUES (11, NULL, '6%税率投资额 ', NULL, '2024-07-01 20:47:59', '2024-08-16 20:48:05', NULL, 0);
INSERT INTO `entity` VALUES (12, NULL, '9%税率投资额 ', NULL, '2024-07-01 20:48:19', '2024-08-16 20:48:25', NULL, 0);
INSERT INTO `entity` VALUES (13, NULL, '13%税率投资额', NULL, '2024-07-01 20:48:49', '2024-08-16 20:48:53', NULL, 0);
INSERT INTO `entity` VALUES (14, NULL, '不含税投资额合计', NULL, '2024-07-19 10:37:26', '2024-08-19 10:37:33', NULL, 0);
INSERT INTO `entity` VALUES (15, NULL, '含税投资额合计', NULL, '2024-07-01 10:38:05', '2024-08-19 10:38:10', NULL, 0);

SET FOREIGN_KEY_CHECKS = 1;
