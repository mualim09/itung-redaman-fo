# Host: localhost  (Version 8.0.12)
# Date: 2018-12-20 11:07:59
# Generator: MySQL-Front 6.0  (Build 2.20)


#
# Structure for table "node_cme"
#

DROP TABLE IF EXISTS `node_cme`;
CREATE TABLE `node_cme` (
  `witel` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`witel`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "node_cme"
#

INSERT INTO `node_cme` VALUES ('TASIKMALAYA','BANJAR'),('TASIKMALAYA','BANJARSARI'),('TASIKMALAYA','CIAMIS'),('TASIKMALAYA','CIAWI'),('TASIKMALAYA','CIBALONG'),('TASIKMALAYA','CIBATU'),('TASIKMALAYA','CIKAJANG'),('TASIKMALAYA','CISOMPET'),('TASIKMALAYA','GARUT');
