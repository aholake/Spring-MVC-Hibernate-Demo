CREATE DATABASE  IF NOT EXISTS `chodocu` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `chodocu`;
-- MySQL dump 10.13  Distrib 5.5.41, for debian-linux-gnu (x86_64)
--
-- Host: 127.0.0.1    Database: chodocu
-- ------------------------------------------------------
-- Server version	5.5.35-1ubuntu1

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
-- Table structure for table `childmenu`
--

DROP TABLE IF EXISTS `childmenu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `childmenu` (
  `cid` smallint(4) NOT NULL AUTO_INCREMENT,
  `sID` smallint(2) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `activity` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`cid`),
  KEY `fk_child_smenu` (`sID`),
  CONSTRAINT `fk_child_smenu` FOREIGN KEY (`sID`) REFERENCES `submenu` (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf32;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `childmenu`
--

LOCK TABLES `childmenu` WRITE;
/*!40000 ALTER TABLE `childmenu` DISABLE KEYS */;
/*!40000 ALTER TABLE `childmenu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment` (
  `comID` bigint(20) NOT NULL AUTO_INCREMENT,
  `postID` int(11) NOT NULL,
  `memID` int(11) NOT NULL,
  `content` text NOT NULL,
  `likeCount` int(11) DEFAULT NULL,
  `activity` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`comID`),
  KEY `fk_comment_post` (`postID`),
  KEY `fk_comment_mem` (`memID`),
  CONSTRAINT `fk_comment_mem` FOREIGN KEY (`memID`) REFERENCES `member` (`memID`),
  CONSTRAINT `fk_comment_post` FOREIGN KEY (`postID`) REFERENCES `post` (`pID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf32;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member` (
  `memID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `birthday` date DEFAULT NULL,
  `sex` smallint(1) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `avatar` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `address` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `star` smallint(1) DEFAULT NULL,
  `joindate` datetime DEFAULT NULL,
  `intrduce` text,
  `activity` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`memID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf32;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (1,'Nguyễn Tuấn Anh','1994-07-14',1,'01653164732','../images/account/tuanganh.jpg','ntatvr@gmail.com','Biên Hòa, Đồng Nai',1,'2015-04-30 00:00:00','Thông tin đang cập nhât',1),(2,'Phan Xuân Manh','1994-03-22',1,'01653354390','../images/account/tuanganh.jpg','ntatvr@gmail.com','Biên Hòa, Đồng Nai',1,'2015-04-30 00:00:00','Thông tin đang cập nhât',1),(3,'Nguyễn Tuấn Anh','0019-12-15',1,'01653164732','../images/account/tuananh.jpg','ntatvr@gmail.com','Biên Hòa, Đồng Nai',1,'2015-05-13 00:00:00','Thông tin đang cập nhât',1),(4,'Nguyễn Tuấn Anh','0019-12-15',1,'01653164732','../images/account/tuananh.jpg','ntatvr@gmail.com','Biên Hòa, Đồng Nai',1,'2015-05-13 00:00:00','Thông tin đang cập nhât',1),(5,'Nguyễn Tuấn Anh','0019-12-15',1,'01653164732','../images/account/tuananh.jpg','ntatvr@gmail.com','Biên Hòa, Đồng Nai',1,'2015-05-13 00:00:00','Thông tin đang cập nhât',1),(6,'Nguyễn Tuấn Anh','0019-12-15',1,'01653164732','../images/account/tuananh.jpg','ntatvr@gmail.com','Biên Hòa, Đồng Nai',1,'2015-05-13 00:00:00','Thông tin đang cập nhât',1),(7,'Nguyễn Tuấn Anh','0019-12-15',1,'01653164732','../images/account/tuananh.jpg','ntatvr@gmail.com','Biên Hòa, Đồng Nai',1,'2015-05-13 00:00:00','Thông tin đang cập nhât',1),(8,'Nguyễn Tuấn Anh','0019-12-15',1,'01653164732','../images/account/tuananh.jpg','ntatvr@gmail.com','Biên Hòa, Đồng Nai',1,'2015-05-13 00:00:00','Thông tin đang cập nhât',1),(9,'Nguyễn Tuấn Anh','0019-12-15',1,'01653164732','../images/account/tuananh.jpg','ntatvr@gmail.com','Biên Hòa, Đồng Nai',1,'2015-05-13 00:00:00','Thông tin đang cập nhât',1),(10,'Nguyễn Tuấn Anh','0019-12-15',1,'01653164732','../images/account/tuananh.jpg','ntatvr@gmail.com','Biên Hòa, Đồng Nai',1,'2015-05-13 00:00:00','Thông tin đang cập nhât',1),(11,'Nguyễn Tuấn Anh','0019-12-15',1,'01653164732','../images/account/tuananh.jpg','ntatvr@gmail.com','Biên Hòa, Đồng Nai',1,'2015-05-13 00:00:00','Thông tin đang cập nhât',1),(12,'Nguyễn Tuấn Anh','0019-12-15',1,'01653164732','../images/account/tuananh.jpg','ntatvr@gmail.com','Biên Hòa, Đồng Nai',1,'2015-05-13 00:00:00','Thông tin đang cập nhât',1),(13,'Nguyễn Tuấn Anh','0019-12-15',1,'01653164732','../images/account/tuananh.jpg','ntatvr@gmail.com','Biên Hòa, Đồng Nai',1,'2015-05-13 00:00:00','Thông tin đang cập nhât',1),(14,'Nguyễn Tuấn Anh','0019-12-15',1,'01653164732','../images/account/tuananh.jpg','ntatvr@gmail.com','Biên Hòa, Đồng Nai',1,'2015-05-13 00:00:00','Thông tin đang cập nhât',1),(15,'Nguyễn Tuấn Anh','0019-12-15',1,'01653164732','../images/account/tuananh.jpg','ntatvr@gmail.com','Biên Hòa, Đồng Nai',1,'2015-05-13 00:00:00','Thông tin đang cập nhât',1);
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `mID` smallint(2) NOT NULL AUTO_INCREMENT,
  `menuName` varchar(100) CHARACTER SET utf8 NOT NULL,
  `orderNo` smallint(2) DEFAULT NULL,
  `activity` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`mID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf32;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message` (
  `messID` bigint(20) NOT NULL AUTO_INCREMENT,
  `sender` int(11) NOT NULL,
  `receiver` int(11) NOT NULL,
  `sendTime` datetime NOT NULL,
  `content` text NOT NULL,
  `status` smallint(1) DEFAULT NULL,
  PRIMARY KEY (`messID`),
  KEY `fk_mess_mem_sender` (`sender`),
  KEY `fk_mess_mem_receiver` (`receiver`),
  CONSTRAINT `fk_mess_mem_receiver` FOREIGN KEY (`receiver`) REFERENCES `member` (`memID`),
  CONSTRAINT `fk_mess_mem_sender` FOREIGN KEY (`sender`) REFERENCES `member` (`memID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf32;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post` (
  `pID` int(11) NOT NULL AUTO_INCREMENT,
  `memID` int(11) NOT NULL,
  `childID` smallint(4) DEFAULT NULL,
  `tittle` varchar(100) CHARACTER SET utf8 NOT NULL,
  `content` text NOT NULL,
  `postTime` datetime NOT NULL,
  `pstatus` smallint(1) DEFAULT NULL,
  `cost` double NOT NULL,
  `starRate` smallint(1) DEFAULT NULL,
  `likeCount` int(11) DEFAULT NULL,
  `zoneID` int(11) DEFAULT NULL,
  `stickOrder` smallint(2) DEFAULT NULL,
  `activity` bit(1) DEFAULT NULL,
  PRIMARY KEY (`pID`),
  KEY `fk_post_mem` (`memID`),
  KEY `fk_post_zone` (`zoneID`),
  KEY `fk_post_childMenu` (`childID`),
  CONSTRAINT `fk_post_childMenu` FOREIGN KEY (`childID`) REFERENCES `childmenu` (`cid`),
  CONSTRAINT `fk_post_mem` FOREIGN KEY (`memID`) REFERENCES `member` (`memID`),
  CONSTRAINT `fk_post_zone` FOREIGN KEY (`zoneID`) REFERENCES `zone` (`zoneID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf32;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report`
--

DROP TABLE IF EXISTS `report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `report` (
  `repID` int(11) NOT NULL AUTO_INCREMENT,
  `reporter` int(11) NOT NULL,
  `repMem` int(11) NOT NULL,
  `repPost` int(11) NOT NULL,
  `reason` varchar(200) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`repID`),
  KEY `fk_rep_post` (`repPost`),
  KEY `fk_rep_mem_reporter` (`reporter`),
  KEY `fk_rep_mem_repMember` (`repMem`),
  CONSTRAINT `fk_rep_mem_repMember` FOREIGN KEY (`repMem`) REFERENCES `member` (`memID`),
  CONSTRAINT `fk_rep_mem_reporter` FOREIGN KEY (`reporter`) REFERENCES `member` (`memID`),
  CONSTRAINT `fk_rep_post` FOREIGN KEY (`repPost`) REFERENCES `post` (`pID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf32;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report`
--

LOCK TABLES `report` WRITE;
/*!40000 ALTER TABLE `report` DISABLE KEYS */;
/*!40000 ALTER TABLE `report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `submenu`
--

DROP TABLE IF EXISTS `submenu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `submenu` (
  `sid` smallint(3) NOT NULL AUTO_INCREMENT,
  `mID` smallint(2) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `activity` bit(1) DEFAULT NULL,
  PRIMARY KEY (`sid`),
  KEY `fk_sub_menu` (`mID`),
  CONSTRAINT `fk_sub_menu` FOREIGN KEY (`mID`) REFERENCES `menu` (`mID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf32;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `submenu`
--

LOCK TABLES `submenu` WRITE;
/*!40000 ALTER TABLE `submenu` DISABLE KEYS */;
/*!40000 ALTER TABLE `submenu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `uID` varchar(100) CHARACTER SET utf8 NOT NULL,
  `memID` int(11) NOT NULL,
  `user_pw` varchar(30) CHARACTER SET utf8 NOT NULL,
  `activity` bit(1) DEFAULT NULL,
  PRIMARY KEY (`uID`),
  KEY `fk_user_member` (`memID`),
  CONSTRAINT `fk_user_member` FOREIGN KEY (`memID`) REFERENCES `member` (`memID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf32;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zone`
--

DROP TABLE IF EXISTS `zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zone` (
  `zoneID` int(11) NOT NULL AUTO_INCREMENT,
  `city` varchar(100) CHARACTER SET utf8 NOT NULL,
  `district` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `activity` bit(1) DEFAULT NULL,
  PRIMARY KEY (`zoneID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf32;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zone`
--

LOCK TABLES `zone` WRITE;
/*!40000 ALTER TABLE `zone` DISABLE KEYS */;
/*!40000 ALTER TABLE `zone` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-10-04 23:24:05
CREATE DATABASE  IF NOT EXISTS `TroaDoiVat` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `TroaDoiVat`;
-- MySQL dump 10.13  Distrib 5.5.41, for debian-linux-gnu (x86_64)
--
-- Host: 127.0.0.1    Database: TroaDoiVat
-- ------------------------------------------------------
-- Server version	5.5.35-1ubuntu1

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
-- Table structure for table `childmenu`
--

DROP TABLE IF EXISTS `childmenu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `childmenu` (
  `cid` smallint(4) NOT NULL AUTO_INCREMENT,
  `sID` smallint(2) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`cid`),
  KEY `fk_child_smenu` (`sID`),
  CONSTRAINT `fk_child_smenu` FOREIGN KEY (`sID`) REFERENCES `submenu` (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf32;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `childmenu`
--

LOCK TABLES `childmenu` WRITE;
/*!40000 ALTER TABLE `childmenu` DISABLE KEYS */;
/*!40000 ALTER TABLE `childmenu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment` (
  `comID` bigint(20) NOT NULL AUTO_INCREMENT,
  `postID` int(11) NOT NULL,
  `memID` int(11) NOT NULL,
  `content` text NOT NULL,
  `likeCount` int(11) DEFAULT NULL,
  PRIMARY KEY (`comID`),
  KEY `fk_comment_post` (`postID`),
  KEY `fk_comment_mem` (`memID`),
  CONSTRAINT `fk_comment_mem` FOREIGN KEY (`memID`) REFERENCES `member` (`memID`),
  CONSTRAINT `fk_comment_post` FOREIGN KEY (`postID`) REFERENCES `post` (`pID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf32;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member` (
  `memID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `birthday` date DEFAULT NULL,
  `sex` smallint(1) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `avatar` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `address` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `star` smallint(1) DEFAULT NULL,
  `joindate` datetime DEFAULT NULL,
  `intrduce` text,
  `activity` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`memID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf32;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (1,'',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1);
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `mID` smallint(2) NOT NULL AUTO_INCREMENT,
  `menuName` varchar(100) CHARACTER SET utf8 NOT NULL,
  `orderNo` smallint(2) DEFAULT NULL,
  PRIMARY KEY (`mID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf32;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message` (
  `messID` bigint(20) NOT NULL AUTO_INCREMENT,
  `sender` int(11) NOT NULL,
  `receiver` int(11) NOT NULL,
  `sendTime` datetime NOT NULL,
  `content` text NOT NULL,
  `status` smallint(1) DEFAULT NULL,
  PRIMARY KEY (`messID`),
  KEY `fk_mess_mem_sender` (`sender`),
  KEY `fk_mess_mem_receiver` (`receiver`),
  CONSTRAINT `fk_mess_mem_receiver` FOREIGN KEY (`receiver`) REFERENCES `member` (`memID`),
  CONSTRAINT `fk_mess_mem_sender` FOREIGN KEY (`sender`) REFERENCES `member` (`memID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf32;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post` (
  `pID` int(11) NOT NULL AUTO_INCREMENT,
  `memID` int(11) NOT NULL,
  `childID` smallint(4) DEFAULT NULL,
  `tittle` varchar(100) CHARACTER SET utf8 NOT NULL,
  `content` text NOT NULL,
  `postTime` datetime NOT NULL,
  `pstatus` smallint(1) DEFAULT NULL,
  `cost` double NOT NULL,
  `starRate` smallint(1) DEFAULT NULL,
  `likeCount` int(11) DEFAULT NULL,
  `zoneID` int(11) DEFAULT NULL,
  `stickOrder` smallint(2) DEFAULT NULL,
  PRIMARY KEY (`pID`),
  KEY `fk_post_mem` (`memID`),
  KEY `fk_post_zone` (`zoneID`),
  KEY `fk_post_childMenu` (`childID`),
  CONSTRAINT `fk_post_childMenu` FOREIGN KEY (`childID`) REFERENCES `childmenu` (`cid`),
  CONSTRAINT `fk_post_mem` FOREIGN KEY (`memID`) REFERENCES `member` (`memID`),
  CONSTRAINT `fk_post_zone` FOREIGN KEY (`zoneID`) REFERENCES `zone` (`zoneID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf32;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report`
--

DROP TABLE IF EXISTS `report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `report` (
  `repID` int(11) NOT NULL AUTO_INCREMENT,
  `reporter` int(11) NOT NULL,
  `repMem` int(11) NOT NULL,
  `repPost` int(11) NOT NULL,
  `reason` varchar(200) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`repID`),
  KEY `fk_rep_post` (`repPost`),
  KEY `fk_rep_mem_reporter` (`reporter`),
  KEY `fk_rep_mem_repMember` (`repMem`),
  CONSTRAINT `fk_rep_mem_repMember` FOREIGN KEY (`repMem`) REFERENCES `member` (`memID`),
  CONSTRAINT `fk_rep_mem_reporter` FOREIGN KEY (`reporter`) REFERENCES `member` (`memID`),
  CONSTRAINT `fk_rep_post` FOREIGN KEY (`repPost`) REFERENCES `post` (`pID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf32;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report`
--

LOCK TABLES `report` WRITE;
/*!40000 ALTER TABLE `report` DISABLE KEYS */;
/*!40000 ALTER TABLE `report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `submenu`
--

DROP TABLE IF EXISTS `submenu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `submenu` (
  `sid` smallint(3) NOT NULL AUTO_INCREMENT,
  `mID` smallint(2) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`sid`),
  KEY `fk_sub_menu` (`mID`),
  CONSTRAINT `fk_sub_menu` FOREIGN KEY (`mID`) REFERENCES `menu` (`mID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf32;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `submenu`
--

LOCK TABLES `submenu` WRITE;
/*!40000 ALTER TABLE `submenu` DISABLE KEYS */;
/*!40000 ALTER TABLE `submenu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teams` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `rating` int(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teams`
--

LOCK TABLES `teams` WRITE;
/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
/*!40000 ALTER TABLE `teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `uID` varchar(100) CHARACTER SET utf8 NOT NULL,
  `memID` int(11) NOT NULL,
  `user_pw` varchar(30) CHARACTER SET utf8 NOT NULL,
  `active` bit(1) NOT NULL,
  PRIMARY KEY (`uID`),
  KEY `fk_user_member` (`memID`),
  CONSTRAINT `fk_user_member` FOREIGN KEY (`memID`) REFERENCES `member` (`memID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf32;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zone`
--

DROP TABLE IF EXISTS `zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zone` (
  `zoneID` int(11) NOT NULL AUTO_INCREMENT,
  `city` varchar(100) CHARACTER SET utf8 NOT NULL,
  `district` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`zoneID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf32;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zone`
--

LOCK TABLES `zone` WRITE;
/*!40000 ALTER TABLE `zone` DISABLE KEYS */;
/*!40000 ALTER TABLE `zone` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-10-04 23:24:06
