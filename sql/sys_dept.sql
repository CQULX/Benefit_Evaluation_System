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

 Date: 20/08/2024 00:40:16
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint NULL DEFAULT 0 COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '部门名称',
  `order_num` int NULL DEFAULT 0 COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
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

SET FOREIGN_KEY_CHECKS = 1;
