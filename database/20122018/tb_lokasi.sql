﻿# Host: localhost  (Version 8.0.12)
# Date: 2018-12-20 11:08:28
# Generator: MySQL-Front 6.0  (Build 2.20)


#
# Structure for table "tb_lokasi"
#

DROP TABLE IF EXISTS `tb_lokasi`;
CREATE TABLE `tb_lokasi` (
  `lokasi_witel` varchar(20) DEFAULT NULL,
  `lokasi_sto` varchar(30) DEFAULT NULL,
  `core` varchar(35) NOT NULL,
  `pjg_kabel` varchar(10) DEFAULT NULL,
  `tipe_kabel` varchar(10) DEFAULT NULL,
  `jenis_kabel` varchar(40) DEFAULT NULL,
  `tanggal` varchar(50) NOT NULL,
  PRIMARY KEY (`core`,`tanggal`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "tb_lokasi"
#

INSERT INTO `tb_lokasi` VALUES ('Tasikmalaya','STO BJR','BJR-BJS','21.500','KT (Duct)','KT G655 48 CORE','03 Desember 2018'),('Tasikmalaya','STO BJR','BJR-CMS-1','28.300','KT (Duct)','KT G652 36 CORE','03 Desember 2018'),('Tasikmalaya','STO BJR','BJR-CMS-2','27.400','KT (Duct)','KT G655 48 CORE','03 Desember 2018'),('Tasikmalaya','STO BJR','BJR-MON','32.300','KT (Duct)','KT G652 24 CORE','03 Desember 2018'),('Tasikmalaya','STO BJR','BJR-SDA-1','50.800','KT (Duct)','KT G655 48 CORE','03 Desember 2018'),('Tasikmalaya','STO BJR','BJR-SDA-2','39.026','KT (Duct)','KT G655 24 CORE (PT. KAI)','03 Desember 2018'),('Tasikmalaya','STO BJS','BJS-BJR','21.500','KT (Duct)','KT G655 48 CORE','03 Desember 2018'),('Tasikmalaya','STO BJS','BJS-PGN-1','48.500','KU (Aerial','KU G652 36 CORE','03 Desember 2018'),('Tasikmalaya','STO BJS','BJS-PGN-2','47.200','KT (Duct)','KT G655 48 CORE','03 Desember 2018'),('Tasikmalaya','STO CAW','CAW-KWL','36.370','KU (Aerial','KU G652 24 CORE','03 Desember 2018'),('Tasikmalaya','STO CAW','CAW-MLO-1','14.400','KT (Duct)','KT G655 48 CORE (Lama)','03 Desember 2018'),('Tasikmalaya','STO CAW','CAW-MLO-2','14.900','KT (Duct)','KT G655 48 CORE (Baru)','03 Desember 2018'),('Tasikmalaya','STO CAW','CAW-RJP-1','12.500','KU (Aerial','KU G655 48 CORE','03 Desember 2018'),('Tasikmalaya','STO CAW','CAW-RJP-2','28.030','KU (Aerial','KU G655 48 CORE','03 Desember 2018'),('Tasikmalaya','STO CBL','CBL-KAL','22.500','KT (Duct)','KT G652 24 CORE','03 Desember 2018'),('Tasikmalaya','STO CBL','CBL-TSM','28.200','KT (Duct)','KT G652 48 CORE','03 Desember 2018'),('Tasikmalaya','STO CBT','CBT-KDN-1','12.925','KU (Aerial','KU G652 24 CORE','03 Desember 2018'),('Tasikmalaya','STO CBT','CBT-KDN-2','15.882','KT (Duct)','KT G655 48 CORE','03 Desember 2018'),('Tasikmalaya','STO CBT','CBT-LAG','15.200','KT (KttL)','KT G655 24 CORE','03 Desember 2018'),('Tasikmalaya','STO CBT','CBT-MLO-1','21.100','KT (KttL)','KT G655 24 CORE','03 Desember 2018'),('Tasikmalaya','STO CBT','CBT-MLO-2','19.200','KT (Duct)','KT G655(1-12) G652(13-24)  (PT. KAI)','03 Desember 2018'),('Tasikmalaya','STO CBT','CBT-WNR','11.329','KT (Duct)','KT G655 48 CORE','03 Desember 2018'),('Tasikmalaya','STO CKG','CKG-CSP-1','41.411','KT (Duct)','KT G655 24 CORE','03 Desember 2018'),('Tasikmalaya','STO CKG','CKG-CSP-2','39.209','KU (Aerial','KU G652 12 CORE','03 Desember 2018'),('Tasikmalaya','STO CKG','CKG-GRT','29.300','KT (Duct)','KT G652 24 CORE','03 Desember 2018'),('Tasikmalaya','STO CKJ','CKJ-KWL-1','35.600','KT (Duct)','KT G652 48 CORE','03 Desember 2018'),('Tasikmalaya','STO CKJ','CKJ-KWL-2','35.800','KU (Aerial','KU G652 24 CORE','03 Desember 2018'),('Tasikmalaya','STO CKJ','CKJ-RJP','43.700','KT (Duct)','KT G655 48 CORE','03 Desember 2018'),('Tasikmalaya','STO CMS','CMS-BJR-1','27.500','KT (Duct)','KT G652 36 CORE','03 Desember 2018'),('Tasikmalaya','STO CMS','CMS-BJR-2','27.500','KT (Duct)','KT G655 48 CORE','03 Desember 2018'),('Tasikmalaya','STO CMS','CMS-KWL-1','21.600','KT (Duct)','KT G655 48 CORE','03 Desember 2018'),('Tasikmalaya','STO CMS','CMS-KWL-2','21.500','KT (Duct)','KT G655 24 CORE','03 Desember 2018'),('Tasikmalaya','STO CMS','CMS-MON','9.400','KT (Duct)','KT G652 12 CORE (PT. KAI)','03 Desember 2018'),('Tasikmalaya','STO CMS','CMS-TSM-1','16.500','KT (Duct)','KT G652 36 CORE','03 Desember 2018'),('Tasikmalaya','STO CMS','CMS-TSM-2','27.400','KT (Duct)','KT G655 48 CORE','03 Desember 2018'),('Tasikmalaya','STO CMS','CMS-TSM-3','20.000','KT (Duct)','KT G655 12 CORE (PT. KAI)','03 Desember 2018'),('Tasikmalaya','STO CSP','CSP-CKG-1','39.209','KU (Aerial','KU G652 12 CORE','03 Desember 2018'),('Tasikmalaya','STO CSP','CSP-CKG-2','41.488','KT (Duct)','KT G655 24 CORE','03 Desember 2018'),('Tasikmalaya','STO CSP','CSP-PMP-1','18.393','KU (Aerial','KU G652 24 CORE','03 Desember 2018'),('Tasikmalaya','STO CSP','CSP-PMP-2','18.680','KT (Duct)','KT G652 24 CORE','03 Desember 2018'),('Tasikmalaya','STO GRT','GRT-CKG','29.300','KT (Duct)','KT G652 24 CORE','03 Desember 2018'),('Tasikmalaya','STO GRT','GRT-KDN','18.600','KT (Duct)','KT G655 48 CORE','03 Desember 2018'),('Tasikmalaya','STO GRT','GRT-SPA-1','42.500','KT (Duct)','KT G652 36 CORE','03 Desember 2018'),('Tasikmalaya','STO GRT','GRT-SPA-2','13.600','KT (Duct)','KT G655 48 CORE (Baru)','03 Desember 2018'),('Tasikmalaya','STO GRT','GRT-WNR-1','13.200','KT (Duct)','KT G655 48 CORE','03 Desember 2018'),('Tasikmalaya','STO GRT','GRT-WNR-2','12.800','KU (Aerial','KU G652 12 CORE','03 Desember 2018'),('Tasikmalaya','STO GRT','GRT-WNR-3','13.300','KT (Duct)','KT G655 48 CORE','03 Desember 2018'),('Tasikmalaya','STO KAL','KAL-BTS-NGL','9.800','KT (Duct)','KT G655 48 CORE','03 Desember 2018'),('Tasikmalaya','STO KAL','KAL-CBL','22.500','KT (Duct)','KT G652 24 CORE','03 Desember 2018'),('Tasikmalaya','STO KDN','KDN-CBT-1','15.887','KT (Duct)','KT G655 48 CORE','03 Desember 2018'),('Tasikmalaya','STO KDN','KDN-CBT-2','16.319','KU (Aerial','KU G652 12 CORE','03 Desember 2018'),('Tasikmalaya','STO KDN','KDN-GRT-1','18.331','KT (Duct)','KT G655 24 CORE (Kiri)','03 Desember 2018'),('Tasikmalaya','STO KDN','KDN-GRT-2','18.485','KT (Duct)','KT G655 24 CORE (Kanan)','03 Desember 2018'),('Tasikmalaya','STO KWL','KWL-CAW','36.500','KT (Duct)','KT G652 24 CORE','03 Desember 2018'),('Tasikmalaya','STO KWL','KWL-CKJ-1','35.600','KT (Duct)','KT G652 48 CORE','03 Desember 2018'),('Tasikmalaya','STO KWL','KWL-CKJ-2','35.600','KU (Aerial','KU G652 24 CORE','03 Desember 2018'),('Tasikmalaya','STO KWL','KWL-CMS-1','21.600','KT (Duct)','KT G655 48 CORE','03 Desember 2018'),('Tasikmalaya','STO KWL','KWL-CMS-2','21.600','KT (Duct)','KT G652 24 CORE','03 Desember 2018'),('Tasikmalaya','STO LAG','LAG-CBT-1','15.200','KT (KttL)','KT G655 24 CORE','03 Desember 2018'),('Tasikmalaya','STO LAG','LAG-CBT-2','12.800','KU (Aerial','KU G652 24 CORE','03 Desember 2018'),('Tasikmalaya','STO LAG','LAG-CLK','19.300','KU (Aerial','KU G655 48 CORE','03 Desember 2018'),('Tasikmalaya','STO LAG','LAG-MLO-1','21.500','KT (KttL)','KT G655 24 CORE','03 Desember 2018'),('Tasikmalaya','STO LAG','LAG-MLO-2','22.000','KT (Duct)','KT G655 48 CORE','03 Desember 2018'),('Tasikmalaya','STO MLO','MLO-CAW-1','14.948','KT (Duct)','KT G655 48 CORE (Baru)','03 Desember 2018'),('Tasikmalaya','STO MLO','MLO-CAW-2','14.948','KT (KttL)','KT G655 48 CORE (Lama)','03 Desember 2018'),('Tasikmalaya','STO MLO','MLO-CBT-1','19.400','KT (Duct)','KT G655(1-12) G655(1','03 Desember 2018'),('Tasikmalaya','STO MLO','MLO-CBT-2','22.000','KT (Duct)','KT G655 48 CORE','03 Desember 2018'),('Tasikmalaya','STO MLO','MLO-LAG','21.500','KT (Duct)','KT G655 48 CORE','03 Desember 2018'),('Tasikmalaya','STO MON','MON-BJR','32.000','KT (Duct)','KT G652 24 CORE','03 Desember 2018'),('Tasikmalaya','STO MON','MON-CMS','9.000','KT (Duct)','KT G652 12 CORE (PT. KAI)','03 Desember 2018'),('Tasikmalaya','STO MON','MON-TSM','12.200','KT (Duct)','KT G652 24 CORE','03 Desember 2018'),('Tasikmalaya','STO PGN','PGN-BJS-1','48.500','KU (Aerial','KU G652 36 CORE','03 Desember 2018'),('Tasikmalaya','STO PGN','PGN-BJS-2','47.400','KT (Duct)','KT G655 48 CORE','03 Desember 2018'),('Tasikmalaya','STO PGN','PGN-BTS-PRG','22.000','KT (Duct)','KT G655 24 CORE','03 Desember 2018'),('Tasikmalaya','STO PMP','PMP-CSP-1','18.393','KU (Aerial','KU G655 24 CORE','03 Desember 2018'),('Tasikmalaya','STO PMP','PMP-CSP-2','18.680','KT (Duct)','KT G652 24 CORE','03 Desember 2018'),('Tasikmalaya','STO RJP','RJP-CAW-1','12.500','KU (Aerial','KU G652 48 CORE','03 Desember 2018'),('Tasikmalaya','STO RJP','RJP-CAW-2','12.000','KT (Duct)','KT G655 48 CORE','03 Desember 2018'),('Tasikmalaya','STO RJP','RJP-CKJ','43.600','KU (Aerial','KU G652 48 CORE','03 Desember 2018'),('Tasikmalaya','STO RJP','RJP-TSM-1','16.300','KU (Aerial','KU G655 48 CORE','03 Desember 2018'),('Tasikmalaya','STO RJP','RJP-TSM-2','16.300','KT (Duct)','KT G655 48 CORE','03 Desember 2018'),('Tasikmalaya','STO SDA','SDA-BJR-1','50.800','KT (Duct)','KT G655 48 CORE','03 Desember 2018'),('Tasikmalaya','STO SDA','SDA-BJR-2','39.000','KT (Duct)','KT G655 24 CORE (PT. KAI)','03 Desember 2018'),('Tasikmalaya','STO SPA','SPA-GRT','42.300','KT (Duct)','KT G652 36 CORE','03 Desember 2018'),('Tasikmalaya','STO SPA','SPA-TSM-1','18.300','KU (Aerial','KT G652 36 CORE','03 Desember 2018'),('Tasikmalaya','STO SPA','SPA-TSM-2','18.000','KT (Duct)','KT G655 48 CORE','03 Desember 2018'),('Tasikmalaya','STO TSM','TSM-CBL','28.030','KT (Duct)','KT G652 48 CORE','03 Desember 2018'),('Tasikmalaya','STO TSM','TSM-CMS-1','17.500','KT (Duct)','KT G652 36 CORE','03 Desember 2018'),('Tasikmalaya','STO TSM','TSM-CMS-2','17.800','KT (Duct)','KT G655 48 CORE','03 Desember 2018'),('Tasikmalaya','STO TSM','TSM-CMS-3','20.400','KT (Duct)','KT G655 12 CORE (PT. KAI)','03 Desember 2018'),('Tasikmalaya','STO TSM','TSM-MON','12.026','KT (Duct)','KT G652 24 CORE','03 Desember 2018'),('Tasikmalaya','STO TSM','TSM-RJP-1','16.500','KU (Aerial','KU G652 48 CORE','03 Desember 2018'),('Tasikmalaya','STO TSM','TSM-RJP-2','16.900','KT (Duct)','KT G655 48 CORE','03 Desember 2018'),('Tasikmalaya','STO TSM','TSM-RJP-3','28.030','KT (Duct)','KT G655 48 CORE (HH Primajasa)','03 Desember 2018'),('Tasikmalaya','STO TSM','TSM-SPA-1','18.300','KU (Aerial','KU G652 36 CORE','03 Desember 2018'),('Tasikmalaya','STO TSM','TSM-SPA-2','18.000','KT (Duct)','KT G655 48 CORE','03 Desember 2018'),('Tasikmalaya','STO WNR','WNR-CBT','11.300','KT (Duct)','KT G655 48 CORE','03 Desember 2018'),('Tasikmalaya','STO WNR','WNR-GRT-1','13.200','KT (Duct)','KT G655 48 CORE','03 Desember 2018'),('Tasikmalaya','STO WNR','WNR-GRT-2','12.884','KU (Aerial','KU G652 12 CORE','03 Desember 2018'),('Tasikmalaya','STO WNR','WNR-GRT-3','13.200','KT (Duct)','KT G655 48 CORE (Baru)','03 Desember 2018');