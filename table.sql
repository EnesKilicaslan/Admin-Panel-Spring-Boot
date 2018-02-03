CREATE DATABASE  IF NOT EXISTS `admin_panel_users` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `admin_panel_users`;
-- MySQL dump 10.13  Distrib 5.6.13, for osx10.6 (i386)
--
-- Host: 127.0.0.1    Database: web_customer_tracker
-- ------------------------------------------------------
-- Server version 5.6.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(45) DEFAULT NULL,
  `lastname` varchar(45) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `role` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;

INSERT INTO `user`(firstname, lastname, username, password, role) VALUES  ('David','Adams','davidof', '1234', 'admin');
INSERT INTO `user`(firstname, lastname, username, password, role) VALUES  ('John','Doe','johny', '1234', 'regular');
INSERT INTO `user`(firstname, lastname, username, password, role) VALUES  ('Ajay','Rao','ajy', '1234', 'regular');
INSERT INTO `user`(firstname, lastname, username, password, role) VALUES  ('Mary','Public','marypub', '1234', 'admin');
INSERT INTO `user`(firstname, lastname, username, password, role) VALUES  ('Maxwell','Dixon','max', '1234', 'regular');
insert into user (firstname, lastname, username, password, role) values ('Elfrieda', 'Newlove', 'enewlove0', '29axY51He3', 'Research and Development');
insert into user (firstname, lastname, username, password, role) values ('Georgie', 'Chesterton', 'gchesterton1', 'ESXqJU3WUBF', 'Services');
insert into user (firstname, lastname, username, password, role) values ('Ruthann', 'Harrington', 'rharrington2', 'aEOxPg6aksz', 'Legal');
insert into user (firstname, lastname, username, password, role) values ('Danella', 'Seers', 'dseers3', '3Hr6Pjv', 'Training');
insert into user (firstname, lastname, username, password, role) values ('Arvin', 'Broune', 'abroune4', 's8kOURIZIzr', 'Product Management');
insert into user (firstname, lastname, username, password, role) values ('Court', 'Gronou', 'cgronou5', 'g7c7zpc37d7H', 'Human Resources');
insert into user (firstname, lastname, username, password, role) values ('Teodoor', 'Teanby', 'tteanby6', 'V50meoA5gp10', 'Research and Development');
insert into user (firstname, lastname, username, password, role) values ('Micheal', 'Fisbburne', 'mfisbburne7', 'bBwx7KbpFM', 'Research and Development');
insert into user (firstname, lastname, username, password, role) values ('Adriena', 'Greenacre', 'agreenacre8', '31N4X9i', 'Training');
insert into user (firstname, lastname, username, password, role) values ('Christel', 'Maykin', 'cmaykin9', '7NKHp7kUk', 'Services');
insert into user (firstname, lastname, username, password, role) values ('Kacy', 'Foyle', 'kfoylea', 'ofU0lMQB7', 'Legal');
insert into user (firstname, lastname, username, password, role) values ('Conchita', 'Haysman', 'chaysmanb', 'aPI67E', 'Business Development');
insert into user (firstname, lastname, username, password, role) values ('Rudie', 'Ballach', 'rballachc', 'krLDzL', 'Sales');
insert into user (firstname, lastname, username, password, role) values ('Luther', 'Aggas', 'laggasd', '2A4543jaSQ', 'Product Management');
insert into user (firstname, lastname, username, password, role) values ('Harwell', 'Tunnadine', 'htunnadinee', 'yGqjUN6DkS', 'Engineering');
insert into user (firstname, lastname, username, password, role) values ('Cy', 'Cheatle', 'ccheatlef', 'Mwxc2REwdYt', 'Legal');
insert into user (firstname, lastname, username, password, role) values ('Clayborne', 'Sommerly', 'csommerlyg', 'LgGE49v', 'Sales');
insert into user (firstname, lastname, username, password, role) values ('Pooh', 'Antic', 'pantich', '5Tr9tLHiPA4J', 'Engineering');
insert into user (firstname, lastname, username, password, role) values ('Misti', 'Schall', 'mschalli', 'zzA4q51QU', 'Services');
insert into user (firstname, lastname, username, password, role) values ('Krispin', 'Cuniffe', 'kcuniffej', 'TTFarEgK', 'Product Management');
insert into user (firstname, lastname, username, password, role) values ('Neddie', 'Neighbour', 'nneighbourk', 'Rt4GNb', 'Sales');
insert into user (firstname, lastname, username, password, role) values ('Karisa', 'Augur', 'kaugurl', '51kGU9XK', 'Human Resources');
insert into user (firstname, lastname, username, password, role) values ('Janelle', 'Shellsheere', 'jshellsheerem', '1upzBPVAWHP', 'Human Resources');
insert into user (firstname, lastname, username, password, role) values ('Gerard', 'Paulisch', 'gpaulischn', 'GaRph8B', 'Accounting');
insert into user (firstname, lastname, username, password, role) values ('Dicky', 'McGrane', 'dmcgraneo', 'XmJpkkeXSy', 'Legal');
insert into user (firstname, lastname, username, password, role) values ('Jennine', 'Rosser', 'jrosserp', '24juWJT72Jp', 'Engineering');
insert into user (firstname, lastname, username, password, role) values ('Jecho', 'Grunguer', 'jgrunguerq', '9hzpB4', 'Services');
insert into user (firstname, lastname, username, password, role) values ('Emanuel', 'Laddle', 'eladdler', 'n9ZTvIIdvYt', 'Marketing');
insert into user (firstname, lastname, username, password, role) values ('Lucine', 'Dalli', 'ldallis', '9ADBz8S2f72', 'Business Development');
insert into user (firstname, lastname, username, password, role) values ('Byrann', 'McKinney', 'bmckinneyt', 'FWFTlWyyG', 'Engineering');
insert into user (firstname, lastname, username, password, role) values ('Drusilla', 'Halsey', 'dhalseyu', 'wrTTmmLD', 'Support');
insert into user (firstname, lastname, username, password, role) values ('Nathanael', 'Galpen', 'ngalpenv', 'JfIYcsI2', 'Business Development');
insert into user (firstname, lastname, username, password, role) values ('Ninnetta', 'Llop', 'nllopw', 'TPVutnW40', 'Business Development');
insert into user (firstname, lastname, username, password, role) values ('Beverlie', 'Gregorace', 'bgregoracex', 'NgpW7gnB', 'Marketing');
insert into user (firstname, lastname, username, password, role) values ('Darci', 'Ivanchikov', 'divanchikovy', 'WCVPwYJOM5A', 'Product Management');
insert into user (firstname, lastname, username, password, role) values ('Staffard', 'Hatje', 'shatjez', 'JlH4ssXbtW', 'Business Development');
insert into user (firstname, lastname, username, password, role) values ('Frederico', 'Obray', 'fobray10', 'kjbjQf', 'Engineering');
insert into user (firstname, lastname, username, password, role) values ('Keelby', 'Shirtcliffe', 'kshirtcliffe11', '9Vxtp8s', 'Engineering');
insert into user (firstname, lastname, username, password, role) values ('Addi', 'Briddle', 'abriddle12', '6voJerzXc7', 'Legal');
insert into user (firstname, lastname, username, password, role) values ('Cletus', 'Adney', 'cadney13', 'Oph5cIby', 'Training');
insert into user (firstname, lastname, username, password, role) values ('Miguel', 'Fullbrook', 'mfullbrook14', '9sbtV6p', 'Services');
insert into user (firstname, lastname, username, password, role) values ('Britteny', 'Maryman', 'bmaryman15', 'bWO80l0GTsh', 'Human Resources');
insert into user (firstname, lastname, username, password, role) values ('Moreen', 'Gipson', 'mgipson16', 'KQdPZlx39', 'Marketing');
insert into user (firstname, lastname, username, password, role) values ('Layne', 'Ancliffe', 'lancliffe17', 'lkdbRPp', 'Engineering');
insert into user (firstname, lastname, username, password, role) values ('Jon', 'Bartoletti', 'jbartoletti18', 'GdilZEZE3hNF', 'Marketing');
insert into user (firstname, lastname, username, password, role) values ('Gracia', 'Yakebowitch', 'gyakebowitch19', 'zYNOdxJysE', 'Services');
insert into user (firstname, lastname, username, password, role) values ('Stephenie', 'Bullar', 'sbullar1a', 'kB1bJw', 'Marketing');
insert into user (firstname, lastname, username, password, role) values ('Lombard', 'Farans', 'lfarans1b', 'MZJs946hyUoT', 'Human Resources');
insert into user (firstname, lastname, username, password, role) values ('Earlie', 'Olivas', 'eolivas1c', 'oCPomuvac', 'Training');
insert into user (firstname, lastname, username, password, role) values ('Martina', 'Haverson', 'mhaverson1d', 'oup43j', 'Support');
insert into user (firstname, lastname, username, password, role) values ('Kerrill', 'Faier', 'kfaier1e', 'zed9KiFIt5C', 'Human Resources');
insert into user (firstname, lastname, username, password, role) values ('Feliza', 'Scardefield', 'fscardefield1f', 'WfWOxhyBE', 'Human Resources');
insert into user (firstname, lastname, username, password, role) values ('Chiquita', 'Shimmin', 'cshimmin1g', 'R84pbpz', 'Sales');
insert into user (firstname, lastname, username, password, role) values ('Shayla', 'Brixey', 'sbrixey1h', 'Jb7wuO', 'Research and Development');
insert into user (firstname, lastname, username, password, role) values ('Ezri', 'Plows', 'eplows1i', 'HjDbQEU', 'Research and Development');
insert into user (firstname, lastname, username, password, role) values ('Elsbeth', 'Strood', 'estrood1j', 'gu54in', 'Services');

/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-09-24 21:50:59
