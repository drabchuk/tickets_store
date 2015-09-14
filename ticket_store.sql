# SQL-Front 5.1  (Build 4.16)

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE */;
/*!40101 SET SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES */;
/*!40103 SET SQL_NOTES='ON' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;


# Host: localhost    Database: ticket_store
# ------------------------------------------------------
# Server version 5.6.25-log

#
# Source for table bus_config
#

DROP TABLE IF EXISTS `bus_config`;
CREATE TABLE `bus_config` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `bus` int(11) DEFAULT NULL,
  `seat` int(11) DEFAULT NULL,
  `row` int(11) DEFAULT NULL,
  `place` int(3) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

#
# Dumping data for table bus_config
#

LOCK TABLES `bus_config` WRITE;
/*!40000 ALTER TABLE `bus_config` DISABLE KEYS */;
INSERT INTO `bus_config` VALUES (1,1,1,1,1);
INSERT INTO `bus_config` VALUES (2,1,2,1,2);
INSERT INTO `bus_config` VALUES (3,1,3,1,4);
INSERT INTO `bus_config` VALUES (4,1,4,1,5);
INSERT INTO `bus_config` VALUES (5,14,1,1,1);
INSERT INTO `bus_config` VALUES (6,14,2,1,2);
INSERT INTO `bus_config` VALUES (7,14,3,1,4);
INSERT INTO `bus_config` VALUES (8,14,4,1,5);
INSERT INTO `bus_config` VALUES (9,14,5,2,1);
INSERT INTO `bus_config` VALUES (10,14,6,2,2);
INSERT INTO `bus_config` VALUES (11,14,7,2,4);
INSERT INTO `bus_config` VALUES (12,14,8,2,5);
/*!40000 ALTER TABLE `bus_config` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table buses
#

DROP TABLE IF EXISTS `buses`;
CREATE TABLE `buses` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `seats` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

#
# Dumping data for table buses
#

LOCK TABLES `buses` WRITE;
/*!40000 ALTER TABLE `buses` DISABLE KEYS */;
INSERT INTO `buses` VALUES (1,'AA1234BB',4);
INSERT INTO `buses` VALUES (14,'FF7777UU',8);
INSERT INTO `buses` VALUES (15,'TT6666TT',2);
/*!40000 ALTER TABLE `buses` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table cities
#

DROP TABLE IF EXISTS `cities`;
CREATE TABLE `cities` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

#
# Dumping data for table cities
#

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (1,'Kyiv');
INSERT INTO `cities` VALUES (2,'Prague');
INSERT INTO `cities` VALUES (3,'Lviv');
INSERT INTO `cities` VALUES (4,'Berlin');
INSERT INTO `cities` VALUES (5,'Rome');
INSERT INTO `cities` VALUES (6,'Kitsman');
INSERT INTO `cities` VALUES (7,'Kovel');
INSERT INTO `cities` VALUES (8,'Kirovograd');
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table clients
#

DROP TABLE IF EXISTS `clients`;
CREATE TABLE `clients` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Dumping data for table clients
#

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,'Drabchuck Denis');
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table routes
#

DROP TABLE IF EXISTS `routes`;
CREATE TABLE `routes` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `from` int(11) DEFAULT NULL,
  `to` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

#
# Dumping data for table routes
#

LOCK TABLES `routes` WRITE;
/*!40000 ALTER TABLE `routes` DISABLE KEYS */;
INSERT INTO `routes` VALUES (1,1,2);
INSERT INTO `routes` VALUES (2,2,1);
INSERT INTO `routes` VALUES (4,3,5);
INSERT INTO `routes` VALUES (5,1,4);
/*!40000 ALTER TABLE `routes` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table seats
#

DROP TABLE IF EXISTS `seats`;
CREATE TABLE `seats` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `trip` int(11) DEFAULT NULL,
  `seat_num` int(11) DEFAULT NULL,
  `price` decimal(4,2) unsigned DEFAULT NULL,
  `availability` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

#
# Dumping data for table seats
#

LOCK TABLES `seats` WRITE;
/*!40000 ALTER TABLE `seats` DISABLE KEYS */;
INSERT INTO `seats` VALUES (1,1,1,15,0);
INSERT INTO `seats` VALUES (2,1,2,15,0);
INSERT INTO `seats` VALUES (3,1,3,20,0);
INSERT INTO `seats` VALUES (4,1,4,20,0);
INSERT INTO `seats` VALUES (5,2,1,20,0);
INSERT INTO `seats` VALUES (6,2,2,20,0);
INSERT INTO `seats` VALUES (7,2,3,20,0);
INSERT INTO `seats` VALUES (8,2,4,20,0);
INSERT INTO `seats` VALUES (9,2,5,20,0);
INSERT INTO `seats` VALUES (10,2,6,20,0);
INSERT INTO `seats` VALUES (11,2,7,20,0);
INSERT INTO `seats` VALUES (12,2,8,20,0);
INSERT INTO `seats` VALUES (13,3,1,20,0);
INSERT INTO `seats` VALUES (14,3,2,20,0);
/*!40000 ALTER TABLE `seats` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table stations
#

DROP TABLE IF EXISTS `stations`;
CREATE TABLE `stations` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `city` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

#
# Dumping data for table stations
#

LOCK TABLES `stations` WRITE;
/*!40000 ALTER TABLE `stations` DISABLE KEYS */;
INSERT INTO `stations` VALUES (1,'central railvay, Kiyv','1');
INSERT INTO `stations` VALUES (2,'railvay, Prague','2');
INSERT INTO `stations` VALUES (3,'KPI','1');
INSERT INTO `stations` VALUES (4,'NAU','1');
INSERT INTO `stations` VALUES (5,'karlov most','2');
INSERT INTO `stations` VALUES (6,'railvay, Lviv','3');
INSERT INTO `stations` VALUES (7,'ratusha, Lviv','3');
/*!40000 ALTER TABLE `stations` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table tickets
#

DROP TABLE IF EXISTS `tickets`;
CREATE TABLE `tickets` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `client` int(11) unsigned DEFAULT NULL,
  `seat` int(11) unsigned DEFAULT NULL,
  `price` decimal(4,2) unsigned DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Dumping data for table tickets
#

LOCK TABLES `tickets` WRITE;
/*!40000 ALTER TABLE `tickets` DISABLE KEYS */;
/*!40000 ALTER TABLE `tickets` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table trips
#

DROP TABLE IF EXISTS `trips`;
CREATE TABLE `trips` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `route` int(11) DEFAULT NULL,
  `departure` datetime DEFAULT NULL,
  `arrival` datetime DEFAULT NULL,
  `bus` int(11) DEFAULT NULL,
  `seats_aviliable` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

#
# Dumping data for table trips
#

LOCK TABLES `trips` WRITE;
/*!40000 ALTER TABLE `trips` DISABLE KEYS */;
INSERT INTO `trips` VALUES (1,1,'2015-09-14 08:00:00','2015-09-14 18:00:00',1,4);
INSERT INTO `trips` VALUES (2,2,'2015-09-14 08:00:00','2015-09-14 18:00:00',14,5);
INSERT INTO `trips` VALUES (3,1,'2015-09-14 09:00:00','2015-09-14 19:00:00',15,2);
/*!40000 ALTER TABLE `trips` ENABLE KEYS */;
UNLOCK TABLES;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
