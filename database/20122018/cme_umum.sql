﻿# Host: localhost  (Version 8.0.12)
# Date: 2018-12-20 11:07:43
# Generator: MySQL-Front 6.0  (Build 2.20)


#
# Structure for table "cme_umum"
#

DROP TABLE IF EXISTS `cme_umum`;
CREATE TABLE `cme_umum` (
  `witel` varchar(255) NOT NULL DEFAULT '',
  `node` varchar(255) NOT NULL DEFAULT '',
  `dei_merk` varchar(255) DEFAULT NULL,
  `dei_kap` decimal(6,2) DEFAULT NULL COMMENT 'KVA',
  `pln_kap` decimal(6,2) DEFAULT NULL COMMENT 'KVA',
  `pln_terpakai` decimal(6,2) DEFAULT NULL COMMENT 'KVA',
  `keterangan` tinytext,
  PRIMARY KEY (`witel`,`node`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "cme_umum"
#

INSERT INTO `cme_umum` VALUES ('TASIKMALAYA','BANJAR','DEUTZ',225.00,82.50,20.70,'Rectifier ZTE Terpasang 3 modul x 50 A'),('TASIKMALAYA','BANJARSARI','PERKINS',50.00,45.00,10.30,'RECTI ZTE STANBY\n'),('TASIKMALAYA','CIAMIS',NULL,NULL,NULL,NULL,NULL),('TASIKMALAYA','CIAWI',NULL,NULL,NULL,NULL,NULL),('TASIKMALAYA','CIBALONG',NULL,NULL,NULL,NULL,NULL),('TASIKMALAYA','CIBATU',NULL,NULL,NULL,NULL,NULL),('TASIKMALAYA','CIKAJANG',NULL,NULL,NULL,NULL,NULL),('TASIKMALAYA','CISOMPET',NULL,NULL,NULL,NULL,NULL),('TASIKMALAYA','GARUT',NULL,NULL,NULL,NULL,NULL);
