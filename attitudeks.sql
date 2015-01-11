-- MySQL dump 10.13  Distrib 5.5.40, for debian-linux-gnu (x86_64)
--
-- Host: mysql.cenotaph.org    Database: attitudeks
-- ------------------------------------------------------
-- Server version	5.1.56-log

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
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `crypted_password` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES (1,'Kristina','Sanaksenaho','attitude.ks@attitudeks.com','$2a$10$kKL2Ss2dxuuWRvWm3sLIQusW69MMLg2VKai/qaOaK5bPAe.Ix0STy','admin','2015-01-06 21:48:53','2015-01-10 11:59:35');
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ckuploads`
--

DROP TABLE IF EXISTS `ckuploads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ckuploads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data_file_size` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ckuploads`
--

LOCK TABLES `ckuploads` WRITE;
/*!40000 ALTER TABLE `ckuploads` DISABLE KEYS */;
INSERT INTO `ckuploads` VALUES (1,'10000001A.jpg',NULL,NULL,'2015-01-10 10:33:29','2015-01-10 10:33:29'),(2,'10000002A.jpg',NULL,NULL,'2015-01-10 10:42:24','2015-01-10 10:42:24'),(3,'2013-05-15_12.10.39.jpg',NULL,NULL,'2015-01-10 10:45:22','2015-01-10 10:45:22');
/*!40000 ALTER TABLE `ckuploads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES (2,'10000003A.jpg','2015-01-07 10:08:52','2015-01-07 10:08:52'),(3,'10000006A.jpg','2015-01-07 10:09:37','2015-01-07 10:09:37'),(4,'10000004A.jpg','2015-01-07 10:10:12','2015-01-07 10:10:12'),(5,'10000005A.jpg','2015-01-07 10:10:47','2015-01-07 10:10:47'),(6,'10000007A.jpg','2015-01-07 10:11:32','2015-01-07 10:11:32'),(7,'10000010A.jpg','2015-01-07 10:12:25','2015-01-07 10:12:25'),(8,'10000008A.jpg','2015-01-07 10:12:55','2015-01-07 10:12:55'),(9,'10000009A.jpg','2015-01-07 10:13:43','2015-01-07 10:13:43'),(10,'10000012A.jpg','2015-01-07 10:14:22','2015-01-07 10:14:22'),(11,'10000011A.jpg','2015-01-07 10:14:49','2015-01-07 10:14:49'),(12,'10000014A.jpg','2015-01-07 10:15:35','2015-01-07 10:15:35'),(13,'10000013A.jpg','2015-01-07 10:16:47','2015-01-07 10:16:47'),(14,'10000023A.jpg','2015-01-07 10:18:16','2015-01-07 10:18:16'),(15,'10000025A.jpg','2015-01-07 10:18:48','2015-01-07 10:18:48'),(16,'10000024A.jpg','2015-01-07 10:19:24','2015-01-07 10:19:24'),(17,'10000026A.jpg','2015-01-07 10:20:05','2015-01-07 10:20:05'),(18,'10000016A.jpg','2015-01-07 10:20:46','2015-01-07 10:20:46'),(19,'10000017A.jpg','2015-01-07 10:21:26','2015-01-07 10:21:26'),(20,'10000015A.jpg','2015-01-07 10:22:10','2015-01-07 10:22:10'),(21,'10000018A.jpg','2015-01-07 10:22:59','2015-01-07 10:22:59'),(22,'10000021A.jpg','2015-01-07 10:23:38','2015-01-07 10:23:38'),(23,'10000019A.jpg','2015-01-07 10:24:10','2015-01-07 10:24:10'),(24,'10000022A.jpg','2015-01-07 10:24:50','2015-01-07 10:24:50'),(25,'10000020A.jpg','2015-01-07 10:25:22','2015-01-07 10:25:22');
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imageset_images`
--

DROP TABLE IF EXISTS `imageset_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `imageset_images` (
  `imageset_id` int(11) NOT NULL,
  `image_id` int(11) NOT NULL,
  `primary` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  UNIQUE KEY `imageset_images_udx` (`imageset_id`,`image_id`),
  KEY `imageset_image_id_idx` (`imageset_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imageset_images`
--

LOCK TABLES `imageset_images` WRITE;
/*!40000 ALTER TABLE `imageset_images` DISABLE KEYS */;
INSERT INTO `imageset_images` VALUES (1,1,1,'2015-01-07 10:07:41','2015-01-07 10:07:41'),(1,2,0,'2015-01-07 10:08:52','2015-01-07 10:08:52'),(1,3,0,'2015-01-07 10:09:38','2015-01-07 10:09:38'),(1,4,0,'2015-01-07 10:10:12','2015-01-07 10:10:12'),(1,5,1,'2015-01-07 10:10:47','2015-01-07 10:10:47'),(2,6,1,'2015-01-07 10:11:32','2015-01-07 10:11:32'),(2,7,0,'2015-01-07 10:12:25','2015-01-07 10:12:25'),(2,8,0,'2015-01-07 10:12:55','2015-01-07 10:12:55'),(2,9,0,'2015-01-07 10:13:43','2015-01-07 10:13:43'),(3,10,0,'2015-01-07 10:14:22','2015-01-07 10:14:22'),(3,11,0,'2015-01-07 10:14:50','2015-01-07 10:14:50'),(3,12,0,'2015-01-07 10:15:35','2015-01-07 10:15:35'),(3,13,1,'2015-01-07 10:16:47','2015-01-07 10:16:47'),(4,14,0,'2015-01-07 10:18:16','2015-01-07 10:18:16'),(4,15,0,'2015-01-07 10:18:48','2015-01-07 10:18:48'),(4,16,1,'2015-01-07 10:19:24','2015-01-07 10:19:24'),(4,17,0,'2015-01-07 10:20:05','2015-01-07 10:20:05'),(5,18,0,'2015-01-07 10:20:46','2015-01-07 10:20:46'),(5,19,1,'2015-01-07 10:21:26','2015-01-07 10:21:26'),(5,20,0,'2015-01-07 10:22:10','2015-01-07 10:22:10'),(5,21,0,'2015-01-07 10:22:59','2015-01-07 10:22:59'),(6,22,0,'2015-01-07 10:23:38','2015-01-07 10:23:38'),(6,23,1,'2015-01-07 10:24:10','2015-01-07 10:24:10'),(6,24,0,'2015-01-07 10:24:50','2015-01-07 10:24:50'),(6,25,0,'2015-01-07 10:25:22','2015-01-07 10:25:22');
/*!40000 ALTER TABLE `imageset_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imagesets`
--

DROP TABLE IF EXISTS `imagesets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `imagesets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `description` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imagesets`
--

LOCK TABLES `imagesets` WRITE;
/*!40000 ALTER TABLE `imagesets` DISABLE KEYS */;
INSERT INTO `imagesets` VALUES (1,'Pystyasento',1,'Pystyasennossa on havaittavissa se, kuinka hyvin jÃ¤senet ovat kohdallaan. Oikein linjattu pystyasento antaa tuen, joka on aistittavissa keveytenÃ¤ ja lepona.','2015-01-07 10:04:32','2015-01-09 14:45:53','1-pystyasento'),(2,'Tuki ja roikunta',2,'Kun ylÃ¤vartalo lasketaan pÃ¤Ã¤ edellÃ¤ jalkojen luiden ja lonkkanivelen tukeen, lihakset pÃ¤Ã¤sevÃ¤t venymÃ¤Ã¤n ja nikamat vapautuvat pystyasennon paineesta.','2015-01-07 10:04:43','2015-01-09 14:45:53','2-tuki-ja-roikunta'),(3,'Kierto ja liike',3,'KiertoliikkeessÃ¤ voi aistia vastakkaisiin suuntiin vaikuttavien lihasten tyÃ¶n. Liikesuuntaan. tyÃ¶skentelevÃ¤t lihakset ikÃ¤Ã¤n kuin vetÃ¤vÃ¤t ja venyvÃ¤t lihakset mahdollistavat laajan liikkeen','2015-01-07 10:04:50','2015-01-09 14:45:54','3-kierto-ja-liike'),(4,'Venytys',4,'Kun lihasten kiinnityspÃ¤Ã¤t loitonnetaan toisistaan venytysasennossa, kireys pÃ¤Ã¤see purkautumaan.\r\nVenytys on jatkuvaa tapahtumaa.','2015-01-07 10:05:00','2015-01-09 14:45:54','4-venytys'),(5,'Tuki ja suunta',5,'Liikeradat ovat jatkumoita, joissa lihakset liikuttavat luita. Liikkeen voi hahmottaa alkuasentona, toimintana ja saapumisena.','2015-01-07 10:05:09','2015-01-09 14:45:55','5-tuki-ja-suunta'),(6,'Lepo ja liike',6,'Kunkin lihaksen fysiologinen tehtÃ¤vÃ¤ tarkentuu, kun kehon luonnollisia liikeratoja harjoitetaan tietoisesti. NÃ¤in lÃ¶ytyy myÃ¶s liikkeen keveys.','2015-01-07 10:05:18','2015-01-09 14:47:40','6-lepo-ja-liike');
/*!40000 ALTER TABLE `imagesets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `body` text,
  `published` tinyint(1) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_pages_on_slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'KEHON TUNTEMISESTA LIIKKEESEEN','<p><strong>Kehosi on liikkeen l&auml;ht&ouml;kohta &ndash; el&auml;v&auml;&auml; arkkitehtuuria</strong></p>\r\n\r\n<p>Arkkitehtuuri viittaa rakenteisiin, osien suhteisiin, tukeen ja kannatukseen. T&auml;st&auml; on kyse my&ouml;s kehoarkkitehtuurissa. Luinen tukirakennelma, nivelet liitoksina ja lihakset luiden liikuttajina muodostavat toimivan kokonaisuuden, el&auml;v&auml;n arkkitehtuurin.<img alt=\"\" src=\"http://attitudeks.icewhistle.com:80/images/uploads/medium_10000001A.jpg\" style=\"border-style:solid; border-width:30px; float:right; height:393px; width:580px\" /></p>\r\n\r\n<p>Kehon rakenne ja fysiologiset lainalaisuudet luovat hienon loogisen j&auml;rjestelm&auml;n. Sen tarkkaileva tutkiminen syvent&auml;&auml; yhteytt&auml; omaan kehoon &ndash; todellisuuteen.</p>\r\n\r\n<p>Suhde kehoon n&auml;kyy kauas. Kun tiedostat, miten kehosi toimii ja l&ouml;yd&auml;t liikkeiden yhteyden, voit my&ouml;s kokea liikkumisen kauneutta.</p>\r\n\r\n<p>Liikuntatieteiden kandidaatin koulutukseni ja 20 vuoden ty&ouml; liikunnanopettajana kaikilla kouluasteilla sek&auml; opettajankoulutuksessa ovat opettaneet minulle ihmiskehon arkkitehtuuria.</p>\r\n\r\n<p>Ihmisen perusrakenne on kaikille yhteinen, mutta jokaisen kokemus omasta kehosta on erilainen. T&auml;h&auml;n kokemiseen vaikuttavat ik&auml; ja suhde fyysisyyteen.</p>\r\n\r\n<p>Havainnointi on harjoittelun l&auml;ht&ouml;kohta. Se paljastaa kunkin ongelmakohtia ja toisaalta auttaa l&ouml;yt&auml;m&auml;&auml;n loogisia ja mahdollisia ratkaisuja niihin. Harjoittelusta muodostuu fyysinen dialogi oman kehon ja ohjauksen v&auml;lill&auml;.</p>\r\n\r\n<p>Yliopistokoulutuksen ja ty&ouml;kokemuksen lis&auml;ksi ohjauksessani vaikuttavat nykytanssi ja Pilates. Liikkeen analysointia olen oppinut erityisesti tanssipedagogi Eeva Kaarion yksityistunneilla. Tutustuminen Pilates-menetelm&auml;&auml;n on tarkentanut tiet&auml;myst&auml; eri lihastukij&auml;rjestelmien merkityksest&auml;.</p>\r\n\r\n<p>Ohjaajana olen innostunut niist&auml; mahdollisuuksista, joita voit omasta kehostasi l&ouml;yt&auml;&auml;, kun tieto j&auml;sentyy arjen k&auml;yt&auml;nn&ouml;ksi.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Tunnit</p>\r\n\r\n<p>Ryhm&auml;tunnit<img alt=\"\" src=\"http://attitudeks.icewhistle.com:80/images/uploads/medium_10000002A.jpg\" style=\"float:right; height:392px; width:580px\" /></p>\r\n\r\n<p>Tasapainoinen pystyasento eli ryhti syntyy, kun raajat kytkeytyv&auml;t keskivartalon tukeen. Kire&auml;t lihakset pidennet&auml;&auml;n niin, ett&auml; niiden supistumis- ja venymiskyky elpyy ja laajat liikeradat tulevat mahdollisiksi. Tietoiset toistot kehitt&auml;v&auml;t lihasvoimaa ja selkiytt&auml;v&auml;t oikeita liikeratoja.</p>\r\n\r\n<p>Yksityistunnit</p>\r\n\r\n<p>Yksityistunneilla on mahdollista paneutua syvemmin kunkin harjoittelun tavoitteisiin ja erityisongelmiin. Tavoitteita voivat olla niin hyvinvointi ja terveys kuin virhetottumuksien tai rajoitteiden ty&ouml;st&auml;minen. Yksityistunti varataan.</p>\r\n\r\n<p>Kerron mielell&auml;ni tunneista tarkemmin puhelimitse tai s&auml;hk&ouml;postilla.</p>\r\n\r\n<p>&nbsp;</p>\r\n',1,'kehon-tuntemisesta-liikkeeseen','2015-01-09 13:53:25','2015-01-10 11:14:50'),(2,'Kalenteri','Enter calendar here',1,'kalenteri','2015-01-09 13:56:00','2015-01-09 13:56:00'),(3,'Kontakti','<p>Contact information here</p>\r\n',1,'kontakti','2015-01-10 10:43:01','2015-01-10 10:43:01');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `body` text,
  `published` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_posts_on_slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'Sample blog post','<p>Here is a sample blog post.</p>\r\n\r\n<p><br />\r\nWith a photo included:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://attitudeks.icewhistle.com:80/images/uploads/2013-05-15_12.10.39.jpg\" style=\"height:600px; width:800px\" /></p>\r\n',1,'2015-01-10 10:45:33','2015-01-10 10:45:33','sample-blog-post');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('1'),('2'),('3'),('4'),('5'),('6'),('7'),('8');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-01-11  5:09:47
