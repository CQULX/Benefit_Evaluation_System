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

 Date: 21/07/2024 11:04:46
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for unit_personnel_info
-- ----------------------------
DROP TABLE IF EXISTS `unit_personnel_info`;
CREATE TABLE `unit_personnel_info`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `company_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '市公司',
  `subordinate_unit_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '部门',
  `filler` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '登录人',
  `filler_contact` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '登录人手机号',
  `project_responsible_unit` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '主责部门',
  `project_responsible_person` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '主要责任人',
  `project_responsible_contact` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '主要责任人手机号',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id` DESC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of unit_personnel_info
-- ----------------------------
INSERT INTO `unit_personnel_info` VALUES (5, '市公司E', '部门E1', '郑十一', '12345678905', '主责部门E1', '王十二', '10987654325', '2024-07-18 14:00:00', '2024-07-18 14:00:00');
INSERT INTO `unit_personnel_info` VALUES (4, '市公司D', '部门D1', '周九', '12345678904', '主责部门D1', '吴十', '10987654324', '2024-07-18 13:00:00', '2024-07-18 13:00:00');
INSERT INTO `unit_personnel_info` VALUES (3, '市公司C', '部门C1', '陈七', '12345678903', '主责部门C1', '孙八', '10987654323', '2024-07-18 12:00:00', '2024-07-18 12:00:00');
INSERT INTO `unit_personnel_info` VALUES (2, '市公司B', '部门B1', '王五', '12345678902', '主责部门B1', '赵六', '10987654322', '2024-07-18 11:00:00', '2024-07-18 11:00:00');
INSERT INTO `unit_personnel_info` VALUES (1, '市公司A', '部门A1', '张三', '12345678901', '主责部门A1', '李四', '10987654321', '2024-07-18 10:00:00', '2024-07-18 10:00:00');

SET FOREIGN_KEY_CHECKS = 1;
