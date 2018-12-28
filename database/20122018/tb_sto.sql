# Host: localhost  (Version 8.0.12)
# Date: 2018-12-20 11:08:44
# Generator: MySQL-Front 6.0  (Build 2.20)


#
# Structure for table "tb_sto"
#

DROP TABLE IF EXISTS `tb_sto`;
CREATE TABLE `tb_sto` (
  `lokasi_sto` varchar(20) NOT NULL,
  `nama_sto` varchar(30) NOT NULL,
  PRIMARY KEY (`lokasi_sto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "tb_sto"
#

INSERT INTO `tb_sto` VALUES ('BTS PARIGI','PARIGI'),('BTS TJ','TOBONG JAYA'),('STO BJR','BANJAR'),('STO BJS','BANJARSARI'),('STO CAW','CIAWI'),('STO CBL','CIBALONG'),('STO CBT','CIBATU'),('STO CKG','CIKAJANG'),('STO CKJ','CIKIJING'),('STO CMS','CIAMIS'),('STO CSP','CISOMPET'),('STO GRT','GARUT'),('STO KAL','KARANGNUNGGAL'),('STO KDN','KADUNGORA'),('STO KWL','KAWALI'),('STO LAG','LIMBANGAN'),('STO MLO','MALANGBONG'),('STO MON','MANONJAYA'),('STO PGN','PANGANDARAN'),('STO PMP','PAMEUNGPEUK'),('STO RJP','RAJAPOLAH'),('STO SDA','SIDAREJA'),('STO SPA','SINGAPARNA'),('STO TSM','TASIKMALAYA'),('STO WNR','WANARAJA');
