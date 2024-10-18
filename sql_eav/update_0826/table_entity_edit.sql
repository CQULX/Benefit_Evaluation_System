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

 Date: 26/08/2024 21:46:04
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for table_entity_edit
-- ----------------------------
DROP TABLE IF EXISTS `table_entity_edit`;
CREATE TABLE `table_entity_edit`  (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `table_id` int(0) NOT NULL COMMENT '表格ID',
  `entity_id` int(0) NOT NULL COMMENT '实体ID',
  `is_edit` int(0) NOT NULL COMMENT '是否可以编辑',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 142 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of table_entity_edit
-- ----------------------------
INSERT INTO `table_entity_edit` VALUES (1, 1, 1, 1);
INSERT INTO `table_entity_edit` VALUES (2, 1, 2, 1);
INSERT INTO `table_entity_edit` VALUES (3, 1, 3, 1);
INSERT INTO `table_entity_edit` VALUES (4, 1, 4, 1);
INSERT INTO `table_entity_edit` VALUES (5, 1, 5, 1);
INSERT INTO `table_entity_edit` VALUES (6, 1, 6, 1);
INSERT INTO `table_entity_edit` VALUES (7, 1, 7, 1);
INSERT INTO `table_entity_edit` VALUES (8, 1, 8, 1);
INSERT INTO `table_entity_edit` VALUES (9, 1, 9, 1);
INSERT INTO `table_entity_edit` VALUES (10, 1, 10, 1);
INSERT INTO `table_entity_edit` VALUES (11, 2, 1, 1);
INSERT INTO `table_entity_edit` VALUES (12, 2, 2, 1);
INSERT INTO `table_entity_edit` VALUES (13, 2, 3, 1);
INSERT INTO `table_entity_edit` VALUES (14, 2, 4, 1);
INSERT INTO `table_entity_edit` VALUES (15, 2, 5, 1);
INSERT INTO `table_entity_edit` VALUES (16, 2, 6, 1);
INSERT INTO `table_entity_edit` VALUES (17, 2, 7, 1);
INSERT INTO `table_entity_edit` VALUES (18, 2, 8, 1);
INSERT INTO `table_entity_edit` VALUES (19, 2, 9, 1);
INSERT INTO `table_entity_edit` VALUES (20, 2, 10, 1);
INSERT INTO `table_entity_edit` VALUES (21, 3, 1, 1);
INSERT INTO `table_entity_edit` VALUES (22, 3, 2, 1);
INSERT INTO `table_entity_edit` VALUES (23, 3, 3, 1);
INSERT INTO `table_entity_edit` VALUES (24, 3, 4, 1);
INSERT INTO `table_entity_edit` VALUES (25, 3, 5, 1);
INSERT INTO `table_entity_edit` VALUES (26, 3, 6, 1);
INSERT INTO `table_entity_edit` VALUES (27, 3, 7, 1);
INSERT INTO `table_entity_edit` VALUES (28, 3, 8, 1);
INSERT INTO `table_entity_edit` VALUES (29, 3, 9, 1);
INSERT INTO `table_entity_edit` VALUES (30, 3, 10, 1);
INSERT INTO `table_entity_edit` VALUES (31, 3, 11, 1);
INSERT INTO `table_entity_edit` VALUES (32, 3, 12, 1);
INSERT INTO `table_entity_edit` VALUES (33, 3, 13, 0);
INSERT INTO `table_entity_edit` VALUES (34, 4, 11, 0);
INSERT INTO `table_entity_edit` VALUES (35, 4, 12, 0);
INSERT INTO `table_entity_edit` VALUES (36, 4, 13, 0);
INSERT INTO `table_entity_edit` VALUES (37, 3, 14, 0);
INSERT INTO `table_entity_edit` VALUES (38, 4, 15, 0);
INSERT INTO `table_entity_edit` VALUES (49, 14, 1, 0);
INSERT INTO `table_entity_edit` VALUES (50, 14, 2, 0);
INSERT INTO `table_entity_edit` VALUES (51, 14, 3, 0);
INSERT INTO `table_entity_edit` VALUES (52, 14, 4, 0);
INSERT INTO `table_entity_edit` VALUES (53, 14, 5, 0);
INSERT INTO `table_entity_edit` VALUES (54, 14, 6, 0);
INSERT INTO `table_entity_edit` VALUES (55, 14, 7, 0);
INSERT INTO `table_entity_edit` VALUES (56, 14, 8, 1);
INSERT INTO `table_entity_edit` VALUES (57, 14, 9, 1);
INSERT INTO `table_entity_edit` VALUES (58, 14, 10, 1);
INSERT INTO `table_entity_edit` VALUES (60, 15, 1, 0);
INSERT INTO `table_entity_edit` VALUES (61, 15, 2, 0);
INSERT INTO `table_entity_edit` VALUES (62, 15, 3, 0);
INSERT INTO `table_entity_edit` VALUES (63, 15, 4, 0);
INSERT INTO `table_entity_edit` VALUES (64, 15, 5, 0);
INSERT INTO `table_entity_edit` VALUES (65, 15, 6, 0);
INSERT INTO `table_entity_edit` VALUES (66, 15, 7, 0);
INSERT INTO `table_entity_edit` VALUES (67, 15, 8, 1);
INSERT INTO `table_entity_edit` VALUES (68, 15, 9, 1);
INSERT INTO `table_entity_edit` VALUES (69, 15, 10, 1);
INSERT INTO `table_entity_edit` VALUES (71, 16, 1, 0);
INSERT INTO `table_entity_edit` VALUES (72, 16, 2, 0);
INSERT INTO `table_entity_edit` VALUES (73, 16, 3, 0);
INSERT INTO `table_entity_edit` VALUES (74, 16, 4, 0);
INSERT INTO `table_entity_edit` VALUES (75, 16, 5, 0);
INSERT INTO `table_entity_edit` VALUES (76, 16, 6, 0);
INSERT INTO `table_entity_edit` VALUES (77, 16, 7, 0);
INSERT INTO `table_entity_edit` VALUES (78, 16, 8, 1);
INSERT INTO `table_entity_edit` VALUES (79, 16, 9, 1);
INSERT INTO `table_entity_edit` VALUES (80, 16, 10, 1);
INSERT INTO `table_entity_edit` VALUES (82, 17, 1, 0);
INSERT INTO `table_entity_edit` VALUES (83, 17, 2, 0);
INSERT INTO `table_entity_edit` VALUES (84, 17, 3, 0);
INSERT INTO `table_entity_edit` VALUES (85, 17, 4, 0);
INSERT INTO `table_entity_edit` VALUES (86, 17, 5, 0);
INSERT INTO `table_entity_edit` VALUES (87, 17, 6, 0);
INSERT INTO `table_entity_edit` VALUES (88, 17, 7, 0);
INSERT INTO `table_entity_edit` VALUES (89, 17, 8, 1);
INSERT INTO `table_entity_edit` VALUES (90, 17, 9, 1);
INSERT INTO `table_entity_edit` VALUES (91, 17, 10, 1);
INSERT INTO `table_entity_edit` VALUES (93, 18, 1, 1);
INSERT INTO `table_entity_edit` VALUES (94, 18, 2, 1);
INSERT INTO `table_entity_edit` VALUES (95, 18, 3, 1);
INSERT INTO `table_entity_edit` VALUES (96, 18, 4, 1);
INSERT INTO `table_entity_edit` VALUES (97, 18, 5, 1);
INSERT INTO `table_entity_edit` VALUES (98, 18, 6, 1);
INSERT INTO `table_entity_edit` VALUES (99, 18, 7, 1);
INSERT INTO `table_entity_edit` VALUES (100, 18, 8, 1);
INSERT INTO `table_entity_edit` VALUES (101, 18, 9, 1);
INSERT INTO `table_entity_edit` VALUES (102, 18, 10, 1);
INSERT INTO `table_entity_edit` VALUES (104, 19, 1, 0);
INSERT INTO `table_entity_edit` VALUES (105, 19, 2, 0);
INSERT INTO `table_entity_edit` VALUES (106, 19, 3, 0);
INSERT INTO `table_entity_edit` VALUES (107, 19, 4, 0);
INSERT INTO `table_entity_edit` VALUES (108, 19, 5, 0);
INSERT INTO `table_entity_edit` VALUES (109, 19, 6, 0);
INSERT INTO `table_entity_edit` VALUES (110, 19, 7, 0);
INSERT INTO `table_entity_edit` VALUES (111, 19, 8, 0);
INSERT INTO `table_entity_edit` VALUES (112, 19, 9, 0);
INSERT INTO `table_entity_edit` VALUES (113, 19, 10, 0);
INSERT INTO `table_entity_edit` VALUES (118, 13, 28, 0);
INSERT INTO `table_entity_edit` VALUES (119, 13, 26, 1);
INSERT INTO `table_entity_edit` VALUES (120, 13, 27, 1);
INSERT INTO `table_entity_edit` VALUES (121, 13, 16, 0);
INSERT INTO `table_entity_edit` VALUES (122, 13, 17, 0);
INSERT INTO `table_entity_edit` VALUES (123, 13, 18, 0);
INSERT INTO `table_entity_edit` VALUES (124, 13, 19, 0);
INSERT INTO `table_entity_edit` VALUES (125, 13, 20, 0);
INSERT INTO `table_entity_edit` VALUES (126, 13, 21, 0);
INSERT INTO `table_entity_edit` VALUES (127, 13, 22, 0);
INSERT INTO `table_entity_edit` VALUES (128, 13, 23, 0);
INSERT INTO `table_entity_edit` VALUES (129, 13, 24, 0);
INSERT INTO `table_entity_edit` VALUES (130, 13, 25, 0);
INSERT INTO `table_entity_edit` VALUES (133, 20, 35, 0);
INSERT INTO `table_entity_edit` VALUES (134, 14, 29, 0);
INSERT INTO `table_entity_edit` VALUES (135, 15, 30, 0);
INSERT INTO `table_entity_edit` VALUES (136, 16, 31, 0);
INSERT INTO `table_entity_edit` VALUES (137, 17, 32, 0);
INSERT INTO `table_entity_edit` VALUES (138, 18, 33, 0);
INSERT INTO `table_entity_edit` VALUES (139, 19, 34, 0);
INSERT INTO `table_entity_edit` VALUES (140, 10, 36, 0);
INSERT INTO `table_entity_edit` VALUES (141, 11, 37, 0);
INSERT INTO `table_entity_edit` VALUES (142, 6, 1, 1);
INSERT INTO `table_entity_edit` VALUES (143, 6, 2, 1);
INSERT INTO `table_entity_edit` VALUES (144, 6, 3, 1);
INSERT INTO `table_entity_edit` VALUES (145, 6, 4, 1);
INSERT INTO `table_entity_edit` VALUES (146, 6, 5, 1);
INSERT INTO `table_entity_edit` VALUES (147, 6, 6, 1);
INSERT INTO `table_entity_edit` VALUES (148, 6, 7, 1);
INSERT INTO `table_entity_edit` VALUES (149, 6, 8, 1);
INSERT INTO `table_entity_edit` VALUES (150, 6, 9, 1);
INSERT INTO `table_entity_edit` VALUES (151, 6, 10, 1);
INSERT INTO `table_entity_edit` VALUES (152, 7, 1, 1);
INSERT INTO `table_entity_edit` VALUES (153, 7, 2, 1);
INSERT INTO `table_entity_edit` VALUES (154, 7, 3, 1);
INSERT INTO `table_entity_edit` VALUES (155, 7, 4, 1);
INSERT INTO `table_entity_edit` VALUES (156, 7, 5, 1);
INSERT INTO `table_entity_edit` VALUES (157, 7, 6, 1);
INSERT INTO `table_entity_edit` VALUES (158, 7, 7, 1);
INSERT INTO `table_entity_edit` VALUES (159, 7, 8, 1);
INSERT INTO `table_entity_edit` VALUES (160, 7, 9, 1);
INSERT INTO `table_entity_edit` VALUES (161, 7, 10, 1);
INSERT INTO `table_entity_edit` VALUES (162, 8, 1, 0);
INSERT INTO `table_entity_edit` VALUES (163, 8, 2, 0);
INSERT INTO `table_entity_edit` VALUES (164, 8, 3, 0);
INSERT INTO `table_entity_edit` VALUES (165, 8, 4, 0);
INSERT INTO `table_entity_edit` VALUES (166, 8, 5, 0);
INSERT INTO `table_entity_edit` VALUES (167, 8, 6, 0);
INSERT INTO `table_entity_edit` VALUES (168, 8, 7, 0);
INSERT INTO `table_entity_edit` VALUES (169, 8, 8, 0);
INSERT INTO `table_entity_edit` VALUES (170, 8, 9, 0);
INSERT INTO `table_entity_edit` VALUES (171, 8, 10, 0);
INSERT INTO `table_entity_edit` VALUES (172, 9, 1, 1);
INSERT INTO `table_entity_edit` VALUES (173, 9, 2, 1);
INSERT INTO `table_entity_edit` VALUES (174, 9, 3, 1);
INSERT INTO `table_entity_edit` VALUES (175, 9, 4, 1);
INSERT INTO `table_entity_edit` VALUES (176, 9, 5, 1);
INSERT INTO `table_entity_edit` VALUES (177, 9, 6, 1);
INSERT INTO `table_entity_edit` VALUES (178, 9, 7, 1);
INSERT INTO `table_entity_edit` VALUES (179, 9, 8, 1);
INSERT INTO `table_entity_edit` VALUES (180, 9, 9, 1);
INSERT INTO `table_entity_edit` VALUES (181, 9, 10, 1);
INSERT INTO `table_entity_edit` VALUES (182, 10, 1, 0);
INSERT INTO `table_entity_edit` VALUES (183, 10, 2, 0);
INSERT INTO `table_entity_edit` VALUES (184, 10, 3, 0);
INSERT INTO `table_entity_edit` VALUES (185, 10, 4, 0);
INSERT INTO `table_entity_edit` VALUES (186, 10, 5, 0);
INSERT INTO `table_entity_edit` VALUES (187, 10, 6, 0);
INSERT INTO `table_entity_edit` VALUES (188, 10, 7, 0);
INSERT INTO `table_entity_edit` VALUES (189, 10, 8, 0);
INSERT INTO `table_entity_edit` VALUES (190, 10, 9, 0);
INSERT INTO `table_entity_edit` VALUES (191, 10, 10, 0);
INSERT INTO `table_entity_edit` VALUES (192, 11, 1, 0);
INSERT INTO `table_entity_edit` VALUES (193, 11, 2, 0);
INSERT INTO `table_entity_edit` VALUES (194, 11, 3, 0);
INSERT INTO `table_entity_edit` VALUES (195, 11, 4, 0);
INSERT INTO `table_entity_edit` VALUES (196, 11, 5, 0);
INSERT INTO `table_entity_edit` VALUES (197, 11, 6, 0);
INSERT INTO `table_entity_edit` VALUES (198, 11, 7, 0);
INSERT INTO `table_entity_edit` VALUES (199, 11, 8, 0);
INSERT INTO `table_entity_edit` VALUES (200, 11, 9, 0);
INSERT INTO `table_entity_edit` VALUES (201, 11, 10, 0);

SET FOREIGN_KEY_CHECKS = 1;
