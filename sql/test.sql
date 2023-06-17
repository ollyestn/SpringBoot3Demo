/*
 Navicat Premium Data Transfer

 Source Server         : 127.0.0.1(root-root)
 Source Server Type    : MySQL
 Source Server Version : 50734
 Source Host           : localhost:3316
 Source Schema         : test

 Target Server Type    : MySQL
 Target Server Version : 50734
 File Encoding         : 65001

 Date: 17/06/2023 08:48:25
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for test_data
-- ----------------------------
DROP TABLE IF EXISTS `test_data`;
CREATE TABLE `test_data`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `test_int` int(11) NULL DEFAULT NULL,
  `test_str` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  `version` int(11) NULL DEFAULT 0,
  `test_enum` int(11) NULL DEFAULT NULL,
  `tenant_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of test_data
-- ----------------------------
INSERT INTO `test_data` VALUES (1, 0, '0条', NULL, NULL, 0, 2, NULL);
INSERT INTO `test_data` VALUES (2, 1, '1条', NULL, NULL, 0, 2, NULL);
INSERT INTO `test_data` VALUES (3, 2, '2条', NULL, NULL, 0, 2, NULL);
INSERT INTO `test_data` VALUES (4, 3, '3条', NULL, NULL, 0, 2, NULL);
INSERT INTO `test_data` VALUES (5, 4, '4条', NULL, NULL, 0, 2, NULL);
INSERT INTO `test_data` VALUES (6, 5, '5条', NULL, NULL, 0, 2, NULL);
INSERT INTO `test_data` VALUES (7, 6, '6条', NULL, NULL, 0, 2, NULL);
INSERT INTO `test_data` VALUES (8, 7, '7条', NULL, NULL, 0, 2, NULL);
INSERT INTO `test_data` VALUES (9, 8, '8条', NULL, NULL, 0, 2, NULL);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `salt` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码盐',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `age` int(11) NULL DEFAULT NULL COMMENT '年龄',
  `skill` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '技能',
  `evaluate` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '评价',
  `fraction` int(11) NULL DEFAULT NULL COMMENT '分数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '13910386725', '123456', NULL, '张三', 18, '夺命低吸', '高手', 66);

SET FOREIGN_KEY_CHECKS = 1;
