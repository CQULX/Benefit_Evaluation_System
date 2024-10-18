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

 Date: 14/08/2024 21:35:22
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

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

SET FOREIGN_KEY_CHECKS = 1;
