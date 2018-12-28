# Host: localhost  (Version 8.0.12)
# Date: 2018-12-20 11:08:13
# Generator: MySQL-Front 6.0  (Build 2.20)


#
# Structure for table "stok_bbm_master"
#

DROP TABLE IF EXISTS `stok_bbm_master`;
CREATE TABLE `stok_bbm_master` (
  `witel` varchar(255) NOT NULL DEFAULT '',
  `tanggal` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `jumlah_sisa_bulan_lalu_solar` decimal(7,2) DEFAULT NULL COMMENT 'unit liter',
  `jumlah_sisa_bulan_lalu_oli` decimal(7,2) DEFAULT NULL COMMENT 'Unit liter',
  `jumlah_jam_jalan_deg` decimal(7,2) DEFAULT NULL COMMENT 'unit jam',
  `jumlah_pemakaian_solar` decimal(7,2) DEFAULT NULL COMMENT 'Unit liter',
  `jumlah_pemakaian_oli` decimal(7,2) DEFAULT NULL COMMENT 'unit liter',
  `jumlah_penambahan_solar` decimal(7,2) DEFAULT NULL COMMENT 'unit liter',
  `jumlah_penambahan_oli` decimal(7,2) DEFAULT NULL COMMENT 'unit liter',
  `jumlah_persediaan_solar` decimal(7,2) DEFAULT NULL COMMENT 'unit liter',
  `jumlah_persediaan_oli` decimal(7,2) DEFAULT NULL COMMENT 'unit liter',
  `tangki_backup_bulan_lalu` decimal(7,2) DEFAULT NULL COMMENT 'unit liter',
  `tangki_backup` decimal(7,2) DEFAULT NULL COMMENT 'unit liter',
  `pembelian_solar` decimal(7,2) DEFAULT NULL COMMENT 'unit liter',
  `pembelian_oli` decimal(7,2) DEFAULT NULL COMMENT 'unit liter',
  PRIMARY KEY (`witel`,`tanggal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "stok_bbm_master"
#

INSERT INTO `stok_bbm_master` VALUES ('TASIKMALAYA','2018-10-01 00:00:00',6497.33,411.00,97.20,187.11,333.00,105.00,0.00,6415.22,0.00,1292.39,1187.39,0.00,0.00),('TASIKMALAYA','2018-11-01 00:00:00',6415.25,0.00,2.00,5.24,0.00,0.00,0.00,6410.01,1.00,1187.39,1187.39,0.00,1.00);
