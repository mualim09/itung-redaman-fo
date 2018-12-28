# Host: localhost  (Version 8.0.12)
# Date: 2018-12-20 11:07:35
# Generator: MySQL-Front 6.0  (Build 2.20)


#
# Structure for table "cme_rectifier"
#

DROP TABLE IF EXISTS `cme_rectifier`;
CREATE TABLE `cme_rectifier` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `witel` varchar(255) NOT NULL DEFAULT '',
  `node` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(255) DEFAULT NULL,
  `kap` decimal(6,2) DEFAULT NULL COMMENT 'Amper',
  `terpakai` decimal(6,2) DEFAULT NULL COMMENT 'Amper',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

#
# Data for table "cme_rectifier"
#

INSERT INTO `cme_rectifier` VALUES (1,'TASIKMALAYA','BANJAR','ZTE ZXDU2400\r\n',150.00,13.60),(2,'','','',0.00,0.00),(3,'TASIKMALAYA','BANJAR','Hariffa',300.00,134.00);
