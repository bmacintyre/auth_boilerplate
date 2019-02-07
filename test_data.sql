CREATE DATABASE  IF NOT EXISTS `py_api` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;
USE `py_api`;
-- MySQL dump 10.13  Distrib 8.0.15, for Linux (x86_64)
--
-- Host: localhost    Database: py_api
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth`
--

DROP TABLE IF EXISTS `auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) DEFAULT NULL,
  `passcode` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth`
--

LOCK TABLES `auth` WRITE;
/*!40000 ALTER TABLE `auth` DISABLE KEYS */;
INSERT INTO `auth` VALUES (1,'studiosiris@gmail.com','12345');
/*!40000 ALTER TABLE `auth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mobile_data`
--

DROP TABLE IF EXISTS `mobile_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `mobile_data` (
  `area` text,
  `year` int(11) DEFAULT NULL,
  `value` double DEFAULT NULL,
  `footnotes` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mobile_data`
--

LOCK TABLES `mobile_data` WRITE;
/*!40000 ALTER TABLE `mobile_data` DISABLE KEYS */;
INSERT INTO `mobile_data` VALUES ('Switzerland',2014,136.677398191887,''),('Swaziland',2014,72.3197213229587,''),('Suriname',2014,170.57498736039,''),('South Africa',2014,149.193517488526,''),('Slovak Republic',2014,116.940134070288,''),('San Marino',2014,118.848184088251,''),('Samoa',2014,55.5301280814884,''),('Portugal',2014,112.113913041511,''),('Panama',2014,158.054282495466,''),('Palestine',2014,72.0751526402761,''),('Nigeria',2014,77.8415471511874,''),('Netherlands',2014,116.423407687313,''),('Nepal',2014,81.8660533115416,''),('Monaco',2014,88.4647717122892,''),('Moldova',2014,107.995221559031,''),('Mexico',2014,82.2200092302685,''),('Japan',2014,120.232998305005,''),('Italy',2014,154.248656431979,''),('Ireland',2014,105.067581146549,''),('Iceland',2014,111.080192714665,''),('Germany',2014,120.420185505886,''),('Gambia',2014,119.630488738859,''),('Finland',2014,139.663896204958,''),('Estonia',2014,160.687848533734,''),('Ecuador',2014,103.899164782894,''),('Denmark',2014,125.888127054011,''),('China',2014,92.2734908227189,''),('Chad',2014,39.7509799679755,''),('Canada',2014,81.0393164964622,''),('Angola',2014,63.4792082001473,''),('Switzerland',2013,136.777239638403,''),('Swaziland',2013,71.4677866754594,''),('Suriname',2013,161.067802016036,''),('South Africa',2013,145.644021264917,''),('Slovak Republic',2013,113.911155561892,''),('San Marino',2013,116.954973289239,''),('Samoa',2013,52.4693757485345,''),('Portugal',2013,113.035602040543,''),('Panama',2013,160.568401493723,''),('Palestine',2013,73.7405331813942,''),('Nigeria',2013,73.2919616062739,''),('Netherlands',2013,116.156894807034,''),('Nepal',2013,76.8497960083183,''),('Monaco',2013,93.743226454495,''),('Moldova',2013,106.011406272762,''),('Mexico',2013,87.260629132271,''),('Japan',2013,116.315425827606,''),('Italy',2013,158.817293123624,''),('Ireland',2013,105.481078835825,''),('Iceland',2013,108.111126284006,''),('Germany',2013,120.921165091394,''),('Gambia',2013,99.9766936951308,''),('Finland',2013,136.578673993421,''),('Estonia',2013,159.660703312718,''),('Ecuador',2013,105.644477610006,''),('Denmark',2013,127.117671596997,''),('China',2013,88.7083346182169,''),('Chad',2013,35.5643768253939,''),('Canada',2013,80.6100807396936,''),('Angola',2013,61.8732971124952,''),('Switzerland',2012,132.056372328053,''),('Swaziland',2012,65.3947854766711,''),('Suriname',2012,106.459373556004,''),('South Africa',2012,130.557981992108,''),('Slovak Republic',2012,111.912191454742,''),('San Marino',2012,115.211060261785,''),('Samoa',2012,53.1010275876308,''),('Portugal',2012,112.389525494813,''),('Panama',2012,163.416749051425,''),('Palestine',2012,74.3036301330411,''),('Nigeria',2012,66.7981180495543,''),('Netherlands',2012,117.966846751033,''),('Nepal',2012,60.4513143282557,''),('Monaco',2012,88.3339098964847,''),('Moldova',2012,101.989027370681,''),('Mexico',2012,83.3507082650968,''),('Japan',2012,110.907354252077,''),('Italy',2012,159.62761547901,''),('Ireland',2012,109.567231729784,''),('Iceland',2012,108.054513037528,''),('Germany',2012,111.594039820304,''),('Gambia',2012,85.2037572052646,''),('Finland',2012,172.322429317296,''),('Estonia',2012,160.410775516781,''),('Ecuador',2012,106.225532949865,''),('Denmark',2012,130.279897673355,''),('China',2012,80.7627145493731,''),('Chad',2012,35.3648787874528,''),('Canada',2012,79.5683377491082,''),('Angola',2012,61.4062757783485,''),('Switzerland',2011,127.383212047706,''),('Swaziland',2011,63.2375785684881,''),('Suriname',2011,100.70994278552,''),('South Africa',2011,123.197654409058,''),('Slovak Republic',2011,109.977587439408,''),('San Marino',2011,114.226359185777,''),('Portugal',2011,116.390137831774,''),('Panama',2011,180.078106410158,''),('Palestine',2011,70.1221306990741,''),('Nigeria',2011,57.9606630431853,''),('Netherlands',2011,118.979142583501,''),('Nepal',2011,49.1762281751458,''),('Monaco',2011,85.3144038002201,''),('Moldova',2011,90.80797013092,''),('Mexico',2011,79.2411829391876,''),('Japan',2011,104.274232592999,''),('Italy',2011,158.145882953795,''),('Ireland',2011,108.479355025289,''),('Iceland',2011,106.841441754748,''),('Germany',2011,109.659567482399,''),('Gambia',2011,80.7602569733355,''),('Finland',2011,165.890900939752,''),('Estonia',2011,143.926062458188,''),('Ecuador',2011,100.565599366831,''),('Denmark',2011,128.661525958448,''),('China',2011,72.0713209045364,''),('Chad',2011,30.3447828843571,''),('Canada',2011,77.8254930914797,''),('Angola',2011,59.8261885613283,'');
/*!40000 ALTER TABLE `mobile_data` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-04 17:03:01