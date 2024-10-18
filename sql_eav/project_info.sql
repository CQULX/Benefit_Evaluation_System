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

 Date: 18/08/2024 21:15:54
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for project_info
-- ----------------------------
DROP TABLE IF EXISTS `project_info`;
CREATE TABLE `project_info`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `unit_person_id` int UNSIGNED NOT NULL COMMENT '单位及人员ID',
  `project_category_id` int UNSIGNED NOT NULL COMMENT '项目大类ID',
  `project_subcategory_id` int UNSIGNED NOT NULL COMMENT '项目小类ID',
  `project_type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'AI产品类',
  `project_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '同上会议题名称',
  `project_number` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '此系统中项目编号',
  `construction_start_date` date NOT NULL COMMENT '本次道路建设预计的起始时间',
  `construction_end_date` date NOT NULL COMMENT '本次道路建设预计的结束时间',
  `construction_duration_years` int NOT NULL COMMENT '建设完成日期 - 建设开始日期',
  `evaluation_start_date` date NOT NULL COMMENT '本次道路使用的起始时间，即有收入的第一个月份，需晚于“建设开始日期”',
  `evaluation_end_date` date NOT NULL COMMENT '本次A道路使用的结束时间，即纳收的最后一个月，需晚于“建设完成日期”',
  `project_evaluation_duration_years` int NOT NULL COMMENT '本次道路的整体评估期间',
  `single_batch_asset_evaluation_duration_years` int NOT NULL COMMENT '本次道路中单批投产资产的评估期间',
  `project_description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '简要介绍项目的基本信息，包括项目背景、项目周期、需求内容、需求数量和金额等进行简要概述',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of project_info
-- ----------------------------
INSERT INTO `project_info` VALUES (1, 1, 1, 1, 'AI产品类', 'AI项目A', 'AIPJ001', '2024-08-01', '2025-08-01', 3, '2025-09-01', '2030-08-01', 5, 3, 'AI项目A是一个基于人工智能技术的产品开发项目，涵盖背景、周期、需求内容、需求数量和金额等方面。', '2024-07-18 10:00:00', '2024-07-18 10:00:00');
INSERT INTO `project_info` VALUES (2, 2, 2, 2, 'AI产品类', 'AI项目B', 'AIPJ002', '2024-09-01', '2025-09-01', 2, '2025-10-01', '2030-09-01', 5, 3, 'AI项目B是一个基于人工智能技术的产品开发项目，涵盖背景、周期、需求内容、需求数量和金额等方面。', '2024-07-18 11:00:00', '2024-07-18 11:00:00');
INSERT INTO `project_info` VALUES (3, 3, 3, 3, 'AI产品类', 'AI项目C', 'AIPJ003', '2024-10-01', '2025-10-01', 1, '2025-11-01', '2030-10-01', 5, 3, 'AI项目C是一个基于人工智能技术的产品开发项目，涵盖背景、周期、需求内容、需求数量和金额等方面。', '2024-07-18 12:00:00', '2024-07-18 12:00:00');
INSERT INTO `project_info` VALUES (4, 4, 4, 4, 'AI产品类', 'AI项目D', 'AIPJ004', '2024-11-01', '2025-11-01', 1, '2025-12-01', '2030-11-01', 5, 3, 'AI项目D是一个基于人工智能技术的产品开发项目，涵盖背景、周期、需求内容、需求数量和金额等方面。', '2024-07-18 13:00:00', '2024-07-18 13:00:00');
INSERT INTO `project_info` VALUES (5, 5, 5, 5, 'AI产品类', 'AI项目E', 'AIPJ005', '2024-12-01', '2025-12-01', 1, '2026-01-01', '2030-12-01', 5, 3, 'AI项目E是一个基于人工智能技术的产品开发项目，涵盖背景、周期、需求内容、需求数量和金额等方面。', '2024-07-18 14:00:00', '2024-07-18 14:00:00');

SET FOREIGN_KEY_CHECKS = 1;
