/*
Navicat MySQL Data Transfer

Source Server         : 60
Source Server Version : 50552
Source Host           : 192.168.8.60:3306
Source Database       : shcrawler

Target Server Type    : MYSQL
Target Server Version : 50552
File Encoding         : 65001

Date: 2017-03-03 18:09:44
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for example
-- ----------------------------
DROP TABLE IF EXISTS `example`;
CREATE TABLE `example` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `desc1` varchar(255) DEFAULT NULL,
  `desc2` varchar(255) DEFAULT NULL,
  `desc3` varchar(255) DEFAULT NULL,
  `desc4` varchar(255) DEFAULT NULL,
  `desc5` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of example
-- ----------------------------
INSERT INTO `example` VALUES ('1', '2008080737684', '张婷', '无', '13830803860', '甘肃省天水市桃园路8号天水二幼', '218.00');
INSERT INTO `example` VALUES ('2', '2008080743684', '曹静运', '84776190', '无', '北京市朝阳区望京爱慕大厦', '488.00');
INSERT INTO `example` VALUES ('3', '2008080835881', '施昕宇', '84776206', '无', '北京新兴产业开发区218号', '172.00');
INSERT INTO `example` VALUES ('4', '2008080893590', '王珏', '无', '13581523753', '北京市海淀区学清路逸城东苑12号楼4单元1202', '605.00');
INSERT INTO `example` VALUES ('5', '2008080864276', '徐林华', '无', '13701319709', '北京市朝阳区光华路7号汉威大厦西区22层', '162.00');
INSERT INTO `example` VALUES ('6', '2008080851717', '王蕾', '84776122', '13701079777', '北京朝阳区望京产业开发区利泽中园二区218-220号楼爱慕大厦', '82.00');
INSERT INTO `example` VALUES ('7', '2008080860591', '闫斌', '82645185', '13311087666', '北京海淀区白塔庵金谷园5号楼4门201', '1920.00');
INSERT INTO `example` VALUES ('8', '2008080932039', '沈洁', '无', '13754881288', '山西省太原市建设南路207号山西省邮电建设工程有限公司第十二分公司', '502.00');
INSERT INTO `example` VALUES ('9', '2008080975716', '林新慧', '无', '13313803888', '福建省尤溪县城关三角场邮政报刊门市部', '647.00');
INSERT INTO `example` VALUES ('10', '2008081024393', '苏国霞', '0512--68011118-4341', '13862108490', '苏州工业园区机场路和乔丽晶4341', '318.00');
