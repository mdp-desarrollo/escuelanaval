DROP TABLE cds;

CREATE TABLE `cds` (
  `titel` varchar(200) COLLATE latin1_general_ci DEFAULT NULL,
  `interpret` varchar(200) COLLATE latin1_general_ci DEFAULT NULL,
  `jahr` int(11) DEFAULT NULL,
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

INSERT INTO cds VALUES("Beauty","Ryuichi Sakamoto","1990","1");
INSERT INTO cds VALUES("Goodbye Country (Hello Nightclub)","Groove Armada","2001","4");
INSERT INTO cds VALUES("Glee","Bran Van 3000","1997","5");



