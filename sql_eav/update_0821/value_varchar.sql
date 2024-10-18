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

 Date: 22/08/2024 10:31:51
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
) ENGINE = InnoDB AUTO_INCREMENT = 156 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

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
INSERT INTO `value_varchar` VALUES (104, 6, NULL, 13, 13, '北京路', '2024-08-21 21:23:57', '2024-08-21 22:02:55');
INSERT INTO `value_varchar` VALUES (105, 6, NULL, 13, 14, '7', '2024-08-21 21:23:57', '2024-08-21 22:02:55');
INSERT INTO `value_varchar` VALUES (112, 6, 28, 13, 6, '道路折旧支出合计', '2024-08-21 21:38:54', '2024-08-21 22:02:55');
INSERT INTO `value_varchar` VALUES (113, 6, 28, 13, 8, '[, , , , , , , ]', '2024-08-21 21:38:54', '2024-08-21 22:02:55');
INSERT INTO `value_varchar` VALUES (114, 6, 28, 13, 9, '', '2024-08-21 21:38:54', '2024-08-21 22:02:55');
INSERT INTO `value_varchar` VALUES (117, 6, 26, 13, 6, '当年转资月份', '2024-08-21 21:38:54', '2024-08-21 22:02:55');
INSERT INTO `value_varchar` VALUES (118, 6, 26, 13, 8, '[3, 4, 5, , , , , ]', '2024-08-21 21:38:54', '2024-08-21 22:02:55');
INSERT INTO `value_varchar` VALUES (119, 6, 26, 13, 9, '', '2024-08-21 21:38:54', '2024-08-21 22:02:55');
INSERT INTO `value_varchar` VALUES (122, 6, 27, 13, 6, '各年建设类设备使用规模', '2024-08-21 21:38:54', '2024-08-21 22:02:55');
INSERT INTO `value_varchar` VALUES (123, 6, 27, 13, 8, '[428, 725, 172, , , , , ]', '2024-08-21 21:38:54', '2024-08-21 22:02:55');
INSERT INTO `value_varchar` VALUES (124, 6, 27, 13, 9, '', '2024-08-21 21:38:54', '2024-08-21 22:02:55');
INSERT INTO `value_varchar` VALUES (127, 6, 16, 13, 6, '第一年投资在各年的折旧', '2024-08-21 21:38:54', '2024-08-21 22:02:55');
INSERT INTO `value_varchar` VALUES (128, 6, 16, 13, 8, '[, , , , , , , ]', '2024-08-21 21:38:54', '2024-08-21 22:02:55');
INSERT INTO `value_varchar` VALUES (129, 6, 16, 13, 9, '', '2024-08-21 21:38:54', '2024-08-21 22:02:55');
INSERT INTO `value_varchar` VALUES (132, 6, 17, 13, 6, '第二年投资在各年的折旧', '2024-08-21 21:38:54', '2024-08-21 22:02:55');
INSERT INTO `value_varchar` VALUES (133, 6, 17, 13, 8, '[, , , , , , , ]', '2024-08-21 21:38:54', '2024-08-21 22:02:55');
INSERT INTO `value_varchar` VALUES (134, 6, 17, 13, 9, '', '2024-08-21 21:38:54', '2024-08-21 22:02:55');
INSERT INTO `value_varchar` VALUES (137, 6, 18, 13, 6, '第三年投资在各年的折旧', '2024-08-21 21:38:54', '2024-08-21 22:02:55');
INSERT INTO `value_varchar` VALUES (138, 6, 18, 13, 8, '[, , , , , , , ]', '2024-08-21 21:38:54', '2024-08-21 22:02:55');
INSERT INTO `value_varchar` VALUES (139, 6, 18, 13, 9, '', '2024-08-21 21:38:54', '2024-08-21 22:02:55');

SET FOREIGN_KEY_CHECKS = 1;
