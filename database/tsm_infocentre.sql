# Host: localhost  (Version 8.0.12)
# Date: 2018-11-30 11:19:54
# Generator: MySQL-Front 6.0  (Build 2.20)


#
# Structure for table "activity_log"
#

DROP TABLE IF EXISTS `activity_log`;
CREATE TABLE `activity_log` (
  `nik` char(6) DEFAULT NULL,
  `waktu` datetime DEFAULT NULL,
  `tabel` varchar(100) DEFAULT NULL,
  `activity` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "activity_log"
#

INSERT INTO `activity_log` VALUES ('960089','2018-11-29 11:32:19','-','Log keluar dari sistem.'),('960089','2018-11-29 11:32:43','-','Log masuk ke sistem.'),('960089','2018-11-29 11:42:21','-','Log keluar dari sistem.'),('960089','2018-11-29 11:44:31','-','Log masuk ke sistem.'),('960089','2018-11-29 11:45:44','-','Log keluar dari sistem.'),('960089','2018-11-29 11:46:33','-','Log masuk ke sistem.'),('960089','2018-11-29 13:35:42','-','Log keluar dari sistem.'),('960089','2018-11-29 13:39:10','-','Log masuk ke sistem.'),('960089','2018-11-29 15:45:02','adm_user','Memperbarui data user 950099'),('960089','2018-11-29 16:47:49','adm_user','Mengganti password user 950099'),('960089','2018-11-29 16:48:18','adm_user','Mengganti password user 950099'),('960089','2018-11-29 17:04:03','adm_user','Menghapus data user 950099'),('960089','2018-11-29 17:30:11','-','Log keluar dari sistem.'),('960089','2018-11-29 17:31:50','-','Log masuk ke sistem.');

#
# Structure for table "adm_user"
#

DROP TABLE IF EXISTS `adm_user`;
CREATE TABLE `adm_user` (
  `nik` char(6) NOT NULL DEFAULT '',
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  PRIMARY KEY (`nik`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "adm_user"
#

INSERT INTO `adm_user` VALUES ('940146','Firman Aden','081335841475','940146@telkom.co.id','Monyet23','2018-11-20 22:07:40'),('960089','Ardhi Surya Ibrahim','082213458679','rdsurya147@gmail.com','abc123','2018-11-20 20:52:51');
