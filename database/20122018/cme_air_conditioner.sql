# Host: localhost  (Version 8.0.12)
# Date: 2018-12-20 11:07:18
# Generator: MySQL-Front 6.0  (Build 2.20)


#
# Structure for table "cme_air_conditioner"
#

DROP TABLE IF EXISTS `cme_air_conditioner`;
CREATE TABLE `cme_air_conditioner` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `witel` varchar(255) DEFAULT NULL,
  `node` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `kap` decimal(5,2) DEFAULT NULL COMMENT 'PK',
  `jumlah` int(4) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

#
# Data for table "cme_air_conditioner"
#

INSERT INTO `cme_air_conditioner` VALUES (1,'TASIKMALAYA','BANJAR','Splite',2.00,3);
