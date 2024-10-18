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

 Date: 20/08/2024 18:35:44
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for table
-- ----------------------------
DROP TABLE IF EXISTS `table`;
CREATE TABLE `table`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '表ID',
  `module_id` int NOT NULL COMMENT '属于的模块的ID',
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '表名',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  `entity_related` int NOT NULL,
  `is_total` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of table
-- ----------------------------
INSERT INTO `table` VALUES (1, 1, '建设进度', '2024-07-01 10:00:00', '2024-07-01 10:00:00', 1, 0);
INSERT INTO `table` VALUES (2, 1, '单条造价（不含税）', '2024-07-02 11:00:00', '2024-07-02 11:00:00', 1, 0);
INSERT INTO `table` VALUES (3, 1, '投资金额（不含税）', '2024-07-03 12:00:00', '2024-07-03 12:00:00', 1, 0);
INSERT INTO `table` VALUES (4, 1, '投资金额（含税）', '2024-07-04 13:00:00', '2024-07-04 13:00:00', 0, 1);
INSERT INTO `table` VALUES (5, 1, '行政区或县级市本次立项的需求情况', '2024-07-05 14:00:00', '2024-07-05 14:00:00', 1, 0);
INSERT INTO `table` VALUES (6, 2, '每年新增投入道路条数', '2024-07-06 15:00:00', '2024-07-06 15:00:00', 1, 0);
INSERT INTO `table` VALUES (7, 2, '每年废弃道路条数', '2024-07-07 16:00:00', '2024-07-07 16:00:00', 1, 0);
INSERT INTO `table` VALUES (8, 2, '年底投入使用的道路条数', '2024-07-08 17:00:00', '2024-07-08 17:00:00', 1, 0);
INSERT INTO `table` VALUES (9, 2, '单条售价（不含税）（MP009）', '2024-07-08 17:00:00', '2024-07-08 17:00:00', 1, 0);
INSERT INTO `table` VALUES (10, 2, '收入（不含税）(MP010)', '2024-07-08 17:00:00', '2024-07-08 17:00:00', 1, 1);
INSERT INTO `table` VALUES (11, 2, '收入（含税）(MP011)', '2024-07-08 17:00:00', '2024-07-08 17:00:00', 1, 0);
INSERT INTO `table` VALUES (12, 5, '道路项目流水数据   (单位：万元)-含税', '2024-07-08 17:00:00', '2024-07-08 17:00:00', 0, 0);
INSERT INTO `table` VALUES (13, 4, '道路折旧支出辅助计算表-不含税（单位：万元）', '2024-08-20 18:32:42', '2024-08-20 18:32:46', 0, 1);

SET FOREIGN_KEY_CHECKS = 1;
