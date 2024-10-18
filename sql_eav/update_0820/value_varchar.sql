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

 Date: 21/08/2024 00:25:38
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for value_varchar
-- ----------------------------
DROP TABLE IF EXISTS `value_varchar`;
CREATE TABLE `value_varchar`  (
  `id` int unsigned NOT NULL COMMENT '主键ID（但感觉没啥用）',
  `project_info_id` int(0) NOT NULL COMMENT '对应的项目ID',
  `project_entity_id` int(0) DEFAULT NULL COMMENT '对应的项目实体ID',
  `table_id` int(0) NOT NULL COMMENT '属于的表的ID',
  `attribute_id` int(0) NOT NULL COMMENT '属于的属性的ID',
  `value` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT 'varchar类型的属性值',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of value_varchar
-- ----------------------------
INSERT INTO `value_varchar` VALUES (1, 1, NULL, 1, 2, '310101', '2024-07-01 10:00:00', '2024-07-01 10:00:00');
INSERT INTO `value_varchar` VALUES (2, 1, NULL, 1, 4, '有绿植', '2024-07-01 10:00:00', '2024-07-01 10:00:00');
INSERT INTO `value_varchar` VALUES (3, 1, NULL, 1, 5, '条', '2024-07-01 10:00:00', '2024-07-01 10:00:00');
INSERT INTO `value_varchar` VALUES (4, 1, NULL, 1, 2, '310102', '2024-07-01 10:00:00', '2024-07-01 10:00:00');
INSERT INTO `value_varchar` VALUES (5, 1, NULL, 1, 4, '无绿植', '2024-07-01 10:00:00', '2024-07-01 10:00:00');
INSERT INTO `value_varchar` VALUES (6, 1, NULL, 1, 5, '条', '2024-07-01 10:00:00', '2024-07-01 10:00:00');
INSERT INTO `value_varchar` VALUES (7, 1, NULL, 2, 2, '310101', '2024-07-01 10:00:00', '2024-07-01 10:00:00');
INSERT INTO `value_varchar` VALUES (8, 1, NULL, 2, 4, '有绿植', '2024-07-01 10:00:00', '2024-07-01 10:00:00');
INSERT INTO `value_varchar` VALUES (9, 1, NULL, 2, 5, '元/条', '2024-07-01 10:00:00', '2024-07-01 10:00:00');
INSERT INTO `value_varchar` VALUES (10, 1, NULL, 3, 2, '310101', '2024-07-01 10:00:00', '2024-07-01 10:00:00');
INSERT INTO `value_varchar` VALUES (11, 1, NULL, 3, 4, '有绿植', '2024-07-01 10:00:00', '2024-07-01 10:00:00');
INSERT INTO `value_varchar` VALUES (12, 1, NULL, 3, 5, '元/条', '2024-07-01 10:00:00', '2024-07-01 10:00:00');
INSERT INTO `value_varchar` VALUES (13, 1, NULL, 12, 6, '流水合计', '2024-08-17 12:08:27', '2024-08-17 12:08:29');
INSERT INTO `value_varchar` VALUES (14, 1, NULL, 12, 6, '投入类流水', '2024-08-17 12:12:59', '2024-08-17 12:13:01');
INSERT INTO `value_varchar` VALUES (15, 1, NULL, 12, 6, '成本类流水', '2024-08-17 12:13:31', '2024-08-17 12:13:34');
INSERT INTO `value_varchar` VALUES (16, 1, NULL, 12, 6, '审定税支出', '2024-08-17 12:13:53', '2024-08-17 12:13:55');
INSERT INTO `value_varchar` VALUES (17, 1, NULL, 12, 6, '累计净流水', '2024-08-17 12:14:10', '2024-08-17 12:14:12');
INSERT INTO `value_varchar` VALUES (18, 1, NULL, 12, 6, '累计净流水现值', '2024-08-17 12:14:26', '2024-08-17 12:14:27');
INSERT INTO `value_varchar` VALUES (19, 1, NULL, 12, 11, '0.055', '2024-08-18 10:08:24', '2024-08-18 10:08:27');
INSERT INTO `value_varchar` VALUES (20, 1, NULL, 12, 12, '0.25', '2024-08-18 10:08:47', '2024-08-18 10:08:50');
INSERT INTO `value_varchar` VALUES (21, 1, NULL, 13, 13, NULL, '2024-08-20 18:40:04', '2024-08-20 18:40:08');
INSERT INTO `value_varchar` VALUES (22, 1, NULL, 13, 14, '\'3,5,6,7,8,10,15,20,25,30\'', '2024-08-20 18:40:52', '2024-08-20 18:40:54');
INSERT INTO `value_varchar` VALUES (23, 1, NULL, 13, 15, NULL, '2024-08-20 18:44:41', '2024-08-20 18:44:44');
INSERT INTO `value_varchar` VALUES (24, 1, NULL, 13, 16, NULL, '2024-08-20 18:45:03', '2024-08-20 18:45:07');
INSERT INTO `value_varchar` VALUES (25, 1, NULL, 13, 16, NULL, '2024-08-20 18:45:22', '2024-08-20 18:45:24');
INSERT INTO `value_varchar` VALUES (26, 6, 1, 1, 8, '[286, 4252, 72]', '2024-08-21 00:21:26', '2024-08-21 00:21:26');
INSERT INTO `value_varchar` VALUES (27, 6, 1, 1, 6, '双向双车道道路 310101', '2024-08-21 00:21:26', '2024-08-21 00:21:26');
INSERT INTO `value_varchar` VALUES (28, 6, 1, 1, 9, '', '2024-08-21 00:21:26', '2024-08-21 00:21:26');
INSERT INTO `value_varchar` VALUES (29, 6, 4, 1, 8, '[7259, 758, 5427]', '2024-08-21 00:21:26', '2024-08-21 00:21:26');
INSERT INTO `value_varchar` VALUES (30, 6, 4, 1, 6, '双向六车道道路 310104', '2024-08-21 00:21:26', '2024-08-21 00:21:26');
INSERT INTO `value_varchar` VALUES (31, 6, 4, 1, 9, '', '2024-08-21 00:21:26', '2024-08-21 00:21:26');
INSERT INTO `value_varchar` VALUES (32, 6, 1, 2, 8, '[725, 79, 729]', '2024-08-21 00:21:26', '2024-08-21 00:21:26');
INSERT INTO `value_varchar` VALUES (33, 6, 1, 2, 6, '双向双车道道路 310101', '2024-08-21 00:21:26', '2024-08-21 00:21:26');
INSERT INTO `value_varchar` VALUES (34, 6, 1, 2, 9, '', '2024-08-21 00:21:27', '2024-08-21 00:21:27');
INSERT INTO `value_varchar` VALUES (35, 6, 4, 2, 8, '[792, 729, 75]', '2024-08-21 00:21:27', '2024-08-21 00:21:27');
INSERT INTO `value_varchar` VALUES (36, 6, 4, 2, 6, '双向六车道道路 310104', '2024-08-21 00:21:27', '2024-08-21 00:21:27');
INSERT INTO `value_varchar` VALUES (37, 6, 4, 2, 9, '', '2024-08-21 00:21:27', '2024-08-21 00:21:27');
INSERT INTO `value_varchar` VALUES (38, 6, 1, 3, 8, '[, , ]', '2024-08-21 00:21:27', '2024-08-21 00:21:27');
INSERT INTO `value_varchar` VALUES (39, 6, 1, 3, 6, '双向双车道道路 310101', '2024-08-21 00:21:27', '2024-08-21 00:21:27');
INSERT INTO `value_varchar` VALUES (40, 6, 1, 3, 9, '', '2024-08-21 00:21:27', '2024-08-21 00:21:27');
INSERT INTO `value_varchar` VALUES (41, 6, 4, 3, 8, '[, , ]', '2024-08-21 00:21:27', '2024-08-21 00:21:27');
INSERT INTO `value_varchar` VALUES (42, 6, 4, 3, 6, '双向六车道道路 310104', '2024-08-21 00:21:27', '2024-08-21 00:21:27');
INSERT INTO `value_varchar` VALUES (43, 6, 4, 3, 9, '', '2024-08-21 00:21:27', '2024-08-21 00:21:27');
INSERT INTO `value_varchar` VALUES (44, 6, 11, 3, 8, '[725, 727, 7427]', '2024-08-21 00:21:27', '2024-08-21 00:21:27');
INSERT INTO `value_varchar` VALUES (45, 6, 11, 3, 6, '6%税率投资额 ', '2024-08-21 00:21:27', '2024-08-21 00:21:27');
INSERT INTO `value_varchar` VALUES (46, 6, 11, 3, 9, '', '2024-08-21 00:21:27', '2024-08-21 00:21:27');
INSERT INTO `value_varchar` VALUES (47, 6, 12, 3, 8, '[785, 72, 7852]', '2024-08-21 00:21:27', '2024-08-21 00:21:27');
INSERT INTO `value_varchar` VALUES (48, 6, 12, 3, 6, '9%税率投资额 ', '2024-08-21 00:21:27', '2024-08-21 00:21:27');
INSERT INTO `value_varchar` VALUES (49, 6, 12, 3, 9, '', '2024-08-21 00:21:27', '2024-08-21 00:21:27');
INSERT INTO `value_varchar` VALUES (50, 6, 13, 3, 8, '[, , ]', '2024-08-21 00:21:27', '2024-08-21 00:21:27');
INSERT INTO `value_varchar` VALUES (51, 6, 13, 3, 6, '13%税率投资额', '2024-08-21 00:21:27', '2024-08-21 00:21:27');
INSERT INTO `value_varchar` VALUES (52, 6, 13, 3, 9, '', '2024-08-21 00:21:27', '2024-08-21 00:21:27');
INSERT INTO `value_varchar` VALUES (53, 6, 14, 3, 8, '[, , ]', '2024-08-21 00:21:27', '2024-08-21 00:21:27');
INSERT INTO `value_varchar` VALUES (54, 6, 14, 3, 6, '不含税投资额合计', '2024-08-21 00:21:27', '2024-08-21 00:21:27');
INSERT INTO `value_varchar` VALUES (55, 6, 14, 3, 9, '', '2024-08-21 00:21:27', '2024-08-21 00:21:27');
INSERT INTO `value_varchar` VALUES (56, 6, 11, 4, 8, '[729, 4274, 72]', '2024-08-21 00:21:27', '2024-08-21 00:21:27');
INSERT INTO `value_varchar` VALUES (57, 6, 11, 4, 6, '6%税率投资额 ', '2024-08-21 00:21:27', '2024-08-21 00:21:27');
INSERT INTO `value_varchar` VALUES (58, 6, 11, 4, 9, '', '2024-08-21 00:21:27', '2024-08-21 00:21:27');
INSERT INTO `value_varchar` VALUES (59, 6, 12, 4, 8, '[786, 79, 785]', '2024-08-21 00:21:27', '2024-08-21 00:21:27');
INSERT INTO `value_varchar` VALUES (60, 6, 12, 4, 6, '9%税率投资额 ', '2024-08-21 00:21:27', '2024-08-21 00:21:27');
INSERT INTO `value_varchar` VALUES (61, 6, 12, 4, 9, '', '2024-08-21 00:21:27', '2024-08-21 00:21:27');
INSERT INTO `value_varchar` VALUES (62, 6, 13, 4, 8, '[, , ]', '2024-08-21 00:21:27', '2024-08-21 00:21:27');
INSERT INTO `value_varchar` VALUES (63, 6, 13, 4, 6, '13%税率投资额', '2024-08-21 00:21:27', '2024-08-21 00:21:27');
INSERT INTO `value_varchar` VALUES (64, 6, 13, 4, 9, '', '2024-08-21 00:21:27', '2024-08-21 00:21:27');
INSERT INTO `value_varchar` VALUES (65, 6, 15, 4, 8, '[, , ]', '2024-08-21 00:21:27', '2024-08-21 00:21:27');
INSERT INTO `value_varchar` VALUES (66, 6, 15, 4, 6, '含税投资额合计', '2024-08-21 00:21:27', '2024-08-21 00:21:27');
INSERT INTO `value_varchar` VALUES (67, 6, 15, 4, 9, '', '2024-08-21 00:21:27', '2024-08-21 00:21:27');

SET FOREIGN_KEY_CHECKS = 1;
