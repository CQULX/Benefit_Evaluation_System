/*
 Navicat Premium Data Transfer

 Source Server         : 127.0.0.1
 Source Server Type    : MySQL
 Source Server Version : 80031 (8.0.31)
 Source Host           : localhost:3306
 Source Schema         : ruoyigroupa

 Target Server Type    : MySQL
 Target Server Version : 80031 (8.0.31)
 File Encoding         : 65001

 Date: 21/08/2024 23:42:43
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for entity
-- ----------------------------
DROP TABLE IF EXISTS `entity`;
CREATE TABLE `entity`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '实体ID',
  `entity_code` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '产品代码',
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '实体名称',
  `specification` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '规格型号',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  `project_subcategory_id` int NULL DEFAULT NULL,
  `is_product` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

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
INSERT INTO `entity` VALUES (16, NULL, '第一年投资在各年的折旧', NULL, '2024-08-21 19:48:38', '2024-08-21 19:48:40', NULL, 0);
INSERT INTO `entity` VALUES (17, NULL, '第二年投资在各年的折旧', NULL, '2024-08-21 19:49:20', '2024-08-21 19:49:21', NULL, 0);
INSERT INTO `entity` VALUES (18, NULL, '第三年投资在各年的折旧', NULL, '2024-08-21 19:50:00', '2024-08-21 19:50:00', NULL, 0);
INSERT INTO `entity` VALUES (19, NULL, '第四年投资在各年的折旧', NULL, '2024-08-21 19:50:30', '2024-08-21 19:50:30', NULL, 0);
INSERT INTO `entity` VALUES (20, NULL, '第五年投资在各年的折旧', NULL, '2024-08-21 19:51:00', '2024-08-21 19:51:00', NULL, 0);
INSERT INTO `entity` VALUES (21, NULL, '第六年投资在各年的折旧', NULL, '2024-08-21 19:51:30', '2024-08-21 19:51:30', NULL, 0);
INSERT INTO `entity` VALUES (22, NULL, '第七年投资在各年的折旧', NULL, '2024-08-21 19:52:00', '2024-08-21 19:52:00', NULL, 0);
INSERT INTO `entity` VALUES (23, NULL, '第八年投资在各年的折旧', NULL, '2024-08-21 19:52:30', '2024-08-21 19:52:30', NULL, 0);
INSERT INTO `entity` VALUES (24, NULL, '第九年投资在各年的折旧', NULL, '2024-08-21 19:53:00', '2024-08-21 19:53:00', NULL, 0);
INSERT INTO `entity` VALUES (25, NULL, '第十年投资在各年的折旧', NULL, '2024-08-21 19:53:30', '2024-08-21 19:53:30', NULL, 0);
INSERT INTO `entity` VALUES (26, NULL, '当年转资月份', NULL, '2024-08-21 19:53:30', '2024-08-21 19:53:30', NULL, 0);
INSERT INTO `entity` VALUES (27, NULL, '各年建设类设备使用规模', NULL, '2024-08-21 19:53:30', '2024-08-21 19:53:30', NULL, 0);
INSERT INTO `entity` VALUES (28, NULL, '道路折旧支出合计', NULL, '2024-08-21 21:35:32', '2024-08-21 21:35:35', NULL, NULL);
INSERT INTO `entity` VALUES (29, NULL, '路面后期维护费用合计', NULL, '2024-08-21 22:14:24', '2024-08-21 22:14:26', NULL, 0);
INSERT INTO `entity` VALUES (30, NULL, '路面保养费用合计', NULL, '2024-08-21 22:16:18', '2024-08-21 22:16:23', NULL, 0);
INSERT INTO `entity` VALUES (31, NULL, '人工服务费用合计', NULL, '2024-08-21 22:16:19', '2024-08-21 22:16:24', NULL, 0);
INSERT INTO `entity` VALUES (32, NULL, '其他费用合计', NULL, '2024-08-21 22:16:20', '2024-08-21 22:16:25', NULL, 0);
INSERT INTO `entity` VALUES (33, NULL, '噪音污染补偿合计', NULL, '2024-08-21 22:16:22', '2024-08-21 22:16:26', NULL, 0);
INSERT INTO `entity` VALUES (34, NULL, '宣传推广费用合计', NULL, '2024-08-21 22:16:28', '2024-08-21 22:16:27', NULL, 0);


SET FOREIGN_KEY_CHECKS = 1;
