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

 Date: 20/08/2024 18:35:07
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for entity
-- ----------------------------
DROP TABLE IF EXISTS `entity`;
CREATE TABLE `entity`  (
  `id` int UNSIGNED NOT NULL COMMENT '实体ID',
  `project_subcategory_id` int NOT NULL COMMENT '属于的项目子类ID',
  `entity_code` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '产品代码',
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '实体名称',
  `specification` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '规格型号',
  `is_product` tinyint(1) NOT NULL COMMENT '是否是产品：1是产品，0不是产品',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of entity
-- ----------------------------
INSERT INTO `entity` VALUES (1, 1, '310101', '双向双车道道路', '有绿植', 1, '2024-07-01 10:00:00', '2024-07-01 10:00:00');
INSERT INTO `entity` VALUES (2, 1, '310102', '双向双车道道路', '无绿植', 1, '2024-07-01 10:00:00', '2024-07-01 10:00:00');
INSERT INTO `entity` VALUES (3, 1, '310103', '双向四车道道路', '', 1, '2024-07-01 10:00:00', '2024-07-01 10:00:00');
INSERT INTO `entity` VALUES (4, 1, '310104', '双向六车道道路', '', 1, '2024-07-01 10:00:00', '2024-07-01 10:00:00');
INSERT INTO `entity` VALUES (5, 1, '310105', '双向八车道道路', '', 1, '2024-07-01 10:00:00', '2024-07-01 10:00:00');
INSERT INTO `entity` VALUES (6, 1, '310200', '单向单车道道路', '', 1, '2024-07-01 10:00:00', '2024-07-01 10:00:00');
INSERT INTO `entity` VALUES (7, 1, '310201', '单向双车道道路', '', 1, '2024-07-01 10:00:00', '2024-07-01 10:00:00');
INSERT INTO `entity` VALUES (8, 1, '310300', '快速路桥', '', 1, '2024-07-01 10:00:00', '2024-07-01 10:00:00');
INSERT INTO `entity` VALUES (9, 1, '310400', '立交路桥', '', 1, '2024-07-01 10:00:00', '2024-07-01 10:00:00');
INSERT INTO `entity` VALUES (10, 2, '310500', '高速路桥', '', 1, '2024-07-01 10:00:00', '2024-07-01 10:00:00');
INSERT INTO `entity` VALUES (11, 1, '', '6%税率投资额', NULL, 0, '2024-08-18 21:12:41', '2024-08-18 21:12:44');
INSERT INTO `entity` VALUES (12, 1, '', '9%税率投资额', NULL, 0, '2024-08-18 21:13:12', '2024-08-18 21:13:14');
INSERT INTO `entity` VALUES (13, 1, '', '13%税率投资额', NULL, 0, '2024-08-18 21:13:38', '2024-08-18 21:13:41');

SET FOREIGN_KEY_CHECKS = 1;
