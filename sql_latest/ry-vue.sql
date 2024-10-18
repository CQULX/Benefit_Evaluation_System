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

 Date: 28/08/2024 16:23:52
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
) ENGINE = InnoDB AUTO_INCREMENT = 47 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

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
INSERT INTO `attribute` VALUES (15, '项目责任单位', 'varchar', '2024-08-24 16:22:11', '2024-08-24 16:22:15');
INSERT INTO `attribute` VALUES (16, '项目责任人及联系方式', 'varchar', '2024-08-24 16:22:32', '2024-08-24 16:22:34');
INSERT INTO `attribute` VALUES (17, '项目建设期间', 'varchar', '2024-08-24 16:22:57', '2024-08-24 16:23:00');
INSERT INTO `attribute` VALUES (18, '项目建设期长（年）', 'varchar', '2024-08-24 16:23:16', '2024-08-24 16:23:19');
INSERT INTO `attribute` VALUES (19, '评估期间', 'varchar', '2024-08-24 16:23:59', '2024-08-24 16:24:01');
INSERT INTO `attribute` VALUES (20, '评估期长（年）', 'varchar', '2024-08-24 16:24:36', '2024-08-24 16:24:38');
INSERT INTO `attribute` VALUES (21, '总投入', 'varchar', '2024-08-24 16:24:54', '2024-08-24 16:24:56');
INSERT INTO `attribute` VALUES (22, '其中：本次立项支出', 'varchar', '2024-08-24 16:25:14', '2024-08-24 16:25:16');
INSERT INTO `attribute` VALUES (23, '其他支出', 'varchar', '2024-08-24 16:25:34', '2024-08-24 16:25:36');
INSERT INTO `attribute` VALUES (24, '其他支出说明', 'varchar', '2024-08-24 16:25:53', '2024-08-24 16:25:54');
INSERT INTO `attribute` VALUES (25, '总产出', 'varchar', '2024-08-24 16:26:10', '2024-08-24 16:26:13');
INSERT INTO `attribute` VALUES (26, '其中：直接收入', 'varchar', '2024-08-24 16:26:27', '2024-08-24 16:26:29');
INSERT INTO `attribute` VALUES (27, '间接收入', 'varchar', '2024-08-24 16:26:50', '2024-08-24 16:26:51');
INSERT INTO `attribute` VALUES (28, '间接收入说明', 'varchar', '2024-08-24 16:27:08', '2024-08-24 16:27:11');
INSERT INTO `attribute` VALUES (29, '总利润', 'varchar', '2024-08-24 16:27:26', '2024-08-24 16:27:28');
INSERT INTO `attribute` VALUES (30, '净利润', 'varchar', '2024-08-24 16:27:46', '2024-08-24 16:27:48');
INSERT INTO `attribute` VALUES (31, '年度平均利润率', 'varchar', '2024-08-24 16:28:14', '2024-08-24 16:28:16');
INSERT INTO `attribute` VALUES (32, '投资回报率', 'varchar', '2024-08-24 16:28:30', '2024-08-24 16:28:31');
INSERT INTO `attribute` VALUES (33, '投资回收期（年）', 'varchar', '2024-08-24 16:28:47', '2024-08-24 16:28:49');
INSERT INTO `attribute` VALUES (34, '累计净现值', 'varchar', '2024-08-24 16:29:05', '2024-08-24 16:29:07');
INSERT INTO `attribute` VALUES (35, '折旧类成本（折旧率1）', 'float', '2024-08-26 12:41:46', '2024-08-26 12:41:51');
INSERT INTO `attribute` VALUES (36, '折旧类成本（折旧率2）', 'float', '2024-08-26 12:42:15', '2024-08-26 12:42:17');
INSERT INTO `attribute` VALUES (37, '折旧类成本（折旧率3）', 'float', '2024-08-26 12:42:33', '2024-08-26 12:42:36');
INSERT INTO `attribute` VALUES (38, '建设成本（人工费）', 'float', '2024-08-26 12:43:01', '2024-08-26 12:43:03');
INSERT INTO `attribute` VALUES (39, '建设成本（建材费）', 'float', '2024-08-26 12:43:24', '2024-08-26 12:43:27');
INSERT INTO `attribute` VALUES (40, '维护费用（人工费）', 'float', '2024-08-26 12:44:05', '2024-08-26 12:44:08');
INSERT INTO `attribute` VALUES (41, '维护费用（其他）', 'float', '2024-08-26 12:44:39', '2024-08-26 12:44:41');
INSERT INTO `attribute` VALUES (42, '图纸建设费', 'float', '2024-08-26 12:44:57', '2024-08-26 12:44:59');
INSERT INTO `attribute` VALUES (43, '库存物资类成本', 'float', '2024-08-26 12:45:18', '2024-08-26 12:45:20');
INSERT INTO `attribute` VALUES (44, '综合费用占收比（大众市场）', 'float', '2024-08-26 12:46:28', '2024-08-26 12:46:31');
INSERT INTO `attribute` VALUES (45, '综合费用占收比（国外市场）', 'float', '2024-08-26 12:46:45', '2024-08-26 12:46:47');
INSERT INTO `attribute` VALUES (46, '首年最长投入月数', 'int', '2024-08-26 16:10:02', '2024-08-26 16:10:04');
INSERT INTO `attribute` VALUES (47, '项目责任单位', 'varchar', '2024-08-24 16:22:11', '2024-08-24 16:22:15');
INSERT INTO `attribute` VALUES (48, '项目责任人及联系方式', 'varchar', '2024-08-24 16:22:32', '2024-08-24 16:22:34');
INSERT INTO `attribute` VALUES (49, '项目建设期间', 'varchar', '2024-08-24 16:22:57', '2024-08-24 16:23:00');
INSERT INTO `attribute` VALUES (50, '项目建设期长（年）', 'varchar', '2024-08-24 16:23:16', '2024-08-24 16:23:19');
INSERT INTO `attribute` VALUES (51, '评估期间', 'varchar', '2024-08-24 16:23:59', '2024-08-24 16:24:01');
INSERT INTO `attribute` VALUES (52, '评估期长（年）', 'varchar', '2024-08-24 16:24:36', '2024-08-24 16:24:38');
INSERT INTO `attribute` VALUES (53, '总投入', 'varchar', '2024-08-24 16:24:54', '2024-08-24 16:24:56');
INSERT INTO `attribute` VALUES (54, '其中：本次立项支出', 'varchar', '2024-08-24 16:25:14', '2024-08-24 16:25:16');
INSERT INTO `attribute` VALUES (55, '其他支出', 'varchar', '2024-08-24 16:25:34', '2024-08-24 16:25:36');
INSERT INTO `attribute` VALUES (56, '其他支出说明', 'varchar', '2024-08-24 16:25:53', '2024-08-24 16:25:54');
INSERT INTO `attribute` VALUES (57, '总产出', 'varchar', '2024-08-24 16:26:10', '2024-08-24 16:26:13');
INSERT INTO `attribute` VALUES (58, '其中：直接收入', 'varchar', '2024-08-24 16:26:27', '2024-08-24 16:26:29');
INSERT INTO `attribute` VALUES (59, '间接收入', 'varchar', '2024-08-24 16:26:50', '2024-08-24 16:26:51');
INSERT INTO `attribute` VALUES (60, '间接收入说明', 'varchar', '2024-08-24 16:27:08', '2024-08-24 16:27:11');
INSERT INTO `attribute` VALUES (61, '总利润', 'varchar', '2024-08-24 16:27:26', '2024-08-24 16:27:28');
INSERT INTO `attribute` VALUES (62, '净利润', 'varchar', '2024-08-24 16:27:46', '2024-08-24 16:27:48');
INSERT INTO `attribute` VALUES (63, '年度平均利润率', 'varchar', '2024-08-24 16:28:14', '2024-08-24 16:28:16');
INSERT INTO `attribute` VALUES (64, '投资回报率', 'varchar', '2024-08-24 16:28:30', '2024-08-24 16:28:31');
INSERT INTO `attribute` VALUES (65, '投资回收期（年）', 'varchar', '2024-08-24 16:28:47', '2024-08-24 16:28:49');
INSERT INTO `attribute` VALUES (66, '累计净现值', 'varchar', '2024-08-24 16:29:05', '2024-08-24 16:29:07');

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
) ENGINE = InnoDB AUTO_INCREMENT = 39 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

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
INSERT INTO `entity` VALUES (28, NULL, '道路折旧支出合计', NULL, '2024-08-21 21:35:32', '2024-08-21 21:35:35', NULL, 0);
INSERT INTO `entity` VALUES (29, NULL, '路面后期维护费用合计', NULL, '2024-08-21 22:14:24', '2024-08-21 22:14:26', NULL, 0);
INSERT INTO `entity` VALUES (30, NULL, '路面保养费用合计', NULL, '2024-08-21 22:16:18', '2024-08-21 22:16:23', NULL, 0);
INSERT INTO `entity` VALUES (31, NULL, '人工服务费用合计', NULL, '2024-08-21 22:16:19', '2024-08-21 22:16:24', NULL, 0);
INSERT INTO `entity` VALUES (32, NULL, '其他费用合计', NULL, '2024-08-21 22:16:20', '2024-08-21 22:16:25', NULL, 0);
INSERT INTO `entity` VALUES (33, NULL, '噪音污染补偿合计', NULL, '2024-08-21 22:16:22', '2024-08-21 22:16:26', NULL, 0);
INSERT INTO `entity` VALUES (34, NULL, '宣传推广费用合计', NULL, '2024-08-21 22:16:28', '2024-08-21 22:16:27', NULL, 0);
INSERT INTO `entity` VALUES (35, NULL, '所有产品支出总计', NULL, '2024-08-24 21:11:26', '2024-08-24 21:11:27', NULL, 0);
INSERT INTO `entity` VALUES (36, NULL, '不含税收入合计OT015', NULL, '2024-08-25 10:46:59', '2024-08-25 10:47:02', NULL, 0);
INSERT INTO `entity` VALUES (37, NULL, '含税收入合计OT016', NULL, '2024-08-25 10:47:55', '2024-08-25 10:47:58', NULL, 0);
INSERT INTO `entity` VALUES (39, NULL, '项目责任单位', NULL, '2024-08-26 16:15:26', '2024-08-26 16:15:28', NULL, 0);
INSERT INTO `entity` VALUES (40, NULL, '项目责任人及联系方式', NULL, '2024-08-26 16:15:44', '2024-08-26 16:15:46', NULL, 0);
INSERT INTO `entity` VALUES (41, NULL, '项目建设期间', NULL, '2024-08-26 16:15:57', '2024-08-26 16:15:58', NULL, 0);
INSERT INTO `entity` VALUES (42, NULL, '项目建设期长（年）', NULL, '2024-08-26 16:16:07', '2024-08-26 16:16:10', NULL, 0);
INSERT INTO `entity` VALUES (43, NULL, '评估期间', NULL, '2024-08-26 16:16:22', '2024-08-26 16:16:23', NULL, 0);
INSERT INTO `entity` VALUES (44, NULL, '评估期长（年）', NULL, '2024-08-26 16:16:33', '2024-08-26 16:16:35', NULL, 0);
INSERT INTO `entity` VALUES (45, NULL, '总投入', NULL, '2024-08-26 16:16:44', '2024-08-26 16:16:45', NULL, 0);
INSERT INTO `entity` VALUES (46, NULL, '其中：本次立项支出', NULL, '2024-08-26 16:16:56', '2024-08-26 16:16:57', NULL, 0);
INSERT INTO `entity` VALUES (47, NULL, '其他支出', NULL, '2024-08-26 16:17:08', '2024-08-26 16:17:09', NULL, 0);
INSERT INTO `entity` VALUES (48, NULL, '其他支出说明', NULL, '2024-08-26 16:17:17', '2024-08-26 16:17:18', NULL, 0);
INSERT INTO `entity` VALUES (49, NULL, '总产出', NULL, '2024-08-26 16:17:28', '2024-08-26 16:17:29', NULL, 0);
INSERT INTO `entity` VALUES (50, NULL, '其中：直接收入', NULL, '2024-08-26 16:17:38', '2024-08-26 16:17:39', NULL, 0);
INSERT INTO `entity` VALUES (51, NULL, '间接收入', NULL, '2024-08-26 16:17:48', '2024-08-26 16:17:50', NULL, 0);
INSERT INTO `entity` VALUES (52, NULL, '间接收入说明', NULL, '2024-08-26 16:17:58', '2024-08-26 16:17:59', NULL, 0);
INSERT INTO `entity` VALUES (53, NULL, '总利润', NULL, '2024-08-26 16:18:13', '2024-08-26 16:18:14', NULL, 0);
INSERT INTO `entity` VALUES (54, NULL, '净利润', NULL, '2024-08-26 16:18:24', '2024-08-26 16:18:26', NULL, 0);
INSERT INTO `entity` VALUES (55, NULL, '年度平均利润率', NULL, '2024-08-26 16:18:35', '2024-08-26 16:18:37', NULL, 0);
INSERT INTO `entity` VALUES (56, NULL, '投资回报率', NULL, '2024-08-26 16:18:45', '2024-08-26 16:18:46', NULL, 0);
INSERT INTO `entity` VALUES (57, NULL, '投资回收期（年）', NULL, '2024-08-26 16:18:56', '2024-08-26 16:18:58', NULL, 0);
INSERT INTO `entity` VALUES (58, NULL, '累计净现值', NULL, '2024-08-26 16:23:04', '2024-08-26 16:23:06', NULL, 0);

-- ----------------------------
-- Table structure for equation
-- ----------------------------
DROP TABLE IF EXISTS `equation`;
CREATE TABLE `equation`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `table_id` int(0) DEFAULT NULL,
  `attribute_id` int(0) DEFAULT NULL,
  `is_product` int(0) DEFAULT NULL,
  `entity_id` int(0) DEFAULT NULL,
  `equation` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of equation
-- ----------------------------
INSERT INTO `equation` VALUES (1, 3, 8, 1, NULL, '[1,8,i]*[2,8,i]');
INSERT INTO `equation` VALUES (2, 3, 8, 0, 14, 'SUM[3,8,i]');
INSERT INTO `equation` VALUES (3, 3, 8, 0, 13, '[3,8,14,i]-[3,8,11,i]-[3,8,12,i]');
INSERT INTO `equation` VALUES (4, 3, 9, 2, NULL, 'SUM[3,8]');
INSERT INTO `equation` VALUES (5, 4, 8, 0, 11, '[3,8,11,i]*1.06');
INSERT INTO `equation` VALUES (6, 4, 8, 0, 12, '[3,8,12,i]*1.09');
INSERT INTO `equation` VALUES (7, 4, 8, 0, 13, '[3,8,13,i]*1.13');
INSERT INTO `equation` VALUES (8, 4, 8, 0, 15, '[4,8,11,i]+[4,8,12,i]+[4,8,13,i]');
INSERT INTO `equation` VALUES (9, 1, 9, 2, NULL, 'SUM[1,8]');
INSERT INTO `equation` VALUES (10, 4, 9, 2, NULL, 'SUM[4,8]');
INSERT INTO `equation` VALUES (11, 8, 8, 1, NULL, '0+[6,8,i]-[7,8,i]:[8,8,i-1]+[6,8,i]-[7,8,i]');
INSERT INTO `equation` VALUES (12, 10, 8, 1, NULL, '[8,8,i]*[9,8,i]*[10,46]/3:[8,8,i-1]*[9,8,i]*12+([6,8,i]-[7,8,i])*[9,8,i]*12/3');
INSERT INTO `equation` VALUES (13, 10, 8, 0, 36, 'SUM[10,8,i]');
INSERT INTO `equation` VALUES (14, 11, 8, 1, NULL, '[10,8,i]*1.06');
INSERT INTO `equation` VALUES (15, 11, 8, 0, 7, '[10,8,7,i]*1.09');
INSERT INTO `equation` VALUES (16, 11, 8, 0, 37, 'SUM[11,8,i]');

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `table_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `tpl_web_type` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '' COMMENT '前端模板类型（element-ui模版 element-plus模版）',
  `package_name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '代码生成业务表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES (1, 'table_attribute', '', NULL, NULL, 'TableAttribute', 'crud', '', 'com.ruoyi.system', 'system', 'attribute', NULL, 'ruoyi', '0', '/', NULL, 'admin', '2024-08-25 13:00:19', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (2, 'equation', '', NULL, NULL, 'Equation', 'crud', '', 'com.ruoyi.system', 'system', 'equation', NULL, 'ruoyi', '0', '/', NULL, 'admin', '2024-08-25 20:55:50', '', NULL, NULL);

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column`  (
  `column_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` bigint(0) DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '' COMMENT '字典类型',
  `sort` int(0) DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '代码生成业务表字段' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES (1, 1, 'id', NULL, 'int unsigned', 'String', 'id', '1', '1', '0', '1', NULL, NULL, NULL, 'EQ', NULL, '', 1, 'admin', '2024-08-25 13:00:19', '', NULL);
INSERT INTO `gen_table_column` VALUES (2, 1, 'attribute_id', NULL, 'int unsigned', 'String', 'attributeId', '0', '0', '1', '1', '1', '1', '1', 'EQ', NULL, '', 2, 'admin', '2024-08-25 13:00:19', '', NULL);
INSERT INTO `gen_table_column` VALUES (3, 1, 'table_id', NULL, 'int unsigned', 'String', 'tableId', '0', '0', '1', '1', '1', '1', '1', 'EQ', NULL, '', 3, 'admin', '2024-08-25 13:00:19', '', NULL);
INSERT INTO `gen_table_column` VALUES (4, 1, 'entity_related', '标识属性是否和实体相关：0不相关、1相关,如果不相关则不作为列名', 'int', 'Long', 'entityRelated', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2024-08-25 13:00:19', '', NULL);
INSERT INTO `gen_table_column` VALUES (5, 1, 'equation', NULL, 'varchar(255)', 'String', 'equation', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2024-08-25 13:00:19', '', NULL);
INSERT INTO `gen_table_column` VALUES (6, 2, 'id', NULL, 'int', 'Long', 'id', '1', '1', '0', '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2024-08-25 20:55:50', '', NULL);
INSERT INTO `gen_table_column` VALUES (7, 2, 'table_id', NULL, 'int', 'Long', 'tableId', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2024-08-25 20:55:50', '', NULL);
INSERT INTO `gen_table_column` VALUES (8, 2, 'attribute_id', NULL, 'int', 'Long', 'attributeId', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2024-08-25 20:55:50', '', NULL);
INSERT INTO `gen_table_column` VALUES (9, 2, 'is_product', NULL, 'int', 'Long', 'isProduct', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2024-08-25 20:55:50', '', NULL);
INSERT INTO `gen_table_column` VALUES (10, 2, 'entity_id', NULL, 'int', 'Long', 'entityId', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2024-08-25 20:55:50', '', NULL);
INSERT INTO `gen_table_column` VALUES (11, 2, 'equation', NULL, 'varchar(255)', 'String', 'equation', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2024-08-25 20:55:50', '', NULL);

-- ----------------------------
-- Table structure for module
-- ----------------------------
DROP TABLE IF EXISTS `module`;
CREATE TABLE `module`  (
  `id` int unsigned NOT NULL COMMENT '模块ID',
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

-- ----------------------------
-- Table structure for project_category
-- ----------------------------
DROP TABLE IF EXISTS `project_category`;
CREATE TABLE `project_category`  (
  `id` int unsigned NOT NULL COMMENT '主键ID：项目大类ID',
  `template_id` int(0) NOT NULL COMMENT '对应的模板ID',
  `project_category_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '项目大类名称',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of project_category
-- ----------------------------
INSERT INTO `project_category` VALUES (1, 1, '人工智能', '2024-07-18 10:00:00', '2024-07-18 10:00:00');
INSERT INTO `project_category` VALUES (2, 1, '大数据', '2024-07-18 11:00:00', '2024-07-18 11:00:00');
INSERT INTO `project_category` VALUES (3, 2, '云计算', '2024-07-18 12:00:00', '2024-07-18 12:00:00');
INSERT INTO `project_category` VALUES (4, 3, '物联网', '2024-07-18 13:00:00', '2024-07-18 13:00:00');
INSERT INTO `project_category` VALUES (5, 3, '区块链', '2024-07-18 14:00:00', '2024-07-18 14:00:00');

-- ----------------------------
-- Table structure for project_entity
-- ----------------------------
DROP TABLE IF EXISTS `project_entity`;
CREATE TABLE `project_entity`  (
  `id` int unsigned NOT NULL COMMENT '项目_实体表ID',
  `project_info_id` int(0) NOT NULL COMMENT '对应的项目ID',
  `entity_id` int(0) NOT NULL COMMENT '对应的实体ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of project_entity
-- ----------------------------
INSERT INTO `project_entity` VALUES (19, 6, 1);
INSERT INTO `project_entity` VALUES (25, 14, 1);
INSERT INTO `project_entity` VALUES (28, 28, 1);
INSERT INTO `project_entity` VALUES (29, 28, 6);
INSERT INTO `project_entity` VALUES (31, 6, 3);
INSERT INTO `project_entity` VALUES (32, 29, 1);
INSERT INTO `project_entity` VALUES (33, 29, 3);
INSERT INTO `project_entity` VALUES (35, 30, 1);
INSERT INTO `project_entity` VALUES (37, 31, 1);
INSERT INTO `project_entity` VALUES (39, 26, 1);
INSERT INTO `project_entity` VALUES (41, 26, 3);
INSERT INTO `project_entity` VALUES (42, 32, 1);
INSERT INTO `project_entity` VALUES (44, 33, 1);

-- ----------------------------
-- Table structure for project_info
-- ----------------------------
DROP TABLE IF EXISTS `project_info`;
CREATE TABLE `project_info`  (
  `id` int unsigned NOT NULL COMMENT '主键ID',
  `unit_person_id` int unsigned NOT NULL COMMENT '单位及人员ID',
  `project_type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'AI产品类',
  `project_category_id` int unsigned NOT NULL COMMENT '项目大类',
  `project_subcategory_id` int unsigned NOT NULL COMMENT '项目小类',
  `project_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '同上会议题名称',
  `project_number` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '此系统中项目编号',
  `construction_start_date` date NOT NULL COMMENT '本次道路建设预计的起始时间',
  `construction_end_date` date NOT NULL COMMENT '本次道路建设预计的结束时间',
  `construction_duration_years` int(0) NOT NULL COMMENT '建设完成日期 - 建设开始日期',
  `evaluation_start_date` date NOT NULL COMMENT '本次道路使用的起始时间，即有收入的第一个月份，需晚于“建设开始日期”',
  `evaluation_end_date` date NOT NULL COMMENT '本次A道路使用的结束时间，即纳收的最后一个月，需晚于“建设完成日期”',
  `project_evaluation_duration_years` int(0) NOT NULL COMMENT '本次道路的整体评估期间',
  `single_batch_asset_evaluation_duration_years` int(0) NOT NULL COMMENT '本次道路中单批投产资产的评估期间',
  `project_description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '简要介绍项目的基本信息，包括项目背景、项目周期、需求内容、需求数量和金额等进行简要概述',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of project_info
-- ----------------------------
INSERT INTO `project_info` VALUES (1, 1, 'AI产品类', 1, 1, 'AI项目A', 'AIPJ001', '2024-08-01', '2025-08-01', 1, '2025-09-01', '2030-08-01', 5, 3, 'AI项目A是一个基于人工智能技术的产品开发项目，涵盖背景、周期、需求内容、需求数量和金额等方面。', '2024-07-18 10:00:00', '2024-07-18 10:00:00');
INSERT INTO `project_info` VALUES (2, 2, 'AI产品类', 2, 2, 'AI项目B', 'AIPJ002', '2024-09-01', '2025-09-01', 1, '2025-10-01', '2030-09-01', 5, 3, 'AI项目B是一个基于人工智能技术的产品开发项目，涵盖背景、周期、需求内容、需求数量和金额等方面。', '2024-07-18 11:00:00', '2024-07-18 11:00:00');
INSERT INTO `project_info` VALUES (3, 3, 'AI产品类', 3, 3, 'AI项目C', 'AIPJ003', '2024-10-01', '2025-10-01', 1, '2025-11-01', '2030-10-01', 5, 3, 'AI项目C是一个基于人工智能技术的产品开发项目，涵盖背景、周期、需求内容、需求数量和金额等方面。', '2024-07-18 12:00:00', '2024-07-18 12:00:00');
INSERT INTO `project_info` VALUES (4, 4, 'AI产品类', 4, 4, 'AI项目D', 'AIPJ004', '2024-11-01', '2025-11-01', 1, '2025-12-01', '2030-11-01', 5, 3, 'AI项目D是一个基于人工智能技术的产品开发项目，涵盖背景、周期、需求内容、需求数量和金额等方面。', '2024-07-18 13:00:00', '2024-07-18 13:00:00');
INSERT INTO `project_info` VALUES (5, 5, 'AI产品类', 5, 5, 'AI项目E', 'AIPJ005', '2024-12-01', '2025-12-01', 1, '2026-01-01', '2030-12-01', 5, 3, 'AI项目E是一个基于人工智能技术的产品开发项目，涵盖背景、周期、需求内容、需求数量和金额等方面。', '2024-07-18 14:00:00', '2024-07-18 14:00:00');
INSERT INTO `project_info` VALUES (6, 1, 'AI产品类', 1, 1, '人脸识别', 'AIPJ006', '2024-07-30', '2027-07-30', 3, '2024-07-30', '2031-07-30', 7, 7, '新项目AIPJ006', '2024-07-30 21:24:34', '2024-07-30 21:24:34');
INSERT INTO `project_info` VALUES (13, 1, 'AI产品类', 1, 1, '医学图像分割', 'SC10001', '2024-08-26', '2028-08-15', 4, '2024-08-28', '2032-08-05', 8, 7, '新项目SC10001', '2024-08-26 20:50:32', '2024-08-26 20:50:32');
INSERT INTO `project_info` VALUES (14, 1, 'AI产品类', 1, 1, '医学影像处理', 'SC12431', '2024-08-06', '2027-08-11', 3, '2024-08-26', '2033-08-17', 9, 8, '新项目SC12431', '2024-08-26 20:54:10', '2024-08-26 20:54:10');
INSERT INTO `project_info` VALUES (21, 1, 'AI产品类', 1, 1, 'wegweg', 'SC15619', '2024-08-26', '2027-08-18', 3, '2024-08-28', '2029-08-21', 5, 11, '新项目SC15619', '2024-08-26 21:26:34', '2024-08-26 21:26:34');
INSERT INTO `project_info` VALUES (22, 1, 'AI产品类', 1, 1, 'sioajgiwe', 'SC12221', '2024-08-26', '2028-08-29', 4, '2024-08-26', '2031-08-27', 7, 11, '新项目SC12221', '2024-08-26 21:32:14', '2024-08-26 21:32:14');
INSERT INTO `project_info` VALUES (23, 1, 'AI产品类', 1, 1, 'wgweagweg', '156151', '2024-08-26', '2028-08-29', 4, '2024-08-26', '2030-08-27', 6, 11, '新项目156151', '2024-08-26 21:33:32', '2024-08-26 21:33:32');
INSERT INTO `project_info` VALUES (24, 1, 'AI产品类', 1, 1, '人脸识别', 'SC11111', '2024-08-26', '2028-08-24', 4, '2024-08-14', '2033-08-31', 9, 6, '新项目SC11111', '2024-08-26 21:35:09', '2024-08-26 21:35:09');
INSERT INTO `project_info` VALUES (25, 1, 'AI产品类', 1, 1, '人脸识别', 'SC2002', '2024-08-26', '2028-08-29', 4, '2024-08-27', '2029-08-28', 5, 8, '新项目SC2002', '2024-08-26 21:38:18', '2024-08-26 21:38:18');
INSERT INTO `project_info` VALUES (26, 1, 'AI产品类', 1, 1, 'waefgwe', 'SC1561', '2024-08-27', '2027-08-24', 3, '2024-08-27', '2032-08-24', 8, 11, '新项目SC1561', '2024-08-27 15:30:59', '2024-08-27 15:30:59');
INSERT INTO `project_info` VALUES (27, 1, 'AI产品类', 1, 1, 'wfwefweg', 'SC15618', '2024-08-27', '2028-08-29', 4, '2024-08-27', '2031-08-26', 7, 7, '新项目SC15618', '2024-08-27 15:33:32', '2024-08-27 15:33:32');
INSERT INTO `project_info` VALUES (28, 1, 'AI产品类', 1, 1, 'asgweg', 'AIPJ0005', '2024-08-27', '2028-08-29', 4, '2024-08-28', '2032-08-17', 8, 9, '新项目AIPJ0005', '2024-08-27 16:08:48', '2024-08-27 16:08:48');
INSERT INTO `project_info` VALUES (29, 1, 'AI产品类', 1, 1, '智能规划', 'AIPJ0002', '2024-08-28', '2028-08-29', 4, '2024-08-28', '2032-08-25', 8, 7, '新项目AIPJ0002', '2024-08-28 10:10:16', '2024-08-28 10:10:16');
INSERT INTO `project_info` VALUES (30, 1, 'AI产品类', 1, 1, '道路智能规划', 'AIPJ007', '2024-08-28', '2028-08-28', 4, '2024-08-28', '2032-08-24', 8, 8, '新项目AIPJ007', '2024-08-28 10:32:44', '2024-08-28 10:32:44');
INSERT INTO `project_info` VALUES (31, 1, 'AI产品类', 1, 1, '人脸识别', 'AIPJ0006', '2024-08-28', '2028-08-29', 4, '2024-08-28', '2030-08-28', 6, 8, '新项目AIPJ0006', '2024-08-28 11:08:52', '2024-08-28 11:08:52');
INSERT INTO `project_info` VALUES (32, 1, 'AI产品类', 1, 1, '智能规划', 'AIPJ005', '2024-08-28', '2027-08-25', 3, '2024-08-27', '2031-08-27', 7, 8, '新项目AIPJ005', '2024-08-28 13:54:38', '2024-08-28 13:54:38');
INSERT INTO `project_info` VALUES (33, 1, 'AI产品类', 1, 1, '道路智能规划', 'AIPJ007', '2024-08-28', '2028-08-29', 4, '2024-08-28', '2031-08-27', 7, 7, '新项目AIPJ007', '2024-08-28 14:43:54', '2024-08-28 14:43:54');

-- ----------------------------
-- Table structure for project_subcategory
-- ----------------------------
DROP TABLE IF EXISTS `project_subcategory`;
CREATE TABLE `project_subcategory`  (
  `id` int unsigned NOT NULL COMMENT '主键ID:项目小类ID',
  `project_category_id` int(0) DEFAULT NULL COMMENT '属于的项目大类的ID',
  `template_id` int(0) DEFAULT NULL COMMENT '对应的模板的ID',
  `project_subcategory_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '项目小类名称',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of project_subcategory
-- ----------------------------
INSERT INTO `project_subcategory` VALUES (1, 1, 1, '机器学习', '2024-07-18 10:00:00', '2024-07-18 10:00:00');
INSERT INTO `project_subcategory` VALUES (2, 1, 2, '自然语言处理', '2024-07-18 11:00:00', '2024-07-18 11:00:00');
INSERT INTO `project_subcategory` VALUES (3, 2, 3, '数据挖掘', '2024-07-18 12:00:00', '2024-07-18 12:00:00');
INSERT INTO `project_subcategory` VALUES (4, 3, 4, '云存储', '2024-07-18 13:00:00', '2024-07-18 13:00:00');

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `blob_data` blob COMMENT '存放持久化Trigger对象',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = 'Blob类型的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '调度名称',
  `calendar_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '日历名称',
  `calendar` blob NOT NULL COMMENT '存放持久化calendar对象',
  PRIMARY KEY (`sched_name`, `calendar_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '日历信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `cron_expression` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'cron表达式',
  `time_zone_id` varchar(80) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '时区',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = 'Cron类型的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '调度名称',
  `entry_id` varchar(95) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '调度器实例id',
  `trigger_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `instance_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '调度器实例名',
  `fired_time` bigint(0) NOT NULL COMMENT '触发的时间',
  `sched_time` bigint(0) NOT NULL COMMENT '定时器制定的时间',
  `priority` int(0) NOT NULL COMMENT '优先级',
  `state` varchar(16) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '状态',
  `job_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '任务名称',
  `job_group` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '任务组名',
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '是否并发',
  `requests_recovery` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '是否接受恢复执行',
  PRIMARY KEY (`sched_name`, `entry_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '已触发的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '调度名称',
  `job_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '任务组名',
  `description` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '相关介绍',
  `job_class_name` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '执行任务类名称',
  `is_durable` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '是否持久化',
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '是否并发',
  `is_update_data` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '是否更新数据',
  `requests_recovery` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '是否接受恢复执行',
  `job_data` blob COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '任务详细信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '调度名称',
  `lock_name` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '悲观锁名称',
  PRIMARY KEY (`sched_name`, `lock_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '存储的悲观锁信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '调度名称',
  `trigger_group` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  PRIMARY KEY (`sched_name`, `trigger_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '暂停的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '调度名称',
  `instance_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '实例名称',
  `last_checkin_time` bigint(0) NOT NULL COMMENT '上次检查时间',
  `checkin_interval` bigint(0) NOT NULL COMMENT '检查间隔时间',
  PRIMARY KEY (`sched_name`, `instance_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '调度器状态表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `repeat_count` bigint(0) NOT NULL COMMENT '重复的次数统计',
  `repeat_interval` bigint(0) NOT NULL COMMENT '重复的间隔时间',
  `times_triggered` bigint(0) NOT NULL COMMENT '已经触发的次数',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '简单触发器的信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `str_prop_1` varchar(512) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT 'String类型的trigger的第一个参数',
  `str_prop_2` varchar(512) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT 'String类型的trigger的第二个参数',
  `str_prop_3` varchar(512) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT 'String类型的trigger的第三个参数',
  `int_prop_1` int(0) DEFAULT NULL COMMENT 'int类型的trigger的第一个参数',
  `int_prop_2` int(0) DEFAULT NULL COMMENT 'int类型的trigger的第二个参数',
  `long_prop_1` bigint(0) DEFAULT NULL COMMENT 'long类型的trigger的第一个参数',
  `long_prop_2` bigint(0) DEFAULT NULL COMMENT 'long类型的trigger的第二个参数',
  `dec_prop_1` decimal(13, 4) DEFAULT NULL COMMENT 'decimal类型的trigger的第一个参数',
  `dec_prop_2` decimal(13, 4) DEFAULT NULL COMMENT 'decimal类型的trigger的第二个参数',
  `bool_prop_1` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT 'Boolean类型的trigger的第一个参数',
  `bool_prop_2` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT 'Boolean类型的trigger的第二个参数',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '同步机制的行锁表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '触发器的名字',
  `trigger_group` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '触发器所属组的名字',
  `job_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'qrtz_job_details表job_name的外键',
  `job_group` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'qrtz_job_details表job_group的外键',
  `description` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '相关介绍',
  `next_fire_time` bigint(0) DEFAULT NULL COMMENT '上一次触发时间（毫秒）',
  `prev_fire_time` bigint(0) DEFAULT NULL COMMENT '下一次触发时间（默认为-1表示不触发）',
  `priority` int(0) DEFAULT NULL COMMENT '优先级',
  `trigger_state` varchar(16) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '触发器状态',
  `trigger_type` varchar(8) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '触发器的类型',
  `start_time` bigint(0) NOT NULL COMMENT '开始时间',
  `end_time` bigint(0) DEFAULT NULL COMMENT '结束时间',
  `calendar_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '日程表名称',
  `misfire_instr` smallint(0) DEFAULT NULL COMMENT '补偿执行的策略',
  `job_data` blob COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  INDEX `sched_name`(`sched_name`, `job_name`, `job_group`) USING BTREE,
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '触发器详细信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` int(0) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '参数配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2024-08-21 00:14:09', '', NULL, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2024-08-21 00:14:09', '', NULL, '初始化密码 123456');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2024-08-21 00:14:09', '', NULL, '深色主题theme-dark，浅色主题theme-light');
INSERT INTO `sys_config` VALUES (4, '账号自助-验证码开关', 'sys.account.captchaEnabled', 'true', 'Y', 'admin', '2024-08-21 00:14:09', '', NULL, '是否开启验证码功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (5, '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2024-08-21 00:14:09', '', NULL, '是否开启注册用户功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (6, '用户登录-黑名单列表', 'sys.login.blackIPList', '', 'Y', 'admin', '2024-08-21 00:14:09', '', NULL, '设置登录IP黑名单限制，多个匹配项以;分隔，支持匹配（*通配、网段）');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(0) DEFAULT 0 COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '部门名称',
  `order_num` int(0) DEFAULT 0 COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 212 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '部门表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (200, 0, '0', '河北移动省公司', 0, '负责人A', '13100000000', 'hebei@company.com', '0', '0', 'admin', '2024-08-20 00:23:17', '', NULL);
INSERT INTO `sys_dept` VALUES (201, 200, '0,200', '石家庄市公司', 1, '负责人B', '13111111111', 'sjz@company.com', '0', '0', 'admin', '2024-08-20 00:23:17', '', NULL);
INSERT INTO `sys_dept` VALUES (202, 200, '0,200', '唐山市公司', 2, '负责人C', '13122222222', 'ts@company.com', '0', '0', 'admin', '2024-08-20 00:23:17', '', NULL);
INSERT INTO `sys_dept` VALUES (203, 200, '0,200', '秦皇岛市公司', 3, '负责人D', '13133333333', 'qhd@company.com', '0', '0', 'admin', '2024-08-20 00:23:17', '', NULL);
INSERT INTO `sys_dept` VALUES (204, 200, '0,200', '邯郸市公司', 4, '负责人E', '13144444444', 'hd@company.com', '0', '0', 'admin', '2024-08-20 00:23:17', '', NULL);
INSERT INTO `sys_dept` VALUES (205, 200, '0,200', '邢台市公司', 5, '负责人F', '13155555555', 'xt@company.com', '0', '0', 'admin', '2024-08-20 00:23:17', '', NULL);
INSERT INTO `sys_dept` VALUES (206, 200, '0,200', '保定市公司', 6, '负责人G', '13166666666', 'bd@company.com', '0', '0', 'admin', '2024-08-20 00:23:17', '', NULL);
INSERT INTO `sys_dept` VALUES (207, 200, '0,200', '张家口市公司', 7, '负责人H', '13177777777', 'zjk@company.com', '0', '0', 'admin', '2024-08-20 00:23:17', '', NULL);
INSERT INTO `sys_dept` VALUES (208, 200, '0,200', '承德市公司', 8, '负责人I', '13188888888', 'cd@company.com', '0', '0', 'admin', '2024-08-20 00:23:17', '', NULL);
INSERT INTO `sys_dept` VALUES (209, 200, '0,200', '沧州市公司', 9, '负责人J', '13199999999', 'cz@company.com', '0', '0', 'admin', '2024-08-20 00:23:17', '', NULL);
INSERT INTO `sys_dept` VALUES (210, 200, '0,200', '廊坊市公司', 10, '负责人K', '13200000000', 'lf@company.com', '0', '0', 'admin', '2024-08-20 00:23:17', '', NULL);
INSERT INTO `sys_dept` VALUES (211, 200, '0,200', '衡水市公司', 11, '负责人L', '13211111111', 'hs@company.com', '0', '0', 'admin', '2024-08-20 00:23:17', '', NULL);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(0) DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '字典数据表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2024-08-21 00:14:09', '', NULL, '性别男');
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2024-08-21 00:14:09', '', NULL, '性别女');
INSERT INTO `sys_dict_data` VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2024-08-21 00:14:09', '', NULL, '性别未知');
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2024-08-21 00:14:09', '', NULL, '显示菜单');
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2024-08-21 00:14:09', '', NULL, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2024-08-21 00:14:09', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2024-08-21 00:14:09', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2024-08-21 00:14:09', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2024-08-21 00:14:09', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2024-08-21 00:14:09', '', NULL, '默认分组');
INSERT INTO `sys_dict_data` VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2024-08-21 00:14:09', '', NULL, '系统分组');
INSERT INTO `sys_dict_data` VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2024-08-21 00:14:09', '', NULL, '系统默认是');
INSERT INTO `sys_dict_data` VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2024-08-21 00:14:09', '', NULL, '系统默认否');
INSERT INTO `sys_dict_data` VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2024-08-21 00:14:09', '', NULL, '通知');
INSERT INTO `sys_dict_data` VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2024-08-21 00:14:09', '', NULL, '公告');
INSERT INTO `sys_dict_data` VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2024-08-21 00:14:09', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2024-08-21 00:14:09', '', NULL, '关闭状态');
INSERT INTO `sys_dict_data` VALUES (18, 99, '其他', '0', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2024-08-21 00:14:09', '', NULL, '其他操作');
INSERT INTO `sys_dict_data` VALUES (19, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2024-08-21 00:14:09', '', NULL, '新增操作');
INSERT INTO `sys_dict_data` VALUES (20, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2024-08-21 00:14:09', '', NULL, '修改操作');
INSERT INTO `sys_dict_data` VALUES (21, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2024-08-21 00:14:09', '', NULL, '删除操作');
INSERT INTO `sys_dict_data` VALUES (22, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2024-08-21 00:14:09', '', NULL, '授权操作');
INSERT INTO `sys_dict_data` VALUES (23, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2024-08-21 00:14:09', '', NULL, '导出操作');
INSERT INTO `sys_dict_data` VALUES (24, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2024-08-21 00:14:09', '', NULL, '导入操作');
INSERT INTO `sys_dict_data` VALUES (25, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2024-08-21 00:14:09', '', NULL, '强退操作');
INSERT INTO `sys_dict_data` VALUES (26, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2024-08-21 00:14:09', '', NULL, '生成操作');
INSERT INTO `sys_dict_data` VALUES (27, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2024-08-21 00:14:09', '', NULL, '清空操作');
INSERT INTO `sys_dict_data` VALUES (28, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2024-08-21 00:14:09', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (29, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2024-08-21 00:14:09', '', NULL, '停用状态');

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '字典类型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2024-08-21 00:14:09', '', NULL, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2024-08-21 00:14:09', '', NULL, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2024-08-21 00:14:09', '', NULL, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2024-08-21 00:14:09', '', NULL, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2024-08-21 00:14:09', '', NULL, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2024-08-21 00:14:09', '', NULL, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2024-08-21 00:14:09', '', NULL, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2024-08-21 00:14:09', '', NULL, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2024-08-21 00:14:09', '', NULL, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2024-08-21 00:14:09', '', NULL, '登录状态列表');

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `job_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '定时任务调度表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2024-08-21 00:14:09', '', NULL, '');
INSERT INTO `sys_job` VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2024-08-21 00:14:09', '', NULL, '');
INSERT INTO `sys_job` VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2024-08-21 00:14:09', '', NULL, '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log`  (
  `job_log_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '日志信息',
  `status` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '' COMMENT '异常信息',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '定时任务调度日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '' COMMENT '提示消息',
  `login_time` datetime(0) DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE,
  INDEX `idx_sys_logininfor_s`(`status`) USING BTREE,
  INDEX `idx_sys_logininfor_lt`(`login_time`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 139 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '系统访问记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES (100, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-08-21 10:27:34');
INSERT INTO `sys_logininfor` VALUES (101, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-08-21 11:34:10');
INSERT INTO `sys_logininfor` VALUES (102, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-08-21 14:09:52');
INSERT INTO `sys_logininfor` VALUES (103, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码已失效', '2024-08-21 16:06:35');
INSERT INTO `sys_logininfor` VALUES (104, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码错误', '2024-08-21 16:06:37');
INSERT INTO `sys_logininfor` VALUES (105, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-08-21 16:06:40');
INSERT INTO `sys_logininfor` VALUES (106, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-08-21 19:36:46');
INSERT INTO `sys_logininfor` VALUES (107, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-08-21 20:24:08');
INSERT INTO `sys_logininfor` VALUES (108, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-08-21 21:03:42');
INSERT INTO `sys_logininfor` VALUES (109, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-08-21 22:54:05');
INSERT INTO `sys_logininfor` VALUES (110, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-08-22 10:18:36');
INSERT INTO `sys_logininfor` VALUES (111, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-08-22 16:10:55');
INSERT INTO `sys_logininfor` VALUES (112, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-08-22 20:39:06');
INSERT INTO `sys_logininfor` VALUES (113, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-08-23 13:55:13');
INSERT INTO `sys_logininfor` VALUES (114, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-08-23 17:08:41');
INSERT INTO `sys_logininfor` VALUES (115, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-08-23 18:54:24');
INSERT INTO `sys_logininfor` VALUES (116, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-08-23 20:10:17');
INSERT INTO `sys_logininfor` VALUES (117, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-08-24 11:17:40');
INSERT INTO `sys_logininfor` VALUES (118, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-08-24 19:20:32');
INSERT INTO `sys_logininfor` VALUES (119, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-08-24 21:40:03');
INSERT INTO `sys_logininfor` VALUES (120, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-08-24 23:03:44');
INSERT INTO `sys_logininfor` VALUES (121, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-08-25 12:59:37');
INSERT INTO `sys_logininfor` VALUES (122, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-08-25 13:48:06');
INSERT INTO `sys_logininfor` VALUES (123, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码错误', '2024-08-25 15:14:38');
INSERT INTO `sys_logininfor` VALUES (124, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-08-25 15:14:41');
INSERT INTO `sys_logininfor` VALUES (125, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-08-25 16:29:19');
INSERT INTO `sys_logininfor` VALUES (126, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-08-25 18:54:46');
INSERT INTO `sys_logininfor` VALUES (127, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-08-25 20:55:19');
INSERT INTO `sys_logininfor` VALUES (128, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码错误', '2024-08-25 21:55:39');
INSERT INTO `sys_logininfor` VALUES (129, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-08-25 21:55:44');
INSERT INTO `sys_logininfor` VALUES (130, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-08-26 00:43:43');
INSERT INTO `sys_logininfor` VALUES (131, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-08-26 10:21:23');
INSERT INTO `sys_logininfor` VALUES (132, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-08-26 13:16:13');
INSERT INTO `sys_logininfor` VALUES (133, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-08-26 16:17:40');
INSERT INTO `sys_logininfor` VALUES (134, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-08-26 16:38:52');
INSERT INTO `sys_logininfor` VALUES (135, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-08-26 17:53:05');
INSERT INTO `sys_logininfor` VALUES (136, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-08-26 19:44:12');
INSERT INTO `sys_logininfor` VALUES (137, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-08-27 15:26:20');
INSERT INTO `sys_logininfor` VALUES (138, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-08-27 17:31:20');
INSERT INTO `sys_logininfor` VALUES (139, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-08-27 19:10:32');
INSERT INTO `sys_logininfor` VALUES (140, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码已失效', '2024-08-28 10:08:12');
INSERT INTO `sys_logininfor` VALUES (141, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-08-28 10:08:14');
INSERT INTO `sys_logininfor` VALUES (142, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-08-28 13:53:47');
INSERT INTO `sys_logininfor` VALUES (143, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-08-28 15:49:09');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(0) DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int(0) DEFAULT 0 COMMENT '显示顺序',
  `path` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '组件路径',
  `query` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '路由参数',
  `route_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '' COMMENT '路由名称',
  `is_frame` int(0) DEFAULT 1 COMMENT '是否为外链（0是 1否）',
  `is_cache` int(0) DEFAULT 0 COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2003 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '菜单权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 1, 'system', NULL, '', '', 1, 0, 'M', '0', '0', '', 'system', 'admin', '2024-08-21 00:14:09', '', NULL, '系统管理目录');
INSERT INTO `sys_menu` VALUES (2, '系统监控', 0, 2, 'monitor', NULL, '', '', 1, 0, 'M', '0', '0', '', 'monitor', 'admin', '2024-08-21 00:14:09', '', NULL, '系统监控目录');
INSERT INTO `sys_menu` VALUES (3, '系统工具', 0, 3, 'tool', NULL, '', '', 1, 0, 'M', '0', '0', '', 'tool', 'admin', '2024-08-21 00:14:09', '', NULL, '系统工具目录');
INSERT INTO `sys_menu` VALUES (4, '若依官网', 0, 4, 'http://ruoyi.vip', NULL, '', '', 0, 0, 'M', '0', '0', '', 'guide', 'admin', '2024-08-21 00:14:09', '', NULL, '若依官网地址');
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1, 1, 'user', 'system/user/index', '', '', 1, 0, 'C', '0', '0', 'system:user:list', 'user', 'admin', '2024-08-21 00:14:09', '', NULL, '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 2, 'role', 'system/role/index', '', '', 1, 0, 'C', '0', '0', 'system:role:list', 'peoples', 'admin', '2024-08-21 00:14:09', '', NULL, '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 3, 'menu', 'system/menu/index', '', '', 1, 0, 'C', '0', '0', 'system:menu:list', 'tree-table', 'admin', '2024-08-21 00:14:09', '', NULL, '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (103, '部门管理', 1, 4, 'dept', 'system/dept/index', '', '', 1, 0, 'C', '0', '0', 'system:dept:list', 'tree', 'admin', '2024-08-21 00:14:09', '', NULL, '部门管理菜单');
INSERT INTO `sys_menu` VALUES (104, '岗位管理', 1, 5, 'post', 'system/post/index', '', '', 1, 0, 'C', '0', '0', 'system:post:list', 'post', 'admin', '2024-08-21 00:14:09', '', NULL, '岗位管理菜单');
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1, 6, 'dict', 'system/dict/index', '', '', 1, 0, 'C', '0', '0', 'system:dict:list', 'dict', 'admin', '2024-08-21 00:14:09', '', NULL, '字典管理菜单');
INSERT INTO `sys_menu` VALUES (106, '参数设置', 1, 7, 'config', 'system/config/index', '', '', 1, 0, 'C', '0', '0', 'system:config:list', 'edit', 'admin', '2024-08-21 00:14:09', '', NULL, '参数设置菜单');
INSERT INTO `sys_menu` VALUES (107, '通知公告', 1, 8, 'notice', 'system/notice/index', '', '', 1, 0, 'C', '0', '0', 'system:notice:list', 'message', 'admin', '2024-08-21 00:14:09', '', NULL, '通知公告菜单');
INSERT INTO `sys_menu` VALUES (108, '日志管理', 1, 9, 'log', '', '', '', 1, 0, 'M', '0', '0', '', 'log', 'admin', '2024-08-21 00:14:09', '', NULL, '日志管理菜单');
INSERT INTO `sys_menu` VALUES (109, '在线用户', 2, 1, 'online', 'monitor/online/index', '', '', 1, 0, 'C', '0', '0', 'monitor:online:list', 'online', 'admin', '2024-08-21 00:14:09', '', NULL, '在线用户菜单');
INSERT INTO `sys_menu` VALUES (110, '定时任务', 2, 2, 'job', 'monitor/job/index', '', '', 1, 0, 'C', '0', '0', 'monitor:job:list', 'job', 'admin', '2024-08-21 00:14:09', '', NULL, '定时任务菜单');
INSERT INTO `sys_menu` VALUES (111, '数据监控', 2, 3, 'druid', 'monitor/druid/index', '', '', 1, 0, 'C', '0', '0', 'monitor:druid:list', 'druid', 'admin', '2024-08-21 00:14:09', '', NULL, '数据监控菜单');
INSERT INTO `sys_menu` VALUES (112, '服务监控', 2, 4, 'server', 'monitor/server/index', '', '', 1, 0, 'C', '0', '0', 'monitor:server:list', 'server', 'admin', '2024-08-21 00:14:09', '', NULL, '服务监控菜单');
INSERT INTO `sys_menu` VALUES (113, '缓存监控', 2, 5, 'cache', 'monitor/cache/index', '', '', 1, 0, 'C', '0', '0', 'monitor:cache:list', 'redis', 'admin', '2024-08-21 00:14:09', '', NULL, '缓存监控菜单');
INSERT INTO `sys_menu` VALUES (114, '缓存列表', 2, 6, 'cacheList', 'monitor/cache/list', '', '', 1, 0, 'C', '0', '0', 'monitor:cache:list', 'redis-list', 'admin', '2024-08-21 00:14:09', '', NULL, '缓存列表菜单');
INSERT INTO `sys_menu` VALUES (115, '表单构建', 3, 1, 'build', 'tool/build/index', '', '', 1, 0, 'C', '0', '0', 'tool:build:list', 'build', 'admin', '2024-08-21 00:14:09', '', NULL, '表单构建菜单');
INSERT INTO `sys_menu` VALUES (116, '代码生成', 3, 2, 'gen', 'tool/gen/index', '', '', 1, 0, 'C', '0', '0', 'tool:gen:list', 'code', 'admin', '2024-08-21 00:14:09', '', NULL, '代码生成菜单');
INSERT INTO `sys_menu` VALUES (117, '系统接口', 3, 3, 'swagger', 'tool/swagger/index', '', '', 1, 0, 'C', '0', '0', 'tool:swagger:list', 'swagger', 'admin', '2024-08-21 00:14:09', '', NULL, '系统接口菜单');
INSERT INTO `sys_menu` VALUES (500, '操作日志', 108, 1, 'operlog', 'monitor/operlog/index', '', '', 1, 0, 'C', '0', '0', 'monitor:operlog:list', 'form', 'admin', '2024-08-21 00:14:09', '', NULL, '操作日志菜单');
INSERT INTO `sys_menu` VALUES (501, '登录日志', 108, 2, 'logininfor', 'monitor/logininfor/index', '', '', 1, 0, 'C', '0', '0', 'monitor:logininfor:list', 'logininfor', 'admin', '2024-08-21 00:14:09', '', NULL, '登录日志菜单');
INSERT INTO `sys_menu` VALUES (1000, '用户查询', 100, 1, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:query', '#', 'admin', '2024-08-21 00:14:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1001, '用户新增', 100, 2, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:add', '#', 'admin', '2024-08-21 00:14:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1002, '用户修改', 100, 3, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:edit', '#', 'admin', '2024-08-21 00:14:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1003, '用户删除', 100, 4, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:remove', '#', 'admin', '2024-08-21 00:14:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1004, '用户导出', 100, 5, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:export', '#', 'admin', '2024-08-21 00:14:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1005, '用户导入', 100, 6, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:import', '#', 'admin', '2024-08-21 00:14:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1006, '重置密码', 100, 7, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:resetPwd', '#', 'admin', '2024-08-21 00:14:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1007, '角色查询', 101, 1, '', '', '', '', 1, 0, 'F', '0', '0', 'system:role:query', '#', 'admin', '2024-08-21 00:14:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1008, '角色新增', 101, 2, '', '', '', '', 1, 0, 'F', '0', '0', 'system:role:add', '#', 'admin', '2024-08-21 00:14:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1009, '角色修改', 101, 3, '', '', '', '', 1, 0, 'F', '0', '0', 'system:role:edit', '#', 'admin', '2024-08-21 00:14:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1010, '角色删除', 101, 4, '', '', '', '', 1, 0, 'F', '0', '0', 'system:role:remove', '#', 'admin', '2024-08-21 00:14:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1011, '角色导出', 101, 5, '', '', '', '', 1, 0, 'F', '0', '0', 'system:role:export', '#', 'admin', '2024-08-21 00:14:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1012, '菜单查询', 102, 1, '', '', '', '', 1, 0, 'F', '0', '0', 'system:menu:query', '#', 'admin', '2024-08-21 00:14:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1013, '菜单新增', 102, 2, '', '', '', '', 1, 0, 'F', '0', '0', 'system:menu:add', '#', 'admin', '2024-08-21 00:14:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1014, '菜单修改', 102, 3, '', '', '', '', 1, 0, 'F', '0', '0', 'system:menu:edit', '#', 'admin', '2024-08-21 00:14:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1015, '菜单删除', 102, 4, '', '', '', '', 1, 0, 'F', '0', '0', 'system:menu:remove', '#', 'admin', '2024-08-21 00:14:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1016, '部门查询', 103, 1, '', '', '', '', 1, 0, 'F', '0', '0', 'system:dept:query', '#', 'admin', '2024-08-21 00:14:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1017, '部门新增', 103, 2, '', '', '', '', 1, 0, 'F', '0', '0', 'system:dept:add', '#', 'admin', '2024-08-21 00:14:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1018, '部门修改', 103, 3, '', '', '', '', 1, 0, 'F', '0', '0', 'system:dept:edit', '#', 'admin', '2024-08-21 00:14:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1019, '部门删除', 103, 4, '', '', '', '', 1, 0, 'F', '0', '0', 'system:dept:remove', '#', 'admin', '2024-08-21 00:14:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1020, '岗位查询', 104, 1, '', '', '', '', 1, 0, 'F', '0', '0', 'system:post:query', '#', 'admin', '2024-08-21 00:14:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1021, '岗位新增', 104, 2, '', '', '', '', 1, 0, 'F', '0', '0', 'system:post:add', '#', 'admin', '2024-08-21 00:14:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1022, '岗位修改', 104, 3, '', '', '', '', 1, 0, 'F', '0', '0', 'system:post:edit', '#', 'admin', '2024-08-21 00:14:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1023, '岗位删除', 104, 4, '', '', '', '', 1, 0, 'F', '0', '0', 'system:post:remove', '#', 'admin', '2024-08-21 00:14:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1024, '岗位导出', 104, 5, '', '', '', '', 1, 0, 'F', '0', '0', 'system:post:export', '#', 'admin', '2024-08-21 00:14:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1025, '字典查询', 105, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:dict:query', '#', 'admin', '2024-08-21 00:14:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1026, '字典新增', 105, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:dict:add', '#', 'admin', '2024-08-21 00:14:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1027, '字典修改', 105, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:dict:edit', '#', 'admin', '2024-08-21 00:14:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1028, '字典删除', 105, 4, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:dict:remove', '#', 'admin', '2024-08-21 00:14:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1029, '字典导出', 105, 5, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:dict:export', '#', 'admin', '2024-08-21 00:14:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1030, '参数查询', 106, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:config:query', '#', 'admin', '2024-08-21 00:14:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1031, '参数新增', 106, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:config:add', '#', 'admin', '2024-08-21 00:14:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1032, '参数修改', 106, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:config:edit', '#', 'admin', '2024-08-21 00:14:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1033, '参数删除', 106, 4, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:config:remove', '#', 'admin', '2024-08-21 00:14:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1034, '参数导出', 106, 5, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:config:export', '#', 'admin', '2024-08-21 00:14:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1035, '公告查询', 107, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:notice:query', '#', 'admin', '2024-08-21 00:14:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1036, '公告新增', 107, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:notice:add', '#', 'admin', '2024-08-21 00:14:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1037, '公告修改', 107, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:notice:edit', '#', 'admin', '2024-08-21 00:14:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1038, '公告删除', 107, 4, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:notice:remove', '#', 'admin', '2024-08-21 00:14:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1039, '操作查询', 500, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:query', '#', 'admin', '2024-08-21 00:14:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1040, '操作删除', 500, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:remove', '#', 'admin', '2024-08-21 00:14:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1041, '日志导出', 500, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:export', '#', 'admin', '2024-08-21 00:14:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1042, '登录查询', 501, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:query', '#', 'admin', '2024-08-21 00:14:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1043, '登录删除', 501, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:remove', '#', 'admin', '2024-08-21 00:14:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1044, '日志导出', 501, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:export', '#', 'admin', '2024-08-21 00:14:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1045, '账户解锁', 501, 4, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:unlock', '#', 'admin', '2024-08-21 00:14:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1046, '在线查询', 109, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:online:query', '#', 'admin', '2024-08-21 00:14:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1047, '批量强退', 109, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:online:batchLogout', '#', 'admin', '2024-08-21 00:14:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1048, '单条强退', 109, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:online:forceLogout', '#', 'admin', '2024-08-21 00:14:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1049, '任务查询', 110, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:job:query', '#', 'admin', '2024-08-21 00:14:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1050, '任务新增', 110, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:job:add', '#', 'admin', '2024-08-21 00:14:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1051, '任务修改', 110, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:job:edit', '#', 'admin', '2024-08-21 00:14:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1052, '任务删除', 110, 4, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:job:remove', '#', 'admin', '2024-08-21 00:14:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1053, '状态修改', 110, 5, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:job:changeStatus', '#', 'admin', '2024-08-21 00:14:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1054, '任务导出', 110, 6, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:job:export', '#', 'admin', '2024-08-21 00:14:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1055, '生成查询', 116, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'tool:gen:query', '#', 'admin', '2024-08-21 00:14:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1056, '生成修改', 116, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'tool:gen:edit', '#', 'admin', '2024-08-21 00:14:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1057, '生成删除', 116, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'tool:gen:remove', '#', 'admin', '2024-08-21 00:14:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1058, '导入代码', 116, 4, '#', '', '', '', 1, 0, 'F', '0', '0', 'tool:gen:import', '#', 'admin', '2024-08-21 00:14:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1059, '预览代码', 116, 5, '#', '', '', '', 1, 0, 'F', '0', '0', 'tool:gen:preview', '#', 'admin', '2024-08-21 00:14:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1060, '生成代码', 116, 6, '#', '', '', '', 1, 0, 'F', '0', '0', 'tool:gen:code', '#', 'admin', '2024-08-21 00:14:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2000, '新建项目', 0, 1, 'newproject', NULL, NULL, '', 1, 0, 'M', '0', '0', NULL, 'edit', 'admin', '2024-08-19 21:51:10', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2001, '投资发展类', 2000, 1, 'investdevelop', 'newproject/investdevelop/index', NULL, '', 1, 0, 'C', '0', '0', NULL, '#', 'admin', '2024-08-19 21:52:09', '', NULL, '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int(0) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '通知公告表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES (1, '温馨提醒：2018-07-01 若依新版本发布啦', '2', 0xE696B0E78988E69CACE58685E5AEB9, '0', 'admin', '2024-08-21 00:14:09', '', NULL, '管理员');
INSERT INTO `sys_notice` VALUES (2, '维护通知：2018-07-01 若依系统凌晨维护', '1', 0xE7BBB4E68AA4E58685E5AEB9, '0', 'admin', '2024-08-21 00:14:09', '', NULL, '管理员');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '' COMMENT '模块标题',
  `business_type` int(0) DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '' COMMENT '请求方式',
  `operator_type` int(0) DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '' COMMENT '返回参数',
  `status` int(0) DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime(0) DEFAULT NULL COMMENT '操作时间',
  `cost_time` bigint(0) DEFAULT 0 COMMENT '消耗时间',
  PRIMARY KEY (`oper_id`) USING BTREE,
  INDEX `idx_sys_oper_log_bt`(`business_type`) USING BTREE,
  INDEX `idx_sys_oper_log_s`(`status`) USING BTREE,
  INDEX `idx_sys_oper_log_ot`(`oper_time`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 106 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '操作日志记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (100, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '石家庄市公司', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"table_attribute\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-08-25 13:00:19', 61);
INSERT INTO `sys_oper_log` VALUES (101, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '石家庄市公司', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"table_attribute\"}', NULL, 0, NULL, '2024-08-25 13:00:26', 334);
INSERT INTO `sys_oper_log` VALUES (102, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '石家庄市公司', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"equation\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-08-25 20:55:50', 89);
INSERT INTO `sys_oper_log` VALUES (103, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '石家庄市公司', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"equation\"}', NULL, 0, NULL, '2024-08-25 20:55:55', 412);
INSERT INTO `sys_oper_log` VALUES (104, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '石家庄市公司', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"log\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"草稿箱\",\"menuType\":\"M\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"/script\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-08-26 20:13:25', 14);
INSERT INTO `sys_oper_log` VALUES (105, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '石家庄市公司', '/system/menu/2002', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-08-27 15:26:44', 20);

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int(0) NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '岗位信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(0) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) DEFAULT 1 COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) DEFAULT 1 COMMENT '部门树选择项是否关联显示',
  `status` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 104 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '角色信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'admin', 1, '1', 1, 1, '0', '0', 'admin', '2024-08-19 22:05:19', '', NULL, '超级管理员');
INSERT INTO `sys_role` VALUES (2, '系统管理员', 'common', 2, '2', 1, 0, '0', '0', 'admin', '2024-08-19 22:05:19', 'admin', '2024-08-19 22:09:42', '系统管理员');
INSERT INTO `sys_role` VALUES (100, '项目填报人', ' ProjectReporter', 3, '1', 1, 1, '0', '0', 'admin', '2024-08-19 22:01:11', 'admin', '2024-08-19 22:14:45', NULL);
INSERT INTO `sys_role` VALUES (101, '归口部门人员', ' DepartmentalLiaison', 4, '1', 1, 1, '0', '0', 'admin', '2024-08-19 22:01:41', '', NULL, NULL);
INSERT INTO `sys_role` VALUES (102, '财务审核人员', ' FinancialAuditor', 5, '1', 1, 1, '0', '0', 'admin', '2024-08-19 22:01:58', '', NULL, NULL);
INSERT INTO `sys_role` VALUES (103, '财务管理员', ' FinancialManager', 6, '1', 1, 1, '0', '0', 'admin', '2024-08-19 22:02:11', '', NULL, NULL);

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` bigint(0) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(0) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '角色和部门关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES (2, 100);
INSERT INTO `sys_role_dept` VALUES (2, 101);
INSERT INTO `sys_role_dept` VALUES (2, 105);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` bigint(0) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(0) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '角色和菜单关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (2, 1);
INSERT INTO `sys_role_menu` VALUES (2, 2);
INSERT INTO `sys_role_menu` VALUES (2, 3);
INSERT INTO `sys_role_menu` VALUES (2, 4);
INSERT INTO `sys_role_menu` VALUES (2, 100);
INSERT INTO `sys_role_menu` VALUES (2, 101);
INSERT INTO `sys_role_menu` VALUES (2, 102);
INSERT INTO `sys_role_menu` VALUES (2, 103);
INSERT INTO `sys_role_menu` VALUES (2, 104);
INSERT INTO `sys_role_menu` VALUES (2, 105);
INSERT INTO `sys_role_menu` VALUES (2, 106);
INSERT INTO `sys_role_menu` VALUES (2, 107);
INSERT INTO `sys_role_menu` VALUES (2, 108);
INSERT INTO `sys_role_menu` VALUES (2, 109);
INSERT INTO `sys_role_menu` VALUES (2, 110);
INSERT INTO `sys_role_menu` VALUES (2, 111);
INSERT INTO `sys_role_menu` VALUES (2, 112);
INSERT INTO `sys_role_menu` VALUES (2, 113);
INSERT INTO `sys_role_menu` VALUES (2, 114);
INSERT INTO `sys_role_menu` VALUES (2, 115);
INSERT INTO `sys_role_menu` VALUES (2, 116);
INSERT INTO `sys_role_menu` VALUES (2, 117);
INSERT INTO `sys_role_menu` VALUES (2, 500);
INSERT INTO `sys_role_menu` VALUES (2, 501);
INSERT INTO `sys_role_menu` VALUES (2, 1000);
INSERT INTO `sys_role_menu` VALUES (2, 1001);
INSERT INTO `sys_role_menu` VALUES (2, 1002);
INSERT INTO `sys_role_menu` VALUES (2, 1003);
INSERT INTO `sys_role_menu` VALUES (2, 1004);
INSERT INTO `sys_role_menu` VALUES (2, 1005);
INSERT INTO `sys_role_menu` VALUES (2, 1006);
INSERT INTO `sys_role_menu` VALUES (2, 1007);
INSERT INTO `sys_role_menu` VALUES (2, 1008);
INSERT INTO `sys_role_menu` VALUES (2, 1009);
INSERT INTO `sys_role_menu` VALUES (2, 1010);
INSERT INTO `sys_role_menu` VALUES (2, 1011);
INSERT INTO `sys_role_menu` VALUES (2, 1012);
INSERT INTO `sys_role_menu` VALUES (2, 1013);
INSERT INTO `sys_role_menu` VALUES (2, 1014);
INSERT INTO `sys_role_menu` VALUES (2, 1015);
INSERT INTO `sys_role_menu` VALUES (2, 1016);
INSERT INTO `sys_role_menu` VALUES (2, 1017);
INSERT INTO `sys_role_menu` VALUES (2, 1018);
INSERT INTO `sys_role_menu` VALUES (2, 1019);
INSERT INTO `sys_role_menu` VALUES (2, 1020);
INSERT INTO `sys_role_menu` VALUES (2, 1021);
INSERT INTO `sys_role_menu` VALUES (2, 1022);
INSERT INTO `sys_role_menu` VALUES (2, 1023);
INSERT INTO `sys_role_menu` VALUES (2, 1024);
INSERT INTO `sys_role_menu` VALUES (2, 1025);
INSERT INTO `sys_role_menu` VALUES (2, 1026);
INSERT INTO `sys_role_menu` VALUES (2, 1027);
INSERT INTO `sys_role_menu` VALUES (2, 1028);
INSERT INTO `sys_role_menu` VALUES (2, 1029);
INSERT INTO `sys_role_menu` VALUES (2, 1030);
INSERT INTO `sys_role_menu` VALUES (2, 1031);
INSERT INTO `sys_role_menu` VALUES (2, 1032);
INSERT INTO `sys_role_menu` VALUES (2, 1033);
INSERT INTO `sys_role_menu` VALUES (2, 1034);
INSERT INTO `sys_role_menu` VALUES (2, 1035);
INSERT INTO `sys_role_menu` VALUES (2, 1036);
INSERT INTO `sys_role_menu` VALUES (2, 1037);
INSERT INTO `sys_role_menu` VALUES (2, 1038);
INSERT INTO `sys_role_menu` VALUES (2, 1039);
INSERT INTO `sys_role_menu` VALUES (2, 1040);
INSERT INTO `sys_role_menu` VALUES (2, 1041);
INSERT INTO `sys_role_menu` VALUES (2, 1042);
INSERT INTO `sys_role_menu` VALUES (2, 1043);
INSERT INTO `sys_role_menu` VALUES (2, 1044);
INSERT INTO `sys_role_menu` VALUES (2, 1045);
INSERT INTO `sys_role_menu` VALUES (2, 1046);
INSERT INTO `sys_role_menu` VALUES (2, 1047);
INSERT INTO `sys_role_menu` VALUES (2, 1048);
INSERT INTO `sys_role_menu` VALUES (2, 1049);
INSERT INTO `sys_role_menu` VALUES (2, 1050);
INSERT INTO `sys_role_menu` VALUES (2, 1051);
INSERT INTO `sys_role_menu` VALUES (2, 1052);
INSERT INTO `sys_role_menu` VALUES (2, 1053);
INSERT INTO `sys_role_menu` VALUES (2, 1054);
INSERT INTO `sys_role_menu` VALUES (2, 1055);
INSERT INTO `sys_role_menu` VALUES (2, 1056);
INSERT INTO `sys_role_menu` VALUES (2, 1057);
INSERT INTO `sys_role_menu` VALUES (2, 1058);
INSERT INTO `sys_role_menu` VALUES (2, 1059);
INSERT INTO `sys_role_menu` VALUES (2, 1060);
INSERT INTO `sys_role_menu` VALUES (2, 2000);
INSERT INTO `sys_role_menu` VALUES (2, 2001);
INSERT INTO `sys_role_menu` VALUES (100, 2000);
INSERT INTO `sys_role_menu` VALUES (100, 2001);
INSERT INTO `sys_role_menu` VALUES (101, 1);
INSERT INTO `sys_role_menu` VALUES (101, 2);
INSERT INTO `sys_role_menu` VALUES (101, 3);
INSERT INTO `sys_role_menu` VALUES (101, 4);
INSERT INTO `sys_role_menu` VALUES (101, 100);
INSERT INTO `sys_role_menu` VALUES (101, 101);
INSERT INTO `sys_role_menu` VALUES (101, 102);
INSERT INTO `sys_role_menu` VALUES (101, 103);
INSERT INTO `sys_role_menu` VALUES (101, 104);
INSERT INTO `sys_role_menu` VALUES (101, 105);
INSERT INTO `sys_role_menu` VALUES (101, 106);
INSERT INTO `sys_role_menu` VALUES (101, 107);
INSERT INTO `sys_role_menu` VALUES (101, 108);
INSERT INTO `sys_role_menu` VALUES (101, 109);
INSERT INTO `sys_role_menu` VALUES (101, 110);
INSERT INTO `sys_role_menu` VALUES (101, 111);
INSERT INTO `sys_role_menu` VALUES (101, 112);
INSERT INTO `sys_role_menu` VALUES (101, 113);
INSERT INTO `sys_role_menu` VALUES (101, 114);
INSERT INTO `sys_role_menu` VALUES (101, 115);
INSERT INTO `sys_role_menu` VALUES (101, 116);
INSERT INTO `sys_role_menu` VALUES (101, 117);
INSERT INTO `sys_role_menu` VALUES (101, 500);
INSERT INTO `sys_role_menu` VALUES (101, 501);
INSERT INTO `sys_role_menu` VALUES (101, 1000);
INSERT INTO `sys_role_menu` VALUES (101, 1001);
INSERT INTO `sys_role_menu` VALUES (101, 1002);
INSERT INTO `sys_role_menu` VALUES (101, 1003);
INSERT INTO `sys_role_menu` VALUES (101, 1004);
INSERT INTO `sys_role_menu` VALUES (101, 1005);
INSERT INTO `sys_role_menu` VALUES (101, 1006);
INSERT INTO `sys_role_menu` VALUES (101, 1007);
INSERT INTO `sys_role_menu` VALUES (101, 1008);
INSERT INTO `sys_role_menu` VALUES (101, 1009);
INSERT INTO `sys_role_menu` VALUES (101, 1010);
INSERT INTO `sys_role_menu` VALUES (101, 1011);
INSERT INTO `sys_role_menu` VALUES (101, 1012);
INSERT INTO `sys_role_menu` VALUES (101, 1013);
INSERT INTO `sys_role_menu` VALUES (101, 1014);
INSERT INTO `sys_role_menu` VALUES (101, 1015);
INSERT INTO `sys_role_menu` VALUES (101, 1016);
INSERT INTO `sys_role_menu` VALUES (101, 1017);
INSERT INTO `sys_role_menu` VALUES (101, 1018);
INSERT INTO `sys_role_menu` VALUES (101, 1019);
INSERT INTO `sys_role_menu` VALUES (101, 1020);
INSERT INTO `sys_role_menu` VALUES (101, 1021);
INSERT INTO `sys_role_menu` VALUES (101, 1022);
INSERT INTO `sys_role_menu` VALUES (101, 1023);
INSERT INTO `sys_role_menu` VALUES (101, 1024);
INSERT INTO `sys_role_menu` VALUES (101, 1025);
INSERT INTO `sys_role_menu` VALUES (101, 1026);
INSERT INTO `sys_role_menu` VALUES (101, 1027);
INSERT INTO `sys_role_menu` VALUES (101, 1028);
INSERT INTO `sys_role_menu` VALUES (101, 1029);
INSERT INTO `sys_role_menu` VALUES (101, 1030);
INSERT INTO `sys_role_menu` VALUES (101, 1031);
INSERT INTO `sys_role_menu` VALUES (101, 1032);
INSERT INTO `sys_role_menu` VALUES (101, 1033);
INSERT INTO `sys_role_menu` VALUES (101, 1034);
INSERT INTO `sys_role_menu` VALUES (101, 1035);
INSERT INTO `sys_role_menu` VALUES (101, 1036);
INSERT INTO `sys_role_menu` VALUES (101, 1037);
INSERT INTO `sys_role_menu` VALUES (101, 1038);
INSERT INTO `sys_role_menu` VALUES (101, 1039);
INSERT INTO `sys_role_menu` VALUES (101, 1040);
INSERT INTO `sys_role_menu` VALUES (101, 1041);
INSERT INTO `sys_role_menu` VALUES (101, 1042);
INSERT INTO `sys_role_menu` VALUES (101, 1043);
INSERT INTO `sys_role_menu` VALUES (101, 1044);
INSERT INTO `sys_role_menu` VALUES (101, 1045);
INSERT INTO `sys_role_menu` VALUES (101, 1046);
INSERT INTO `sys_role_menu` VALUES (101, 1047);
INSERT INTO `sys_role_menu` VALUES (101, 1048);
INSERT INTO `sys_role_menu` VALUES (101, 1049);
INSERT INTO `sys_role_menu` VALUES (101, 1050);
INSERT INTO `sys_role_menu` VALUES (101, 1051);
INSERT INTO `sys_role_menu` VALUES (101, 1052);
INSERT INTO `sys_role_menu` VALUES (101, 1053);
INSERT INTO `sys_role_menu` VALUES (101, 1054);
INSERT INTO `sys_role_menu` VALUES (101, 1055);
INSERT INTO `sys_role_menu` VALUES (101, 1056);
INSERT INTO `sys_role_menu` VALUES (101, 1057);
INSERT INTO `sys_role_menu` VALUES (101, 1058);
INSERT INTO `sys_role_menu` VALUES (101, 1059);
INSERT INTO `sys_role_menu` VALUES (101, 1060);
INSERT INTO `sys_role_menu` VALUES (101, 2000);
INSERT INTO `sys_role_menu` VALUES (101, 2001);
INSERT INTO `sys_role_menu` VALUES (102, 1);
INSERT INTO `sys_role_menu` VALUES (102, 2);
INSERT INTO `sys_role_menu` VALUES (102, 3);
INSERT INTO `sys_role_menu` VALUES (102, 4);
INSERT INTO `sys_role_menu` VALUES (102, 100);
INSERT INTO `sys_role_menu` VALUES (102, 101);
INSERT INTO `sys_role_menu` VALUES (102, 102);
INSERT INTO `sys_role_menu` VALUES (102, 103);
INSERT INTO `sys_role_menu` VALUES (102, 104);
INSERT INTO `sys_role_menu` VALUES (102, 105);
INSERT INTO `sys_role_menu` VALUES (102, 106);
INSERT INTO `sys_role_menu` VALUES (102, 107);
INSERT INTO `sys_role_menu` VALUES (102, 108);
INSERT INTO `sys_role_menu` VALUES (102, 109);
INSERT INTO `sys_role_menu` VALUES (102, 110);
INSERT INTO `sys_role_menu` VALUES (102, 111);
INSERT INTO `sys_role_menu` VALUES (102, 112);
INSERT INTO `sys_role_menu` VALUES (102, 113);
INSERT INTO `sys_role_menu` VALUES (102, 114);
INSERT INTO `sys_role_menu` VALUES (102, 115);
INSERT INTO `sys_role_menu` VALUES (102, 116);
INSERT INTO `sys_role_menu` VALUES (102, 117);
INSERT INTO `sys_role_menu` VALUES (102, 500);
INSERT INTO `sys_role_menu` VALUES (102, 501);
INSERT INTO `sys_role_menu` VALUES (102, 1000);
INSERT INTO `sys_role_menu` VALUES (102, 1001);
INSERT INTO `sys_role_menu` VALUES (102, 1002);
INSERT INTO `sys_role_menu` VALUES (102, 1003);
INSERT INTO `sys_role_menu` VALUES (102, 1004);
INSERT INTO `sys_role_menu` VALUES (102, 1005);
INSERT INTO `sys_role_menu` VALUES (102, 1006);
INSERT INTO `sys_role_menu` VALUES (102, 1007);
INSERT INTO `sys_role_menu` VALUES (102, 1008);
INSERT INTO `sys_role_menu` VALUES (102, 1009);
INSERT INTO `sys_role_menu` VALUES (102, 1010);
INSERT INTO `sys_role_menu` VALUES (102, 1011);
INSERT INTO `sys_role_menu` VALUES (102, 1012);
INSERT INTO `sys_role_menu` VALUES (102, 1013);
INSERT INTO `sys_role_menu` VALUES (102, 1014);
INSERT INTO `sys_role_menu` VALUES (102, 1015);
INSERT INTO `sys_role_menu` VALUES (102, 1016);
INSERT INTO `sys_role_menu` VALUES (102, 1017);
INSERT INTO `sys_role_menu` VALUES (102, 1018);
INSERT INTO `sys_role_menu` VALUES (102, 1019);
INSERT INTO `sys_role_menu` VALUES (102, 1020);
INSERT INTO `sys_role_menu` VALUES (102, 1021);
INSERT INTO `sys_role_menu` VALUES (102, 1022);
INSERT INTO `sys_role_menu` VALUES (102, 1023);
INSERT INTO `sys_role_menu` VALUES (102, 1024);
INSERT INTO `sys_role_menu` VALUES (102, 1025);
INSERT INTO `sys_role_menu` VALUES (102, 1026);
INSERT INTO `sys_role_menu` VALUES (102, 1027);
INSERT INTO `sys_role_menu` VALUES (102, 1028);
INSERT INTO `sys_role_menu` VALUES (102, 1029);
INSERT INTO `sys_role_menu` VALUES (102, 1030);
INSERT INTO `sys_role_menu` VALUES (102, 1031);
INSERT INTO `sys_role_menu` VALUES (102, 1032);
INSERT INTO `sys_role_menu` VALUES (102, 1033);
INSERT INTO `sys_role_menu` VALUES (102, 1034);
INSERT INTO `sys_role_menu` VALUES (102, 1035);
INSERT INTO `sys_role_menu` VALUES (102, 1036);
INSERT INTO `sys_role_menu` VALUES (102, 1037);
INSERT INTO `sys_role_menu` VALUES (102, 1038);
INSERT INTO `sys_role_menu` VALUES (102, 1039);
INSERT INTO `sys_role_menu` VALUES (102, 1040);
INSERT INTO `sys_role_menu` VALUES (102, 1041);
INSERT INTO `sys_role_menu` VALUES (102, 1042);
INSERT INTO `sys_role_menu` VALUES (102, 1043);
INSERT INTO `sys_role_menu` VALUES (102, 1044);
INSERT INTO `sys_role_menu` VALUES (102, 1045);
INSERT INTO `sys_role_menu` VALUES (102, 1046);
INSERT INTO `sys_role_menu` VALUES (102, 1047);
INSERT INTO `sys_role_menu` VALUES (102, 1048);
INSERT INTO `sys_role_menu` VALUES (102, 1049);
INSERT INTO `sys_role_menu` VALUES (102, 1050);
INSERT INTO `sys_role_menu` VALUES (102, 1051);
INSERT INTO `sys_role_menu` VALUES (102, 1052);
INSERT INTO `sys_role_menu` VALUES (102, 1053);
INSERT INTO `sys_role_menu` VALUES (102, 1054);
INSERT INTO `sys_role_menu` VALUES (102, 1055);
INSERT INTO `sys_role_menu` VALUES (102, 1056);
INSERT INTO `sys_role_menu` VALUES (102, 1057);
INSERT INTO `sys_role_menu` VALUES (102, 1058);
INSERT INTO `sys_role_menu` VALUES (102, 1059);
INSERT INTO `sys_role_menu` VALUES (102, 1060);
INSERT INTO `sys_role_menu` VALUES (102, 2000);
INSERT INTO `sys_role_menu` VALUES (102, 2001);
INSERT INTO `sys_role_menu` VALUES (103, 1);
INSERT INTO `sys_role_menu` VALUES (103, 2);
INSERT INTO `sys_role_menu` VALUES (103, 3);
INSERT INTO `sys_role_menu` VALUES (103, 4);
INSERT INTO `sys_role_menu` VALUES (103, 100);
INSERT INTO `sys_role_menu` VALUES (103, 101);
INSERT INTO `sys_role_menu` VALUES (103, 102);
INSERT INTO `sys_role_menu` VALUES (103, 103);
INSERT INTO `sys_role_menu` VALUES (103, 104);
INSERT INTO `sys_role_menu` VALUES (103, 105);
INSERT INTO `sys_role_menu` VALUES (103, 106);
INSERT INTO `sys_role_menu` VALUES (103, 107);
INSERT INTO `sys_role_menu` VALUES (103, 108);
INSERT INTO `sys_role_menu` VALUES (103, 109);
INSERT INTO `sys_role_menu` VALUES (103, 110);
INSERT INTO `sys_role_menu` VALUES (103, 111);
INSERT INTO `sys_role_menu` VALUES (103, 112);
INSERT INTO `sys_role_menu` VALUES (103, 113);
INSERT INTO `sys_role_menu` VALUES (103, 114);
INSERT INTO `sys_role_menu` VALUES (103, 115);
INSERT INTO `sys_role_menu` VALUES (103, 116);
INSERT INTO `sys_role_menu` VALUES (103, 117);
INSERT INTO `sys_role_menu` VALUES (103, 500);
INSERT INTO `sys_role_menu` VALUES (103, 501);
INSERT INTO `sys_role_menu` VALUES (103, 1000);
INSERT INTO `sys_role_menu` VALUES (103, 1001);
INSERT INTO `sys_role_menu` VALUES (103, 1002);
INSERT INTO `sys_role_menu` VALUES (103, 1003);
INSERT INTO `sys_role_menu` VALUES (103, 1004);
INSERT INTO `sys_role_menu` VALUES (103, 1005);
INSERT INTO `sys_role_menu` VALUES (103, 1006);
INSERT INTO `sys_role_menu` VALUES (103, 1007);
INSERT INTO `sys_role_menu` VALUES (103, 1008);
INSERT INTO `sys_role_menu` VALUES (103, 1009);
INSERT INTO `sys_role_menu` VALUES (103, 1010);
INSERT INTO `sys_role_menu` VALUES (103, 1011);
INSERT INTO `sys_role_menu` VALUES (103, 1012);
INSERT INTO `sys_role_menu` VALUES (103, 1013);
INSERT INTO `sys_role_menu` VALUES (103, 1014);
INSERT INTO `sys_role_menu` VALUES (103, 1015);
INSERT INTO `sys_role_menu` VALUES (103, 1016);
INSERT INTO `sys_role_menu` VALUES (103, 1017);
INSERT INTO `sys_role_menu` VALUES (103, 1018);
INSERT INTO `sys_role_menu` VALUES (103, 1019);
INSERT INTO `sys_role_menu` VALUES (103, 1020);
INSERT INTO `sys_role_menu` VALUES (103, 1021);
INSERT INTO `sys_role_menu` VALUES (103, 1022);
INSERT INTO `sys_role_menu` VALUES (103, 1023);
INSERT INTO `sys_role_menu` VALUES (103, 1024);
INSERT INTO `sys_role_menu` VALUES (103, 1025);
INSERT INTO `sys_role_menu` VALUES (103, 1026);
INSERT INTO `sys_role_menu` VALUES (103, 1027);
INSERT INTO `sys_role_menu` VALUES (103, 1028);
INSERT INTO `sys_role_menu` VALUES (103, 1029);
INSERT INTO `sys_role_menu` VALUES (103, 1030);
INSERT INTO `sys_role_menu` VALUES (103, 1031);
INSERT INTO `sys_role_menu` VALUES (103, 1032);
INSERT INTO `sys_role_menu` VALUES (103, 1033);
INSERT INTO `sys_role_menu` VALUES (103, 1034);
INSERT INTO `sys_role_menu` VALUES (103, 1035);
INSERT INTO `sys_role_menu` VALUES (103, 1036);
INSERT INTO `sys_role_menu` VALUES (103, 1037);
INSERT INTO `sys_role_menu` VALUES (103, 1038);
INSERT INTO `sys_role_menu` VALUES (103, 1039);
INSERT INTO `sys_role_menu` VALUES (103, 1040);
INSERT INTO `sys_role_menu` VALUES (103, 1041);
INSERT INTO `sys_role_menu` VALUES (103, 1042);
INSERT INTO `sys_role_menu` VALUES (103, 1043);
INSERT INTO `sys_role_menu` VALUES (103, 1044);
INSERT INTO `sys_role_menu` VALUES (103, 1045);
INSERT INTO `sys_role_menu` VALUES (103, 1046);
INSERT INTO `sys_role_menu` VALUES (103, 1047);
INSERT INTO `sys_role_menu` VALUES (103, 1048);
INSERT INTO `sys_role_menu` VALUES (103, 1049);
INSERT INTO `sys_role_menu` VALUES (103, 1050);
INSERT INTO `sys_role_menu` VALUES (103, 1051);
INSERT INTO `sys_role_menu` VALUES (103, 1052);
INSERT INTO `sys_role_menu` VALUES (103, 1053);
INSERT INTO `sys_role_menu` VALUES (103, 1054);
INSERT INTO `sys_role_menu` VALUES (103, 1055);
INSERT INTO `sys_role_menu` VALUES (103, 1056);
INSERT INTO `sys_role_menu` VALUES (103, 1057);
INSERT INTO `sys_role_menu` VALUES (103, 1058);
INSERT INTO `sys_role_menu` VALUES (103, 1059);
INSERT INTO `sys_role_menu` VALUES (103, 1060);
INSERT INTO `sys_role_menu` VALUES (103, 2000);
INSERT INTO `sys_role_menu` VALUES (103, 2001);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(0) DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '' COMMENT '密码',
  `status` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime(0) DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 201, 'admin', '若依', '00', 'ry@163.com', '15888888888', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2024-08-28 15:49:09', 'admin', '2024-08-20 00:23:17', '', '2024-08-28 15:49:09', '管理员');
INSERT INTO `sys_user` VALUES (2, 202, 'ry', '若依', '00', 'ry@qq.com', '15666666666', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2024-08-20 00:24:24', 'admin', '2024-08-20 00:23:17', '', '2024-08-20 00:24:24', '测试员');
INSERT INTO `sys_user` VALUES (3, 202, 'admin_tangshan', '唐山管理员', '00', 'admin_ts@company.com', '13122222222', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2024-08-19 22:12:47', 'admin', '2024-08-19 22:12:47', '', NULL, '唐山市公司管理员');
INSERT INTO `sys_user` VALUES (4, 203, 'admin_qinhuangdao', '秦皇岛管理员', '00', 'admin_qhd@company.com', '13133333333', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2024-08-19 22:12:47', 'admin', '2024-08-19 22:12:47', '', NULL, '秦皇岛市公司管理员');
INSERT INTO `sys_user` VALUES (5, 204, 'admin_handan', '邯郸管理员', '00', 'admin_hd@company.com', '13144444444', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2024-08-19 22:12:47', 'admin', '2024-08-19 22:12:47', '', NULL, '邯郸市公司管理员');
INSERT INTO `sys_user` VALUES (6, 205, 'admin_xingtai', '邢台管理员', '00', 'admin_xt@company.com', '13155555555', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2024-08-19 22:12:47', 'admin', '2024-08-19 22:12:47', '', NULL, '邢台市公司管理员');
INSERT INTO `sys_user` VALUES (7, 206, 'admin_baoding', '保定管理员', '00', 'admin_bd@company.com', '13166666666', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2024-08-19 22:12:47', 'admin', '2024-08-19 22:12:47', '', NULL, '保定市公司管理员');
INSERT INTO `sys_user` VALUES (8, 207, 'admin_zhangjiakou', '张家口管理员', '00', 'admin_zjk@company.com', '13177777777', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2024-08-19 22:12:47', 'admin', '2024-08-19 22:12:47', '', NULL, '张家口市公司管理员');
INSERT INTO `sys_user` VALUES (9, 208, 'admin_chengde', '承德管理员', '00', 'admin_cd@company.com', '13188888888', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2024-08-19 22:12:47', 'admin', '2024-08-19 22:12:47', '', NULL, '承德市公司管理员');
INSERT INTO `sys_user` VALUES (10, 209, 'admin_cangzhou', '沧州管理员', '00', 'admin_cz@company.com', '13199999999', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2024-08-19 22:12:47', 'admin', '2024-08-19 22:12:47', '', NULL, '沧州市公司管理员');
INSERT INTO `sys_user` VALUES (11, 210, 'admin_langfang', '廊坊管理员', '00', 'admin_lf@company.com', '13200000000', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2024-08-19 22:12:47', 'admin', '2024-08-19 22:12:47', '', NULL, '廊坊市公司管理员');
INSERT INTO `sys_user` VALUES (12, 211, 'admin_hengshui', '衡水管理员', '00', 'admin_hs@company.com', '13211111111', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2024-08-19 22:12:47', 'admin', '2024-08-19 22:12:47', '', NULL, '衡水市公司管理员');

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` bigint(0) NOT NULL COMMENT '用户ID',
  `post_id` bigint(0) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '用户与岗位关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES (1, 1);
INSERT INTO `sys_user_post` VALUES (2, 2);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint(0) NOT NULL COMMENT '用户ID',
  `role_id` bigint(0) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '用户和角色关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (2, 100);
INSERT INTO `sys_user_role` VALUES (3, 100);
INSERT INTO `sys_user_role` VALUES (4, 102);
INSERT INTO `sys_user_role` VALUES (5, 103);
INSERT INTO `sys_user_role` VALUES (6, 100);
INSERT INTO `sys_user_role` VALUES (7, 2);
INSERT INTO `sys_user_role` VALUES (8, 101);
INSERT INTO `sys_user_role` VALUES (9, 103);
INSERT INTO `sys_user_role` VALUES (10, 100);

-- ----------------------------
-- Table structure for table
-- ----------------------------
DROP TABLE IF EXISTS `table`;
CREATE TABLE `table`  (
  `id` int unsigned NOT NULL COMMENT '表ID',
  `module_id` int(0) DEFAULT NULL COMMENT '属于的模块的ID',
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '表名',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL COMMENT '修改时间',
  `entity_related` int(0) NOT NULL COMMENT '是否与产品相关：0不相关、1相关',
  `is_total` int(0) NOT NULL COMMENT '是否为合计表：0不是、1是',
  `time_related` int(0) NOT NULL COMMENT '标识表头是否与时间相关：0不相关、1与建设时间相关、2与评估时间相关',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of table
-- ----------------------------
INSERT INTO `table` VALUES (1, 1, '建设进度', '2024-07-01 10:00:00', '2024-07-01 10:00:00', 1, 0, 1);
INSERT INTO `table` VALUES (2, 1, '单条造价（不含税）', '2024-07-02 11:00:00', '2024-07-02 11:00:00', 1, 0, 1);
INSERT INTO `table` VALUES (3, 1, '投资金额（不含税）', '2024-07-03 12:00:00', '2024-07-03 12:00:00', 1, 1, 1);
INSERT INTO `table` VALUES (4, 1, '投资金额（含税）', '2024-07-04 13:00:00', '2024-07-04 13:00:00', 0, 0, 1);
INSERT INTO `table` VALUES (6, 2, '每年新增投入道路条数', '2024-07-06 15:00:00', '2024-07-06 15:00:00', 1, 0, 2);
INSERT INTO `table` VALUES (7, 2, '每年废弃道路条数', '2024-07-07 16:00:00', '2024-07-07 16:00:00', 1, 0, 2);
INSERT INTO `table` VALUES (8, 2, '年底投入使用的道路条数', '2024-07-08 17:00:00', '2024-07-08 17:00:00', 1, 0, 2);
INSERT INTO `table` VALUES (9, 2, '单条售价（不含税）（MP009）', '2024-07-08 17:00:00', '2024-07-08 17:00:00', 1, 0, 2);
INSERT INTO `table` VALUES (10, 2, '收入（不含税）(MP010)', '2024-07-08 17:00:00', '2024-07-08 17:00:00', 1, 1, 2);
INSERT INTO `table` VALUES (11, 2, '收入（含税）(MP011)', '2024-07-08 17:00:00', '2024-07-08 17:00:00', 1, 0, 2);
INSERT INTO `table` VALUES (12, 5, '道路项目流水数据   (单位：万元)-含税', '2024-07-08 17:00:00', '2024-07-08 17:00:00', 0, 0, 1);
INSERT INTO `table` VALUES (13, 4, '道路折旧支出辅助计算表-不含税（单位：万元）', '2024-08-20 18:32:42', '2024-08-20 18:32:46', 0, 1, 2);
INSERT INTO `table` VALUES (14, 3, '路面后期维护费用', '2024-08-21 10:38:37', '2024-08-21 10:38:39', 1, 0, 2);
INSERT INTO `table` VALUES (15, 3, '路面保养费用', '2024-08-21 10:38:57', '2024-08-21 10:39:02', 1, 0, 2);
INSERT INTO `table` VALUES (16, 3, '人工服务费用', '2024-08-21 10:39:35', '2024-08-21 10:39:37', 1, 0, 2);
INSERT INTO `table` VALUES (17, 3, '其他费用', '2024-08-21 10:39:52', '2024-08-21 10:40:03', 1, 0, 2);
INSERT INTO `table` VALUES (18, 3, '噪音污染补偿', '2024-08-21 10:40:18', '2024-08-21 10:40:21', 1, 0, 2);
INSERT INTO `table` VALUES (19, 3, '宣传推广费用', '2024-08-21 10:40:34', '2024-08-21 10:40:36', 1, 0, 2);
INSERT INTO `table` VALUES (20, 3, '支出明细总合计', '2024-08-24 21:09:50', '2024-08-24 21:09:52', 1, 1, 2);
INSERT INTO `table` VALUES (21, 7, '基准库', '2024-08-26 12:39:07', '2024-08-26 12:39:09', 1, 0, 0);
INSERT INTO `table` VALUES (22, 6, '项目基本概况及评估结果', '2024-08-24 15:54:45', '2024-08-24 15:54:48', 1, 0, 1);

-- ----------------------------
-- Table structure for table_attribute
-- ----------------------------
DROP TABLE IF EXISTS `table_attribute`;
CREATE TABLE `table_attribute`  (
  `id` int unsigned NOT NULL,
  `attribute_id` int unsigned NOT NULL,
  `table_id` int unsigned NOT NULL,
  `entity_related` int(0) NOT NULL COMMENT '标识属性是否和实体相关：0不相关、1相关,如果不相关则不作为列名',
  `project_related` int(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 91 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of table_attribute
-- ----------------------------
INSERT INTO `table_attribute` VALUES (1, 6, 1, 1, 1);
INSERT INTO `table_attribute` VALUES (2, 8, 1, 1, 1);
INSERT INTO `table_attribute` VALUES (3, 9, 1, 1, 1);
INSERT INTO `table_attribute` VALUES (4, 6, 2, 1, 1);
INSERT INTO `table_attribute` VALUES (5, 8, 2, 1, 1);
INSERT INTO `table_attribute` VALUES (6, 9, 2, 1, 1);
INSERT INTO `table_attribute` VALUES (7, 6, 3, 1, 1);
INSERT INTO `table_attribute` VALUES (8, 8, 3, 1, 1);
INSERT INTO `table_attribute` VALUES (9, 9, 3, 1, 1);
INSERT INTO `table_attribute` VALUES (10, 6, 4, 1, 1);
INSERT INTO `table_attribute` VALUES (11, 8, 4, 1, 1);
INSERT INTO `table_attribute` VALUES (12, 9, 4, 1, 1);
INSERT INTO `table_attribute` VALUES (13, 6, 12, 1, 1);
INSERT INTO `table_attribute` VALUES (14, 10, 12, 1, 1);
INSERT INTO `table_attribute` VALUES (15, 11, 12, 0, 0);
INSERT INTO `table_attribute` VALUES (16, 12, 12, 0, 0);
INSERT INTO `table_attribute` VALUES (17, 13, 13, 0, 1);
INSERT INTO `table_attribute` VALUES (18, 14, 13, 0, 1);
INSERT INTO `table_attribute` VALUES (19, 6, 13, 1, 1);
INSERT INTO `table_attribute` VALUES (20, 8, 13, 1, 1);
INSERT INTO `table_attribute` VALUES (21, 9, 13, 1, 1);
INSERT INTO `table_attribute` VALUES (22, 6, 6, 1, 1);
INSERT INTO `table_attribute` VALUES (23, 8, 6, 1, 1);
INSERT INTO `table_attribute` VALUES (24, 9, 6, 1, 1);
INSERT INTO `table_attribute` VALUES (25, 6, 7, 1, 1);
INSERT INTO `table_attribute` VALUES (26, 8, 7, 1, 1);
INSERT INTO `table_attribute` VALUES (27, 9, 7, 1, 1);
INSERT INTO `table_attribute` VALUES (28, 6, 8, 1, 1);
INSERT INTO `table_attribute` VALUES (29, 8, 8, 1, 1);
INSERT INTO `table_attribute` VALUES (30, 9, 8, 1, 1);
INSERT INTO `table_attribute` VALUES (31, 6, 9, 1, 1);
INSERT INTO `table_attribute` VALUES (32, 8, 9, 1, 1);
INSERT INTO `table_attribute` VALUES (33, 9, 9, 1, 1);
INSERT INTO `table_attribute` VALUES (34, 6, 10, 1, 1);
INSERT INTO `table_attribute` VALUES (35, 8, 10, 1, 1);
INSERT INTO `table_attribute` VALUES (36, 9, 10, 1, 1);
INSERT INTO `table_attribute` VALUES (37, 6, 11, 1, 1);
INSERT INTO `table_attribute` VALUES (38, 8, 11, 1, 1);
INSERT INTO `table_attribute` VALUES (39, 9, 11, 1, 1);
INSERT INTO `table_attribute` VALUES (40, 6, 14, 1, 1);
INSERT INTO `table_attribute` VALUES (41, 8, 14, 1, 1);
INSERT INTO `table_attribute` VALUES (42, 9, 14, 1, 1);
INSERT INTO `table_attribute` VALUES (43, 6, 15, 1, 1);
INSERT INTO `table_attribute` VALUES (44, 8, 15, 1, 1);
INSERT INTO `table_attribute` VALUES (45, 9, 15, 1, 1);
INSERT INTO `table_attribute` VALUES (46, 6, 16, 1, 1);
INSERT INTO `table_attribute` VALUES (47, 8, 16, 1, 1);
INSERT INTO `table_attribute` VALUES (48, 9, 16, 1, 1);
INSERT INTO `table_attribute` VALUES (49, 6, 17, 1, 1);
INSERT INTO `table_attribute` VALUES (50, 8, 17, 1, 1);
INSERT INTO `table_attribute` VALUES (51, 9, 17, 1, 1);
INSERT INTO `table_attribute` VALUES (52, 6, 18, 1, 1);
INSERT INTO `table_attribute` VALUES (53, 8, 18, 1, 1);
INSERT INTO `table_attribute` VALUES (54, 9, 18, 1, 1);
INSERT INTO `table_attribute` VALUES (55, 6, 19, 1, 1);
INSERT INTO `table_attribute` VALUES (56, 8, 19, 1, 1);
INSERT INTO `table_attribute` VALUES (57, 9, 19, 1, 1);
INSERT INTO `table_attribute` VALUES (58, 6, 20, 1, 1);
INSERT INTO `table_attribute` VALUES (59, 8, 20, 1, 1);
INSERT INTO `table_attribute` VALUES (60, 9, 20, 1, 1);
INSERT INTO `table_attribute` VALUES (61, 35, 21, 1, 0);
INSERT INTO `table_attribute` VALUES (62, 36, 21, 1, 0);
INSERT INTO `table_attribute` VALUES (63, 38, 21, 1, 0);
INSERT INTO `table_attribute` VALUES (64, 39, 21, 1, 0);
INSERT INTO `table_attribute` VALUES (65, 40, 21, 1, 0);
INSERT INTO `table_attribute` VALUES (66, 42, 21, 1, 0);
INSERT INTO `table_attribute` VALUES (67, 44, 21, 0, 0);
INSERT INTO `table_attribute` VALUES (68, 45, 21, 0, 0);
INSERT INTO `table_attribute` VALUES (69, 46, 10, 0, 1);
INSERT INTO `table_attribute` VALUES (70, 8, 12, 1, 1);
INSERT INTO `table_attribute` VALUES (71, 47, 22, 0, NULL);
INSERT INTO `table_attribute` VALUES (72, 48, 22, 0, NULL);
INSERT INTO `table_attribute` VALUES (73, 49, 22, 0, NULL);
INSERT INTO `table_attribute` VALUES (74, 50, 22, 0, NULL);
INSERT INTO `table_attribute` VALUES (75, 51, 22, 0, NULL);
INSERT INTO `table_attribute` VALUES (76, 52, 22, 0, NULL);
INSERT INTO `table_attribute` VALUES (77, 53, 22, 0, NULL);
INSERT INTO `table_attribute` VALUES (78, 54, 22, 0, NULL);
INSERT INTO `table_attribute` VALUES (79, 55, 22, 0, NULL);
INSERT INTO `table_attribute` VALUES (80, 56, 22, 0, NULL);
INSERT INTO `table_attribute` VALUES (81, 57, 22, 0, NULL);
INSERT INTO `table_attribute` VALUES (82, 58, 22, 0, NULL);
INSERT INTO `table_attribute` VALUES (83, 59, 22, 0, NULL);
INSERT INTO `table_attribute` VALUES (84, 60, 22, 0, NULL);
INSERT INTO `table_attribute` VALUES (85, 61, 22, 0, NULL);
INSERT INTO `table_attribute` VALUES (86, 62, 22, 0, NULL);
INSERT INTO `table_attribute` VALUES (87, 63, 22, 0, NULL);
INSERT INTO `table_attribute` VALUES (88, 64, 22, 0, NULL);
INSERT INTO `table_attribute` VALUES (89, 65, 22, 0, NULL);
INSERT INTO `table_attribute` VALUES (90, 66, 22, 0, NULL);

-- ----------------------------
-- Table structure for table_entity_edit
-- ----------------------------
DROP TABLE IF EXISTS `table_entity_edit`;
CREATE TABLE `table_entity_edit`  (
  `id` int unsigned NOT NULL COMMENT '主键ID',
  `table_id` int(0) NOT NULL COMMENT '表格ID',
  `entity_id` int(0) NOT NULL COMMENT '实体ID',
  `is_edit` int(0) NOT NULL COMMENT '是否可以编辑',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 202 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

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

-- ----------------------------
-- Table structure for template
-- ----------------------------
DROP TABLE IF EXISTS `template`;
CREATE TABLE `template`  (
  `id` int unsigned NOT NULL COMMENT '模板ID',
  `template_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '模板名称',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of template
-- ----------------------------
INSERT INTO `template` VALUES (1, '类型一模板', '2024-07-18 10:00:00', '2024-07-18 10:00:00');
INSERT INTO `template` VALUES (2, '类型二模板', '2024-07-18 11:00:00', '2024-07-18 11:00:00');
INSERT INTO `template` VALUES (3, '类型三模板', '2024-07-18 12:00:00', '2024-07-18 12:00:00');
INSERT INTO `template` VALUES (4, '类型四模板', '2024-07-18 13:00:00', '2024-07-18 13:00:00');
INSERT INTO `template` VALUES (5, '类型五模板', '2024-07-18 14:00:00', '2024-07-18 14:00:00');

-- ----------------------------
-- Table structure for unit_personnel_info
-- ----------------------------
DROP TABLE IF EXISTS `unit_personnel_info`;
CREATE TABLE `unit_personnel_info`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `company_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '市公司',
  `subordinate_unit_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '部门',
  `filler` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '登录人',
  `filler_contact` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '登录人手机号',
  `project_responsible_unit` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '主责部门',
  `project_responsible_person` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '主要责任人',
  `project_responsible_contact` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '主要责任人手机号',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of unit_personnel_info
-- ----------------------------
INSERT INTO `unit_personnel_info` VALUES (5, '市公司E', '部门E1', '郑十一', '12345678905', '主责部门E1', '王十二', '10987654325', '2024-07-18 14:00:00', '2024-07-18 14:00:00');
INSERT INTO `unit_personnel_info` VALUES (4, '市公司D', '部门D1', '周九', '12345678904', '主责部门D1', '吴十', '10987654324', '2024-07-18 13:00:00', '2024-07-18 13:00:00');
INSERT INTO `unit_personnel_info` VALUES (3, '市公司C', '部门C1', '陈七', '12345678903', '主责部门C1', '孙八', '10987654323', '2024-07-18 12:00:00', '2024-07-18 12:00:00');
INSERT INTO `unit_personnel_info` VALUES (2, '市公司B', '部门B1', '王五', '12345678902', '主责部门B1', '赵六', '10987654322', '2024-07-18 11:00:00', '2024-07-18 11:00:00');
INSERT INTO `unit_personnel_info` VALUES (1, '市公司A', '部门A1', '张三', '12345678901', '主责部门A1', '李四', '10987654321', '2024-07-18 10:00:00', '2024-07-18 10:00:00');

-- ----------------------------
-- Table structure for user_personnel
-- ----------------------------
DROP TABLE IF EXISTS `user_personnel`;
CREATE TABLE `user_personnel`  (
  `sys_user_id` int(0) NOT NULL,
  `personnel_user_id` int(0) DEFAULT NULL,
  PRIMARY KEY (`sys_user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_personnel
-- ----------------------------
INSERT INTO `user_personnel` VALUES (1, 1);
INSERT INTO `user_personnel` VALUES (2, 2);
INSERT INTO `user_personnel` VALUES (3, 3);
INSERT INTO `user_personnel` VALUES (4, 4);
INSERT INTO `user_personnel` VALUES (5, 5);

-- ----------------------------
-- Table structure for value_varchar
-- ----------------------------
DROP TABLE IF EXISTS `value_varchar`;
CREATE TABLE `value_varchar`  (
  `id` int unsigned NOT NULL COMMENT '主键ID（但感觉没啥用）',
  `project_info_id` int(0) DEFAULT NULL COMMENT '对应的项目ID',
  `project_entity_id` int(0) DEFAULT NULL COMMENT '对应的项目实体ID',
  `table_id` int(0) NOT NULL COMMENT '属于的表的ID',
  `attribute_id` int(0) NOT NULL COMMENT '属于的属性的ID',
  `value` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT 'varchar类型的属性值',
  `equation` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '与每一行属性绑定的公式',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 655 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of value_varchar
-- ----------------------------
INSERT INTO `value_varchar` VALUES (13, 6, NULL, 12, 6, '流水合计', 'sum_row', '2024-08-17 12:08:27', '2024-08-17 12:08:29');
INSERT INTO `value_varchar` VALUES (14, 6, NULL, 12, 6, '投入类流水', 'sum_row', '2024-08-17 12:12:59', '2024-08-17 12:13:01');
INSERT INTO `value_varchar` VALUES (15, 6, NULL, 12, 6, '成本类流水', 'sum_row', '2024-08-17 12:13:31', '2024-08-17 12:13:34');
INSERT INTO `value_varchar` VALUES (16, 6, NULL, 12, 6, '审定税支出', 'mul 13 19', '2024-08-17 12:13:53', '2024-08-17 12:13:55');
INSERT INTO `value_varchar` VALUES (17, 6, NULL, 12, 6, '累计净流水', 'sub 13 16', '2024-08-17 12:14:10', '2024-08-17 12:14:12');
INSERT INTO `value_varchar` VALUES (18, 6, NULL, 12, 6, '累计净流水现值', 'mul 17 20', '2024-08-17 12:14:26', '2024-08-17 12:14:27');
INSERT INTO `value_varchar` VALUES (19, 6, NULL, 12, 11, '0.055', NULL, '2024-08-18 10:08:24', '2024-08-18 10:08:27');
INSERT INTO `value_varchar` VALUES (20, 6, NULL, 12, 12, '0.25', NULL, '2024-08-18 10:08:47', '2024-08-18 10:08:50');
INSERT INTO `value_varchar` VALUES (21, 1, NULL, 13, 13, NULL, NULL, '2024-08-20 18:40:04', '2024-08-20 18:40:08');
INSERT INTO `value_varchar` VALUES (22, 1, NULL, 13, 14, '\'3,5,6,7,8,10,15,20,25,30\'', NULL, '2024-08-20 18:40:52', '2024-08-20 18:40:54');
INSERT INTO `value_varchar` VALUES (23, 1, NULL, 13, 15, NULL, NULL, '2024-08-20 18:44:41', '2024-08-20 18:44:44');
INSERT INTO `value_varchar` VALUES (24, 1, NULL, 13, 16, NULL, NULL, '2024-08-20 18:45:03', '2024-08-20 18:45:07');
INSERT INTO `value_varchar` VALUES (25, 1, NULL, 13, 16, NULL, NULL, '2024-08-20 18:45:22', '2024-08-20 18:45:24');
INSERT INTO `value_varchar` VALUES (104, 6, NULL, 13, 13, '北京路', NULL, '2024-08-21 21:23:57', '2024-08-21 22:02:55');
INSERT INTO `value_varchar` VALUES (105, 6, NULL, 13, 14, '7', NULL, '2024-08-21 21:23:57', '2024-08-21 22:02:55');
INSERT INTO `value_varchar` VALUES (112, 6, 28, 13, 6, '道路折旧支出合计', NULL, '2024-08-21 21:38:54', '2024-08-21 22:02:55');
INSERT INTO `value_varchar` VALUES (113, 6, 28, 13, 8, '[, , , , , , , ]', NULL, '2024-08-21 21:38:54', '2024-08-21 22:02:55');
INSERT INTO `value_varchar` VALUES (114, 6, 28, 13, 9, '', NULL, '2024-08-21 21:38:54', '2024-08-21 22:02:55');
INSERT INTO `value_varchar` VALUES (117, 6, 26, 13, 6, '当年转资月份', NULL, '2024-08-21 21:38:54', '2024-08-21 22:02:55');
INSERT INTO `value_varchar` VALUES (118, 6, 26, 13, 8, '[3, 4, 5, , , , , ]', NULL, '2024-08-21 21:38:54', '2024-08-21 22:02:55');
INSERT INTO `value_varchar` VALUES (119, 6, 26, 13, 9, '', NULL, '2024-08-21 21:38:54', '2024-08-21 22:02:55');
INSERT INTO `value_varchar` VALUES (122, 6, 27, 13, 6, '各年建设类设备使用规模', NULL, '2024-08-21 21:38:54', '2024-08-21 22:02:55');
INSERT INTO `value_varchar` VALUES (123, 6, 27, 13, 8, '[428, 725, 172, , , , , ]', NULL, '2024-08-21 21:38:54', '2024-08-21 22:02:55');
INSERT INTO `value_varchar` VALUES (124, 6, 27, 13, 9, '', NULL, '2024-08-21 21:38:54', '2024-08-21 22:02:55');
INSERT INTO `value_varchar` VALUES (127, 6, 16, 13, 6, '第一年投资在各年的折旧', NULL, '2024-08-21 21:38:54', '2024-08-21 22:02:55');
INSERT INTO `value_varchar` VALUES (128, 6, 16, 13, 8, '[, , , , , , , ]', NULL, '2024-08-21 21:38:54', '2024-08-21 22:02:55');
INSERT INTO `value_varchar` VALUES (129, 6, 16, 13, 9, '', NULL, '2024-08-21 21:38:54', '2024-08-21 22:02:55');
INSERT INTO `value_varchar` VALUES (132, 6, 17, 13, 6, '第二年投资在各年的折旧', NULL, '2024-08-21 21:38:54', '2024-08-21 22:02:55');
INSERT INTO `value_varchar` VALUES (133, 6, 17, 13, 8, '[, , , , , , , ]', NULL, '2024-08-21 21:38:54', '2024-08-21 22:02:55');
INSERT INTO `value_varchar` VALUES (134, 6, 17, 13, 9, '', NULL, '2024-08-21 21:38:54', '2024-08-21 22:02:55');
INSERT INTO `value_varchar` VALUES (137, 6, 18, 13, 6, '第三年投资在各年的折旧', NULL, '2024-08-21 21:38:54', '2024-08-21 22:02:55');
INSERT INTO `value_varchar` VALUES (138, 6, 18, 13, 8, '[, , , , , , , ]', NULL, '2024-08-21 21:38:54', '2024-08-21 22:02:55');
INSERT INTO `value_varchar` VALUES (139, 6, 18, 13, 9, '', NULL, '2024-08-21 21:38:54', '2024-08-21 22:02:55');
INSERT INTO `value_varchar` VALUES (143, 6, 1, 1, 6, '双向双车道道路 310101', NULL, '2024-08-24 23:22:31', '2024-08-28 15:54:22');
INSERT INTO `value_varchar` VALUES (144, 6, 1, 1, 8, '[200, 260, 198, 200]', NULL, '2024-08-24 23:22:31', '2024-08-28 15:54:22');
INSERT INTO `value_varchar` VALUES (145, 6, 1, 1, 9, '858.0', NULL, '2024-08-24 23:22:31', '2024-08-28 15:54:23');
INSERT INTO `value_varchar` VALUES (149, 6, 1, 2, 6, '双向双车道道路 310101', NULL, '2024-08-24 23:22:31', '2024-08-28 15:54:22');
INSERT INTO `value_varchar` VALUES (150, 6, 1, 2, 8, '[6000, 6000, 6000, 4000]', NULL, '2024-08-24 23:22:31', '2024-08-28 15:54:22');
INSERT INTO `value_varchar` VALUES (151, 6, 1, 2, 9, '', NULL, '2024-08-24 23:22:31', '2024-08-28 15:54:22');
INSERT INTO `value_varchar` VALUES (155, 6, 1, 3, 6, '双向双车道道路 310101', NULL, '2024-08-24 23:22:31', '2024-08-28 15:54:22');
INSERT INTO `value_varchar` VALUES (156, 6, 1, 3, 8, '[1200000.0, 1560000.0, 1188000.0, 800000.0]', NULL, '2024-08-24 23:22:31', '2024-08-28 15:54:22');
INSERT INTO `value_varchar` VALUES (157, 6, 1, 3, 9, '4748000.0', NULL, '2024-08-24 23:22:31', '2024-08-28 15:54:23');
INSERT INTO `value_varchar` VALUES (158, 6, 11, 3, 6, '6%税率投资额 ', NULL, '2024-08-24 23:22:31', '2024-08-28 15:54:22');
INSERT INTO `value_varchar` VALUES (159, 6, 11, 3, 8, '[80000, 70000, 50000, 50000]', NULL, '2024-08-24 23:22:31', '2024-08-28 15:54:22');
INSERT INTO `value_varchar` VALUES (160, 6, 11, 3, 9, '250000.0', NULL, '2024-08-24 23:22:31', '2024-08-28 15:54:23');
INSERT INTO `value_varchar` VALUES (161, 6, 12, 3, 6, '9%税率投资额 ', NULL, '2024-08-24 23:22:31', '2024-08-28 15:54:22');
INSERT INTO `value_varchar` VALUES (162, 6, 12, 3, 8, '[2300000, 750000, 560000, 600000]', NULL, '2024-08-24 23:22:31', '2024-08-28 15:54:22');
INSERT INTO `value_varchar` VALUES (163, 6, 12, 3, 9, '4210000.0', NULL, '2024-08-24 23:22:31', '2024-08-28 15:54:23');
INSERT INTO `value_varchar` VALUES (164, 6, 13, 3, 6, '13%税率投资额', NULL, '2024-08-24 23:22:31', '2024-08-28 15:54:22');
INSERT INTO `value_varchar` VALUES (165, 6, 13, 3, 8, '[-880000.0, 1020000.0, 833000.0, 1470000.0]', NULL, '2024-08-24 23:22:31', '2024-08-28 15:54:23');
INSERT INTO `value_varchar` VALUES (166, 6, 13, 3, 9, '2443000.0', NULL, '2024-08-24 23:22:31', '2024-08-28 15:54:23');
INSERT INTO `value_varchar` VALUES (167, 6, 14, 3, 6, '不含税投资额合计', NULL, '2024-08-24 23:22:31', '2024-08-28 15:54:22');
INSERT INTO `value_varchar` VALUES (168, 6, 14, 3, 8, '[1500000.0, 1840000.0, 1443000.0, 2120000.0]', NULL, '2024-08-24 23:22:31', '2024-08-28 15:54:23');
INSERT INTO `value_varchar` VALUES (169, 6, 14, 3, 9, '6903000.0', NULL, '2024-08-24 23:22:31', '2024-08-28 15:54:23');
INSERT INTO `value_varchar` VALUES (170, 6, 11, 4, 6, '6%税率投资额 ', NULL, '2024-08-24 23:22:31', '2024-08-28 15:54:22');
INSERT INTO `value_varchar` VALUES (171, 6, 11, 4, 8, '[84799.99, 74199.99, 52999.996, 52999.996]', NULL, '2024-08-24 23:22:31', '2024-08-28 15:54:23');
INSERT INTO `value_varchar` VALUES (172, 6, 11, 4, 9, '264999.97', NULL, '2024-08-24 23:22:31', '2024-08-28 15:54:23');
INSERT INTO `value_varchar` VALUES (173, 6, 12, 4, 6, '9%税率投资额 ', NULL, '2024-08-24 23:22:31', '2024-08-28 15:54:22');
INSERT INTO `value_varchar` VALUES (174, 6, 12, 4, 8, '[2507000.0, 817500.0, 610400.0, 654000.0]', NULL, '2024-08-24 23:22:31', '2024-08-28 15:54:23');
INSERT INTO `value_varchar` VALUES (175, 6, 12, 4, 9, '4588900.0', NULL, '2024-08-24 23:22:31', '2024-08-28 15:54:23');
INSERT INTO `value_varchar` VALUES (176, 6, 13, 4, 6, '13%税率投资额', NULL, '2024-08-24 23:22:31', '2024-08-28 15:54:22');
INSERT INTO `value_varchar` VALUES (177, 6, 13, 4, 8, '[-994400.0, 1152600.0, 941290.0, 1661100.0]', NULL, '2024-08-24 23:22:31', '2024-08-28 15:54:23');
INSERT INTO `value_varchar` VALUES (178, 6, 13, 4, 9, '2760590.0', NULL, '2024-08-24 23:22:31', '2024-08-28 15:54:23');
INSERT INTO `value_varchar` VALUES (179, 6, 15, 4, 6, '含税投资额合计', NULL, '2024-08-24 23:22:31', '2024-08-28 15:54:22');
INSERT INTO `value_varchar` VALUES (180, 6, 15, 4, 8, '[1597400.0, 2044300.0, 1604690.0, 2368100.0]', NULL, '2024-08-24 23:22:31', '2024-08-28 15:54:23');
INSERT INTO `value_varchar` VALUES (181, 6, 15, 4, 9, '7614490.0', NULL, '2024-08-24 23:22:31', '2024-08-28 15:54:23');
INSERT INTO `value_varchar` VALUES (200, 6, 7, 1, 6, '单向双车道道路 310201', NULL, '2024-08-25 17:42:00', '2024-08-26 20:09:48');
INSERT INTO `value_varchar` VALUES (201, 6, 7, 1, 8, '[150, 140, 120, 220]', NULL, '2024-08-25 17:42:00', '2024-08-26 20:09:48');
INSERT INTO `value_varchar` VALUES (202, 6, 7, 1, 9, '630.0', NULL, '2024-08-25 17:42:00', '2024-08-28 15:54:23');
INSERT INTO `value_varchar` VALUES (203, 6, 7, 2, 6, '单向双车道道路 310201', NULL, '2024-08-25 17:42:00', '2024-08-26 20:09:48');
INSERT INTO `value_varchar` VALUES (204, 6, 7, 2, 8, '[2000, 2000, 2125, 6000]', NULL, '2024-08-25 17:42:00', '2024-08-26 20:09:48');
INSERT INTO `value_varchar` VALUES (205, 6, 7, 2, 9, '', NULL, '2024-08-25 17:42:01', '2024-08-26 20:09:48');
INSERT INTO `value_varchar` VALUES (206, 6, 7, 3, 6, '单向双车道道路 310201', NULL, '2024-08-25 17:42:01', '2024-08-26 20:09:48');
INSERT INTO `value_varchar` VALUES (207, 6, 7, 3, 8, '[300000.0, 280000.0, 255000.0, 1320000.0]', NULL, '2024-08-25 17:42:01', '2024-08-28 15:54:23');
INSERT INTO `value_varchar` VALUES (208, 6, 7, 3, 9, '2155000.0', NULL, '2024-08-25 17:42:01', '2024-08-28 15:54:23');
INSERT INTO `value_varchar` VALUES (218, NULL, 1, 21, 35, '11.01', NULL, '2024-08-26 13:15:15', '2024-08-26 13:15:17');
INSERT INTO `value_varchar` VALUES (219, NULL, 2, 21, 36, '12.21', NULL, '2024-08-26 13:16:31', '2024-08-26 13:16:37');
INSERT INTO `value_varchar` VALUES (220, NULL, 3, 21, 38, '37.69', NULL, '2024-08-26 13:17:37', '2024-08-26 13:17:40');
INSERT INTO `value_varchar` VALUES (221, NULL, 4, 21, 42, '1.43', NULL, '2024-08-26 13:18:20', '2024-08-26 13:18:22');
INSERT INTO `value_varchar` VALUES (222, NULL, NULL, 21, 44, '0.0219', NULL, '2024-08-26 13:18:53', '2024-08-26 13:18:56');
INSERT INTO `value_varchar` VALUES (223, NULL, NULL, 21, 45, '0.0268', NULL, '2024-08-26 13:19:07', '2024-08-26 13:19:09');
INSERT INTO `value_varchar` VALUES (422, 6, 1, 6, 6, '双向双车道道路 310101', NULL, '2024-08-26 15:16:29', '2024-08-28 15:48:46');
INSERT INTO `value_varchar` VALUES (423, 6, 1, 6, 8, '[798, 0, 0, , , , , ]', NULL, '2024-08-26 15:16:29', '2024-08-28 15:48:46');
INSERT INTO `value_varchar` VALUES (424, 6, 1, 6, 9, '', NULL, '2024-08-26 15:16:29', '2024-08-28 15:48:46');
INSERT INTO `value_varchar` VALUES (425, 6, 7, 6, 6, '单向双车道道路 310201', NULL, '2024-08-26 15:16:29', '2024-08-26 18:58:25');
INSERT INTO `value_varchar` VALUES (426, 6, 7, 6, 8, '[650, 450, 350, , , , , ]', NULL, '2024-08-26 15:16:29', '2024-08-26 18:58:25');
INSERT INTO `value_varchar` VALUES (427, 6, 7, 6, 9, '', NULL, '2024-08-26 15:16:29', '2024-08-26 18:58:25');
INSERT INTO `value_varchar` VALUES (431, 6, 1, 7, 6, '双向双车道道路 310101', NULL, '2024-08-26 15:16:29', '2024-08-28 15:48:46');
INSERT INTO `value_varchar` VALUES (432, 6, 1, 7, 8, '[0, 20, 50, , , , , ]', NULL, '2024-08-26 15:16:29', '2024-08-28 15:48:46');
INSERT INTO `value_varchar` VALUES (433, 6, 1, 7, 9, '', NULL, '2024-08-26 15:16:29', '2024-08-28 15:48:46');
INSERT INTO `value_varchar` VALUES (434, 6, 7, 7, 6, '单向双车道道路 310201', NULL, '2024-08-26 15:16:29', '2024-08-26 18:58:25');
INSERT INTO `value_varchar` VALUES (435, 6, 7, 7, 8, '[0, 50, 30, , , , , ]', NULL, '2024-08-26 15:16:29', '2024-08-26 18:58:25');
INSERT INTO `value_varchar` VALUES (436, 6, 7, 7, 9, '', NULL, '2024-08-26 15:16:29', '2024-08-26 18:58:25');
INSERT INTO `value_varchar` VALUES (440, 6, 1, 8, 6, '双向双车道道路 310101', NULL, '2024-08-26 15:16:29', '2024-08-28 15:48:46');
INSERT INTO `value_varchar` VALUES (441, 6, 1, 8, 8, '[798.0, 778.0, 728.0]', NULL, '2024-08-26 15:16:29', '2024-08-28 15:48:48');
INSERT INTO `value_varchar` VALUES (442, 6, 1, 8, 9, '', NULL, '2024-08-26 15:16:29', '2024-08-28 15:48:46');
INSERT INTO `value_varchar` VALUES (443, 6, 7, 8, 6, '单向双车道道路 310201', NULL, '2024-08-26 15:16:29', '2024-08-26 18:58:25');
INSERT INTO `value_varchar` VALUES (444, 6, 7, 8, 8, '[650.0, 1050.0, 1370.0]', NULL, '2024-08-26 15:16:29', '2024-08-28 15:48:48');
INSERT INTO `value_varchar` VALUES (445, 6, 7, 8, 9, '', NULL, '2024-08-26 15:16:29', '2024-08-26 18:58:25');
INSERT INTO `value_varchar` VALUES (449, 6, 1, 9, 6, '双向双车道道路 310101', NULL, '2024-08-26 15:16:29', '2024-08-28 15:48:46');
INSERT INTO `value_varchar` VALUES (450, 6, 1, 9, 8, '[400, 395, 385, , , , , ]', NULL, '2024-08-26 15:16:29', '2024-08-28 15:48:46');
INSERT INTO `value_varchar` VALUES (451, 6, 1, 9, 9, '', NULL, '2024-08-26 15:16:29', '2024-08-28 15:48:46');
INSERT INTO `value_varchar` VALUES (452, 6, 7, 9, 6, '单向双车道道路 310201', NULL, '2024-08-26 15:16:29', '2024-08-26 18:58:25');
INSERT INTO `value_varchar` VALUES (453, 6, 7, 9, 8, '[500, 400, 350, , , , , ]', NULL, '2024-08-26 15:16:29', '2024-08-26 18:58:25');
INSERT INTO `value_varchar` VALUES (454, 6, 7, 9, 9, '', NULL, '2024-08-26 15:16:29', '2024-08-26 18:58:25');
INSERT INTO `value_varchar` VALUES (458, 6, 1, 10, 6, '双向双车道道路 310101', NULL, '2024-08-26 15:16:29', '2024-08-28 15:48:46');
INSERT INTO `value_varchar` VALUES (459, 6, 1, 10, 8, '[851200.0, 3750920.0, 3517360.0]', NULL, '2024-08-26 15:16:29', '2024-08-28 15:48:48');
INSERT INTO `value_varchar` VALUES (460, 6, 1, 10, 9, '', NULL, '2024-08-26 15:16:29', '2024-08-28 15:48:46');
INSERT INTO `value_varchar` VALUES (461, 6, 7, 10, 6, '单向双车道道路 310201', NULL, '2024-08-26 15:16:29', '2024-08-26 18:58:25');
INSERT INTO `value_varchar` VALUES (462, 6, 7, 10, 8, '[866666.7, 3760000.0, 4858000.0]', NULL, '2024-08-26 15:16:29', '2024-08-28 11:16:41');
INSERT INTO `value_varchar` VALUES (463, 6, 7, 10, 9, '', NULL, '2024-08-26 15:16:29', '2024-08-26 18:58:25');
INSERT INTO `value_varchar` VALUES (467, 6, 36, 10, 6, '不含税收入合计OT015', NULL, '2024-08-26 15:16:29', '2024-08-28 15:48:46');
INSERT INTO `value_varchar` VALUES (468, 6, 36, 10, 8, '[3008533.5, 1.356292E7, 1.656936E7, , , , , ]', NULL, '2024-08-26 15:16:29', '2024-08-28 15:48:46');
INSERT INTO `value_varchar` VALUES (469, 6, 36, 10, 9, '', NULL, '2024-08-26 15:16:29', '2024-08-28 15:48:46');
INSERT INTO `value_varchar` VALUES (470, 6, 1, 11, 6, '双向双车道道路 310101', NULL, '2024-08-26 15:16:29', '2024-08-28 15:48:47');
INSERT INTO `value_varchar` VALUES (471, 6, 1, 11, 8, '[902271.94, 3975975.0, 3728401.5, , , , , ]', NULL, '2024-08-26 15:16:29', '2024-08-28 15:48:47');
INSERT INTO `value_varchar` VALUES (472, 6, 1, 11, 9, '', NULL, '2024-08-26 15:16:29', '2024-08-28 15:48:47');
INSERT INTO `value_varchar` VALUES (473, 6, 7, 11, 6, '单向双车道道路 310201', NULL, '2024-08-26 15:16:29', '2024-08-26 18:58:26');
INSERT INTO `value_varchar` VALUES (474, 6, 7, 11, 8, '[944666.7, 4098400.2, 5295220.0]', NULL, '2024-08-26 15:16:29', '2024-08-28 11:16:42');
INSERT INTO `value_varchar` VALUES (475, 6, 7, 11, 9, '', NULL, '2024-08-26 15:16:29', '2024-08-26 18:58:26');
INSERT INTO `value_varchar` VALUES (479, 6, 37, 11, 6, '含税收入合计OT016', NULL, '2024-08-26 15:16:29', '2024-08-28 15:48:47');
INSERT INTO `value_varchar` VALUES (480, 6, 37, 11, 8, '[3215045.0, 1.4489495E7, 1.7709262E7, , , , , ]', NULL, '2024-08-26 15:16:29', '2024-08-28 15:48:47');
INSERT INTO `value_varchar` VALUES (481, 6, 37, 11, 9, '', NULL, '2024-08-26 15:16:29', '2024-08-28 15:48:47');
INSERT INTO `value_varchar` VALUES (482, 6, NULL, 10, 46, '8', NULL, '2024-08-26 16:13:49', '2024-08-26 16:13:51');
INSERT INTO `value_varchar` VALUES (483, 6, 1, 10, 46, '', NULL, '2024-08-26 17:00:05', '2024-08-28 15:48:46');
INSERT INTO `value_varchar` VALUES (484, 6, 7, 10, 46, '', NULL, '2024-08-26 17:00:05', '2024-08-26 18:58:25');
INSERT INTO `value_varchar` VALUES (486, 6, 36, 10, 46, '', NULL, '2024-08-26 17:00:05', '2024-08-28 15:48:46');
INSERT INTO `value_varchar` VALUES (487, 14, 4, 1, 6, '双向六车道道路 310104', NULL, '2024-08-26 20:55:37', '2024-08-26 20:55:37');
INSERT INTO `value_varchar` VALUES (488, 14, 4, 1, 8, '[520, 140, 340, ]', NULL, '2024-08-26 20:55:37', '2024-08-26 20:55:37');
INSERT INTO `value_varchar` VALUES (489, 14, 4, 1, 9, '1000.0', NULL, '2024-08-26 20:55:37', '2024-08-26 20:55:38');
INSERT INTO `value_varchar` VALUES (490, 14, 1, 1, 6, '双向双车道道路 310101', NULL, '2024-08-26 20:55:37', '2024-08-26 20:55:37');
INSERT INTO `value_varchar` VALUES (491, 14, 1, 1, 8, '[233, 145, 320, ]', NULL, '2024-08-26 20:55:37', '2024-08-26 20:55:37');
INSERT INTO `value_varchar` VALUES (492, 14, 1, 1, 9, '698.0', NULL, '2024-08-26 20:55:37', '2024-08-26 20:55:38');
INSERT INTO `value_varchar` VALUES (493, 14, 5, 1, 6, '双向八车道道路 310105', NULL, '2024-08-26 20:55:37', '2024-08-26 20:55:37');
INSERT INTO `value_varchar` VALUES (494, 14, 5, 1, 8, '[100, 200, 410, ]', NULL, '2024-08-26 20:55:37', '2024-08-26 20:55:37');
INSERT INTO `value_varchar` VALUES (495, 14, 5, 1, 9, '710.0', NULL, '2024-08-26 20:55:37', '2024-08-26 20:55:38');
INSERT INTO `value_varchar` VALUES (496, 14, 4, 2, 6, '双向六车道道路 310104', NULL, '2024-08-26 20:55:37', '2024-08-26 20:55:37');
INSERT INTO `value_varchar` VALUES (497, 14, 4, 2, 8, '[6000, 5000, 4000, ]', NULL, '2024-08-26 20:55:37', '2024-08-26 20:55:37');
INSERT INTO `value_varchar` VALUES (498, 14, 4, 2, 9, '', NULL, '2024-08-26 20:55:37', '2024-08-26 20:55:37');
INSERT INTO `value_varchar` VALUES (499, 14, 1, 2, 6, '双向双车道道路 310101', NULL, '2024-08-26 20:55:37', '2024-08-26 20:55:37');
INSERT INTO `value_varchar` VALUES (500, 14, 1, 2, 8, '[5500, 3000, 2000, ]', NULL, '2024-08-26 20:55:37', '2024-08-26 20:55:37');
INSERT INTO `value_varchar` VALUES (501, 14, 1, 2, 9, '', NULL, '2024-08-26 20:55:37', '2024-08-26 20:55:37');
INSERT INTO `value_varchar` VALUES (502, 14, 5, 2, 6, '双向八车道道路 310105', NULL, '2024-08-26 20:55:37', '2024-08-26 20:55:37');
INSERT INTO `value_varchar` VALUES (503, 14, 5, 2, 8, '[1000, 7000, 4000, ]', NULL, '2024-08-26 20:55:37', '2024-08-26 20:55:37');
INSERT INTO `value_varchar` VALUES (504, 14, 5, 2, 9, '', NULL, '2024-08-26 20:55:37', '2024-08-26 20:55:37');
INSERT INTO `value_varchar` VALUES (505, 14, 4, 3, 6, '双向六车道道路 310104', NULL, '2024-08-26 20:55:37', '2024-08-26 20:55:37');
INSERT INTO `value_varchar` VALUES (506, 14, 4, 3, 8, '[3120000.0, 700000.0, 1360000.0]', NULL, '2024-08-26 20:55:37', '2024-08-26 20:55:38');
INSERT INTO `value_varchar` VALUES (507, 14, 4, 3, 9, '5180000.0', NULL, '2024-08-26 20:55:37', '2024-08-26 20:55:38');
INSERT INTO `value_varchar` VALUES (508, 14, 1, 3, 6, '双向双车道道路 310101', NULL, '2024-08-26 20:55:37', '2024-08-26 20:55:37');
INSERT INTO `value_varchar` VALUES (509, 14, 1, 3, 8, '[1281500.0, 435000.0, 640000.0]', NULL, '2024-08-26 20:55:37', '2024-08-26 20:55:38');
INSERT INTO `value_varchar` VALUES (510, 14, 1, 3, 9, '2356500.0', NULL, '2024-08-26 20:55:37', '2024-08-26 20:55:38');
INSERT INTO `value_varchar` VALUES (511, 14, 5, 3, 6, '双向八车道道路 310105', NULL, '2024-08-26 20:55:37', '2024-08-26 20:55:37');
INSERT INTO `value_varchar` VALUES (512, 14, 5, 3, 8, '[100000.0, 1400000.0, 1640000.0]', NULL, '2024-08-26 20:55:37', '2024-08-26 20:55:38');
INSERT INTO `value_varchar` VALUES (513, 14, 5, 3, 9, '3140000.0', NULL, '2024-08-26 20:55:37', '2024-08-26 20:55:38');
INSERT INTO `value_varchar` VALUES (514, 14, 11, 3, 6, '6%税率投资额 ', NULL, '2024-08-26 20:55:37', '2024-08-26 20:55:37');
INSERT INTO `value_varchar` VALUES (515, 14, 11, 3, 8, '[80000, 90000, 100000, ]', NULL, '2024-08-26 20:55:37', '2024-08-26 20:55:37');
INSERT INTO `value_varchar` VALUES (516, 14, 11, 3, 9, '270000.0', NULL, '2024-08-26 20:55:37', '2024-08-26 20:55:38');
INSERT INTO `value_varchar` VALUES (517, 14, 12, 3, 6, '9%税率投资额 ', NULL, '2024-08-26 20:55:37', '2024-08-26 20:55:37');
INSERT INTO `value_varchar` VALUES (518, 14, 12, 3, 8, '[400000, 114440, 500000, ]', NULL, '2024-08-26 20:55:37', '2024-08-26 20:55:37');
INSERT INTO `value_varchar` VALUES (519, 14, 12, 3, 9, '1014440.0', NULL, '2024-08-26 20:55:37', '2024-08-26 20:55:38');
INSERT INTO `value_varchar` VALUES (520, 14, 13, 3, 6, '13%税率投资额', NULL, '2024-08-26 20:55:37', '2024-08-26 20:55:37');
INSERT INTO `value_varchar` VALUES (521, 14, 13, 3, 8, '[4021500.0, 2330560.0, 3040000.0]', NULL, '2024-08-26 20:55:37', '2024-08-26 20:55:38');
INSERT INTO `value_varchar` VALUES (522, 14, 13, 3, 9, '9392060.0', NULL, '2024-08-26 20:55:37', '2024-08-26 20:55:38');
INSERT INTO `value_varchar` VALUES (523, 14, 14, 3, 6, '不含税投资额合计', NULL, '2024-08-26 20:55:37', '2024-08-26 20:55:37');
INSERT INTO `value_varchar` VALUES (524, 14, 14, 3, 8, '[4501500.0, 2535000.0, 3640000.0]', NULL, '2024-08-26 20:55:37', '2024-08-26 20:55:38');
INSERT INTO `value_varchar` VALUES (525, 14, 14, 3, 9, '1.06765E7', NULL, '2024-08-26 20:55:37', '2024-08-26 20:55:38');
INSERT INTO `value_varchar` VALUES (526, 14, 11, 4, 6, '6%税率投资额 ', NULL, '2024-08-26 20:55:37', '2024-08-26 20:55:37');
INSERT INTO `value_varchar` VALUES (527, 14, 11, 4, 8, '[84799.99, 95399.99, 105999.99]', NULL, '2024-08-26 20:55:37', '2024-08-26 20:55:38');
INSERT INTO `value_varchar` VALUES (528, 14, 11, 4, 9, '286199.97', NULL, '2024-08-26 20:55:37', '2024-08-26 20:55:38');
INSERT INTO `value_varchar` VALUES (529, 14, 12, 4, 6, '9%税率投资额 ', NULL, '2024-08-26 20:55:37', '2024-08-26 20:55:37');
INSERT INTO `value_varchar` VALUES (530, 14, 12, 4, 8, '[436000.0, 124739.6, 545000.0]', NULL, '2024-08-26 20:55:37', '2024-08-26 20:55:38');
INSERT INTO `value_varchar` VALUES (531, 14, 12, 4, 9, '1105739.6', NULL, '2024-08-26 20:55:37', '2024-08-26 20:55:38');
INSERT INTO `value_varchar` VALUES (532, 14, 13, 4, 6, '13%税率投资额', NULL, '2024-08-26 20:55:37', '2024-08-26 20:55:37');
INSERT INTO `value_varchar` VALUES (533, 14, 13, 4, 8, '[4544295.0, 2633532.8, 3435200.0]', NULL, '2024-08-26 20:55:37', '2024-08-26 20:55:38');
INSERT INTO `value_varchar` VALUES (534, 14, 13, 4, 9, '1.0613028E7', NULL, '2024-08-26 20:55:37', '2024-08-26 20:55:38');
INSERT INTO `value_varchar` VALUES (535, 14, 15, 4, 6, '含税投资额合计', NULL, '2024-08-26 20:55:37', '2024-08-26 20:55:37');
INSERT INTO `value_varchar` VALUES (536, 14, 15, 4, 8, '[5065095.0, 2853672.2, 4086200.0]', NULL, '2024-08-26 20:55:37', '2024-08-26 20:55:38');
INSERT INTO `value_varchar` VALUES (537, 14, 15, 4, 9, '1.2004967E7', NULL, '2024-08-26 20:55:37', '2024-08-26 20:55:38');
INSERT INTO `value_varchar` VALUES (542, 6, NULL, 22, 47, '市公司A', NULL, '2024-08-24 17:30:44', '2024-08-24 17:30:46');
INSERT INTO `value_varchar` VALUES (543, 6, NULL, 22, 48, '张三', NULL, '2024-08-24 17:31:17', '2024-08-24 17:31:20');
INSERT INTO `value_varchar` VALUES (544, 6, NULL, 22, 49, '2024年1月-2026年12月', NULL, '2024-08-24 17:32:09', '2024-08-24 17:32:11');
INSERT INTO `value_varchar` VALUES (545, 6, NULL, 22, 50, '3', NULL, '2024-08-24 17:32:29', '2024-08-24 17:32:31');
INSERT INTO `value_varchar` VALUES (546, 6, NULL, 22, 51, '2024年5月-2031年4月', NULL, '2024-08-24 17:33:01', '2024-08-24 17:33:03');
INSERT INTO `value_varchar` VALUES (547, 6, NULL, 22, 52, '7', NULL, '2024-08-24 17:33:16', '2024-08-24 17:33:18');
INSERT INTO `value_varchar` VALUES (548, 6, NULL, 22, 53, '4270.99', NULL, '2024-08-24 17:33:57', '2024-08-24 17:33:59');
INSERT INTO `value_varchar` VALUES (549, 6, NULL, 22, 54, '803.80', NULL, '2024-08-24 17:34:15', '2024-08-24 17:34:17');
INSERT INTO `value_varchar` VALUES (550, 6, NULL, 22, 55, '0', NULL, '2024-08-24 17:34:39', '2024-08-24 17:34:41');
INSERT INTO `value_varchar` VALUES (551, 6, NULL, 22, 56, '8386.27', NULL, '2024-08-24 17:35:05', '2024-08-24 17:35:07');
INSERT INTO `value_varchar` VALUES (552, 6, NULL, 22, 57, '8386.27', NULL, '2024-08-24 17:35:23', '2024-08-24 17:35:25');
INSERT INTO `value_varchar` VALUES (553, 6, NULL, 22, 58, '0', NULL, '2024-08-24 17:35:38', '2024-08-24 17:35:39');
INSERT INTO `value_varchar` VALUES (554, 6, NULL, 22, 59, '0', NULL, '2024-08-24 17:36:02', '2024-08-24 17:36:01');
INSERT INTO `value_varchar` VALUES (555, 6, NULL, 22, 60, '4115.28', NULL, '2024-08-24 17:36:19', '2024-08-24 17:36:21');
INSERT INTO `value_varchar` VALUES (556, 6, NULL, 22, 61, '3086.46', NULL, '2024-08-24 17:36:36', '2024-08-24 17:36:38');
INSERT INTO `value_varchar` VALUES (557, 6, NULL, 22, 62, '0.37', NULL, '2024-08-24 17:36:51', '2024-08-24 17:36:53');
INSERT INTO `value_varchar` VALUES (558, 6, NULL, 22, 63, '3.84', NULL, '2024-08-24 17:37:11', '2024-08-24 17:37:12');
INSERT INTO `value_varchar` VALUES (559, 6, NULL, 22, 64, '1.00', NULL, '2024-08-24 17:37:49', '2024-08-24 17:37:53');
INSERT INTO `value_varchar` VALUES (560, 6, NULL, 22, 65, '33', NULL, '2024-08-24 17:38:16', '2024-08-24 17:38:18');
INSERT INTO `value_varchar` VALUES (561, 6, NULL, 22, 66, '34', NULL, '2024-08-24 17:39:02', '2024-08-24 17:39:04');
INSERT INTO `value_varchar` VALUES (602, 29, 1, 1, 6, '双向双车道道路 310101', NULL, '2024-08-28 10:11:44', '2024-08-28 10:16:23');
INSERT INTO `value_varchar` VALUES (603, 29, 1, 1, 8, '[340, 260, 198, , ]', NULL, '2024-08-28 10:11:44', '2024-08-28 10:16:23');
INSERT INTO `value_varchar` VALUES (604, 29, 1, 1, 9, '798.0', NULL, '2024-08-28 10:11:44', '2024-08-28 10:16:24');
INSERT INTO `value_varchar` VALUES (605, 29, 3, 1, 6, '双向四车道道路 310103', NULL, '2024-08-28 10:11:44', '2024-08-28 10:16:23');
INSERT INTO `value_varchar` VALUES (606, 29, 3, 1, 8, '[150, 140, 120, , ]', NULL, '2024-08-28 10:11:44', '2024-08-28 10:16:23');
INSERT INTO `value_varchar` VALUES (607, 29, 3, 1, 9, '410.0', NULL, '2024-08-28 10:11:44', '2024-08-28 10:16:24');
INSERT INTO `value_varchar` VALUES (611, 29, 1, 2, 6, '双向双车道道路 310101', NULL, '2024-08-28 10:11:44', '2024-08-28 10:16:23');
INSERT INTO `value_varchar` VALUES (612, 29, 1, 2, 8, '[6000, 6000, 6000, , ]', NULL, '2024-08-28 10:11:44', '2024-08-28 10:16:23');
INSERT INTO `value_varchar` VALUES (613, 29, 1, 2, 9, '', NULL, '2024-08-28 10:11:44', '2024-08-28 10:16:23');
INSERT INTO `value_varchar` VALUES (614, 29, 3, 2, 6, '双向四车道道路 310103', NULL, '2024-08-28 10:11:44', '2024-08-28 10:16:23');
INSERT INTO `value_varchar` VALUES (615, 29, 3, 2, 8, '[2000, 2000, 2000, , ]', NULL, '2024-08-28 10:11:44', '2024-08-28 10:16:23');
INSERT INTO `value_varchar` VALUES (616, 29, 3, 2, 9, '', NULL, '2024-08-28 10:11:44', '2024-08-28 10:16:23');
INSERT INTO `value_varchar` VALUES (620, 29, 1, 3, 6, '双向双车道道路 310101', NULL, '2024-08-28 10:11:44', '2024-08-28 10:16:23');
INSERT INTO `value_varchar` VALUES (621, 29, 1, 3, 8, '[2040000.0, 1560000.0, 1188000.0]', NULL, '2024-08-28 10:11:44', '2024-08-28 10:16:23');
INSERT INTO `value_varchar` VALUES (622, 29, 1, 3, 9, '4788000.0', NULL, '2024-08-28 10:11:44', '2024-08-28 10:16:24');
INSERT INTO `value_varchar` VALUES (623, 29, 3, 3, 6, '双向四车道道路 310103', NULL, '2024-08-28 10:11:44', '2024-08-28 10:16:23');
INSERT INTO `value_varchar` VALUES (624, 29, 3, 3, 8, '[300000.0, 280000.0, 240000.0]', NULL, '2024-08-28 10:11:44', '2024-08-28 10:16:23');
INSERT INTO `value_varchar` VALUES (625, 29, 3, 3, 9, '820000.0', NULL, '2024-08-28 10:11:44', '2024-08-28 10:16:24');
INSERT INTO `value_varchar` VALUES (629, 29, 11, 3, 6, '6%税率投资额 ', NULL, '2024-08-28 10:11:44', '2024-08-28 10:16:23');
INSERT INTO `value_varchar` VALUES (630, 29, 11, 3, 8, '[80000, 70000, 50000, , ]', NULL, '2024-08-28 10:11:44', '2024-08-28 10:16:23');
INSERT INTO `value_varchar` VALUES (631, 29, 11, 3, 9, '200000.0', NULL, '2024-08-28 10:11:44', '2024-08-28 10:16:24');
INSERT INTO `value_varchar` VALUES (632, 29, 12, 3, 6, '9%税率投资额 ', NULL, '2024-08-28 10:11:44', '2024-08-28 10:16:23');
INSERT INTO `value_varchar` VALUES (633, 29, 12, 3, 8, '[1200000, 750000, 260000, , ]', NULL, '2024-08-28 10:11:44', '2024-08-28 10:16:23');
INSERT INTO `value_varchar` VALUES (634, 29, 12, 3, 9, '2210000.0', NULL, '2024-08-28 10:11:44', '2024-08-28 10:16:24');
INSERT INTO `value_varchar` VALUES (635, 29, 13, 3, 6, '13%税率投资额', NULL, '2024-08-28 10:11:44', '2024-08-28 10:16:23');
INSERT INTO `value_varchar` VALUES (636, 29, 13, 3, 8, '[1060000.0, 1020000.0, 1118000.0]', NULL, '2024-08-28 10:11:44', '2024-08-28 10:16:24');
INSERT INTO `value_varchar` VALUES (637, 29, 13, 3, 9, '3198000.0', NULL, '2024-08-28 10:11:44', '2024-08-28 10:16:24');
INSERT INTO `value_varchar` VALUES (638, 29, 14, 3, 6, '不含税投资额合计', NULL, '2024-08-28 10:11:44', '2024-08-28 10:16:23');
INSERT INTO `value_varchar` VALUES (639, 29, 14, 3, 8, '[2340000.0, 1840000.0, 1428000.0]', NULL, '2024-08-28 10:11:44', '2024-08-28 10:16:23');
INSERT INTO `value_varchar` VALUES (640, 29, 14, 3, 9, '5608000.0', NULL, '2024-08-28 10:11:44', '2024-08-28 10:16:24');
INSERT INTO `value_varchar` VALUES (641, 29, 11, 4, 6, '6%税率投资额 ', NULL, '2024-08-28 10:11:44', '2024-08-28 10:16:23');
INSERT INTO `value_varchar` VALUES (642, 29, 11, 4, 8, '[84799.99, 74199.99, 52999.996]', NULL, '2024-08-28 10:11:44', '2024-08-28 10:16:24');
INSERT INTO `value_varchar` VALUES (643, 29, 11, 4, 9, '211999.98', NULL, '2024-08-28 10:11:44', '2024-08-28 10:16:24');
INSERT INTO `value_varchar` VALUES (644, 29, 12, 4, 6, '9%税率投资额 ', NULL, '2024-08-28 10:11:44', '2024-08-28 10:16:23');
INSERT INTO `value_varchar` VALUES (645, 29, 12, 4, 8, '[1308000.0, 817500.0, 283400.0]', NULL, '2024-08-28 10:11:44', '2024-08-28 10:16:24');
INSERT INTO `value_varchar` VALUES (646, 29, 12, 4, 9, '2408900.0', NULL, '2024-08-28 10:11:44', '2024-08-28 10:16:24');
INSERT INTO `value_varchar` VALUES (647, 29, 13, 4, 6, '13%税率投资额', NULL, '2024-08-28 10:11:44', '2024-08-28 10:16:23');
INSERT INTO `value_varchar` VALUES (648, 29, 13, 4, 8, '[1197800.0, 1152600.0, 1263340.0]', NULL, '2024-08-28 10:11:44', '2024-08-28 10:16:24');
INSERT INTO `value_varchar` VALUES (649, 29, 13, 4, 9, '3613740.0', NULL, '2024-08-28 10:11:44', '2024-08-28 10:16:24');
INSERT INTO `value_varchar` VALUES (650, 29, 15, 4, 6, '含税投资额合计', NULL, '2024-08-28 10:11:44', '2024-08-28 10:16:23');
INSERT INTO `value_varchar` VALUES (651, 29, 15, 4, 8, '[2590600.0, 2044300.0, 1599740.0]', NULL, '2024-08-28 10:11:44', '2024-08-28 10:16:24');
INSERT INTO `value_varchar` VALUES (652, 29, 15, 4, 9, '6234640.0', NULL, '2024-08-28 10:11:44', '2024-08-28 10:16:24');
INSERT INTO `value_varchar` VALUES (653, 6, NULL, 12, 8, '[[968.0, 95.0, 51.0, 53.24, 914.76, 228.69], [1695.0, 325.0, 908.0, 93.225, 1601.775, 400.44375], [4234.0, 520.0, 1154.0, 232.87, 4001.13, 1000.2825]]', NULL, '2024-08-28 10:18:55', '2024-08-28 10:18:55');
INSERT INTO `value_varchar` VALUES (654, 6, NULL, 12, 10, '[6897.0, 940.0, 2113.0, 379.335, 6517.665, 1629.41625]', NULL, '2024-08-28 10:18:55', '2024-08-28 10:18:55');
INSERT INTO `value_varchar` VALUES (655, 30, 1, 1, 6, '双向双车道道路 310101', NULL, '2024-08-28 10:34:03', '2024-08-28 10:34:48');
INSERT INTO `value_varchar` VALUES (656, 30, 1, 1, 8, '[150, 250, 150, , ]', NULL, '2024-08-28 10:34:03', '2024-08-28 10:34:48');
INSERT INTO `value_varchar` VALUES (657, 30, 1, 1, 9, '550.0', NULL, '2024-08-28 10:34:03', '2024-08-28 10:34:49');
INSERT INTO `value_varchar` VALUES (658, 30, 5, 1, 6, '双向八车道道路 310105', NULL, '2024-08-28 10:34:03', '2024-08-28 10:34:48');
INSERT INTO `value_varchar` VALUES (659, 30, 5, 1, 8, '[200, 300, 100, , ]', NULL, '2024-08-28 10:34:03', '2024-08-28 10:34:48');
INSERT INTO `value_varchar` VALUES (660, 30, 5, 1, 9, '600.0', NULL, '2024-08-28 10:34:03', '2024-08-28 10:34:49');
INSERT INTO `value_varchar` VALUES (661, 30, 1, 2, 6, '双向双车道道路 310101', NULL, '2024-08-28 10:34:03', '2024-08-28 10:34:48');
INSERT INTO `value_varchar` VALUES (662, 30, 1, 2, 8, '[5000, 4000, 2000, , ]', NULL, '2024-08-28 10:34:03', '2024-08-28 10:34:48');
INSERT INTO `value_varchar` VALUES (663, 30, 1, 2, 9, '', NULL, '2024-08-28 10:34:03', '2024-08-28 10:34:48');
INSERT INTO `value_varchar` VALUES (664, 30, 5, 2, 6, '双向八车道道路 310105', NULL, '2024-08-28 10:34:03', '2024-08-28 10:34:48');
INSERT INTO `value_varchar` VALUES (665, 30, 5, 2, 8, '[3000, 1000, 3500, , ]', NULL, '2024-08-28 10:34:03', '2024-08-28 10:34:48');
INSERT INTO `value_varchar` VALUES (666, 30, 5, 2, 9, '', NULL, '2024-08-28 10:34:03', '2024-08-28 10:34:48');
INSERT INTO `value_varchar` VALUES (667, 30, 1, 3, 6, '双向双车道道路 310101', NULL, '2024-08-28 10:34:03', '2024-08-28 10:34:48');
INSERT INTO `value_varchar` VALUES (668, 30, 1, 3, 8, '[750000.0, 1000000.0, 300000.0]', NULL, '2024-08-28 10:34:03', '2024-08-28 10:34:49');
INSERT INTO `value_varchar` VALUES (669, 30, 1, 3, 9, '2050000.0', NULL, '2024-08-28 10:34:03', '2024-08-28 10:34:49');
INSERT INTO `value_varchar` VALUES (670, 30, 5, 3, 6, '双向八车道道路 310105', NULL, '2024-08-28 10:34:03', '2024-08-28 10:34:48');
INSERT INTO `value_varchar` VALUES (671, 30, 5, 3, 8, '[600000.0, 300000.0, 350000.0]', NULL, '2024-08-28 10:34:03', '2024-08-28 10:34:49');
INSERT INTO `value_varchar` VALUES (672, 30, 5, 3, 9, '1250000.0', NULL, '2024-08-28 10:34:03', '2024-08-28 10:34:49');
INSERT INTO `value_varchar` VALUES (673, 30, 11, 3, 6, '6%税率投资额 ', NULL, '2024-08-28 10:34:03', '2024-08-28 10:34:48');
INSERT INTO `value_varchar` VALUES (674, 30, 11, 3, 8, '[8000, 70000, 50000, , ]', NULL, '2024-08-28 10:34:03', '2024-08-28 10:34:48');
INSERT INTO `value_varchar` VALUES (675, 30, 11, 3, 9, '128000.0', NULL, '2024-08-28 10:34:03', '2024-08-28 10:34:49');
INSERT INTO `value_varchar` VALUES (676, 30, 12, 3, 6, '9%税率投资额 ', NULL, '2024-08-28 10:34:03', '2024-08-28 10:34:49');
INSERT INTO `value_varchar` VALUES (677, 30, 12, 3, 8, '[230000, 120000, 560000, , ]', NULL, '2024-08-28 10:34:03', '2024-08-28 10:34:49');
INSERT INTO `value_varchar` VALUES (678, 30, 12, 3, 9, '910000.0', NULL, '2024-08-28 10:34:03', '2024-08-28 10:34:49');
INSERT INTO `value_varchar` VALUES (679, 30, 13, 3, 6, '13%税率投资额', NULL, '2024-08-28 10:34:03', '2024-08-28 10:34:49');
INSERT INTO `value_varchar` VALUES (680, 30, 13, 3, 8, '[1112000.0, 1110000.0, 40000.0]', NULL, '2024-08-28 10:34:03', '2024-08-28 10:34:49');
INSERT INTO `value_varchar` VALUES (681, 30, 13, 3, 9, '2262000.0', NULL, '2024-08-28 10:34:03', '2024-08-28 10:34:49');
INSERT INTO `value_varchar` VALUES (682, 30, 14, 3, 6, '不含税投资额合计', NULL, '2024-08-28 10:34:03', '2024-08-28 10:34:49');
INSERT INTO `value_varchar` VALUES (683, 30, 14, 3, 8, '[1350000.0, 1300000.0, 650000.0]', NULL, '2024-08-28 10:34:03', '2024-08-28 10:34:49');
INSERT INTO `value_varchar` VALUES (684, 30, 14, 3, 9, '3300000.0', NULL, '2024-08-28 10:34:03', '2024-08-28 10:34:49');
INSERT INTO `value_varchar` VALUES (685, 30, 11, 4, 6, '6%税率投资额 ', NULL, '2024-08-28 10:34:03', '2024-08-28 10:34:49');
INSERT INTO `value_varchar` VALUES (686, 30, 11, 4, 8, '[8480.0, 74199.99, 52999.996]', NULL, '2024-08-28 10:34:03', '2024-08-28 10:34:49');
INSERT INTO `value_varchar` VALUES (687, 30, 11, 4, 9, '135679.98', NULL, '2024-08-28 10:34:03', '2024-08-28 10:34:49');
INSERT INTO `value_varchar` VALUES (688, 30, 12, 4, 6, '9%税率投资额 ', NULL, '2024-08-28 10:34:03', '2024-08-28 10:34:49');
INSERT INTO `value_varchar` VALUES (689, 30, 12, 4, 8, '[250700.0, 130800.01, 610400.0]', NULL, '2024-08-28 10:34:03', '2024-08-28 10:34:49');
INSERT INTO `value_varchar` VALUES (690, 30, 12, 4, 9, '991900.0', NULL, '2024-08-28 10:34:03', '2024-08-28 10:34:49');
INSERT INTO `value_varchar` VALUES (691, 30, 13, 4, 6, '13%税率投资额', NULL, '2024-08-28 10:34:03', '2024-08-28 10:34:49');
INSERT INTO `value_varchar` VALUES (692, 30, 13, 4, 8, '[1256560.0, 1254300.0, 45200.0]', NULL, '2024-08-28 10:34:03', '2024-08-28 10:34:49');
INSERT INTO `value_varchar` VALUES (693, 30, 13, 4, 9, '2556060.0', NULL, '2024-08-28 10:34:03', '2024-08-28 10:34:49');
INSERT INTO `value_varchar` VALUES (694, 30, 15, 4, 6, '含税投资额合计', NULL, '2024-08-28 10:34:03', '2024-08-28 10:34:49');
INSERT INTO `value_varchar` VALUES (695, 30, 15, 4, 8, '[1515740.0, 1459300.0, 708600.0]', NULL, '2024-08-28 10:34:03', '2024-08-28 10:34:49');
INSERT INTO `value_varchar` VALUES (696, 30, 15, 4, 9, '3683640.0', NULL, '2024-08-28 10:34:03', '2024-08-28 10:34:49');
INSERT INTO `value_varchar` VALUES (697, 6, 3, 1, 6, '双向四车道道路 310103', NULL, '2024-08-28 10:42:18', '2024-08-28 15:54:22');
INSERT INTO `value_varchar` VALUES (698, 6, 3, 1, 8, '[, , , ]', NULL, '2024-08-28 10:42:19', '2024-08-28 15:54:22');
INSERT INTO `value_varchar` VALUES (699, 6, 3, 1, 9, '', NULL, '2024-08-28 10:42:19', '2024-08-28 15:54:22');
INSERT INTO `value_varchar` VALUES (700, 6, 3, 2, 6, '双向四车道道路 310103', NULL, '2024-08-28 10:42:19', '2024-08-28 15:54:22');
INSERT INTO `value_varchar` VALUES (701, 6, 3, 2, 8, '[, , , ]', NULL, '2024-08-28 10:42:19', '2024-08-28 15:54:22');
INSERT INTO `value_varchar` VALUES (702, 6, 3, 2, 9, '', NULL, '2024-08-28 10:42:19', '2024-08-28 15:54:22');
INSERT INTO `value_varchar` VALUES (703, 6, 3, 3, 6, '双向四车道道路 310103', NULL, '2024-08-28 10:42:19', '2024-08-28 15:54:22');
INSERT INTO `value_varchar` VALUES (704, 6, 3, 3, 8, '[, , , ]', NULL, '2024-08-28 10:42:19', '2024-08-28 15:54:22');
INSERT INTO `value_varchar` VALUES (705, 6, 3, 3, 9, '', NULL, '2024-08-28 10:42:19', '2024-08-28 15:54:22');
INSERT INTO `value_varchar` VALUES (706, 31, 1, 1, 6, '双向双车道道路 310101', NULL, '2024-08-28 11:09:45', '2024-08-28 11:09:45');
INSERT INTO `value_varchar` VALUES (707, 31, 1, 1, 8, '[435, 757, 453, , ]', NULL, '2024-08-28 11:09:45', '2024-08-28 11:09:45');
INSERT INTO `value_varchar` VALUES (708, 31, 1, 1, 9, '1645.0', NULL, '2024-08-28 11:09:45', '2024-08-28 11:09:47');
INSERT INTO `value_varchar` VALUES (709, 31, 5, 1, 6, '双向八车道道路 310105', NULL, '2024-08-28 11:09:45', '2024-08-28 11:09:45');
INSERT INTO `value_varchar` VALUES (710, 31, 5, 1, 8, '[427, 354, 453, , ]', NULL, '2024-08-28 11:09:45', '2024-08-28 11:09:45');
INSERT INTO `value_varchar` VALUES (711, 31, 5, 1, 9, '1234.0', NULL, '2024-08-28 11:09:45', '2024-08-28 11:09:47');
INSERT INTO `value_varchar` VALUES (712, 31, 1, 2, 6, '双向双车道道路 310101', NULL, '2024-08-28 11:09:45', '2024-08-28 11:09:45');
INSERT INTO `value_varchar` VALUES (713, 31, 1, 2, 8, '[5000, 4000, 3000, , ]', NULL, '2024-08-28 11:09:45', '2024-08-28 11:09:45');
INSERT INTO `value_varchar` VALUES (714, 31, 1, 2, 9, '', NULL, '2024-08-28 11:09:45', '2024-08-28 11:09:45');
INSERT INTO `value_varchar` VALUES (715, 31, 5, 2, 6, '双向八车道道路 310105', NULL, '2024-08-28 11:09:45', '2024-08-28 11:09:45');
INSERT INTO `value_varchar` VALUES (716, 31, 5, 2, 8, '[2000, 4000, 5000, , ]', NULL, '2024-08-28 11:09:45', '2024-08-28 11:09:45');
INSERT INTO `value_varchar` VALUES (717, 31, 5, 2, 9, '', NULL, '2024-08-28 11:09:45', '2024-08-28 11:09:45');
INSERT INTO `value_varchar` VALUES (718, 31, 1, 3, 6, '双向双车道道路 310101', NULL, '2024-08-28 11:09:45', '2024-08-28 11:09:45');
INSERT INTO `value_varchar` VALUES (719, 31, 1, 3, 8, '[2175000.0, 3028000.0, 1359000.0]', NULL, '2024-08-28 11:09:45', '2024-08-28 11:09:46');
INSERT INTO `value_varchar` VALUES (720, 31, 1, 3, 9, '6562000.0', NULL, '2024-08-28 11:09:45', '2024-08-28 11:09:46');
INSERT INTO `value_varchar` VALUES (721, 31, 5, 3, 6, '双向八车道道路 310105', NULL, '2024-08-28 11:09:45', '2024-08-28 11:09:45');
INSERT INTO `value_varchar` VALUES (722, 31, 5, 3, 8, '[854000.0, 1416000.0, 2265000.0]', NULL, '2024-08-28 11:09:45', '2024-08-28 11:09:46');
INSERT INTO `value_varchar` VALUES (723, 31, 5, 3, 9, '4535000.0', NULL, '2024-08-28 11:09:45', '2024-08-28 11:09:46');
INSERT INTO `value_varchar` VALUES (724, 31, 11, 3, 6, '6%税率投资额 ', NULL, '2024-08-28 11:09:45', '2024-08-28 11:09:45');
INSERT INTO `value_varchar` VALUES (725, 31, 11, 3, 8, '[80000, 80000, 80000, , ]', NULL, '2024-08-28 11:09:45', '2024-08-28 11:09:45');
INSERT INTO `value_varchar` VALUES (726, 31, 11, 3, 9, '240000.0', NULL, '2024-08-28 11:09:45', '2024-08-28 11:09:46');
INSERT INTO `value_varchar` VALUES (727, 31, 12, 3, 6, '9%税率投资额 ', NULL, '2024-08-28 11:09:45', '2024-08-28 11:09:45');
INSERT INTO `value_varchar` VALUES (728, 31, 12, 3, 8, '[130000, 140000, 150000, , ]', NULL, '2024-08-28 11:09:45', '2024-08-28 11:09:45');
INSERT INTO `value_varchar` VALUES (729, 31, 12, 3, 9, '420000.0', NULL, '2024-08-28 11:09:45', '2024-08-28 11:09:46');
INSERT INTO `value_varchar` VALUES (730, 31, 13, 3, 6, '13%税率投资额', NULL, '2024-08-28 11:09:45', '2024-08-28 11:09:45');
INSERT INTO `value_varchar` VALUES (731, 31, 13, 3, 8, '[2819000.0, 4224000.0, 3394000.0]', NULL, '2024-08-28 11:09:45', '2024-08-28 11:09:46');
INSERT INTO `value_varchar` VALUES (732, 31, 13, 3, 9, '1.0437E7', NULL, '2024-08-28 11:09:45', '2024-08-28 11:09:46');
INSERT INTO `value_varchar` VALUES (733, 31, 14, 3, 6, '不含税投资额合计', NULL, '2024-08-28 11:09:45', '2024-08-28 11:09:45');
INSERT INTO `value_varchar` VALUES (734, 31, 14, 3, 8, '[3029000.0, 4444000.0, 3624000.0]', NULL, '2024-08-28 11:09:45', '2024-08-28 11:09:46');
INSERT INTO `value_varchar` VALUES (735, 31, 14, 3, 9, '1.1097E7', NULL, '2024-08-28 11:09:45', '2024-08-28 11:09:46');
INSERT INTO `value_varchar` VALUES (736, 31, 11, 4, 6, '6%税率投资额 ', NULL, '2024-08-28 11:09:46', '2024-08-28 11:09:46');
INSERT INTO `value_varchar` VALUES (737, 31, 11, 4, 8, '[84799.99, 84799.99, 84799.99]', NULL, '2024-08-28 11:09:46', '2024-08-28 11:09:46');
INSERT INTO `value_varchar` VALUES (738, 31, 11, 4, 9, '254399.97', NULL, '2024-08-28 11:09:46', '2024-08-28 11:09:47');
INSERT INTO `value_varchar` VALUES (739, 31, 12, 4, 6, '9%税率投资额 ', NULL, '2024-08-28 11:09:46', '2024-08-28 11:09:46');
INSERT INTO `value_varchar` VALUES (740, 31, 12, 4, 8, '[141700.0, 152600.0, 163500.0]', NULL, '2024-08-28 11:09:46', '2024-08-28 11:09:46');
INSERT INTO `value_varchar` VALUES (741, 31, 12, 4, 9, '457800.0', NULL, '2024-08-28 11:09:46', '2024-08-28 11:09:47');
INSERT INTO `value_varchar` VALUES (742, 31, 13, 4, 6, '13%税率投资额', NULL, '2024-08-28 11:09:46', '2024-08-28 11:09:46');
INSERT INTO `value_varchar` VALUES (743, 31, 13, 4, 8, '[3185470.0, 4773120.0, 3835220.0]', NULL, '2024-08-28 11:09:46', '2024-08-28 11:09:47');
INSERT INTO `value_varchar` VALUES (744, 31, 13, 4, 9, '1.179381E7', NULL, '2024-08-28 11:09:46', '2024-08-28 11:09:47');
INSERT INTO `value_varchar` VALUES (745, 31, 15, 4, 6, '含税投资额合计', NULL, '2024-08-28 11:09:46', '2024-08-28 11:09:46');
INSERT INTO `value_varchar` VALUES (746, 31, 15, 4, 8, '[3411970.0, 5010520.0, 4083520.0]', NULL, '2024-08-28 11:09:46', '2024-08-28 11:09:47');
INSERT INTO `value_varchar` VALUES (747, 31, 15, 4, 9, '1.250601E7', NULL, '2024-08-28 11:09:46', '2024-08-28 11:09:47');
INSERT INTO `value_varchar` VALUES (748, 26, 1, 6, 6, '双向双车道道路 310101', NULL, '2024-08-28 11:10:51', '2024-08-28 11:14:24');
INSERT INTO `value_varchar` VALUES (749, 26, 1, 6, 8, '[798, 0, 0, , , , , ]', NULL, '2024-08-28 11:10:51', '2024-08-28 11:14:24');
INSERT INTO `value_varchar` VALUES (750, 26, 1, 6, 9, '', NULL, '2024-08-28 11:10:51', '2024-08-28 11:14:24');
INSERT INTO `value_varchar` VALUES (754, 26, 1, 7, 6, '双向双车道道路 310101', NULL, '2024-08-28 11:10:51', '2024-08-28 11:14:24');
INSERT INTO `value_varchar` VALUES (755, 26, 1, 7, 8, '[0, 20, 50, , , , , ]', NULL, '2024-08-28 11:10:51', '2024-08-28 11:14:24');
INSERT INTO `value_varchar` VALUES (756, 26, 1, 7, 9, '', NULL, '2024-08-28 11:10:51', '2024-08-28 11:14:24');
INSERT INTO `value_varchar` VALUES (760, 26, 1, 8, 6, '双向双车道道路 310101', NULL, '2024-08-28 11:10:51', '2024-08-28 11:14:24');
INSERT INTO `value_varchar` VALUES (761, 26, 1, 8, 8, '[798.0, 778.0, 728.0]', NULL, '2024-08-28 11:10:51', '2024-08-28 11:14:25');
INSERT INTO `value_varchar` VALUES (762, 26, 1, 8, 9, '', NULL, '2024-08-28 11:10:51', '2024-08-28 11:14:24');
INSERT INTO `value_varchar` VALUES (766, 26, 1, 9, 6, '双向双车道道路 310101', NULL, '2024-08-28 11:10:51', '2024-08-28 11:14:25');
INSERT INTO `value_varchar` VALUES (767, 26, 1, 9, 8, '[400, 395, 385, , , , , ]', NULL, '2024-08-28 11:10:51', '2024-08-28 11:14:25');
INSERT INTO `value_varchar` VALUES (768, 26, 1, 9, 9, '', NULL, '2024-08-28 11:10:51', '2024-08-28 11:14:25');
INSERT INTO `value_varchar` VALUES (772, 26, 1, 10, 6, '双向双车道道路 310101', NULL, '2024-08-28 11:10:51', '2024-08-28 11:14:25');
INSERT INTO `value_varchar` VALUES (773, 26, 1, 10, 8, '[851200.0, 3750920.0, 3517360.0]', NULL, '2024-08-28 11:10:51', '2024-08-28 11:14:25');
INSERT INTO `value_varchar` VALUES (774, 26, 1, 10, 9, '', NULL, '2024-08-28 11:10:51', '2024-08-28 11:14:25');
INSERT INTO `value_varchar` VALUES (775, 26, 1, 10, 46, '', NULL, '2024-08-28 11:10:51', '2024-08-28 11:14:25');
INSERT INTO `value_varchar` VALUES (780, 26, 36, 10, 6, '不含税收入合计OT015', NULL, '2024-08-28 11:10:51', '2024-08-28 11:14:25');
INSERT INTO `value_varchar` VALUES (781, 26, 36, 10, 8, '[851200.0, 3750920.0, 3517360.0]', NULL, '2024-08-28 11:10:51', '2024-08-28 11:14:25');
INSERT INTO `value_varchar` VALUES (782, 26, 36, 10, 9, '', NULL, '2024-08-28 11:10:51', '2024-08-28 11:14:25');
INSERT INTO `value_varchar` VALUES (783, 26, 36, 10, 46, '', NULL, '2024-08-28 11:10:51', '2024-08-28 11:14:25');
INSERT INTO `value_varchar` VALUES (784, 26, 1, 11, 6, '双向双车道道路 310101', NULL, '2024-08-28 11:10:51', '2024-08-28 11:14:25');
INSERT INTO `value_varchar` VALUES (785, 26, 1, 11, 8, '[902271.94, 3975975.0, 3728401.5]', NULL, '2024-08-28 11:10:51', '2024-08-28 11:14:25');
INSERT INTO `value_varchar` VALUES (786, 26, 1, 11, 9, '', NULL, '2024-08-28 11:10:51', '2024-08-28 11:14:25');
INSERT INTO `value_varchar` VALUES (790, 26, 37, 11, 6, '含税收入合计OT016', NULL, '2024-08-28 11:10:51', '2024-08-28 11:14:25');
INSERT INTO `value_varchar` VALUES (791, 26, 37, 11, 8, '[902271.94, 3975975.0, 3728401.5]', NULL, '2024-08-28 11:10:51', '2024-08-28 11:14:26');
INSERT INTO `value_varchar` VALUES (792, 26, 37, 11, 9, '', NULL, '2024-08-28 11:10:51', '2024-08-28 11:14:25');
INSERT INTO `value_varchar` VALUES (793, 26, 3, 6, 6, '双向四车道道路 310103', NULL, '2024-08-28 11:11:31', '2024-08-28 11:14:24');
INSERT INTO `value_varchar` VALUES (794, 26, 3, 6, 8, '[200, , , , , , , ]', NULL, '2024-08-28 11:11:31', '2024-08-28 11:14:24');
INSERT INTO `value_varchar` VALUES (795, 26, 3, 6, 9, '', NULL, '2024-08-28 11:11:31', '2024-08-28 11:14:24');
INSERT INTO `value_varchar` VALUES (796, 26, 3, 7, 6, '双向四车道道路 310103', NULL, '2024-08-28 11:11:31', '2024-08-28 11:14:24');
INSERT INTO `value_varchar` VALUES (797, 26, 3, 7, 8, '[, , , , , , , ]', NULL, '2024-08-28 11:11:31', '2024-08-28 11:14:24');
INSERT INTO `value_varchar` VALUES (798, 26, 3, 7, 9, '', NULL, '2024-08-28 11:11:31', '2024-08-28 11:14:24');
INSERT INTO `value_varchar` VALUES (799, 26, 3, 8, 6, '双向四车道道路 310103', NULL, '2024-08-28 11:11:31', '2024-08-28 11:14:24');
INSERT INTO `value_varchar` VALUES (800, 26, 3, 8, 8, '[, , , , , , , ]', NULL, '2024-08-28 11:11:31', '2024-08-28 11:14:24');
INSERT INTO `value_varchar` VALUES (801, 26, 3, 8, 9, '', NULL, '2024-08-28 11:11:31', '2024-08-28 11:14:24');
INSERT INTO `value_varchar` VALUES (802, 26, 3, 9, 6, '双向四车道道路 310103', NULL, '2024-08-28 11:11:31', '2024-08-28 11:14:25');
INSERT INTO `value_varchar` VALUES (803, 26, 3, 9, 8, '[, , , , , , , ]', NULL, '2024-08-28 11:11:31', '2024-08-28 11:14:25');
INSERT INTO `value_varchar` VALUES (804, 26, 3, 9, 9, '', NULL, '2024-08-28 11:11:31', '2024-08-28 11:14:25');
INSERT INTO `value_varchar` VALUES (805, 26, 3, 10, 6, '双向四车道道路 310103', NULL, '2024-08-28 11:11:31', '2024-08-28 11:14:25');
INSERT INTO `value_varchar` VALUES (806, 26, 3, 10, 8, '[, , , , , , , ]', NULL, '2024-08-28 11:11:31', '2024-08-28 11:14:25');
INSERT INTO `value_varchar` VALUES (807, 26, 3, 10, 9, '', NULL, '2024-08-28 11:11:31', '2024-08-28 11:14:25');
INSERT INTO `value_varchar` VALUES (808, 26, 3, 10, 46, '', NULL, '2024-08-28 11:11:31', '2024-08-28 11:14:25');
INSERT INTO `value_varchar` VALUES (809, 26, 3, 11, 6, '双向四车道道路 310103', NULL, '2024-08-28 11:11:32', '2024-08-28 11:14:25');
INSERT INTO `value_varchar` VALUES (810, 26, 3, 11, 8, '[, , , , , , , ]', NULL, '2024-08-28 11:11:32', '2024-08-28 11:14:25');
INSERT INTO `value_varchar` VALUES (811, 26, 3, 11, 9, '', NULL, '2024-08-28 11:11:32', '2024-08-28 11:14:25');
INSERT INTO `value_varchar` VALUES (812, 6, 3, 6, 6, '双向四车道道路 310103', NULL, '2024-08-28 11:15:54', '2024-08-28 15:48:46');
INSERT INTO `value_varchar` VALUES (813, 6, 3, 6, 8, '[650, 450, 350, , , , , ]', NULL, '2024-08-28 11:15:54', '2024-08-28 15:48:46');
INSERT INTO `value_varchar` VALUES (814, 6, 3, 6, 9, '', NULL, '2024-08-28 11:15:54', '2024-08-28 15:48:46');
INSERT INTO `value_varchar` VALUES (815, 6, 3, 7, 6, '双向四车道道路 310103', NULL, '2024-08-28 11:15:54', '2024-08-28 15:48:46');
INSERT INTO `value_varchar` VALUES (816, 6, 3, 7, 8, '[0, 50, 30, , , , , ]', NULL, '2024-08-28 11:15:54', '2024-08-28 15:48:46');
INSERT INTO `value_varchar` VALUES (817, 6, 3, 7, 9, '', NULL, '2024-08-28 11:15:54', '2024-08-28 15:48:46');
INSERT INTO `value_varchar` VALUES (818, 6, 3, 8, 6, '双向四车道道路 310103', NULL, '2024-08-28 11:15:54', '2024-08-28 15:48:46');
INSERT INTO `value_varchar` VALUES (819, 6, 3, 8, 8, '[650.0, 1050.0, 1370.0]', NULL, '2024-08-28 11:15:54', '2024-08-28 15:48:48');
INSERT INTO `value_varchar` VALUES (820, 6, 3, 8, 9, '', NULL, '2024-08-28 11:15:54', '2024-08-28 15:48:46');
INSERT INTO `value_varchar` VALUES (821, 6, 3, 9, 6, '双向四车道道路 310103', NULL, '2024-08-28 11:15:54', '2024-08-28 15:48:46');
INSERT INTO `value_varchar` VALUES (822, 6, 3, 9, 8, '[500, 400, 350, , , , , ]', NULL, '2024-08-28 11:15:54', '2024-08-28 15:48:46');
INSERT INTO `value_varchar` VALUES (823, 6, 3, 9, 9, '', NULL, '2024-08-28 11:15:54', '2024-08-28 15:48:46');
INSERT INTO `value_varchar` VALUES (824, 6, 3, 10, 6, '双向四车道道路 310103', NULL, '2024-08-28 11:15:54', '2024-08-28 15:48:46');
INSERT INTO `value_varchar` VALUES (825, 6, 3, 10, 8, '[866666.7, 3760000.0, 4858000.0, , , , , ]', NULL, '2024-08-28 11:15:54', '2024-08-28 15:48:46');
INSERT INTO `value_varchar` VALUES (826, 6, 3, 10, 9, '', NULL, '2024-08-28 11:15:54', '2024-08-28 15:48:46');
INSERT INTO `value_varchar` VALUES (827, 6, 3, 10, 46, '', NULL, '2024-08-28 11:15:54', '2024-08-28 15:48:46');
INSERT INTO `value_varchar` VALUES (828, 6, 3, 11, 6, '双向四车道道路 310103', NULL, '2024-08-28 11:15:54', '2024-08-28 15:48:47');
INSERT INTO `value_varchar` VALUES (829, 6, 3, 11, 8, '[918666.6, 3985599.8, 5149479.5, , , , , ]', NULL, '2024-08-28 11:15:54', '2024-08-28 15:48:47');
INSERT INTO `value_varchar` VALUES (830, 6, 3, 11, 9, '', NULL, '2024-08-28 11:15:54', '2024-08-28 15:48:47');
INSERT INTO `value_varchar` VALUES (831, 32, 1, 1, 6, '双向双车道道路 310101', NULL, '2024-08-28 13:55:42', '2024-08-28 13:55:42');
INSERT INTO `value_varchar` VALUES (832, 32, 1, 1, 8, '[150, 250, 350, ]', NULL, '2024-08-28 13:55:42', '2024-08-28 13:55:42');
INSERT INTO `value_varchar` VALUES (833, 32, 1, 1, 9, '750.0', NULL, '2024-08-28 13:55:42', '2024-08-28 13:55:43');
INSERT INTO `value_varchar` VALUES (837, 32, 1, 2, 6, '双向双车道道路 310101', NULL, '2024-08-28 13:55:42', '2024-08-28 13:55:42');
INSERT INTO `value_varchar` VALUES (838, 32, 1, 2, 8, '[3000, 4000, 5000, ]', NULL, '2024-08-28 13:55:42', '2024-08-28 13:55:42');
INSERT INTO `value_varchar` VALUES (839, 32, 1, 2, 9, '', NULL, '2024-08-28 13:55:42', '2024-08-28 13:55:42');
INSERT INTO `value_varchar` VALUES (843, 32, 1, 3, 6, '双向双车道道路 310101', NULL, '2024-08-28 13:55:42', '2024-08-28 13:55:42');
INSERT INTO `value_varchar` VALUES (844, 32, 1, 3, 8, '[450000.0, 1000000.0, 1750000.0]', NULL, '2024-08-28 13:55:42', '2024-08-28 13:55:43');
INSERT INTO `value_varchar` VALUES (845, 32, 1, 3, 9, '3200000.0', NULL, '2024-08-28 13:55:42', '2024-08-28 13:55:43');
INSERT INTO `value_varchar` VALUES (849, 32, 11, 3, 6, '6%税率投资额 ', NULL, '2024-08-28 13:55:42', '2024-08-28 13:55:42');
INSERT INTO `value_varchar` VALUES (850, 32, 11, 3, 8, '[80000, 70000, 60000, ]', NULL, '2024-08-28 13:55:42', '2024-08-28 13:55:42');
INSERT INTO `value_varchar` VALUES (851, 32, 11, 3, 9, '210000.0', NULL, '2024-08-28 13:55:42', '2024-08-28 13:55:43');
INSERT INTO `value_varchar` VALUES (852, 32, 12, 3, 6, '9%税率投资额 ', NULL, '2024-08-28 13:55:42', '2024-08-28 13:55:42');
INSERT INTO `value_varchar` VALUES (853, 32, 12, 3, 8, '[100000, 120000, 130000, ]', NULL, '2024-08-28 13:55:42', '2024-08-28 13:55:42');
INSERT INTO `value_varchar` VALUES (854, 32, 12, 3, 9, '350000.0', NULL, '2024-08-28 13:55:42', '2024-08-28 13:55:43');
INSERT INTO `value_varchar` VALUES (855, 32, 13, 3, 6, '13%税率投资额', NULL, '2024-08-28 13:55:42', '2024-08-28 13:55:42');
INSERT INTO `value_varchar` VALUES (856, 32, 13, 3, 8, '[1070000.0, 1410000.0, 3060000.0]', NULL, '2024-08-28 13:55:42', '2024-08-28 13:55:43');
INSERT INTO `value_varchar` VALUES (857, 32, 13, 3, 9, '5540000.0', NULL, '2024-08-28 13:55:42', '2024-08-28 13:55:43');
INSERT INTO `value_varchar` VALUES (858, 32, 14, 3, 6, '不含税投资额合计', NULL, '2024-08-28 13:55:42', '2024-08-28 13:55:42');
INSERT INTO `value_varchar` VALUES (859, 32, 14, 3, 8, '[1250000.0, 1600000.0, 3250000.0]', NULL, '2024-08-28 13:55:42', '2024-08-28 13:55:43');
INSERT INTO `value_varchar` VALUES (860, 32, 14, 3, 9, '6100000.0', NULL, '2024-08-28 13:55:42', '2024-08-28 13:55:43');
INSERT INTO `value_varchar` VALUES (861, 32, 11, 4, 6, '6%税率投资额 ', NULL, '2024-08-28 13:55:42', '2024-08-28 13:55:42');
INSERT INTO `value_varchar` VALUES (862, 32, 11, 4, 8, '[84799.99, 74199.99, 63599.996]', NULL, '2024-08-28 13:55:42', '2024-08-28 13:55:43');
INSERT INTO `value_varchar` VALUES (863, 32, 11, 4, 9, '222599.98', NULL, '2024-08-28 13:55:42', '2024-08-28 13:55:43');
INSERT INTO `value_varchar` VALUES (864, 32, 12, 4, 6, '9%税率投资额 ', NULL, '2024-08-28 13:55:42', '2024-08-28 13:55:42');
INSERT INTO `value_varchar` VALUES (865, 32, 12, 4, 8, '[109000.0, 130800.01, 141700.0]', NULL, '2024-08-28 13:55:42', '2024-08-28 13:55:43');
INSERT INTO `value_varchar` VALUES (866, 32, 12, 4, 9, '381500.0', NULL, '2024-08-28 13:55:42', '2024-08-28 13:55:43');
INSERT INTO `value_varchar` VALUES (867, 32, 13, 4, 6, '13%税率投资额', NULL, '2024-08-28 13:55:42', '2024-08-28 13:55:42');
INSERT INTO `value_varchar` VALUES (868, 32, 13, 4, 8, '[1209100.0, 1593300.0, 3457800.0]', NULL, '2024-08-28 13:55:42', '2024-08-28 13:55:43');
INSERT INTO `value_varchar` VALUES (869, 32, 13, 4, 9, '6260200.0', NULL, '2024-08-28 13:55:42', '2024-08-28 13:55:43');
INSERT INTO `value_varchar` VALUES (870, 32, 15, 4, 6, '含税投资额合计', NULL, '2024-08-28 13:55:42', '2024-08-28 13:55:42');
INSERT INTO `value_varchar` VALUES (871, 32, 15, 4, 8, '[1402900.0, 1798300.0, 3663100.0]', NULL, '2024-08-28 13:55:42', '2024-08-28 13:55:43');
INSERT INTO `value_varchar` VALUES (872, 32, 15, 4, 9, '6864300.0', NULL, '2024-08-28 13:55:42', '2024-08-28 13:55:43');
INSERT INTO `value_varchar` VALUES (873, 33, 1, 1, 6, '双向双车道道路 310101', NULL, '2024-08-28 14:44:53', '2024-08-28 14:44:53');
INSERT INTO `value_varchar` VALUES (874, 33, 1, 1, 8, '[150, 250, 350, , ]', NULL, '2024-08-28 14:44:53', '2024-08-28 14:44:53');
INSERT INTO `value_varchar` VALUES (875, 33, 1, 1, 9, '750.0', NULL, '2024-08-28 14:44:53', '2024-08-28 14:44:55');
INSERT INTO `value_varchar` VALUES (879, 33, 1, 2, 6, '双向双车道道路 310101', NULL, '2024-08-28 14:44:54', '2024-08-28 14:44:54');
INSERT INTO `value_varchar` VALUES (880, 33, 1, 2, 8, '[5000, 6000, 7000, , ]', NULL, '2024-08-28 14:44:54', '2024-08-28 14:44:54');
INSERT INTO `value_varchar` VALUES (881, 33, 1, 2, 9, '', NULL, '2024-08-28 14:44:54', '2024-08-28 14:44:54');
INSERT INTO `value_varchar` VALUES (885, 33, 1, 3, 6, '双向双车道道路 310101', NULL, '2024-08-28 14:44:54', '2024-08-28 14:44:54');
INSERT INTO `value_varchar` VALUES (886, 33, 1, 3, 8, '[750000.0, 1500000.0, 2450000.0]', NULL, '2024-08-28 14:44:54', '2024-08-28 14:44:54');
INSERT INTO `value_varchar` VALUES (887, 33, 1, 3, 9, '4700000.0', NULL, '2024-08-28 14:44:54', '2024-08-28 14:44:54');
INSERT INTO `value_varchar` VALUES (891, 33, 11, 3, 6, '6%税率投资额 ', NULL, '2024-08-28 14:44:54', '2024-08-28 14:44:54');
INSERT INTO `value_varchar` VALUES (892, 33, 11, 3, 8, '[80000, 80000, 80000, , ]', NULL, '2024-08-28 14:44:54', '2024-08-28 14:44:54');
INSERT INTO `value_varchar` VALUES (893, 33, 11, 3, 9, '240000.0', NULL, '2024-08-28 14:44:54', '2024-08-28 14:44:54');
INSERT INTO `value_varchar` VALUES (894, 33, 12, 3, 6, '9%税率投资额 ', NULL, '2024-08-28 14:44:54', '2024-08-28 14:44:54');
INSERT INTO `value_varchar` VALUES (895, 33, 12, 3, 8, '[80000, 80000, 80000, , ]', NULL, '2024-08-28 14:44:54', '2024-08-28 14:44:54');
INSERT INTO `value_varchar` VALUES (896, 33, 12, 3, 9, '240000.0', NULL, '2024-08-28 14:44:54', '2024-08-28 14:44:54');
INSERT INTO `value_varchar` VALUES (897, 33, 13, 3, 6, '13%税率投资额', NULL, '2024-08-28 14:44:54', '2024-08-28 14:44:54');
INSERT INTO `value_varchar` VALUES (898, 33, 13, 3, 8, '[990000.0, 2240000.0, 3890000.0]', NULL, '2024-08-28 14:44:54', '2024-08-28 14:44:54');
INSERT INTO `value_varchar` VALUES (899, 33, 13, 3, 9, '7120000.0', NULL, '2024-08-28 14:44:54', '2024-08-28 14:44:54');
INSERT INTO `value_varchar` VALUES (900, 33, 14, 3, 6, '不含税投资额合计', NULL, '2024-08-28 14:44:54', '2024-08-28 14:44:54');
INSERT INTO `value_varchar` VALUES (901, 33, 14, 3, 8, '[1150000.0, 2400000.0, 4050000.0]', NULL, '2024-08-28 14:44:54', '2024-08-28 14:44:54');
INSERT INTO `value_varchar` VALUES (902, 33, 14, 3, 9, '7600000.0', NULL, '2024-08-28 14:44:54', '2024-08-28 14:44:54');
INSERT INTO `value_varchar` VALUES (903, 33, 11, 4, 6, '6%税率投资额 ', NULL, '2024-08-28 14:44:54', '2024-08-28 14:44:54');
INSERT INTO `value_varchar` VALUES (904, 33, 11, 4, 8, '[84799.99, 84799.99, 84799.99]', NULL, '2024-08-28 14:44:54', '2024-08-28 14:44:54');
INSERT INTO `value_varchar` VALUES (905, 33, 11, 4, 9, '254399.97', NULL, '2024-08-28 14:44:54', '2024-08-28 14:44:55');
INSERT INTO `value_varchar` VALUES (906, 33, 12, 4, 6, '9%税率投资额 ', NULL, '2024-08-28 14:44:54', '2024-08-28 14:44:54');
INSERT INTO `value_varchar` VALUES (907, 33, 12, 4, 8, '[87200.0, 87200.0, 87200.0]', NULL, '2024-08-28 14:44:54', '2024-08-28 14:44:54');
INSERT INTO `value_varchar` VALUES (908, 33, 12, 4, 9, '261600.0', NULL, '2024-08-28 14:44:54', '2024-08-28 14:44:55');
INSERT INTO `value_varchar` VALUES (909, 33, 13, 4, 6, '13%税率投资额', NULL, '2024-08-28 14:44:54', '2024-08-28 14:44:54');
INSERT INTO `value_varchar` VALUES (910, 33, 13, 4, 8, '[1118700.0, 2531200.0, 4395700.0]', NULL, '2024-08-28 14:44:54', '2024-08-28 14:44:55');
INSERT INTO `value_varchar` VALUES (911, 33, 13, 4, 9, '8045600.0', NULL, '2024-08-28 14:44:54', '2024-08-28 14:44:55');
INSERT INTO `value_varchar` VALUES (912, 33, 15, 4, 6, '含税投资额合计', NULL, '2024-08-28 14:44:54', '2024-08-28 14:44:54');
INSERT INTO `value_varchar` VALUES (913, 33, 15, 4, 8, '[1290700.0, 2703200.0, 4567700.0]', NULL, '2024-08-28 14:44:54', '2024-08-28 14:44:55');
INSERT INTO `value_varchar` VALUES (914, 33, 15, 4, 9, '8561600.0', NULL, '2024-08-28 14:44:54', '2024-08-28 14:44:55');

-- ----------------------------
-- Procedure structure for addTestData
-- ----------------------------
DROP PROCEDURE IF EXISTS `addTestData`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addTestData`()
begin
declare number int;
set number = 1;
while number <= 10 #插入N条数据
do
insert into table_entity_edit(table_id,entity_id,is_edit)
values(6,number,1);  # 为了区分姓名，我们加上后缀
set number = number + 1;
end while;
end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for test_insert
-- ----------------------------
DROP PROCEDURE IF EXISTS `test_insert`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `test_insert`()
BEGIN
DECLARE i INT DEFAULT 11;

WHILE i<=13 DO
	insert into table_entity_edit (table_id,entity_id,is_edit) VALUES (4, i, 0);
	set i=i+1;
END WHILE;
COMMIT;
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
