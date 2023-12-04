/*
 Navicat Premium Data Transfer

 Source Server         : 127.0.0.1
 Source Server Type    : MySQL
 Source Server Version : 80028
 Source Host           : localhost:3306
 Source Schema         : parkweb

 Target Server Type    : MySQL
 Target Server Version : 80028
 File Encoding         : 65001

 Date: 04/12/2023 10:15:42
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for carorder
-- ----------------------------
DROP TABLE IF EXISTS `carorder`;
CREATE TABLE `carorder`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `province` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `carNumber` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `customerName` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `customerPhone` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `startTime` datetime(0) NULL DEFAULT NULL,
  `endTime` datetime(0) NULL DEFAULT NULL,
  `cost` double(10, 2) NULL DEFAULT NULL,
  `time` double(10, 2) NULL DEFAULT NULL,
  `state` int(0) NULL DEFAULT NULL,
  `cid` int(0) NULL DEFAULT NULL,
  `sid` int(0) NULL DEFAULT NULL,
  `uid` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of carorder
-- ----------------------------
INSERT INTO `carorder` VALUES (1, '京', 'AA1233', '刘先生', '15560156626', '2019-03-09 16:51:14', '2019-03-11 04:50:11', 419.50, 27.97, 1, 12, 301, 9);
INSERT INTO `carorder` VALUES (4, '京', 'AB7834', '李小姐', '15560156626', '2019-03-09 17:09:57', '2019-03-10 21:39:04', 427.25, 28.48, 1, 12, 167, 9);
INSERT INTO `carorder` VALUES (7, '京', 'AB7835', '', '', '2019-03-11 01:36:57', '2019-03-11 03:16:13', 84.75, 5.65, 1, 12, 301, 9);
INSERT INTO `carorder` VALUES (8, '豫', 'G57A34', '李小姐', '15560156626', '2019-03-12 01:18:41', NULL, 0.00, 0.00, 0, 12, 166, 9);
INSERT INTO `carorder` VALUES (10, '京', 'PH3X00', '小明', '15560156626', '2019-03-13 23:25:54', '2019-03-14 14:02:32', 0.00, 14.60, 1, 12, 167, 9);
INSERT INTO `carorder` VALUES (11, '京', 'PH3X00', '', '', '2019-03-14 14:10:22', '2019-03-14 14:58:04', 62.67, 0.78, 1, 15, 221, 9);
INSERT INTO `carorder` VALUES (12, '京', 'PH3X00', '', '', '2019-04-04 23:10:42', NULL, 0.00, 0.00, 0, 12, 167, 9);
INSERT INTO `carorder` VALUES (13, '京', 'AA1233', '', '', '2019-04-12 16:15:54', '2019-04-12 16:16:15', 0.00, 0.00, 1, 15, 221, 9);
INSERT INTO `carorder` VALUES (14, '京', 'PH3X00', '', '', '2019-04-12 17:04:18', NULL, 0.00, 0.00, 0, 12, 168, 9);
INSERT INTO `carorder` VALUES (15, '京', 'A34341', '12', '13812345678', '2023-12-04 09:44:58', NULL, 0.00, 0.00, 0, 16, 303, 4);

-- ----------------------------
-- Table structure for carspace
-- ----------------------------
DROP TABLE IF EXISTS `carspace`;
CREATE TABLE `carspace`  (
  `s_id` int(0) NOT NULL AUTO_INCREMENT,
  `s_name` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `s_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `s_state` int(0) NULL DEFAULT NULL,
  `s_type` int(0) NULL DEFAULT NULL,
  `s_price` double(10, 2) NULL DEFAULT NULL,
  `s_pricetime` double(10, 2) NULL DEFAULT NULL,
  `c_id` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`s_id`) USING BTREE,
  INDEX `carspace_ibfk_1`(`c_id`) USING BTREE,
  CONSTRAINT `carspace_ibfk_1` FOREIGN KEY (`c_id`) REFERENCES `carstation` (`c_id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 335 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of carspace
-- ----------------------------
INSERT INTO `carspace` VALUES (166, 'D1--3', '你猜啊', 1, 1, 0.40, 1.00, 12);
INSERT INTO `carspace` VALUES (167, 'D1--4', '', 1, 2, 0.00, 1.00, 12);
INSERT INTO `carspace` VALUES (168, 'D1--5', NULL, 1, 2, 0.00, 1.00, 12);
INSERT INTO `carspace` VALUES (221, 'G1--1', '1号楼地下一层', 0, 1, 80.00, 1.00, 15);
INSERT INTO `carspace` VALUES (222, 'G1--2', NULL, 0, 1, 80.00, 1.00, 15);
INSERT INTO `carspace` VALUES (223, 'G1--3', NULL, 0, 1, 80.00, 1.00, 15);
INSERT INTO `carspace` VALUES (224, 'G1--4', NULL, 0, 1, 80.00, 1.00, 15);
INSERT INTO `carspace` VALUES (225, 'G1--5', NULL, 0, 1, 80.00, 1.00, 15);
INSERT INTO `carspace` VALUES (226, 'G1--6', NULL, 0, 1, 80.00, 1.00, 15);
INSERT INTO `carspace` VALUES (227, 'G1--7', NULL, 0, 1, 80.00, 1.00, 15);
INSERT INTO `carspace` VALUES (228, 'G1--8', NULL, 0, 1, 80.00, 1.00, 15);
INSERT INTO `carspace` VALUES (229, 'G1--9', NULL, 0, 1, 80.00, 1.00, 15);
INSERT INTO `carspace` VALUES (230, 'G1--10', NULL, 0, 1, 80.00, 1.00, 15);
INSERT INTO `carspace` VALUES (231, 'G1--11', NULL, 0, 1, 80.00, 1.00, 15);
INSERT INTO `carspace` VALUES (232, 'G1--12', NULL, 0, 1, 80.00, 1.00, 15);
INSERT INTO `carspace` VALUES (233, 'G1--13', NULL, 0, 1, 80.00, 1.00, 15);
INSERT INTO `carspace` VALUES (234, 'G1--14', NULL, 0, 1, 80.00, 1.00, 15);
INSERT INTO `carspace` VALUES (235, 'G1--15', NULL, 0, 1, 80.00, 1.00, 15);
INSERT INTO `carspace` VALUES (236, 'G1--16', NULL, 0, 1, 80.00, 1.00, 15);
INSERT INTO `carspace` VALUES (237, 'G1--17', NULL, 0, 1, 80.00, 1.00, 15);
INSERT INTO `carspace` VALUES (238, 'G1--18', NULL, 0, 1, 80.00, 1.00, 15);
INSERT INTO `carspace` VALUES (239, 'G1--19', NULL, 0, 1, 80.00, 1.00, 15);
INSERT INTO `carspace` VALUES (240, 'G1--20', NULL, 0, 1, 80.00, 1.00, 15);
INSERT INTO `carspace` VALUES (241, 'G1--21', NULL, 0, 1, 80.00, 1.00, 15);
INSERT INTO `carspace` VALUES (242, 'G1--22', NULL, 0, 1, 80.00, 1.00, 15);
INSERT INTO `carspace` VALUES (243, 'G1--23', NULL, 0, 1, 80.00, 1.00, 15);
INSERT INTO `carspace` VALUES (244, 'G1--24', NULL, 0, 1, 80.00, 1.00, 15);
INSERT INTO `carspace` VALUES (245, 'G1--25', NULL, 0, 1, 80.00, 1.00, 15);
INSERT INTO `carspace` VALUES (246, 'G1--26', NULL, 0, 1, 80.00, 1.00, 15);
INSERT INTO `carspace` VALUES (247, 'G1--27', NULL, 0, 1, 80.00, 1.00, 15);
INSERT INTO `carspace` VALUES (248, 'G1--28', NULL, 0, 1, 80.00, 1.00, 15);
INSERT INTO `carspace` VALUES (249, 'G1--29', NULL, 0, 1, 80.00, 1.00, 15);
INSERT INTO `carspace` VALUES (250, 'G1--30', NULL, 0, 1, 80.00, 1.00, 15);
INSERT INTO `carspace` VALUES (251, 'G1--31', NULL, 0, 1, 80.00, 1.00, 15);
INSERT INTO `carspace` VALUES (252, 'G1--32', NULL, 0, 1, 80.00, 1.00, 15);
INSERT INTO `carspace` VALUES (253, 'G1--33', NULL, 0, 1, 80.00, 1.00, 15);
INSERT INTO `carspace` VALUES (254, 'G1--34', NULL, 0, 1, 80.00, 1.00, 15);
INSERT INTO `carspace` VALUES (255, 'G1--35', NULL, 0, 1, 80.00, 1.00, 15);
INSERT INTO `carspace` VALUES (256, 'G1--36', NULL, 0, 1, 80.00, 1.00, 15);
INSERT INTO `carspace` VALUES (257, 'G1--37', NULL, 0, 1, 80.00, 1.00, 15);
INSERT INTO `carspace` VALUES (258, 'G1--38', NULL, 0, 1, 80.00, 1.00, 15);
INSERT INTO `carspace` VALUES (259, 'G1--39', NULL, 0, 1, 80.00, 1.00, 15);
INSERT INTO `carspace` VALUES (260, 'G1--40', NULL, 0, 1, 80.00, 1.00, 15);
INSERT INTO `carspace` VALUES (261, 'G1--41', NULL, 0, 1, 80.00, 1.00, 15);
INSERT INTO `carspace` VALUES (262, 'G1--42', NULL, 0, 1, 80.00, 1.00, 15);
INSERT INTO `carspace` VALUES (263, 'G1--43', NULL, 0, 1, 80.00, 1.00, 15);
INSERT INTO `carspace` VALUES (264, 'G1--44', NULL, 0, 1, 80.00, 1.00, 15);
INSERT INTO `carspace` VALUES (265, 'G1--45', NULL, 0, 1, 80.00, 1.00, 15);
INSERT INTO `carspace` VALUES (266, 'G1--46', NULL, 0, 1, 80.00, 1.00, 15);
INSERT INTO `carspace` VALUES (267, 'G1--47', NULL, 0, 1, 80.00, 1.00, 15);
INSERT INTO `carspace` VALUES (268, 'G1--48', NULL, 0, 1, 80.00, 1.00, 15);
INSERT INTO `carspace` VALUES (269, 'G1--49', NULL, 0, 1, 80.00, 1.00, 15);
INSERT INTO `carspace` VALUES (270, 'G1--50', NULL, 0, 1, 80.00, 1.00, 15);
INSERT INTO `carspace` VALUES (271, 'G1--51', NULL, 0, 1, 80.00, 1.00, 15);
INSERT INTO `carspace` VALUES (272, 'G1--52', NULL, 0, 1, 80.00, 1.00, 15);
INSERT INTO `carspace` VALUES (273, 'G1--53', NULL, 0, 1, 80.00, 1.00, 15);
INSERT INTO `carspace` VALUES (274, 'G1--54', NULL, 0, 1, 80.00, 1.00, 15);
INSERT INTO `carspace` VALUES (275, 'G1--55', NULL, 0, 1, 80.00, 1.00, 15);
INSERT INTO `carspace` VALUES (276, 'G1--56', NULL, 0, 1, 80.00, 1.00, 15);
INSERT INTO `carspace` VALUES (277, 'G1--57', NULL, 0, 1, 80.00, 1.00, 15);
INSERT INTO `carspace` VALUES (278, 'G1--58', NULL, 0, 1, 80.00, 1.00, 15);
INSERT INTO `carspace` VALUES (279, 'G1--59', NULL, 0, 1, 80.00, 1.00, 15);
INSERT INTO `carspace` VALUES (280, 'G1--60', NULL, 0, 1, 80.00, 1.00, 15);
INSERT INTO `carspace` VALUES (281, 'G1--61', NULL, 0, 1, 80.00, 1.00, 15);
INSERT INTO `carspace` VALUES (282, 'G1--62', NULL, 0, 1, 80.00, 1.00, 15);
INSERT INTO `carspace` VALUES (283, 'G1--63', NULL, 0, 1, 80.00, 1.00, 15);
INSERT INTO `carspace` VALUES (284, 'G1--64', NULL, 0, 1, 80.00, 1.00, 15);
INSERT INTO `carspace` VALUES (285, 'G1--65', NULL, 0, 1, 80.00, 1.00, 15);
INSERT INTO `carspace` VALUES (286, 'G1--66', NULL, 0, 1, 80.00, 1.00, 15);
INSERT INTO `carspace` VALUES (287, 'G1--67', NULL, 0, 1, 80.00, 1.00, 15);
INSERT INTO `carspace` VALUES (288, 'G1--68', NULL, 0, 1, 80.00, 1.00, 15);
INSERT INTO `carspace` VALUES (289, 'G1--69', NULL, 0, 1, 80.00, 1.00, 15);
INSERT INTO `carspace` VALUES (290, 'G1--70', NULL, 0, 1, 80.00, 1.00, 15);
INSERT INTO `carspace` VALUES (291, 'G1--71', NULL, 0, 1, 80.00, 1.00, 15);
INSERT INTO `carspace` VALUES (292, 'G1--72', NULL, 0, 1, 80.00, 1.00, 15);
INSERT INTO `carspace` VALUES (293, 'G1--73', NULL, 0, 1, 80.00, 1.00, 15);
INSERT INTO `carspace` VALUES (294, 'G1--74', NULL, 0, 1, 80.00, 1.00, 15);
INSERT INTO `carspace` VALUES (295, 'G1--75', NULL, 0, 1, 80.00, 1.00, 15);
INSERT INTO `carspace` VALUES (296, 'G1--76', NULL, 0, 1, 80.00, 1.00, 15);
INSERT INTO `carspace` VALUES (297, 'G1--77', NULL, 0, 1, 80.00, 1.00, 15);
INSERT INTO `carspace` VALUES (298, 'G1--78', NULL, 0, 1, 80.00, 1.00, 15);
INSERT INTO `carspace` VALUES (299, 'G1--79', NULL, 0, 1, 80.00, 1.00, 15);
INSERT INTO `carspace` VALUES (300, 'G1--80', NULL, 0, 1, 80.00, 1.00, 15);
INSERT INTO `carspace` VALUES (302, 'F1--1', '', 0, 1, 0.30, 0.30, 16);
INSERT INTO `carspace` VALUES (303, 'F1--2', NULL, 1, 1, 0.30, 0.20, 16);
INSERT INTO `carspace` VALUES (304, 'E1--1', NULL, 0, 1, 10.00, 2.00, 17);
INSERT INTO `carspace` VALUES (305, 'E1--2', NULL, 0, 1, 10.00, 2.00, 17);
INSERT INTO `carspace` VALUES (306, 'E1--3', NULL, 0, 1, 10.00, 2.00, 17);
INSERT INTO `carspace` VALUES (307, 'E1--4', NULL, 0, 1, 10.00, 2.00, 17);
INSERT INTO `carspace` VALUES (308, 'E1--5', NULL, 0, 1, 10.00, 2.00, 17);
INSERT INTO `carspace` VALUES (309, 'E1--6', NULL, 0, 1, 10.00, 2.00, 17);
INSERT INTO `carspace` VALUES (310, 'E1--7', NULL, 0, 1, 10.00, 2.00, 17);
INSERT INTO `carspace` VALUES (311, 'E1--8', NULL, 0, 1, 10.00, 2.00, 17);
INSERT INTO `carspace` VALUES (312, 'E1--9', NULL, 0, 1, 10.00, 2.00, 17);
INSERT INTO `carspace` VALUES (313, 'E1--10', NULL, 0, 1, 10.00, 2.00, 17);
INSERT INTO `carspace` VALUES (314, 'E1--11', NULL, 0, 1, 10.00, 2.00, 17);
INSERT INTO `carspace` VALUES (315, 'E1--12', NULL, 0, 1, 10.00, 2.00, 17);
INSERT INTO `carspace` VALUES (316, 'E1--13', NULL, 0, 1, 10.00, 2.00, 17);
INSERT INTO `carspace` VALUES (317, 'E1--14', NULL, 0, 1, 10.00, 2.00, 17);
INSERT INTO `carspace` VALUES (318, 'E1--15', NULL, 0, 1, 10.00, 2.00, 17);
INSERT INTO `carspace` VALUES (319, 'E1--16', NULL, 0, 1, 10.00, 2.00, 17);
INSERT INTO `carspace` VALUES (320, 'E1--17', NULL, 0, 1, 10.00, 2.00, 17);
INSERT INTO `carspace` VALUES (321, 'E1--18', NULL, 0, 1, 10.00, 2.00, 17);
INSERT INTO `carspace` VALUES (322, 'E1--19', NULL, 0, 1, 10.00, 2.00, 17);
INSERT INTO `carspace` VALUES (323, 'E1--20', NULL, 0, 1, 10.00, 2.00, 17);
INSERT INTO `carspace` VALUES (324, 'E1--21', NULL, 0, 1, 10.00, 2.00, 17);
INSERT INTO `carspace` VALUES (325, 'E1--22', NULL, 0, 1, 10.00, 2.00, 17);
INSERT INTO `carspace` VALUES (326, 'E1--23', NULL, 0, 1, 10.00, 2.00, 17);
INSERT INTO `carspace` VALUES (327, 'E1--24', NULL, 0, 1, 10.00, 2.00, 17);
INSERT INTO `carspace` VALUES (328, 'E1--25', NULL, 0, 1, 10.00, 2.00, 17);
INSERT INTO `carspace` VALUES (329, 'E1--26', NULL, 0, 1, 10.00, 2.00, 17);
INSERT INTO `carspace` VALUES (330, 'E1--27', NULL, 0, 1, 10.00, 2.00, 17);
INSERT INTO `carspace` VALUES (331, 'E1--28', NULL, 0, 1, 10.00, 2.00, 17);
INSERT INTO `carspace` VALUES (332, 'E1--29', NULL, 0, 1, 10.00, 2.00, 17);
INSERT INTO `carspace` VALUES (333, 'E1--30', NULL, 0, 1, 10.00, 2.00, 17);
INSERT INTO `carspace` VALUES (334, 'E1--31', NULL, 0, 1, 10.00, 2.00, 17);

-- ----------------------------
-- Table structure for carstation
-- ----------------------------
DROP TABLE IF EXISTS `carstation`;
CREATE TABLE `carstation`  (
  `c_id` int(0) NOT NULL AUTO_INCREMENT,
  `c_name` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `c_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `c_description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `c_total` int(0) NULL DEFAULT NULL,
  `c_code` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `c_price` double(10, 2) NULL DEFAULT NULL,
  `c_pricetime` double(10, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`c_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of carstation
-- ----------------------------
INSERT INTO `carstation` VALUES (12, 'D1', '11号楼一层', '这个车库可真的好啊        ', 3, 'e9053', 0.40, 1.00);
INSERT INTO `carstation` VALUES (15, 'G1', '1号楼一层', '萨克管发放水电费功夫收到货', 80, 'd17aa', 80.00, 1.00);
INSERT INTO `carstation` VALUES (16, 'F1', '14号楼一层', ' ', 2, 'd25e9', 0.30, 0.20);
INSERT INTO `carstation` VALUES (17, 'E1', '9号楼一层', '', 31, 'ccbc1', 10.00, 2.00);

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `creatTime` datetime(0) NULL DEFAULT NULL,
  `uid` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES (7, 'QQ', '<div class=\"para\" label-module=\"para\" style=\"font-size: 14px; overflow-wrap: break-word; margin-bottom: 15px; text-indent: 28px; line-height: 24px; zoom: 1; font-family: arial, 宋体, sans-serif; white-space: normal;\">QQ是<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E8%85%BE%E8%AE%AF\" style=\"color: rgb(19, 110, 194);\">腾讯</a>QQ的<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E7%AE%80%E7%A7%B0/10492947\" data-lemmaid=\"10492947\" style=\"color: rgb(19, 110, 194);\">简称</a>，是<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E8%85%BE%E8%AE%AF%E5%85%AC%E5%8F%B8/355135\" data-lemmaid=\"355135\" style=\"color: rgb(19, 110, 194);\">腾讯公司</a>开发的一款基于<a target=\"_blank\" href=\"https://baike.baidu.com/item/Internet\" style=\"color: rgb(19, 110, 194);\">Internet</a>的<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E5%8D%B3%E6%97%B6%E9%80%9A%E4%BF%A1/6514295\" data-lemmaid=\"6514295\" style=\"color: rgb(19, 110, 194);\">即时通信</a>（<a target=\"_blank\" href=\"https://baike.baidu.com/item/IM\" style=\"color: rgb(19, 110, 194);\">IM</a>）<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E8%BD%AF%E4%BB%B6/12053\" data-lemmaid=\"12053\" style=\"color: rgb(19, 110, 194);\">软件</a>。目前QQ已经覆盖<a target=\"_blank\" href=\"https://baike.baidu.com/item/Microsoft%20Windows\" style=\"color: rgb(19, 110, 194);\">Microsoft Windows</a>、<a target=\"_blank\" href=\"https://baike.baidu.com/item/OS%20X\" style=\"color: rgb(19, 110, 194);\">OS X</a>、<a target=\"_blank\" href=\"https://baike.baidu.com/item/Android/60243\" data-lemmaid=\"60243\" style=\"color: rgb(19, 110, 194);\">Android</a>、<a target=\"_blank\" href=\"https://baike.baidu.com/item/iOS/45705\" data-lemmaid=\"45705\" style=\"color: rgb(19, 110, 194);\">iOS</a>、<a target=\"_blank\" href=\"https://baike.baidu.com/item/Windows%20Phone\" style=\"color: rgb(19, 110, 194);\">Windows Phone</a>等多种主流平台。其标志是一只戴着红色<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E5%9B%B4%E5%B7%BE/1216\" data-lemmaid=\"1216\" style=\"color: rgb(19, 110, 194);\">围巾</a>的小<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E4%BC%81%E9%B9%85/66071\" data-lemmaid=\"66071\" style=\"color: rgb(19, 110, 194);\">企鹅</a>。</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; overflow-wrap: break-word; margin-bottom: 15px; text-indent: 28px; line-height: 24px; zoom: 1; font-family: arial, 宋体, sans-serif; white-space: normal;\">腾讯QQ支持在线聊天、<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E8%A7%86%E9%A2%91%E9%80%9A%E8%AF%9D/7065874\" data-lemmaid=\"7065874\" style=\"color: rgb(19, 110, 194);\">视频通话</a>、点对点断点续传文件、<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E5%85%B1%E4%BA%AB%E6%96%87%E4%BB%B6/3638070\" data-lemmaid=\"3638070\" style=\"color: rgb(19, 110, 194);\">共享文件</a>、<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E7%BD%91%E7%BB%9C%E7%A1%AC%E7%9B%98/99228\" data-lemmaid=\"99228\" style=\"color: rgb(19, 110, 194);\">网络硬盘</a>、自定义面板、<a target=\"_blank\" href=\"https://baike.baidu.com/item/QQ%E9%82%AE%E7%AE%B1\" style=\"color: rgb(19, 110, 194);\">QQ邮箱</a>等多种功能，并可与多种通讯终端相连。</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; overflow-wrap: break-word; margin-bottom: 15px; text-indent: 28px; line-height: 24px; zoom: 1; font-family: arial, 宋体, sans-serif; white-space: normal;\">2017年1月5日，腾讯QQ和<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E7%BE%8E%E7%9A%84%E9%9B%86%E5%9B%A2/9590056\" data-lemmaid=\"9590056\" style=\"color: rgb(19, 110, 194);\">美的集团</a>在<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E6%B7%B1%E5%9C%B3/140588\" data-lemmaid=\"140588\" style=\"color: rgb(19, 110, 194);\">深圳</a>正式签署<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E6%88%98%E7%95%A5/16710481\" data-lemmaid=\"16710481\" style=\"color: rgb(19, 110, 194);\">战略</a>合作协议，双方将共同构建基于IP授权与物联云技术的深度合作，实现家电产品的连接、对话和远程控制。双方合作的第一步，是共同推出基于QQfamily IP授权和腾讯<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E7%89%A9%E8%81%94%E4%BA%91/9664491\" data-lemmaid=\"9664491\" style=\"color: rgb(19, 110, 194);\">物联云</a>技术的多款智能家电产品。</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; overflow-wrap: break-word; margin-bottom: 15px; text-indent: 28px; line-height: 24px; zoom: 1; font-family: arial, 宋体, sans-serif; white-space: normal;\">2018年12月12日，QQ发布公告，称由于业务调整，webQQ即将在2019年1月1日停止服务，并提示用户下载QQ客户端</div>', '2019-03-12 21:42:03', 9);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sex` int(0) NOT NULL,
  `email` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `headImg` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `say` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `state` int(0) NOT NULL,
  `type` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (4, '45678', 'wkj', 'e10adc3949ba59abbe56e057f20f883e', 'wenkj.top', 0, '221610916@qq.com', '13888888888', 'imgs/e2b331c4-a1_photo_2023-09-19_17-14-56.jpg', '美好的一天！', 1, 1);
INSERT INTO `user` VALUES (5, '82668', 'admin002', '40b9408eaf5dc1c195ba7175a97b5f8c', '刘美', 0, '221610916@qq.com', '13888888888', 'headImgs/1.png', '美好的一天！', 0, 0);
INSERT INTO `user` VALUES (6, '82667', 'admin003', 'e71432aed2d17acc8b77d253531c818e', '李帅气', 1, '221610916@qq.com', '13888888888', 'headImgs/1.png', '美好的一天！', 1, 0);
INSERT INTO `user` VALUES (8, '23412', 'admin007', '98bfe7780b3044eba8560c4a35455a18', '流浪地球', 1, '221610916@qq.com', '13888888888', 'headImgs/1.png', '道路千万条，安全第一条；行车不规范，亲人两行泪！', 1, 0);
INSERT INTO `user` VALUES (9, '82669', 'admin001', '4297f44b13955235245b2497399d7a93', '刘美丽', 0, '221610916@qq.com', '13888888888', 'imgs/1.jpg', '道路千万条，安全第一条；行车不规范，亲人两行泪！', 1, 1);

SET FOREIGN_KEY_CHECKS = 1;
