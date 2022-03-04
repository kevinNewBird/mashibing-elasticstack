/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : weiqing

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2018-12-03 11:33:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for car_serial_brand
-- ----------------------------
DROP TABLE IF EXISTS `car_serial_brand`;
CREATE TABLE `car_serial_brand` (
                                    `id` int(11) NOT NULL AUTO_INCREMENT,
                                    `uniacid` int(11) DEFAULT NULL,
                                    `parent_id` int(11) DEFAULT '0',
                                    `initials` varchar(5) DEFAULT NULL COMMENT '首字母',
                                    `name` varchar(255) DEFAULT NULL,
                                    `pic_url` longtext,
                                    `status` tinyint(1) DEFAULT '1',
                                    `sort` int(11) DEFAULT '1',
                                    `is_hot` tinyint(1) DEFAULT '0',
                                    `create_time` int(11) DEFAULT NULL,
                                    PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of car_serial_brand
-- ----------------------------
INSERT INTO `car_serial_brand` VALUES ('6723', '4', '0', 'A', '奥迪', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHEVs9u5WAV441AAAKdxZGE4U148.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6724', '4', '0', 'A', 'AC Schnitzer', '/home/web/home/images/brand/100x100_f40_autohomecar__ChcCQFs9vBKAO3YSAAAW0WOWvRc555.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6725', '4', '0', 'A', '阿斯顿·马丁', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHEVs9u6GAPWN8AAAYsmBsCWs847.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6726', '4', '0', 'A', '安凯客车', '/home/web/home/images/brand/100x100_f40_autohomecar__ChcCSFs8riCAYVA2AAApQLgf8a0969.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6727', '4', '0', 'A', '阿尔法·罗密欧', '/home/web/home/images/brand/100x100_f40_autohomecar__ChcCP1s9u5qAemANAABON_GMdvI451.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6728', '4', '0', 'A', 'ALPINA', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHHls8hiKADrqGAABK67H4HUI503.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6729', '4', '0', 'A', 'ABT', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHPls9vLOAHILAAAAWGGhA_W0282.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6730', '4', '0', 'A', 'Agile Automotive', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHHVs9r62AIbiYAAAvAsqdpoA594.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6731', '4', '0', 'A', 'Apollo', '/home/web/home/images/brand/100x100_f40_autohomecar__ChcCR1s90RGASBRgAACz67wh_68723.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6732', '4', '0', 'A', 'Arash', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHHFs8n1CAVhcNAAAV3xEAiDM531.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6733', '4', '0', 'A', 'ARCFOX', '/home/web/home/images/brand/100x100_f40_autohomecar__ChcCQFs8nA6AP-h5AABsvxhHw3E709.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6734', '4', '0', 'A', 'Aria', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHI1s9r2iAJwIXAAAIBShzq60456.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6735', '4', '0', 'A', 'ATS', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHFFs9r4CATn-nAAAnvq8wkV8593.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6736', '4', '0', 'A', 'Aurus', '/home/web/home/images/brand/autohomecar__ChcCQFuN6WiAcztKAAAsLfBmU9g074.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6737', '4', '0', 'A', '艾康尼克', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHG1s8iP6ASbjTAAAOIwskkzo314.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6738', '4', '0', 'A', '爱驰', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHG1s8fwqAOp3IAAALEeTkn6c536.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6739', '4', '0', 'B', '奔驰', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHHVs9u6mAaY6mAAA2M840O5c440.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6740', '4', '0', 'B', '本田', '/home/web/home/images/brand/100x100_f40_autohomecar__ChcCSFs9s1iAGMiNAAAlP_CBhLY618.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6741', '4', '0', 'B', '宝马', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHHVs9uuSAdz-2AAAtY7ZwY3U416.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6742', '4', '0', 'B', '别克', '/home/web/home/images/brand/autohomecar__wKgHG1tr8RaAdw3qAAA_yVjMV8M374.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6743', '4', '0', 'B', '比亚迪', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHPls9uK2AdsqZAAASbDPNPis194.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6744', '4', '0', 'B', '保时捷', '/home/web/home/images/brand/100x100_f40_autohomecar__ChcCSFs9s3yAIrmSAAAedbUb4DQ224.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6745', '4', '0', 'B', '宝骏', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHJFs-vLaAQEDzAAA1tc2laCI414.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6746', '4', '0', 'B', '标致', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHFFs9ut6AMOmqAAAo-NlcmyU236.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6747', '4', '0', 'B', '宾利', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHFFs9uNCAOyW9AAAnxKBcMUs989.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6748', '4', '0', 'B', '北京', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHHVs9u4eAGsNDAAA1F9MDvLo785.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6749', '4', '0', 'B', '奔腾', '/home/web/home/images/brand/autohomecar__ChcCRVusr5-Aayp8AABgOQjSPIc243.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6750', '4', '0', 'B', '北汽制造', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHHFs9vW-AEDEdAAAnsLkIq70403.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6751', '4', '0', 'B', '宝沃', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHEVs8raOAIlAJAAAsu8M_vL0825.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6752', '4', '0', 'B', '北汽昌河', '/home/web/home/images/brand/100x100_f40_autohomecar__ChcCR1s9s-KARAAyAAAeAIvMymc980.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6753', '4', '0', 'B', '北汽新能源', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHJFs8rx-ADw9OAAAkVu_zisE191.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6754', '4', '0', 'B', '北汽幻速', '/home/web/home/images/brand/100x100_f40_autohomecar__ChcCSFs9sVuAciUFAAAormQT1CY327.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6755', '4', '0', 'B', '布加迪', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHHls9u6-AR44cAAAs_DFf2AY596.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6756', '4', '0', 'B', '北汽绅宝', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHE1s9seeAEsIVAAAshG9_zNk915.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6757', '4', '0', 'B', '北汽威旺', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHHls9sl2AS3ynAAAti2dtJX0432.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6758', '4', '0', 'B', '巴博斯', '/home/web/home/images/brand/100x100_f40_autohomecar__ChcCP1s9smyARYtBAAAbaaONnzg711.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6759', '4', '0', 'B', '比速汽车', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHE1s8nBuAMAXYAAAbuJuhhQU550.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6760', '4', '0', 'B', '北汽道达', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHHFs8guKAHq1OAAAuyvGl_RU803.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6761', '4', '0', 'B', '拜腾', '/home/web/home/images/brand/autohomecar__wKgHHFtid_CAW5C5AAAJ55QLP-o625.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6762', '4', '0', 'B', '宝腾', '/home/web/home/images/brand/100x100_f40_autohomecar__ChcCSVs8gfaAFyvOAAAhCmFOgOQ078.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6763', '4', '0', 'B', '保斐利', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHI1s9vNeAUU-ZAAAcjcQv8w8815.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6764', '4', '0', 'B', '北京清行', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHHVs8fkuAWfQiAAA3sYlXyQc334.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6765', '4', '0', 'B', '宾尼法利纳', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHPls9sEuARbeYAAAXf9Xfv-M058.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6766', '4', '0', 'C', '长安', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHPls9uL6AX7bwAAArnGJzV54937.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6767', '4', '0', 'C', '长城', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHHFs9s9OAOb66AAAYgXAgE6Q888.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6768', '4', '0', 'C', '长安欧尚', '/home/web/home/images/brand/100x100_f40_autohomecar__ChcCR1s9vUCABiGBAAA7IcILrv4772.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6769', '4', '0', 'C', '成功汽车', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHHls8r8uATj2MAAAiLCYmGw8960.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6770', '4', '0', 'C', '长安轻型车', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHHVs9r6OAER1OAAA4HbXEhtg696.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6771', '4', '0', 'C', '长安跨越', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHJFs8gvyAIOjpAAAP8QDmnsg975.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6772', '4', '0', 'C', 'Caterham', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHHFs9sZqAMwXxAAAHnt8uIOs878.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6773', '4', '0', 'C', 'Conquest', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHJFs9vN-AbAhBAAAdlrw5tkk822.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6774', '4', '0', 'C', 'Corbellati', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHI1s8f2-AF_P6AAAoUR5zKEA630.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6775', '4', '0', 'C', 'Cupra', '/home/web/home/images/brand/100x100_f40_autohomecar__ChcCSVs8f1iAYeb2AAAg8V5Iaww514.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6776', '4', '0', 'C', '昶洧', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHEVs9r5qACpLQAAAYr9YIb3o495.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6777', '4', '0', 'C', '车和家', '/home/web/home/images/brand/autohomecar__wKgHHltz2oeADM5KAABBEVysPEw425.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6778', '4', '0', 'C', '刺猬汽车', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHG1s8fvOAUftgAAAKk2Q1-KU094.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6779', '4', '0', 'C', '长江EV', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHFFs8nTmAINVuAAAKQpTf6Wo316.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6780', '4', '0', 'D', '大众', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHJFs9vGCABLhjAAAxZhBm1OY195.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6781', '4', '0', 'D', '东风风行', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHG1s9vQGAVg3PAAAWc8enfOw834.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6782', '4', '0', 'D', '东风', '/home/web/home/images/brand/100x100_f40_autohomecar__ChcCP1s-vICAfczWAAA6Go9ioGI755.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6783', '4', '0', 'D', '东南', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHHFs9s_KAaauXAAAa0T_XCnU027.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6784', '4', '0', 'D', '东风风神', '/home/web/home/images/brand/autohomecar__ChcCR1t2aL6Ae3I9AAAkZ9PGQfU508.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6785', '4', '0', 'D', '东风风光', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHJFs8ntuAMyzLAAAiej-Yyi4735.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6786', '4', '0', 'D', 'DS', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHI1s9vOqAZgD8AAAcfiCwiR8514.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6787', '4', '0', 'D', '道奇', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHI1s9uNeAb52AAAASYiac9j0595.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6788', '4', '0', 'D', '东风风度', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHFFs9bDiAMDyGAAAW7CUMgNI376.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6789', '4', '0', 'D', '东风小康', '/home/web/home/images/brand/autohomecar__ChsEflvzc-CAQAjsAAAcpo1Owuo575.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6790', '4', '0', 'D', '大乘汽车', '/home/web/home/images/brand/autohomecar__ChcCQFuXj2aALFhEAAAdu7mBZJo627.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6791', '4', '0', 'D', '东风·瑞泰特', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHI1s8fxeAQ_AqAAAcqetOCNE548.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6792', '4', '0', 'D', '电咖', '/home/web/home/images/brand/100x100_f40_autohomecar__ChcCSFs8hdqAOLNBAACnh0DsAE4404.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6793', '4', '0', 'D', 'Dacia', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHHls9vWCAZ8EDAAAqyVS6mR0026.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6794', '4', '0', 'D', 'Datsun', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHHVs8rpCAbfMWAAAm5U5f5fE182.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6795', '4', '0', 'D', 'DMC', '/home/web/home/images/brand/100x100_f40_autohomecar__ChcCR1s8r6uAK1SJAAATcn67hVU516.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6796', '4', '0', 'D', 'Donkervoort', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHHVs8rYWAZQNFAAAe8xAnQIQ153.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6797', '4', '0', 'D', '大发', '/home/web/home/images/brand/100x100_f40_autohomecar__ChcCSVs-vGGAEaeLAAAp-wVFo0E557.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6798', '4', '0', 'E', 'Elemental', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHJFs8rvuABvjcAAATebzQNMg932.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6799', '4', '0', 'F', '丰田', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHJFs9vGSAY09jAAAvZAwDhiM445.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6800', '4', '0', 'F', '福特', '/home/web/home/images/brand/100x100_f40_autohomecar__ChcCSFs9vGmATLmRAAAoRQhUCeo248.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6801', '4', '0', 'F', '福田', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHFFs9tlaAV372AAAvQCIQ85k286.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6802', '4', '0', 'F', '法拉利', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHHVs9uRGAKwulAAAcefsPoas770.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6803', '4', '0', 'F', '福迪', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHE1s9smOAaFprAABBXlFoCfo726.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6804', '4', '0', 'F', '菲亚特', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHE1s9usmAIAd8AAA9Rhf3SVw801.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6805', '4', '0', 'F', '福汽启腾', '/home/web/home/images/brand/100x100_f40_autohomecar__ChcCSVs9sXWAQiCQAAAzC3v2Ga8780.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6806', '4', '0', 'F', '福田乘用车', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHE1s8haaALR1GAAAjxKKcgAg658.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6807', '4', '0', 'F', 'Faraday Future', '/home/web/home/images/brand/100x100_f40_autohomecar__ChcCQFs9sH2AfzMGAAAjqybm5nE385.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6808', '4', '0', 'F', 'Fisker', '/home/web/home/images/brand/100x100_f40_autohomecar__ChcCR1s9vMGANSuHAAA5fcekJNE969.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6809', '4', '0', 'F', 'FM Auto', '/home/web/home/images/brand/100x100_f40_autohomecar__ChcCQFs9sdaAUX9xAAAssVv52LE360.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6810', '4', '0', 'F', '弗那萨利', '/home/web/home/images/brand/100x100_f40_autohomecar__ChcCQFs9sdyAZLWrAAARpZQYlL4568.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6811', '4', '0', 'G', '广汽传祺', '/home/web/home/images/brand/100x100_f40_autohomecar__ChcCSVs9s_2AQaibAAAlsz0QLvY244.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6812', '4', '0', 'G', 'GMC', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHFFs9te6AToffAAAalLxEQiw361.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6813', '4', '0', 'G', '观致', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHG1s-vBOALsLAAAAwsyp19fk466.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6814', '4', '0', 'G', '广汽吉奥', '/home/web/home/images/brand/100x100_f40_autohomecar__ChcCP1s9tFuAK6vOAAAeCnZnwzg718.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6815', '4', '0', 'G', '广汽集团', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHJFs8fv-AApzlAAASDdMSNco884.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6816', '4', '0', 'G', '广汽新能源', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHEVs8gJyAPn9MAAAk0MrYFwg996.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6817', '4', '0', 'G', '国金汽车', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHE1s8ggWAABjPAAA6CzsiZpg136.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6818', '4', '0', 'G', 'GAZ', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHI1s9a-OAau6MAAA8-iOYIC0191.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6819', '4', '0', 'G', 'GLM', '/home/web/home/images/brand/100x100_f40_autohomecar__ChcCSFs9r_qAf1f6AAAWqfoOHK8666.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6820', '4', '0', 'G', 'GTA', '/home/web/home/images/brand/100x100_f40_autohomecar__ChcCQFs9sLuAfe5dAAAij_7G3wg350.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6821', '4', '0', 'G', 'Gumpert', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHHls9vCGACzHOAAA0NmJHpjc098.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6822', '4', '0', 'G', '谷歌', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHI1s8ry6AdOQoAAAcO0Ag5lg430.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6823', '4', '0', 'G', '光冈', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHE1s9vBqAY6sWAAAQDMyOjUE817.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6824', '4', '0', 'H', '哈弗', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHHFs9bJGAOO_UAAAPX0eFRSo419.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6825', '4', '0', 'H', '红旗', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHEVs9tm6ASWlTAAAUz_2mWTY720.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6826', '4', '0', 'H', '海马', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHHFs9tAiAfpCvAAAnKHYVDTM004.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6827', '4', '0', 'H', '海格', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHFFs9skaAJY6ZAAAzAlgWPH8839.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6828', '4', '0', 'H', '华凯', '/home/web/home/images/brand/100x100_f40_autohomecar__ChcCSFs8o8-AKwfzAABj2CfXwSE062.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6829', '4', '0', 'H', '哈飞', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHJFs9u2KAZWMRAAAQcjoZmFg843.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6830', '4', '0', 'H', '黄海', '/home/web/home/images/brand/100x100_f40_autohomecar__ChcCSFs9tk6ARTblAAAxzI_ZQ3A039.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6831', '4', '0', 'H', '华颂', '/home/web/home/images/brand/100x100_f40_autohomecar__ChcCP1s9sReAIGj8AAAyCRkSDuI502.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6832', '4', '0', 'H', '恒天', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHPls9vTmAaP9OAAAr-Ou6L7o333.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6833', '4', '0', 'H', '华泰', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHHVs9tneAMfJPAAAgUqGRDbI235.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6834', '4', '0', 'H', '华泰新能源', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHJFs8ns6AXjhfAAAhvhXs76U833.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6835', '4', '0', 'H', '汉腾汽车', '/home/web/home/images/brand/100x100_f40_autohomecar__ChcCR1s8nGqAUYohAABBmS3d_M0580.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6836', '4', '0', 'H', '红星汽车', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHJFs8feaAaVdvAAAS0-MQQqo282.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6837', '4', '0', 'H', '华骐', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHPls9sayAb_miAAAvTHnchzM172.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6838', '4', '0', 'H', '悍马', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHG1s9s4SASaD0AAASMGgcudg275.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6839', '4', '0', 'H', 'Hennessey', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHG1s9sfqAVP-ZAAAEXqsByvw201.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6840', '4', '0', 'H', '合众新能源', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHI1s9r3GAOEvUAAAXGLvdKg4106.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6841', '4', '0', 'H', '华利', '/home/web/home/images/brand/100x100_f40_autohomecar__ChcCSFs8rViAee3SAAAkdzLnYr0038.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6842', '4', '0', 'H', '华普', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHHVs9toGADgreAAA_OKgWxgw893.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6843', '4', '0', 'H', '华人运通', '/home/web/home/images/brand/autohomecar__ChsEfVvN2CuAaKGAAAAezGNCKHc343.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6844', '4', '0', 'H', '霍顿', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHHFs8rSyAEsu7AAA59Rcj3Hc218.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6845', '4', '0', 'I', 'Icona', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHHFs9bCiAVaxFAAAM-fOGPKw326.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6846', '4', '0', 'I', 'Inferno', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHHls9sAaAWjfoAAA5Tddwhpk506.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6847', '4', '0', 'I', 'Italdesign', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHI1s8g8mAG9MmAAA3VSjIEFM163.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6848', '4', '0', 'J', '吉利汽车', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHJFs9s2SAMKFPAAAwi9ZY7aA153.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6849', '4', '0', 'J', 'Jeep', '/home/web/home/images/brand/100x100_f40_autohomecar__ChcCSVs9uSKAfIubAAAhhGdi0vw459.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6850', '4', '0', 'J', '捷豹', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHI1s9s4mAHx7jAAAg-scT3Cw173.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6851', '4', '0', 'J', '江淮', '/home/web/home/images/brand/100x100_f40_autohomecar__ChcCQFs9touAZxvgAAAcEM6h5fk288.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6852', '4', '0', 'J', '金杯', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHPls9tAKAdrX2AAAphw4W_r4675.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6853', '4', '0', 'J', '江铃', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHHls9vAmAbQlPAAAOj143nKY495.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6854', '4', '0', 'J', '江铃集团新能源', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHHls8nCeAGlSPAAA5iJXvG4Y041.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6855', '4', '0', 'J', '江铃集团轻汽', '/home/web/home/images/brand/100x100_f40_autohomecar__ChcCSFs8rwaAA4ZqAAAkxky8qCw881.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6856', '4', '0', 'J', '金龙', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHHVs9vIWAOXGAAAAzpOY3F9U855.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6857', '4', '0', 'J', '金旅', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHHVs9bWSAXfQrAAAVxLyBDEw442.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6858', '4', '0', 'J', '九龙', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHFFs9sj-AGkqEAAArzHFBvws428.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6859', '4', '0', 'J', '捷途', '/home/web/home/images/brand/autohomecar__ChcCR1trp2KAcRF9AAAN6k11Pl0515.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6860', '4', '0', 'J', '君马汽车', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHE1s8gx2ANrhoAAA6nWo_8JA317.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6861', '4', '0', 'J', 'Jannarelly', '/home/web/home/images/brand/100x100_f40_autohomecar__ChcCP1s-u1iADtRwAAAc_Kk62aU055.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6862', '4', '0', 'J', '佳跃', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHJFs8rxOAGWUcAAAhIsrjYFU589.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6863', '4', '0', 'J', '金荺u2018EV', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHEVs9ry6ARb4vAAAEZznjSVM824.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6864', '4', '0', 'J', '奇点汽车', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHI1s9r-OAAl8-AAAdOAuzHEk251.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6865', '4', '0', 'K', '凯迪拉克', '/home/web/home/images/brand/100x100_f40_autohomecar__ChcCSVs9uSyADfmVAAAjuVlhC9w875.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6866', '4', '0', 'K', '克莱斯勒', '/home/web/home/images/brand/100x100_f40_autohomecar__ChcCQFs9s02AYJLNAAAYKYPaXc0846.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6867', '4', '0', 'K', '卡威', '/home/web/home/images/brand/100x100_f40_autohomecar__ChcCR1s8r52AE230AAAWOqKEmtw112.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6868', '4', '0', 'K', 'KTM', '/home/web/home/images/brand/100x100_f40_autohomecar__ChcCP1s9tgiAYT0ZAAAMMwYcMdw218.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6869', '4', '0', 'K', '开瑞', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHHFs9tiSAYP7NAAAhIYl-T54441.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6870', '4', '0', 'K', '凯翼', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHFFs8rsyALK5DAAAvhWOtHRA380.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6871', '4', '0', 'K', '科尼赛克', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHPls-vGuARqHmAAAzgnd4H4U651.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6872', '4', '0', 'K', '卡尔森', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHHls9vWiAcGwOAAAi4ekMON4571.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6873', '4', '0', 'K', '开利', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHE1s9a9iAOUt1AAA6XHtMvkY451.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6874', '4', '0', 'K', '凯佰赫', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHEVs9snWARnxKAABCGJAtGEw647.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6875', '4', '0', 'L', '雷克萨斯', '/home/web/home/images/brand/100x100_f40_autohomecar__ChcCSFs91WqAGpOHAABVaN6-df4803.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6876', '4', '0', 'L', '路虎', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHHFs9uTuAByb_AAA0TOzXvPg367.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6877', '4', '0', 'L', '铃木', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHI1s9s5CADS78AAAgk82qckg464.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6878', '4', '0', 'L', '林肯', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHG1s9uk2AfcwNAAAJP1h5KGY057.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6879', '4', '0', 'L', '雷诺', '/home/web/home/images/brand/100x100_f40_autohomecar__ChcCQFs9usKAMIvkAAAcJmbdQXE902.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6880', '4', '0', 'L', '猎豹汽车', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHI1s9s9mAERa5AAArlsAJK-0960.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6881', '4', '0', 'L', '劳斯莱斯', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHI1s9umWAJxTEAAAkqzHs5s8864.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6882', '4', '0', 'L', '陆风', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHHFs9tA-AajwkAAAgKj_1lmg884.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6883', '4', '0', 'L', '力帆汽车', '/home/web/home/images/brand/autohomecar__ChcCSFt03BiANx2oAAAHlvXhKPc300.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6884', '4', '0', 'L', '兰博基尼', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHHFs9uTSAYIYPAAA059qx-5c495.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6885', '4', '0', 'L', '理念', '/home/web/home/images/brand/100x100_f40_autohomecar__ChcCSVs9sxmAek-jAAAp2Z9dqQY376.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6886', '4', '0', 'L', '路特斯', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHHVs9ukGAPJ0OAAA5qTfXAzw235.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6887', '4', '0', 'L', 'LOCAL MOTORS', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHFFs8pB6Aaby5AAAPblmOpFM083.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6888', '4', '0', 'L', '雷丁', '/home/web/home/images/brand/100x100_f40_autohomecar__ChcCQFs9sS6AG2CLAAAoCKEl6H8557.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6889', '4', '0', 'L', '莲花汽车', '/home/web/home/images/brand/100x100_f40_autohomecar__ChcCQFs9tBaAJ4EnAAAyFYbkbB0949.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6890', '4', '0', 'L', '领克', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHFFs8hfSAeEAlAAAJSAX0EFA163.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6891', '4', '0', 'L', 'Lorinser', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHI1s9szSADVbkAAAVF5caJEs349.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6892', '4', '0', 'L', 'LITE', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHPls8ffCASAnxAAAdCFaaILs568.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6893', '4', '0', 'L', '陆地方舟', '/home/web/home/images/brand/100x100_f40_autohomecar__ChcCSFs9sVKAWEgmAAAvEkEYscA543.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6894', '4', '0', 'L', '领途汽车', '/home/web/home/images/brand/autohomecar__ChcCQ1uppBiAN0GbAAASGHwE694630.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6895', '4', '0', 'L', '罗夫哈特', '/home/web/home/images/brand/autohomecar__ChsEkVvFWpmARVvLAAAVxtw5dMM875.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6896', '4', '0', 'L', 'LeSEE', '/home/web/home/images/brand/100x100_f40_autohomecar__ChcCSFs9sCmAdmovAAASVH9kTbc533.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6897', '4', '0', 'L', 'LEVC', '/home/web/home/images/brand/100x100_f40_autohomecar__ChcCR1s8f3iAZRWoAAAdiZ8atus589.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6898', '4', '0', 'L', 'Lucid', '/home/web/home/images/brand/100x100_f40_autohomecar__ChcCSVs9r8-AHZhzAAAOxZXfQ3s529.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6899', '4', '0', 'L', '拉达', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHG1s8o-GATz4GAAAo0ihCM_4223.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6900', '4', '0', 'L', '拉共达', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHEVs9rziAbrtRAAAQ_wRMqXw626.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6901', '4', '0', 'L', '蓝旗亚', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHI1s9u_KARXOAAAA993FaVNE504.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6902', '4', '0', 'L', '朗世', '/home/web/home/images/brand/100x100_f40_autohomecar__ChcCSFs9bHKACAZKAAAgxHnssTg911.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6903', '4', '0', 'L', '雷诺三星', '/home/web/home/images/brand/100x100_f40_autohomecar__ChcCQFs8nrWAW0jhAAAfl3k530c398.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6904', '4', '0', 'L', '理想智造', '/home/web/home/images/brand/autohomecar__ChcCSVvISP-AfpVFAAA_YL3KM6M738.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6905', '4', '0', 'L', '零跑汽车', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHJFs8f8eARJp5AAAUOw7I214444.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6906', '4', '0', 'L', '领志', '/home/web/home/images/brand/100x100_f40_autohomecar__ChcCSFs9sPGABnJNAAAlnKKEpu0303.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6907', '4', '0', 'L', '绿驰', '/home/web/home/images/brand/100x100_f40_autohomecar__ChcCP1s8gGWAKcBwAAArk2E6Nwc210.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6908', '4', '0', 'M', '马自达', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHG1s9uoaAEgwIAAAqsn92Rk4214.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6909', '4', '0', 'M', '玛莎拉蒂', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHG1s9unuAC9zfAAAoCrieSYM032.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6910', '4', '0', 'M', '名爵', '/home/web/home/images/brand/100x100_f40_autohomecar__ChcCSFs9u1yAUL2nAAA653MkqF0048.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6911', '4', '0', 'M', 'MINI', '/home/web/home/images/brand/100x100_f40_autohomecar__ChcCSFs9um-AT-TMAAANglZqQg0423.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6912', '4', '0', 'M', '摩根', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHI1s9vPKAXf-QAAAesE7N0nA774.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6913', '4', '0', 'M', '迈凯伦', '/home/web/home/images/brand/100x100_f40_autohomecar__ChcCP1s9svqATR_XAAAVfSUjnMI497.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6914', '4', '0', 'M', 'MAGNA', '/home/web/home/images/brand/100x100_f40_autohomecar__ChcCR1s9sM-AIvxiAAAZrgnOpvo465.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6915', '4', '0', 'M', 'Mahindra', '/home/web/home/images/brand/100x100_f40_autohomecar__ChcCR1s8n2GAFr3tAAAPprEImzw530.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6916', '4', '0', 'M', 'Mazzanti', '/home/web/home/images/brand/100x100_f40_autohomecar__ChcCSFs8nFOALzFYAABCD6IYMAQ850.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6917', '4', '0', 'M', 'Micro', '/home/web/home/images/brand/autohomecar__wKgHFFtidq-Afj0kAAATVNKV4ak123.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6918', '4', '0', 'M', '迈巴赫', '/home/web/home/images/brand/100x100_f40_autohomecar__ChcCR1s9s5WAdenKAAAcx4faZ1U654.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6919', '4', '0', 'N', '纳智捷', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHEVs9svSAcF7rAAAc48YsMFE160.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6920', '4', '0', 'N', '南京金龙', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHE1s9sTiAYeo1AAAkJBX-2uw544.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6921', '4', '0', 'N', '哪吒汽车', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHHVs8fkKADIEGAAAj7396Pg0344.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6922', '4', '0', 'N', 'nanoFLOWCELL', '/home/web/home/images/brand/100x100_f40_autohomecar__ChcCR1s9sNiANHDJAAALBPiUACc747.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6923', '4', '0', 'N', 'NEVS国能汽车', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHI1s8gzaAWFsVAAASKeNZhyQ775.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6924', '4', '0', 'N', 'Noble', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHEVs9snyAQ8C2AAAqCNGoEp8053.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6925', '4', '0', 'O', '讴歌', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHHVs9s5uACPfEAAAoYR1HYl0751.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6926', '4', '0', 'O', '欧朗', '/home/web/home/images/brand/100x100_f40_autohomecar__ChcCP1s9vH6AUgYgAAATwQOlBn8743.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6927', '4', '0', 'O', '欧拉', '/home/web/home/images/brand/100x100_f40_autohomecar__ChcCR1s9rxyAJ0jLAAAdncBEHpM006.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6928', '4', '0', 'O', '欧尚汽车', '/home/web/home/images/brand/autohomecar__ChcCR1tpQ6GASFKDAAAg6GmT6zI802.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6929', '4', '0', 'O', '欧宝', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHE1s9tw-ARnRNAAAvxtrRDQI383.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6930', '4', '0', 'O', '欧联', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHHVs8pAKARWSfAAAdBsPVMzE991.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6931', '4', '0', 'P', '帕加尼', '/home/web/home/images/brand/100x100_f40_autohomecar__ChcCP1s9txyAdf1vAAAqreuyhMs315.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6932', '4', '0', 'P', 'Polestar', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHE1s8gZmAJ_gRAAAMnxbAOwU102.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6933', '4', '0', 'P', '佩奇奥', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHPls9saSASBO1AAAcKk2mtn8233.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6934', '4', '0', 'Q', '奇瑞', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHJFs9s2qAawQfAAAnXgLikoM954.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6935', '4', '0', 'Q', '起亚', '/home/web/home/images/brand/100x100_f40_autohomecar__ChcCP1s9s6GAF9URAAAjNrt50sk685.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6936', '4', '0', 'Q', '启辰', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHFFs9u-iAMlPPAABDdd4iWaA640.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6937', '4', '0', 'Q', '全球鹰', '/home/web/home/images/brand/autohomecar__ChcCSVtid8aAE778AAApEJCvu7E865.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6938', '4', '0', 'Q', '前途', '/home/web/home/images/brand/100x100_f40_autohomecar__ChcCQFs9sK2AEMPKAAA0wCagSac427.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6939', '4', '0', 'Q', '乔治·巴顿', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHHFs8rguAMm3jAAAmdImp3ws706.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6940', '4', '0', 'Q', '庆铃汽车', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHEVs8gKmAL4sMAAAToxcVbS4598.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6941', '4', '0', 'R', '日产', '/home/web/home/images/brand/100x100_f40_autohomecar__ChcCP1s9tymAIl1PAAArY6Z9BvI666.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6942', '4', '0', 'R', '荣威', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHJFs9u1aAWdFqAAA0wb63zCM830.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6943', '4', '0', 'R', '如虎', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHFFs9bXGAVfcXAAAbJeqqT4k242.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6944', '4', '0', 'R', '瑞驰新能源', '/home/web/home/images/brand/100x100_f40_autohomecar__ChcCR1s8gyqAfv9GAAAWVv00aEs559.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6945', '4', '0', 'R', '容大智造', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHI1s8fbOAYutPAAAOi5RingA336.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6946', '4', '0', 'R', 'Radical', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHHls-u-KAIc03AAAjw1j6JYI663.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6947', '4', '0', 'R', 'RENOVO', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHHFs9sOCAcROzAAATAGwi_xA696.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6948', '4', '0', 'R', 'Rezvani', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHEVs9sJmAOVsPAAALe0564Ak325.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6949', '4', '0', 'R', 'Rimac', '/home/web/home/images/brand/100x100_f40_autohomecar__ChcCR1s9sGuADb7SAAAUsn8oq5U236.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6950', '4', '0', 'R', 'Rinspeed', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHG1s9a8GAds3fAAARaIG8MdY142.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6951', '4', '0', 'R', 'RIVIAN', '/home/web/home/images/brand/autohomecar__ChsEj1v86VKAHQcVAAAH1Vc-0Kk820.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6952', '4', '0', 'R', '瑞麒', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHHFs9thOANwxXAAAbgQiJA8Q971.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6953', '4', '0', 'S', '三菱', '/home/web/home/images/brand/100x100_f40_autohomecar__ChcCQFs9s8WAByhvAAAhhnZCIUU636.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6954', '4', '0', 'S', '斯柯达', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHG1s9t3CAQfVMAABHgh0VMdw516.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6955', '4', '0', 'S', '斯巴鲁', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHEVs9s6eAEeqWAAAvOOeK3u0565.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6956', '4', '0', 'S', '上汽大通', '/home/web/home/images/brand/100x100_f40_autohomecar__ChcCSVs9siSAPUGsAAAuDwpS4m8061.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6957', '4', '0', 'S', 'smart', '/home/web/home/images/brand/100x100_f40_autohomecar__ChcCP1s91a6AMd5MAAAamC_2t_A917.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6958', '4', '0', 'S', '双龙', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHHls9s8CAMj_LAAAnJoT2rJs708.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6959', '4', '0', 'S', '赛麟', '/home/web/home/images/brand/100x100_f40_autohomecar__ChcCSFs9sUqAakxiAAAjZtnf7HE809.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6960', '4', '0', 'S', '思铭', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHFFs9vUiAfM7aAAAmlr1vbnw720.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6961', '4', '0', 'S', 'SWM斯威汽车', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHE1s9sBWAGKfYAAAhrYCIgZk349.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6962', '4', '0', 'S', 'Scion', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHPls9vKSAGIgNAAAqPGy4-VA813.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6963', '4', '0', 'S', 'SIN CARS', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHHVs-u9KAEiE3AAAgL90ZMJA399.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6964', '4', '0', 'S', 'SPIRRA', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHPls9swGAWu7TAAAvokggM9o575.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6965', '4', '0', 'S', 'SSC', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHEVs9vJyAP_RKAAAzYxijdFI340.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6966', '4', '0', 'S', '萨博', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHEVs9tzGAaEOWAAA6O2h6_vU740.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6967', '4', '0', 'S', '上海', '/home/web/home/images/brand/100x100_f40_autohomecar__ChcCR1s9bTqAex1FAAAo0tgJToU127.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6968', '4', '0', 'S', '世爵', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHHVs9tzmAI-3zAAAnMzRcCBI762.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6969', '4', '0', 'S', '首望', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHE1s9slWAFiwoAAAyEi1Gl-c198.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6970', '4', '0', 'S', '双环', '/home/web/home/images/brand/100x100_f40_autohomecar__ChcCQFs9tB6ACfenAAA1ZixM3aA045.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6971', '4', '0', 'S', '思皓SOL', '/home/web/home/images/brand/100x100_f40_autohomecar__ChcCSVs9ryOAJpi3AAAP1UP30xU704.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6972', '4', '0', 'S', '斯太尔', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHJFs9sOiAQjtwAAAvZ6AL2q8555.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6973', '4', '0', 'T', '特斯拉', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHHFs9vLqASyStAAAZuDalRXk481.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6974', '4', '0', 'T', '腾势', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHFFs9vU-AcBGfAAAmHbOv0RQ929.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6975', '4', '0', 'T', '泰卡特', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHHFs-v52ASCz0AAAhAdD9Zvw022.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6976', '4', '0', 'T', 'TOROIDION', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHE1s-u_GAKYS9AAAgT2TAVRU572.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6977', '4', '0', 'T', 'Tramontana', '/home/web/home/images/brand/100x100_f40_autohomecar__ChcCSVs9sxOAfLzYAAAasBBle38800.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6978', '4', '0', 'T', 'TVR', '/home/web/home/images/brand/100x100_f40_autohomecar__ChcCSVs9vKyAC_J_AAAiINHoYTw381.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6979', '4', '0', 'T', '塔塔', '/home/web/home/images/brand/100x100_f40_autohomecar__ChcCSVs9sWqAOjpKAAAfnFCrthM384.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6980', '4', '0', 'T', '泰克鲁斯·腾风', '/home/web/home/images/brand/100x100_f40_autohomecar__ChcCP1s8nxmAKuFKAAAXtaGhcAA193.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6981', '4', '0', 'T', '天际汽车', '/home/web/home/images/brand/autohomecar__ChcCP1v8ufiAeBONAABGIOCPROk627.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6982', '4', '0', 'V', 'Vanda Electric', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHJFs9r8SAAr04AAAbnn86_4A715.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6983', '4', '0', 'V', 'Vinfast', '/home/web/home/images/brand/autohomecar__ChcCR1uXj_eATSVeAAAnAQdZWT4789.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6984', '4', '0', 'V', 'VLF Automotive', '/home/web/home/images/brand/100x100_f40_autohomecar__ChcCQFs9sHaABaTkAAApa1pRzdY874.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6985', '4', '0', 'W', '沃尔沃', '/home/web/home/images/brand/100x100_f40_autohomecar__ChcCSFs9uEmAc6erAABAVTRPyQw889.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6986', '4', '0', 'W', '五菱汽车', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHE1s-6bOAG1hhAAAhkQEWmWU678.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6987', '4', '0', 'W', 'WEY', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHPls8hMSASEehAAAPDUozSkg927.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6988', '4', '0', 'W', '蔚来', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHPls8hLSAV28qAAAVB_4gARo749.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6989', '4', '0', 'W', '五十铃', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHHls9vPqAMteSAAAMEXmpDRw203.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6990', '4', '0', 'W', '潍柴英致', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHFFs9sYmAaIBOAAA6PtoAGWI541.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6991', '4', '0', 'W', '威马汽车', '/home/web/home/images/brand/100x100_f40_autohomecar__ChcCSVs8g2OAYuTWAAAnVkHXFeU092.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6992', '4', '0', 'W', '威麟', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHPls-vHKADs-qAAAt3zAmPZk863.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6993', '4', '0', 'W', 'W Motors', '/home/web/home/images/brand/100x100_f40_autohomecar__ChcCSVs9sMSAVWiHAAAjdsaooA4481.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6994', '4', '0', 'W', '威兹曼', '/home/web/home/images/brand/100x100_f40_autohomecar__ChcCSVs-wSOAXDr8AAApY-eNtxk084.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6995', '4', '0', 'W', '沃克斯豪尔', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHJFs9shGAU5kbAAAk4q6oCD4442.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6996', '4', '0', 'X', '现代', '/home/web/home/images/brand/100x100_f40_autohomecar__ChcCP1s-vD6ALRHvAAAre1CMIAo299.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6997', '4', '0', 'X', '雪佛兰', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHJFs9uFKAb5uSAAAhD-fryHg510.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6998', '4', '0', 'X', '雪铁龙', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHJFs9uFqAbupVAAARpC69vKE867.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('6999', '4', '0', 'X', '新特汽车', '/home/web/home/images/brand/100x100_f40_autohomecar__ChcCR1s8fyyATdzeAAAhDWuIGqs316.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('7000', '4', '0', 'X', '鑫源', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHFFs8geOAGlV5AAAj53UY4BM175.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('7001', '4', '0', 'X', '新凯', '/home/web/home/images/brand/autohomecar__wKgHJFtidpGAWJPZAAA9E8qcFEI929.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('7002', '4', '0', 'X', '西雅特', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHE1s9tDeAZE1rAAAngiw3k7Y434.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('7003', '4', '0', 'X', '小鹏汽车', '/home/web/home/images/brand/100x100_f40_autohomecar__ChcCR1s8iOOAYxNTAAALRBtipQ4227.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('7004', '4', '0', 'X', '星途', '/home/web/home/images/brand/autohomecar__ChsEflvo4_eAWMhAAABEgk0Rb9o405.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('7005', '4', '0', 'Y', '英菲尼迪', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHHVs9uHyAcBFLAAAdmkFNQKU306.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('7006', '4', '0', 'Y', '一汽', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHEVs9tgCAP5I_AAArCAX8ty8224.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('7007', '4', '0', 'Y', '依维柯', '/home/web/home/images/brand/100x100_f40_autohomecar__ChcCP1s9vIyATsAFAAANX6Iaj4U522.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('7008', '4', '0', 'Y', '野马汽车', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHEVs9tfeATlQrAAAeBFFXL38280.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('7009', '4', '0', 'Y', '驭胜', '/home/web/home/images/brand/100x100_f40_autohomecar__ChcCQFs8nUuAefO8AAAWUATTLVA609.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('7010', '4', '0', 'Y', '云雀汽车', '/home/web/home/images/brand/autohomecar__ChsEkVufgTyANUkSAAAsohVVNYM045.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('7011', '4', '0', 'Y', '永源', '/home/web/home/images/brand/100x100_f40_autohomecar__ChcCQFs9tCuAB11_AAA157fRcMU839.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('7012', '4', '0', 'Y', '宇通客车', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHG1s8gwmAM17UAAAfreVOb_g865.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('7013', '4', '0', 'Y', '云度', '/home/web/home/images/brand/100x100_f40_autohomecar__ChcCR1s8hImALELHAAALi6Jc3yg883.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('7014', '4', '0', 'Y', '裕路', '/home/web/home/images/brand/100x100_f40_autohomecar__ChcCQFs8gaqAPQC4AAAnTu45zdQ466.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('7015', '4', '0', 'Y', 'YAMAHA', '/home/web/home/images/brand/100x100_f40_autohomecar__ChcCQFs9sIWAPITTAABLPY8MO3I105.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('7016', '4', '0', 'Y', '游侠', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHPls8o_KACKKfAAAVJkF5248512.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('7017', '4', '0', 'Y', '御捷', '/home/web/home/images/brand/100x100_f40_autohomecar__ChcCP1s8rZeAd9ORAAAylfi3l4U081.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('7018', '4', '0', 'Z', '众泰', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHI1s9tl6AMohnAAAWWCxmgSE212.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('7019', '4', '0', 'Z', '中华', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHJFs9s16Aafk7AAAx3MRyxis299.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('7020', '4', '0', 'Z', '中兴', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHEVs9uIaAedlKAAAp27V9U3w505.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('7021', '4', '0', 'Z', '知豆', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHHVs8rz2ALJKRAAAYO1tByac306.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('7022', '4', '0', 'Z', '之诺', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHHFs9sbSAZmqnAAAqJUazzmY138.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('7023', '4', '0', 'Z', 'Zenvo', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHEVs9vXiAS_yuAAAnRUFasec719.png', '1', '1', '0', '1527063241');
INSERT INTO `car_serial_brand` VALUES ('7024', '4', '0', 'Z', '正道汽车', '/home/web/home/images/brand/100x100_f40_autohomecar__wKgHEVs9r7iATIzrAAAyT3bq7bc485.png', '1', '1', '0', '1527063241');