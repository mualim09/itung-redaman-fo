# Host: localhost  (Version 8.0.12)
# Date: 2018-12-20 11:07:11
# Generator: MySQL-Front 6.0  (Build 2.20)


#
# Structure for table "adm_user"
#

DROP TABLE IF EXISTS `adm_user`;
CREATE TABLE `adm_user` (
  `nik` char(10) NOT NULL DEFAULT '',
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

INSERT INTO `adm_user` VALUES ('81100425','Dian Saepul Milah','081222789333','unyil.spa@gmail.com',NULL,'2018-12-10 07:35:30'),('81100594','Erik Drajat Mardiana','085353471723','erikmardiana39@gmail.com',NULL,'2018-12-13 12:15:28'),('86100372','Yudi Muwardi','085214029212','yudie0701@gmail.com',NULL,'2018-12-13 12:14:01'),('90100368','Dida Bayu Somantri','082218518518','didabayu13@gmail.com',NULL,'2018-12-13 12:07:35'),('940146','Firman Aden','081335841475','940146@telkom.co.id','Monyet23','2018-11-20 22:07:40'),('94100371','Nendi Kurniadi','081254189733','nendikurniadi23@gmail.com',NULL,'2018-12-13 12:06:06'),('960089','Ardhi Surya Ibrahim','082213458679','rdsurya147@gmail.com','123456','2018-11-20 20:52:51'),('96100581','Nidar Abil Haq','082315040509','nidar.tsk1234@gmail.com',NULL,'2018-12-13 12:04:33'),('99100369','Femy Lukman Dzulfa','085220785934','fluqman24@gmail.com',NULL,'2018-12-10 07:36:48');
