/*
SQLyog Community Edition- MySQL GUI v7.15 
MySQL - 5.5.29 : Database - fnewpro
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`fnewpro` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `fnewpro`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

insert  into `admin`(`username`,`password`) values ('admin','admin');

/*Table structure for table `doctor` */

DROP TABLE IF EXISTS `doctor`;

CREATE TABLE `doctor` (
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `doctor` */

insert  into `doctor`(`username`,`password`,`email`,`mobile`) values ('radha','radha','radha@gmail.com','8639966858');

/*Table structure for table `doctor_report` */

DROP TABLE IF EXISTS `doctor_report`;

CREATE TABLE `doctor_report` (
  `caseid` varchar(100) NOT NULL,
  `ddata` text,
  `image` varchar(100) DEFAULT NULL,
  `bckey` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `ndata` text,
  `nkey` varchar(100) DEFAULT NULL,
  `person` varchar(100) DEFAULT NULL,
  `skey` varchar(100) DEFAULT NULL,
  `cipher` tinytext,
  `status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`caseid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `doctor_report` */

insert  into `doctor_report`(`caseid`,`ddata`,`image`,`bckey`,`username`,`ndata`,`nkey`,`person`,`skey`,`cipher`,`status`) values ('100','this is doctor report','ab.jpg','69da351254','radha','pending','pending','pending','DR1XeDZHhWVpUt/f836G3Q==','K3zyys5c2kGIxm0V8C13uVHCBj80chFwNkqdrKfSX3E=','pending');

/*Table structure for table `forensic` */

DROP TABLE IF EXISTS `forensic`;

CREATE TABLE `forensic` (
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `forensic` */

insert  into `forensic`(`username`,`password`,`email`,`mobile`) values ('chotu','chotu','moulalicce225@gmail.com','8639966858');

/*Table structure for table `forensic_report` */

DROP TABLE IF EXISTS `forensic_report`;

CREATE TABLE `forensic_report` (
  `caseid` varchar(100) NOT NULL,
  `fdata` text,
  `image` varchar(100) DEFAULT NULL,
  `bckey` text,
  `username` varchar(100) DEFAULT NULL,
  `ndata` text,
  `nkey` varchar(100) DEFAULT NULL,
  `person` varchar(100) DEFAULT NULL,
  `skey` varchar(100) DEFAULT NULL,
  `cipher` text,
  `status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`caseid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `forensic_report` */

insert  into `forensic_report`(`caseid`,`fdata`,`image`,`bckey`,`username`,`ndata`,`nkey`,`person`,`skey`,`cipher`,`status`) values ('100','this is forensic report','ab.jpg','385213677d','chotu','this is forensic report','385213677d','chinna','vzCdrUfG1EG2GKpRIWzEZg==','JsRQiX/CTSekr0KZDt50+JPOJtwjFtysvElBHJvWVAI=','pending'),('101','hiii friends','ab.jpg','a2a7857599','chotu','pending','pending','pending','LPecjsFpdriPnDuEsmS0ZQ==','SlTQUmM4jTxJYJLNlTLOBg==','pending');

/*Table structure for table `forensicreq` */

DROP TABLE IF EXISTS `forensicreq`;

CREATE TABLE `forensicreq` (
  `caseid` varchar(100) DEFAULT NULL,
  `police` varchar(100) DEFAULT NULL,
  `skey` varchar(100) DEFAULT NULL,
  `cipher` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `forensicreq` */

insert  into `forensicreq`(`caseid`,`police`,`skey`,`cipher`,`username`,`email`,`status`) values ('100','chotu','vzCdrUfG1EG2GKpRIWzEZg==','JsRQiX/CTSekr0KZDt50 JPOJtwjFtysvElBHJvWVAI=','chinna','moulalicce225@gmail.com','keysent');

/*Table structure for table `hauthority` */

DROP TABLE IF EXISTS `hauthority`;

CREATE TABLE `hauthority` (
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `hauthority` */

insert  into `hauthority`(`username`,`password`,`email`,`mobile`) values ('honey','honey','honey@gmail.com','8639966858');

/*Table structure for table `pathology` */

DROP TABLE IF EXISTS `pathology`;

CREATE TABLE `pathology` (
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pathology` */

insert  into `pathology`(`username`,`password`,`email`,`mobile`) values ('chinna','chinna','moulalicce225@gmail.com','8639966858');

/*Table structure for table `pathology_report` */

DROP TABLE IF EXISTS `pathology_report`;

CREATE TABLE `pathology_report` (
  `caseid` varchar(100) NOT NULL,
  `padata` text,
  `image` varchar(100) DEFAULT NULL,
  `bckey` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `ndata` text,
  `nkey` varchar(100) DEFAULT NULL,
  `person` varchar(100) DEFAULT NULL,
  `skey` varchar(100) DEFAULT NULL,
  `cipher` text,
  `status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`caseid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pathology_report` */

insert  into `pathology_report`(`caseid`,`padata`,`image`,`bckey`,`username`,`ndata`,`nkey`,`person`,`skey`,`cipher`,`status`) values ('100','this is pathology data','ab.jpg','012429b828','chinna','this is pathology data','012429b828','radha','y8os/MFNsvdVAgXRaJ3/sQ==','7i7JtDWUodrQJBL9fpuvdfvreVRtMBvn7gDjRn/xha4=','pending');

/*Table structure for table `pathreq` */

DROP TABLE IF EXISTS `pathreq`;

CREATE TABLE `pathreq` (
  `caseid` varchar(100) DEFAULT NULL,
  `police` varchar(100) DEFAULT NULL,
  `skey` varchar(100) DEFAULT NULL,
  `cipher` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pathreq` */

insert  into `pathreq`(`caseid`,`police`,`skey`,`cipher`,`username`,`email`,`status`) values ('100','chinna','y8os/MFNsvdVAgXRaJ3/sQ==','7i7JtDWUodrQJBL9fpuvdfvreVRtMBvn7gDjRn/xha4=','radha','radha@gmail.com','keysent');

/*Table structure for table `police` */

DROP TABLE IF EXISTS `police`;

CREATE TABLE `police` (
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `police` */

insert  into `police`(`username`,`password`,`email`,`mobile`) values ('munna','munna','munna@gmail.com','8639966858');

/*Table structure for table `police_report` */

DROP TABLE IF EXISTS `police_report`;

CREATE TABLE `police_report` (
  `caseid` varbinary(100) NOT NULL,
  `pdata` text,
  `image` varchar(100) DEFAULT NULL,
  `bckey` text,
  `username` varchar(100) DEFAULT NULL,
  `ndata` text,
  `nkey` varchar(100) DEFAULT NULL,
  `person` varchar(100) DEFAULT NULL,
  `skey` varchar(100) DEFAULT NULL,
  `cipher` text,
  `status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`caseid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `police_report` */

insert  into `police_report`(`caseid`,`pdata`,`image`,`bckey`,`username`,`ndata`,`nkey`,`person`,`skey`,`cipher`,`status`) values ('100','this is police report','ab.jpg','aa3e0e78cc','munna','this is police report','aa3e0e78cc','chotu','arm41PxErpjotgEYZGnQIw==','ZBQUY+99Cf5IqtYFWVIVxv+7R3x0cz1/L3BsSKISsW8=',NULL),('101','heelloooo','ab.jpg','433cbccc0e','munna','heelloooo munna','a9595b97e8','chotu','SgxCAD9xYy8ztFhN1zfcRA==','bwC2Ye329k1a1wGWKG220A==','pending');

/*Table structure for table `policereq` */

DROP TABLE IF EXISTS `policereq`;

CREATE TABLE `policereq` (
  `caseid` varchar(100) DEFAULT NULL,
  `police` varchar(100) DEFAULT NULL,
  `skey` varchar(100) DEFAULT NULL,
  `cipher` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `policereq` */

insert  into `policereq`(`caseid`,`police`,`skey`,`cipher`,`username`,`email`,`status`) values ('100','munna','arm41PxErpjotgEYZGnQIw==','ZBQUY 99Cf5IqtYFWVIVxv 7R3x0cz1/L3BsSKISsW8=','chotu','moulalicce225@gmail.com','keysent'),('101','munna','SgxCAD9xYy8ztFhN1zfcRA==','bwC2Ye329k1a1wGWKG220A==','chotu','moulalicce225@gmail.com','keysent');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
