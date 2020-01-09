/*
 Navicat Premium Data Transfer

 Source Server         : 192.168.0.250_3308
 Source Server Type    : MySQL
 Source Server Version : 80016
 Source Host           : 192.168.0.250:3308
 Source Schema         : twebsit

 Target Server Type    : MySQL
 Target Server Version : 80016
 File Encoding         : 65001

 Date: 09/01/2020 20:40:47
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '表ID',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '新闻标题',
  `summary` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '摘要',
  `nimg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '封面',
  `ntime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日期',
  `author` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '作者',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '新闻内容',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `主键索引`(`id`) USING BTREE COMMENT '主键索引,提供查询列表效率'
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '新闻资讯表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES (23, '报告1', '新闻摘要1', '\\static\\upload\\file\\20191130/2.jpg', '2019-11-12', '张三1', '<p>侧减肥减肥IE发</p>\n<p><img src=\"\\static\\upload\\file\\20191130/1.jpg\" alt=\"人生的阶梯\" width=\"80\" height=\"50\" /></p>\n<p>飞机飞机加法IE加法IE</p>');
INSERT INTO `news` VALUES (24, '报告2', '新闻摘要2', '\\static\\upload\\file\\20191130/3.jpg', '2019-11-13', '李四', '<p>侧减肥减肥IE发</p>\n<p><img src=\"\\static\\upload\\file\\20191130/1.jpg\" alt=\"人生的阶梯\" width=\"80\" height=\"50\" /><img src=\"\\static\\upload\\file\\20191130/4.jpg\" alt=\"海的宽阔\" width=\"80\" height=\"50\" /></p>\n<p>飞机飞机加法IE加法IE</p>');
INSERT INTO `news` VALUES (25, '报告3', '新闻摘要3', '\\static\\upload\\file\\20191130/2.jpg', '2019-11-14', '王五', '<p>侧减肥减肥IE发</p>\n<p><img src=\"\\static\\upload\\file\\20191130/1.jpg\" alt=\"人生的阶梯\" width=\"80\" height=\"50\" /></p>\n<p>努力学习奋发拼搏</p>');
INSERT INTO `news` VALUES (26, '报告4', '新闻摘要4', '\\static\\upload\\file\\20191130/3.jpg', '2019-11-15', '马六', '<p>努力到无能为力,拼搏到感动自己</p>\n<p><img src=\"\\static\\upload\\file\\20191130/1.jpg\" alt=\"人生的阶梯\" width=\"80\" height=\"50\" /></p>\n<p>努力学习奋发拼搏</p>');
INSERT INTO `news` VALUES (27, '报告5', '新闻摘要5', '\\static\\upload\\file\\20191130/3.jpg', '2019-11-16', '张飞', '<p>努力到无能为力,拼搏到感动自己</p>\n<p><img src=\"\\static\\upload\\file\\20191130/1.jpg\" alt=\"人生的阶梯\" width=\"80\" height=\"50\" /></p>\n<p>努力学习奋发拼搏</p>');
INSERT INTO `news` VALUES (28, '报告6', '新闻摘要6', '\\static\\upload\\file\\20191130/1.jpg', '2019-11-17', '赵云', '<p>努力到无能为力,拼搏到感动自己</p>\n<p><img src=\"\\static\\upload\\file\\20191130/1.jpg\" alt=\"人生的阶梯\" width=\"80\" height=\"50\" /></p>\n<p>努力学习奋发拼搏</p>');

SET FOREIGN_KEY_CHECKS = 1;
