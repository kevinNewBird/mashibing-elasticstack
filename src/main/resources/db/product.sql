/*
 Navicat Premium Data Transfer

 Source Server         : 阿里数据库
 Source Server Type    : MySQL
 Source Server Version : 50734
 Source Host           : 101.132.151.4:3306
 Source Schema         : msb_elk

 Target Server Type    : MySQL
 Target Server Version : 50734
 File Encoding         : 65001

 Date: 03/03/2022 18:03:44
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `price` double(10, 0) NULL DEFAULT NULL COMMENT '价格',
  `tags` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标签',
  `create_time` datetime(0) NULL DEFAULT NULL,
  `product_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '产品名',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '产品表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product`(id,product_name,description,price,tags,create_time) VALUES (1, 'xiaomi phone', 'shouji zhong de zhandouji', 3999, '\"xingjiabi\",\"fashao\",\"buka\"', '2021-06-01 17:59:51');
INSERT INTO `product`(id,product_name,description,price,tags,create_time) VALUES (2, 'xiaomi nfc phone', 'zhichi quangongneng nfc, shouji zhong de jianjiji', 4999, '\"xingjiabi\",\"fashao\",\"gongjiaoka\"', '2021-06-02 17:59:51');
INSERT INTO `product`(id,product_name,description,price,tags,create_time) VALUES (3, 'nfc phone', 'shouji zhong de hongzhaji', 2999, '\"xingjiabi\",\"fashao\",\"menjinka\"', '2021-06-03 17:59:51');
INSERT INTO `product`(id,product_name,description,price,tags,create_time) VALUES (4, 'xiaomi erji', 'erji zhong de huangmenji', 999, '\"low\",\"bufangshui\",\"yinzhicha\"', '2021-04-15 17:59:51');
INSERT INTO `product`(id,product_name,description,price,tags,create_time) VALUES (5, 'hongmi erji', 'erji zhong de kendeji', 399, '\"lowbee\",\"xuhangduan\",\"zhiliangx\"', '2021-04-16 17:59:51');

SET FOREIGN_KEY_CHECKS = 1;
