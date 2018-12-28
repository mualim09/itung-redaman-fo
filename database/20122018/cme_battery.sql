# Host: localhost  (Version 8.0.12)
# Date: 2018-12-20 11:07:26
# Generator: MySQL-Front 6.0  (Build 2.20)


#
# Structure for table "cme_battery"
#

DROP TABLE IF EXISTS `cme_battery`;
CREATE TABLE `cme_battery` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `witel` varchar(255) DEFAULT NULL,
  `node` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `bank` int(4) DEFAULT NULL,
  `kap` decimal(7,2) DEFAULT NULL COMMENT 'amper hour',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

#
# Data for table "cme_battery"
#

INSERT INTO `cme_battery` VALUES (1,'TASIKMALAYA','BANJAR','Kering',2,600.00),(2,'TASIKMALAYA','BANJAR','Basah',2,1600.00);
