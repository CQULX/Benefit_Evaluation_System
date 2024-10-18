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

 Date: 26/08/2024 21:44:06
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for attribute
-- ----------------------------
DROP TABLE IF EXISTS `attribute`;
CREATE TABLE `attribute`  (
	`id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '属性ID',
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '属性名称',
  `type` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '属性值的类型',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 46 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

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

SET FOREIGN_KEY_CHECKS = 1;
