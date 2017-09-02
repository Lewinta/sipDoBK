-- MySQL dump 10.16  Distrib 10.1.25-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: sipDo
-- ------------------------------------------------------
-- Server version	10.1.25-MariaDB-1~xenial

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
-- Table structure for table `__Auth`
--

DROP TABLE IF EXISTS `__Auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `__Auth` (
  `doctype` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fieldname` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salt` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `encrypted` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`doctype`,`name`,`fieldname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `__Auth`
--

LOCK TABLES `__Auth` WRITE;
/*!40000 ALTER TABLE `__Auth` DISABLE KEYS */;
INSERT INTO `__Auth` VALUES ('User','Administrator','password','*A5107AAD82D05A173CD3B84E07CE0B6712E76B23','4eae9013d5160959fb8d64b19af24a9ce639b23653f076b3a3d4b000',0),('User','lewin.villar@gmail.com','password','*80735B481C6BA64B39B9FC02E43167D108626EB7','15988a4fcf8183025845aa9254ef70b0e0f57f188642370ba503bb8c',0);
/*!40000 ALTER TABLE `__Auth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `__UserSettings`
--

DROP TABLE IF EXISTS `__UserSettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `__UserSettings` (
  `user` varchar(180) NOT NULL,
  `doctype` varchar(180) NOT NULL,
  `data` text,
  UNIQUE KEY `user` (`user`,`doctype`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `__UserSettings`
--

LOCK TABLES `__UserSettings` WRITE;
/*!40000 ALTER TABLE `__UserSettings` DISABLE KEYS */;
INSERT INTO `__UserSettings` VALUES ('Administrator','DocType','{\"updated_on\": \"Fri Sep 01 2017 19:15:05 GMT-0400\", \"last_view\": \"List\", \"List\": {\"order_by\": \"`tabDocType`.`modified` desc\", \"filters\": []}}'),('Administrator','Empresa','{\"updated_on\": \"Fri Sep 01 2017 13:24:23 GMT-0700\", \"last_view\": \"List\", \"List\": {\"order_by\": \"`tabEmpresa`.`modified` desc\", \"filters\": []}}'),('Administrator','Paciente','{\"updated_on\": \"Fri Sep 01 2017 19:11:14 GMT-0400\", \"last_view\": \"List\", \"List\": {\"order_by\": \"`tabPaciente`.`modified` desc\", \"filters\": []}}');
/*!40000 ALTER TABLE `__UserSettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `__global_search`
--

DROP TABLE IF EXISTS `__global_search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `__global_search` (
  `doctype` varchar(100) DEFAULT NULL,
  `name` varchar(140) DEFAULT NULL,
  `title` varchar(140) DEFAULT NULL,
  `content` text,
  `route` varchar(140) DEFAULT NULL,
  `published` int(1) NOT NULL DEFAULT '0',
  UNIQUE KEY `doctype_name` (`doctype`,`name`),
  FULLTEXT KEY `content` (`content`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `__global_search`
--

LOCK TABLES `__global_search` WRITE;
/*!40000 ALTER TABLE `__global_search` DISABLE KEYS */;
INSERT INTO `__global_search` VALUES ('DocType','DocType','DocType','Name : DocType',NULL,0),('DocType','DocPerm','DocPerm','Name : DocPerm',NULL,0),('DocType','DocField','DocField','Name : DocField',NULL,0),('DocType','Has Role','Has Role','Name : Has Role',NULL,0),('DocType','User','User','Name : User',NULL,0),('DocType','Role','Role','Name : Role',NULL,0),('DocType','Custom Field','Custom Field','Name : Custom Field',NULL,0),('DocType','Property Setter','Property Setter','Name : Property Setter',NULL,0),('DocType','Web Form','Web Form','Name : Web Form',NULL,0),('DocType','Web Form Field','Web Form Field','Name : Web Form Field',NULL,0),('DocType','Portal Menu Item','Portal Menu Item','Name : Portal Menu Item',NULL,0),('DocType','File','File','Name : File',NULL,0),('DocType','Role Permission for Page and Report','Role Permission for Page and Report','Name : Role Permission for Page and Report',NULL,0),('DocType','Custom DocPerm','Custom DocPerm','Name : Custom DocPerm',NULL,0),('DocType','Communication','Communication','Name : Communication',NULL,0),('DocType','Language','Language','Name : Language',NULL,0),('DocType','DocShare','DocShare','Name : DocShare',NULL,0),('DocType','Dynamic Link','Dynamic Link','Name : Dynamic Link',NULL,0),('DocType','User Permission for Page and Report','User Permission for Page and Report','Name : User Permission for Page and Report',NULL,0),('DocType','Payment Gateway','Payment Gateway','Name : Payment Gateway',NULL,0),('DocType','DefaultValue','DefaultValue','Name : DefaultValue',NULL,0),('DocType','Feedback Trigger','Feedback Trigger','Name : Feedback Trigger',NULL,0),('DocType','Domain','Domain','Name : Domain',NULL,0),('DocType','Authentication Log','Authentication Log','Name : Authentication Log',NULL,0),('DocType','Has Domain','Has Domain','Name : Has Domain',NULL,0),('DocType','User Email','User Email','Name : User Email',NULL,0),('DocType','Feedback Request','Feedback Request','Name : Feedback Request',NULL,0),('DocType','Page','Page','Name : Page',NULL,0),('DocType','Tag','Tag','Name : Tag',NULL,0),('DocType','Version','Version','Name : Version',NULL,0),('DocType','Patch Log','Patch Log','Name : Patch Log',NULL,0),('DocType','Translation','Translation','Name : Translation',NULL,0),('DocType','Deleted Document','Deleted Document','Name : Deleted Document',NULL,0),('DocType','Tag Category','Tag Category','Name : Tag Category',NULL,0),('DocType','Domain Settings','Domain Settings','Name : Domain Settings',NULL,0),('DocType','User Permission','User Permission','Name : User Permission',NULL,0),('DocType','Report','Report','Name : Report',NULL,0),('DocType','Custom Role','Custom Role','Name : Custom Role',NULL,0),('DocType','Block Module','Block Module','Name : Block Module',NULL,0),('Module Def','Core','Core','Name : Core',NULL,0),('DocType','Module Def','Module Def','Name : Module Def',NULL,0),('DocType','Error Snapshot','Error Snapshot','Name : Error Snapshot',NULL,0),('DocType','Error Log','Error Log','Name : Error Log',NULL,0),('DocType','Test Runner','Test Runner','Name : Test Runner',NULL,0),('DocType','Tag Doc Category','Tag Doc Category','Name : Tag Doc Category',NULL,0),('DocType','System Settings','System Settings','Name : System Settings',NULL,0),('Report','Document Share Report','Document Share Report','Name : Document Share Report',NULL,0),('Report','Permitted Documents For User','Permitted Documents For User','Name : Permitted Documents For User',NULL,0),('Report','Feedback Ratings','Feedback Ratings','Name : Feedback Ratings',NULL,0),('Module Def','Website','Website','Name : Website',NULL,0),('DocType','Website Sidebar Item','Website Sidebar Item','Name : Website Sidebar Item',NULL,0),('DocType','Website Script','Website Script','Name : Website Script',NULL,0),('DocType','Blogger','Blogger','Name : Blogger',NULL,0),('DocType','Website Theme','Website Theme','Name : Website Theme',NULL,0),('DocType','Website Slideshow Item','Website Slideshow Item','Name : Website Slideshow Item',NULL,0),('DocType','Help Category','Help Category','Name : Help Category',NULL,0),('DocType','About Us Settings','About Us Settings','Name : About Us Settings',NULL,0),('DocType','Web Page','Web Page','Name : Web Page',NULL,0),('DocType','About Us Team Member','About Us Team Member','Name : About Us Team Member',NULL,0),('DocType','Blog Settings','Blog Settings','Name : Blog Settings',NULL,0),('DocType','Top Bar Item','Top Bar Item','Name : Top Bar Item',NULL,0),('DocType','Website Settings','Website Settings','Name : Website Settings',NULL,0),('DocType','Blog Post','Blog Post','Name : Blog Post','/blog',0),('DocType','Website Sidebar','Website Sidebar','Name : Website Sidebar',NULL,0),('DocType','Help Article','Help Article','Name : Help Article',NULL,0),('DocType','Portal Settings','Portal Settings','Name : Portal Settings',NULL,0),('DocType','Company History','Company History','Name : Company History',NULL,0),('DocType','Footer Item','Footer Item','Name : Footer Item',NULL,0),('DocType','Website Slideshow','Website Slideshow','Name : Website Slideshow',NULL,0),('DocType','Blog Category','Blog Category','Name : Blog Category',NULL,0),('DocType','Contact Us Settings','Contact Us Settings','Name : Contact Us Settings',NULL,0),('Module Def','Workflow','Workflow','Name : Workflow',NULL,0),('DocType','Workflow Transition','Workflow Transition','Name : Workflow Transition',NULL,0),('DocType','Workflow','Workflow','Name : Workflow',NULL,0),('DocType','Workflow Action','Workflow Action','Name : Workflow Action',NULL,0),('DocType','Workflow Document State','Workflow Document State','Name : Workflow Document State',NULL,0),('DocType','Workflow State','Workflow State','Name : Workflow State',NULL,0),('Module Def','Email','Email','Name : Email',NULL,0),('DocType','Email Queue Recipient','Email Queue Recipient','Name : Email Queue Recipient',NULL,0),('DocType','Email Group','Email Group','Name : Email Group',NULL,0),('DocType','Email Account','Email Account','Name : Email Account',NULL,0),('DocType','Email Group Member','Email Group Member','Name : Email Group Member',NULL,0),('DocType','Newsletter Email Group','Newsletter Email Group','Name : Newsletter Email Group',NULL,0),('DocType','Unhandled Email','Unhandled Email','Name : Unhandled Email',NULL,0),('DocType','Newsletter','Newsletter','Name : Newsletter',NULL,0),('DocType','Email Alert','Email Alert','Name : Email Alert',NULL,0),('DocType','Email Queue','Email Queue','Name : Email Queue',NULL,0),('DocType','Email Rule','Email Rule','Name : Email Rule',NULL,0),('DocType','Standard Reply','Standard Reply','Name : Standard Reply',NULL,0),('DocType','Email Domain','Email Domain','Name : Email Domain',NULL,0),('DocType','Email Alert Recipient','Email Alert Recipient','Name : Email Alert Recipient',NULL,0),('DocType','Auto Email Report','Auto Email Report','Name : Auto Email Report',NULL,0),('DocType','Email Flag Queue','Email Flag Queue','Name : Email Flag Queue',NULL,0),('DocType','Email Unsubscribe','Email Unsubscribe','Name : Email Unsubscribe',NULL,0),('Module Def','Custom','Custom','Name : Custom',NULL,0),('DocType','Custom Script','Custom Script','Name : Custom Script',NULL,0),('DocType','Customize Form','Customize Form','Name : Customize Form',NULL,0),('DocType','Customize Form Field','Customize Form Field','Name : Customize Form Field',NULL,0),('Module Def','Geo','Geo','Name : Geo',NULL,0),('DocType','Currency','Currency','Name : Currency',NULL,0),('DocType','Country','Country','Name : Country',NULL,0),('Module Def','Desk','Desk','Name : Desk',NULL,0),('DocType','Note','Note','Name : Note',NULL,0),('DocType','ToDo','ToDo','Name : ToDo',NULL,0),('DocType','Note Seen By','Note Seen By','Name : Note Seen By',NULL,0),('DocType','Bulk Update','Bulk Update','Name : Bulk Update',NULL,0),('DocType','Kanban Board','Kanban Board','Name : Kanban Board',NULL,0),('DocType','Event','Event','Name : Event',NULL,0),('DocType','Kanban Board Column','Kanban Board Column','Name : Kanban Board Column',NULL,0),('DocType','Desktop Icon','Desktop Icon','Name : Desktop Icon',NULL,0),('Report','ToDo','ToDo','Name : ToDo',NULL,0),('Module Def','Integrations','Integrations','Name : Integrations',NULL,0),('DocType','LDAP Settings','LDAP Settings','Name : LDAP Settings',NULL,0),('DocType','OAuth Provider Settings','OAuth Provider Settings','Name : OAuth Provider Settings',NULL,0),('DocType','Social Login Keys','Social Login Keys','Name : Social Login Keys',NULL,0),('DocType','Dropbox Settings','Dropbox Settings','Name : Dropbox Settings',NULL,0),('DocType','Razorpay Settings','Razorpay Settings','Name : Razorpay Settings',NULL,0),('DocType','PayPal Settings','PayPal Settings','Name : PayPal Settings',NULL,0),('DocType','OAuth Client','OAuth Client','Name : OAuth Client',NULL,0),('DocType','OAuth Authorization Code','OAuth Authorization Code','Name : OAuth Authorization Code',NULL,0),('DocType','GSuite Templates','GSuite Templates','Name : GSuite Templates',NULL,0),('DocType','GSuite Settings','GSuite Settings','Name : GSuite Settings',NULL,0),('DocType','OAuth Bearer Token','OAuth Bearer Token','Name : OAuth Bearer Token',NULL,0),('DocType','Integration Request','Integration Request','Name : Integration Request',NULL,0),('DocType','Stripe Settings','Stripe Settings','Name : Stripe Settings',NULL,0),('Module Def','Printing','Printing','Name : Printing',NULL,0),('DocType','Print Settings','Print Settings','Name : Print Settings',NULL,0),('DocType','Letter Head','Letter Head','Name : Letter Head',NULL,0),('DocType','Print Heading','Print Heading','Name : Print Heading',NULL,0),('DocType','Print Format','Print Format','Name : Print Format',NULL,0),('Module Def','Contacts','Contacts','Name : Contacts',NULL,0),('DocType','Address Template','Address Template','Name : Address Template',NULL,0),('DocType','Contact','Contact','Name : Contact',NULL,0),('DocType','Salutation','Salutation','Name : Salutation',NULL,0),('DocType','Gender','Gender','Name : Gender',NULL,0),('DocType','Address','Address','Name : Address',NULL,0),('Report','Addresses And Contacts','Addresses And Contacts','Name : Addresses And Contacts',NULL,0),('User','Administrator','Administrator','Full Name : Administrator ||| Name : Administrator',NULL,0),('User','Guest','Guest','Full Name : Guest ||| Name : Guest',NULL,0),('Workflow State','Pending','Pending','Name : Pending',NULL,0),('Workflow State','Approved','Approved','Name : Approved',NULL,0),('Workflow State','Rejected','Rejected','Name : Rejected',NULL,0),('Email Account','Notifications','Notifications','Email Address : notifications@example.com',NULL,0),('Email Account','Replies','Replies','Email Address : replies@example.com',NULL,0),('File','Home','Home','File Name : Home',NULL,0),('File','Home/Attachments','Home/Attachments','File Name : Attachments',NULL,0),('User','lewin.villar@gmail.com','lewin.villar@gmail.com','Full Name : Lewin Villar ||| Name : lewin.villar@gmail.com',NULL,0),('Module Def','sipDo','sipDo','Name : sipDo',NULL,0),('Communication','fde70a1cc4','fde70a1cc4','Subject : Paciente',NULL,0),('DocType','Paciente','Paciente','Name : Paciente',NULL,0),('Communication','d41471dc58','d41471dc58','Subject : Paciente',NULL,0),('Communication','802374fa9f','802374fa9f','Subject : Paciente',NULL,0),('Communication','ec0250d115','ec0250d115','Subject : Paciente',NULL,0),('Communication','cb51836383','cb51836383','Subject : Paciente',NULL,0),('Communication','ace3582a4d','ace3582a4d','Subject : Paciente',NULL,0),('Communication','68dd354213','68dd354213','Subject : Telefonos',NULL,0),('DocType','Telefonos','Telefonos','Name : Telefonos',NULL,0),('Communication','193786f3f4','193786f3f4','Subject : Paciente',NULL,0),('Communication','e4033e3f2d','e4033e3f2d','Subject : Paciente',NULL,0),('Communication','7027955972','7027955972','Subject : Paciente',NULL,0),('Communication','dd4cb82924','dd4cb82924','Subject : Paciente',NULL,0),('Communication','8d62696b78','8d62696b78','Subject : Alergias',NULL,0),('DocType','Alergias','Alergias','Name : Alergias',NULL,0),('Communication','faa854b6a6','faa854b6a6','Subject : Paciente',NULL,0),('Communication','9291767236','9291767236','Subject : Medicamentos',NULL,0),('DocType','Medicamentos','Medicamentos','Name : Medicamentos',NULL,0),('Communication','d389cb76b3','d389cb76b3','Subject : Paciente',NULL,0),('Communication','add592c300','add592c300','Subject : Alergias',NULL,0),('Communication','31c16721ff','31c16721ff','Subject : Alergias',NULL,0),('Communication','44ec745892','44ec745892','Subject : Alergias',NULL,0),('Communication','37f71b4d30','37f71b4d30','Subject : Medicamentos',NULL,0),('Communication','d37e7cab74','d37e7cab74','Subject : Medicamentos',NULL,0),('Communication','012c58f5cf','012c58f5cf','Subject : Medicamentos',NULL,0),('Communication','109eeea6aa','109eeea6aa','Subject : Medicamentos',NULL,0),('Communication','2a4aaec979','2a4aaec979','Subject : Empresa',NULL,0),('DocType','Empresa','Empresa','Name : Empresa',NULL,0),('Communication','d8335cdac0','d8335cdac0','Subject : Empresa',NULL,0),('Communication','ec8644e091','ec8644e091','Subject : Paciente',NULL,0),('Communication','8418a06f0f','8418a06f0f','Subject : Empresa',NULL,0),('Communication','68bdd0be85','68bdd0be85','Subject : Empresa',NULL,0),('Communication','9e528577dc','9e528577dc','Subject : Empresa',NULL,0),('Communication','c83b1b4318','c83b1b4318','Subject : Paciente',NULL,0),('Communication','7a76f82377','7a76f82377','Subject : Paciente',NULL,0),('File','3742804980','3742804980','File Name : WhatsApp_Image_2017-09-01_at_7.35.05_PM.jpeg',NULL,0),('File','39e843986c','39e843986c','File Name : Gibran.jpg',NULL,0);
/*!40000 ALTER TABLE `__global_search` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabAbout Us Team Member`
--

DROP TABLE IF EXISTS `tabAbout Us Team Member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabAbout Us Team Member` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT '0',
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT '0',
  `image_link` text COLLATE utf8mb4_unicode_ci,
  `bio` text COLLATE utf8mb4_unicode_ci,
  `full_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabAbout Us Team Member`
--

LOCK TABLES `tabAbout Us Team Member` WRITE;
/*!40000 ALTER TABLE `tabAbout Us Team Member` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabAbout Us Team Member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabAddress`
--

DROP TABLE IF EXISTS `tabAddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabAddress` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT '0',
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT '0',
  `email_id` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pincode` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `county` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_your_company_address` int(1) NOT NULL DEFAULT '0',
  `address_line2` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_line1` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_comments` text COLLATE utf8mb4_unicode_ci,
  `is_primary_address` int(1) NOT NULL DEFAULT '0',
  `state` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_type` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_liked_by` text COLLATE utf8mb4_unicode_ci,
  `address_title` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_assign` text COLLATE utf8mb4_unicode_ci,
  `phone` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_user_tags` text COLLATE utf8mb4_unicode_ci,
  `country` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_shipping_address` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`name`),
  KEY `pincode` (`pincode`),
  KEY `city` (`city`),
  KEY `country` (`country`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabAddress`
--

LOCK TABLES `tabAddress` WRITE;
/*!40000 ALTER TABLE `tabAddress` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabAddress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabAddress Template`
--

DROP TABLE IF EXISTS `tabAddress Template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabAddress Template` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT '0',
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT '0',
  `_liked_by` text COLLATE utf8mb4_unicode_ci,
  `country` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_assign` text COLLATE utf8mb4_unicode_ci,
  `is_default` int(1) NOT NULL DEFAULT '0',
  `_comments` text COLLATE utf8mb4_unicode_ci,
  `template` longtext COLLATE utf8mb4_unicode_ci,
  `_user_tags` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`name`),
  KEY `country` (`country`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabAddress Template`
--

LOCK TABLES `tabAddress Template` WRITE;
/*!40000 ALTER TABLE `tabAddress Template` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabAddress Template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabAlergias`
--

DROP TABLE IF EXISTS `tabAlergias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabAlergias` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT '0',
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT '0',
  `medico` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `centro_de_salud` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `medicamento` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data_6` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabAlergias`
--

LOCK TABLES `tabAlergias` WRITE;
/*!40000 ALTER TABLE `tabAlergias` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabAlergias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabAuthentication Log`
--

DROP TABLE IF EXISTS `tabAuthentication Log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabAuthentication Log` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT '0',
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT '0',
  `status` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_assign` text COLLATE utf8mb4_unicode_ci,
  `_comments` text COLLATE utf8mb4_unicode_ci,
  `_liked_by` text COLLATE utf8mb4_unicode_ci,
  `user` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `full_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` datetime(6) DEFAULT NULL,
  `operation` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_user_tags` text COLLATE utf8mb4_unicode_ci,
  `subject` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabAuthentication Log`
--

LOCK TABLES `tabAuthentication Log` WRITE;
/*!40000 ALTER TABLE `tabAuthentication Log` DISABLE KEYS */;
INSERT INTO `tabAuthentication Log` VALUES ('2e88027fb9','2017-09-01 19:10:42.309256','2017-09-01 19:10:42.309256','Administrator','Administrator',0,NULL,NULL,NULL,0,'Success',NULL,NULL,NULL,'Administrator','Administrator','2017-09-01 19:10:42.311776','Login',NULL,'Administrator logged in'),('e32d90102b','2017-09-01 22:06:47.955749','2017-09-01 22:06:47.955749','Administrator','Administrator',0,NULL,NULL,NULL,0,'Success',NULL,NULL,NULL,'Administrator','Administrator','2017-09-01 22:06:47.959217','Login',NULL,'Administrator logged in');
/*!40000 ALTER TABLE `tabAuthentication Log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabAuto Email Report`
--

DROP TABLE IF EXISTS `tabAuto Email Report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabAuto Email Report` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT '0',
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT '0',
  `frequency` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filters` text COLLATE utf8mb4_unicode_ci,
  `send_if_data` int(1) NOT NULL DEFAULT '1',
  `_comments` text COLLATE utf8mb4_unicode_ci,
  `filter_meta` text COLLATE utf8mb4_unicode_ci,
  `report_type` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_of_rows` int(11) NOT NULL DEFAULT '100',
  `_liked_by` text COLLATE utf8mb4_unicode_ci,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `format` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_assign` text COLLATE utf8mb4_unicode_ci,
  `email_to` text COLLATE utf8mb4_unicode_ci,
  `user` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT 'User',
  `report` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_user_tags` text COLLATE utf8mb4_unicode_ci,
  `data_modified_till` int(11) NOT NULL DEFAULT '0',
  `enabled` int(1) NOT NULL DEFAULT '1',
  `day_of_week` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT 'Monday',
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabAuto Email Report`
--

LOCK TABLES `tabAuto Email Report` WRITE;
/*!40000 ALTER TABLE `tabAuto Email Report` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabAuto Email Report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabBlock Module`
--

DROP TABLE IF EXISTS `tabBlock Module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabBlock Module` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT '0',
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT '0',
  `module` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabBlock Module`
--

LOCK TABLES `tabBlock Module` WRITE;
/*!40000 ALTER TABLE `tabBlock Module` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabBlock Module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabBlog Category`
--

DROP TABLE IF EXISTS `tabBlog Category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabBlog Category` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT '0',
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT '0',
  `_liked_by` text COLLATE utf8mb4_unicode_ci,
  `title` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_comments` text COLLATE utf8mb4_unicode_ci,
  `route` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_assign` text COLLATE utf8mb4_unicode_ci,
  `published` int(1) NOT NULL DEFAULT '0',
  `_user_tags` text COLLATE utf8mb4_unicode_ci,
  `category_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  UNIQUE KEY `route` (`route`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabBlog Category`
--

LOCK TABLES `tabBlog Category` WRITE;
/*!40000 ALTER TABLE `tabBlog Category` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabBlog Category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabBlog Post`
--

DROP TABLE IF EXISTS `tabBlog Post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabBlog Post` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT '0',
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT '0',
  `published_on` date DEFAULT NULL,
  `_liked_by` text COLLATE utf8mb4_unicode_ci,
  `title` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blogger` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `route` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_assign` text COLLATE utf8mb4_unicode_ci,
  `email_sent` int(1) NOT NULL DEFAULT '0',
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `_comments` text COLLATE utf8mb4_unicode_ci,
  `published` int(1) NOT NULL DEFAULT '0',
  `blog_category` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_user_tags` text COLLATE utf8mb4_unicode_ci,
  `blog_intro` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`name`),
  UNIQUE KEY `route` (`route`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabBlog Post`
--

LOCK TABLES `tabBlog Post` WRITE;
/*!40000 ALTER TABLE `tabBlog Post` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabBlog Post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabBlogger`
--

DROP TABLE IF EXISTS `tabBlogger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabBlogger` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT '0',
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT '0',
  `bio` text COLLATE utf8mb4_unicode_ci,
  `_liked_by` text COLLATE utf8mb4_unicode_ci,
  `short_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_comments` text COLLATE utf8mb4_unicode_ci,
  `_assign` text COLLATE utf8mb4_unicode_ci,
  `posts` int(11) NOT NULL DEFAULT '0',
  `disabled` int(1) NOT NULL DEFAULT '0',
  `user` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `full_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_user_tags` text COLLATE utf8mb4_unicode_ci,
  `avatar` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabBlogger`
--

LOCK TABLES `tabBlogger` WRITE;
/*!40000 ALTER TABLE `tabBlogger` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabBlogger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabCommunication`
--

DROP TABLE IF EXISTS `tabCommunication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabCommunication` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT '0',
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT '0',
  `rating` int(11) NOT NULL DEFAULT '0',
  `uid` int(11) NOT NULL DEFAULT '0',
  `comment_type` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc` longtext COLLATE utf8mb4_unicode_ci,
  `read_receipt` int(1) NOT NULL DEFAULT '0',
  `link_doctype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timeline_doctype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sender_full_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seen` int(1) NOT NULL DEFAULT '0',
  `email_account` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` text COLLATE utf8mb4_unicode_ci,
  `reference_doctype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_content` longtext COLLATE utf8mb4_unicode_ci,
  `_comments` text COLLATE utf8mb4_unicode_ci,
  `unread_notification_sent` int(1) NOT NULL DEFAULT '0',
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `communication_medium` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `has_attachment` int(1) NOT NULL DEFAULT '0',
  `message_id` varchar(995) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_liked_by` text COLLATE utf8mb4_unicode_ci,
  `recipients` longtext COLLATE utf8mb4_unicode_ci,
  `timeline_label` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_assign` text COLLATE utf8mb4_unicode_ci,
  `communication_type` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT 'Communication',
  `feedback_request` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_status` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `in_reply_to` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_user_tags` text COLLATE utf8mb4_unicode_ci,
  `sender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sent_or_received` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timeline_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_no` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_seen` text COLLATE utf8mb4_unicode_ci,
  `communication_date` datetime(6) DEFAULT NULL,
  `email_status` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `reference_owner` (`reference_owner`),
  KEY `parent` (`parent`),
  KEY `reference_doctype_reference_name_index` (`reference_doctype`,`reference_name`),
  KEY `timeline_doctype_timeline_name_index` (`timeline_doctype`,`timeline_name`),
  KEY `link_doctype_link_name_index` (`link_doctype`,`link_name`),
  KEY `status_communication_type_index` (`status`,`communication_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabCommunication`
--

LOCK TABLES `tabCommunication` WRITE;
/*!40000 ALTER TABLE `tabCommunication` DISABLE KEYS */;
INSERT INTO `tabCommunication` VALUES ('109eeea6aa','2017-09-01 15:33:39.682135','2017-09-01 15:33:39.682135','Administrator','Administrator',0,NULL,NULL,NULL,0,0,0,'Updated',NULL,0,NULL,NULL,NULL,0,NULL,'Administrator','Medicamentos','DocType',NULL,NULL,0,NULL,'',NULL,0,NULL,'Linked',NULL,NULL,NULL,'Medicamentos',NULL,'Comment',NULL,'Administrator','',NULL,NULL,NULL,'Sent',NULL,NULL,NULL,'2017-09-01 15:33:39.681074','Open'),('44ec745892','2017-09-01 15:28:08.885465','2017-09-01 15:28:08.885465','Administrator','Administrator',0,NULL,NULL,NULL,0,0,0,'Updated',NULL,0,NULL,NULL,NULL,0,NULL,'Administrator','Alergias','DocType',NULL,NULL,0,NULL,'',NULL,0,NULL,'Linked',NULL,NULL,NULL,'Alergias',NULL,'Comment',NULL,'Administrator','',NULL,NULL,NULL,'Sent',NULL,NULL,NULL,'2017-09-01 15:28:08.884127','Open'),('68dd354213','2017-09-01 13:46:36.681048','2017-09-01 13:46:36.681048','Administrator','Administrator',0,NULL,NULL,NULL,0,0,0,'Updated',NULL,0,NULL,NULL,NULL,0,NULL,'Administrator','Telefonos','DocType',NULL,NULL,0,NULL,'',NULL,0,NULL,'Linked',NULL,NULL,NULL,'Telefonos',NULL,'Comment',NULL,'Administrator','',NULL,NULL,NULL,'Sent',NULL,NULL,NULL,'2017-09-01 13:46:36.678127','Open'),('7a76f82377','2017-09-01 19:20:26.028912','2017-09-01 19:20:26.028912','Administrator','Administrator',0,NULL,NULL,NULL,0,0,0,'Updated',NULL,0,NULL,NULL,NULL,0,NULL,'Administrator','Paciente','DocType',NULL,NULL,0,NULL,'',NULL,0,NULL,'Linked',NULL,NULL,NULL,'Paciente',NULL,'Comment',NULL,'Administrator','',NULL,NULL,NULL,'Sent',NULL,NULL,NULL,'2017-09-01 19:20:26.025693','Open'),('9e528577dc','2017-09-01 16:25:54.112378','2017-09-01 16:25:54.112378','Administrator','Administrator',0,NULL,NULL,NULL,0,0,0,'Updated',NULL,0,NULL,NULL,NULL,0,NULL,'Administrator','Empresa','DocType',NULL,NULL,0,NULL,'',NULL,0,NULL,'Linked',NULL,NULL,NULL,'Empresa',NULL,'Comment',NULL,'Administrator','',NULL,NULL,NULL,'Sent',NULL,NULL,NULL,'2017-09-01 16:25:54.110567','Open');
/*!40000 ALTER TABLE `tabCommunication` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabCompany History`
--

DROP TABLE IF EXISTS `tabCompany History`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabCompany History` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT '0',
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT '0',
  `highlight` text COLLATE utf8mb4_unicode_ci,
  `year` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabCompany History`
--

LOCK TABLES `tabCompany History` WRITE;
/*!40000 ALTER TABLE `tabCompany History` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabCompany History` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabContact`
--

DROP TABLE IF EXISTS `tabContact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabContact` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT '0',
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT '0',
  `last_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_id` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_no` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salutation` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_user_tags` text COLLATE utf8mb4_unicode_ci,
  `unsubscribed` int(1) NOT NULL DEFAULT '0',
  `department` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT 'Passive',
  `_liked_by` text COLLATE utf8mb4_unicode_ci,
  `_assign` text COLLATE utf8mb4_unicode_ci,
  `phone` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_comments` text COLLATE utf8mb4_unicode_ci,
  `designation` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_primary_contact` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`name`),
  KEY `email_id` (`email_id`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabContact`
--

LOCK TABLES `tabContact` WRITE;
/*!40000 ALTER TABLE `tabContact` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabContact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabCountry`
--

DROP TABLE IF EXISTS `tabCountry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabCountry` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT '0',
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT '0',
  `date_format` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_comments` text COLLATE utf8mb4_unicode_ci,
  `_assign` text COLLATE utf8mb4_unicode_ci,
  `_liked_by` text COLLATE utf8mb4_unicode_ci,
  `time_zones` text COLLATE utf8mb4_unicode_ci,
  `country_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_user_tags` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabCountry`
--

LOCK TABLES `tabCountry` WRITE;
/*!40000 ALTER TABLE `tabCountry` DISABLE KEYS */;
INSERT INTO `tabCountry` VALUES ('Afghanistan','2017-09-01 22:00:14.566355','2017-09-01 22:00:14.566355',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','af',NULL,NULL,NULL,'Asia/Kabul','Afghanistan',NULL),('Åland Islands','2017-09-01 22:00:15.165359','2017-09-01 22:00:15.165359',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','ax',NULL,NULL,NULL,'','Åland Islands',NULL),('Albania','2017-09-01 22:00:14.450675','2017-09-01 22:00:14.450675',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','al',NULL,NULL,NULL,'Europe/Tirane','Albania',NULL),('Algeria','2017-09-01 22:00:15.036088','2017-09-01 22:00:15.036088',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','dz',NULL,NULL,NULL,'Africa/Algiers','Algeria',NULL),('American Samoa','2017-09-01 22:00:14.344182','2017-09-01 22:00:14.344182',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','as',NULL,NULL,NULL,'','American Samoa',NULL),('Andorra','2017-09-01 22:00:14.484761','2017-09-01 22:00:14.484761',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','ad',NULL,NULL,NULL,'Europe/Andorra','Andorra',NULL),('Angola','2017-09-01 22:00:14.836018','2017-09-01 22:00:14.836018',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','ao',NULL,NULL,NULL,'Africa/Luanda','Angola',NULL),('Anguilla','2017-09-01 22:00:15.302332','2017-09-01 22:00:15.302332',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','ai',NULL,NULL,NULL,'America/Anguilla','Anguilla',NULL),('Antarctica','2017-09-01 22:00:15.476980','2017-09-01 22:00:15.476980',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','aq',NULL,NULL,NULL,'Antarctica/Casey\nAntarctica/Davis\nAntarctica/DumontDUrville\nAntarctica/Macquarie\nAntarctica/Mawson\nAntarctica/McMurdo\nAntarctica/Palmer\nAntarctica/Rothera\nAntarctica/Syowa\nAntarctica/Vostok','Antarctica',NULL),('Antigua and Barbuda','2017-09-01 22:00:15.219206','2017-09-01 22:00:15.219206',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','ag',NULL,NULL,NULL,'America/Antigua','Antigua and Barbuda',NULL),('Argentina','2017-09-01 22:00:14.300511','2017-09-01 22:00:14.300511',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','ar',NULL,NULL,NULL,'America/Argentina/Buenos_Aires\nAmerica/Argentina/Catamarca\nAmerica/Argentina/Cordoba\nAmerica/Argentina/Jujuy\nAmerica/Argentina/La_Rioja\nAmerica/Argentina/Mendoza\nAmerica/Argentina/Rio_Gallegos\nAmerica/Argentina/Salta\nAmerica/Argentina/San_Juan\nAmerica/Argentina/San_Luis\nAmerica/Argentina/Tucuman\nAmerica/Argentina/Ushuaia','Argentina',NULL),('Armenia','2017-09-01 22:00:14.744956','2017-09-01 22:00:14.744956',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','am',NULL,NULL,NULL,'Asia/Yerevan','Armenia',NULL),('Aruba','2017-09-01 22:00:14.292731','2017-09-01 22:00:14.292731',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','aw',NULL,NULL,NULL,'America/Aruba','Aruba',NULL),('Australia','2017-09-01 22:00:14.805656','2017-09-01 22:00:14.805656',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','au',NULL,NULL,NULL,'Australia/Adelaide\nAustralia/Brisbane\nAustralia/Broken_Hill\nAustralia/Currie\nAustralia/Darwin\nAustralia/Eucla\nAustralia/Hobart\nAustralia/Lindeman\nAustralia/Lord_Howe\nAustralia/Melbourne\nAustralia/Perth\nAustralia/Sydney','Australia',NULL),('Austria','2017-09-01 22:00:14.889025','2017-09-01 22:00:14.889025',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','at',NULL,NULL,NULL,'Europe/Vienna','Austria',NULL),('Azerbaijan','2017-09-01 22:00:14.535411','2017-09-01 22:00:14.535411',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','az',NULL,NULL,NULL,'Asia/Baku','Azerbaijan',NULL),('Bahamas','2017-09-01 22:00:14.978334','2017-09-01 22:00:14.978334',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','bs',NULL,NULL,NULL,'America/Nassau','Bahamas',NULL),('Bahrain','2017-09-01 22:00:14.761610','2017-09-01 22:00:14.761610',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','bh',NULL,NULL,NULL,'Asia/Bahrain','Bahrain',NULL),('Bangladesh','2017-09-01 22:00:14.570897','2017-09-01 22:00:14.570897',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','bd',NULL,NULL,NULL,'Asia/Dhaka','Bangladesh',NULL),('Barbados','2017-09-01 22:00:15.247195','2017-09-01 22:00:15.247195',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','bb',NULL,NULL,NULL,'America/Barbados','Barbados',NULL),('Belarus','2017-09-01 22:00:15.027880','2017-09-01 22:00:15.027880',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','by',NULL,NULL,NULL,'Europe/Minsk','Belarus',NULL),('Belgium','2017-09-01 22:00:15.081304','2017-09-01 22:00:15.081304',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','be',NULL,NULL,NULL,'Europe/Brussels','Belgium',NULL),('Belize','2017-09-01 22:00:15.094506','2017-09-01 22:00:15.094506',NULL,NULL,0,NULL,NULL,NULL,0,'mm-dd-yyyy','bz',NULL,NULL,NULL,'America/Belize','Belize',NULL),('Benin','2017-09-01 22:00:14.684045','2017-09-01 22:00:14.684045',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','bj',NULL,NULL,NULL,'Africa/Porto-Novo','Benin',NULL),('Bermuda','2017-09-01 22:00:14.612988','2017-09-01 22:00:14.612988',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','bm',NULL,NULL,NULL,'Atlantic/Bermuda','Bermuda',NULL),('Bhutan','2017-09-01 22:00:15.256921','2017-09-01 22:00:15.256921',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','bt',NULL,NULL,NULL,'Asia/Thimphu','Bhutan',NULL),('Bolivia, Plurinational State of','2017-09-01 22:00:15.265591','2017-09-01 22:00:15.265591',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','bo',NULL,NULL,NULL,'','Bolivia, Plurinational State of',NULL),('Bonaire, Sint Eustatius and Saba','2017-09-01 22:00:14.384635','2017-09-01 22:00:14.384635',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','bq',NULL,NULL,NULL,'','Bonaire, Sint Eustatius and Saba',NULL),('Bosnia and Herzegovina','2017-09-01 22:00:14.362712','2017-09-01 22:00:14.362712',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','ba',NULL,NULL,NULL,'Europe/Sarajevo','Bosnia and Herzegovina',NULL),('Botswana','2017-09-01 22:00:15.465866','2017-09-01 22:00:15.465866',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','bw',NULL,NULL,NULL,'Africa/Gaborone','Botswana',NULL),('Bouvet Island','2017-09-01 22:00:15.440604','2017-09-01 22:00:15.440604',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','bv',NULL,NULL,NULL,'','Bouvet Island',NULL),('Brazil','2017-09-01 22:00:14.922381','2017-09-01 22:00:14.922381',NULL,NULL,0,NULL,NULL,NULL,0,'dd/mm/yyyy','br',NULL,NULL,NULL,'America/Araguaina\nAmerica/Bahia\nAmerica/Belem\nAmerica/Boa_Vista\nAmerica/Campo_Grande\nAmerica/Cuiaba\nAmerica/Eirunepe\nAmerica/Fortaleza\nAmerica/Maceio\nAmerica/Manaus\nAmerica/Noronha\nAmerica/Porto_Velho\nAmerica/Recife\nAmerica/Rio_Branco\nAmerica/Santarem\nAmerica/Sao_Paulo','Brazil',NULL),('British Indian Ocean Territory','2017-09-01 22:00:15.391149','2017-09-01 22:00:15.391149',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','io',NULL,NULL,NULL,'Indian/Chagos','British Indian Ocean Territory',NULL),('Brunei Darussalam','2017-09-01 22:00:14.867725','2017-09-01 22:00:14.867725',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','bn',NULL,NULL,NULL,'Asia/Brunei','Brunei Darussalam',NULL),('Bulgaria','2017-09-01 22:00:14.820848','2017-09-01 22:00:14.820848',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','bg',NULL,NULL,NULL,'Europe/Sofia','Bulgaria',NULL),('Burkina Faso','2017-09-01 22:00:14.308489','2017-09-01 22:00:14.308489',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','bf',NULL,NULL,NULL,'Africa/Ouagadougou','Burkina Faso',NULL),('Burundi','2017-09-01 22:00:15.231637','2017-09-01 22:00:15.231637',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','bi',NULL,NULL,NULL,'Africa/Bujumbura','Burundi',NULL),('Cambodia','2017-09-01 22:00:14.273540','2017-09-01 22:00:14.273540',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','kh',NULL,NULL,NULL,'Asia/Phnom_Penh','Cambodia',NULL),('Cameroon','2017-09-01 22:00:14.305068','2017-09-01 22:00:14.305068',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','cm',NULL,NULL,NULL,'Africa/Douala','Cameroon',NULL),('Canada','2017-09-01 22:00:14.185303','2017-09-01 22:00:14.185303',NULL,NULL,0,NULL,NULL,NULL,0,'mm-dd-yyyy','ca',NULL,NULL,NULL,'America/Atikokan\nAmerica/Blanc-Sablon\nAmerica/Cambridge_Bay\nAmerica/Creston\nAmerica/Dawson\nAmerica/Dawson_Creek\nAmerica/Edmonton\nAmerica/Glace_Bay\nAmerica/Goose_Bay\nAmerica/Halifax\nAmerica/Inuvik\nAmerica/Iqaluit\nAmerica/Moncton\nAmerica/Montreal\nAmerica/Nipigon\nAmerica/Pangnirtung\nAmerica/Rainy_River\nAmerica/Rankin_Inlet\nAmerica/Regina\nAmerica/Resolute\nAmerica/St_Johns\nAmerica/Swift_Current\nAmerica/Thunder_Bay\nAmerica/Toronto\nAmerica/Vancouver\nAmerica/Whitehorse\nAmerica/Winnipeg\nAmerica/Yellowknife','Canada',NULL),('Cape Verde','2017-09-01 22:00:14.969738','2017-09-01 22:00:14.969738',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','cv',NULL,NULL,NULL,'Atlantic/Cape_Verde','Cape Verde',NULL),('Cayman Islands','2017-09-01 22:00:14.781656','2017-09-01 22:00:14.781656',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','ky',NULL,NULL,NULL,'America/Cayman','Cayman Islands',NULL),('Central African Republic','2017-09-01 22:00:14.787908','2017-09-01 22:00:14.787908',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','cf',NULL,NULL,NULL,'Africa/Bangui','Central African Republic',NULL),('Chad','2017-09-01 22:00:14.845790','2017-09-01 22:00:14.845790',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','td',NULL,NULL,NULL,'Africa/Ndjamena','Chad',NULL),('Chile','2017-09-01 22:00:15.070590','2017-09-01 22:00:15.070590',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','cl',NULL,NULL,NULL,'America/Santiago\nPacific/Easter','Chile',NULL),('China','2017-09-01 22:00:14.739164','2017-09-01 22:00:14.739164',NULL,NULL,0,NULL,NULL,NULL,0,'yyyy-mm-dd','cn',NULL,NULL,NULL,'Asia/Chongqing\nAsia/Harbin\nAsia/Kashgar\nAsia/Shanghai\nAsia/Urumqi','China',NULL),('Christmas Island','2017-09-01 22:00:15.304888','2017-09-01 22:00:15.304888',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','cx',NULL,NULL,NULL,'Indian/Christmas','Christmas Island',NULL),('Cocos (Keeling) Islands','2017-09-01 22:00:14.350756','2017-09-01 22:00:14.350756',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','cc',NULL,NULL,NULL,'Indian/Cocos','Cocos (Keeling) Islands',NULL),('Colombia','2017-09-01 22:00:15.226400','2017-09-01 22:00:15.226400',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','co',NULL,NULL,NULL,'America/Bogota','Colombia',NULL),('Comoros','2017-09-01 22:00:15.497240','2017-09-01 22:00:15.497240',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','km',NULL,NULL,NULL,'Indian/Comoro','Comoros',NULL),('Congo','2017-09-01 22:00:15.479773','2017-09-01 22:00:15.479773',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','cg',NULL,NULL,NULL,'','Congo',NULL),('Congo, The Democratic Republic of the','2017-09-01 22:00:15.385566','2017-09-01 22:00:15.385566',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','cd',NULL,NULL,NULL,'','Congo, The Democratic Republic of the',NULL),('Cook Islands','2017-09-01 22:00:14.677884','2017-09-01 22:00:14.677884',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','ck',NULL,NULL,NULL,'Pacific/Rarotonga','Cook Islands',NULL),('Costa Rica','2017-09-01 22:00:14.957225','2017-09-01 22:00:14.957225',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','cr',NULL,NULL,NULL,'America/Costa_Rica','Costa Rica',NULL),('Croatia','2017-09-01 22:00:15.137277','2017-09-01 22:00:15.137277',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','hr',NULL,NULL,NULL,'Europe/Zagreb','Croatia',NULL),('Cuba','2017-09-01 22:00:14.713258','2017-09-01 22:00:14.713258',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','cu',NULL,NULL,NULL,'America/Havana','Cuba',NULL),('Curaçao','2017-09-01 22:00:15.420080','2017-09-01 22:00:15.420080',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','cw',NULL,NULL,NULL,'','Curaçao',NULL),('Cyprus','2017-09-01 22:00:14.857551','2017-09-01 22:00:14.857551',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','cy',NULL,NULL,NULL,'Asia/Nicosia','Cyprus',NULL),('Czech Republic','2017-09-01 22:00:15.021603','2017-09-01 22:00:15.021603',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','cz',NULL,NULL,NULL,'Europe/Prague','Czech Republic',NULL),('Denmark','2017-09-01 22:00:15.355651','2017-09-01 22:00:15.355651',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','dk',NULL,NULL,NULL,'Europe/Copenhagen','Denmark',NULL),('Djibouti','2017-09-01 22:00:15.210075','2017-09-01 22:00:15.210075',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','dj',NULL,NULL,NULL,'Africa/Djibouti','Djibouti',NULL),('Dominica','2017-09-01 22:00:14.390628','2017-09-01 22:00:14.390628',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','dm',NULL,NULL,NULL,'America/Dominica','Dominica',NULL),('Dominican Republic','2017-09-01 22:00:14.751808','2017-09-01 22:00:14.751808',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','do',NULL,NULL,NULL,'America/Santo_Domingo','Dominican Republic',NULL),('Ecuador','2017-09-01 22:00:15.018439','2017-09-01 22:00:15.018439',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','ec',NULL,NULL,NULL,'America/Guayaquil\nPacific/Galapagos','Ecuador',NULL),('Egypt','2017-09-01 22:00:15.443727','2017-09-01 22:00:15.443727',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','eg',NULL,NULL,NULL,'Africa/Cairo','Egypt',NULL),('El Salvador','2017-09-01 22:00:15.050103','2017-09-01 22:00:15.050103',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','sv',NULL,NULL,NULL,'America/El_Salvador','El Salvador',NULL),('Equatorial Guinea','2017-09-01 22:00:15.188187','2017-09-01 22:00:15.188187',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','gq',NULL,NULL,NULL,'Africa/Malabo','Equatorial Guinea',NULL),('Eritrea','2017-09-01 22:00:15.375693','2017-09-01 22:00:15.375693',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','er',NULL,NULL,NULL,'Africa/Asmara','Eritrea',NULL),('Estonia','2017-09-01 22:00:15.177164','2017-09-01 22:00:15.177164',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','ee',NULL,NULL,NULL,'Europe/Tallinn','Estonia',NULL),('Ethiopia','2017-09-01 22:00:14.288560','2017-09-01 22:00:14.288560',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','et',NULL,NULL,NULL,'Africa/Addis_Ababa','Ethiopia',NULL),('Falkland Islands (Malvinas)','2017-09-01 22:00:14.725462','2017-09-01 22:00:14.725462',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','fk',NULL,NULL,NULL,'','Falkland Islands (Malvinas)',NULL),('Faroe Islands','2017-09-01 22:00:14.939907','2017-09-01 22:00:14.939907',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','fo',NULL,NULL,NULL,'Atlantic/Faroe','Faroe Islands',NULL),('Fiji','2017-09-01 22:00:15.243074','2017-09-01 22:00:15.243074',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','fj',NULL,NULL,NULL,'Pacific/Fiji','Fiji',NULL),('Finland','2017-09-01 22:00:14.770761','2017-09-01 22:00:14.770761',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','fi',NULL,NULL,NULL,'Europe/Helsinki','Finland',NULL),('France','2017-09-01 22:00:14.602118','2017-09-01 22:00:14.602118',NULL,NULL,0,NULL,NULL,NULL,0,'dd/mm/yyyy','fr',NULL,NULL,NULL,'Europe/Paris','France',NULL),('French Guiana','2017-09-01 22:00:14.455599','2017-09-01 22:00:14.455599',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','gf',NULL,NULL,NULL,'America/Cayenne','French Guiana',NULL),('French Polynesia','2017-09-01 22:00:14.599012','2017-09-01 22:00:14.599012',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','pf',NULL,NULL,NULL,'Pacific/Gambier\nPacific/Marquesas\nPacific/Tahiti','French Polynesia',NULL),('French Southern Territories','2017-09-01 22:00:14.843224','2017-09-01 22:00:14.843224',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','tf',NULL,NULL,NULL,'','French Southern Territories',NULL),('Gabon','2017-09-01 22:00:15.492334','2017-09-01 22:00:15.492334',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','ga',NULL,NULL,NULL,'Africa/Libreville','Gabon',NULL),('Gambia','2017-09-01 22:00:15.119425','2017-09-01 22:00:15.119425',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','gm',NULL,NULL,NULL,'Africa/Banjul','Gambia',NULL),('Georgia','2017-09-01 22:00:15.110133','2017-09-01 22:00:15.110133',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','ge',NULL,NULL,NULL,'Asia/Tbilisi','Georgia',NULL),('Germany','2017-09-01 22:00:15.348384','2017-09-01 22:00:15.348384',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','de',NULL,NULL,NULL,'Europe/Berlin','Germany',NULL),('Ghana','2017-09-01 22:00:14.316233','2017-09-01 22:00:14.316233',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','gh',NULL,NULL,NULL,'Africa/Accra','Ghana',NULL),('Gibraltar','2017-09-01 22:00:14.986762','2017-09-01 22:00:14.986762',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','gi',NULL,NULL,NULL,'Europe/Gibraltar','Gibraltar',NULL),('Greece','2017-09-01 22:00:15.484565','2017-09-01 22:00:15.484565',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','gr',NULL,NULL,NULL,'Europe/Athens','Greece',NULL),('Greenland','2017-09-01 22:00:14.495522','2017-09-01 22:00:14.495522',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','gl',NULL,NULL,NULL,'America/Danmarkshavn\nAmerica/Godthab\nAmerica/Scoresbysund\nAmerica/Thule','Greenland',NULL),('Grenada','2017-09-01 22:00:15.162534','2017-09-01 22:00:15.162534',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','gd',NULL,NULL,NULL,'America/Grenada','Grenada',NULL),('Guadeloupe','2017-09-01 22:00:15.427825','2017-09-01 22:00:15.427825',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','gp',NULL,NULL,NULL,'America/Guadeloupe','Guadeloupe',NULL),('Guam','2017-09-01 22:00:14.520916','2017-09-01 22:00:14.520916',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','gu',NULL,NULL,NULL,'Pacific/Guam','Guam',NULL),('Guatemala','2017-09-01 22:00:14.358192','2017-09-01 22:00:14.358192',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','gt',NULL,NULL,NULL,'America/Guatemala','Guatemala',NULL),('Guernsey','2017-09-01 22:00:15.149035','2017-09-01 22:00:15.149035',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','gg',NULL,NULL,NULL,'Europe/London','Guernsey',NULL),('Guinea','2017-09-01 22:00:14.944065','2017-09-01 22:00:14.944065',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','gn',NULL,NULL,NULL,'Africa/Conakry','Guinea',NULL),('Guinea-Bissau','2017-09-01 22:00:14.265579','2017-09-01 22:00:14.265579',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','gw',NULL,NULL,NULL,'Africa/Bissau','Guinea-Bissau',NULL),('Guyana','2017-09-01 22:00:14.951914','2017-09-01 22:00:14.951914',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','gy',NULL,NULL,NULL,'America/Guyana','Guyana',NULL),('Haiti','2017-09-01 22:00:15.088929','2017-09-01 22:00:15.088929',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','ht',NULL,NULL,NULL,'America/Guatemala\nAmerica/Port-au-Prince','Haiti',NULL),('Heard Island and McDonald Islands','2017-09-01 22:00:15.216366','2017-09-01 22:00:15.216366',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','hm',NULL,NULL,NULL,'','Heard Island and McDonald Islands',NULL),('Holy See (Vatican City State)','2017-09-01 22:00:14.736185','2017-09-01 22:00:14.736185',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','va',NULL,NULL,NULL,'','Holy See (Vatican City State)',NULL),('Honduras','2017-09-01 22:00:15.430755','2017-09-01 22:00:15.430755',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','hn',NULL,NULL,NULL,'America/Tegucigalpa','Honduras',NULL),('Hong Kong','2017-09-01 22:00:15.098775','2017-09-01 22:00:15.098775',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','hk',NULL,NULL,NULL,'Asia/Hong_Kong','Hong Kong',NULL),('Hungary','2017-09-01 22:00:14.910920','2017-09-01 22:00:14.910920',NULL,NULL,0,NULL,NULL,NULL,0,'yyyy-mm-dd','hu',NULL,NULL,NULL,'Europe/Budapest','Hungary',NULL),('Iceland','2017-09-01 22:00:15.316524','2017-09-01 22:00:15.316524',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','is',NULL,NULL,NULL,'Atlantic/Reykjavik','Iceland',NULL),('India','2017-09-01 22:00:14.526851','2017-09-01 22:00:14.526851',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','in',NULL,NULL,NULL,'Asia/Kolkata','India',NULL),('Indonesia','2017-09-01 22:00:15.311858','2017-09-01 22:00:15.311858',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','id',NULL,NULL,NULL,'Asia/Jakarta\nAsia/Jayapura\nAsia/Makassar\nAsia/Pontianak','Indonesia',NULL),('Iran','2017-09-01 22:00:15.030811','2017-09-01 22:00:15.030811',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','ir',NULL,NULL,NULL,'Asia/Tehran','Iran',NULL),('Iraq','2017-09-01 22:00:15.168357','2017-09-01 22:00:15.168357',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','iq',NULL,NULL,NULL,'Asia/Baghdad','Iraq',NULL),('Ireland','2017-09-01 22:00:14.994984','2017-09-01 22:00:14.994984',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','ie',NULL,NULL,NULL,'Europe/Dublin','Ireland',NULL),('Isle of Man','2017-09-01 22:00:14.919195','2017-09-01 22:00:14.919195',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','im',NULL,NULL,NULL,'Europe/London','Isle of Man',NULL),('Israel','2017-09-01 22:00:15.396285','2017-09-01 22:00:15.396285',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','il',NULL,NULL,NULL,'Asia/Jerusalem','Israel',NULL),('Italy','2017-09-01 22:00:15.253906','2017-09-01 22:00:15.253906',NULL,NULL,0,NULL,NULL,NULL,0,'dd/mm/yyyy','it',NULL,NULL,NULL,'Europe/Rome','Italy',NULL),('Ivory Coast','2017-09-01 22:00:14.448495','2017-09-01 22:00:14.448495',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','ci',NULL,NULL,NULL,'','Ivory Coast',NULL),('Jamaica','2017-09-01 22:00:14.416574','2017-09-01 22:00:14.416574',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','jm',NULL,NULL,NULL,'America/Jamaica','Jamaica',NULL),('Japan','2017-09-01 22:00:14.336742','2017-09-01 22:00:14.336742',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','jp',NULL,NULL,NULL,'Asia/Tokyo','Japan',NULL),('Jersey','2017-09-01 22:00:14.480916','2017-09-01 22:00:14.480916',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','je',NULL,NULL,NULL,'Europe/London','Jersey',NULL),('Jordan','2017-09-01 22:00:14.378704','2017-09-01 22:00:14.378704',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','jo',NULL,NULL,NULL,'Asia/Amman','Jordan',NULL),('Kazakhstan','2017-09-01 22:00:15.361308','2017-09-01 22:00:15.361308',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','kz',NULL,NULL,NULL,'Asia/Almaty\nAsia/Aqtau\nAsia/Aqtobe\nAsia/Oral\nAsia/Qyzylorda','Kazakhstan',NULL),('Kenya','2017-09-01 22:00:14.547566','2017-09-01 22:00:14.547566',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','ke',NULL,NULL,NULL,'Africa/Nairobi','Kenya',NULL),('Kiribati','2017-09-01 22:00:15.085874','2017-09-01 22:00:15.085874',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','ki',NULL,NULL,NULL,'Pacific/Enderbury\nPacific/Kiritimati\nPacific/Tarawa','Kiribati',NULL),('Korea, Democratic Peoples Republic of','2017-09-01 22:00:14.607165','2017-09-01 22:00:14.607165',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','kp',NULL,NULL,NULL,'','Korea, Democratic Peoples Republic of',NULL),('Korea, Republic of','2017-09-01 22:00:14.399159','2017-09-01 22:00:14.399159',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','kr',NULL,NULL,NULL,'','Korea, Republic of',NULL),('Kuwait','2017-09-01 22:00:14.367733','2017-09-01 22:00:14.367733',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','kw',NULL,NULL,NULL,'Asia/Kuwait','Kuwait',NULL),('Kyrgyzstan','2017-09-01 22:00:15.381518','2017-09-01 22:00:15.381518',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','kg',NULL,NULL,NULL,'Asia/Bishkek','Kyrgyzstan',NULL),('Lao Peoples Democratic Republic','2017-09-01 22:00:14.560372','2017-09-01 22:00:14.560372',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','la',NULL,NULL,NULL,'','Lao Peoples Democratic Republic',NULL),('Latvia','2017-09-01 22:00:15.411680','2017-09-01 22:00:15.411680',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','lv',NULL,NULL,NULL,'Europe/Riga','Latvia',NULL),('Lebanon','2017-09-01 22:00:15.192020','2017-09-01 22:00:15.192020',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','lb',NULL,NULL,NULL,'Asia/Beirut','Lebanon',NULL),('Lesotho','2017-09-01 22:00:14.538743','2017-09-01 22:00:14.538743',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','ls',NULL,NULL,NULL,'Africa/Maseru','Lesotho',NULL),('Liberia','2017-09-01 22:00:14.393384','2017-09-01 22:00:14.393384',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','lr',NULL,NULL,NULL,'Africa/Monrovia','Liberia',NULL),('Libya','2017-09-01 22:00:14.775739','2017-09-01 22:00:14.775739',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','ly',NULL,NULL,NULL,'Africa/Tripoli','Libya',NULL),('Liechtenstein','2017-09-01 22:00:14.803269','2017-09-01 22:00:14.803269',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','li',NULL,NULL,NULL,'Europe/Vaduz','Liechtenstein',NULL),('Lithuania','2017-09-01 22:00:14.268709','2017-09-01 22:00:14.268709',NULL,NULL,0,NULL,NULL,NULL,0,'yyyy-mm-dd','lt',NULL,NULL,NULL,'Europe/Vilnius','Lithuania',NULL),('Luxembourg','2017-09-01 22:00:14.965086','2017-09-01 22:00:14.965086',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','lu',NULL,NULL,NULL,'Europe/Luxembourg','Luxembourg',NULL),('Macao','2017-09-01 22:00:14.553520','2017-09-01 22:00:14.553520',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','mo',NULL,NULL,NULL,'','Macao',NULL),('Macedonia','2017-09-01 22:00:15.400657','2017-09-01 22:00:15.400657',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','mk',NULL,NULL,NULL,'','Macedonia',NULL),('Madagascar','2017-09-01 22:00:15.251309','2017-09-01 22:00:15.251309',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','mg',NULL,NULL,NULL,'Indian/Antananarivo','Madagascar',NULL),('Malawi','2017-09-01 22:00:14.669140','2017-09-01 22:00:14.669140',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','mw',NULL,NULL,NULL,'Africa/Blantyre','Malawi',NULL),('Malaysia','2017-09-01 22:00:14.881825','2017-09-01 22:00:14.881825',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','my',NULL,NULL,NULL,'Asia/Kuala_Lumpur\nAsia/Kuching','Malaysia',NULL),('Maldives','2017-09-01 22:00:15.288632','2017-09-01 22:00:15.288632',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','mv',NULL,NULL,NULL,'Indian/Maldives','Maldives',NULL),('Mali','2017-09-01 22:00:14.810989','2017-09-01 22:00:14.810989',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','ml',NULL,NULL,NULL,'Africa/Bamako','Mali',NULL),('Malta','2017-09-01 22:00:15.281116','2017-09-01 22:00:15.281116',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','mt',NULL,NULL,NULL,'Europe/Malta','Malta',NULL),('Marshall Islands','2017-09-01 22:00:15.066942','2017-09-01 22:00:15.066942',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','mh',NULL,NULL,NULL,'Pacific/Kwajalein\nPacific/Majuro','Marshall Islands',NULL),('Martinique','2017-09-01 22:00:14.445580','2017-09-01 22:00:14.445580',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','mq',NULL,NULL,NULL,'America/Martinique','Martinique',NULL),('Mauritania','2017-09-01 22:00:14.576935','2017-09-01 22:00:14.576935',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','mr',NULL,NULL,NULL,'Africa/Nouakchott','Mauritania',NULL),('Mauritius','2017-09-01 22:00:14.795350','2017-09-01 22:00:14.795350',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','mu',NULL,NULL,NULL,'Indian/Mauritius','Mauritius',NULL),('Mayotte','2017-09-01 22:00:14.732921','2017-09-01 22:00:14.732921',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','yt',NULL,NULL,NULL,'Indian/Mayotte','Mayotte',NULL),('Mexico','2017-09-01 22:00:15.113021','2017-09-01 22:00:15.113021',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','mx',NULL,NULL,NULL,'America/Bahia_Banderas\nAmerica/Cancun\nAmerica/Chihuahua\nAmerica/Hermosillo\nAmerica/Matamoros\nAmerica/Mazatlan\nAmerica/Merida\nAmerica/Mexico_City\nAmerica/Monterrey\nAmerica/Ojinaga\nAmerica/Santa_Isabel\nAmerica/Tijuana','Mexico',NULL),('Micronesia, Federated States of','2017-09-01 22:00:14.406850','2017-09-01 22:00:14.406850',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','fm',NULL,NULL,NULL,'','Micronesia, Federated States of',NULL),('Moldova, Republic of','2017-09-01 22:00:15.371419','2017-09-01 22:00:15.371419',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','md',NULL,NULL,NULL,'','Moldova, Republic of',NULL),('Monaco','2017-09-01 22:00:14.461941','2017-09-01 22:00:14.461941',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','mc',NULL,NULL,NULL,'Europe/Monaco','Monaco',NULL),('Mongolia','2017-09-01 22:00:15.144124','2017-09-01 22:00:15.144124',NULL,NULL,0,NULL,NULL,NULL,0,'yyyy-mm-dd','mn',NULL,NULL,NULL,'Asia/Choibalsan\nAsia/Hovd\nAsia/Ulaanbaatar','Mongolia',NULL),('Montenegro','2017-09-01 22:00:14.720672','2017-09-01 22:00:14.720672',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','me',NULL,NULL,NULL,'Europe/Belgrade','Montenegro',NULL),('Montserrat','2017-09-01 22:00:15.393943','2017-09-01 22:00:15.393943',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','ms',NULL,NULL,NULL,'America/Montserrat','Montserrat',NULL),('Morocco','2017-09-01 22:00:15.130342','2017-09-01 22:00:15.130342',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','ma',NULL,NULL,NULL,'Africa/Casablanca','Morocco',NULL),('Mozambique','2017-09-01 22:00:14.900971','2017-09-01 22:00:14.900971',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','mz',NULL,NULL,NULL,'Africa/Maputo','Mozambique',NULL),('Myanmar','2017-09-01 22:00:15.435720','2017-09-01 22:00:15.435720',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','mm',NULL,NULL,NULL,'Asia/Rangoon','Myanmar',NULL),('Namibia','2017-09-01 22:00:15.156972','2017-09-01 22:00:15.156972',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','na',NULL,NULL,NULL,'Africa/Windhoek','Namibia',NULL),('Nauru','2017-09-01 22:00:14.643893','2017-09-01 22:00:14.643893',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','nr',NULL,NULL,NULL,'Pacific/Nauru','Nauru',NULL),('Nepal','2017-09-01 22:00:15.273089','2017-09-01 22:00:15.273089',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','np',NULL,NULL,NULL,'Asia/Kathmandu','Nepal',NULL),('Netherlands','2017-09-01 22:00:14.935692','2017-09-01 22:00:14.935692',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','nl',NULL,NULL,NULL,'Europe/Amsterdam','Netherlands',NULL),('New Caledonia','2017-09-01 22:00:14.792517','2017-09-01 22:00:14.792517',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','nc',NULL,NULL,NULL,'Pacific/Noumea','New Caledonia',NULL),('New Zealand','2017-09-01 22:00:14.470220','2017-09-01 22:00:14.470220',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','nz',NULL,NULL,NULL,'Pacific/Auckland\nPacific/Chatham','New Zealand',NULL),('Nicaragua','2017-09-01 22:00:15.450914','2017-09-01 22:00:15.450914',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','ni',NULL,NULL,NULL,'America/Managua','Nicaragua',NULL),('Niger','2017-09-01 22:00:14.916674','2017-09-01 22:00:14.916674',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','ne',NULL,NULL,NULL,'Africa/Niamey','Niger',NULL),('Nigeria','2017-09-01 22:00:15.011559','2017-09-01 22:00:15.011559',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','ng',NULL,NULL,NULL,'Africa/Lagos','Nigeria',NULL),('Niue','2017-09-01 22:00:14.458348','2017-09-01 22:00:14.458348',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','nu',NULL,NULL,NULL,'Pacific/Niue','Niue',NULL),('Norfolk Island','2017-09-01 22:00:14.505530','2017-09-01 22:00:14.505530',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','nf',NULL,NULL,NULL,'Pacific/Norfolk','Norfolk Island',NULL),('Northern Mariana Islands','2017-09-01 22:00:15.296064','2017-09-01 22:00:15.296064',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','mp',NULL,NULL,NULL,'Pacific/Saipan','Northern Mariana Islands',NULL),('Norway','2017-09-01 22:00:14.654476','2017-09-01 22:00:14.654476',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','no',NULL,NULL,NULL,'Europe/Oslo','Norway',NULL),('Oman','2017-09-01 22:00:14.426038','2017-09-01 22:00:14.426038',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','om',NULL,NULL,NULL,'Asia/Muscat','Oman',NULL),('Pakistan','2017-09-01 22:00:14.999777','2017-09-01 22:00:14.999777',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','pk',NULL,NULL,NULL,'Asia/Karachi','Pakistan',NULL),('Palau','2017-09-01 22:00:15.006084','2017-09-01 22:00:15.006084',NULL,NULL,0,NULL,NULL,NULL,0,'mm-dd-yyyy','pw',NULL,NULL,NULL,'Pacific/Palau','Palau',NULL),('Palestinian Territory, Occupied','2017-09-01 22:00:15.494674','2017-09-01 22:00:15.494674',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','ps',NULL,NULL,NULL,'','Palestinian Territory, Occupied',NULL),('Panama','2017-09-01 22:00:14.949243','2017-09-01 22:00:14.949243',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','pa',NULL,NULL,NULL,'America/Panama','Panama',NULL),('Papua New Guinea','2017-09-01 22:00:15.330449','2017-09-01 22:00:15.330449',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','pg',NULL,NULL,NULL,'Pacific/Port_Moresby','Papua New Guinea',NULL),('Paraguay','2017-09-01 22:00:15.487883','2017-09-01 22:00:15.487883',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','py',NULL,NULL,NULL,'America/Asuncion','Paraguay',NULL),('Peru','2017-09-01 22:00:14.628028','2017-09-01 22:00:14.628028',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','pe',NULL,NULL,NULL,'America/Lima','Peru',NULL),('Philippines','2017-09-01 22:00:15.125350','2017-09-01 22:00:15.125350',NULL,NULL,0,NULL,NULL,NULL,0,'mm-dd-yyyy','ph',NULL,NULL,NULL,'Asia/Manila','Philippines',NULL),('Pitcairn','2017-09-01 22:00:14.354520','2017-09-01 22:00:14.354520',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','pn',NULL,NULL,NULL,'Pacific/Pitcairn','Pitcairn',NULL),('Poland','2017-09-01 22:00:15.366179','2017-09-01 22:00:15.366179',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','pl',NULL,NULL,NULL,'Europe/Warsaw','Poland',NULL),('Portugal','2017-09-01 22:00:15.173393','2017-09-01 22:00:15.173393',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','pt',NULL,NULL,NULL,'Atlantic/Azores\nAtlantic/Madeira\nEurope/Lisbon','Portugal',NULL),('Puerto Rico','2017-09-01 22:00:15.078963','2017-09-01 22:00:15.078963',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','pr',NULL,NULL,NULL,'America/Puerto_Rico','Puerto Rico',NULL),('Qatar','2017-09-01 22:00:14.875642','2017-09-01 22:00:14.875642',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','qa',NULL,NULL,NULL,'Asia/Qatar','Qatar',NULL),('Réunion','2017-09-01 22:00:15.308286','2017-09-01 22:00:15.308286',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','re',NULL,NULL,NULL,'','Réunion',NULL),('Romania','2017-09-01 22:00:14.830275','2017-09-01 22:00:14.830275',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','ro',NULL,NULL,NULL,'Europe/Bucharest','Romania',NULL),('Russian Federation','2017-09-01 22:00:14.372984','2017-09-01 22:00:14.372984',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','ru',NULL,NULL,NULL,'','Russian Federation',NULL),('Rwanda','2017-09-01 22:00:14.328998','2017-09-01 22:00:14.328998',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','rw',NULL,NULL,NULL,'Africa/Kigali','Rwanda',NULL),('Saint Barthélemy','2017-09-01 22:00:15.388323','2017-09-01 22:00:15.388323',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','bl',NULL,NULL,NULL,'','Saint Barthélemy',NULL),('Saint Helena, Ascension and Tristan da Cunha','2017-09-01 22:00:14.278917','2017-09-01 22:00:14.278917',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','sh',NULL,NULL,NULL,'','Saint Helena, Ascension and Tristan da Cunha',NULL),('Saint Kitts and Nevis','2017-09-01 22:00:15.336564','2017-09-01 22:00:15.336564',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','kn',NULL,NULL,NULL,'America/St_Kitts','Saint Kitts and Nevis',NULL),('Saint Lucia','2017-09-01 22:00:14.591725','2017-09-01 22:00:14.591725',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','lc',NULL,NULL,NULL,'America/St_Lucia','Saint Lucia',NULL),('Saint Martin (French part)','2017-09-01 22:00:14.297994','2017-09-01 22:00:14.297994',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','mf',NULL,NULL,NULL,'','Saint Martin (French part)',NULL),('Saint Pierre and Miquelon','2017-09-01 22:00:15.063346','2017-09-01 22:00:15.063346',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','pm',NULL,NULL,NULL,'','Saint Pierre and Miquelon',NULL),('Saint Vincent and the Grenadines','2017-09-01 22:00:14.543987','2017-09-01 22:00:14.543987',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','vc',NULL,NULL,NULL,'America/St_Vincent','Saint Vincent and the Grenadines',NULL),('Samoa','2017-09-01 22:00:14.499458','2017-09-01 22:00:14.499458',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','ws',NULL,NULL,NULL,'Pacific/Apia','Samoa',NULL),('San Marino','2017-09-01 22:00:14.594694','2017-09-01 22:00:14.594694',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','sm',NULL,NULL,NULL,'Europe/Rome','San Marino',NULL),('Sao Tome and Principe','2017-09-01 22:00:14.247782','2017-09-01 22:00:14.247782',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','st',NULL,NULL,NULL,'','Sao Tome and Principe',NULL),('Saudi Arabia','2017-09-01 22:00:14.321562','2017-09-01 22:00:14.321562',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','sa',NULL,NULL,NULL,'Asia/Riyadh','Saudi Arabia',NULL),('Senegal','2017-09-01 22:00:15.327375','2017-09-01 22:00:15.327375',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','sn',NULL,NULL,NULL,'Africa/Dakar','Senegal',NULL),('Serbia','2017-09-01 22:00:15.460219','2017-09-01 22:00:15.460219',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','rs',NULL,NULL,NULL,'Europe/Belgrade','Serbia',NULL),('Seychelles','2017-09-01 22:00:14.646912','2017-09-01 22:00:14.646912',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','sc',NULL,NULL,NULL,'Indian/Mahe','Seychelles',NULL),('Sierra Leone','2017-09-01 22:00:15.103989','2017-09-01 22:00:15.103989',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','sl',NULL,NULL,NULL,'Africa/Freetown','Sierra Leone',NULL),('Singapore','2017-09-01 22:00:15.455625','2017-09-01 22:00:15.455625',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','sg',NULL,NULL,NULL,'Asia/Singapore','Singapore',NULL),('Sint Maarten (Dutch part)','2017-09-01 22:00:15.482311','2017-09-01 22:00:15.482311',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','sx',NULL,NULL,NULL,'','Sint Maarten (Dutch part)',NULL),('Slovakia','2017-09-01 22:00:14.618770','2017-09-01 22:00:14.618770',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','sk',NULL,NULL,NULL,'Europe/Bratislava','Slovakia',NULL),('Slovenia','2017-09-01 22:00:15.046939','2017-09-01 22:00:15.046939',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','si',NULL,NULL,NULL,'Europe/Belgrade','Slovenia',NULL),('Solomon Islands','2017-09-01 22:00:14.582060','2017-09-01 22:00:14.582060',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','sb',NULL,NULL,NULL,'Pacific/Guadalcanal','Solomon Islands',NULL),('Somalia','2017-09-01 22:00:14.622607','2017-09-01 22:00:14.622607',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','so',NULL,NULL,NULL,'Africa/Mogadishu','Somalia',NULL),('South Africa','2017-09-01 22:00:14.848406','2017-09-01 22:00:14.848406',NULL,NULL,0,NULL,NULL,NULL,0,'yyyy-mm-dd','za',NULL,NULL,NULL,'Africa/Johannesburg','South Africa',NULL),('South Georgia and the South Sandwich Islands','2017-09-01 22:00:14.864027','2017-09-01 22:00:14.864027',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','gs',NULL,NULL,NULL,'','South Georgia and the South Sandwich Islands',NULL),('South Sudan','2017-09-01 22:00:15.417168','2017-09-01 22:00:15.417168',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','ss',NULL,NULL,NULL,'Africa/Juba','South Sudan',NULL),('Spain','2017-09-01 22:00:15.222239','2017-09-01 22:00:15.222239',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','es',NULL,NULL,NULL,'Africa/Ceuta\nAtlantic/Canary\nEurope/Madrid','Spain',NULL),('Sri Lanka','2017-09-01 22:00:15.405700','2017-09-01 22:00:15.405700',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','lk',NULL,NULL,NULL,'Asia/Colombo','Sri Lanka',NULL),('Sudan','2017-09-01 22:00:15.262305','2017-09-01 22:00:15.262305',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','sd',NULL,NULL,NULL,'Africa/Khartoum','Sudan',NULL),('Suriname','2017-09-01 22:00:15.299694','2017-09-01 22:00:15.299694',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','sr',NULL,NULL,NULL,'America/Paramaribo','Suriname',NULL),('Svalbard and Jan Mayen','2017-09-01 22:00:15.197470','2017-09-01 22:00:15.197470',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','sj',NULL,NULL,NULL,'','Svalbard and Jan Mayen',NULL),('Swaziland','2017-09-01 22:00:14.636862','2017-09-01 22:00:14.636862',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','sz',NULL,NULL,NULL,'Africa/Mbabane','Swaziland',NULL),('Sweden','2017-09-01 22:00:14.814166','2017-09-01 22:00:14.814166',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','se',NULL,NULL,NULL,'Europe/Stockholm','Sweden',NULL),('Switzerland','2017-09-01 22:00:14.283823','2017-09-01 22:00:14.283823',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','ch',NULL,NULL,NULL,'Europe/Zurich','Switzerland',NULL),('Syria','2017-09-01 22:00:15.422658','2017-09-01 22:00:15.422658',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','sy',NULL,NULL,NULL,'','Syria',NULL),('Taiwan','2017-09-01 22:00:15.236966','2017-09-01 22:00:15.236966',NULL,NULL,0,NULL,NULL,NULL,0,'yyyy-mm-dd','tw',NULL,NULL,NULL,'','Taiwan',NULL),('Tajikistan','2017-09-01 22:00:14.800557','2017-09-01 22:00:14.800557',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','tj',NULL,NULL,NULL,'Asia/Dushanbe','Tajikistan',NULL),('Tanzania','2017-09-01 22:00:14.436470','2017-09-01 22:00:14.436470',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','tz',NULL,NULL,NULL,'','Tanzania',NULL),('Thailand','2017-09-01 22:00:15.151310','2017-09-01 22:00:15.151310',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','th',NULL,NULL,NULL,'Asia/Bangkok','Thailand',NULL),('Timor-Leste','2017-09-01 22:00:14.749559','2017-09-01 22:00:14.749559',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','tl',NULL,NULL,NULL,'','Timor-Leste',NULL),('Togo','2017-09-01 22:00:14.334479','2017-09-01 22:00:14.334479',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','tg',NULL,NULL,NULL,'Africa/Lome','Togo',NULL),('Tokelau','2017-09-01 22:00:14.854440','2017-09-01 22:00:14.854440',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','tk',NULL,NULL,NULL,'Pacific/Fakaofo','Tokelau',NULL),('Tonga','2017-09-01 22:00:14.766380','2017-09-01 22:00:14.766380',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','to',NULL,NULL,NULL,'Pacific/Tongatapu','Tonga',NULL),('Trinidad and Tobago','2017-09-01 22:00:15.339335','2017-09-01 22:00:15.339335',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','tt',NULL,NULL,NULL,'America/Port_of_Spain','Trinidad and Tobago',NULL),('Tunisia','2017-09-01 22:00:15.204238','2017-09-01 22:00:15.204238',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','tn',NULL,NULL,NULL,'Africa/Tunis','Tunisia',NULL),('Turkey','2017-09-01 22:00:14.928973','2017-09-01 22:00:14.928973',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','tr',NULL,NULL,NULL,'Europe/Istanbul','Turkey',NULL),('Turkmenistan','2017-09-01 22:00:14.311525','2017-09-01 22:00:14.311525',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','tm',NULL,NULL,NULL,'Asia/Ashgabat','Turkmenistan',NULL),('Turks and Caicos Islands','2017-09-01 22:00:14.588590','2017-09-01 22:00:14.588590',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','tc',NULL,NULL,NULL,'','Turks and Caicos Islands',NULL),('Tuvalu','2017-09-01 22:00:15.059250','2017-09-01 22:00:15.059250',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','tv',NULL,NULL,NULL,'Pacific/Funafuti','Tuvalu',NULL),('Uganda','2017-09-01 22:00:14.904337','2017-09-01 22:00:14.904337',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','ug',NULL,NULL,NULL,'Africa/Kampala','Uganda',NULL),('Ukraine','2017-09-01 22:00:14.756517','2017-09-01 22:00:14.756517',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','ua',NULL,NULL,NULL,'Europe/Kiev\nEurope/Simferopol\nEurope/Uzhgorod\nEurope/Zaporozhye','Ukraine',NULL),('United Arab Emirates','2017-09-01 22:00:14.513008','2017-09-01 22:00:14.513008',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','ae',NULL,NULL,NULL,'Asia/Dubai','United Arab Emirates',NULL),('United Kingdom','2017-09-01 22:00:15.471311','2017-09-01 22:00:15.471311',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','gb',NULL,NULL,NULL,'Europe/London','United Kingdom',NULL),('United States','2017-09-01 22:00:14.824166','2017-09-01 22:00:14.824166',NULL,NULL,0,NULL,NULL,NULL,0,'mm-dd-yyyy','us',NULL,NULL,NULL,'America/Adak\nAmerica/Anchorage\nAmerica/Boise\nAmerica/Chicago\nAmerica/Denver\nAmerica/Detroit\nAmerica/Indiana/Indianapolis\nAmerica/Indiana/Knox\nAmerica/Indiana/Marengo\nAmerica/Indiana/Petersburg\nAmerica/Indiana/Tell_City\nAmerica/Indiana/Vevay\nAmerica/Indiana/Vincennes\nAmerica/Indiana/Winamac\nAmerica/Juneau\nAmerica/Kentucky/Louisville\nAmerica/Kentucky/Monticello\nAmerica/Los_Angeles\nAmerica/Menominee\nAmerica/Metlakatla\nAmerica/New_York\nAmerica/Nome\nAmerica/North_Dakota/Beulah\nAmerica/North_Dakota/Center\nAmerica/North_Dakota/New_Salem\nAmerica/Phoenix\nAmerica/Denver\nAmerica/Sitka\nAmerica/Yakutat\nPacific/Honolulu','United States',NULL),('United States Minor Outlying Islands','2017-09-01 22:00:14.347486','2017-09-01 22:00:14.347486',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','um',NULL,NULL,NULL,'','United States Minor Outlying Islands',NULL),('Uruguay','2017-09-01 22:00:15.182446','2017-09-01 22:00:15.182446',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','uy',NULL,NULL,NULL,'America/Montevideo','Uruguay',NULL),('Uzbekistan','2017-09-01 22:00:15.200030','2017-09-01 22:00:15.200030',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','uz',NULL,NULL,NULL,'Asia/Samarkand\nAsia/Tashkent','Uzbekistan',NULL),('Vanuatu','2017-09-01 22:00:15.351240','2017-09-01 22:00:15.351240',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','vu',NULL,NULL,NULL,'Pacific/Efate','Vanuatu',NULL),('Venezuela, Bolivarian Republic of','2017-09-01 22:00:14.259924','2017-09-01 22:00:14.259924',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','ve',NULL,NULL,NULL,'','Venezuela, Bolivarian Republic of',NULL),('Vietnam','2017-09-01 22:00:14.893938','2017-09-01 22:00:14.893938',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','vn',NULL,NULL,NULL,'','Vietnam',NULL),('Virgin Islands, British','2017-09-01 22:00:14.387690','2017-09-01 22:00:14.387690',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','vg',NULL,NULL,NULL,'','Virgin Islands, British',NULL),('Virgin Islands, U.S.','2017-09-01 22:00:14.477291','2017-09-01 22:00:14.477291',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','vi',NULL,NULL,NULL,'','Virgin Islands, U.S.',NULL),('Wallis and Futuna','2017-09-01 22:00:14.467302','2017-09-01 22:00:14.467302',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','wf',NULL,NULL,NULL,'','Wallis and Futuna',NULL),('Western Sahara','2017-09-01 22:00:14.700292','2017-09-01 22:00:14.700292',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','eh',NULL,NULL,NULL,'Africa/El_Aaiun','Western Sahara',NULL),('Yemen','2017-09-01 22:00:14.489934','2017-09-01 22:00:14.489934',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','ye',NULL,NULL,NULL,'Asia/Aden','Yemen',NULL),('Zambia','2017-09-01 22:00:15.321425','2017-09-01 22:00:15.321425',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','zm',NULL,NULL,NULL,'Africa/Lusaka','Zambia',NULL),('Zimbabwe','2017-09-01 22:00:15.344230','2017-09-01 22:00:15.344230',NULL,NULL,0,NULL,NULL,NULL,0,'dd-mm-yyyy','zw',NULL,NULL,NULL,'Africa/Harare','Zimbabwe',NULL);
/*!40000 ALTER TABLE `tabCountry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabCurrency`
--

DROP TABLE IF EXISTS `tabCurrency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabCurrency` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT '0',
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT '0',
  `currency_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_liked_by` text COLLATE utf8mb4_unicode_ci,
  `_comments` text COLLATE utf8mb4_unicode_ci,
  `symbol` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_assign` text COLLATE utf8mb4_unicode_ci,
  `enabled` int(1) NOT NULL DEFAULT '0',
  `smallest_currency_fraction_value` decimal(18,6) NOT NULL DEFAULT '0.000000',
  `fraction_units` int(11) NOT NULL DEFAULT '0',
  `fraction` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_user_tags` text COLLATE utf8mb4_unicode_ci,
  `number_format` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabCurrency`
--

LOCK TABLES `tabCurrency` WRITE;
/*!40000 ALTER TABLE `tabCurrency` DISABLE KEYS */;
INSERT INTO `tabCurrency` VALUES ('AED','2017-09-01 22:00:14.516634','2017-09-01 22:00:15.505161','Administrator',NULL,0,NULL,NULL,NULL,0,'AED',NULL,NULL,'د.إ',NULL,1,0.000000,100,'Fils',NULL,'#,###.##'),('AFN','2017-09-01 22:00:14.568172','2017-09-01 22:00:14.568172',NULL,NULL,0,NULL,NULL,NULL,0,'AFN',NULL,NULL,'؋',NULL,0,0.000000,100,'Pul',NULL,'#,###.##'),('ALL','2017-09-01 22:00:14.452980','2017-09-01 22:00:14.452980',NULL,NULL,0,NULL,NULL,NULL,0,'ALL',NULL,NULL,'L',NULL,0,0.000000,100,'Qindarkë',NULL,'#,###.##'),('AMD','2017-09-01 22:00:14.747046','2017-09-01 22:00:14.747046',NULL,NULL,0,NULL,NULL,NULL,0,'AMD',NULL,NULL,'֏',NULL,0,0.000000,100,'Luma',NULL,'#,###.##'),('ARS','2017-09-01 22:00:14.302444','2017-09-01 22:00:14.302444',NULL,NULL,0,NULL,NULL,NULL,0,'ARS',NULL,NULL,'$',NULL,0,0.000000,100,'Centavo',NULL,'#.###,##'),('AUD','2017-09-01 22:00:14.807686','2017-09-01 22:00:15.506185','Administrator',NULL,0,NULL,NULL,NULL,0,'AUD',NULL,NULL,'$',NULL,1,0.000000,100,'Cent',NULL,'# ###.##'),('AWG','2017-09-01 22:00:14.295311','2017-09-01 22:00:14.295311',NULL,NULL,0,NULL,NULL,NULL,0,'AWG',NULL,NULL,'Afl',NULL,0,0.000000,100,'Cent',NULL,'#,###.##'),('BAM','2017-09-01 22:00:14.364760','2017-09-01 22:00:14.364760',NULL,NULL,0,NULL,NULL,NULL,0,'BAM',NULL,NULL,'KM',NULL,0,0.000000,100,'Fening',NULL,'#.###,##'),('BBD','2017-09-01 22:00:15.249053','2017-09-01 22:00:15.249053',NULL,NULL,0,NULL,NULL,NULL,0,'BBD',NULL,NULL,'$',NULL,0,0.000000,100,'Cent',NULL,'#,###.##'),('BDT','2017-09-01 22:00:14.573362','2017-09-01 22:00:14.573362',NULL,NULL,0,NULL,NULL,NULL,0,'BDT',NULL,NULL,'৳',NULL,0,0.000000,100,'Paisa',NULL,'#,###.##'),('BHD','2017-09-01 22:00:14.763639','2017-09-01 22:00:14.763639',NULL,NULL,0,NULL,NULL,NULL,0,'BHD',NULL,NULL,'.د.ب',NULL,0,0.000000,1000,'Fils',NULL,'#,###.###'),('BIF','2017-09-01 22:00:15.234150','2017-09-01 22:00:15.234150',NULL,NULL,0,NULL,NULL,NULL,0,'BIF',NULL,NULL,'Fr',NULL,0,0.000000,100,'Centime',NULL,'#,###.##'),('BMD','2017-09-01 22:00:14.615601','2017-09-01 22:00:14.615601',NULL,NULL,0,NULL,NULL,NULL,0,'BMD',NULL,NULL,'$',NULL,0,0.000000,100,'Cent',NULL,'#,###.##'),('BND','2017-09-01 22:00:14.870769','2017-09-01 22:00:14.870769',NULL,NULL,0,NULL,NULL,NULL,0,'BND',NULL,NULL,NULL,NULL,0,0.000000,0,NULL,NULL,'#,###.##'),('BOB','2017-09-01 22:00:15.268892','2017-09-01 22:00:15.268892',NULL,NULL,0,NULL,NULL,NULL,0,'BOB',NULL,NULL,NULL,NULL,0,0.000000,0,NULL,NULL,'#,###.##'),('BRL','2017-09-01 22:00:14.925697','2017-09-01 22:00:14.925697',NULL,NULL,0,NULL,NULL,NULL,0,'BRL',NULL,NULL,'R$',NULL,0,0.000000,100,'Centavo',NULL,'#.###,##'),('BSD','2017-09-01 22:00:14.981871','2017-09-01 22:00:14.981871',NULL,NULL,0,NULL,NULL,NULL,0,'BSD',NULL,NULL,NULL,NULL,0,0.000000,0,NULL,NULL,'#,###.##'),('BTN','2017-09-01 22:00:15.258946','2017-09-01 22:00:15.258946',NULL,NULL,0,NULL,NULL,NULL,0,'BTN',NULL,NULL,'Nu.',NULL,0,0.000000,100,'Chetrum',NULL,'#,###.##'),('BWP','2017-09-01 22:00:15.468624','2017-09-01 22:00:15.468624',NULL,NULL,0,NULL,NULL,NULL,0,'BWP',NULL,NULL,'P',NULL,0,0.000000,100,'Thebe',NULL,'#,###.##'),('BZD','2017-09-01 22:00:15.096485','2017-09-01 22:00:15.096485',NULL,NULL,0,NULL,NULL,NULL,0,'BZD',NULL,NULL,'$',NULL,0,0.000000,100,'Cent',NULL,'#,###.##'),('CAD','2017-09-01 22:00:14.244971','2017-09-01 22:00:14.244971',NULL,NULL,0,NULL,NULL,NULL,0,'CAD',NULL,NULL,'$',NULL,0,0.000000,100,'Cent',NULL,'#,###.##'),('CHF','2017-09-01 22:00:14.285820','2017-09-01 22:00:15.510941','Administrator',NULL,0,NULL,NULL,NULL,0,'CHF',NULL,NULL,'Fr',NULL,1,0.050000,100,'Rappen[K]',NULL,'#\'###.##'),('CLP','2017-09-01 22:00:15.074535','2017-09-01 22:00:15.074535',NULL,NULL,0,NULL,NULL,NULL,0,'CLP',NULL,NULL,'$',NULL,0,0.000000,100,'Centavo',NULL,'#.###'),('CNY','2017-09-01 22:00:14.742356','2017-09-01 22:00:15.509723','Administrator',NULL,0,NULL,NULL,NULL,0,'CNY',NULL,NULL,NULL,NULL,1,0.000000,0,NULL,NULL,'#,###.##'),('COP','2017-09-01 22:00:15.229012','2017-09-01 22:00:15.229012',NULL,NULL,0,NULL,NULL,NULL,0,'COP',NULL,NULL,'$',NULL,0,0.000000,100,'Centavo',NULL,'#.###,##'),('CRC','2017-09-01 22:00:14.960699','2017-09-01 22:00:14.960699',NULL,NULL,0,NULL,NULL,NULL,0,'CRC',NULL,NULL,'₡',NULL,0,0.000000,100,'Céntimo',NULL,'#.###,##'),('CUP','2017-09-01 22:00:14.717241','2017-09-01 22:00:14.717241',NULL,NULL,0,NULL,NULL,NULL,0,'CUP',NULL,NULL,'$',NULL,0,0.000000,100,'Centavo',NULL,'#,###.##'),('CVE','2017-09-01 22:00:14.974382','2017-09-01 22:00:14.974382',NULL,NULL,0,NULL,NULL,NULL,0,'CVE',NULL,NULL,'Esc or $',NULL,0,0.000000,100,'Centavo',NULL,'#,###.##'),('CYP','2017-09-01 22:00:14.860639','2017-09-01 22:00:14.860639',NULL,NULL,0,NULL,NULL,NULL,0,'CYP',NULL,NULL,'€',NULL,0,0.000000,100,'Cent',NULL,'#.###,##'),('CZK','2017-09-01 22:00:15.024503','2017-09-01 22:00:15.024503',NULL,NULL,0,NULL,NULL,NULL,0,'CZK',NULL,NULL,'Kč',NULL,0,0.000000,100,'Haléř',NULL,'#.###,##'),('DJF','2017-09-01 22:00:15.213404','2017-09-01 22:00:15.213404',NULL,NULL,0,NULL,NULL,NULL,0,'DJF',NULL,NULL,'Fr',NULL,0,0.000000,100,'Centime',NULL,'#,###.##'),('DKK','2017-09-01 22:00:15.358511','2017-09-01 22:00:15.358511',NULL,NULL,0,NULL,NULL,NULL,0,'DKK',NULL,NULL,'kr',NULL,0,0.000000,100,'Øre',NULL,'#.###,##'),('DOP','2017-09-01 22:00:14.753745','2017-09-01 22:00:14.753745',NULL,NULL,0,NULL,NULL,NULL,0,'DOP',NULL,NULL,'$',NULL,0,0.000000,100,'Centavo',NULL,'#,###.##'),('DZD','2017-09-01 22:00:15.043048','2017-09-01 22:00:15.043048',NULL,NULL,0,NULL,NULL,NULL,0,'DZD',NULL,NULL,'د.ج',NULL,0,0.000000,100,'Santeem',NULL,'#,###.##'),('EEK','2017-09-01 22:00:15.179421','2017-09-01 22:00:15.179421',NULL,NULL,0,NULL,NULL,NULL,0,'EEK',NULL,NULL,'€',NULL,0,0.000000,100,'Cent',NULL,'#,###.##'),('EGP','2017-09-01 22:00:15.448407','2017-09-01 22:00:15.448407',NULL,NULL,0,NULL,NULL,NULL,0,'EGP',NULL,NULL,'£ or ج.م',NULL,0,0.000000,100,'Piastre[F]',NULL,'#,###.##'),('ERN','2017-09-01 22:00:15.378685','2017-09-01 22:00:15.378685',NULL,NULL,0,NULL,NULL,NULL,0,'ERN',NULL,NULL,'Nfk',NULL,0,0.000000,100,'Cent',NULL,'#,###.##'),('EUR','2017-09-01 22:00:14.464463','2017-09-01 22:00:15.504378','Administrator',NULL,0,NULL,NULL,NULL,0,'EUR',NULL,NULL,'€',NULL,1,0.000000,100,'Cent',NULL,'#,###.##'),('FJD','2017-09-01 22:00:15.245026','2017-09-01 22:00:15.245026',NULL,NULL,0,NULL,NULL,NULL,0,'FJD',NULL,NULL,'$',NULL,0,0.000000,100,'Cent',NULL,'#,###.##'),('FKP','2017-09-01 22:00:14.729587','2017-09-01 22:00:14.729587',NULL,NULL,0,NULL,NULL,NULL,0,'FKP',NULL,NULL,NULL,NULL,0,0.000000,0,NULL,NULL,'#,###.##'),('GBP','2017-09-01 22:00:15.474326','2017-09-01 22:00:15.503558','Administrator',NULL,0,NULL,NULL,NULL,0,'GBP',NULL,NULL,'£',NULL,1,0.000000,100,'Penny',NULL,'#,###.##'),('GHS','2017-09-01 22:00:14.318253','2017-09-01 22:00:14.318253',NULL,NULL,0,NULL,NULL,NULL,0,'GHS',NULL,NULL,'₵',NULL,0,0.000000,100,'Pesewa',NULL,'#,###.##'),('GIP','2017-09-01 22:00:14.990474','2017-09-01 22:00:14.990474',NULL,NULL,0,NULL,NULL,NULL,0,'GIP',NULL,NULL,'£',NULL,0,0.000000,100,'Penny',NULL,'#,###.##'),('GMD','2017-09-01 22:00:15.121793','2017-09-01 22:00:15.121793',NULL,NULL,0,NULL,NULL,NULL,0,'GMD',NULL,NULL,NULL,NULL,0,0.000000,0,NULL,NULL,'#,###.##'),('GNF','2017-09-01 22:00:14.946196','2017-09-01 22:00:14.946196',NULL,NULL,0,NULL,NULL,NULL,0,'GNF',NULL,NULL,'Fr',NULL,0,0.000000,100,'Centime',NULL,'#,###.##'),('GTQ','2017-09-01 22:00:14.360128','2017-09-01 22:00:14.360128',NULL,NULL,0,NULL,NULL,NULL,0,'GTQ',NULL,NULL,'Q',NULL,0,0.000000,100,'Centavo',NULL,'#,###.##'),('GYD','2017-09-01 22:00:14.953885','2017-09-01 22:00:14.953885',NULL,NULL,0,NULL,NULL,NULL,0,'GYD',NULL,NULL,'$',NULL,0,0.000000,100,'Cent',NULL,'#,###.##'),('HKD','2017-09-01 22:00:15.101070','2017-09-01 22:00:15.101070',NULL,NULL,0,NULL,NULL,NULL,0,'HKD',NULL,NULL,'$',NULL,0,0.000000,100,'Cent',NULL,'#,###.##'),('HNL','2017-09-01 22:00:15.433274','2017-09-01 22:00:15.433274',NULL,NULL,0,NULL,NULL,NULL,0,'HNL',NULL,NULL,'L',NULL,0,0.000000,100,'Centavo',NULL,'#,###.##'),('HRK','2017-09-01 22:00:15.140339','2017-09-01 22:00:15.140339',NULL,NULL,0,NULL,NULL,NULL,0,'HRK',NULL,NULL,'kn',NULL,0,0.000000,100,'Lipa',NULL,'#.###,##'),('HTG','2017-09-01 22:00:15.091989','2017-09-01 22:00:15.091989',NULL,NULL,0,NULL,NULL,NULL,0,'HTG',NULL,NULL,'G',NULL,0,0.000000,100,'Centime',NULL,'#,###.##'),('HUF','2017-09-01 22:00:14.913696','2017-09-01 22:00:14.913696',NULL,NULL,0,NULL,NULL,NULL,0,'HUF',NULL,NULL,'Ft',NULL,0,0.000000,100,'Fillér',NULL,'#.###'),('IDR','2017-09-01 22:00:15.314105','2017-09-01 22:00:15.314105',NULL,NULL,0,NULL,NULL,NULL,0,'IDR',NULL,NULL,'Rp',NULL,0,0.000000,100,'Sen',NULL,'#.###,##'),('ILS','2017-09-01 22:00:15.398339','2017-09-01 22:00:15.398339',NULL,NULL,0,NULL,NULL,NULL,0,'ILS',NULL,NULL,'₪',NULL,0,0.000000,100,'Agora',NULL,'#,###.##'),('INR','2017-09-01 22:00:14.531042','2017-09-01 22:00:15.501552','Administrator',NULL,0,NULL,NULL,NULL,0,'INR',NULL,NULL,'₹',NULL,1,0.000000,100,'Paisa',NULL,'#,##,###.##'),('IQD','2017-09-01 22:00:15.170570','2017-09-01 22:00:15.170570',NULL,NULL,0,NULL,NULL,NULL,0,'IQD',NULL,NULL,'ع.د',NULL,0,0.000000,1000,'Fils',NULL,'#,###.###'),('IRR','2017-09-01 22:00:15.033391','2017-09-01 22:00:15.033391',NULL,NULL,0,NULL,NULL,NULL,0,'IRR',NULL,NULL,'﷼',NULL,0,0.000000,0,NULL,NULL,'#,###.##'),('ISK','2017-09-01 22:00:15.318518','2017-09-01 22:00:15.318518',NULL,NULL,0,NULL,NULL,NULL,0,'ISK',NULL,NULL,'kr',NULL,0,0.000000,100,'Eyrir',NULL,'#.###'),('JMD','2017-09-01 22:00:14.420174','2017-09-01 22:00:14.420174',NULL,NULL,0,NULL,NULL,NULL,0,'JMD',NULL,NULL,'$',NULL,0,0.000000,100,'Cent',NULL,'#,###.##'),('JOD','2017-09-01 22:00:14.381404','2017-09-01 22:00:14.381404',NULL,NULL,0,NULL,NULL,NULL,0,'JOD',NULL,NULL,'د.ا',NULL,0,0.000000,100,'Piastre[H]',NULL,'#,###.###'),('JPY','2017-09-01 22:00:14.339957','2017-09-01 22:00:15.507243','Administrator',NULL,0,NULL,NULL,NULL,0,'JPY',NULL,NULL,'¥',NULL,1,0.000000,100,'Sen[G]',NULL,'#,###'),('KES','2017-09-01 22:00:14.550289','2017-09-01 22:00:14.550289',NULL,NULL,0,NULL,NULL,NULL,0,'KES',NULL,NULL,'Sh',NULL,0,0.000000,100,'Cent',NULL,'#,###.##'),('KGS','2017-09-01 22:00:15.383473','2017-09-01 22:00:15.383473',NULL,NULL,0,NULL,NULL,NULL,0,'KGS',NULL,NULL,'лв',NULL,0,0.000000,100,'Tyiyn',NULL,'#,###.##'),('KHR','2017-09-01 22:00:14.276555','2017-09-01 22:00:14.276555',NULL,NULL,0,NULL,NULL,NULL,0,'KHR',NULL,NULL,'៛',NULL,0,0.000000,100,'Sen',NULL,'#,###.##'),('KMF','2017-09-01 22:00:15.500074','2017-09-01 22:00:15.500074',NULL,NULL,0,NULL,NULL,NULL,0,'KMF',NULL,NULL,'Fr',NULL,0,0.000000,100,'Centime',NULL,'#,###.##'),('KPW','2017-09-01 22:00:14.609981','2017-09-01 22:00:14.609981',NULL,NULL,0,NULL,NULL,NULL,0,'KPW',NULL,NULL,NULL,NULL,0,0.000000,0,NULL,NULL,'#,###.##'),('KRW','2017-09-01 22:00:14.402939','2017-09-01 22:00:14.402939',NULL,NULL,0,NULL,NULL,NULL,0,'KRW',NULL,NULL,NULL,NULL,0,0.000000,0,NULL,NULL,'#,###'),('KWD','2017-09-01 22:00:14.370050','2017-09-01 22:00:14.370050',NULL,NULL,0,NULL,NULL,NULL,0,'KWD',NULL,NULL,'د.ك',NULL,0,0.000000,1000,'Fils',NULL,'#,###.###'),('KYD','2017-09-01 22:00:14.784672','2017-09-01 22:00:14.784672',NULL,NULL,0,NULL,NULL,NULL,0,'KYD',NULL,NULL,'$',NULL,0,0.000000,100,'Cent',NULL,'#,###.##'),('KZ','2017-09-01 22:00:14.838995','2017-09-01 22:00:14.838995',NULL,NULL,0,NULL,NULL,NULL,0,'KZ',NULL,NULL,'AOA',NULL,0,0.000000,100,'Cêntimo',NULL,'#,###.##'),('KZT','2017-09-01 22:00:15.363841','2017-09-01 22:00:15.363841',NULL,NULL,0,NULL,NULL,NULL,0,'KZT',NULL,NULL,'₸',NULL,0,0.000000,100,'Tïın',NULL,'#,###.##'),('LAK','2017-09-01 22:00:14.563271','2017-09-01 22:00:14.563271',NULL,NULL,0,NULL,NULL,NULL,0,'LAK',NULL,NULL,NULL,NULL,0,0.000000,0,NULL,NULL,'#,###.##'),('LBP','2017-09-01 22:00:15.194573','2017-09-01 22:00:15.194573',NULL,NULL,0,NULL,NULL,NULL,0,'LBP',NULL,NULL,'ل.ل',NULL,0,0.000000,100,'Piastre',NULL,'#,###.##'),('LKR','2017-09-01 22:00:15.408441','2017-09-01 22:00:15.408441',NULL,NULL,0,NULL,NULL,NULL,0,'LKR',NULL,NULL,'Rs',NULL,0,0.000000,100,'Cent',NULL,'#,###.##'),('LRD','2017-09-01 22:00:14.395978','2017-09-01 22:00:14.395978',NULL,NULL,0,NULL,NULL,NULL,0,'LRD',NULL,NULL,'$',NULL,0,0.000000,100,'Cent',NULL,'#,###.##'),('LSL','2017-09-01 22:00:14.541255','2017-09-01 22:00:14.541255',NULL,NULL,0,NULL,NULL,NULL,0,'LSL',NULL,NULL,'L',NULL,0,0.000000,100,'Sente',NULL,'#,###.##'),('LTL','2017-09-01 22:00:14.270599','2017-09-01 22:00:14.270599',NULL,NULL,0,NULL,NULL,NULL,0,'LTL',NULL,NULL,'Lt',NULL,0,0.000000,100,'Centas',NULL,'# ###,##'),('LVL','2017-09-01 22:00:15.414244','2017-09-01 22:00:15.414244',NULL,NULL,0,NULL,NULL,NULL,0,'LVL',NULL,NULL,'Ls',NULL,0,0.000000,100,'Santīms',NULL,'#,###.##'),('LYD','2017-09-01 22:00:14.778326','2017-09-01 22:00:14.778326',NULL,NULL,0,NULL,NULL,NULL,0,'LYD',NULL,NULL,'ل.د',NULL,0,0.000000,1000,'Dirham',NULL,'#,###.###'),('MAD','2017-09-01 22:00:15.133216','2017-09-01 22:00:15.133216',NULL,NULL,0,NULL,NULL,NULL,0,'MAD',NULL,NULL,'د.م.',NULL,0,0.000000,100,'Centime',NULL,'#,###.##'),('MDL','2017-09-01 22:00:15.373398','2017-09-01 22:00:15.373398',NULL,NULL,0,NULL,NULL,NULL,0,'MDL',NULL,NULL,NULL,NULL,0,0.000000,0,NULL,NULL,'#,###.##'),('MKD','2017-09-01 22:00:15.403116','2017-09-01 22:00:15.403116',NULL,NULL,0,NULL,NULL,NULL,0,'MKD',NULL,NULL,'ден',NULL,0,0.000000,100,'Deni',NULL,'#,###.##'),('MMK','2017-09-01 22:00:15.437712','2017-09-01 22:00:15.437712',NULL,NULL,0,NULL,NULL,NULL,0,'MMK',NULL,NULL,NULL,NULL,0,0.000000,0,NULL,NULL,'#,###.##'),('MNT','2017-09-01 22:00:15.146155','2017-09-01 22:00:15.146155',NULL,NULL,0,NULL,NULL,NULL,0,'MNT',NULL,NULL,'₮',NULL,0,0.000000,100,'Möngö',NULL,'#,###.##'),('MOP','2017-09-01 22:00:14.556568','2017-09-01 22:00:14.556568',NULL,NULL,0,NULL,NULL,NULL,0,'MOP',NULL,NULL,NULL,NULL,0,0.000000,0,NULL,NULL,'#,###.##'),('MRO','2017-09-01 22:00:14.578949','2017-09-01 22:00:14.578949',NULL,NULL,0,NULL,NULL,NULL,0,'MRO',NULL,NULL,'UM',NULL,0,0.000000,5,'Khoums',NULL,'#,###.##'),('MTL','2017-09-01 22:00:15.284536','2017-09-01 22:00:15.284536',NULL,NULL,0,NULL,NULL,NULL,0,'MTL',NULL,NULL,'€',NULL,0,0.000000,100,'Cent',NULL,'#,###.##'),('MUR','2017-09-01 22:00:14.797629','2017-09-01 22:00:14.797629',NULL,NULL,0,NULL,NULL,NULL,0,'MUR',NULL,NULL,'₨',NULL,0,0.000000,100,'Cent',NULL,'#,###'),('MVR','2017-09-01 22:00:15.292177','2017-09-01 22:00:15.292177',NULL,NULL,0,NULL,NULL,NULL,0,'MVR',NULL,NULL,'.ރ',NULL,0,0.000000,100,'Laari',NULL,'#,###.##'),('MWK','2017-09-01 22:00:14.673438','2017-09-01 22:00:14.673438',NULL,NULL,0,NULL,NULL,NULL,0,'MWK',NULL,NULL,'MK',NULL,0,0.000000,100,'Tambala',NULL,'#,###.##'),('MXN','2017-09-01 22:00:15.115520','2017-09-01 22:00:15.115520',NULL,NULL,0,NULL,NULL,NULL,0,'MXN',NULL,NULL,'$',NULL,0,0.000000,100,'Centavo',NULL,'#,###.##'),('MYR','2017-09-01 22:00:14.884950','2017-09-01 22:00:14.884950',NULL,NULL,0,NULL,NULL,NULL,0,'MYR',NULL,NULL,'RM',NULL,0,0.000000,100,'Sen',NULL,'#,###.##'),('NAD','2017-09-01 22:00:15.159723','2017-09-01 22:00:15.159723',NULL,NULL,0,NULL,NULL,NULL,0,'NAD',NULL,NULL,'$',NULL,0,0.000000,100,'Cent',NULL,'#,###.##'),('NGN','2017-09-01 22:00:15.015374','2017-09-01 22:00:15.015374',NULL,NULL,0,NULL,NULL,NULL,0,'NGN',NULL,NULL,'₦',NULL,0,0.000000,100,'Kobo',NULL,'#,###.##'),('NIO','2017-09-01 22:00:15.452870','2017-09-01 22:00:15.452870',NULL,NULL,0,NULL,NULL,NULL,0,'NIO',NULL,NULL,'C$',NULL,0,0.000000,100,'Centavo',NULL,'#,###.##'),('NOK','2017-09-01 22:00:14.657961','2017-09-01 22:00:14.657961',NULL,NULL,0,NULL,NULL,NULL,0,'NOK',NULL,NULL,'kr',NULL,0,0.000000,100,'Øre',NULL,'#.###,##'),('NPR','2017-09-01 22:00:15.277224','2017-09-01 22:00:15.277224',NULL,NULL,0,NULL,NULL,NULL,0,'NPR',NULL,NULL,'₨',NULL,0,0.000000,100,'Paisa',NULL,'#,###.##'),('NZD','2017-09-01 22:00:14.473044','2017-09-01 22:00:14.473044',NULL,NULL,0,NULL,NULL,NULL,0,'NZD',NULL,NULL,'$',NULL,0,0.000000,100,'Cent',NULL,'#,###.##'),('OMR','2017-09-01 22:00:14.429792','2017-09-01 22:00:14.429792',NULL,NULL,0,NULL,NULL,NULL,0,'OMR',NULL,NULL,'ر.ع.',NULL,0,0.000000,1000,'Baisa',NULL,'#,###.###'),('PEN','2017-09-01 22:00:14.632071','2017-09-01 22:00:14.632071',NULL,NULL,0,NULL,NULL,NULL,0,'PEN',NULL,NULL,'S/.',NULL,0,0.000000,100,'Céntimo',NULL,'#,###.##'),('PGK','2017-09-01 22:00:15.333011','2017-09-01 22:00:15.333011',NULL,NULL,0,NULL,NULL,NULL,0,'PGK',NULL,NULL,'K',NULL,0,0.000000,100,'Toea',NULL,'#,###.##'),('PHP','2017-09-01 22:00:15.127896','2017-09-01 22:00:15.127896',NULL,NULL,0,NULL,NULL,NULL,0,'PHP',NULL,NULL,'₱',NULL,0,0.000000,100,'Centavo',NULL,'#,###.##'),('PKR','2017-09-01 22:00:15.002808','2017-09-01 22:00:15.002808',NULL,NULL,0,NULL,NULL,NULL,0,'PKR',NULL,NULL,'₨',NULL,0,0.000000,100,'Paisa',NULL,'#,###.##'),('PLN','2017-09-01 22:00:15.368604','2017-09-01 22:00:15.368604',NULL,NULL,0,NULL,NULL,NULL,0,'PLN',NULL,NULL,'zł',NULL,0,0.000000,100,'Grosz',NULL,'#.###,##'),('PYG','2017-09-01 22:00:15.490040','2017-09-01 22:00:15.490040',NULL,NULL,0,NULL,NULL,NULL,0,'PYG',NULL,NULL,'₲',NULL,0,0.000000,100,'Céntimo',NULL,'#,###.##'),('QAR','2017-09-01 22:00:14.877901','2017-09-01 22:00:14.877901',NULL,NULL,0,NULL,NULL,NULL,0,'QAR',NULL,NULL,'ر.ق',NULL,0,0.000000,100,'Dirham',NULL,'#,###.##'),('RON','2017-09-01 22:00:14.833136','2017-09-01 22:00:14.833136',NULL,NULL,0,NULL,NULL,NULL,0,'RON',NULL,NULL,'lei',NULL,0,0.000000,100,'Bani',NULL,'#,###.##'),('RSD','2017-09-01 22:00:15.462414','2017-09-01 22:00:15.462414',NULL,NULL,0,NULL,NULL,NULL,0,'RSD',NULL,NULL,'дин.',NULL,0,0.000000,100,'Para',NULL,'#,###.##'),('RUB','2017-09-01 22:00:14.375785','2017-09-01 22:00:14.375785',NULL,NULL,0,NULL,NULL,NULL,0,'RUB',NULL,NULL,NULL,NULL,0,0.000000,0,NULL,NULL,'#.###,##'),('RWF','2017-09-01 22:00:14.331505','2017-09-01 22:00:14.331505',NULL,NULL,0,NULL,NULL,NULL,0,'RWF',NULL,NULL,'Fr',NULL,0,0.000000,100,'Centime',NULL,'#,###.##'),('SAR','2017-09-01 22:00:14.325442','2017-09-01 22:00:14.325442',NULL,NULL,0,NULL,NULL,NULL,0,'SAR',NULL,NULL,'ر.س',NULL,0,0.000000,100,'Halala',NULL,'#,###.##'),('SBD','2017-09-01 22:00:14.585003','2017-09-01 22:00:14.585003',NULL,NULL,0,NULL,NULL,NULL,0,'SBD',NULL,NULL,'$',NULL,0,0.000000,100,'Cent',NULL,'#,###.##'),('SCR','2017-09-01 22:00:14.650706','2017-09-01 22:00:14.650706',NULL,NULL,0,NULL,NULL,NULL,0,'SCR',NULL,NULL,'₨',NULL,0,0.000000,100,'Cent',NULL,'#,###.##'),('SEK','2017-09-01 22:00:14.817011','2017-09-01 22:00:14.817011',NULL,NULL,0,NULL,NULL,NULL,0,'SEK',NULL,NULL,'kr',NULL,0,0.000000,100,'Öre',NULL,'#.###,##'),('SGD','2017-09-01 22:00:15.458070','2017-09-01 22:00:15.458070',NULL,NULL,0,NULL,NULL,NULL,0,'SGD',NULL,NULL,'$',NULL,0,0.000000,100,'Sen',NULL,'#,###.##'),('SHP','2017-09-01 22:00:14.281283','2017-09-01 22:00:14.281283',NULL,NULL,0,NULL,NULL,NULL,0,'SHP',NULL,NULL,NULL,NULL,0,0.000000,0,NULL,NULL,'#,###.##'),('SLL','2017-09-01 22:00:15.106681','2017-09-01 22:00:15.106681',NULL,NULL,0,NULL,NULL,NULL,0,'SLL',NULL,NULL,'Le',NULL,0,0.000000,100,'Cent',NULL,'#,###.##'),('SOS','2017-09-01 22:00:14.624938','2017-09-01 22:00:14.624938',NULL,NULL,0,NULL,NULL,NULL,0,'SOS',NULL,NULL,'Sh',NULL,0,0.000000,100,'Cent',NULL,'#,###.##'),('STD','2017-09-01 22:00:14.253744','2017-09-01 22:00:14.253744',NULL,NULL,0,NULL,NULL,NULL,0,'STD',NULL,NULL,NULL,NULL,0,0.000000,0,NULL,NULL,'#,###.##'),('SVC','2017-09-01 22:00:15.052696','2017-09-01 22:00:15.052696',NULL,NULL,0,NULL,NULL,NULL,0,'SVC',NULL,NULL,'₡',NULL,0,0.000000,100,'Centavo',NULL,'#,###.##'),('SYP','2017-09-01 22:00:15.425262','2017-09-01 22:00:15.425262',NULL,NULL,0,NULL,NULL,NULL,0,'SYP',NULL,NULL,NULL,NULL,0,0.000000,0,NULL,NULL,'#,###.##'),('SZL','2017-09-01 22:00:14.640067','2017-09-01 22:00:14.640067',NULL,NULL,0,NULL,NULL,NULL,0,'SZL',NULL,NULL,'L',NULL,0,0.000000,100,'Cent',NULL,'#, ###.##'),('THB','2017-09-01 22:00:15.153211','2017-09-01 22:00:15.153211',NULL,NULL,0,NULL,NULL,NULL,0,'THB',NULL,NULL,'฿',NULL,0,0.000000,100,'Satang',NULL,'#,###.##'),('TMM','2017-09-01 22:00:14.313720','2017-09-01 22:00:14.313720',NULL,NULL,0,NULL,NULL,NULL,0,'TMM',NULL,NULL,'m',NULL,0,0.000000,100,'Tennesi',NULL,'#,###.##'),('TND','2017-09-01 22:00:15.206268','2017-09-01 22:00:15.206268',NULL,NULL,0,NULL,NULL,NULL,0,'TND',NULL,NULL,'د.ت',NULL,0,0.000000,1000,'Millime',NULL,'#,###.###'),('TOP','2017-09-01 22:00:14.768562','2017-09-01 22:00:14.768562',NULL,NULL,0,NULL,NULL,NULL,0,'TOP',NULL,NULL,'T$',NULL,0,0.000000,100,'Seniti[L]',NULL,'#,###.##'),('TRY','2017-09-01 22:00:14.932177','2017-09-01 22:00:14.932177',NULL,NULL,0,NULL,NULL,NULL,0,'TRY',NULL,NULL,'₺',NULL,0,0.000000,100,'Kuruş',NULL,'#,###.##'),('TTD','2017-09-01 22:00:15.341856','2017-09-01 22:00:15.341856',NULL,NULL,0,NULL,NULL,NULL,0,'TTD',NULL,NULL,'$',NULL,0,0.000000,100,'Cent',NULL,'#,###.##'),('TWD','2017-09-01 22:00:15.239991','2017-09-01 22:00:15.239991',NULL,NULL,0,NULL,NULL,NULL,0,'TWD',NULL,NULL,NULL,NULL,0,0.000000,0,NULL,NULL,'#,###.##'),('TZS','2017-09-01 22:00:14.441358','2017-09-01 22:00:14.441358',NULL,NULL,0,NULL,NULL,NULL,0,'TZS',NULL,NULL,NULL,NULL,0,0.000000,0,NULL,NULL,'#,###.##'),('UAH','2017-09-01 22:00:14.759036','2017-09-01 22:00:14.759036',NULL,NULL,0,NULL,NULL,NULL,0,'UAH',NULL,NULL,'₴',NULL,0,0.000000,100,'Kopiyka',NULL,'#,###.##'),('UGX','2017-09-01 22:00:14.907280','2017-09-01 22:00:14.907280',NULL,NULL,0,NULL,NULL,NULL,0,'UGX',NULL,NULL,'Sh',NULL,0,0.000000,100,'Cent',NULL,'#,###.##'),('USD','2017-09-01 22:00:14.827207','2017-09-01 22:00:15.502673','Administrator',NULL,0,NULL,NULL,NULL,0,'USD',NULL,NULL,'$',NULL,1,0.050000,100,'Cent',NULL,'#,###.##'),('UYU','2017-09-01 22:00:15.184950','2017-09-01 22:00:15.184950',NULL,NULL,0,NULL,NULL,NULL,0,'UYU',NULL,NULL,'$',NULL,0,0.000000,100,'Centésimo',NULL,'#.###,##'),('UZS','2017-09-01 22:00:15.202003','2017-09-01 22:00:15.202003',NULL,NULL,0,NULL,NULL,NULL,0,'UZS',NULL,NULL,'лв',NULL,0,0.000000,100,'Tiyin',NULL,'#,###.##'),('VEF','2017-09-01 22:00:14.262365','2017-09-01 22:00:14.262365',NULL,NULL,0,NULL,NULL,NULL,0,'VEF',NULL,NULL,'Bs.',NULL,0,0.000000,100,'Centimos',NULL,'#.###,##'),('VND','2017-09-01 22:00:14.897093','2017-09-01 22:00:14.897093',NULL,NULL,0,NULL,NULL,NULL,0,'VND',NULL,NULL,NULL,NULL,0,0.000000,0,NULL,NULL,'#.###'),('VUV','2017-09-01 22:00:15.353166','2017-09-01 22:00:15.353166',NULL,NULL,0,NULL,NULL,NULL,0,'VUV',NULL,NULL,'Vt',NULL,0,0.000000,0,'None',NULL,'#,###'),('WST','2017-09-01 22:00:14.501933','2017-09-01 22:00:14.501933',NULL,NULL,0,NULL,NULL,NULL,0,'WST',NULL,NULL,'T',NULL,0,0.000000,100,'Sene',NULL,'#,###.##'),('ZAR','2017-09-01 22:00:14.851622','2017-09-01 22:00:14.851622',NULL,NULL,0,NULL,NULL,NULL,0,'ZAR',NULL,NULL,'R',NULL,0,0.000000,100,'Cent',NULL,'# ###.##'),('ZMW','2017-09-01 22:00:15.323667','2017-09-01 22:00:15.323667',NULL,NULL,0,NULL,NULL,NULL,0,'ZMW',NULL,NULL,'ZK',NULL,0,0.000000,100,'Ngwee',NULL,'#,###.##'),('ZWD','2017-09-01 22:00:15.346147','2017-09-01 22:00:15.346147',NULL,NULL,0,NULL,NULL,NULL,0,'ZWD',NULL,NULL,'P',NULL,0,0.000000,100,'Thebe',NULL,'# ###.##');
/*!40000 ALTER TABLE `tabCurrency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabCustom DocPerm`
--

DROP TABLE IF EXISTS `tabCustom DocPerm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabCustom DocPerm` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT '0',
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT '0',
  `share` int(1) NOT NULL DEFAULT '1',
  `export` int(1) NOT NULL DEFAULT '1',
  `cancel` int(1) NOT NULL DEFAULT '0',
  `user_permission_doctypes` longtext COLLATE utf8mb4_unicode_ci,
  `create` int(1) NOT NULL DEFAULT '1',
  `submit` int(1) NOT NULL DEFAULT '0',
  `write` int(1) NOT NULL DEFAULT '1',
  `role` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `print` int(1) NOT NULL DEFAULT '1',
  `import` int(1) NOT NULL DEFAULT '0',
  `permlevel` int(11) NOT NULL DEFAULT '0',
  `_liked_by` text COLLATE utf8mb4_unicode_ci,
  `_user_tags` text COLLATE utf8mb4_unicode_ci,
  `apply_user_permissions` int(1) NOT NULL DEFAULT '0',
  `read` int(1) NOT NULL DEFAULT '1',
  `_assign` text COLLATE utf8mb4_unicode_ci,
  `_comments` text COLLATE utf8mb4_unicode_ci,
  `set_user_permissions` int(1) NOT NULL DEFAULT '0',
  `report` int(1) NOT NULL DEFAULT '1',
  `amend` int(1) NOT NULL DEFAULT '0',
  `email` int(1) NOT NULL DEFAULT '1',
  `if_owner` int(1) NOT NULL DEFAULT '0',
  `delete` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabCustom DocPerm`
--

LOCK TABLES `tabCustom DocPerm` WRITE;
/*!40000 ALTER TABLE `tabCustom DocPerm` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabCustom DocPerm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabCustom Field`
--

DROP TABLE IF EXISTS `tabCustom Field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabCustom Field` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT '0',
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT '0',
  `collapsible` int(1) NOT NULL DEFAULT '0',
  `print_width` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_copy` int(1) NOT NULL DEFAULT '0',
  `depends_on` longtext COLLATE utf8mb4_unicode_ci,
  `_liked_by` text COLLATE utf8mb4_unicode_ci,
  `in_list_view` int(1) NOT NULL DEFAULT '0',
  `reqd` int(1) NOT NULL DEFAULT '0',
  `ignore_xss_filter` int(1) NOT NULL DEFAULT '0',
  `in_global_search` int(1) NOT NULL DEFAULT '0',
  `collapsible_depends_on` longtext COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `read_only` int(1) NOT NULL DEFAULT '0',
  `print_hide` int(1) NOT NULL DEFAULT '0',
  `_comments` text COLLATE utf8mb4_unicode_ci,
  `ignore_user_permissions` int(1) NOT NULL DEFAULT '0',
  `label` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `print_hide_if_no_value` int(1) NOT NULL DEFAULT '0',
  `width` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `hidden` int(1) NOT NULL DEFAULT '0',
  `permlevel` int(11) NOT NULL DEFAULT '0',
  `columns` int(11) NOT NULL DEFAULT '0',
  `insert_after` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_assign` text COLLATE utf8mb4_unicode_ci,
  `bold` int(1) NOT NULL DEFAULT '0',
  `search_index` int(1) NOT NULL DEFAULT '0',
  `allow_on_submit` int(1) NOT NULL DEFAULT '0',
  `precision` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dt` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unique` int(1) NOT NULL DEFAULT '0',
  `_user_tags` text COLLATE utf8mb4_unicode_ci,
  `default` text COLLATE utf8mb4_unicode_ci,
  `in_standard_filter` int(1) NOT NULL DEFAULT '0',
  `fieldname` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fieldtype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT 'Data',
  `report_hide` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`name`),
  KEY `dt` (`dt`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabCustom Field`
--

LOCK TABLES `tabCustom Field` WRITE;
/*!40000 ALTER TABLE `tabCustom Field` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabCustom Field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabCustom Role`
--

DROP TABLE IF EXISTS `tabCustom Role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabCustom Role` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT '0',
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT '0',
  `_assign` text COLLATE utf8mb4_unicode_ci,
  `_comments` text COLLATE utf8mb4_unicode_ci,
  `ref_doctype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_liked_by` text COLLATE utf8mb4_unicode_ci,
  `report` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_user_tags` text COLLATE utf8mb4_unicode_ci,
  `page` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabCustom Role`
--

LOCK TABLES `tabCustom Role` WRITE;
/*!40000 ALTER TABLE `tabCustom Role` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabCustom Role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabCustom Script`
--

DROP TABLE IF EXISTS `tabCustom Script`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabCustom Script` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT '0',
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT '0',
  `_liked_by` text COLLATE utf8mb4_unicode_ci,
  `script` longtext COLLATE utf8mb4_unicode_ci,
  `_user_tags` text COLLATE utf8mb4_unicode_ci,
  `_assign` text COLLATE utf8mb4_unicode_ci,
  `dt` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_comments` text COLLATE utf8mb4_unicode_ci,
  `script_type` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT 'Client',
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabCustom Script`
--

LOCK TABLES `tabCustom Script` WRITE;
/*!40000 ALTER TABLE `tabCustom Script` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabCustom Script` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabCustomize Form Field`
--

DROP TABLE IF EXISTS `tabCustomize Form Field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabCustomize Form Field` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT '0',
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT '0',
  `collapsible` int(1) NOT NULL DEFAULT '0',
  `print_width` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `depends_on` longtext COLLATE utf8mb4_unicode_ci,
  `in_list_view` int(1) NOT NULL DEFAULT '0',
  `reqd` int(1) NOT NULL DEFAULT '0',
  `in_global_search` int(1) NOT NULL DEFAULT '0',
  `collapsible_depends_on` longtext COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `read_only` int(1) NOT NULL DEFAULT '0',
  `print_hide` int(1) NOT NULL DEFAULT '0',
  `ignore_user_permissions` int(1) NOT NULL DEFAULT '0',
  `label` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `print_hide_if_no_value` int(1) NOT NULL DEFAULT '0',
  `width` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `allow_bulk_edit` int(1) NOT NULL DEFAULT '0',
  `hidden` int(1) NOT NULL DEFAULT '0',
  `in_filter` int(1) NOT NULL DEFAULT '0',
  `permlevel` int(11) NOT NULL DEFAULT '0',
  `columns` int(11) NOT NULL DEFAULT '0',
  `bold` int(1) NOT NULL DEFAULT '0',
  `allow_on_submit` int(1) NOT NULL DEFAULT '0',
  `precision` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_custom_field` int(1) NOT NULL DEFAULT '0',
  `remember_last_selected_value` int(1) NOT NULL DEFAULT '0',
  `unique` int(1) NOT NULL DEFAULT '0',
  `default` text COLLATE utf8mb4_unicode_ci,
  `in_standard_filter` int(1) NOT NULL DEFAULT '0',
  `length` int(11) NOT NULL DEFAULT '0',
  `fieldname` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fieldtype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT 'Data',
  `options` text COLLATE utf8mb4_unicode_ci,
  `report_hide` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`name`),
  KEY `label` (`label`),
  KEY `fieldname` (`fieldname`),
  KEY `fieldtype` (`fieldtype`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabCustomize Form Field`
--

LOCK TABLES `tabCustomize Form Field` WRITE;
/*!40000 ALTER TABLE `tabCustomize Form Field` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabCustomize Form Field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabDefaultValue`
--

DROP TABLE IF EXISTS `tabDefaultValue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabDefaultValue` (
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT '0',
  `parent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT '0',
  `defvalue` text COLLATE utf8mb4_unicode_ci,
  `defkey` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `defaultvalue_parent_defkey_index` (`parent`,`defkey`),
  KEY `defaultvalue_parent_parenttype_index` (`parent`,`parenttype`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabDefaultValue`
--

LOCK TABLES `tabDefaultValue` WRITE;
/*!40000 ALTER TABLE `tabDefaultValue` DISABLE KEYS */;
INSERT INTO `tabDefaultValue` VALUES ('0a9a92084c','2017-09-01 22:08:02.208498','2017-09-01 22:08:02.208498','Administrator','Administrator',0,'__default','system_defaults','__default',0,'0','allow_login_using_mobile_number'),('11f5182b47','2017-09-01 22:08:01.876901','2017-09-01 22:08:01.876901','Administrator','Administrator',0,'__default','system_defaults','__default',0,'0','enable_password_policy'),('1ff7ee21c5','2017-09-01 22:08:00.149004','2017-09-01 22:08:00.149004','Administrator','Administrator',0,'__default','system_defaults','__default',0,'en','language'),('293abed71a','2017-09-01 22:08:00.876373','2017-09-01 22:08:00.876373','Administrator','Administrator',0,'__default','system_defaults','__default',0,'3','float_precision'),('35fabd5b13','2017-09-01 22:08:02.361969','2017-09-01 22:08:02.361969','Administrator','Administrator',0,'__default','system_defaults','__default',0,'1','allow_error_traceback'),('36ffe7360c','2017-09-01 22:07:59.931957','2017-09-01 22:07:59.931957','Administrator','Administrator',0,'__default','system_defaults','__default',0,'Dominican Republic','country'),('423cc7503c','2017-09-01 22:08:00.296391','2017-09-01 22:08:00.296391','Administrator','Administrator',0,'__default','system_defaults','__default',0,'America/Santo_Domingo','time_zone'),('4e2bd2a01f','2017-09-01 22:08:02.443156','2017-09-01 22:08:02.443156','Administrator','Administrator',0,'__default','system_defaults','__default',0,'0','disable_standard_email_footer'),('542a6f8817','2017-09-01 22:08:01.756336','2017-09-01 22:08:01.756336','Administrator','Administrator',0,'__default','system_defaults','__default',0,'720:00','session_expiry_mobile'),('6ea8030d1f','2017-09-01 22:08:00.746314','2017-09-01 22:08:00.746314','Administrator','Administrator',0,'__default','system_defaults','__default',0,'#,###.##','number_format'),('80ec39fdfe','2017-09-01 22:08:01.595051','2017-09-01 22:08:01.595051','Administrator','Administrator',0,'__default','system_defaults','__default',0,'06:00','session_expiry'),('8cb72d7abf','2017-09-01 12:54:14.156662','2017-09-01 12:54:14.156662','Administrator','Administrator',0,'__global','system_defaults','__default',0,'[\"frappe\", \"sipdo\"]','installed_apps'),('8f393928f0','2017-09-01 22:08:00.988325','2017-09-01 22:08:00.988325','Administrator','Administrator',0,'__default','system_defaults','__default',0,'','currency_precision'),('90f90ea3eb','2017-09-01 22:08:01.984980','2017-09-01 22:08:01.984980','Administrator','Administrator',0,'__default','system_defaults','__default',0,'','minimum_password_score'),('98e09fce84','2017-09-01 12:38:03.451062','2017-09-01 12:38:03.451062','Administrator','Administrator',0,'__default','system_defaults','__default',0,'','email_user_password'),('a8043f35a9','2017-09-01 22:08:01.128565','2017-09-01 22:08:01.128565','Administrator','Administrator',0,'__default','system_defaults','__default',0,'3','backup_limit'),('a854142a2a','2017-09-01 22:08:01.384733','2017-09-01 22:08:01.384733','Administrator','Administrator',0,'__default','system_defaults','__default',0,'0','ignore_user_permissions_if_missing'),('adc8d9d219','2017-09-01 22:08:00.633575','2017-09-01 22:08:00.633575','Administrator','Administrator',0,'__default','system_defaults','__default',0,'dd-mm-yyyy','date_format'),('b42f1202b2','2017-09-01 22:08:02.523383','2017-09-01 22:08:02.523383','Administrator','Administrator',0,'__default','system_defaults','__default',0,'en','lang'),('c3ea417512','2017-09-01 22:08:01.267080','2017-09-01 22:08:01.267080','Administrator','Administrator',0,'__default','system_defaults','__default',0,'1','enable_scheduler'),('c433d36c61','2017-09-01 22:08:02.116377','2017-09-01 22:08:02.116377','Administrator','Administrator',0,'__default','system_defaults','__default',0,'0','deny_multiple_sessions'),('d377b94a87','2017-09-01 12:38:03.954210','2017-09-01 12:38:03.954210','Administrator','Administrator',0,'__default','system_defaults','__default',0,'desktop','desktop:home_page'),('ee4b6949b7','2017-09-01 22:08:01.494140','2017-09-01 22:08:01.494140','Administrator','Administrator',0,'__default','system_defaults','__default',0,'0','apply_strict_user_permissions'),('fb456c7cae','2017-09-01 22:08:00.474621','2017-09-01 22:08:00.474621','Administrator','Administrator',0,'__default','system_defaults','__default',0,'0','setup_complete');
/*!40000 ALTER TABLE `tabDefaultValue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabDeleted Document`
--

DROP TABLE IF EXISTS `tabDeleted Document`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabDeleted Document` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT '0',
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT '0',
  `new_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_assign` text COLLATE utf8mb4_unicode_ci,
  `_user_tags` text COLLATE utf8mb4_unicode_ci,
  `deleted_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_liked_by` text COLLATE utf8mb4_unicode_ci,
  `_comments` text COLLATE utf8mb4_unicode_ci,
  `data` longtext COLLATE utf8mb4_unicode_ci,
  `restored` int(1) NOT NULL DEFAULT '0',
  `deleted_doctype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabDeleted Document`
--

LOCK TABLES `tabDeleted Document` WRITE;
/*!40000 ALTER TABLE `tabDeleted Document` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabDeleted Document` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabDesktop Icon`
--

DROP TABLE IF EXISTS `tabDesktop Icon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabDesktop Icon` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT '0',
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT '0',
  `color` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `app` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blocked` int(1) NOT NULL DEFAULT '0',
  `_user_tags` text COLLATE utf8mb4_unicode_ci,
  `custom` int(1) NOT NULL DEFAULT '0',
  `_report` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hidden` int(1) NOT NULL DEFAULT '0',
  `type` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_liked_by` text COLLATE utf8mb4_unicode_ci,
  `_assign` text COLLATE utf8mb4_unicode_ci,
  `standard` int(1) NOT NULL DEFAULT '0',
  `link` text COLLATE utf8mb4_unicode_ci,
  `force_show` int(1) NOT NULL DEFAULT '0',
  `_comments` text COLLATE utf8mb4_unicode_ci,
  `icon` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reverse` int(1) NOT NULL DEFAULT '0',
  `module_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_doctype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  UNIQUE KEY `unique_module_name_owner_standard` (`module_name`,`owner`,`standard`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabDesktop Icon`
--

LOCK TABLES `tabDesktop Icon` WRITE;
/*!40000 ALTER TABLE `tabDesktop Icon` DISABLE KEYS */;
INSERT INTO `tabDesktop Icon` VALUES ('099badedec','2017-09-01 22:00:08.870300','2017-09-01 22:00:08.870300','Administrator','Administrator',0,NULL,NULL,NULL,3,'#16a085','frappe','Integrations',0,NULL,0,NULL,1,'module',NULL,NULL,1,NULL,0,NULL,'octicon octicon-globe',0,'Integrations',NULL),('1464dae9f5','2017-09-01 22:00:08.885126','2017-09-01 22:00:08.885126','Administrator','Administrator',0,NULL,NULL,NULL,5,'#589494','frappe','Email Inbox',0,NULL,0,NULL,0,'list',NULL,NULL,1,'List/Communication/Inbox',0,NULL,'fa fa-envelope-o',0,'Email Inbox','Communication'),('2c15991efd','2017-09-01 22:00:08.877981','2017-09-01 22:00:08.877981','Administrator','Administrator',0,NULL,NULL,NULL,4,'#bdc3c7','frappe','Setup',0,NULL,0,NULL,1,'module',NULL,NULL,1,NULL,0,NULL,'octicon octicon-settings',1,'Setup',NULL),('3228041f17','2017-09-01 12:54:14.112094','2017-09-01 12:54:14.112094','Administrator','Administrator',0,NULL,NULL,NULL,0,'black','sipdo','sipDo',0,NULL,0,NULL,0,'module',NULL,NULL,1,NULL,0,NULL,'octicon octicon-broadcast',0,'sipDo',NULL),('48be8080ae','2017-09-01 22:00:08.901582','2017-09-01 22:00:08.901582','Administrator','Administrator',0,NULL,NULL,NULL,7,'#FFAEDB','frappe','Contacts',0,NULL,0,NULL,1,'module',NULL,NULL,1,NULL,0,NULL,'octicon octicon-book',0,'Contacts',NULL),('6fcd24f4d9','2017-09-01 22:00:08.847442','2017-09-01 22:00:08.847442','Administrator','Administrator',0,NULL,NULL,NULL,0,'#FFF5A7','frappe','Tools',0,NULL,0,NULL,0,'module',NULL,NULL,1,NULL,0,NULL,'octicon octicon-calendar',1,'Desk',NULL),('764714c40a','2017-09-01 22:00:08.894080','2017-09-01 22:00:08.894080','Administrator','Administrator',0,NULL,NULL,NULL,6,'#589494','frappe','Developer',0,NULL,0,NULL,1,'module',NULL,NULL,1,NULL,0,NULL,'octicon octicon-circuit-board',0,'Core',NULL),('ec4bdef776','2017-09-01 22:00:08.854034','2017-09-01 22:00:08.854034','Administrator','Administrator',0,NULL,NULL,NULL,1,'#AA784D','frappe','File Manager',0,NULL,0,NULL,1,'list',NULL,NULL,1,'List/File',0,NULL,'octicon octicon-file-directory',0,'File Manager','File'),('f55ed317ac','2017-09-01 22:00:08.863089','2017-09-01 22:00:08.863089','Administrator','Administrator',0,NULL,NULL,NULL,2,'#16a085','frappe','Website',0,NULL,0,NULL,1,'module',NULL,NULL,1,NULL,0,NULL,'octicon octicon-globe',0,'Website',NULL);
/*!40000 ALTER TABLE `tabDesktop Icon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabDocField`
--

DROP TABLE IF EXISTS `tabDocField`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabDocField` (
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT '0',
  `parent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT '0',
  `fieldname` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oldfieldname` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fieldtype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT 'Data',
  `oldfieldtype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `search_index` int(1) NOT NULL DEFAULT '0',
  `hidden` int(1) NOT NULL DEFAULT '0',
  `set_only_once` int(1) NOT NULL DEFAULT '0',
  `print_hide` int(1) NOT NULL DEFAULT '0',
  `report_hide` int(1) NOT NULL DEFAULT '0',
  `reqd` int(1) NOT NULL DEFAULT '0',
  `bold` int(1) NOT NULL DEFAULT '0',
  `in_global_search` int(1) NOT NULL DEFAULT '0',
  `collapsible` int(1) NOT NULL DEFAULT '0',
  `unique` int(1) NOT NULL DEFAULT '0',
  `no_copy` int(1) NOT NULL DEFAULT '0',
  `allow_on_submit` int(1) NOT NULL DEFAULT '0',
  `trigger` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collapsible_depends_on` longtext COLLATE utf8mb4_unicode_ci,
  `depends_on` longtext COLLATE utf8mb4_unicode_ci,
  `permlevel` int(11) NOT NULL DEFAULT '0',
  `ignore_user_permissions` int(1) NOT NULL DEFAULT '0',
  `width` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `print_width` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `columns` int(11) NOT NULL DEFAULT '0',
  `default` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `in_list_view` int(1) NOT NULL DEFAULT '0',
  `in_standard_filter` int(1) NOT NULL DEFAULT '0',
  `read_only` int(1) NOT NULL DEFAULT '0',
  `precision` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `length` int(11) NOT NULL DEFAULT '0',
  `in_filter` int(1) NOT NULL DEFAULT '0',
  `ignore_xss_filter` int(1) NOT NULL DEFAULT '0',
  `print_hide_if_no_value` int(1) NOT NULL DEFAULT '0',
  `allow_bulk_edit` int(1) NOT NULL DEFAULT '0',
  `remember_last_selected_value` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `label` (`label`),
  KEY `fieldtype` (`fieldtype`),
  KEY `fieldname` (`fieldname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabDocField`
--

LOCK TABLES `tabDocField` WRITE;
/*!40000 ALTER TABLE `tabDocField` DISABLE KEYS */;
INSERT INTO `tabDocField` VALUES ('0005a5b3e2','2012-12-20 17:16:49.000000','2017-09-01 21:59:56.947669','Administrator','Administrator',0,'Page','fields','DocType',8,'restrict_to_domain','Restrict To Domain',NULL,'Link',NULL,'Domain',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('0049f29dbb','2012-12-28 10:49:55.000000','2017-09-01 22:00:02.091249','Administrator','Administrator',0,'Workflow','fields','DocType',3,'is_active','Is Active',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'If checked, all other workflows become inactive.',0,0,0,NULL,0,0,0,0,0,0),('008567c52e','2013-01-10 16:34:01.000000','2017-09-01 21:59:53.056685','Administrator','Administrator',0,'Custom Field','fields','DocType',33,'in_global_search','In Global Search',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:([\"Data\", \"Select\", \"Table\", \"Text\", \"Text Editor\", \"Link\", \"Small Text\", \"Long Text\", \"Read Only\", \"Heading\", \"Dynamic Link\"].indexOf(doc.fieldtype) !== -1)',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('00cf120c70','2013-03-28 10:35:30.000000','2017-09-01 22:00:00.324049','Administrator','Administrator',0,'Web Page','fields','DocType',10,'custom_javascript','Script',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('00f698fb9f','2016-08-24 14:12:13.647159','2017-09-01 22:00:07.302043','Administrator','Administrator',0,'OAuth Authorization Code','fields','DocType',3,'scopes','Scopes',NULL,'Text',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('00fa95356d','2014-04-17 16:53:52.640856','2017-09-01 21:59:58.766477','Administrator','Administrator',0,'System Settings','fields','DocType',2,'country','Country',NULL,'Link',NULL,'Country',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('01344ad298','2016-04-12 18:40:16.315024','2017-09-01 22:00:01.300069','Administrator','Administrator',0,'Footer Item','fields','DocType',2,'group_label','Group Label',NULL,'Select',NULL,'\nCompany\nContact\nPolicy',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'',1,0,0,'',0,0,0,0,0,0),('0179dc8742','2012-08-02 15:17:28.000000','2017-09-01 22:00:03.294421','Administrator','Administrator',0,'Email Queue','fields','DocType',8,'reference_doctype','Reference DocType',NULL,'Link',NULL,'DocType',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,NULL,0,0,0,0,0,0),('0193078b6d','2014-07-11 17:18:09.923399','2017-09-01 22:00:03.128353','Administrator','Administrator',0,'Email Alert','fields','DocType',10,'date_changed','Reference Date',NULL,'Select',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:doc.event==\"Days After\" || doc.event==\"Days Before\"',0,0,NULL,NULL,0,NULL,'Send alert if date matches this field\'s value',0,0,0,NULL,0,0,0,0,0,0),('021d8583de','2014-03-11 14:55:00.000000','2017-09-01 21:59:52.429552','Administrator','Administrator',0,'User','fields','DocType',36,'email_inbox','Email Inbox',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('0266fd94cf','2012-08-02 15:17:28.000000','2017-09-01 22:00:03.294421','Administrator','Administrator',0,'Email Queue','fields','DocType',6,'error','Error',NULL,'Code',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('0276666df1','2013-01-29 10:47:14.000000','2017-09-01 21:59:55.016873','Administrator','Administrator',0,'Communication','fields','DocType',25,'reference_doctype','Reference DocType',NULL,'Link',NULL,'DocType',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('027aade26d','2017-01-24 15:46:38.366213','2017-09-01 21:59:56.229184','Administrator','Administrator',0,'Feedback Trigger','fields','DocType',2,'section_break_2',NULL,NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('029b23381f','2013-01-08 15:50:01.000000','2017-09-01 21:59:52.924422','Administrator','Administrator',0,'Role','fields','DocType',3,'desk_access','Desk Access',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'1',NULL,1,0,0,'',0,0,0,0,0,0),('02a7cb5e80','2016-09-21 08:03:01.009852','2017-09-01 22:00:07.143640','Administrator','Administrator',0,'PayPal Settings','fields','DocType',4,'paypal_sandbox','Use Sandbox',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Check this if you are testing your payment using the Sandbox API',0,0,0,'',0,0,0,0,0,0),('02ad75247c','2014-09-01 14:14:14.292173','2017-09-01 21:59:53.897718','Administrator','Administrator',0,'Web Form Field','fields','DocType',1,'fieldname','Fieldname',NULL,'Select',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('02ec72b746','2017-09-01 15:56:17.943779','2017-09-01 16:25:52.923943','Administrator','Administrator',0,'Empresa','fields','DocType',2,'naming_series','Naming Series',NULL,'Select',NULL,'ARS-.######\nCLI-.######\nHOS-.######',0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('033b2788f3','2015-02-18 12:46:38.168929','2017-09-01 21:59:59.903705','Administrator','Administrator',0,'Website Theme','fields','DocType',19,'footer_text_color','Footer Text Color',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'apply_text_styles',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('039f33b7a8','2013-02-21 20:12:42.000000','2017-09-01 22:00:01.610316','Administrator','Administrator',0,'Contact Us Settings','fields','DocType',7,'address_title','Address Title',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('03a6bf6a18','2013-02-18 13:36:19.000000','2017-09-01 21:59:51.696379','Administrator','Administrator',0,'DocType','fields','DocType',38,'cb30','Permissions Settings',NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('042995c768','2013-01-10 16:34:04.000000','2017-09-01 21:59:53.403426','Administrator','Administrator',0,'Property Setter','fields','DocType',4,'value','Set Value',NULL,'Text',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'New value to be set',1,0,0,NULL,0,0,0,0,0,0),('042bea154f','2013-01-29 10:47:14.000000','2017-09-01 21:59:55.016873','Administrator','Administrator',0,'Communication','fields','DocType',37,'unread_notification_sent','Unread Notification Sent',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'0',NULL,0,0,1,'',0,0,0,0,0,0),('0455b1c258','2013-01-10 16:34:32.000000','2017-09-01 22:00:08.571416','Administrator','Administrator',0,'Address','fields','DocType',16,'is_shipping_address','Preferred Shipping Address',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'0','',0,0,0,NULL,0,0,0,0,0,0),('0460619c49','2013-02-22 01:27:32.000000','2017-09-01 22:00:04.800729','Administrator','Administrator',0,'Customize Form Field','fields','DocType',27,'remember_last_selected_value','Remember Last Selected Value',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:(doc.fieldtype == \'Link\')',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('0476826648','2013-02-22 01:27:32.000000','2017-09-01 22:00:04.800729','Administrator','Administrator',0,'Customize Form Field','fields','DocType',2,'label','Label','label','Data','Data',NULL,1,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('047f7db5ec','2017-02-13 17:33:25.157332','2017-09-01 21:59:55.882960','Administrator','Administrator',0,'User Permission for Page and Report','fields','DocType',6,'roles','Roles',NULL,'Table',NULL,'Has Role',0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('048a1ea853','2014-09-01 14:08:48.624556','2017-09-01 21:59:53.572628','Administrator','Administrator',0,'Web Form','fields','DocType',34,'amount','Amount',NULL,'Currency',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:doc.accept_payment && !doc.amount_based_on_field',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('0495f87574','2013-03-07 15:53:15.000000','2017-09-01 22:00:01.366493','Administrator','Administrator',0,'Website Slideshow','fields','DocType',3,'slideshow_items','Slideshow Items',NULL,'Table',NULL,'Website Slideshow Item',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:!doc.__islocal',0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('054cd71ce8','2014-09-11 12:04:34.163728','2017-09-01 22:00:02.520524','Administrator','Administrator',0,'Email Account','fields','DocType',26,'smtp_server','SMTP Server',NULL,'Data',NULL,'domain.smtp_server',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:!doc.domain && doc.enable_outgoing',0,0,NULL,NULL,0,NULL,'e.g. smtp.gmail.com',0,0,0,'',0,0,0,0,0,0),('05a5e50991','2012-12-12 11:19:22.000000','2017-09-01 21:59:54.402066','Administrator','Administrator',0,'File','fields','DocType',14,'section_break_8',NULL,NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:!doc.is_folder',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('05c83fb87a','2016-09-01 01:34:34.985457','2017-09-01 22:00:03.756563','Administrator','Administrator',0,'Auto Email Report','fields','DocType',6,'filter_data','Filter Data',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('05eb5812e8','2016-12-08 12:01:07.993900','2017-09-01 22:00:02.387366','Administrator','Administrator',0,'Email Queue Recipient','fields','DocType',3,'error','Error',NULL,'Code',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('05fe9e8b96','2012-08-02 15:17:28.000000','2017-09-01 22:00:03.294421','Administrator','Administrator',0,'Email Queue','fields','DocType',3,'show_as_cc','Show as cc',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('067624c62f','2013-06-10 13:17:47.000000','2017-09-01 22:00:05.629704','Administrator','Administrator',0,'Event','fields','DocType',27,'groups','Groups',NULL,'Column Break','Column Break',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'50%','50%',0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('0678342bf8','2016-10-19 12:26:42.569185','2017-09-01 22:00:05.804293','Administrator','Administrator',0,'Kanban Board Column','fields','DocType',3,'indicator','Indicator',NULL,'Select',NULL,'blue\norange\nred\ngreen\ndarkgrey\npurple\nyellow\nlightblue',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'darkgrey',NULL,1,0,0,'',0,0,0,0,0,0),('06c0d02818','2016-03-29 10:50:48.848239','2017-09-01 22:00:03.612963','Administrator','Administrator',0,'Email Domain','fields','DocType',3,'email_id','Example Email Address',NULL,'Data',NULL,'Email',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'',0,0,0,'',0,0,0,0,0,0),('071acce342','2014-08-22 16:12:17.249590','2017-09-01 21:59:55.520947','Administrator','Administrator',0,'Language','fields','DocType',3,'flag','Flag',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('0745ca0c81','2014-07-11 17:18:09.923399','2017-09-01 22:00:03.128353','Administrator','Administrator',0,'Email Alert','fields','DocType',1,'enabled','Enabled',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'1',NULL,0,0,0,NULL,0,0,0,0,0,0),('086063f07d','2014-03-11 14:55:00.000000','2017-09-01 21:59:52.429552','Administrator','Administrator',0,'User','fields','DocType',22,'mobile_no','Mobile No',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,1,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('087e1b53a3','2013-02-22 01:27:33.000000','2017-09-01 21:59:50.367790','Administrator','Administrator',0,'DocField','fields','DocType',40,'column_break_22',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('0880b6c2bd','2013-02-22 01:27:33.000000','2017-09-01 21:59:50.986087','Administrator','Administrator',0,'DocPerm','fields','DocType',11,'create','Create','create','Check','Check',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'32px','32px',0,'1',NULL,1,0,0,NULL,0,0,0,0,0,0),('088dda4244','2013-03-25 16:00:51.000000','2017-09-01 21:59:59.800038','Administrator','Administrator',0,'Blogger','fields','DocType',4,'user','User',NULL,'Link',NULL,'User',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('090ec7feef','2014-09-01 14:08:48.624556','2017-09-01 21:59:53.572628','Administrator','Administrator',0,'Web Form','fields','DocType',22,'success_url','Success URL',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Go to this url after completing the form.',0,0,0,NULL,0,0,0,0,0,0),('092dae36d5','2014-09-11 12:04:34.163728','2017-09-01 22:00:02.520524','Administrator','Administrator',0,'Email Account','fields','DocType',17,'default_incoming','Default Incoming',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'enable_incoming',0,0,NULL,NULL,0,NULL,'e.g. replies@yourcomany.com. All replies will come to this inbox.',0,0,0,'',0,0,0,0,0,0),('09331ed017','2013-02-18 13:36:19.000000','2017-09-01 21:59:51.696379','Administrator','Administrator',0,'DocType','fields','DocType',43,'max_attachments','Max Attachments','max_attachments','Int','Int',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('09452d1637','2014-03-04 08:29:52.000000','2017-09-01 22:00:06.216644','Administrator','Administrator',0,'Social Login Keys','fields','DocType',13,'frappe_server_url','Frappe Server URL',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('094b26ed4e','2013-03-09 15:45:57.000000','2017-09-01 21:59:57.830003','Administrator','Administrator',0,'Report','fields','DocType',10,'letter_head','Letter Head',NULL,'Link',NULL,'Letter Head',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval: doc.is_standard == \"No\"',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('0955c43f58','2013-01-29 17:55:08.000000','2017-09-01 22:00:04.634582','Administrator','Administrator',0,'Customize Form','fields','DocType',16,'section_break_8',NULL,NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'doc_type',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('09718fce83','2014-09-11 12:04:34.163728','2017-09-01 22:00:02.520524','Administrator','Administrator',0,'Email Account','fields','DocType',7,'email_settings','',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('0982cbcc4b','2016-02-22 03:47:45.387068','2017-09-01 22:00:05.878431','Administrator','Administrator',0,'Desktop Icon','fields','DocType',6,'app','App',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('09acff83f7','2013-01-29 10:47:14.000000','2017-09-01 21:59:55.016873','Administrator','Administrator',0,'Communication','fields','DocType',40,'email_inbox','Email Inbox',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,1,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('09beaac4fa','2014-02-20 17:22:37.000000','2017-09-01 21:59:57.172499','Administrator','Administrator',0,'Version','fields','DocType',4,'data','Data',NULL,'Code',NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('09cb894ae1','2013-06-10 13:17:47.000000','2017-09-01 22:00:05.629704','Administrator','Administrator',0,'Event','fields','DocType',12,'column_break_11',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('09ee795cc6','2017-01-11 04:21:35.217943','2017-09-01 21:59:54.801850','Administrator','Administrator',0,'Custom DocPerm','fields','DocType',21,'set_user_permissions','Set User Permissions',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'This role update User Permissions for a user',0,0,0,'',0,0,0,0,0,0),('0a50c98c77','2017-04-24 09:53:41.813982','2017-09-01 22:00:07.375584','Administrator','Administrator',0,'GSuite Templates','fields','DocType',1,'template_name','Template Name',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('0a643953e9','2012-12-28 10:49:56.000000','2017-09-01 22:00:02.317127','Administrator','Administrator',0,'Workflow State','fields','DocType',1,'workflow_state_name','State',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('0a7d8708b2','2013-01-10 16:34:01.000000','2017-09-01 21:59:53.056685','Administrator','Administrator',0,'Custom Field','fields','DocType',31,'in_list_view','In List View',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('0a8c999662','2013-02-18 13:36:19.000000','2017-09-01 21:59:51.696379','Administrator','Administrator',0,'DocType','fields','DocType',41,'allow_rename','Allow Rename','allow_rename','Check','Check',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('0aaaef054a','2013-02-22 01:27:33.000000','2017-09-01 21:59:50.367790','Administrator','Administrator',0,'DocField','fields','DocType',31,'ignore_xss_filter','Ignore XSS Filter',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Don\'t HTML Encode HTML tags like &lt;script&gt; or just characters like &lt; or &gt;, as they could be intentionally used in this field',0,0,0,'',0,0,0,0,0,0),('0aaf82816f','2016-08-04 04:58:40.457416','2017-09-01 22:00:07.597872','Administrator','Administrator',0,'Integration Request','fields','DocType',7,'reference_doctype','Reference Doctype',NULL,'Link',NULL,'DocType',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('0acda09bcd','2013-03-28 10:35:30.000000','2017-09-01 22:00:00.324049','Administrator','Administrator',0,'Web Page','fields','DocType',25,'description','Description',NULL,'Small Text',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Description for search engine optimization.',0,0,0,NULL,0,0,0,0,0,0),('0ad3072b95','2014-07-11 17:18:09.923399','2017-09-01 22:00:03.128353','Administrator','Administrator',0,'Email Alert','fields','DocType',2,'filters','Filters',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('0b59f5886c','2013-02-22 01:27:33.000000','2017-09-01 21:59:50.367790','Administrator','Administrator',0,'DocField','fields','DocType',23,'set_only_once','Set Only Once',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Do not allow user to change after set the first time',0,0,0,NULL,0,0,0,0,0,0),('0b83a60489','2013-02-22 01:27:33.000000','2017-09-01 21:59:50.986087','Administrator','Administrator',0,'DocPerm','fields','DocType',14,'submit','Submit','submit','Check','Check',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'32px','32px',0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('0be12eeacc','2015-11-28 00:57:39.766888','2017-09-01 21:59:58.381641','Administrator','Administrator',0,'Error Snapshot','fields','DocType',7,'traceback','Traceback',NULL,'Code',NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('0be4db81e1','2013-02-22 01:27:33.000000','2017-09-01 21:59:50.986087','Administrator','Administrator',0,'DocPerm','fields','DocType',7,'user_permission_doctypes','User Permission DocTypes',NULL,'Code',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'',0,0,NULL,NULL,0,NULL,'JSON list of DocTypes used to apply User Permissions. If empty, all linked DocTypes will be used to apply User Permissions.',0,0,1,NULL,0,0,0,0,0,0),('0c128a644e','2014-03-11 14:55:00.000000','2017-09-01 21:59:52.429552','Administrator','Administrator',0,'User','fields','DocType',49,'login_after','Login After',NULL,'Int',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,1,0,NULL,NULL,0,NULL,'Allow user to login only after this hour (0-24)',0,0,0,NULL,0,0,0,0,0,0),('0c1a74a05f','2016-09-20 03:44:03.799402','2017-09-01 22:00:07.103022','Administrator','Administrator',0,'Razorpay Settings','fields','DocType',1,'api_key','API Key',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('0c2304296e','2016-12-29 12:59:48.638970','2017-09-01 21:59:57.504015','Administrator','Administrator',0,'Deleted Document','fields','DocType',7,'data','Data',NULL,'Code',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('0c4d87bc77','2014-09-11 12:04:34.163728','2017-09-01 22:00:02.520524','Administrator','Administrator',0,'Email Account','fields','DocType',34,'signature','Signature',NULL,'Text Editor',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'add_signature',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('0c4de57bdb','2014-09-01 14:08:48.624556','2017-09-01 21:59:53.572628','Administrator','Administrator',0,'Web Form','fields','DocType',1,'title','Title',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,1,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('0c6390ab5d','2013-02-21 20:12:42.000000','2017-09-01 22:00:01.610316','Administrator','Administrator',0,'Contact Us Settings','fields','DocType',12,'pincode','Pincode',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('0d63f7afc0','2017-01-24 15:46:38.366213','2017-09-01 21:59:56.229184','Administrator','Administrator',0,'Feedback Trigger','fields','DocType',13,'section_break_9','Message',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('0e37628d06','2013-02-18 13:36:19.000000','2017-09-01 21:59:51.696379','Administrator','Administrator',0,'DocType','fields','DocType',4,'issingle','Is Single','issingle','Check','Check',NULL,0,0,1,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:!doc.istable',0,0,NULL,NULL,0,NULL,'Single Types have only one record no tables associated. Values are stored in tabSingles',0,1,0,NULL,0,0,0,0,0,0),('0e76bf9827','2013-01-10 16:34:32.000000','2017-09-01 22:00:08.226056','Administrator','Administrator',0,'Contact','fields','DocType',15,'links','Links',NULL,'Table',NULL,'Dynamic Link',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('0edc832372','2013-01-29 10:47:14.000000','2017-09-01 21:59:55.016873','Administrator','Administrator',0,'Communication','fields','DocType',38,'seen','Seen',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('0f709d107d','2013-01-10 16:34:32.000000','2017-09-01 22:00:08.571416','Administrator','Administrator',0,'Address','fields','DocType',17,'linked_with','Reference',NULL,'Section Break',NULL,'fa fa-pushpin',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('0f8b15a745','2013-01-29 10:47:14.000000','2017-09-01 21:59:55.016873','Administrator','Administrator',0,'Communication','fields','DocType',34,'timeline_doctype','Timeline DocType',NULL,'Link',NULL,'DocType',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('10317c86dd','2017-04-21 16:57:30.264478','2017-09-01 22:00:07.448430','Administrator','Administrator',0,'GSuite Settings','fields','DocType',1,'enable','Enable',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('10afc20776','2017-01-23 16:56:25.875531','2017-09-01 21:59:56.487193','Administrator','Administrator',0,'Authentication Log','fields','DocType',1,'user_details','User Details',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('10d5cbb16f','2014-03-11 14:55:00.000000','2017-09-01 21:59:52.429552','Administrator','Administrator',0,'User','fields','DocType',4,'email','Email','email','Data','Data','Email',0,0,0,0,0,1,0,0,0,0,1,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('11159446d0','2013-03-28 10:35:30.000000','2017-09-01 22:00:00.894557','Administrator','Administrator',0,'Blog Post','fields','DocType',10,'content','Content',NULL,'Text Editor',NULL,NULL,0,0,0,0,0,1,0,1,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,1,0,0,0),('113be9173e','2016-05-25 13:09:20.996154','2017-09-01 21:59:58.664536','Administrator','Administrator',0,'Tag Doc Category','fields','DocType',1,'tagdoc','Doctype to Assign Tags',NULL,'Link',NULL,'DocType',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('11436571e8','2012-08-02 15:17:28.000000','2017-09-01 22:00:03.294421','Administrator','Administrator',0,'Email Queue','fields','DocType',11,'send_after','Send After',NULL,'Datetime',NULL,NULL,0,0,0,0,0,0,0,0,0,0,1,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('114f37b355','2013-01-10 16:34:01.000000','2017-09-01 21:59:53.056685','Administrator','Administrator',0,'Custom Field','fields','DocType',30,'allow_on_submit','Allow on Submit','allow_on_submit','Check','Check',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('115ce53232','2017-04-21 16:57:30.264478','2017-09-01 22:00:07.448430','Administrator','Administrator',0,'GSuite Settings','fields','DocType',9,'run_script_test','Run Script Test',NULL,'Button',NULL,NULL,0,0,0,1,1,0,0,0,0,0,1,0,NULL,NULL,'eval:(doc.client_id && doc.client_secret && doc.authorization_code && doc.refresh_token && doc.script_url)',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('11780d0344','2013-02-22 01:27:33.000000','2017-09-01 21:59:50.986087','Administrator','Administrator',0,'DocPerm','fields','DocType',5,'column_break_2',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('11bb39ae4d','2013-02-22 01:27:33.000000','2017-09-01 21:59:50.367790','Administrator','Administrator',0,'DocField','fields','DocType',20,'hidden','Hidden','hidden','Check','Check',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'50px','50px',0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('11cc435ce6','2013-02-22 01:27:33.000000','2017-09-01 21:59:50.367790','Administrator','Administrator',0,'DocField','fields','DocType',29,'report_hide','Report Hide','report_hide','Check','Check',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'50px','50px',0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('11dec86173','2012-12-12 11:19:22.000000','2017-09-01 21:59:54.402066','Administrator','Administrator',0,'File','fields','DocType',17,'attached_to_name','Attached To Name',NULL,'Data',NULL,NULL,1,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,NULL,0,0,0,0,0,0),('11ec6cc049','2015-02-18 12:46:38.168929','2017-09-01 21:59:59.903705','Administrator','Administrator',0,'Website Theme','fields','DocType',2,'module','Module',NULL,'Link',NULL,'Module Def',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'Website',NULL,0,0,0,'',0,0,0,0,0,0),('1235253520','2013-03-28 10:35:30.000000','2017-09-01 22:00:00.894557','Administrator','Administrator',0,'Blog Post','fields','DocType',5,'blog_category','Blog Category',NULL,'Link',NULL,'Blog Category',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,1,0,NULL,0,0,0,0,0,0),('125ba5a616','2013-02-22 01:27:33.000000','2017-09-01 21:59:50.367790','Administrator','Administrator',0,'DocField','fields','DocType',11,'in_global_search','In Global Search',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:([\"Data\", \"Select\", \"Table\", \"Text\", \"Text Editor\", \"Link\", \"Small Text\", \"Long Text\", \"Read Only\", \"Heading\", \"Dynamic Link\"].indexOf(doc.fieldtype) !== -1)',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('12696039ec','2013-02-22 01:27:32.000000','2017-09-01 22:00:04.800729','Administrator','Administrator',0,'Customize Form Field','fields','DocType',15,'permissions','Permissions',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('126fe68ed0','2013-02-22 01:27:33.000000','2017-09-01 21:59:50.367790','Administrator','Administrator',0,'DocField','fields','DocType',33,'in_filter','In Filter','in_filter','Check','Check',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'50px','50px',0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('127591898b','2014-09-01 14:14:14.292173','2017-09-01 21:59:53.897718','Administrator','Administrator',0,'Web Form Field','fields','DocType',5,'read_only','Read Only',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('12974e0e26','2013-04-30 12:58:46.000000','2017-09-01 22:00:00.764927','Administrator','Administrator',0,'Website Settings','fields','DocType',30,'disable_signup','Disable Signup',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Disable Customer Signup link in Login page',0,0,0,NULL,0,0,0,0,0,0),('12cc65d876','2014-09-01 14:08:48.624556','2017-09-01 21:59:53.572628','Administrator','Administrator',0,'Web Form','fields','DocType',30,'payment_button_help','Button Help',NULL,'Text',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'accept_payment',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('12ea7b419d','2014-07-11 17:18:09.923399','2017-09-01 22:00:03.128353','Administrator','Administrator',0,'Email Alert','fields','DocType',24,'attach_print','Attach Print',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('136708e7e0','2013-04-30 12:58:46.000000','2017-09-01 22:00:00.764927','Administrator','Administrator',0,'Website Settings','fields','DocType',10,'banner_image','Brand Image',NULL,'Attach Image',NULL,'',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Select an image of approx width 150px with a transparent background for best results.',0,0,0,NULL,0,0,0,0,0,0),('13752de55c','2016-09-21 10:12:57.399174','2017-09-01 22:00:06.300633','Administrator','Administrator',0,'Dropbox Settings','fields','DocType',6,'allow_dropbox_access','Allow Dropbox Access',NULL,'Button',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('13d7d31693','2017-07-17 14:25:27.881871','2017-09-01 21:59:57.736696','Administrator','Administrator',0,'User Permission','fields','DocType',4,'apply_for_all_roles','Apply for all Roles for this User',NULL,'Check',NULL,NULL,0,0,0,0,0,0,1,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'1','If you un-check this, you will have to apply manually for each Role + Document Type combination',0,0,0,'',0,0,0,0,0,0),('13e60397bb','2013-02-22 01:27:32.000000','2017-09-01 22:00:04.800729','Administrator','Administrator',0,'Customize Form Field','fields','DocType',33,'print_hide','Print Hide','print_hide','Check','Check',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('13e645c7c7','2016-02-22 03:47:45.387068','2017-09-01 22:00:05.878431','Administrator','Administrator',0,'Desktop Icon','fields','DocType',9,'force_show','Force Show',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('145ad76672','2013-04-30 12:58:46.000000','2017-09-01 22:00:00.764927','Administrator','Administrator',0,'Website Settings','fields','DocType',25,'column_break_17',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('14c22887c6','2016-07-15 05:51:29.224123','2017-09-01 22:00:05.481647','Administrator','Administrator',0,'Bulk Update','fields','DocType',5,'limit','Limit',NULL,'Int',NULL,NULL,0,0,0,0,0,0,1,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'500','Max 500 records at a time',0,0,0,'',0,0,0,0,0,0),('14d32a417d','2012-12-12 11:19:22.000000','2017-09-01 21:59:54.402066','Administrator','Administrator',0,'File','fields','DocType',5,'section_break_5',NULL,NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('14d362201f','2014-07-11 17:18:09.923399','2017-09-01 22:00:03.128353','Administrator','Administrator',0,'Email Alert','fields','DocType',16,'html_7',NULL,NULL,'HTML',NULL,'<p><strong>Condition Examples:</strong></p>\n<pre>doc.status==\"Open\"\ndoc.due_date==nowdate()\ndoc.total &gt; 40000\n</pre>\n<p><strong>Hints:</strong></p>\n<ol>\n<li>To check for an event every day, select \"Date Change\" in Event</li>\n<li>To send an alert if a particular value changes, select \"Value Change\"</li>\n</ol>',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('14ea242eba','2017-05-03 16:28:11.295095','2017-09-01 21:59:57.685199','Administrator','Administrator',0,'Domain Settings','fields','DocType',1,'domains','Domains',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('14fc94aec0','2016-02-17 12:21:16.175465','2017-09-01 21:59:57.386715','Administrator','Administrator',0,'Translation','fields','DocType',2,'section_break_4',NULL,NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('154fc986d9','2013-01-10 16:34:32.000000','2017-09-01 22:00:08.571416','Administrator','Administrator',0,'Address','fields','DocType',1,'address_details','',NULL,'Section Break',NULL,'fa fa-map-marker',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('15592c70d1','2013-02-18 13:36:19.000000','2017-09-01 21:59:51.696379','Administrator','Administrator',0,'DocType','fields','DocType',12,'app','App',NULL,'Data',NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('1578f1068f','2016-03-30 10:04:25.828742','2017-09-01 21:59:56.668986','Administrator','Administrator',0,'User Email','fields','DocType',2,'email_id','Email ID',NULL,'Data',NULL,'email_account.email_id',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('1581539ec5','2016-04-14 09:41:45.892975','2017-09-01 22:00:02.933067','Administrator','Administrator',0,'Unhandled Email','fields','DocType',3,'reason','Reason',NULL,'Long Text',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('1594cfd6dd','2015-03-18 09:41:20.216319','2017-09-01 22:00:04.433960','Administrator','Administrator',0,'Email Unsubscribe','fields','DocType',2,'reference_doctype','Reference DocType',NULL,'Link',NULL,'DocType',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,1,0,'',0,0,0,0,0,0),('15a10502dc','2016-03-30 01:39:20.586927','2017-09-01 21:59:54.203506','Administrator','Administrator',0,'Portal Menu Item','fields','DocType',4,'reference_doctype','Reference Doctype',NULL,'Link',NULL,'DocType',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,2,NULL,'',1,0,0,'',0,0,0,0,0,0),('15ac046821','2013-01-29 10:47:14.000000','2017-09-01 21:59:55.016873','Administrator','Administrator',0,'Communication','fields','DocType',9,'delivery_status','Delivery Status',NULL,'Select',NULL,'\nSent\nBounced\nOpened\nMarked As Spam\nRejected\nDelayed\nSoft-Bounced\nClicked\nRecipient Unsubscribed\nError\nExpired\nSending',0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Integrations can use this field to set email delivery status',0,0,0,'',0,0,0,0,0,0),('15d6026d11','2015-02-18 12:46:38.168929','2017-09-01 21:59:59.903705','Administrator','Administrator',0,'Website Theme','fields','DocType',17,'top_bar_text_color','Top Bar Text Color',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'apply_text_styles',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('16b178cc6a','2016-08-24 14:07:21.955052','2017-09-01 22:00:07.188251','Administrator','Administrator',0,'OAuth Client','fields','DocType',13,'grant_type','Grant Type',NULL,'Select',NULL,'Authorization Code\nImplicit\nResource Owner Password Credentials\nClient Credentials',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,1,0,NULL,0,0,0,0,0,0),('16d5071ccb','2016-10-19 12:26:04.809812','2017-09-01 22:00:05.535117','Administrator','Administrator',0,'Kanban Board','fields','DocType',1,'kanban_board_name','Kanban Board Name',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,1,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('170544da70','2013-06-10 13:17:47.000000','2017-09-01 22:00:05.629704','Administrator','Administrator',0,'Event','fields','DocType',1,'details','',NULL,'Section Break','Section Break',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('17342a05c2','2014-09-01 14:08:48.624556','2017-09-01 21:59:53.572628','Administrator','Administrator',0,'Web Form','fields','DocType',28,'payment_gateway','Payment Gateway',NULL,'Link',NULL,'Payment Gateway',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'accept_payment',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('1740cb7a94','2017-03-13 09:20:56.387135','2017-09-01 22:00:03.413737','Administrator','Administrator',0,'Email Rule','fields','DocType',2,'is_spam','Is Spam',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('177e8e32e4','2016-08-24 14:12:13.647159','2017-09-01 22:00:07.302043','Administrator','Administrator',0,'OAuth Authorization Code','fields','DocType',7,'validity','Validity',NULL,'Select',NULL,'Valid\nInvalid',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('17aa9e98f8','2013-02-22 01:28:08.000000','2017-09-01 22:00:00.692769','Administrator','Administrator',0,'Top Bar Item','fields','DocType',1,'label','Label',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'120px','120px',0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('17af23013d','2013-02-18 13:36:19.000000','2017-09-01 21:59:51.696379','Administrator','Administrator',0,'DocType','fields','DocType',2,'module','Module','module','Link','Link','Module Def',1,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,1,0,NULL,0,0,0,0,0,0),('1838ea82a0','2014-09-01 14:08:48.624556','2017-09-01 21:59:53.572628','Administrator','Administrator',0,'Web Form','fields','DocType',33,'amount_field','Amount Field',NULL,'Select',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:doc.accept_payment && doc.amount_based_on_field',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('196bd02550','2013-02-21 20:12:42.000000','2017-09-01 22:00:01.610316','Administrator','Administrator',0,'Contact Us Settings','fields','DocType',6,'address','Address',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('19b3c46f02','2014-09-11 12:04:34.163728','2017-09-01 22:00:02.520524','Administrator','Administrator',0,'Email Account','fields','DocType',39,'footer','Footer',NULL,'Text Editor',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('19bb30eaf2','2013-01-10 16:34:01.000000','2017-09-01 21:59:53.056685','Administrator','Administrator',0,'Custom Field','fields','DocType',17,'permlevel','Permission Level','permlevel','Int','Int',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'0',NULL,0,0,0,NULL,0,0,0,0,0,0),('19d8220e35','2013-01-08 15:50:01.000000','2017-09-01 21:59:52.924422','Administrator','Administrator',0,'Role','fields','DocType',4,'restrict_to_domain','Restrict To Domain',NULL,'Link',NULL,'Domain',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('1a15dc665f','2012-07-03 13:30:35.000000','2017-09-01 22:00:05.317576','Administrator','Administrator',0,'ToDo','fields','DocType',9,'section_break_6','Reference',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('1a18a425fa','2016-09-01 01:34:34.985457','2017-09-01 22:00:03.756563','Administrator','Administrator',0,'Auto Email Report','fields','DocType',2,'user','Based on Permissions For User',NULL,'Link',NULL,'User',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'User',NULL,0,0,0,'',0,0,0,0,0,0),('1a270c650b','2014-07-17 06:54:20.782907','2017-09-01 22:00:07.719476','Administrator','Administrator',0,'Print Settings','fields','DocType',6,'view_link_in_email',NULL,NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('1a3b3846da','2013-03-19 12:02:15.000000','2017-09-01 22:00:00.258186','Administrator','Administrator',0,'About Us Settings','fields','DocType',9,'footer','Footer',NULL,'Text Editor',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'More content for the bottom of the page.',0,0,0,NULL,0,0,0,0,0,0),('1a4618dc05','2013-01-29 10:47:14.000000','2017-09-01 21:59:55.016873','Administrator','Administrator',0,'Communication','fields','DocType',13,'text_content','Text Content',NULL,'Code',NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('1a4e384b27','2013-05-24 13:41:00.000000','2017-09-01 22:00:05.180965','Administrator','Administrator',0,'Note','fields','DocType',1,'title','Title',NULL,'Data',NULL,NULL,0,0,0,1,0,1,0,1,0,0,1,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('1a59ce6189','2013-06-10 13:17:47.000000','2017-09-01 22:00:05.629704','Administrator','Administrator',0,'Event','fields','DocType',14,'repeat_on','Repeat On',NULL,'Select',NULL,'\nEvery Day\nEvery Week\nEvery Month\nEvery Year',0,0,0,0,0,0,0,1,0,0,0,0,NULL,NULL,'repeat_this_event',0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('1a7ec35de0','2013-04-30 12:58:46.000000','2017-09-01 22:00:00.764927','Administrator','Administrator',0,'Website Settings','fields','DocType',20,'address','Address',NULL,'Text Editor',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Address and other legal information you may want to put in the footer.',0,0,0,NULL,0,0,0,0,0,0),('1aafa7365c','2014-09-01 14:08:48.624556','2017-09-01 21:59:53.572628','Administrator','Administrator',0,'Web Form','fields','DocType',4,'module','Module',NULL,'Link',NULL,'Module Def',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('1aba745311','2012-12-28 10:49:55.000000','2017-09-01 22:00:02.091249','Administrator','Administrator',0,'Workflow','fields','DocType',4,'override_status','Don\'t Override Status',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'If Checked workflow status will not override status in list view',0,0,0,'',0,0,0,0,0,0),('1abfbdd6a9','2017-09-01 15:19:44.113804','2017-09-01 15:33:38.607038','Administrator','Administrator',0,'Medicamentos','fields','DocType',9,'descripcion','Descripcion',NULL,'Text',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('1ae65f368e','2013-01-10 16:34:32.000000','2017-09-01 22:00:08.226056','Administrator','Administrator',0,'Contact','fields','DocType',4,'email_id','Email Address','email_id','Data','Data','Email',1,0,0,0,0,0,1,1,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('1b107ebf62','2013-06-10 13:17:47.000000','2017-09-01 22:00:05.629704','Administrator','Administrator',0,'Event','fields','DocType',29,'ref_name','Ref Name','ref_name','Dynamic Link','Data','ref_type',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,NULL,0,0,0,0,0,0),('1b40283736','2013-01-16 13:09:40.000000','2017-09-01 21:59:58.530871','Administrator','Administrator',0,'Error Log','fields','DocType',3,'error','Error',NULL,'Code',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,NULL,0,0,0,0,0,0),('1b4e03a4c5','2013-02-18 13:36:19.000000','2017-09-01 21:59:51.696379','Administrator','Administrator',0,'DocType','fields','DocType',40,'allow_import','Allow Import (via Data Import Tool)',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'',0,0,0,NULL,0,0,0,0,0,0),('1b711e4221','2016-02-22 03:47:45.387068','2017-09-01 22:00:05.878431','Administrator','Administrator',0,'Desktop Icon','fields','DocType',11,'type','Type',NULL,'Select',NULL,'module\nlist\nlink\npage\nquery-report',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,1,0,'',0,0,0,0,0,0),('1b875a01d3','2013-04-30 12:58:46.000000','2017-09-01 22:00:00.764927','Administrator','Administrator',0,'Website Settings','fields','DocType',5,'section_break_6',NULL,NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('1bf231844e','2016-12-29 12:59:48.638970','2017-09-01 21:59:57.504015','Administrator','Administrator',0,'Deleted Document','fields','DocType',1,'deleted_name','Deleted Name',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('1c080bd27b','2017-02-13 17:33:25.157332','2017-09-01 21:59:54.729999','Administrator','Administrator',0,'Role Permission for Page and Report','fields','DocType',4,'roles_permission','Allow Roles',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('1c6125c9e9','2016-12-29 07:48:06.319665','2017-09-01 22:00:00.998444','Administrator','Administrator',0,'Website Sidebar','fields','DocType',2,'sidebar_items','Sidebar Items',NULL,'Table',NULL,'Website Sidebar Item',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('1c6ea3120a','2013-03-09 15:45:57.000000','2017-09-01 21:59:57.830003','Administrator','Administrator',0,'Report','fields','DocType',4,'module','Module',NULL,'Link',NULL,'Module Def',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('1c7625b601','2016-08-24 14:12:13.647159','2017-09-01 22:00:07.302043','Administrator','Administrator',0,'OAuth Authorization Code','fields','DocType',5,'expiration_time','Expiration time',NULL,'Datetime',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('1c988647ae','2013-02-22 01:27:32.000000','2017-09-01 22:00:04.800729','Administrator','Administrator',0,'Customize Form Field','fields','DocType',5,'reqd','Mandatory','reqd','Check','Check',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'50px','50px',0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('1cfdbb86f9','2014-09-11 12:04:34.163728','2017-09-01 22:00:02.520524','Administrator','Administrator',0,'Email Account','fields','DocType',30,'always_use_account_email_id_as_sender','Always use Account\'s Email Address as Sender',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'enable_outgoing',0,0,NULL,NULL,0,NULL,'Uses the Email Address mentioned in this Account as the Sender for all emails sent using this Account. ',0,0,0,'',0,0,0,0,0,0),('1d4a413964','2013-01-29 10:47:14.000000','2017-09-01 21:59:55.016873','Administrator','Administrator',0,'Communication','fields','DocType',5,'column_break_4',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('1d59243f87','2016-02-22 03:47:45.387068','2017-09-01 22:00:05.878431','Administrator','Administrator',0,'Desktop Icon','fields','DocType',8,'blocked','Blocked',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('1dbd070375','2013-01-10 16:34:31.000000','2017-09-01 22:00:03.015516','Administrator','Administrator',0,'Newsletter','fields','DocType',12,'test_send','Test',NULL,'Button',NULL,'test_send',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('1ddbd57025','2016-08-24 14:10:17.471264','2017-09-01 22:00:07.513722','Administrator','Administrator',0,'OAuth Bearer Token','fields','DocType',4,'access_token','Access Token',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('1e495c68a1','2013-01-23 19:54:43.000000','2017-09-01 22:00:07.979522','Administrator','Administrator',0,'Print Format','fields','DocType',22,'print_format_builder','Print Format Builder',NULL,'Check',NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('1e54f8f4ce','2013-03-19 12:02:15.000000','2017-09-01 22:00:00.258186','Administrator','Administrator',0,'About Us Settings','fields','DocType',5,'company_history','Org History',NULL,'Table',NULL,'Company History',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('1e67d56712','2013-02-18 13:36:19.000000','2017-09-01 21:59:51.696379','Administrator','Administrator',0,'DocType','fields','DocType',16,'autoname','Auto Name','autoname','Data','Data',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Naming Options:\n<ol><li><b>field:[fieldname]</b> - By Field</li><li><b>naming_series:</b> - By Naming Series (field called naming_series must be present</li><li><b>Prompt</b> - Prompt user for a name</li><li><b>[series]</b> - Series by prefix (separated by a dot); for example PRE.#####</li></ol>',0,0,0,NULL,0,0,0,0,0,0),('1e6bfc61df','2012-12-28 10:49:55.000000','2017-09-01 22:00:02.091249','Administrator','Administrator',0,'Workflow','fields','DocType',5,'states_head','States',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Different \"States\" this document can exist in. Like \"Open\", \"Pending Approval\" etc.',0,0,0,NULL,0,0,0,0,0,0),('1e7dc27603','2015-03-18 06:15:59.321619','2017-09-01 22:00:02.769685','Administrator','Administrator',0,'Email Group Member','fields','DocType',2,'email','Email',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,1,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('1ef1338e64','2012-12-28 10:49:56.000000','2017-09-01 22:00:02.317127','Administrator','Administrator',0,'Workflow State','fields','DocType',2,'icon','Icon',NULL,'Select',NULL,'\nglass\nmusic\nsearch\nenvelope\nheart\nstar\nstar-empty\nuser\nfilm\nth-large\nth\nth-list\nok\nremove\nzoom-in\nzoom-out\noff\nsignal\ncog\ntrash\nhome\nfile\ntime\nroad\ndownload-alt\ndownload\nupload\ninbox\nplay-circle\nrepeat\nrefresh\nlist-alt\nlock\nflag\nheadphones\nvolume-off\nvolume-down\nvolume-up\nqrcode\nbarcode\ntag\ntags\nbook\nbookmark\nprint\ncamera\nfont\nbold\nitalic\ntext-height\ntext-width\nalign-left\nalign-center\nalign-right\nalign-justify\nlist\nindent-left\nindent-right\nfacetime-video\npicture\npencil\nmap-marker\nadjust\ntint\nedit\nshare\ncheck\nmove\nstep-backward\nfast-backward\nbackward\nplay\npause\nstop\nforward\nfast-forward\nstep-forward\neject\nchevron-left\nchevron-right\nplus-sign\nminus-sign\nremove-sign\nok-sign\nquestion-sign\ninfo-sign\nscreenshot\nremove-circle\nok-circle\nban-circle\narrow-left\narrow-right\narrow-up\narrow-down\nshare-alt\nresize-full\nresize-small\nplus\nminus\nasterisk\nexclamation-sign\ngift\nleaf\nfire\neye-open\neye-close\nwarning-sign\nplane\ncalendar\nrandom\ncomment\nmagnet\nchevron-up\nchevron-down\nretweet\nshopping-cart\nfolder-close\nfolder-open\nresize-vertical\nresize-horizontal\nhdd\nbullhorn\nbell\ncertificate\nthumbs-up\nthumbs-down\nhand-right\nhand-left\nhand-up\nhand-down\ncircle-arrow-right\ncircle-arrow-left\ncircle-arrow-up\ncircle-arrow-down\nglobe\nwrench\ntasks\nfilter\nbriefcase\nfullscreen',0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Icon will appear on the button',0,0,0,NULL,0,0,0,0,0,0),('1f12ebf708','2017-01-24 15:46:38.366213','2017-09-01 21:59:56.229184','Administrator','Administrator',0,'Feedback Trigger','fields','DocType',1,'enabled','Enabled',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('1f1830380c','2012-07-03 13:30:35.000000','2017-09-01 22:00:05.317576','Administrator','Administrator',0,'ToDo','fields','DocType',4,'column_break_2',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('1f756d3367','2013-01-10 16:34:03.000000','2017-09-01 21:59:58.184161','Administrator','Administrator',0,'Module Def','fields','DocType',1,'module_name','Module Name','module_name','Data','Data',NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('1f788444c8','2017-01-11 04:21:35.217943','2017-09-01 21:59:54.801850','Administrator','Administrator',0,'Custom DocPerm','fields','DocType',13,'column_break_8',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('1f86a66ca5','2017-01-24 15:46:38.366213','2017-09-01 21:59:56.229184','Administrator','Administrator',0,'Feedback Trigger','fields','DocType',15,'example','Example',NULL,'HTML',NULL,'<h5>Message Example</h5>\n\n<pre>&lt;h3&gt;Issue Resolved&lt;/h3&gt;\n\n&lt;p&gt;Issue {{ doc.name }} Is resolved. Please check and confirm the same.&lt;/p&gt;\n\n&lt;p&gt; Your Feedback is important for us. Please give us your Feedback for {{ doc.name }}&lt;/p&gt;\n\n&lt;h4&gt;Details&lt;/h4&gt;</pre>',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('1f91319512','2017-04-24 09:53:41.813982','2017-09-01 22:00:07.375584','Administrator','Administrator',0,'GSuite Templates','fields','DocType',3,'template_id','Template ID',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('1fe465e67d','2017-09-01 13:29:30.289032','2017-09-01 19:20:24.367341','Administrator','Administrator',0,'Paciente','fields','DocType',2,'segundo_nombre','Segundo Nombre',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('1feaa59fbf','2013-02-22 01:27:33.000000','2017-09-01 21:59:50.986087','Administrator','Administrator',0,'DocPerm','fields','DocType',16,'amend','Amend','amend','Check','Check',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'32px','32px',0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('1feeebbc2f','2016-09-01 01:34:34.985457','2017-09-01 22:00:03.756563','Administrator','Administrator',0,'Auto Email Report','fields','DocType',15,'email_to','Email To',NULL,'Small Text',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('20649ba7de','2014-09-11 12:04:34.163728','2017-09-01 22:00:02.520524','Administrator','Administrator',0,'Email Account','fields','DocType',27,'use_tls','Use TLS',NULL,'Check',NULL,'domain.use_tls',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:!doc.domain && doc.enable_outgoing',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('20698b890d','2013-02-18 13:36:19.000000','2017-09-01 21:59:51.696379','Administrator','Administrator',0,'DocType','fields','DocType',48,'column_break_47',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('20b3414e02','2015-03-18 09:41:20.216319','2017-09-01 22:00:04.433960','Administrator','Administrator',0,'Email Unsubscribe','fields','DocType',3,'reference_name','Reference Name',NULL,'Dynamic Link',NULL,'reference_doctype',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('20b9882fe2','2014-10-30 14:25:53.780105','2017-09-01 22:00:01.066008','Administrator','Administrator',0,'Help Article','fields','DocType',10,'route','Route',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('20f4605e4b','2016-09-01 01:34:34.985457','2017-09-01 22:00:03.756563','Administrator','Administrator',0,'Auto Email Report','fields','DocType',19,'format','Format',NULL,'Select',NULL,'HTML\nXLSX\nCSV',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('2123919fdc','2013-05-24 13:41:00.000000','2017-09-01 22:00:05.180965','Administrator','Administrator',0,'Note','fields','DocType',7,'seen_by_section','Seen By',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('21282037eb','2013-03-28 10:35:30.000000','2017-09-01 22:00:00.324049','Administrator','Administrator',0,'Web Page','fields','DocType',4,'slideshow','Slideshow',NULL,'Link',NULL,'Website Slideshow',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'',0,0,0,NULL,0,0,0,0,0,0),('212bd65607','2012-12-12 11:19:22.000000','2017-09-01 21:59:54.402066','Administrator','Administrator',0,'File','fields','DocType',12,'folder','Folder',NULL,'Link',NULL,'File',0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,1,1,'',0,0,0,0,0,0),('215bf5f68f','2013-02-22 01:27:32.000000','2017-09-01 22:00:04.800729','Administrator','Administrator',0,'Customize Form Field','fields','DocType',14,'options','Options','options','Text','Text',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'For Links, enter the DocType as range.\nFor Select, enter list of Options, each on a new line.',1,0,0,NULL,0,0,0,0,0,0),('21670b27c8','2016-08-04 04:58:40.457416','2017-09-01 22:00:07.597872','Administrator','Administrator',0,'Integration Request','fields','DocType',6,'error','Error',NULL,'Code',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('2192269115','2014-07-11 17:18:09.923399','2017-09-01 22:00:03.128353','Administrator','Administrator',0,'Email Alert','fields','DocType',7,'col_break_1',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('219dae8f78','2017-09-01 13:29:30.289032','2017-09-01 19:20:24.367341','Administrator','Administrator',0,'Paciente','fields','DocType',28,'sb_28','Medicamentos',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('21b5ade2fa','2013-01-29 10:47:14.000000','2017-09-01 21:59:55.016873','Administrator','Administrator',0,'Communication','fields','DocType',22,'column_break_14',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('21dfbc08c7','2013-04-30 12:58:46.000000','2017-09-01 22:00:00.764927','Administrator','Administrator',0,'Website Settings','fields','DocType',33,'robots_txt','Robots.txt',NULL,'Code',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('227634ed3c','2013-02-22 01:27:32.000000','2017-09-01 22:00:04.800729','Administrator','Administrator',0,'Customize Form Field','fields','DocType',19,'read_only','Read Only',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('22ea3ae97b','2012-12-20 17:16:49.000000','2017-09-01 21:59:56.947669','Administrator','Administrator',0,'Page','fields','DocType',2,'page_html','Page HTML',NULL,'Section Break','Section Break',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('22eae4f3db','2016-08-24 14:07:21.955052','2017-09-01 22:00:07.188251','Administrator','Administrator',0,'OAuth Client','fields','DocType',4,'cb_1',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('22f8b78428','2013-03-08 09:41:11.000000','2017-09-01 22:00:01.501531','Administrator','Administrator',0,'Blog Category','fields','DocType',4,'route','Route',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,1,0,0,NULL,NULL,'published',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('22ff30233e','2013-03-28 10:35:30.000000','2017-09-01 22:00:00.324049','Administrator','Administrator',0,'Web Page','fields','DocType',23,'idx','Priority',NULL,'Int',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'0 is highest',0,0,0,NULL,0,0,0,0,0,0),('232fa31a33','2017-09-01 15:56:17.943779','2017-09-01 16:25:52.923943','Administrator','Administrator',0,'Empresa','fields','DocType',6,'sitio_web','Sitio Web',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('235ff20aa8','2013-01-23 19:54:43.000000','2017-09-01 22:00:07.979522','Administrator','Administrator',0,'Print Format','fields','DocType',8,'print_format_type','Print Format Type',NULL,'Select',NULL,'Server\nClient\nJs',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'custom_format',0,0,NULL,NULL,0,'Server','',0,0,0,NULL,0,0,0,0,0,0),('2378e067df','2013-01-29 10:47:14.000000','2017-09-01 21:59:55.016873','Administrator','Administrator',0,'Communication','fields','DocType',30,'user','User',NULL,'Link',NULL,'User',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,1,NULL,NULL,0,'__user',NULL,0,0,1,NULL,0,0,0,0,0,0),('23d05d20bf','2014-07-11 17:18:09.923399','2017-09-01 22:00:03.128353','Administrator','Administrator',0,'Email Alert','fields','DocType',9,'method','Trigger Method',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:doc.event==\'Method\'',0,0,NULL,NULL,0,NULL,'Trigger on valid methods like \"before_insert\", \"after_update\", etc (will depend on the DocType selected)',0,0,0,'',0,0,0,0,0,0),('242d7c5281','2016-12-29 07:42:26.246725','2017-09-01 21:59:59.642605','Administrator','Administrator',0,'Website Sidebar Item','fields','DocType',3,'group','Group',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('247963bc58','2014-09-01 14:08:48.624556','2017-09-01 21:59:53.572628','Administrator','Administrator',0,'Web Form','fields','DocType',16,'fields','Fields',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('24a777e6fe','2013-03-28 10:35:30.000000','2017-09-01 22:00:00.324049','Administrator','Administrator',0,'Web Page','fields','DocType',26,'header','Header',NULL,'Text',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'HTML for header section. Optional',0,0,0,NULL,0,0,0,0,0,0),('24bf6ec2db','2016-03-30 01:39:20.586927','2017-09-01 21:59:54.203506','Administrator','Administrator',0,'Portal Menu Item','fields','DocType',1,'title','Title',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,2,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('24bf76f893','2014-03-11 14:55:00.000000','2017-09-01 21:59:52.429552','Administrator','Administrator',0,'User','fields','DocType',3,'section_break_3',NULL,NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'enabled',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('24f3b1d322','2014-09-01 14:08:48.624556','2017-09-01 21:59:53.572628','Administrator','Administrator',0,'Web Form','fields','DocType',26,'payments','Payments',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,0,NULL,'accept_payment',NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('2501fd7383','2013-02-22 01:27:33.000000','2017-09-01 21:59:50.986087','Administrator','Administrator',0,'DocPerm','fields','DocType',6,'permlevel','Level','permlevel','Int','Int',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'40px','40px',0,'0',NULL,1,0,0,NULL,0,0,0,0,0,0),('2502c240cc','2016-09-22 04:16:48.829658','2017-09-01 22:00:06.105316','Administrator','Administrator',0,'LDAP Settings','fields','DocType',2,'ldap_server_url','LDAP Server Url',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('251842383c','2016-08-04 04:58:40.457416','2017-09-01 22:00:07.597872','Administrator','Administrator',0,'Integration Request','fields','DocType',3,'status','Status',NULL,'Select',NULL,'\nQueued\nAuthorized\nCompleted\nCancelled\nFailed\n',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'Queued',NULL,1,1,0,'',0,0,0,0,0,0),('25a1c82427','2017-09-01 13:46:35.906729','2017-09-01 13:46:35.906729','Administrator','Administrator',0,'Telefonos','fields','DocType',3,'estado','Estado',NULL,'Select',NULL,'ACTIVO\nINACTIVO',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('25b6e8dd1d','2014-06-19 05:20:26.331041','2017-09-01 22:00:03.503215','Administrator','Administrator',0,'Standard Reply','fields','DocType',5,'standard_reply_help','Standard Reply Help',NULL,'HTML',NULL,'<h4>Standard Reply Example</h4>\n\n<pre>Order Overdue\n\nTransaction {{ name }} has exceeded Due Date. Please take necessary action.\n\nDetails\n\n- Customer: {{ customer }}\n- Amount: {{ grand_total }}\n</pre>\n\n<h4>How to get fieldnames</h4>\n\n<p>The fieldnames you can use in your standard reply are the fields in the document from which you are sending the email. You can find out the fields of any documents via Setup &gt; Customize Form View and selecting the document type (e.g. Sales Invoice)</p>\n\n<h4>Templating</h4>\n\n<p>Templates are compiled using the Jinja Templating Langauge. To learn more about Jinja, <a class=\"strong\" href=\"http://jinja.pocoo.org/docs/dev/templates/\">read this documentation.</a></p>\n',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('25efd0dc31','2017-01-27 15:43:33.780808','2017-09-01 21:59:56.777309','Administrator','Administrator',0,'Feedback Request','fields','DocType',3,'column_break_2',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('25f48b2bf0','2016-10-19 12:26:04.809812','2017-09-01 22:00:05.535117','Administrator','Administrator',0,'Kanban Board','fields','DocType',2,'reference_doctype','Reference DocType',NULL,'Link',NULL,'DocType',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('264324301b','2013-01-10 16:34:32.000000','2017-09-01 22:00:08.226056','Administrator','Administrator',0,'Contact','fields','DocType',2,'first_name','First Name','first_name','Data','Data',NULL,0,0,0,0,0,1,0,1,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('2658759b54','2014-07-11 17:18:09.923399','2017-09-01 22:00:03.128353','Administrator','Administrator',0,'Email Alert','fields','DocType',13,'section_break_9',NULL,NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('2692fb6ac9','2012-12-28 10:49:56.000000','2017-09-01 22:00:02.317127','Administrator','Administrator',0,'Workflow State','fields','DocType',3,'style','Style',NULL,'Select',NULL,'\nPrimary\nInfo\nSuccess\nWarning\nDanger\nInverse',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Style represents the button color: Success - Green, Danger - Red, Inverse - Black, Primary - Dark Blue, Info - Light Blue, Warning - Orange',0,0,0,NULL,0,0,0,0,0,0),('2703f14d3b','2013-02-22 01:27:32.000000','2017-09-01 22:00:04.800729','Administrator','Administrator',0,'Customize Form Field','fields','DocType',10,'bold','Bold',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('2712241e33','2013-03-28 10:35:30.000000','2017-09-01 22:00:00.324049','Administrator','Administrator',0,'Web Page','fields','DocType',14,'insert_style','Insert Style',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('27236a343e','2014-07-17 06:54:20.782907','2017-09-01 22:00:07.719476','Administrator','Administrator',0,'Print Settings','fields','DocType',10,'font','Font',NULL,'Select',NULL,'Default\nArial\nHelvetica\nVerdana\nMonospace',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'Default',NULL,0,0,0,'',0,0,0,0,0,0),('27355b2c77','2013-02-21 20:12:42.000000','2017-09-01 22:00:01.610316','Administrator','Administrator',0,'Contact Us Settings','fields','DocType',9,'address_line2','Address Line 2',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('2745e9f7d3','2013-02-18 13:36:19.000000','2017-09-01 21:59:51.696379','Administrator','Administrator',0,'DocType','fields','DocType',9,'custom','Custom?',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('27495096c2','2014-03-04 08:29:52.000000','2017-09-01 22:00:06.216644','Administrator','Administrator',0,'Social Login Keys','fields','DocType',6,'google_client_secret','Google Client Secret',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('275b29ddf1','2016-08-24 14:12:13.647159','2017-09-01 22:00:07.302043','Administrator','Administrator',0,'OAuth Authorization Code','fields','DocType',4,'authorization_code','Authorization Code',NULL,'Text',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('27c21c64a7','2015-02-18 12:46:38.168929','2017-09-01 21:59:59.903705','Administrator','Administrator',0,'Website Theme','fields','DocType',11,'heading_webfont','Google Font (Heading)',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'apply_text_styles',0,0,NULL,NULL,0,NULL,'Add the name of a \"Google Web Font\" e.g. \"Open Sans\"',0,0,0,'',0,0,0,0,0,0),('27e1b49a02','2014-03-04 08:29:52.000000','2017-09-01 22:00:06.216644','Administrator','Administrator',0,'Social Login Keys','fields','DocType',5,'google_client_id','Google Client ID',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('27fd6aa7a3','2017-09-01 15:19:44.113804','2017-09-01 15:33:38.607038','Administrator','Administrator',0,'Medicamentos','fields','DocType',8,'sb_8','Descripcion',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('28196ab29b','2017-04-21 16:57:30.264478','2017-09-01 22:00:07.448430','Administrator','Administrator',0,'GSuite Settings','fields','DocType',7,'script_url','Script URL',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'',0,0,NULL,NULL,0,'https://script.google.com/macros/s/AKfycbxIFOx3301xwtF2IFPJ4pUQGqkNF3hBiBebppWkeKn6fKZRQvk/exec','If you aren\'t using own publish Google Apps Script webapp you can use the default https://script.google.com/macros/s/AKfycbxIFOx3301xwtF2IFPJ4pUQGqkNF3hBiBebppWkeKn6fKZRQvk/exec ',0,0,0,'',0,0,0,0,0,0),('2838d91b9a','2016-12-29 12:59:48.638970','2017-09-01 21:59:57.504015','Administrator','Administrator',0,'Deleted Document','fields','DocType',5,'new_name','New Name',NULL,'Read Only',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('286465fce2','2016-08-24 14:07:21.955052','2017-09-01 22:00:07.188251','Administrator','Administrator',0,'OAuth Client','fields','DocType',1,'client_id','App Client ID',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'',NULL,0,0,1,NULL,0,0,0,0,0,0),('28ca480fb6','2013-04-30 12:58:46.000000','2017-09-01 22:00:00.764927','Administrator','Administrator',0,'Website Settings','fields','DocType',13,'top_bar','Top Bar',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'',0,0,0,NULL,0,0,0,0,0,0),('28da7f9cf0','2016-09-01 01:34:34.985457','2017-09-01 22:00:03.756563','Administrator','Administrator',0,'Auto Email Report','fields','DocType',11,'filters_display','Filters Display',NULL,'HTML',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('28ef76dcd3','2013-01-10 16:34:01.000000','2017-09-01 21:59:53.056685','Administrator','Administrator',0,'Custom Field','fields','DocType',1,'dt','Document','dt','Link','Link','DocType',1,0,0,0,0,1,1,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,NULL,0,1,0,0,0,0),('294ef0277b','2014-10-30 14:23:30.958074','2017-09-01 22:00:00.187162','Administrator','Administrator',0,'Help Category','fields','DocType',4,'help_articles','Help Articles',NULL,'Int',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,1,'',0,0,0,0,0,0),('297ac87af1','2013-04-30 12:58:46.000000','2017-09-01 22:00:00.764927','Administrator','Administrator',0,'Website Settings','fields','DocType',14,'navbar_search','Include Search in Top Bar',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('2a00e46c68','2014-10-30 14:23:30.958074','2017-09-01 22:00:00.187162','Administrator','Administrator',0,'Help Category','fields','DocType',5,'route','Route',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('2a050c7696','2014-03-11 14:55:00.000000','2017-09-01 21:59:52.429552','Administrator','Administrator',0,'User','fields','DocType',24,'location','Location',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,1,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('2a42295bfa','2014-09-01 14:08:48.624556','2017-09-01 21:59:53.572628','Administrator','Administrator',0,'Web Form','fields','DocType',8,'login_required','Login Required',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('2a4777b41f','2013-01-10 16:34:31.000000','2017-09-01 22:00:03.015516','Administrator','Administrator',0,'Newsletter','fields','DocType',9,'send_attachements','Send Attachements',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'0',NULL,0,0,0,'',0,0,0,0,0,0),('2a7264925c','2013-01-10 16:34:01.000000','2017-09-01 21:59:53.056685','Administrator','Administrator',0,'Custom Field','fields','DocType',6,'column_break_6',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('2a899bacaf','2012-07-03 13:30:35.000000','2017-09-01 22:00:05.317576','Administrator','Administrator',0,'ToDo','fields','DocType',6,'owner','Allocated To',NULL,'Link',NULL,'User',0,0,0,0,0,0,0,1,0,0,0,0,NULL,NULL,NULL,0,1,NULL,NULL,0,NULL,NULL,0,1,0,NULL,0,0,0,0,0,0),('2b133ad81f','2017-02-13 17:33:25.157332','2017-09-01 21:59:54.729999','Administrator','Administrator',0,'Role Permission for Page and Report','fields','DocType',3,'report','Report',NULL,'Link',NULL,'Report',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:doc.set_role_for == \'Report\'',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('2b48fd0ec7','2012-08-02 15:17:28.000000','2017-09-01 22:00:03.294421','Administrator','Administrator',0,'Email Queue','fields','DocType',1,'sender','Sender',NULL,'Data',NULL,'Email',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('2b5e9004aa','2016-03-30 01:39:20.586927','2017-09-01 21:59:54.203506','Administrator','Administrator',0,'Portal Menu Item','fields','DocType',6,'target','Target',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('2bbc4efc2c','2013-02-22 01:28:08.000000','2017-09-01 22:00:00.692769','Administrator','Administrator',0,'Top Bar Item','fields','DocType',2,'parent_label','Parent Label',NULL,'Select',NULL,'',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'If you set this, this Item will come in a drop-down under the selected parent.',1,0,0,NULL,0,0,0,0,0,0),('2c4972bd8f','2014-03-04 08:29:52.000000','2017-09-01 22:00:06.216644','Administrator','Administrator',0,'Social Login Keys','fields','DocType',9,'github_client_secret','GitHub Client Secret',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('2caea817dd','2013-02-22 01:27:33.000000','2017-09-01 21:59:50.367790','Administrator','Administrator',0,'DocField','fields','DocType',36,'print_hide_if_no_value','Print Hide If No Value',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:[\"Int\", \"Float\", \"Currency\", \"Percent\"].indexOf(doc.fieldtype)!==-1',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('2cf8ed4a08','2013-02-18 13:36:19.000000','2017-09-01 21:59:51.696379','Administrator','Administrator',0,'DocType','fields','DocType',42,'cb31','Other Settings',NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('2d06f05c5e','2017-09-01 13:29:30.289032','2017-09-01 19:20:24.367341','Administrator','Administrator',0,'Paciente','fields','DocType',19,'dir_numero','Numero',NULL,'Int',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('2d3e869f59','2017-01-27 15:43:33.780808','2017-09-01 21:59:56.777309','Administrator','Administrator',0,'Feedback Request','fields','DocType',5,'key','Key',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('2d4551b5f0','2013-04-30 12:58:46.000000','2017-09-01 22:00:00.764927','Administrator','Administrator',0,'Website Settings','fields','DocType',3,'cb4',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('2d4560fbed','2017-09-01 13:29:30.289032','2017-09-01 19:20:24.367341','Administrator','Administrator',0,'Paciente','fields','DocType',4,'apellido_materno','Apellido Materno',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('2d4f73e730','2014-03-11 14:55:00.000000','2017-09-01 21:59:52.429552','Administrator','Administrator',0,'User','fields','DocType',56,'last_known_versions','Last Known Versions',NULL,'Text',NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Stores the JSON of last known versions of various installed apps. It is used to show release notes.',0,0,1,'',0,0,0,0,0,0),('2df9bdc458','2017-01-11 04:21:35.217943','2017-09-01 21:59:54.801850','Administrator','Administrator',0,'Custom DocPerm','fields','DocType',6,'permlevel','Level','permlevel','Int','Int',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'40px','40px',0,'0',NULL,1,0,0,'',0,0,0,0,0,0),('2e29451bb6','2013-06-10 13:17:47.000000','2017-09-01 22:00:05.629704','Administrator','Administrator',0,'Event','fields','DocType',15,'repeat_till','Repeat Till',NULL,'Date',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'repeat_this_event',0,0,NULL,NULL,0,NULL,'Leave blank to repeat always',0,0,0,NULL,0,0,0,0,0,0),('2e2b936bcb','2014-09-01 14:14:14.292173','2017-09-01 21:59:53.897718','Administrator','Administrator',0,'Web Form Field','fields','DocType',3,'label','Label',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('2e68a3a424','2014-03-11 14:55:00.000000','2017-09-01 21:59:52.429552','Administrator','Administrator',0,'User','fields','DocType',50,'login_before','Login Before',NULL,'Int',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,1,0,NULL,NULL,0,NULL,'Allow user to login only before this hour (0-24)',0,0,0,NULL,0,0,0,0,0,0),('2e743e7943','2013-02-22 01:27:32.000000','2017-09-01 22:00:04.800729','Administrator','Administrator',0,'Customize Form Field','fields','DocType',20,'collapsible','Collapsible',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:doc.fieldtype==\"Section Break\"',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('2e84916b8f','2016-09-01 01:34:34.985457','2017-09-01 22:00:03.756563','Administrator','Administrator',0,'Auto Email Report','fields','DocType',1,'report','Report',NULL,'Link',NULL,'Report',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('2eb8ae0041','2013-02-18 13:36:19.000000','2017-09-01 21:59:51.696379','Administrator','Administrator',0,'DocType','fields','DocType',36,'permissions','Permissions','permissions','Table','Table','DocPerm',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'',0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('2ec3d2ed51','2013-03-07 11:55:11.000000','2017-09-01 22:00:00.580752','Administrator','Administrator',0,'About Us Team Member','fields','DocType',2,'image_link','Image Link',NULL,'Attach',NULL,'',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'150px',NULL,0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('2f06a7d042','2013-02-22 01:27:32.000000','2017-09-01 22:00:04.800729','Administrator','Administrator',0,'Customize Form Field','fields','DocType',24,'ignore_user_permissions','Ignore User Permissions',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('2f1837dfd9','2013-01-23 19:54:43.000000','2017-09-01 22:00:07.979522','Administrator','Administrator',0,'Print Format','fields','DocType',5,'standard','Standard','standard','Select','Select','No\nYes',1,0,0,0,0,1,0,0,0,0,1,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'No',NULL,0,0,0,NULL,0,1,0,0,0,0),('2f5dd7defd','2013-06-10 13:17:47.000000','2017-09-01 22:00:05.629704','Administrator','Administrator',0,'Event','fields','DocType',16,'column_break_16',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('2f9d3fb40c','2013-01-10 16:34:31.000000','2017-09-01 22:00:03.015516','Administrator','Administrator',0,'Newsletter','fields','DocType',1,'receipient','Receipient',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('302366efd4','2013-01-29 10:47:14.000000','2017-09-01 21:59:55.016873','Administrator','Administrator',0,'Communication','fields','DocType',27,'reference_owner','Reference Owner',NULL,'Read Only',NULL,'reference_name.owner',1,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('3074737f1a','2013-01-23 19:54:43.000000','2017-09-01 22:00:07.979522','Administrator','Administrator',0,'Print Format','fields','DocType',19,'section_break_13',NULL,NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'custom_format',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('3076430dd4','2016-09-21 10:12:57.399174','2017-09-01 22:00:06.300633','Administrator','Administrator',0,'Dropbox Settings','fields','DocType',9,'dropbox_access_token','Dropbox Access Token',NULL,'Password',NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('3087e9e69f','2013-02-18 13:36:19.000000','2017-09-01 21:59:51.696379','Administrator','Administrator',0,'DocType','fields','DocType',18,'column_break_15',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'',0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('30d914f886','2013-01-29 17:55:08.000000','2017-09-01 22:00:04.634582','Administrator','Administrator',0,'Customize Form','fields','DocType',13,'title_field','Title Field',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Use this fieldname to generate title',0,0,0,'',0,0,0,0,0,0),('31066dbd68','2016-08-24 14:07:21.955052','2017-09-01 22:00:07.188251','Administrator','Administrator',0,'OAuth Client','fields','DocType',9,'cb_3',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('3106fb89eb','2016-03-30 10:04:25.828742','2017-09-01 21:59:56.668986','Administrator','Administrator',0,'User Email','fields','DocType',1,'email_account','Email Account',NULL,'Link',NULL,'Email Account',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('310cadc6c0','2016-04-14 09:41:45.892975','2017-09-01 22:00:02.933067','Administrator','Administrator',0,'Unhandled Email','fields','DocType',2,'uid','uid',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('31259c41b5','2013-02-22 01:27:32.000000','2017-09-01 22:00:04.800729','Administrator','Administrator',0,'Customize Form Field','fields','DocType',30,'in_filter','In Filter','in_filter','Check','Check',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'50px','50px',0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('31523b4823','2014-03-04 08:29:52.000000','2017-09-01 22:00:06.216644','Administrator','Administrator',0,'Social Login Keys','fields','DocType',8,'github_client_id','GitHub Client ID',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('31630a9df9','2013-02-22 01:27:33.000000','2017-09-01 21:59:50.367790','Administrator','Administrator',0,'DocField','fields','DocType',10,'in_standard_filter','In Standard Filter',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('31c81a0e33','2016-08-04 04:58:40.457416','2017-09-01 22:00:07.597872','Administrator','Administrator',0,'Integration Request','fields','DocType',4,'data','Data',NULL,'Code',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('31e1509bc2','2016-05-25 09:49:07.125394','2017-09-01 21:59:57.606277','Administrator','Administrator',0,'Tag Category','fields','DocType',3,'tagdocs','Doctypes',NULL,'Table',NULL,'Tag Doc Category',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('3224c56377','2017-01-23 16:56:25.875531','2017-09-01 21:59:56.487193','Administrator','Administrator',0,'Authentication Log','fields','DocType',5,'date','Date',NULL,'Datetime',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('32a41813c0','2013-01-29 10:47:14.000000','2017-09-01 21:59:55.016873','Administrator','Administrator',0,'Communication','fields','DocType',17,'status','Status',NULL,'Select',NULL,'Open\nReplied\nClosed\nLinked',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,'eval:doc.communication_type===\"Communication\"',0,0,NULL,NULL,0,NULL,NULL,1,1,0,'',0,0,0,0,0,0),('32de98574d','2013-01-10 16:34:01.000000','2017-09-01 21:59:53.056685','Administrator','Administrator',0,'Custom Field','fields','DocType',20,'properties','',NULL,'Column Break','Column Break',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'50%','50%',0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('32e50b6edf','2013-02-21 20:12:42.000000','2017-09-01 22:00:01.610316','Administrator','Administrator',0,'Contact Us Settings','fields','DocType',1,'introduction_section','Introduction',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('32faa5afa7','2017-04-21 16:57:30.264478','2017-09-01 22:00:07.448430','Administrator','Administrator',0,'GSuite Settings','fields','DocType',6,'google_apps_script','Google Apps Script',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,'eval:doc.enable',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('335be80501','2014-03-11 14:55:00.000000','2017-09-01 21:59:52.429552','Administrator','Administrator',0,'User','fields','DocType',43,'block_modules','Block Modules',NULL,'Table',NULL,'Block Module',0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,1,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('33786ab2a9','2017-01-24 15:46:38.366213','2017-09-01 21:59:56.229184','Administrator','Administrator',0,'Feedback Trigger','fields','DocType',9,'check_communication','Check Communication',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'1','Send Feedback Request only if there is at least one communication is available for the document.',0,0,0,'',0,0,0,0,0,0),('33ab512b4b','2013-02-22 01:27:36.000000','2017-09-01 22:00:02.249452','Administrator','Administrator',0,'Workflow Document State','fields','DocType',3,'update_field','Update Field',NULL,'Select',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('33b13418e3','2013-01-10 16:34:32.000000','2017-09-01 22:00:08.226056','Administrator','Administrator',0,'Contact','fields','DocType',17,'department','Department',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'',0,0,0,NULL,0,0,0,0,0,0),('33b3c3e5ae','2013-06-10 13:17:47.000000','2017-09-01 22:00:05.629704','Administrator','Administrator',0,'Event','fields','DocType',2,'subject','Subject',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,1,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('340b24a159','2016-02-17 12:21:16.175465','2017-09-01 21:59:57.386715','Administrator','Administrator',0,'Translation','fields','DocType',5,'target_name','Translated Text',NULL,'Code',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('3463164553','2013-01-10 16:34:32.000000','2017-09-01 22:00:08.571416','Administrator','Administrator',0,'Address','fields','DocType',12,'email_id','Email Address',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('346699fefe','2013-01-10 16:34:03.000000','2017-09-01 21:59:58.184161','Administrator','Administrator',0,'Module Def','fields','DocType',3,'restrict_to_domain','Restrict To Domain',NULL,'Link',NULL,'Domain',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('34717f66a2','2013-02-22 01:27:32.000000','2017-09-01 22:00:04.800729','Administrator','Administrator',0,'Customize Form Field','fields','DocType',1,'label_and_type','Label and Type',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('3490de4d2a','2013-03-19 12:02:15.000000','2017-09-01 22:00:00.258186','Administrator','Administrator',0,'About Us Settings','fields','DocType',3,'sb0','Org History',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('34bbe18796','2017-06-26 10:57:19.976624','2017-09-01 21:59:58.597232','Administrator','Administrator',0,'Test Runner','fields','DocType',3,'output','Output',NULL,'HTML',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('34eea35065','2013-02-21 20:12:42.000000','2017-09-01 22:00:01.610316','Administrator','Administrator',0,'Contact Us Settings','fields','DocType',3,'heading','Heading',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Default: \"Contact Us\"',0,0,0,NULL,0,0,0,0,0,0),('3549fccfe5','2016-03-30 01:40:20.001775','2017-09-01 22:00:01.167977','Administrator','Administrator',0,'Portal Settings','fields','DocType',3,'hide_standard_menu','Hide Standard Menu',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('357591e45b','2016-09-21 10:12:57.399174','2017-09-01 22:00:06.300633','Administrator','Administrator',0,'Dropbox Settings','fields','DocType',5,'app_secret_key','App Secret Key',NULL,'Password',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:!doc.dropbox_setup_via_site_config',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('357cd33c35','2014-09-01 14:08:48.624556','2017-09-01 21:59:53.572628','Administrator','Administrator',0,'Web Form','fields','DocType',9,'allow_edit','Allow Edit',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'login_required',0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('35af3ccb10','2013-01-29 10:47:14.000000','2017-09-01 21:59:55.016873','Administrator','Administrator',0,'Communication','fields','DocType',26,'reference_name','Reference Name',NULL,'Dynamic Link',NULL,'reference_doctype',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('3621ef6d5d','2013-06-10 13:17:47.000000','2017-09-01 22:00:05.629704','Administrator','Administrator',0,'Event','fields','DocType',8,'ends_on','Ends on',NULL,'Datetime',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('36d438fb9c','2013-01-28 10:06:02.000000','2017-09-01 22:00:05.001030','Administrator','Administrator',0,'Currency','fields','DocType',5,'smallest_currency_fraction_value','Smallest Currency Fraction Value',NULL,'Currency',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Smallest circulating fraction unit (coin). For e.g. 1 cent for USD and it should be entered as 0.01',0,0,0,'',0,0,0,0,0,0),('36fe5c83ca','2013-03-19 12:02:15.000000','2017-09-01 22:00:00.258186','Administrator','Administrator',0,'About Us Settings','fields','DocType',7,'team_members_heading','Team Members Heading',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'\"Team Members\" or \"Management\"',0,0,0,NULL,0,0,0,0,0,0),('382a43b6c5','2013-03-28 10:35:30.000000','2017-09-01 22:00:00.894557','Administrator','Administrator',0,'Blog Post','fields','DocType',8,'section_break_5',NULL,NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('3857eb8a95','2017-01-11 04:21:35.217943','2017-09-01 21:59:54.801850','Administrator','Administrator',0,'Custom DocPerm','fields','DocType',16,'amend','Amend','amend','Check','Check',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'32px','32px',0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('38a9ab6361','2012-07-03 13:30:35.000000','2017-09-01 22:00:05.317576','Administrator','Administrator',0,'ToDo','fields','DocType',10,'reference_type','Reference Type','reference_type','Link','Data','DocType',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('38c979bb74','2017-01-23 16:56:25.875531','2017-09-01 21:59:56.487193','Administrator','Administrator',0,'Authentication Log','fields','DocType',9,'operation','Operation',NULL,'Select',NULL,'\nLogin\nLogout',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('38f075c1ec','2013-04-30 12:58:46.000000','2017-09-01 22:00:00.764927','Administrator','Administrator',0,'Website Settings','fields','DocType',2,'home_page','Home Page',NULL,'Data',NULL,'',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Link that is the website home page. Standard Links (index, login, products, blog, about, contact)',1,0,0,NULL,0,0,0,0,0,0),('391b6ff738','2013-02-21 20:12:42.000000','2017-09-01 22:00:01.610316','Administrator','Administrator',0,'Contact Us Settings','fields','DocType',11,'state','State',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('3935f529c2','2017-01-27 15:43:33.780808','2017-09-01 21:59:56.777309','Administrator','Administrator',0,'Feedback Request','fields','DocType',7,'reference_doctype','Reference DocType',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,2,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('394ae962b4','2014-04-17 16:53:52.640856','2017-09-01 21:59:58.766477','Administrator','Administrator',0,'System Settings','fields','DocType',26,'column_break_13',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('39c92d9e37','2013-03-28 10:35:30.000000','2017-09-01 22:00:00.894557','Administrator','Administrator',0,'Blog Post','fields','DocType',11,'email_sent','Email Sent',NULL,'Check',NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('39e5e9f3dd','2013-05-24 13:41:00.000000','2017-09-01 22:00:05.180965','Administrator','Administrator',0,'Note','fields','DocType',2,'public','Public',NULL,'Check',NULL,NULL,0,0,0,1,0,0,1,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'',0,0,0,NULL,0,0,0,0,0,0),('3a05c9a6c0','2013-02-22 01:27:32.000000','2017-09-01 22:00:04.800729','Administrator','Administrator',0,'Customize Form Field','fields','DocType',13,'length','Length',NULL,'Int',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:in_list([\'Data\', \'Link\', \'Dynamic Link\', \'Password\', \'Select\', \'Read Only\', \'Attach\', \'Attach Image\'], doc.fieldtype)',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('3a523bd278','2013-01-10 16:34:01.000000','2017-09-01 21:59:53.056685','Administrator','Administrator',0,'Custom Field','fields','DocType',3,'label_help','Label Help',NULL,'HTML','HTML',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('3a729ff427','2013-01-23 19:54:43.000000','2017-09-01 22:00:07.979522','Administrator','Administrator',0,'Print Format','fields','DocType',6,'custom_format','Custom Format',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('3ab550fc24','2013-02-22 01:27:33.000000','2017-09-01 21:59:50.986087','Administrator','Administrator',0,'DocPerm','fields','DocType',20,'import','Import',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('3ac86d09fa','2012-08-02 15:17:28.000000','2017-09-01 22:00:03.294421','Administrator','Administrator',0,'Email Queue','fields','DocType',15,'unsubscribe_method','Unsubscribe Method',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('3acaa1d246','2013-02-18 13:36:19.000000','2017-09-01 21:59:51.696379','Administrator','Administrator',0,'DocType','fields','DocType',32,'hide_toolbar','Hide Toolbar','hide_toolbar','Check','Check',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('3ad39d6d57','2016-09-01 01:34:34.985457','2017-09-01 22:00:03.756563','Administrator','Administrator',0,'Auto Email Report','fields','DocType',3,'enabled','Enabled',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'1',NULL,0,0,0,'',0,0,0,0,0,0),('3b022a272e','2016-12-29 07:42:26.246725','2017-09-01 21:59:59.642605','Administrator','Administrator',0,'Website Sidebar Item','fields','DocType',1,'title','Title',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('3b12cf33d8','2013-01-10 16:34:04.000000','2017-09-01 21:59:53.403426','Administrator','Administrator',0,'Property Setter','fields','DocType',7,'field_name','Field Name',NULL,'Data',NULL,NULL,1,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:doc.doctype_or_field==\'DocField\'',0,0,NULL,NULL,0,NULL,'ID (name) of the entity whose property is to be set',0,1,0,NULL,0,0,0,0,0,0),('3b51235d1e','2014-03-11 14:55:00.000000','2017-09-01 21:59:52.429552','Administrator','Administrator',0,'User','fields','DocType',51,'restrict_ip','Restrict IP',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,1,0,NULL,NULL,0,NULL,'Restrict user from this IP address only. Multiple IP addresses can be added by separating with commas. Also accepts partial IP addresses like (111.111.111)',0,0,0,NULL,0,0,0,0,0,0),('3b67932b1c','2013-01-10 16:34:04.000000','2017-09-01 21:59:53.403426','Administrator','Administrator',0,'Property Setter','fields','DocType',1,'help','Help',NULL,'HTML',NULL,'<div class=\"alert\">Please don\'t update it as it can mess up your form. Use the Customize Form View and Custom Fields to set properties!</div>',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('3b7dcafcaa','2013-02-18 13:36:19.000000','2017-09-01 21:59:51.696379','Administrator','Administrator',0,'DocType','fields','DocType',11,'image_view','Image View',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval: doc.image_field',0,0,NULL,NULL,0,'0',NULL,0,0,0,'',0,0,0,0,0,0),('3bab5874ae','2014-09-11 12:04:34.163728','2017-09-01 22:00:02.520524','Administrator','Administrator',0,'Email Account','fields','DocType',29,'default_outgoing','Default Outgoing',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'enable_outgoing',0,0,NULL,NULL,0,NULL,'Notifications and bulk mails will be sent from this outgoing server.',0,0,0,'',0,0,0,0,0,0),('3bb14bb1f4','2017-01-23 16:56:25.875531','2017-09-01 21:59:56.487193','Administrator','Administrator',0,'Authentication Log','fields','DocType',3,'full_name','Full Name',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('3bdf840712','2017-09-01 13:29:30.289032','2017-09-01 19:20:24.367341','Administrator','Administrator',0,'Paciente','fields','DocType',22,'dir_sector','Sector',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('3bf17d3a42','2013-01-29 17:55:08.000000','2017-09-01 22:00:04.634582','Administrator','Administrator',0,'Customize Form','fields','DocType',3,'label','Change Label (via Custom Translation)',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('3c235d7f85','2014-03-11 14:55:00.000000','2017-09-01 21:59:52.429552','Administrator','Administrator',0,'User','fields','DocType',59,'fb_userid','Facebook User ID',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,1,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,NULL,0,0,0,0,0,0),('3c49555c6e','2014-03-11 14:55:00.000000','2017-09-01 21:59:52.429552','Administrator','Administrator',0,'User','fields','DocType',39,'background_image','Background Image',NULL,'Attach',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('3ca09e86f1','2013-02-18 13:36:19.000000','2017-09-01 21:59:51.696379','Administrator','Administrator',0,'DocType','fields','DocType',14,'fields','Fields','fields','Table','Table','DocField',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('3cad8867dc','2014-09-11 12:04:34.163728','2017-09-01 22:00:02.520524','Administrator','Administrator',0,'Email Account','fields','DocType',6,'email_account_name','Email Account Name',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'e.g. \"Support\", \"Sales\", \"Jerry Yang\"',0,0,0,'',0,0,0,0,0,0),('3ccabd959b','2013-01-29 17:55:08.000000','2017-09-01 22:00:04.634582','Administrator','Administrator',0,'Customize Form','fields','DocType',9,'quick_entry','Quick Entry',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'1',NULL,0,0,0,'',0,0,0,0,0,0),('3ced8a2337','2013-01-10 16:34:04.000000','2017-09-01 21:59:53.403426','Administrator','Administrator',0,'Property Setter','fields','DocType',10,'default_value','Default Value',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('3d14dc2634','2013-03-28 10:35:30.000000','2017-09-01 22:00:00.324049','Administrator','Administrator',0,'Web Page','fields','DocType',3,'route','Route',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,1,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('3d2de5741b','2016-02-22 03:47:45.387068','2017-09-01 22:00:05.878431','Administrator','Administrator',0,'Desktop Icon','fields','DocType',2,'label','Label',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('3d7aef0c90','2014-06-19 05:20:26.331041','2017-09-01 22:00:03.503215','Administrator','Administrator',0,'Standard Reply','fields','DocType',2,'response','Response',NULL,'Text Editor',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('3db178b62f','2017-03-13 09:20:56.387135','2017-09-01 22:00:03.413737','Administrator','Administrator',0,'Email Rule','fields','DocType',1,'email_id','Email ID',NULL,'Data',NULL,'Email',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('3deaf363a0','2015-02-04 04:33:36.330477','2017-09-01 21:59:55.605388','Administrator','Administrator',0,'DocShare','fields','DocType',3,'share_name','Document Name',NULL,'Dynamic Link',NULL,'share_doctype',1,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('3e344e1502','2014-04-17 16:53:52.640856','2017-09-01 21:59:58.766477','Administrator','Administrator',0,'System Settings','fields','DocType',6,'setup_complete','Setup Complete',NULL,'Check',NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('3e3935cf16','2016-08-24 14:07:21.955052','2017-09-01 22:00:07.188251','Administrator','Administrator',0,'OAuth Client','fields','DocType',10,'redirect_uris','Redirect URIs',NULL,'Text',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'URIs for receiving authorization code once the user allows access, as well as failure responses. Typically a REST endpoint exposed by the Client App.\n<br>e.g. http://hostname//api/method/frappe.www.login.login_via_facebook',0,0,0,NULL,0,0,0,0,0,0),('3e6eb2a7ca','2013-02-22 01:27:33.000000','2017-09-01 21:59:50.986087','Administrator','Administrator',0,'DocPerm','fields','DocType',8,'section_break_4','Permissions',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('3e76596239','2013-01-10 16:34:31.000000','2017-09-01 22:00:03.015516','Administrator','Administrator',0,'Newsletter','fields','DocType',3,'send_from','Sender',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,1,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'',0,0,0,NULL,0,0,1,0,0,0),('3ea42e1857','2014-07-11 17:19:37.037109','2017-09-01 22:00:03.693814','Administrator','Administrator',0,'Email Alert Recipient','fields','DocType',3,'cc','CC',NULL,'Code',NULL,'Email',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Optional: Always send to these ids. Each Email Address on a new row',1,0,0,NULL,0,0,0,0,0,0),('3ea89ad31d','2017-04-21 16:57:30.264478','2017-09-01 22:00:07.448430','Administrator','Administrator',0,'GSuite Settings','fields','DocType',3,'client_id','Client ID',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('3eca6ec417','2014-08-22 16:12:17.249590','2017-09-01 21:59:55.520947','Administrator','Administrator',0,'Language','fields','DocType',1,'language_code','Language Code',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('3efe05af5c','2013-01-29 10:47:14.000000','2017-09-01 21:59:55.016873','Administrator','Administrator',0,'Communication','fields','DocType',2,'section_break_10','To and CC',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,0,NULL,'',NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('3f15ef5ca5','2012-11-22 17:45:46.000000','2017-09-01 22:00:07.822928','Administrator','Administrator',0,'Letter Head','fields','DocType',5,'footer','Footer',NULL,'Text Editor',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'letter_head_name',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('3f4961a239','2013-03-28 10:35:30.000000','2017-09-01 22:00:00.324049','Administrator','Administrator',0,'Web Page','fields','DocType',24,'sb2','Header and Description',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,'eval:!doc.__islocal',0,0,NULL,NULL,0,NULL,'',0,0,0,NULL,0,0,0,0,0,0),('3f62a9a2c6','2015-11-28 00:57:39.766888','2017-09-01 21:59:58.381641','Administrator','Administrator',0,'Error Snapshot','fields','DocType',10,'exception','Exception',NULL,'Code',NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('3f6525fa2f','2016-08-24 14:07:21.955052','2017-09-01 22:00:07.188251','Administrator','Administrator',0,'OAuth Client','fields','DocType',8,'scopes','Scopes',NULL,'Text',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'all openid','A list of resources which the Client App will have access to after the user allows it.<br> e.g. project',0,0,0,NULL,0,0,0,0,0,0),('3fd09fbc0e','2013-03-28 10:35:30.000000','2017-09-01 22:00:00.324049','Administrator','Administrator',0,'Web Page','fields','DocType',6,'published','Published',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('3fe1930c54','2012-12-20 17:16:49.000000','2017-09-01 21:59:56.947669','Administrator','Administrator',0,'Page','fields','DocType',1,'system_page','System Page',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('3ff3a3c726','2017-05-03 16:28:11.295095','2017-09-01 21:59:57.685199','Administrator','Administrator',0,'Domain Settings','fields','DocType',2,'domains_html','Domains',NULL,'HTML',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('4010ec9a21','2017-01-11 04:21:35.217943','2017-09-01 21:59:54.801850','Administrator','Administrator',0,'Custom DocPerm','fields','DocType',25,'email','Email',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'1',NULL,0,0,0,'',0,0,0,0,0,0),('4017156aba','2013-01-23 19:54:43.000000','2017-09-01 22:00:07.979522','Administrator','Administrator',0,'Print Format','fields','DocType',15,'font','Font',NULL,'Select',NULL,'Default\nArial\nHelvetica\nVerdana\nMonospace',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:!doc.custom_format',0,0,NULL,NULL,0,'Default',NULL,0,0,0,'',0,0,0,0,0,0),('4060f6a9b2','2016-09-22 04:16:48.829658','2017-09-01 22:00:06.105316','Administrator','Administrator',0,'LDAP Settings','fields','DocType',10,'ldap_username_field','LDAP Username Field',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('40d1de816b','2016-09-20 03:44:03.799402','2017-09-01 22:00:07.103022','Administrator','Administrator',0,'Razorpay Settings','fields','DocType',3,'redirect_to','Redirect To',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Mention transaction completion page URL',0,0,0,'',0,0,0,0,0,0),('40e753061c','2014-03-11 14:55:00.000000','2017-09-01 21:59:52.429552','Administrator','Administrator',0,'User','fields','DocType',14,'time_zone','Timezone',NULL,'Select',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'',0,0,0,NULL,0,0,0,0,0,0),('412b4e5895','2013-01-10 16:34:32.000000','2017-09-01 22:00:08.226056','Administrator','Administrator',0,'Contact','fields','DocType',8,'salutation','Salutation',NULL,'Link',NULL,'Salutation',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('41387f0d24','2013-01-29 10:47:14.000000','2017-09-01 21:59:55.016873','Administrator','Administrator',0,'Communication','fields','DocType',7,'cc','CC',NULL,'Code',NULL,'Email',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:doc.communication_medium===\"Email\"',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('413b74e6df','2015-11-28 00:57:39.766888','2017-09-01 21:59:58.381641','Administrator','Administrator',0,'Error Snapshot','fields','DocType',2,'seen','Seen',NULL,'Check',NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,1,0,0,0,0),('4143e1ac9d','2015-11-28 00:57:39.766888','2017-09-01 21:59:58.381641','Administrator','Administrator',0,'Error Snapshot','fields','DocType',6,'etype','Exception Type',NULL,'Data',NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('41618d2888','2013-03-09 15:45:57.000000','2017-09-01 21:59:57.830003','Administrator','Administrator',0,'Report','fields','DocType',1,'report_name','Report Name',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('4196e089cf','2017-01-24 15:46:38.366213','2017-09-01 21:59:56.229184','Administrator','Administrator',0,'Feedback Trigger','fields','DocType',11,'column_break_7',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('41a55a42db','2014-04-17 16:53:52.640856','2017-09-01 21:59:58.766477','Administrator','Administrator',0,'System Settings','fields','DocType',11,'float_precision','Float Precision',NULL,'Select',NULL,'\n2\n3\n4\n5\n6\n7\n8\n9',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('41aecfc694','2014-07-17 06:54:20.782907','2017-09-01 22:00:07.719476','Administrator','Administrator',0,'Print Settings','fields','DocType',1,'pdf_settings','PDF Settings',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('41c93328b6','2017-09-01 13:29:30.289032','2017-09-01 19:20:24.367341','Administrator','Administrator',0,'Paciente','fields','DocType',26,'alergias','Alergias',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('41e2f68850','2017-01-11 04:21:35.217943','2017-09-01 21:59:54.801850','Administrator','Administrator',0,'Custom DocPerm','fields','DocType',20,'import','Import',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('420f38860d','2016-09-22 04:16:48.829658','2017-09-01 22:00:06.105316','Administrator','Administrator',0,'LDAP Settings','fields','DocType',8,'ldap_first_name_field','LDAP First Name Field',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('4210378a0e','2014-09-11 12:04:34.163728','2017-09-01 22:00:02.520524','Administrator','Administrator',0,'Email Account','fields','DocType',36,'enable_auto_reply','Enable Auto Reply',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('425c4422b3','2013-01-10 16:34:01.000000','2017-09-01 21:59:53.056685','Administrator','Administrator',0,'Custom Field','fields','DocType',37,'ignore_xss_filter','Ignore XSS Filter',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Don\'t HTML Encode HTML tags like &lt;script&gt; or just characters like &lt; or &gt;, as they could be intentionally used in this field',0,0,0,'',0,0,0,0,0,0),('42942f5e60','2014-03-04 08:29:52.000000','2017-09-01 22:00:06.216644','Administrator','Administrator',0,'Social Login Keys','fields','DocType',3,'facebook_client_secret','Facebook Client Secret',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('42d3fc2996','2017-09-01 15:56:17.943779','2017-09-01 16:25:52.923943','Administrator','Administrator',0,'Empresa','fields','DocType',3,'nombre','Nombre',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,1,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('43846bbe86','2014-03-11 14:55:00.000000','2017-09-01 21:59:52.429552','Administrator','Administrator',0,'User','fields','DocType',33,'email_settings','Email Settings',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,'enabled',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('438e274991','2017-05-03 15:07:39.752820','2017-09-01 21:59:56.400361','Administrator','makarand@erpnext.com',0,'Domain','fields','DocType',1,'domain','Domain',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('43c242d4a4','2016-09-01 01:34:34.985457','2017-09-01 22:00:03.756563','Administrator','Administrator',0,'Auto Email Report','fields','DocType',17,'column_break_13',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('43e98ffc5e','2014-04-17 16:53:52.640856','2017-09-01 21:59:58.766477','Administrator','Administrator',0,'System Settings','fields','DocType',20,'apply_strict_user_permissions','Apply Strict User Permissions',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'0','If Apply Strict User Permission is checked and User Permission is defined for a DocType for a User, then all the documents where value of the link is blank, will not be shown to that User',0,0,0,'',0,0,0,0,0,0),('43f5c45c5a','2017-01-11 04:21:35.217943','2017-09-01 21:59:54.801850','Administrator','Administrator',0,'Custom DocPerm','fields','DocType',7,'user_permission_doctypes','User Permission DocTypes',NULL,'Code',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'',0,0,NULL,NULL,0,NULL,'JSON list of DocTypes used to apply User Permissions. If empty, all linked DocTypes will be used to apply User Permissions.',0,0,1,'',0,0,0,0,0,0),('4402b0d1b4','2017-09-01 13:29:30.289032','2017-09-01 19:20:24.367341','Administrator','Administrator',0,'Paciente','fields','DocType',5,'column_break_5',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('44313ea28a','2014-03-04 08:29:52.000000','2017-09-01 22:00:06.216644','Administrator','Administrator',0,'Social Login Keys','fields','DocType',10,'frappe','Frappe',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('447432c9b0','2013-02-22 01:27:32.000000','2017-09-01 22:00:04.800729','Administrator','Administrator',0,'Customize Form Field','fields','DocType',26,'report_hide','Report Hide','report_hide','Check','Check',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('4491735592','2014-03-11 14:55:00.000000','2017-09-01 21:59:52.429552','Administrator','Administrator',0,'User','fields','DocType',53,'last_login','Last Login','last_login','Read Only','Read Only',NULL,0,0,0,0,0,0,0,0,0,0,1,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,NULL,0,0,0,0,0,0),('44dce3d535','2017-02-13 17:33:25.157332','2017-09-01 21:59:55.882960','Administrator','Administrator',0,'User Permission for Page and Report','fields','DocType',4,'roles_permission','Roles Permission',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('45017ae109','2013-01-28 10:06:02.000000','2017-09-01 22:00:05.001030','Administrator','Administrator',0,'Currency','fields','DocType',3,'fraction','Fraction',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Sub-currency. For e.g. \"Cent\"',1,0,0,NULL,0,0,0,0,0,0),('4556e57409','2013-04-30 12:58:46.000000','2017-09-01 22:00:00.764927','Administrator','Administrator',0,'Website Settings','fields','DocType',29,'column_break_28',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('457a420945','2012-12-28 10:49:55.000000','2017-09-01 22:00:02.091249','Administrator','Administrator',0,'Workflow','fields','DocType',8,'transitions','Transitions',NULL,'Table',NULL,'Workflow Transition',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Rules defining transition of state in the workflow.',0,0,0,NULL,0,0,0,0,0,0),('4627309ef8','2017-07-17 14:25:27.881871','2017-09-01 21:59:57.736696','Administrator','Administrator',0,'User Permission','fields','DocType',3,'for_value','For Value',NULL,'Dynamic Link',NULL,'allow',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,1,0,'',0,0,0,0,0,0),('46364624a8','2013-02-22 01:27:36.000000','2017-09-01 22:00:01.991359','Administrator','Administrator',0,'Workflow Transition','fields','DocType',4,'allowed','Allowed',NULL,'Link',NULL,'Role',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'200px','200px',0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('4680ceb2a5','2013-01-29 10:47:14.000000','2017-09-01 21:59:55.016873','Administrator','Administrator',0,'Communication','fields','DocType',23,'sender_full_name','From Full Name',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('46bee8078a','2013-02-22 01:27:33.000000','2017-09-01 21:59:50.986087','Administrator','Administrator',0,'DocPerm','fields','DocType',13,'column_break_8',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('46ce1fd49e','2015-12-15 22:26:45.221162','2017-09-01 21:59:55.974920','Administrator','Administrator',0,'Payment Gateway','fields','DocType',1,'gateway','Gateway',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('4701f83115','2013-02-22 01:27:32.000000','2017-09-01 22:00:04.800729','Administrator','Administrator',0,'Customize Form Field','fields','DocType',3,'fieldtype','Type','fieldtype','Select','Select','Attach\nAttach Image\nButton\nCheck\nCode\nColor\nColumn Break\nCurrency\nData\nDate\nDatetime\nDynamic Link\nFloat\nFold\nHeading\nHTML\nImage\nInt\nLink\nLong Text\nPassword\nPercent\nRead Only\nSection Break\nSelect\nSignature\nSmall Text\nTable\nText\nText Editor\nTime',1,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'Data',NULL,1,0,0,NULL,0,0,0,0,0,0),('4726af9599','2017-09-01 15:56:17.943779','2017-09-01 16:25:52.923943','Administrator','Administrator',0,'Empresa','fields','DocType',5,'column_break_5',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('4728719b28','2015-03-18 09:41:20.216319','2017-09-01 22:00:04.433960','Administrator','Administrator',0,'Email Unsubscribe','fields','DocType',4,'global_unsubscribe','Global Unsubscribe',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('47334dc9ae','2013-01-10 16:34:32.000000','2017-09-01 22:00:08.571416','Administrator','Administrator',0,'Address','fields','DocType',9,'country','Country',NULL,'Link',NULL,'Country',1,0,0,0,0,1,0,1,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,1,0,NULL,0,0,0,0,0,0),('479d296e64','2013-01-10 16:34:01.000000','2017-09-01 21:59:53.056685','Administrator','Administrator',0,'Custom Field','fields','DocType',19,'columns','Columns',NULL,'Int',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Number of columns for a field in a List View or a Grid (Total Columns should be less than 11)',0,0,0,'',0,0,0,0,0,0),('47c6014ea1','2013-01-17 11:36:45.000000','2017-09-01 21:59:57.300779','Administrator','Administrator',0,'Patch Log','fields','DocType',1,'patch','Patch',NULL,'Code',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('4810d1944a','2016-02-22 03:47:45.387068','2017-09-01 22:00:05.878431','Administrator','Administrator',0,'Desktop Icon','fields','DocType',10,'section_break_7',NULL,NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('482c1965e0','2016-09-21 10:12:57.399174','2017-09-01 22:00:06.300633','Administrator','Administrator',0,'Dropbox Settings','fields','DocType',1,'enabled','Enabled',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('4833690d6c','2014-09-01 14:08:48.624556','2017-09-01 21:59:53.572628','Administrator','Administrator',0,'Web Form','fields','DocType',31,'column_break_28',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('48383b0f87','2013-03-28 10:35:30.000000','2017-09-01 22:00:00.324049','Administrator','Administrator',0,'Web Page','fields','DocType',17,'settings','Settings',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('48736bb405','2013-01-23 19:54:43.000000','2017-09-01 22:00:07.979522','Administrator','Administrator',0,'Print Format','fields','DocType',11,'align_labels_left','Align Labels to the Left',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'0',NULL,0,0,0,'',0,0,0,0,0,0),('48977fd2bc','2013-01-10 16:34:32.000000','2017-09-01 22:00:08.571416','Administrator','Administrator',0,'Address','fields','DocType',3,'address_type','Address Type',NULL,'Select',NULL,'Billing\nShipping\nOffice\nPersonal\nPlant\nPostal\nShop\nSubsidiary\nWarehouse\nCurrent\nPermanent\nOther',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,1,0,NULL,0,0,0,0,0,0),('48ad4298d8','2013-01-10 16:34:01.000000','2017-09-01 21:59:53.056685','Administrator','Administrator',0,'Custom Field','fields','DocType',34,'bold','Bold',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('48bab787df','2013-03-28 10:35:30.000000','2017-09-01 22:00:00.894557','Administrator','Administrator',0,'Blog Post','fields','DocType',1,'title','Title',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,1,0,0,1,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('48c07761e8','2013-03-28 10:35:30.000000','2017-09-01 22:00:00.324049','Administrator','Administrator',0,'Web Page','fields','DocType',21,'column_break_20',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('48cb7b174b','2015-02-18 12:46:38.168929','2017-09-01 21:59:59.903705','Administrator','Administrator',0,'Website Theme','fields','DocType',8,'apply_text_styles','Apply Text Styles',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('48dfd3160c','2014-04-17 16:53:52.640856','2017-09-01 21:59:58.766477','Administrator','Administrator',0,'System Settings','fields','DocType',29,'allow_error_traceback','Show Full Error and Allow Reporting of Issues to the Developer',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'1','',0,0,0,'',0,0,0,0,0,0),('490302ce22','2014-09-11 12:04:34.163728','2017-09-01 22:00:02.520524','Administrator','Administrator',0,'Email Account','fields','DocType',43,'no_failed','no failed attempts',NULL,'Int',NULL,NULL,0,1,0,0,0,0,0,0,0,0,1,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('4912e7bdeb','2013-01-29 17:55:08.000000','2017-09-01 22:00:04.634582','Administrator','Administrator',0,'Customize Form','fields','DocType',12,'column_break_5',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('4932d93f51','2014-09-01 14:08:48.624556','2017-09-01 21:59:53.572628','Administrator','Administrator',0,'Web Form','fields','DocType',13,'print_format','Print Format',NULL,'Link',NULL,'Print Format',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'allow_print',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('4996c4bbfb','2013-01-23 19:54:43.000000','2017-09-01 22:00:07.979522','Administrator','Administrator',0,'Print Format','fields','DocType',17,'css','Custom CSS',NULL,'Code',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('49ccf29a01','2016-09-01 01:34:34.985457','2017-09-01 22:00:03.756563','Administrator','Administrator',0,'Auto Email Report','fields','DocType',7,'send_if_data','Send only if there is any data',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'1',NULL,0,0,0,'',0,0,0,0,0,0),('49de3b4812','2014-09-01 14:08:48.624556','2017-09-01 21:59:53.572628','Administrator','Administrator',0,'Web Form','fields','DocType',5,'column_break_4',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('49f2c95ac6','2013-01-19 10:23:30.000000','2017-09-01 22:00:05.106860','Administrator','Administrator',0,'Country','fields','DocType',3,'time_zones','Time Zones',NULL,'Text',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('4a3611d96f','2014-04-17 16:53:52.640856','2017-09-01 21:59:58.766477','Administrator','Administrator',0,'System Settings','fields','DocType',12,'currency_precision','Currency Precision',NULL,'Select',NULL,'\n1\n2\n3\n4\n5\n6\n7\n8\n9',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'If not set, the currency precision will depend on number format',0,0,0,'',0,0,0,0,0,0),('4a5f1ad301','2013-03-09 15:45:57.000000','2017-09-01 21:59:57.830003','Administrator','Administrator',0,'Report','fields','DocType',13,'javascript','Javascript',NULL,'Code',NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'',0,0,NULL,NULL,0,NULL,'JavaScript Format: frappe.query_reports[\'REPORTNAME\'] = {}',0,0,0,NULL,0,0,0,0,0,0),('4a7c3cf988','2013-01-28 10:06:02.000000','2017-09-01 22:00:05.001030','Administrator','Administrator',0,'Currency','fields','DocType',2,'enabled','Enabled',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('4abc3a62cb','2014-07-11 17:18:09.923399','2017-09-01 22:00:03.128353','Administrator','Administrator',0,'Email Alert','fields','DocType',3,'subject','Subject',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'To add dynamic subject, use jinja tags like\n\n<div><pre><code>{{ doc.name }} Delivered</code></pre></div>',1,0,0,NULL,0,0,1,0,0,0),('4b04106f24','2014-09-01 14:08:48.624556','2017-09-01 21:59:53.572628','Administrator','Administrator',0,'Web Form','fields','DocType',3,'doc_type','Select DocType',NULL,'Link',NULL,'DocType',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,1,0,NULL,0,0,0,0,0,0),('4b11422cb0','2014-09-01 14:08:48.624556','2017-09-01 21:59:53.572628','Administrator','Administrator',0,'Web Form','fields','DocType',24,'show_sidebar','Show Sidebar',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'1',NULL,0,0,0,'',0,0,0,0,0,0),('4b71010e98','2014-09-11 12:04:34.163728','2017-09-01 22:00:02.520524','Administrator','Administrator',0,'Email Account','fields','DocType',2,'login_id_is_different','Use Different Email Login ID',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('4bcb6b2088','2016-09-03 11:42:42.575525','2017-09-01 22:00:06.180317','Administrator','Administrator',0,'OAuth Provider Settings','fields','DocType',1,'skip_authorization','Skip Authorization',NULL,'Select',NULL,'Force\nAuto',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('4cf095095a','2014-09-01 14:08:48.624556','2017-09-01 21:59:53.572628','Administrator','Administrator',0,'Web Form','fields','DocType',6,'is_standard','Is Standard',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('4cf6ba6a0b','2016-09-01 01:34:34.985457','2017-09-01 22:00:03.756563','Administrator','Administrator',0,'Auto Email Report','fields','DocType',20,'section_break_15','Message',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('4d233bba4a','2016-09-21 10:12:57.399174','2017-09-01 22:00:06.300633','Administrator','Administrator',0,'Dropbox Settings','fields','DocType',2,'send_notifications_to','Send Notifications To',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('4d5ee484c6','2012-07-03 13:30:35.000000','2017-09-01 22:00:05.317576','Administrator','Administrator',0,'ToDo','fields','DocType',12,'column_break_10',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('4dc0214c05','2013-02-22 01:27:32.000000','2017-09-01 22:00:04.800729','Administrator','Administrator',0,'Customize Form Field','fields','DocType',11,'column_break_7',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('4dc9a8b7fc','2013-04-30 12:58:46.000000','2017-09-01 22:00:00.764927','Administrator','Administrator',0,'Website Settings','fields','DocType',17,'banner_html','Banner HTML',NULL,'Code',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Banner is above the Top Menu Bar.',0,0,0,NULL,0,0,0,0,0,0),('4dde7db72b','2014-10-30 14:25:53.780105','2017-09-01 22:00:01.066008','Administrator','Administrator',0,'Help Article','fields','DocType',9,'likes','Likes',NULL,'Int',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('4deb336e5f','2013-03-09 15:45:57.000000','2017-09-01 21:59:57.830003','Administrator','Administrator',0,'Report','fields','DocType',5,'add_total_row','Add Total Row',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('4dff35c7cb','2017-04-21 16:57:30.264478','2017-09-01 22:00:07.448430','Administrator','Administrator',0,'GSuite Settings','fields','DocType',8,'script_code','Script Code',NULL,'HTML',NULL,'<code>// ERPNEXT GSuite integration\n//\n\nfunction doGet(e){\n  return ContentService.createTextOutput(\'ok\');\n}\n\nfunction doPost(e) {\n  var p = JSON.parse(e.postData.contents);\n\n  switch(p.exec){\n    case \'new\':\n      var url = createDoc(p);\n      result = { \'url\': url };\n      break;\n    case \'test\':\n      result = { \'test\':\'ping\' , \'version\':\'1.0\'}\n  }\n  return ContentService.createTextOutput(JSON.stringify(result)).setMimeType(ContentService.MimeType.JSON);\n}\n\nfunction replaceVars(body,p){\n  for (key in p) {\n    if (p.hasOwnProperty(key)) {\n      if (p[key] != null) {\n        body.replaceText(\'{{\'+key+\'}}\', p[key]);\n      }\n    }\n  }    \n}\n\nfunction createDoc(p) {\n  if(p.destination){\n    var folder = DriveApp.getFolderById(p.destination);\n  } else {\n    var folder = DriveApp.getRootFolder();\n  }\n  var template = DriveApp.getFileById( p.template )\n  var newfile = template.makeCopy( p.filename , folder );\n\n  switch(newfile.getMimeType()){\n    case MimeType.GOOGLE_DOCS:\n      var body = DocumentApp.openById(newfile.getId()).getBody();\n      replaceVars(body,p.vars);\n      break;\n    case MimeType.GOOGLE_SHEETS:\n      //TBD\n    case MimeType.GOOGLE_SLIDES:\n      //TBD\n  }\n  return newfile.getUrl()\n}\n\n</code>',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'','Copy and paste this code into and empty Code.gs in your project at script.google.com',0,0,1,'',0,0,0,0,0,0),('4e222abed4','2014-03-11 14:55:00.000000','2017-09-01 21:59:52.429552','Administrator','Administrator',0,'User','fields','DocType',25,'column_break_22',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('4e3ed6ad63','2013-03-08 09:41:11.000000','2017-09-01 22:00:01.501531','Administrator','Administrator',0,'Blog Category','fields','DocType',1,'category_name','Category Name',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('4e40190817','2013-01-29 10:47:14.000000','2017-09-01 21:59:55.016873','Administrator','Administrator',0,'Communication','fields','DocType',28,'email_account','Email Account',NULL,'Link',NULL,'Email Account',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:doc.communication_medium===\"Email\"',0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('4e5ff5d788','2014-10-30 14:25:53.780105','2017-09-01 22:00:01.066008','Administrator','Administrator',0,'Help Article','fields','DocType',3,'published','Published',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('4e9fde977e','2013-02-22 01:27:33.000000','2017-09-01 21:59:50.367790','Administrator','Administrator',0,'DocField','fields','DocType',19,'depends_on','Display Depends On','depends_on','Code','Data',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,255,0,0,0,0,0),('4ebd78d336','2012-07-03 13:30:35.000000','2017-09-01 22:00:05.317576','Administrator','Administrator',0,'ToDo','fields','DocType',13,'role','Role','role','Link','Link','Role',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('4ecac460b6','2016-09-22 04:16:48.829658','2017-09-01 22:00:06.105316','Administrator','Administrator',0,'LDAP Settings','fields','DocType',4,'base_dn','Base Distinguished Name (DN)',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('4f031972a2','2017-09-01 13:29:30.289032','2017-09-01 19:20:24.367341','Administrator','Administrator',0,'Paciente','fields','DocType',31,'foto','Foto',NULL,'Attach Image',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('4f3c0de345','2013-01-23 19:54:43.000000','2017-09-01 22:00:07.979522','Administrator','Administrator',0,'Print Format','fields','DocType',4,'column_break_3',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('4f48991e11','2013-01-23 19:54:43.000000','2017-09-01 22:00:07.979522','Administrator','Administrator',0,'Print Format','fields','DocType',13,'line_breaks','Show Line Breaks after Sections',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'0',NULL,0,0,0,'',0,0,0,0,0,0),('4f55476eda','2012-12-12 11:19:22.000000','2017-09-01 21:59:54.402066','Administrator','Administrator',0,'File','fields','DocType',4,'preview_html','Preview HTML',NULL,'HTML',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('4fd782ba15','2013-02-22 01:27:33.000000','2017-09-01 21:59:50.986087','Administrator','Administrator',0,'DocPerm','fields','DocType',12,'delete','Delete',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'1',NULL,1,0,0,NULL,0,0,0,0,0,0),('5020bd30ef','2013-01-29 17:55:08.000000','2017-09-01 22:00:04.634582','Administrator','Administrator',0,'Customize Form','fields','DocType',21,'fields','Fields',NULL,'Table',NULL,'Customize Form Field',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,1,0),('502a9b46fa','2013-01-10 16:34:32.000000','2017-09-01 22:00:08.571416','Administrator','Administrator',0,'Address','fields','DocType',7,'county','County',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('5050f41c7b','2014-10-30 14:25:53.780105','2017-09-01 22:00:01.066008','Administrator','Administrator',0,'Help Article','fields','DocType',8,'content','Content',NULL,'Text Editor',NULL,NULL,0,0,0,0,0,1,0,1,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('505f646a0c','2013-02-22 01:27:33.000000','2017-09-01 21:59:50.986087','Administrator','Administrator',0,'DocPerm','fields','DocType',4,'if_owner','If user is the owner',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Apply this rule if the User is the Owner',0,0,0,'',0,0,0,0,0,0),('506c131c07','2016-04-14 09:41:45.892975','2017-09-01 22:00:02.933067','Administrator','Administrator',0,'Unhandled Email','fields','DocType',4,'message_id','Message-id',NULL,'Code',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('50a0eb34e0','2013-02-22 01:27:33.000000','2017-09-01 21:59:50.367790','Administrator','Administrator',0,'DocField','fields','DocType',34,'no_copy','No Copy','no_copy','Check','Check',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'50px','50px',0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('50a5143e2e','2013-06-10 13:17:47.000000','2017-09-01 22:00:05.629704','Administrator','Administrator',0,'Event','fields','DocType',3,'event_type','Event Type','event_type','Select','Select','Private\nPublic\nCancel',1,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,1,0,NULL,0,0,0,0,0,0),('50a7558fe2','2016-08-24 14:12:13.647159','2017-09-01 22:00:07.302043','Administrator','Administrator',0,'OAuth Authorization Code','fields','DocType',2,'user','User',NULL,'Link',NULL,'User',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('50ef702c58','2013-04-30 12:58:46.000000','2017-09-01 22:00:00.764927','Administrator','Administrator',0,'Website Settings','fields','DocType',24,'google_analytics_id','Google Analytics ID',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Add Google Analytics ID: eg. UA-89XXX57-1. Please search help on Google Analytics for more information.',0,0,0,NULL,0,0,0,0,0,0),('5148506aac','2012-12-12 11:19:22.000000','2017-09-01 21:59:54.402066','Administrator','Administrator',0,'File','fields','DocType',3,'preview','Preview',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('514e1ac76b','2013-03-19 12:02:15.000000','2017-09-01 22:00:00.258186','Administrator','Administrator',0,'About Us Settings','fields','DocType',2,'company_introduction','Company Introduction',NULL,'Text Editor',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Introduce your company to the website visitor.',1,0,0,NULL,0,0,0,0,0,0),('5160ddd6c3','2013-01-29 17:55:08.000000','2017-09-01 22:00:04.634582','Administrator','Administrator',0,'Customize Form','fields','DocType',1,'doc_type','Enter Form Type',NULL,'Link',NULL,'DocType',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('5185307e0b','2013-02-21 20:12:42.000000','2017-09-01 22:00:01.610316','Administrator','Administrator',0,'Contact Us Settings','fields','DocType',2,'forward_to_email','Forward To Email Address',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Send enquiries to this email address',0,0,0,NULL,0,0,0,0,0,0),('51949629bc','2017-01-11 04:21:35.217943','2017-09-01 21:59:54.801850','Administrator','Administrator',0,'Custom DocPerm','fields','DocType',11,'create','Create','create','Check','Check',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'32px','32px',0,'1',NULL,1,0,0,'',0,0,0,0,0,0),('5212d9d007','2013-01-29 10:47:14.000000','2017-09-01 21:59:55.016873','Administrator','Administrator',0,'Communication','fields','DocType',19,'additional_info','More Information',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('5257e056c2','2013-02-22 01:27:33.000000','2017-09-01 21:59:50.367790','Administrator','Administrator',0,'DocField','fields','DocType',13,'collapsible','Collapsible',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:doc.fieldtype===\"Section Break\"',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',255,0,0,0,0,0),('526d9e84f7','2017-01-23 16:56:25.875531','2017-09-01 21:59:56.487193','Administrator','Administrator',0,'Authentication Log','fields','DocType',4,'column_break_8',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('52b358fd2d','2016-02-22 03:47:45.387068','2017-09-01 22:00:05.878431','Administrator','Administrator',0,'Desktop Icon','fields','DocType',1,'module_name','Module Name',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('52f7a8d7d4','2016-03-29 10:50:48.848239','2017-09-01 22:00:03.612963','Administrator','Administrator',0,'Email Domain','fields','DocType',13,'smtp_port','Port',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'',0,0,NULL,NULL,0,NULL,'If non standard port (e.g. 587)',0,0,0,'',0,0,0,0,0,0),('532fec9bc1','2017-09-01 13:29:30.289032','2017-09-01 19:20:24.367341','Administrator','Administrator',0,'Paciente','fields','DocType',1,'primer_nombre','Primer Nombre',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('5331e09af3','2013-03-19 12:02:15.000000','2017-09-01 22:00:00.258186','Administrator','Administrator',0,'About Us Settings','fields','DocType',6,'sb1','Team Members',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('5348300b71','2014-04-17 16:53:52.640856','2017-09-01 21:59:58.766477','Administrator','Administrator',0,'System Settings','fields','DocType',31,'email_footer_address','Email Footer Address',NULL,'Small Text',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Your organization name and address for the email footer.',0,0,0,'',0,0,0,0,0,0),('5372ae1bda','2015-02-18 12:46:38.168929','2017-09-01 21:59:59.903705','Administrator','Administrator',0,'Website Theme','fields','DocType',14,'column_break_18',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('5450be62e8','2013-02-22 01:27:32.000000','2017-09-01 22:00:04.800729','Administrator','Administrator',0,'Customize Form Field','fields','DocType',31,'column_break_21',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('54e07f1450','2013-01-10 16:34:32.000000','2017-09-01 22:00:08.571416','Administrator','Administrator',0,'Address','fields','DocType',18,'is_your_company_address','Is Your Company Address',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'0',NULL,0,0,0,'',0,0,0,0,0,0),('54e72484af','2015-02-04 04:33:36.330477','2017-09-01 21:59:55.605388','Administrator','Administrator',0,'DocShare','fields','DocType',5,'write','Write',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'0',NULL,0,0,0,'',0,0,0,0,0,0),('54f5d6576e','2014-03-11 14:55:00.000000','2017-09-01 21:59:52.429552','Administrator','Administrator',0,'User','fields','DocType',55,'last_active','Last Active',NULL,'Datetime',NULL,NULL,0,0,0,0,0,0,0,0,0,0,1,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('551aa7258a','2014-09-11 12:04:34.163728','2017-09-01 22:00:02.520524','Administrator','Administrator',0,'Email Account','fields','DocType',41,'uidnext','UIDNEXT',NULL,'Int',NULL,NULL,0,1,0,0,0,0,0,0,0,0,1,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('55355cc92c','2014-03-11 14:55:00.000000','2017-09-01 21:59:52.429552','Administrator','Administrator',0,'User','fields','DocType',64,'frappe_userid','Frappe User ID',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('557e73aebd','2012-08-02 15:17:28.000000','2017-09-01 22:00:03.294421','Administrator','Administrator',0,'Email Queue','fields','DocType',2,'recipients','Recipient',NULL,'Table',NULL,'Email Queue Recipient',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('558b16d774','2017-01-24 15:46:38.366213','2017-09-01 21:59:56.229184','Administrator','Administrator',0,'Feedback Trigger','fields','DocType',7,'subject','Subject',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'To add dynamic subject, use jinja tags like\n\n<div><pre><code>{{ doc.name }} Delivered</code></pre></div>',0,0,0,'',0,0,0,0,0,0),('55a4b71b55','2013-01-29 10:47:14.000000','2017-09-01 21:59:55.016873','Administrator','Administrator',0,'Communication','fields','DocType',31,'column_break_27',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('55b26838dd','2015-02-18 12:46:38.168929','2017-09-01 21:59:59.903705','Administrator','Administrator',0,'Website Theme','fields','DocType',7,'section_break_14',NULL,NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'apply_style',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('561a6f854a','2013-02-22 01:27:34.000000','2017-09-01 21:59:51.392601','Administrator','Administrator',0,'Has Role','fields','DocType',1,'role','Role','role','Link','Link','Role',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('56315720a3','2017-02-13 14:53:36.240122','2017-09-01 21:59:58.010084','Administrator','Administrator',0,'Custom Role','fields','DocType',5,'response','response',NULL,'HTML',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('5646eb3f95','2012-07-03 13:30:35.000000','2017-09-01 22:00:05.317576','Administrator','Administrator',0,'ToDo','fields','DocType',7,'description_section','',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('568b1dfe95','2013-04-30 12:58:46.000000','2017-09-01 22:00:00.764927','Administrator','Administrator',0,'Website Settings','fields','DocType',11,'brand_html','Brand HTML',NULL,'Code',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Brand is what appears on the top-left of the toolbar. If it is an image, make sure it\nhas a transparent background and use the &lt;img /&gt; tag. Keep size as 200px x 30px',0,0,0,NULL,0,0,0,0,0,0),('56a56a3b09','2014-09-01 14:08:48.624556','2017-09-01 21:59:53.572628','Administrator','Administrator',0,'Web Form','fields','DocType',27,'accept_payment','Accept Payment',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('56aed35685','2014-07-17 06:54:20.782907','2017-09-01 22:00:07.719476','Administrator','Administrator',0,'Print Settings','fields','DocType',16,'allow_print_for_cancelled','Allow Print for Cancelled',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'',0,0,0,'',0,0,0,0,0,0),('56cc1b2b33','2015-02-18 12:46:38.168929','2017-09-01 21:59:59.903705','Administrator','Administrator',0,'Website Theme','fields','DocType',21,'background_color','Background Color',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('5700302090','2017-01-27 15:43:33.780808','2017-09-01 21:59:56.777309','Administrator','Administrator',0,'Feedback Request','fields','DocType',4,'is_manual','Is Manual',NULL,'Check',NULL,NULL,0,0,1,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Is Feedback request triggered manually ?',0,0,0,'',0,0,0,0,0,0),('57073083a5','2014-07-17 06:54:20.782907','2017-09-01 22:00:07.719476','Administrator','Administrator',0,'Print Settings','fields','DocType',8,'print_style_section','Print Style',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('5791ce46b1','2014-03-11 14:55:00.000000','2017-09-01 21:59:52.429552','Administrator','Administrator',0,'User','fields','DocType',37,'user_emails','User Emails',NULL,'Table',NULL,'User Email',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,1,0,NULL,NULL,0,NULL,'',0,0,0,'',0,0,0,0,0,0),('57aa1f7397','2013-05-24 13:41:00.000000','2017-09-01 22:00:05.180965','Administrator','Administrator',0,'Note','fields','DocType',3,'notify_on_login','Notify users with a popup when they log in',NULL,'Check',NULL,NULL,0,0,0,0,0,0,1,0,0,0,0,0,NULL,NULL,'public',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('581175ce0e','2017-01-24 15:46:38.366213','2017-09-01 21:59:56.229184','Administrator','Administrator',0,'Feedback Trigger','fields','DocType',3,'document_type','Document Type',NULL,'Link',NULL,'DocType',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('5820bfff75','2014-03-11 14:55:00.000000','2017-09-01 21:59:52.429552','Administrator','Administrator',0,'User','fields','DocType',17,'roles_html','Roles HTML',NULL,'HTML',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,NULL,0,0,0,0,0,0),('582cf0b614','2013-03-25 16:00:51.000000','2017-09-01 21:59:59.800038','Administrator','Administrator',0,'Blogger','fields','DocType',6,'avatar','Avatar',NULL,'Attach',NULL,'',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('583b82e8fa','2013-02-22 01:27:36.000000','2017-09-01 22:00:01.991359','Administrator','Administrator',0,'Workflow Transition','fields','DocType',3,'next_state','Next State',NULL,'Link',NULL,'Workflow State',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'200px','200px',0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('58b0952a17','2016-04-20 15:29:39.785172','2017-09-01 22:00:04.338347','Administrator','Administrator',0,'Email Flag Queue','fields','DocType',2,'communication','Communication',NULL,'Data',NULL,'',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('593c38dce7','2014-03-11 14:55:00.000000','2017-09-01 21:59:52.429552','Administrator','Administrator',0,'User','fields','DocType',60,'google_userid','Google User ID',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,1,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,NULL,0,0,0,0,0,0),('597f78297d','2013-01-29 10:47:14.000000','2017-09-01 21:59:55.016873','Administrator','Administrator',0,'Communication','fields','DocType',12,'status_section','Status',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('5a02bb8c72','2013-03-28 10:35:30.000000','2017-09-01 22:00:00.324049','Administrator','Administrator',0,'Web Page','fields','DocType',1,'section_title','Title',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('5a55f5f730','2013-03-09 15:45:57.000000','2017-09-01 21:59:57.830003','Administrator','Administrator',0,'Report','fields','DocType',12,'query','Query',NULL,'Code',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:doc.report_type==\"Query Report\"',0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('5a8e578d78','2013-02-18 13:36:19.000000','2017-09-01 21:59:51.696379','Administrator','Administrator',0,'DocType','fields','DocType',54,'column_break_53',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('5a99b357eb','2017-07-17 14:25:27.881871','2017-09-01 21:59:57.736696','Administrator','Administrator',0,'User Permission','fields','DocType',2,'allow','Allow',NULL,'Link',NULL,'DocType',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,1,0,'',0,0,0,0,0,0),('5aca2ac0ac','2013-01-10 16:34:32.000000','2017-09-01 22:00:08.226056','Administrator','Administrator',0,'Contact','fields','DocType',16,'more_info','More Information',NULL,'Section Break',NULL,'fa fa-file-text',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('5ad1522ede','2014-09-11 12:04:34.163728','2017-09-01 22:00:02.520524','Administrator','Administrator',0,'Email Account','fields','DocType',32,'signature_section','',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('5af57ce7a3','2013-01-29 17:55:08.000000','2017-09-01 22:00:04.634582','Administrator','Administrator',0,'Customize Form','fields','DocType',10,'track_changes','Track Changes',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('5b32d2c207','2013-01-10 16:34:32.000000','2017-09-01 22:00:08.226056','Administrator','Administrator',0,'Contact','fields','DocType',6,'cb00',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('5b399f6a71','2016-12-29 07:48:06.319665','2017-09-01 22:00:00.998444','Administrator','Administrator',0,'Website Sidebar','fields','DocType',1,'title','Title',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('5b3bd51195','2013-01-10 16:34:31.000000','2017-09-01 22:00:03.015516','Administrator','Administrator',0,'Newsletter','fields','DocType',6,'subject','Subject',NULL,'Small Text',NULL,NULL,0,0,0,0,0,1,0,1,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('5b487e004c','2013-01-08 15:50:01.000000','2017-09-01 21:59:52.924422','Administrator','Administrator',0,'Role','fields','DocType',1,'role_name','Role Name','role_name','Data','Data',NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('5bc4038ad3','2017-04-24 09:53:41.813982','2017-09-01 22:00:07.375584','Administrator','Administrator',0,'GSuite Templates','fields','DocType',5,'destination_id','Destination ID',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('5bf6a7546d','2013-01-23 19:54:43.000000','2017-09-01 22:00:07.979522','Administrator','Administrator',0,'Print Format','fields','DocType',12,'show_section_headings','Show Section Headings',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'0',NULL,0,0,0,'',0,0,0,0,0,0),('5ca73210f9','2014-04-17 16:53:52.640856','2017-09-01 21:59:58.766477','Administrator','Administrator',0,'System Settings','fields','DocType',16,'enable_scheduler','Enable Scheduled Jobs',NULL,'Check',NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Run scheduled jobs only if checked',0,0,0,NULL,0,0,0,0,0,0),('5cc5d692ff','2012-07-03 13:30:35.000000','2017-09-01 22:00:05.317576','Administrator','Administrator',0,'ToDo','fields','DocType',8,'description','Description','description','Text Editor','Text',NULL,0,0,0,0,0,1,0,1,0,0,0,0,NULL,NULL,NULL,0,0,'300px','300px',0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('5cf05bee14','2017-01-11 04:21:35.217943','2017-09-01 21:59:54.801850','Administrator','Administrator',0,'Custom DocPerm','fields','DocType',10,'write','Write','write','Check','Check',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'32px','32px',0,'1',NULL,1,0,0,'',0,0,0,0,0,0),('5d5986cea6','2013-02-22 01:27:33.000000','2017-09-01 21:59:50.367790','Administrator','Administrator',0,'DocField','fields','DocType',14,'collapsible_depends_on','Collapsible Depends On',NULL,'Code',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:doc.fieldtype==\"Section Break\"',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('5d65ab702e','2013-02-21 20:12:42.000000','2017-09-01 22:00:01.610316','Administrator','Administrator',0,'Contact Us Settings','fields','DocType',4,'introduction','Introduction',NULL,'Text Editor',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Introductory information for the Contact Us Page',0,0,0,NULL,0,0,0,0,0,0),('5da351cc10','2014-03-11 14:55:00.000000','2017-09-01 21:59:52.429552','Administrator','Administrator',0,'User','fields','DocType',44,'sb2','Defaults',NULL,'Section Break','Column Break',NULL,0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,1,0,'50%','50%',0,NULL,'These values will be automatically updated in transactions and also will be useful to restrict permissions for this user on transactions containing these values.',0,0,1,NULL,0,0,0,0,0,0),('5e1866aba2','2017-03-09 17:18:29.458397','2017-09-01 22:00:07.672985','Administrator','Administrator',0,'Stripe Settings','fields','DocType',1,'publishable_key','Publishable Key',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('5e3afd07fc','2014-03-11 14:55:00.000000','2017-09-01 21:59:52.429552','Administrator','Administrator',0,'User','fields','DocType',10,'unsubscribed','Unsubscribed',NULL,'Check',NULL,NULL,0,1,0,0,0,0,0,0,0,0,1,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('5e42774d8b','2014-04-17 16:53:52.640856','2017-09-01 21:59:58.766477','Administrator','Administrator',0,'System Settings','fields','DocType',25,'minimum_password_score','Minimum Password Score',NULL,'Select',NULL,'2\n4',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:doc.enable_password_policy==1',0,0,NULL,NULL,0,'2',NULL,0,0,0,'',0,0,0,0,0,0),('5e6e01b79a','2013-01-29 10:47:14.000000','2017-09-01 21:59:55.016873','Administrator','Administrator',0,'Communication','fields','DocType',44,'has_attachment','Has  Attachment',NULL,'Check',NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('5eadabc108','2012-12-12 11:19:22.000000','2017-09-01 21:59:54.402066','Administrator','Administrator',0,'File','fields','DocType',1,'file_name','File Name','file_name','Data','Data',NULL,0,0,0,0,0,0,0,1,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,NULL,0,0,0,0,0,0),('5eb0fb02fd','2013-06-10 13:17:47.000000','2017-09-01 22:00:05.629704','Administrator','Administrator',0,'Event','fields','DocType',10,'section_break_8',NULL,NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('5ef0c4a792','2013-02-22 01:27:33.000000','2017-09-01 21:59:50.986087','Administrator','Administrator',0,'DocPerm','fields','DocType',23,'share','Share',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'1',NULL,0,0,0,'',0,0,0,0,0,0),('5f638c7d99','2014-04-17 16:53:52.640856','2017-09-01 21:59:58.766477','Administrator','Administrator',0,'System Settings','fields','DocType',13,'sec_backup_limit','Backups',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('5fe3d54310','2013-02-22 01:28:08.000000','2017-09-01 22:00:00.692769','Administrator','Administrator',0,'Top Bar Item','fields','DocType',3,'url','URL',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'200px','200px',0,NULL,'Link to the page you want to open. Leave blank if you want to make it a group parent.',1,0,0,NULL,0,0,0,0,0,0),('5fef172a60','2014-09-01 14:08:48.624556','2017-09-01 21:59:53.572628','Administrator','Administrator',0,'Web Form','fields','DocType',18,'web_form_fields','Web Form Fields',NULL,'Table',NULL,'Web Form Field',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('6040eb3ed9','2013-01-10 16:34:31.000000','2017-09-01 22:00:03.015516','Administrator','Administrator',0,'Newsletter','fields','DocType',10,'test_the_newsletter','',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'',0,0,0,NULL,0,0,0,0,0,0),('605bd5fa91','2014-03-11 14:55:00.000000','2017-09-01 21:59:52.429552','Administrator','Administrator',0,'User','fields','DocType',48,'user_type','User Type','user_type','Select','Select','System User\nWebsite User',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,1,0,NULL,NULL,0,'System User','If the user has any role checked, then the user becomes a \"System User\". \"System User\" has access to the desktop',1,1,1,NULL,0,0,0,0,0,0),('608035ab55','2014-10-30 14:25:53.780105','2017-09-01 22:00:01.066008','Administrator','Administrator',0,'Help Article','fields','DocType',11,'owner','Owner',NULL,'Link',NULL,'User',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'user',NULL,0,0,0,'',0,0,0,0,0,0),('60ad4eecfd','2013-03-25 16:00:51.000000','2017-09-01 21:59:59.800038','Administrator','Administrator',0,'Blogger','fields','DocType',1,'disabled','Disabled',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('60b8ec2e7c','2014-03-11 14:55:00.000000','2017-09-01 21:59:52.429552','Administrator','Administrator',0,'User','fields','DocType',30,'send_password_update_notification','Send Password Update Notification',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:!doc.__islocal',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('6103d79578','2017-01-27 15:43:33.780808','2017-09-01 21:59:56.777309','Administrator','Administrator',0,'Feedback Request','fields','DocType',8,'reference_name','Reference Name',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,2,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('6130a4082a','2013-03-09 15:45:57.000000','2017-09-01 21:59:57.830003','Administrator','Administrator',0,'Report','fields','DocType',16,'roles','Roles',NULL,'Table',NULL,'Has Role',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:doc.is_standard == \'Yes\'',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('615e899537','2014-10-30 14:23:30.958074','2017-09-01 22:00:00.187162','Administrator','Administrator',0,'Help Category','fields','DocType',3,'published','Published',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('6174e4d0ac','2014-07-17 06:54:20.782907','2017-09-01 22:00:07.719476','Administrator','Administrator',0,'Print Settings','fields','DocType',5,'pdf_page_size','PDF Page Size',NULL,'Select',NULL,'A4\nLetter',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'A4',NULL,0,0,0,NULL,0,0,0,0,0,0),('618fefab14','2014-06-05 02:22:36.029850','2017-09-01 22:00:08.144706','Administrator','Administrator',0,'Address Template','fields','DocType',1,'country','Country',NULL,'Link',NULL,'Country',1,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,1,0,NULL,0,0,0,0,0,0),('621f0cb97e','2017-04-10 12:17:58.071915','2017-09-01 22:00:08.456089','Administrator','Administrator',0,'Salutation','fields','DocType',1,'salutation','Salutation',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('625d630931','2014-03-11 14:55:00.000000','2017-09-01 21:59:52.429552','Administrator','Administrator',0,'User','fields','DocType',12,'username','Username',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,1,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('6266c7b41b','2014-04-17 16:53:52.640856','2017-09-01 21:59:58.766477','Administrator','Administrator',0,'System Settings','fields','DocType',1,'localization','',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('628b553d21','2017-09-01 15:19:44.113804','2017-09-01 15:33:38.607038','Administrator','Administrator',0,'Medicamentos','fields','DocType',4,'column_break_4',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('6292cd5798','2013-01-10 16:34:32.000000','2017-09-01 22:00:08.571416','Administrator','Administrator',0,'Address','fields','DocType',19,'links','Links',NULL,'Table',NULL,'Dynamic Link',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('62f8a736a9','2016-04-12 18:40:16.315024','2017-09-01 22:00:01.300069','Administrator','Administrator',0,'Footer Item','fields','DocType',4,'target','Target',NULL,'Select',NULL,'\ntarget = \"_blank\"',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Select target = \"_blank\" to open in a new page.',0,0,0,'',0,0,0,0,0,0),('6304ae64d5','2013-02-22 01:27:36.000000','2017-09-01 22:00:02.249452','Administrator','Administrator',0,'Workflow Document State','fields','DocType',6,'message','Message',NULL,'Text',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'160px','160px',0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('635fe4ac71','2017-09-01 13:46:35.906729','2017-09-01 13:46:35.906729','Administrator','Administrator',0,'Telefonos','fields','DocType',2,'telefono','Telefono',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('635fe5e72f','2017-01-27 15:43:33.780808','2017-09-01 21:59:56.777309','Administrator','Administrator',0,'Feedback Request','fields','DocType',10,'feedback_trigger','Feedback Trigger',NULL,'Data',NULL,'Feedback Trigger',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('6380563e5e','2013-02-22 01:27:36.000000','2017-09-01 22:00:01.991359','Administrator','Administrator',0,'Workflow Transition','fields','DocType',2,'action','Action',NULL,'Link',NULL,'Workflow Action',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'200px','200px',0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('63c0d4f819','2013-02-22 01:27:33.000000','2017-09-01 21:59:50.986087','Administrator','Administrator',0,'DocPerm','fields','DocType',10,'write','Write','write','Check','Check',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'32px','32px',0,'1',NULL,1,0,0,NULL,0,0,0,0,0,0),('63ce44cec6','2013-02-22 01:27:33.000000','2017-09-01 21:59:50.986087','Administrator','Administrator',0,'DocPerm','fields','DocType',1,'role_and_level','Role and Level',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('63f295302c','2016-02-22 03:47:45.387068','2017-09-01 22:00:05.878431','Administrator','Administrator',0,'Desktop Icon','fields','DocType',17,'icon','Icon',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('6482536c74','2017-01-27 15:43:33.780808','2017-09-01 21:59:56.777309','Administrator','Administrator',0,'Feedback Request','fields','DocType',6,'reference','Reference',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('649db9afe2','2013-02-18 13:36:19.000000','2017-09-01 21:59:51.696379','Administrator','Administrator',0,'DocType','fields','DocType',29,'track_seen','Track Seen',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('64ad0326bd','2014-07-17 06:54:20.782907','2017-09-01 22:00:07.719476','Administrator','Administrator',0,'Print Settings','fields','DocType',7,'attach_view_link','Send document web view link in email',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'1','',0,0,0,'',0,0,0,0,0,0),('64c81579f8','2012-12-20 17:16:49.000000','2017-09-01 21:59:56.947669','Administrator','Administrator',0,'Page','fields','DocType',5,'icon','icon',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('653ffa38e2','2016-08-24 14:12:13.647159','2017-09-01 22:00:07.302043','Administrator','Administrator',0,'OAuth Authorization Code','fields','DocType',1,'client','Client',NULL,'Link',NULL,'OAuth Client',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,1,0,NULL,0,0,0,0,0,0),('6562656501','2016-08-24 14:07:21.955052','2017-09-01 22:00:07.188251','Administrator','Administrator',0,'OAuth Client','fields','DocType',14,'cb_2',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('658de0757a','2013-01-10 16:34:32.000000','2017-09-01 22:00:08.571416','Administrator','Administrator',0,'Address','fields','DocType',14,'fax','Fax',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('66254a6ac0','2014-09-01 14:08:48.624556','2017-09-01 21:59:53.572628','Administrator','Administrator',0,'Web Form','fields','DocType',2,'route','Route',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,1,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('66add3dfc2','2014-09-11 12:04:34.163728','2017-09-01 22:00:02.520524','Administrator','Administrator',0,'Email Account','fields','DocType',38,'set_footer','',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('66d3754bd6','2017-01-27 15:43:33.780808','2017-09-01 21:59:56.777309','Administrator','Administrator',0,'Feedback Request','fields','DocType',14,'reference_communication','Reference Communication',NULL,'Data',NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('67437e1f49','2017-09-01 13:29:30.289032','2017-09-01 19:20:24.367341','Administrator','Administrator',0,'Paciente','fields','DocType',30,'section_break_30',NULL,NULL,'Section Break',NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('682368ad11','2014-07-17 06:54:20.782907','2017-09-01 22:00:07.719476','Administrator','Administrator',0,'Print Settings','fields','DocType',12,'column_break_6',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('6830272a06','2016-04-20 15:29:39.785172','2017-09-01 22:00:04.338347','Administrator','Administrator',0,'Email Flag Queue','fields','DocType',3,'action','Action',NULL,'Select',NULL,'Read\nUnread',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('6864b5ae72','2015-11-28 00:57:39.766888','2017-09-01 21:59:58.381641','Administrator','Administrator',0,'Error Snapshot','fields','DocType',8,'parent_error_snapshot','Parent Error Snapshot',NULL,'Data',NULL,'',0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('687955f7cd','2016-10-19 12:26:42.569185','2017-09-01 22:00:05.804293','Administrator','Administrator',0,'Kanban Board Column','fields','DocType',1,'column_name','Column Name',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('68d04c4098','2016-09-01 01:34:34.985457','2017-09-01 22:00:03.756563','Administrator','Administrator',0,'Auto Email Report','fields','DocType',14,'email_settings','Email Settings',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('68e4bf96f5','2017-09-01 13:29:30.289032','2017-09-01 19:20:24.367341','Administrator','Administrator',0,'Paciente','fields','DocType',9,'tipo_sangre','Tipo Sangre',NULL,'Select',NULL,'-\nA+\nA-\nAB+\nAB-\nB+\nB-\nO+\nO-',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('6927db95a7','2013-01-29 10:47:14.000000','2017-09-01 21:59:55.016873','Administrator','Administrator',0,'Communication','fields','DocType',21,'read_receipt','Sent Read Receipt',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('694832a96d','2014-03-11 14:55:00.000000','2017-09-01 21:59:52.429552','Administrator','Administrator',0,'User','fields','DocType',11,'column_break0',NULL,NULL,'Column Break','Column Break',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'50%','50%',0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('6973d2c152','2013-03-28 10:35:30.000000','2017-09-01 22:00:00.324049','Administrator','Administrator',0,'Web Page','fields','DocType',7,'show_title','Show Title',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'1',NULL,0,0,0,'',0,0,0,0,0,0),('69a2ff8506','2013-03-25 16:00:51.000000','2017-09-01 21:59:59.800038','Administrator','Administrator',0,'Blogger','fields','DocType',7,'posts','Posts',NULL,'Int',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,1,NULL,0,0,0,0,0,0),('69b0a6e445','2013-01-10 16:34:04.000000','2017-09-01 21:59:53.403426','Administrator','Administrator',0,'Property Setter','fields','DocType',3,'doctype_or_field','DocType or Field',NULL,'Select',NULL,'\nDocField\nDocType',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,'eval:doc.__islocal',0,0,NULL,NULL,0,NULL,NULL,1,1,0,NULL,0,0,0,0,0,0),('69cd27f520','2013-01-16 13:09:40.000000','2017-09-01 21:59:58.530871','Administrator','Administrator',0,'Error Log','fields','DocType',2,'method','Title',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,1,NULL,0,0,0,0,0,0),('69d13e0590','2014-09-11 12:04:34.163728','2017-09-01 22:00:02.520524','Administrator','Administrator',0,'Email Account','fields','DocType',28,'smtp_port','Port',NULL,'Data',NULL,'domain.smtp_port',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:!doc.domain && doc.enable_outgoing',0,0,NULL,NULL,0,NULL,'If non standard port (e.g. 587)',0,0,0,'',0,0,0,0,0,0),('6a4ba100e6','2014-07-11 17:18:09.923399','2017-09-01 22:00:03.128353','Administrator','Administrator',0,'Email Alert','fields','DocType',17,'property_section','Set Property After Alert',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('6a60c195d6','2013-01-10 16:34:32.000000','2017-09-01 22:00:08.571416','Administrator','Administrator',0,'Address','fields','DocType',11,'column_break0',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'50%',NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('6a865babb7','2014-04-17 16:53:52.640856','2017-09-01 21:59:58.766477','Administrator','Administrator',0,'System Settings','fields','DocType',14,'backup_limit','Number of Backups',NULL,'Int',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'3','Older backups will be automatically deleted',0,0,0,'',0,0,0,0,0,0),('6ab994d4e4','2012-08-02 15:17:28.000000','2017-09-01 22:00:03.294421','Administrator','Administrator',0,'Email Queue','fields','DocType',5,'status','Status',NULL,'Select',NULL,'\nNot Sent\nSending\nSent\nError\nExpired',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'Not Sent',NULL,1,1,0,NULL,0,0,0,0,0,0),('6b31cbe0ee','2016-02-22 03:47:45.387068','2017-09-01 22:00:05.878431','Administrator','Administrator',0,'Desktop Icon','fields','DocType',19,'idx','Idx',NULL,'Int',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('6b564c2542','2016-03-29 10:50:48.848239','2017-09-01 22:00:03.612963','Administrator','Administrator',0,'Email Domain','fields','DocType',5,'email_server','Email Server',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,'',0,0,NULL,NULL,0,NULL,'e.g. pop.gmail.com / imap.gmail.com',0,0,0,'',0,0,0,0,0,0),('6b5cd33ea0','2013-03-28 10:35:30.000000','2017-09-01 22:00:00.324049','Administrator','Administrator',0,'Web Page','fields','DocType',22,'enable_comments','Enable Comments',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('6b65b151b1','2017-01-11 04:21:35.217943','2017-09-01 21:59:54.801850','Administrator','Administrator',0,'Custom DocPerm','fields','DocType',3,'apply_user_permissions','Apply User Permissions',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Filter records based on User Permissions defined for a user',0,0,0,'',0,0,0,0,0,0),('6b95a1deed','2013-06-10 13:17:47.000000','2017-09-01 22:00:05.629704','Administrator','Administrator',0,'Event','fields','DocType',25,'description','Description','description','Text Editor','Text',NULL,0,0,0,0,0,0,0,1,0,0,0,0,NULL,NULL,NULL,0,0,'300px','300px',0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('6bdbce6284','2012-12-12 11:19:22.000000','2017-09-01 21:59:54.402066','Administrator','Administrator',0,'File','fields','DocType',9,'column_break_5',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('6c04d7fed1','2013-01-10 16:34:32.000000','2017-09-01 22:00:08.571416','Administrator','Administrator',0,'Address','fields','DocType',4,'address_line1','Address Line 1',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('6c0e634090','2013-01-10 16:34:01.000000','2017-09-01 21:59:53.056685','Administrator','Administrator',0,'Custom Field','fields','DocType',5,'insert_after','Insert After','insert_after','Select','Select',NULL,0,0,0,0,0,0,0,0,0,0,1,0,NULL,NULL,'',0,0,NULL,NULL,0,NULL,'Select the label after which you want to insert new field.',0,0,0,NULL,0,0,0,0,0,0),('6c26c54fd3','2013-01-10 16:34:32.000000','2017-09-01 22:00:08.226056','Administrator','Administrator',0,'Contact','fields','DocType',18,'designation','Designation',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'',0,0,0,NULL,0,0,0,0,0,0),('6c435819ad','2013-04-30 12:58:46.000000','2017-09-01 22:00:00.764927','Administrator','Administrator',0,'Website Settings','fields','DocType',32,'head_html','&lt;head&gt; HTML',NULL,'Code',NULL,'HTML',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Added HTML in the &lt;head&gt; section of the web page, primarily used for website verification and SEO',0,0,0,'',0,0,0,0,0,0),('6c6e791338','2014-09-11 12:04:34.163728','2017-09-01 22:00:02.520524','Administrator','Administrator',0,'Email Account','fields','DocType',11,'enable_incoming','Enable Incoming',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'','Check this to pull emails from your mailbox',0,0,0,'',0,0,0,0,0,0),('6cdae3508e','2013-03-28 10:35:30.000000','2017-09-01 22:00:00.894557','Administrator','Administrator',0,'Blog Post','fields','DocType',2,'published_on','Published On',NULL,'Date',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('6dd48fb472','2012-12-12 11:19:22.000000','2017-09-01 21:59:54.402066','Administrator','Administrator',0,'File','fields','DocType',18,'content_hash','Content Hash',NULL,'Data',NULL,NULL,1,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('6e0a96c594','2013-01-10 16:34:01.000000','2017-09-01 21:59:53.056685','Administrator','Administrator',0,'Custom Field','fields','DocType',2,'label','Label','label','Data','Data',NULL,0,0,0,0,0,0,1,0,0,0,1,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,1,0,0,0,0),('6e4f6a9935','2017-09-01 15:56:17.943779','2017-09-01 16:25:52.923943','Administrator','Administrator',0,'Empresa','fields','DocType',4,'rnc','RNC',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,1,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('6e5c03402e','2013-02-22 01:27:33.000000','2017-09-01 21:59:50.367790','Administrator','Administrator',0,'DocField','fields','DocType',18,'permissions','Permissions',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('6e80647627','2017-09-01 15:56:17.943779','2017-09-01 16:25:52.923943','Administrator','Administrator',0,'Empresa','fields','DocType',7,'direccion','Direccion',NULL,'Small Text',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('6e8f8f65c8','2013-01-29 17:55:08.000000','2017-09-01 22:00:04.634582','Administrator','Administrator',0,'Customize Form','fields','DocType',8,'editable_grid','Editable Grid',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'istable',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('6e991d77b8','2016-03-30 10:04:25.828742','2017-09-01 21:59:56.668986','Administrator','Administrator',0,'User Email','fields','DocType',3,'column_break_3',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('6ed4a6f9e9','2013-02-22 01:27:33.000000','2017-09-01 21:59:50.986087','Administrator','Administrator',0,'DocPerm','fields','DocType',15,'cancel','Cancel','cancel','Check','Check',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'32px','32px',0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('6ee985fbaf','2013-01-10 16:34:01.000000','2017-09-01 22:00:04.517892','Administrator','Administrator',0,'Custom Script','fields','DocType',1,'dt','DocType','dt','Link','Link','DocType',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,1,0,NULL,0,0,0,0,0,0),('6eefd4ffd5','2016-08-24 14:10:17.471264','2017-09-01 22:00:07.513722','Administrator','Administrator',0,'OAuth Bearer Token','fields','DocType',2,'user','User',NULL,'Link',NULL,'User',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('6efaa6b3be','2016-09-01 01:34:34.985457','2017-09-01 22:00:03.756563','Administrator','Administrator',0,'Auto Email Report','fields','DocType',21,'description','Message',NULL,'Text Editor',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('6f2aa5a44a','2015-11-28 00:57:39.766888','2017-09-01 21:59:58.381641','Administrator','Administrator',0,'Error Snapshot','fields','DocType',4,'timestamp','Timestamp',NULL,'Datetime',NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('6f5142b674','2016-09-01 01:34:34.985457','2017-09-01 22:00:03.756563','Administrator','Administrator',0,'Auto Email Report','fields','DocType',4,'column_break_4',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('6f70cb9a45','2013-02-22 01:27:33.000000','2017-09-01 21:59:50.367790','Administrator','Administrator',0,'DocField','fields','DocType',21,'read_only','Read Only',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'50px','50px',0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('6f7a804585','2017-01-11 04:21:35.217943','2017-09-01 21:59:54.801850','Administrator','Administrator',0,'Custom DocPerm','fields','DocType',22,'column_break_19',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('6f7e3ef6a0','2015-02-18 12:46:38.168929','2017-09-01 21:59:59.903705','Administrator','Administrator',0,'Website Theme','fields','DocType',26,'js','JavaScript',NULL,'Code',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'apply_style',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('6fd5427af3','2015-02-04 04:33:36.330477','2017-09-01 21:59:55.605388','Administrator','Administrator',0,'DocShare','fields','DocType',1,'user','User',NULL,'Link',NULL,'User',1,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('6fd94c0856','2013-02-18 13:36:19.000000','2017-09-01 21:59:51.696379','Administrator','Administrator',0,'DocType','fields','DocType',15,'sb1','Naming',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('6fdc20bc17','2017-09-01 13:46:35.906729','2017-09-01 13:46:35.906729','Administrator','Administrator',0,'Telefonos','fields','DocType',1,'tipo','Tipo',NULL,'Select',NULL,'Movil\nTrabajo\nCasa\nOtro',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('6feb80245c','2017-07-17 14:25:27.881871','2017-09-01 21:59:57.736696','Administrator','Administrator',0,'User Permission','fields','DocType',1,'user','User',NULL,'Link',NULL,'User',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,1,0,'',0,0,0,0,0,0),('7024d68357','2013-01-29 17:55:08.000000','2017-09-01 22:00:04.634582','Administrator','Administrator',0,'Customize Form','fields','DocType',5,'max_attachments','Max Attachments',NULL,'Int',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'',0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('70c2fd229f','2013-03-28 10:35:30.000000','2017-09-01 22:00:00.324049','Administrator','Administrator',0,'Web Page','fields','DocType',15,'text_align','Text Align',NULL,'Select',NULL,'Left\nCenter\nRight',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('7108833a10','2013-01-10 16:34:01.000000','2017-09-01 21:59:53.056685','Administrator','Administrator',0,'Custom Field','fields','DocType',13,'collapsible_depends_on','Collapsible Depends On',NULL,'Code',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:doc.fieldtype==\"Section Break\"',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('7112452e52','2013-02-22 01:27:33.000000','2017-09-01 21:59:50.367790','Administrator','Administrator',0,'DocField','fields','DocType',43,'oldfieldtype',NULL,'oldfieldtype','Data','Data',NULL,0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('71f076b4a0','2014-04-17 16:53:52.640856','2017-09-01 21:59:58.766477','Administrator','Administrator',0,'System Settings','fields','DocType',28,'allow_login_using_mobile_number','Allow Login using Mobile Number',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'User can login using Email id or Mobile number',0,0,0,'',0,0,0,0,0,0),('720fa5d9e3','2013-04-30 12:58:46.000000','2017-09-01 22:00:00.764927','Administrator','Administrator',0,'Website Settings','fields','DocType',21,'footer_items','Footer Items',NULL,'Table',NULL,'Top Bar Item',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('723935729f','2013-01-29 17:55:08.000000','2017-09-01 22:00:04.634582','Administrator','Administrator',0,'Customize Form','fields','DocType',15,'search_fields','Search Fields',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Fields separated by comma (,) will be included in the \"Search By\" list of Search dialog box',1,0,0,NULL,0,0,0,0,0,0),('72a71b163c','2013-01-28 10:06:02.000000','2017-09-01 22:00:05.001030','Administrator','Administrator',0,'Currency','fields','DocType',7,'number_format','Number Format',NULL,'Select',NULL,'\n#,###.##\n#.###,##\n# ###.##\n# ###,##\n#\'###.##\n#, ###.##\n#,##,###.##\n#,###.###\n#.###\n#,###',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'How should this currency be formatted? If not set, will use system defaults',1,0,0,NULL,0,0,0,0,0,0),('72bde91210','2013-02-22 01:27:33.000000','2017-09-01 21:59:50.367790','Administrator','Administrator',0,'DocField','fields','DocType',28,'allow_on_submit','Allow on Submit','allow_on_submit','Check','Check',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'50px','50px',0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('72c389e499','2016-09-21 08:03:01.009852','2017-09-01 22:00:07.143640','Administrator','Administrator',0,'PayPal Settings','fields','DocType',5,'redirect_to','Redirect To',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Mention transaction completion page URL',0,0,0,'',0,0,0,0,0,0),('7302755b6e','2017-09-01 15:19:44.113804','2017-09-01 15:33:38.607038','Administrator','Administrator',0,'Medicamentos','fields','DocType',6,'inicio','Inicio',NULL,'Date',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,2,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('7318ae7e82','2016-03-29 10:50:48.848239','2017-09-01 22:00:03.612963','Administrator','Administrator',0,'Email Domain','fields','DocType',10,'outgoing_mail_settings','',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('7374b377ee','2013-04-30 12:58:46.000000','2017-09-01 22:00:00.764927','Administrator','Administrator',0,'Website Settings','fields','DocType',26,'misc_section','More Information',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('737998f1de','2016-03-30 01:40:20.001775','2017-09-01 22:00:01.167977','Administrator','Administrator',0,'Portal Settings','fields','DocType',4,'menu','Portal Menu',NULL,'Table',NULL,'Portal Menu Item',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('739a3bed5b','2013-02-18 13:36:19.000000','2017-09-01 21:59:51.696379','Administrator','Administrator',0,'DocType','fields','DocType',10,'beta','Beta',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('73a19613ea','2013-02-22 01:27:33.000000','2017-09-01 21:59:50.986087','Administrator','Administrator',0,'DocPerm','fields','DocType',25,'email','Email',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'1',NULL,0,0,0,NULL,0,0,0,0,0,0),('73d3ba4de4','2015-03-18 06:15:59.321619','2017-09-01 22:00:02.769685','Administrator','Administrator',0,'Email Group Member','fields','DocType',1,'email_group','Email Group',NULL,'Link',NULL,'Email Group',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,1,0,'',0,0,0,0,0,0),('73f6ea47cb','2013-02-22 01:27:32.000000','2017-09-01 22:00:04.800729','Administrator','Administrator',0,'Customize Form Field','fields','DocType',29,'default','Default','default','Text','Text',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('7432a982cd','2017-04-21 16:57:30.264478','2017-09-01 22:00:07.448430','Administrator','Administrator',0,'GSuite Settings','fields','DocType',2,'google_credentials','Google Credentials',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:doc.enable',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('743307ef5a','2014-03-11 14:55:00.000000','2017-09-01 21:59:52.429552','Administrator','Administrator',0,'User','fields','DocType',58,'fb_username','Facebook Username',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,1,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,NULL,0,0,0,0,0,0),('74407f5b7a','2013-06-10 13:17:47.000000','2017-09-01 22:00:05.629704','Administrator','Administrator',0,'Event','fields','DocType',18,'tuesday','Tuesday',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:doc.repeat_this_event && doc.repeat_on===\"Every Day\"',0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('746683e057','2014-03-04 08:29:52.000000','2017-09-01 22:00:06.216644','Administrator','Administrator',0,'Social Login Keys','fields','DocType',11,'frappe_client_id','Frappe Client ID',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('747f2cfe6a','2013-02-18 13:36:19.000000','2017-09-01 21:59:51.696379','Administrator','Administrator',0,'DocType','fields','DocType',56,'is_published_field','Is Published Field',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'has_web_view',0,0,NULL,NULL,0,'',NULL,0,0,0,'',0,0,0,0,0,0),('74a3d0a6da','2013-01-29 10:47:14.000000','2017-09-01 21:59:55.016873','Administrator','Administrator',0,'Communication','fields','DocType',15,'comment_type','Comment Type',NULL,'Select',NULL,'\nComment\nLike\nInfo\nLabel\nWorkflow\nCreated\nUpdated\nSubmitted\nCancelled\nDeleted\nAssigned\nAssignment Completed\nAttachment\nAttachment Removed\nShared\nUnshared\nBot\nRelinked',0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('74bb8a2235','2013-01-29 17:55:08.000000','2017-09-01 22:00:04.634582','Administrator','Administrator',0,'Customize Form','fields','DocType',19,'sort_order','Sort Order',NULL,'Select',NULL,'ASC\nDESC',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('74e0f8fcc3','2014-09-11 12:04:34.163728','2017-09-01 22:00:02.520524','Administrator','Administrator',0,'Email Account','fields','DocType',19,'initial_sync_count','Initial Sync Count',NULL,'Select',NULL,'100\n250\n500',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'250','Total number of emails to sync in initial sync process ',0,0,0,'',0,0,0,0,0,0),('750c283327','2016-09-22 04:16:48.829658','2017-09-01 22:00:06.105316','Administrator','Administrator',0,'LDAP Settings','fields','DocType',7,'ldap_search_string','LDAP Search String',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('7570447670','2014-07-11 17:18:09.923399','2017-09-01 22:00:03.128353','Administrator','Administrator',0,'Email Alert','fields','DocType',21,'recipients','Recipients',NULL,'Table',NULL,'Email Alert Recipient',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('757ce19e89','2014-09-01 14:08:48.624556','2017-09-01 21:59:53.572628','Administrator','Administrator',0,'Web Form','fields','DocType',19,'max_attachment_size','Max Attachment Size (in MB)',NULL,'Int',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('7593999f66','2013-01-29 10:47:14.000000','2017-09-01 21:59:55.016873','Administrator','Administrator',0,'Communication','fields','DocType',3,'communication_medium','Type',NULL,'Select',NULL,'\nEmail\nChat\nPhone\nSMS\nVisit\nOther',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:doc.communication_type===\"Communication\"',0,0,NULL,NULL,0,'',NULL,0,0,0,NULL,0,0,0,0,0,0),('75a00a8d64','2013-03-28 10:35:30.000000','2017-09-01 22:00:00.324049','Administrator','Administrator',0,'Web Page','fields','DocType',19,'show_sidebar','Show Sidebar',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('75c2d69545','2013-03-09 15:45:57.000000','2017-09-01 21:59:57.830003','Administrator','Administrator',0,'Report','fields','DocType',7,'report_type','Report Type',NULL,'Select',NULL,'Report Builder\nQuery Report\nScript Report',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('75d969461d','2013-02-18 13:36:19.000000','2017-09-01 21:59:51.696379','Administrator','Administrator',0,'DocType','fields','DocType',58,'engine','Database Engine',NULL,'Select',NULL,'InnoDB\nMyISAM',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:!doc.issingle',0,0,NULL,NULL,0,'InnoDB',NULL,0,0,0,'',0,0,0,0,0,0),('764b9589ca','2016-12-29 12:59:48.638970','2017-09-01 21:59:57.504015','Administrator','Administrator',0,'Deleted Document','fields','DocType',3,'column_break_3',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('76962ff5ef','2014-09-01 14:14:14.292173','2017-09-01 21:59:53.897718','Administrator','Administrator',0,'Web Form Field','fields','DocType',10,'max_value','Max Value',NULL,'Int',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:doc.fieldtype==\'Int\'',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('76ad76a1c4','2013-02-22 01:27:32.000000','2017-09-01 22:00:04.800729','Administrator','Administrator',0,'Customize Form Field','fields','DocType',17,'permlevel','Perm Level','permlevel','Int','Int',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'0',NULL,1,0,0,NULL,0,0,0,0,0,0),('771285026b','2014-09-11 12:04:34.163728','2017-09-01 22:00:02.520524','Administrator','Administrator',0,'Email Account','fields','DocType',12,'use_imap','Use IMAP',NULL,'Check',NULL,'domain.use_imap',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval: !doc.domain && doc.enable_incoming',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('7714010dcd','2013-01-10 16:34:01.000000','2017-09-01 21:59:53.056685','Administrator','Administrator',0,'Custom Field','fields','DocType',15,'depends_on','Depends On',NULL,'Code',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,255,0,0,0,0,0),('7716f09ed3','2013-01-10 16:34:31.000000','2017-09-01 22:00:03.015516','Administrator','Administrator',0,'Newsletter','fields','DocType',11,'test_email_id','Test Email Address',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'A Lead with this Email Address should exist',0,0,0,NULL,0,0,0,0,0,0),('772386dabc','2014-03-11 14:55:00.000000','2017-09-01 21:59:52.429552','Administrator','Administrator',0,'User','fields','DocType',9,'send_welcome_email','Send Welcome Email',NULL,'Check',NULL,NULL,0,0,0,0,0,0,1,0,0,0,0,0,NULL,NULL,'eval:doc.__islocal',0,0,NULL,NULL,0,'1',NULL,0,0,0,'',0,0,0,0,0,0),('772aa5c596','2016-08-24 14:10:17.471264','2017-09-01 22:00:07.513722','Administrator','Administrator',0,'OAuth Bearer Token','fields','DocType',1,'client','Client',NULL,'Link',NULL,'OAuth Client',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,1,0,NULL,0,0,0,0,0,0),('773297d175','2016-12-29 12:59:48.638970','2017-09-01 21:59:57.504015','Administrator','Administrator',0,'Deleted Document','fields','DocType',2,'deleted_doctype','Deleted DocType',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('77fdd23f18','2013-01-10 16:34:01.000000','2017-09-01 21:59:53.056685','Administrator','Administrator',0,'Custom Field','fields','DocType',23,'read_only','Read Only',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('7802394eda','2013-01-10 16:34:04.000000','2017-09-01 21:59:53.403426','Administrator','Administrator',0,'Property Setter','fields','DocType',8,'property','Property',NULL,'Data',NULL,NULL,1,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,1,0,NULL,0,0,0,0,0,0),('7899037310','2016-08-24 14:07:21.955052','2017-09-01 22:00:07.188251','Administrator','Administrator',0,'OAuth Client','fields','DocType',7,'sb_1','',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'',0,0,0,'',0,0,0,0,0,0),('78b1b860ba','2013-02-22 01:27:32.000000','2017-09-01 21:59:56.060033','Administrator','Administrator',0,'DefaultValue','fields','DocType',2,'defvalue','Value','defvalue','Text','Text',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'200px','200px',0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('78b4efde2e','2014-10-30 14:25:53.780105','2017-09-01 22:00:01.066008','Administrator','Administrator',0,'Help Article','fields','DocType',1,'title','Title',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,1,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('78b9b306a0','2014-04-17 16:53:52.640856','2017-09-01 21:59:58.766477','Administrator','Administrator',0,'System Settings','fields','DocType',33,'disable_standard_email_footer','Disable Standard Email Footer',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('78e182d000','2016-04-20 15:29:39.785172','2017-09-01 22:00:04.338347','Administrator','Administrator',0,'Email Flag Queue','fields','DocType',1,'is_completed','Is Completed',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('793b6e0f05','2013-02-18 13:36:19.000000','2017-09-01 21:59:51.696379','Administrator','Administrator',0,'DocType','fields','DocType',35,'sb2','Permission Rules',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:!doc.istable',0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('79638eccbf','2013-01-10 16:34:32.000000','2017-09-01 22:00:08.571416','Administrator','Administrator',0,'Address','fields','DocType',2,'address_title','Address Title',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'',0,0,0,NULL,0,0,0,0,0,0),('7970df5d59','2017-02-13 14:53:36.240122','2017-09-01 21:59:58.010084','Administrator','Administrator',0,'Custom Role','fields','DocType',6,'ref_doctype','Reference Doctype',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('79cd92be51','2013-04-30 12:58:46.000000','2017-09-01 22:00:00.764927','Administrator','Administrator',0,'Website Settings','fields','DocType',15,'top_bar_items','Top Bar Items',NULL,'Table',NULL,'Top Bar Item',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('7a8b1e3c00','2013-01-10 16:34:01.000000','2017-09-01 21:59:53.056685','Administrator','Administrator',0,'Custom Field','fields','DocType',18,'width','Width','width','Data','Data',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('7aa06a6dd6','2017-01-11 04:21:35.217943','2017-09-01 21:59:54.801850','Administrator','Administrator',0,'Custom DocPerm','fields','DocType',19,'export','Export',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'1',NULL,0,0,0,'',0,0,0,0,0,0),('7acf455110','2015-02-18 12:46:38.168929','2017-09-01 21:59:59.903705','Administrator','Administrator',0,'Website Theme','fields','DocType',23,'background_image','Background Image',NULL,'Attach Image',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'If image is selected, color will be ignored.',0,0,0,'',0,0,0,0,0,0),('7bab000ddd','2015-03-24 14:28:15.882903','2017-09-01 21:59:58.101398','Administrator','Administrator',0,'Block Module','fields','DocType',1,'module','Module',NULL,'Data',NULL,'',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('7bb625d9fc','2013-03-28 10:35:30.000000','2017-09-01 22:00:00.894557','Administrator','Administrator',0,'Blog Post','fields','DocType',9,'blog_intro','Blog Intro',NULL,'Small Text',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Description for listing page, in plain text, only a couple of lines. (max 140 characters)',0,0,0,NULL,0,0,0,0,0,0),('7be3182778','2014-07-11 17:18:09.923399','2017-09-01 22:00:03.128353','Administrator','Administrator',0,'Email Alert','fields','DocType',22,'message_sb','Message',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('7c42b2d0a7','2014-03-11 14:55:00.000000','2017-09-01 21:59:52.429552','Administrator','Administrator',0,'User','fields','DocType',20,'gender','Gender','gender','Select','Select','\nMale\nFemale\nOther',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('7c5d68f2de','2013-03-19 12:02:15.000000','2017-09-01 22:00:00.258186','Administrator','Administrator',0,'About Us Settings','fields','DocType',4,'company_history_heading','Org History Heading',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'\"Company History\"',1,0,0,NULL,0,0,0,0,0,0),('7d02d319c0','2014-03-11 14:55:00.000000','2017-09-01 21:59:52.429552','Administrator','Administrator',0,'User','fields','DocType',15,'user_image','User Image',NULL,'Attach Image',NULL,NULL,0,1,0,1,0,0,0,0,0,0,1,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Get your globally recognized avatar from Gravatar.com',0,0,0,NULL,0,0,0,0,0,0),('7d4c134556','2016-02-22 03:47:45.387068','2017-09-01 22:00:05.878431','Administrator','Administrator',0,'Desktop Icon','fields','DocType',7,'hidden','Hidden',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('7d62df1e98','2016-12-29 12:59:48.638970','2017-09-01 21:59:57.504015','Administrator','Administrator',0,'Deleted Document','fields','DocType',4,'restored','Restored',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,1,'',0,0,0,0,0,0),('7d8273035f','2014-10-30 14:25:53.780105','2017-09-01 22:00:01.066008','Administrator','Administrator',0,'Help Article','fields','DocType',4,'column_break_4',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('7d8cfdab12','2013-01-29 10:47:14.000000','2017-09-01 21:59:55.016873','Administrator','Administrator',0,'Communication','fields','DocType',42,'uid','UID',NULL,'Int',NULL,NULL,0,1,0,0,0,0,0,0,1,0,1,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('7dc43668e2','2013-01-10 16:34:01.000000','2017-09-01 21:59:53.056685','Administrator','Administrator',0,'Custom Field','fields','DocType',8,'precision','Precision',NULL,'Select',NULL,'\n1\n2\n3\n4\n5\n6\n7\n8\n9',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:in_list([\"Float\", \"Currency\", \"Percent\"], doc.fieldtype)',0,0,NULL,NULL,0,NULL,'Set non-standard precision for a Float or Currency field',0,0,0,'',0,0,0,0,0,0),('7ddd4bf11c','2013-02-22 01:27:33.000000','2017-09-01 21:59:50.367790','Administrator','Administrator',0,'DocField','fields','DocType',17,'default','Default','default','Small Text','Text',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('7de3dd0db3','2014-03-11 14:55:00.000000','2017-09-01 21:59:52.429552','Administrator','Administrator',0,'User','fields','DocType',42,'modules_html','Modules HTML',NULL,'HTML',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,1,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('7df016f86e','2017-06-26 10:57:19.976624','2017-09-01 21:59:58.597232','Administrator','Administrator',0,'Test Runner','fields','DocType',2,'app','App',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('7e2dd83f8b','2013-01-10 16:34:03.000000','2017-09-01 21:59:58.184161','Administrator','Administrator',0,'Module Def','fields','DocType',2,'app_name','App Name',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,1,0,NULL,0,0,0,0,0,0),('7e31c0562d','2014-07-11 17:19:37.037109','2017-09-01 22:00:03.693814','Administrator','Administrator',0,'Email Alert Recipient','fields','DocType',4,'condition','Condition',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Expression, Optional',1,0,0,NULL,0,0,0,0,0,0),('7e582ea5bc','2013-02-22 01:27:32.000000','2017-09-01 22:00:04.800729','Administrator','Administrator',0,'Customize Form Field','fields','DocType',12,'precision','Precision',NULL,'Select',NULL,'\n1\n2\n3\n4\n5\n6\n7\n8\n9',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:in_list([\"Float\", \"Currency\", \"Percent\"], doc.fieldtype)',0,0,NULL,NULL,0,NULL,'Set non-standard precision for a Float or Currency field',0,0,0,'',0,0,0,0,0,0),('7e73091f19','2012-12-12 11:19:22.000000','2017-09-01 21:59:54.402066','Administrator','Administrator',0,'File','fields','DocType',6,'is_home_folder','Is Home Folder',NULL,'Check',NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('7eb185b6bd','2012-08-02 15:17:28.000000','2017-09-01 22:00:03.294421','Administrator','Administrator',0,'Email Queue','fields','DocType',4,'message','Message',NULL,'Code',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('7ebd9bb51f','2013-01-29 10:47:14.000000','2017-09-01 21:59:55.016873','Administrator','Administrator',0,'Communication','fields','DocType',16,'column_break_5',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('7ec91a6fc3','2013-02-18 13:36:19.000000','2017-09-01 21:59:51.696379','Administrator','Administrator',0,'DocType','fields','DocType',5,'editable_grid','Editable Grid',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'istable',0,0,NULL,NULL,0,'1',NULL,0,0,0,'',0,0,0,0,0,0),('7eee53fd5e','2013-03-11 17:48:16.000000','2017-09-01 22:00:00.653637','Administrator','Administrator',0,'Blog Settings','fields','DocType',2,'blog_introduction','Blog Introduction',NULL,'Small Text',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('7f428ca334','2016-03-29 10:50:48.848239','2017-09-01 22:00:03.612963','Administrator','Administrator',0,'Email Domain','fields','DocType',11,'smtp_server','SMTP Server',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,'',0,0,NULL,NULL,0,NULL,'e.g. smtp.gmail.com',0,0,0,'',0,0,0,0,0,0),('7f6f83bc28','2013-02-22 01:27:36.000000','2017-09-01 22:00:01.991359','Administrator','Administrator',0,'Workflow Transition','fields','DocType',1,'state','State',NULL,'Link',NULL,'Workflow State',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'200px','200px',0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('7fb6b2f1f1','2017-09-01 15:19:44.113804','2017-09-01 15:33:38.607038','Administrator','Administrator',0,'Medicamentos','fields','DocType',2,'medico','Medico',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,2,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('7fca7c5cf4','2013-06-10 13:17:47.000000','2017-09-01 22:00:05.629704','Administrator','Administrator',0,'Event','fields','DocType',24,'section_break_6',NULL,NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('7fcca0b129','2013-02-18 13:36:19.000000','2017-09-01 21:59:51.696379','Administrator','Administrator',0,'DocType','fields','DocType',23,'image_field','Image Field (Must of type \"Attach Image\")',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'',0,0,0,'',0,0,0,0,0,0),('7fd376d67f','2012-12-28 10:49:55.000000','2017-09-01 22:00:02.091249','Administrator','Administrator',0,'Workflow','fields','DocType',2,'document_type','Document Type',NULL,'Link',NULL,'DocType',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'DocType on which this Workflow is applicable.',0,1,0,NULL,0,0,0,0,0,0),('7ff3653c44','2013-03-19 12:02:15.000000','2017-09-01 22:00:00.258186','Administrator','Administrator',0,'About Us Settings','fields','DocType',1,'help','Help',NULL,'HTML',NULL,'<div class=\"alert\">Link for About Us Page is \"/about\"</div>',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('80110fde80','2013-06-10 13:17:47.000000','2017-09-01 22:00:05.629704','Administrator','Administrator',0,'Event','fields','DocType',5,'repeat_this_event','Repeat this Event',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('802b1d7a24','2012-12-12 11:19:22.000000','2017-09-01 21:59:54.402066','Administrator','Administrator',0,'File','fields','DocType',21,'old_parent','old_parent',NULL,'Data',NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('802e85a3ab','2013-01-29 10:47:14.000000','2017-09-01 21:59:55.016873','Administrator','Administrator',0,'Communication','fields','DocType',24,'reference_section','Reference',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('8105578407','2013-02-18 13:36:19.000000','2017-09-01 21:59:51.696379','Administrator','Administrator',0,'DocType','fields','DocType',17,'name_case','Name Case','name_case','Select','Select','\nTitle Case\nUPPER CASE',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('820f63feed','2013-01-29 17:55:08.000000','2017-09-01 22:00:04.634582','Administrator','Administrator',0,'Customize Form','fields','DocType',6,'allow_copy','Hide Copy',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('821185d986','2013-01-10 16:34:01.000000','2017-09-01 21:59:53.056685','Administrator','Administrator',0,'Custom Field','fields','DocType',27,'print_hide_if_no_value','Print Hide If No Value',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:[\"Int\", \"Float\", \"Currency\", \"Percent\"].indexOf(doc.fieldtype)!==-1',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('8217036f6f','2013-01-10 16:34:32.000000','2017-09-01 22:00:08.226056','Administrator','Administrator',0,'Contact','fields','DocType',11,'mobile_no','Mobile No','mobile_no','Data','Data',NULL,0,0,0,0,0,0,1,1,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('8240eb5ded','2017-09-01 13:29:30.289032','2017-09-01 19:20:24.367341','Administrator','Administrator',0,'Paciente','fields','DocType',21,'column_break_20',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('82959b208e','2014-03-11 14:55:00.000000','2017-09-01 21:59:52.429552','Administrator','Administrator',0,'User','fields','DocType',26,'bio','Bio',NULL,'Small Text',NULL,NULL,0,0,0,0,0,0,0,0,0,0,1,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('82c5158eb9','2013-02-22 01:27:33.000000','2017-09-01 21:59:50.986087','Administrator','Administrator',0,'DocPerm','fields','DocType',18,'report','Report',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'32px','32px',0,'1',NULL,0,0,0,NULL,0,0,0,0,0,0),('82de33a0e4','2014-07-17 06:54:20.782907','2017-09-01 22:00:07.719476','Administrator','Administrator',0,'Print Settings','fields','DocType',2,'send_print_as_pdf','Send Print as PDF',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'1','Send Email Print Attachments as PDF (Recommended)',0,0,0,NULL,0,0,0,0,0,0),('8342965f17','2016-04-14 09:41:45.892975','2017-09-01 22:00:02.933067','Administrator','Administrator',0,'Unhandled Email','fields','DocType',1,'email_account','Email Account',NULL,'Link',NULL,'Email Account',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('8372827aba','2014-07-17 06:54:20.782907','2017-09-01 22:00:07.719476','Administrator','Administrator',0,'Print Settings','fields','DocType',3,'repeat_header_footer','Repeat Header and Footer in PDF',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'1',NULL,0,0,0,'',0,0,0,0,0,0),('839452d7fa','2013-02-18 13:36:19.000000','2017-09-01 21:59:51.696379','Administrator','Administrator',0,'DocType','fields','DocType',3,'istable','Is Child Table','istable','Check','Check',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Child Tables are shown as a Grid in other DocTypes.',0,1,0,NULL,0,0,0,0,0,0),('83c870f29c','2017-02-13 17:33:25.157332','2017-09-01 21:59:54.729999','Administrator','Administrator',0,'Role Permission for Page and Report','fields','DocType',6,'roles','Roles',NULL,'Table',NULL,'Has Role',0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('83e0bea7f8','2013-04-30 12:58:46.000000','2017-09-01 22:00:00.764927','Administrator','Administrator',0,'Website Settings','fields','DocType',8,'website_theme_image_link','Website Theme Image Link',NULL,'Code',NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('841c325a5b','2013-01-10 16:34:32.000000','2017-09-01 22:00:08.226056','Administrator','Administrator',0,'Contact','fields','DocType',10,'phone','Phone','contact_no','Data','Data',NULL,0,0,0,0,0,0,1,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('842d49b920','2014-10-30 14:25:53.780105','2017-09-01 22:00:01.066008','Administrator','Administrator',0,'Help Article','fields','DocType',2,'category','Category',NULL,'Link',NULL,'Help Category',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,1,0,'',0,0,0,0,0,0),('8433288bb9','2016-02-22 03:47:45.387068','2017-09-01 22:00:05.878431','Administrator','Administrator',0,'Desktop Icon','fields','DocType',18,'reverse','Reverse Icon Color',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('8457947990','2017-01-24 15:46:38.366213','2017-09-01 21:59:56.229184','Administrator','Administrator',0,'Feedback Trigger','fields','DocType',5,'email_fieldname','Email Fieldname',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('846e2c7241','2013-01-29 17:55:08.000000','2017-09-01 22:00:04.634582','Administrator','Administrator',0,'Customize Form','fields','DocType',17,'sort_field','Sort Field',NULL,'Select',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('84864c7070','2016-10-19 12:26:42.569185','2017-09-01 22:00:05.804293','Administrator','Administrator',0,'Kanban Board Column','fields','DocType',4,'order','Order',NULL,'Code',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('84c3ae4a91','2012-12-28 10:49:56.000000','2017-09-01 22:00:02.200541','Administrator','Administrator',0,'Workflow Action','fields','DocType',1,'workflow_action_name','Workflow Action Name',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('84ecd7f3db','2016-05-25 09:43:44.767581','2017-09-01 21:59:57.097479','Administrator','Administrator',0,'Tag','fields','DocType',1,'tag_name','Tags',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('8523a35473','2014-04-17 16:53:52.640856','2017-09-01 21:59:58.766477','Administrator','Administrator',0,'System Settings','fields','DocType',8,'date_format','Date Format',NULL,'Select',NULL,'yyyy-mm-dd\ndd-mm-yyyy\ndd/mm/yyyy\ndd.mm.yyyy\nmm/dd/yyyy\nmm-dd-yyyy',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('8524127523','2017-09-01 13:29:30.289032','2017-09-01 19:20:24.367341','Administrator','Administrator',0,'Paciente','fields','DocType',12,'nss','NSS',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,1,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('853c500f0e','2014-03-11 14:55:00.000000','2017-09-01 21:59:52.429552','Administrator','Administrator',0,'User','fields','DocType',52,'column_break1',NULL,NULL,'Column Break','Column Break',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'50%','50%',0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('8558b594b3','2014-09-11 12:04:34.163728','2017-09-01 22:00:02.520524','Administrator','Administrator',0,'Email Account','fields','DocType',24,'outgoing_mail_settings','',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('85f522a5b8','2017-09-01 13:29:30.289032','2017-09-01 19:20:24.367341','Administrator','Administrator',0,'Paciente','fields','DocType',18,'column_break_17',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('863bc92ee7','2012-12-12 11:19:22.000000','2017-09-01 21:59:54.402066','Administrator','Administrator',0,'File','fields','DocType',19,'lft','lft',NULL,'Int',NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('8655ad6e90','2012-12-12 11:19:22.000000','2017-09-01 21:59:54.402066','Administrator','Administrator',0,'File','fields','DocType',20,'rgt','rgt',NULL,'Int',NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('86a1b1b091','2017-01-27 15:43:33.780808','2017-09-01 21:59:56.777309','Administrator','Administrator',0,'Feedback Request','fields','DocType',11,'section_break_1','Feedback Rating',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,'eval: doc.rating',NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('86b07d55c2','2017-09-01 13:29:30.289032','2017-09-01 19:20:24.367341','Administrator','Administrator',0,'Paciente','fields','DocType',29,'medicamentos','Medicamentos',NULL,'Table',NULL,'Medicamentos',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('86b1a6fab4','2014-09-11 12:04:34.163728','2017-09-01 22:00:02.520524','Administrator','Administrator',0,'Email Account','fields','DocType',15,'attachment_limit','Attachment Limit (MB)',NULL,'Int',NULL,'domain.attachment_limit',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:!doc.domain && doc.enable_incoming',0,0,NULL,NULL,0,'1','Ignore attachments over this size',0,0,0,'',0,0,0,0,0,0),('86d92a8aba','2013-05-24 13:41:00.000000','2017-09-01 22:00:05.180965','Administrator','Administrator',0,'Note','fields','DocType',6,'content','Content',NULL,'Text Editor',NULL,NULL,0,0,0,0,0,0,1,1,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Help: To link to another record in the system, use \"#Form/Note/[Note Name]\" as the Link URL. (don\'t use \"http://\")',0,0,0,NULL,0,0,0,0,0,0),('86f84c92d1','2013-01-10 16:34:01.000000','2017-09-01 21:59:53.056685','Administrator','Administrator',0,'Custom Field','fields','DocType',36,'search_index','Index',NULL,'Check',NULL,NULL,0,1,0,1,0,0,0,0,0,0,1,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('878900bc46','2015-02-18 12:46:38.168929','2017-09-01 21:59:59.903705','Administrator','Administrator',0,'Website Theme','fields','DocType',15,'heading_style','Heading Style',NULL,'Select',NULL,'\nUPPERCASE\nTitle Case\nlowercase',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'apply_text_styles',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('87b61905d3','2014-07-11 17:18:09.923399','2017-09-01 22:00:03.128353','Administrator','Administrator',0,'Email Alert','fields','DocType',25,'message_examples','Message Examples',NULL,'HTML',NULL,'<h5>Message Example</h5>\n\n<pre>&lt;h3&gt;Order Overdue&lt;/h3&gt;\n\n&lt;p&gt;Transaction {{ doc.name }} has exceeded Due Date. Please take necessary action.&lt;/p&gt;\n\n&lt;!-- show last comment --&gt;\n{% if comments %}\nLast comment: {{ comments[-1].comment }} by {{ comments[-1].by }}\n{% endif %}\n\n&lt;h4&gt;Details&lt;/h4&gt;\n\n&lt;ul&gt;\n&lt;li&gt;Customer: {{ doc.customer }}\n&lt;li&gt;Amount: {{ doc.total_amount }}\n&lt;/ul&gt;\n</pre>',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('87ca435f0c','2017-09-01 15:56:17.943779','2017-09-01 16:25:52.923943','Administrator','Administrator',0,'Empresa','fields','DocType',8,'sb_telefonos','Telefonos',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('87da138def','2017-09-01 15:11:26.069079','2017-09-01 15:28:08.415026','Administrator','Administrator',0,'Alergias','fields','DocType',3,'column_break_3',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('880c5f89a3','2014-09-11 12:04:34.163728','2017-09-01 22:00:02.520524','Administrator','Administrator',0,'Email Account','fields','DocType',37,'auto_reply_message','Auto Reply Message',NULL,'Text Editor',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'enable_auto_reply',0,0,NULL,NULL,0,NULL,'ProTip: Add <code>Reference: {{ reference_doctype }} {{ reference_name }}</code> to send document reference',0,0,0,'',0,0,0,0,0,0),('884be017f2','2014-08-22 16:12:17.249590','2017-09-01 21:59:55.520947','Administrator','Administrator',0,'Language','fields','DocType',2,'language_name','Language Name',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('885c9df18c','2014-03-11 14:55:00.000000','2017-09-01 21:59:52.429552','Administrator','Administrator',0,'User','fields','DocType',35,'email_signature','Email Signature',NULL,'Small Text',NULL,NULL,0,0,0,0,0,0,0,0,0,0,1,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('888fe60ac5','2014-09-11 12:04:34.163728','2017-09-01 22:00:02.520524','Administrator','Administrator',0,'Email Account','fields','DocType',22,'unreplied_for_mins','Notify if unreplied for (in mins)',NULL,'Int',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'notify_if_unreplied',0,0,NULL,NULL,0,'30',NULL,0,0,0,'',0,0,0,0,0,0),('88905c1f2c','2014-10-30 14:25:53.780105','2017-09-01 22:00:01.066008','Administrator','Administrator',0,'Help Article','fields','DocType',7,'section_break_7',NULL,NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('88c64b0a6b','2014-03-11 14:55:00.000000','2017-09-01 21:59:52.429552','Administrator','Administrator',0,'User','fields','DocType',54,'last_ip','Last IP','last_ip','Read Only','Read Only',NULL,0,0,0,0,0,0,0,0,0,0,1,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,NULL,0,0,0,0,0,0),('88ef9dbcbc','2013-06-10 13:17:47.000000','2017-09-01 22:00:05.629704','Administrator','Administrator',0,'Event','fields','DocType',21,'friday','Friday',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:doc.repeat_this_event && doc.repeat_on===\"Every Day\"',0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('88f345c8ac','2013-02-22 01:27:36.000000','2017-09-01 22:00:02.249452','Administrator','Administrator',0,'Workflow Document State','fields','DocType',1,'state','State',NULL,'Link',NULL,'Workflow State',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'160px','160px',0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('8920c550b8','2016-05-25 09:49:07.125394','2017-09-01 21:59:57.606277','Administrator','Administrator',0,'Tag Category','fields','DocType',1,'category_name','Category Name',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('8942746398','2014-03-11 14:55:00.000000','2017-09-01 21:59:52.429552','Administrator','Administrator',0,'User','fields','DocType',8,'full_name','Full Name',NULL,'Data',NULL,NULL,0,1,0,0,0,0,0,1,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('897f55d619','2012-12-20 17:16:49.000000','2017-09-01 21:59:56.947669','Administrator','Administrator',0,'Page','fields','DocType',6,'column_break0',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('89d32439dd','2017-01-23 16:56:25.875531','2017-09-01 21:59:56.487193','Administrator','Administrator',0,'Authentication Log','fields','DocType',6,'section_break_6',NULL,NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('89dc2f12f8','2013-02-18 13:36:19.000000','2017-09-01 21:59:51.696379','Administrator','Administrator',0,'DocType','fields','DocType',53,'allow_guest_to_view','Allow Guest to View',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'has_web_view',0,0,NULL,NULL,0,'0',NULL,0,0,0,'',0,0,0,0,0,0),('8a1a10ef1f','2013-02-22 01:27:33.000000','2017-09-01 21:59:50.367790','Administrator','Administrator',0,'DocField','fields','DocType',15,'column_break_6',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('8a70cdd58a','2014-07-11 17:18:09.923399','2017-09-01 22:00:03.128353','Administrator','Administrator',0,'Email Alert','fields','DocType',15,'column_break_6',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('8a93891ac9','2017-09-01 15:11:26.069079','2017-09-01 15:28:08.415026','Administrator','Administrator',0,'Alergias','fields','DocType',4,'medico','Medico',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('8aa20f8c43','2012-07-03 13:30:35.000000','2017-09-01 22:00:05.317576','Administrator','Administrator',0,'ToDo','fields','DocType',5,'date','Due Date','date','Date','Date',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,1,0,NULL,0,0,0,0,0,0),('8aaacebf24','2012-11-22 17:45:46.000000','2017-09-01 22:00:07.822928','Administrator','Administrator',0,'Letter Head','fields','DocType',4,'content','Content','content','Text Editor','Text Editor',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'letter_head_name',0,0,NULL,NULL,0,NULL,'Letter Head in HTML',1,0,0,NULL,0,0,0,0,0,0),('8adb0b942e','2014-03-11 14:55:00.000000','2017-09-01 21:59:52.429552','Administrator','Administrator',0,'User','fields','DocType',62,'github_userid','Github User ID',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,1,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,NULL,0,0,0,0,0,0),('8ae4ef5d5d','2013-03-28 10:35:30.000000','2017-09-01 22:00:00.324049','Administrator','Administrator',0,'Web Page','fields','DocType',11,'insert_code','Insert Code',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Add code as &lt;script&gt;',0,0,0,NULL,0,0,0,0,0,0),('8aeebb06f8','2014-09-01 14:08:48.624556','2017-09-01 21:59:53.572628','Administrator','Administrator',0,'Web Form','fields','DocType',36,'advanced','Advanced',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('8afa3dfb82','2014-09-01 14:14:14.292173','2017-09-01 21:59:53.897718','Administrator','Administrator',0,'Web Form Field','fields','DocType',11,'section_break_6',NULL,NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('8b66adac72','2013-04-30 12:58:46.000000','2017-09-01 22:00:00.764927','Administrator','Administrator',0,'Website Settings','fields','DocType',12,'set_banner_from_image','Set Banner from Image',NULL,'Button',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('8c0bb2836b','2017-02-13 14:53:36.240122','2017-09-01 21:59:58.010084','Administrator','Administrator',0,'Custom Role','fields','DocType',2,'report','Report',NULL,'Link',NULL,'Report',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('8c360a27cd','2013-01-29 10:47:14.000000','2017-09-01 21:59:55.016873','Administrator','Administrator',0,'Communication','fields','DocType',41,'message_id','Message ID',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',995,0,1,0,0,0),('8ca74d2d21','2013-01-29 10:47:14.000000','2017-09-01 21:59:55.016873','Administrator','Administrator',0,'Communication','fields','DocType',32,'link_doctype','Link DocType',NULL,'Link',NULL,'DocType',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('8d4849b997','2017-09-01 15:11:26.069079','2017-09-01 15:28:08.415026','Administrator','Administrator',0,'Alergias','fields','DocType',2,'fecha','Fecha',NULL,'Date',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('8d6378f169','2014-03-11 14:55:00.000000','2017-09-01 21:59:52.429552','Administrator','Administrator',0,'User','fields','DocType',2,'enabled','Enabled','enabled','Check','Check',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'1',NULL,0,0,1,NULL,0,0,0,0,0,0),('8d997fdc26','2016-09-21 10:12:57.399174','2017-09-01 22:00:06.300633','Administrator','Administrator',0,'Dropbox Settings','fields','DocType',4,'app_access_key','App Access Key',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:!doc.dropbox_setup_via_site_config',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('8da6de4c7e','2013-01-23 19:54:43.000000','2017-09-01 22:00:07.979522','Administrator','Administrator',0,'Print Format','fields','DocType',21,'format_data','Format Data',NULL,'Code',NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('8daa8a9bdc','2016-03-29 10:50:48.848239','2017-09-01 22:00:03.612963','Administrator','Administrator',0,'Email Domain','fields','DocType',6,'use_imap','Use IMAP',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('8dbe231bc2','2013-01-10 16:34:31.000000','2017-09-01 22:00:03.015516','Administrator','Administrator',0,'Newsletter','fields','DocType',4,'email_sent','Email Sent?',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,1,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,NULL,0,0,0,0,0,0),('8e0f164aa5','2013-01-10 16:34:32.000000','2017-09-01 22:00:08.571416','Administrator','Administrator',0,'Address','fields','DocType',8,'state','State',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('8e16704629','2013-01-23 19:54:43.000000','2017-09-01 22:00:07.979522','Administrator','Administrator',0,'Print Format','fields','DocType',3,'disabled','Disabled',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('8e564be475','2013-01-10 16:34:01.000000','2017-09-01 21:59:53.056685','Administrator','Administrator',0,'Custom Field','fields','DocType',16,'description','Field Description','description','Text','Text',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'300px','300px',0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('8e5b53773b','2012-12-12 11:19:22.000000','2017-09-01 21:59:54.402066','Administrator','Administrator',0,'File','fields','DocType',8,'file_size','File Size',NULL,'Int',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,1,NULL,0,0,0,0,0,0),('8e6bcd893e','2014-03-11 14:55:00.000000','2017-09-01 21:59:52.429552','Administrator','Administrator',0,'User','fields','DocType',47,'simultaneous_sessions','Simultaneous Sessions',NULL,'Int',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'1',NULL,0,0,0,'',0,0,0,0,0,0),('8ebdfbe7e6','2014-03-11 14:55:00.000000','2017-09-01 21:59:52.429552','Administrator','Administrator',0,'User','fields','DocType',34,'thread_notify','Send Notifications for Transactions I Follow',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'1',NULL,0,0,0,'',0,0,0,0,0,0),('8ec17911b1','2016-09-22 04:16:48.829658','2017-09-01 22:00:06.105316','Administrator','Administrator',0,'LDAP Settings','fields','DocType',9,'ldap_email_field','LDAP Email Field',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('8ec4af8dbc','2013-02-22 01:27:32.000000','2017-09-01 22:00:04.800729','Administrator','Administrator',0,'Customize Form Field','fields','DocType',38,'is_custom_field','Is Custom Field',NULL,'Check',NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('8edf04164d','2013-01-23 19:54:43.000000','2017-09-01 22:00:07.979522','Administrator','Administrator',0,'Print Format','fields','DocType',16,'css_section',NULL,NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('8fd4cbe72b','2013-03-28 10:35:30.000000','2017-09-01 22:00:00.894557','Administrator','Administrator',0,'Blog Post','fields','DocType',7,'route','Route',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,1,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('8fe206879e','2012-07-03 13:30:35.000000','2017-09-01 22:00:05.317576','Administrator','Administrator',0,'ToDo','fields','DocType',14,'assigned_by','Assigned By',NULL,'Link',NULL,'User',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,1,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('8ffc40f45f','2016-09-01 01:34:34.985457','2017-09-01 22:00:03.756563','Administrator','Administrator',0,'Auto Email Report','fields','DocType',12,'filters','Filters',NULL,'Text',NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('90228b56a5','2013-02-22 01:27:32.000000','2017-09-01 22:00:04.800729','Administrator','Administrator',0,'Customize Form Field','fields','DocType',32,'description','Description','description','Text','Text',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'300px','300px',0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('905ef9da4b','2015-03-18 06:08:32.729800','2017-09-01 22:00:02.448883','Administrator','Administrator',0,'Email Group','fields','DocType',2,'total_subscribers','Total Subscribers',NULL,'Int',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'0',NULL,1,0,1,'',0,0,0,0,0,0),('907323bcbd','2013-01-23 19:54:43.000000','2017-09-01 22:00:07.979522','Administrator','Administrator',0,'Print Format','fields','DocType',2,'module','Module',NULL,'Link',NULL,'Module Def',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('90b49df0e3','2014-09-11 12:04:34.163728','2017-09-01 22:00:02.520524','Administrator','Administrator',0,'Email Account','fields','DocType',5,'awaiting_password','Awaiting password',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('90cf87d534','2013-02-22 01:28:08.000000','2017-09-01 22:00:00.692769','Administrator','Administrator',0,'Top Bar Item','fields','DocType',5,'right','Right',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'1','For top bar',0,0,0,NULL,0,0,0,0,0,0),('90f8b1ad8b','2013-02-22 01:27:33.000000','2017-09-01 21:59:50.986087','Administrator','Administrator',0,'DocPerm','fields','DocType',9,'read','Read','read','Check','Check',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'32px','32px',0,'1',NULL,1,0,0,NULL,0,0,0,0,0,0),('9146816720','2013-01-29 10:47:14.000000','2017-09-01 21:59:55.016873','Administrator','Administrator',0,'Communication','fields','DocType',29,'in_reply_to','In Reply To',NULL,'Link',NULL,'Communication',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('91b51316fa','2016-03-30 01:39:20.586927','2017-09-01 21:59:54.203506','Administrator','Administrator',0,'Portal Menu Item','fields','DocType',3,'route','Route',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,3,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('91c571ea04','2013-01-10 16:34:32.000000','2017-09-01 22:00:08.226056','Administrator','Administrator',0,'Contact','fields','DocType',3,'last_name','Last Name','last_name','Data','Data',NULL,0,0,0,0,0,0,1,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('91e60ae4e8','2016-12-08 12:01:07.993900','2017-09-01 22:00:02.387366','Administrator','Administrator',0,'Email Queue Recipient','fields','DocType',1,'recipient','Recipient',NULL,'Data',NULL,'Email',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('92020190f9','2013-01-10 16:34:04.000000','2017-09-01 21:59:53.403426','Administrator','Administrator',0,'Property Setter','fields','DocType',5,'column_break0',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('9253912e43','2017-09-01 13:29:30.289032','2017-09-01 19:20:24.367341','Administrator','Administrator',0,'Paciente','fields','DocType',7,'edad','Edad',NULL,'Int',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('92e1a3b546','2013-02-18 13:36:19.000000','2017-09-01 21:59:51.696379','Administrator','Administrator',0,'DocType','fields','DocType',46,'sort_field','Sort Field',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:!doc.istable',0,0,NULL,NULL,0,'modified','',0,0,0,NULL,0,0,0,0,0,0),('92e473d777','2012-08-02 15:17:28.000000','2017-09-01 22:00:03.294421','Administrator','Administrator',0,'Email Queue','fields','DocType',16,'expose_recipients','Expose Recipients',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('933fa2ea9c','2017-01-11 04:21:35.217943','2017-09-01 21:59:54.801850','Administrator','Administrator',0,'Custom DocPerm','fields','DocType',17,'additional_permissions','Additional Permissions',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('935c73287d','2013-01-10 16:34:01.000000','2017-09-01 21:59:53.056685','Administrator','Administrator',0,'Custom Field','fields','DocType',12,'collapsible','Collapsible',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:doc.fieldtype==\"Section Break\"',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('935f034c87','2017-09-01 13:29:30.289032','2017-09-01 19:20:24.367341','Administrator','Administrator',0,'Paciente','fields','DocType',24,'sb_24','Telefonos',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('9378f51481','2013-01-29 10:47:14.000000','2017-09-01 21:59:55.016873','Administrator','Administrator',0,'Communication','fields','DocType',39,'_user_tags','User Tags',NULL,'Data',NULL,NULL,0,1,0,1,0,0,0,0,0,0,1,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('93e75c0626','2014-07-11 17:18:09.923399','2017-09-01 22:00:03.128353','Administrator','Administrator',0,'Email Alert','fields','DocType',8,'event','Send Alert On',NULL,'Select',NULL,'\nNew\nSave\nSubmit\nCancel\nDays After\nDays Before\nValue Change\nMethod\nCustom',1,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('940cc82720','2013-01-29 10:47:14.000000','2017-09-01 21:59:55.016873','Administrator','Administrator',0,'Communication','fields','DocType',14,'communication_type','Communication Type',NULL,'Select',NULL,'Communication\nComment\nChat\nBot\nNotification\nFeedback',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'Communication',NULL,0,0,1,'',0,0,0,0,0,0),('9418b98121','2013-01-29 10:47:14.000000','2017-09-01 21:59:55.016873','Administrator','Administrator',0,'Communication','fields','DocType',8,'phone_no','Phone No.',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:in_list([\"Phone\", \"SMS\"], doc.communication_medium)',0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('944003e9e9','2013-02-22 01:27:33.000000','2017-09-01 21:59:50.367790','Administrator','Administrator',0,'DocField','fields','DocType',3,'fieldtype','Type','fieldtype','Select','Select','Attach\nAttach Image\nButton\nCheck\nCode\nColor\nColumn Break\nCurrency\nData\nDate\nDatetime\nDynamic Link\nFloat\nFold\nHeading\nHTML\nImage\nInt\nLink\nLong Text\nPassword\nPercent\nRead Only\nSection Break\nSelect\nSmall Text\nTable\nText\nText Editor\nTime\nSignature',1,0,0,0,0,1,1,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'Data',NULL,1,0,0,NULL,0,0,0,0,0,0),('944c9685ab','2013-01-10 16:34:32.000000','2017-09-01 22:00:08.226056','Administrator','Administrator',0,'Contact','fields','DocType',9,'gender','Gender',NULL,'Link',NULL,'Gender',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('9454fa0be9','2014-03-11 14:55:00.000000','2017-09-01 21:59:52.429552','Administrator','Administrator',0,'User','fields','DocType',28,'change_password','Change Password',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,'eval:doc.enabled && (!doc.__islocal || !cint(doc.send_welcome_email))',0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('94661f53cd','2015-11-28 00:57:39.766888','2017-09-01 21:59:58.381641','Administrator','Administrator',0,'Error Snapshot','fields','DocType',3,'evalue','Friendly Title',NULL,'Code',NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,1,'',0,0,0,0,0,0),('9487d82169','2015-02-18 12:46:38.168929','2017-09-01 21:59:59.903705','Administrator','Administrator',0,'Website Theme','fields','DocType',12,'text_color','Text Color',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'apply_text_styles',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('948c47dc92','2014-07-11 17:18:09.923399','2017-09-01 22:00:03.128353','Administrator','Administrator',0,'Email Alert','fields','DocType',19,'property_value','Value To Be Set',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('94fcc8f4f6','2014-04-17 16:53:52.640856','2017-09-01 21:59:58.766477','Administrator','Administrator',0,'System Settings','fields','DocType',9,'column_break_7',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('955186267f','2013-01-10 16:34:32.000000','2017-09-01 22:00:08.571416','Administrator','Administrator',0,'Address','fields','DocType',5,'address_line2','Address Line 2',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('9563edebbb','2013-02-22 01:27:32.000000','2017-09-01 22:00:04.800729','Administrator','Administrator',0,'Customize Form Field','fields','DocType',28,'display','Display',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('95845dabd1','2013-03-28 10:35:30.000000','2017-09-01 22:00:00.324049','Administrator','Administrator',0,'Web Page','fields','DocType',18,'section_break_17','Sidebar and Comments',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('95b14dccd0','2014-03-11 14:55:00.000000','2017-09-01 21:59:52.429552','Administrator','Administrator',0,'User','fields','DocType',6,'middle_name','Middle Name (Optional)','middle_name','Data','Data',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('95c6b653ff','2014-03-04 08:29:52.000000','2017-09-01 22:00:06.216644','Administrator','Administrator',0,'Social Login Keys','fields','DocType',2,'facebook_client_id','Facebook Client ID',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('95e2b2c0c9','2014-03-11 14:55:00.000000','2017-09-01 21:59:52.429552','Administrator','Administrator',0,'User','fields','DocType',40,'background_style','Background Style',NULL,'Select',NULL,'Fill Screen\nTile',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('95e88efd1f','2013-02-18 13:36:19.000000','2017-09-01 21:59:51.696379','Administrator','Administrator',0,'DocType','fields','DocType',30,'read_only_onload','Show Print First','read_only_onload','Check','Check',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('95ee4e8f5b','2013-01-23 19:54:43.000000','2017-09-01 22:00:07.979522','Administrator','Administrator',0,'Print Format','fields','DocType',10,'section_break_9','Style Settings',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:!doc.custom_format',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('95f6a4899a','2013-06-10 13:17:47.000000','2017-09-01 22:00:05.629704','Administrator','Administrator',0,'Event','fields','DocType',9,'all_day','All Day',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('96075fca33','2017-04-10 12:11:36.526508','2017-09-01 22:00:08.511897','Administrator','Administrator',0,'Gender','fields','DocType',1,'gender','Gender',NULL,'Data',NULL,'',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('961c99389a','2014-07-11 17:18:09.923399','2017-09-01 22:00:03.128353','Administrator','Administrator',0,'Email Alert','fields','DocType',6,'module','Module',NULL,'Link',NULL,'Module Def',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'is_standard',0,0,NULL,NULL,0,NULL,NULL,0,1,0,'',0,0,0,0,0,0),('9626970b33','2014-07-11 17:18:09.923399','2017-09-01 22:00:03.128353','Administrator','Administrator',0,'Email Alert','fields','DocType',20,'column_break_5','Recipients',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('9638cae32d','2015-02-18 12:46:38.168929','2017-09-01 21:59:59.903705','Administrator','Administrator',0,'Website Theme','fields','DocType',4,'custom','Custom?',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'1',NULL,0,0,0,'',0,0,0,0,0,0),('965ebd00b7','2016-02-22 03:47:45.387068','2017-09-01 22:00:05.878431','Administrator','Administrator',0,'Desktop Icon','fields','DocType',5,'column_break_3',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('96efadc0ad','2014-02-20 17:22:37.000000','2017-09-01 21:59:57.172499','Administrator','Administrator',0,'Version','fields','DocType',6,'table_html','Table HTML',NULL,'HTML',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('97141c77b5','2013-04-30 12:58:46.000000','2017-09-01 22:00:00.764927','Administrator','Administrator',0,'Website Settings','fields','DocType',9,'brand','Brand',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('976b7550db','2013-01-29 10:47:14.000000','2017-09-01 21:59:55.016873','Administrator','Administrator',0,'Communication','fields','DocType',4,'sender','From',NULL,'Data',NULL,'Email',0,0,0,0,0,0,0,1,0,0,0,0,NULL,NULL,'eval:doc.communication_medium===\"Email\"',0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,255,0,0,0,0,0),('9780215951','2014-07-17 06:54:20.782907','2017-09-01 22:00:07.719476','Administrator','Administrator',0,'Print Settings','fields','DocType',14,'allow_print_for_draft','Allow Print for Draft',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'1','',0,0,0,'',0,0,0,0,0,0),('978b446d4c','2013-03-28 10:35:30.000000','2017-09-01 22:00:00.894557','Administrator','Administrator',0,'Blog Post','fields','DocType',6,'blogger','Blogger',NULL,'Link',NULL,'Blogger',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,1,0,NULL,0,0,0,0,0,0),('97acc961c5','2012-12-12 11:19:22.000000','2017-09-01 21:59:54.402066','Administrator','Administrator',0,'File','fields','DocType',15,'attached_to_doctype','Attached To DocType',NULL,'Link',NULL,'DocType',1,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,1,1,NULL,0,0,0,0,0,0),('97aed7a17a','2013-01-10 16:34:32.000000','2017-09-01 22:00:08.226056','Administrator','Administrator',0,'Contact','fields','DocType',7,'status','Status',NULL,'Select',NULL,'Passive\nOpen\nReplied',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'Passive',NULL,1,1,0,NULL,0,0,0,0,0,0),('97de56a370','2016-10-19 12:26:04.809812','2017-09-01 22:00:05.535117','Administrator','Administrator',0,'Kanban Board','fields','DocType',7,'private','Private',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('989d1606e2','2013-02-22 01:27:33.000000','2017-09-01 21:59:50.367790','Administrator','Administrator',0,'DocField','fields','DocType',25,'column_break_13',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('98b7c4e119','2015-02-18 12:46:38.168929','2017-09-01 21:59:59.903705','Administrator','Administrator',0,'Website Theme','fields','DocType',1,'theme','Theme',NULL,'Data',NULL,NULL,1,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('98d1a9076c','2013-04-30 12:58:46.000000','2017-09-01 22:00:00.764927','Administrator','Administrator',0,'Website Settings','fields','DocType',28,'subdomain','Subdomain',NULL,'Text',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Sub-domain provided by erpnext.com',0,0,1,NULL,0,0,0,0,0,0),('98f3530edd','2014-09-11 12:04:34.163728','2017-09-01 22:00:02.520524','Administrator','Administrator',0,'Email Account','fields','DocType',8,'domain','Domain',NULL,'Link',NULL,'Email Domain',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('9920fbff2c','2014-09-11 12:04:34.163728','2017-09-01 22:00:02.520524','Administrator','Administrator',0,'Email Account','fields','DocType',21,'notify_if_unreplied','Notify if unreplied',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('9921f93b4f','2013-02-18 13:36:19.000000','2017-09-01 21:59:51.696379','Administrator','Administrator',0,'DocType','fields','DocType',26,'document_type','Show in Module Section','document_type','Select','Select','\nDocument\nSetup\nSystem\nOther',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'',0,0,0,NULL,0,0,0,0,0,0),('994baae77f','2014-09-01 14:08:48.624556','2017-09-01 21:59:53.572628','Administrator','Administrator',0,'Web Form','fields','DocType',11,'allow_delete','Allow Delete',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'allow_multiple',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('99a588c430','2013-01-29 10:47:14.000000','2017-09-01 21:59:55.016873','Administrator','Administrator',0,'Communication','fields','DocType',6,'recipients','To',NULL,'Code',NULL,'Email',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'',0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('99e3c045e4','2014-09-01 14:08:48.624556','2017-09-01 21:59:53.572628','Administrator','Administrator',0,'Web Form','fields','DocType',10,'allow_multiple','Allow Multiple',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'login_required',0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('9a343ef1f0','2013-01-10 16:34:32.000000','2017-09-01 22:00:08.226056','Administrator','Administrator',0,'Contact','fields','DocType',5,'user','User Id',NULL,'Link',NULL,'User',0,0,0,0,0,0,0,1,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('9a42cecf04','2013-02-18 13:36:19.000000','2017-09-01 21:59:51.696379','Administrator','Administrator',0,'DocType','fields','DocType',33,'allow_copy','Hide Copy','allow_copy','Check','Check',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('9a5b171cea','2014-09-11 12:04:34.163728','2017-09-01 22:00:02.520524','Administrator','Administrator',0,'Email Account','fields','DocType',9,'service','Service',NULL,'Select',NULL,'\nGMail\nSendgrid\nSparkPost\nYahoo Mail\nOutlook.com\nYandex.Mail',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('9a75802eb9','2013-02-22 01:27:32.000000','2017-09-01 22:00:04.800729','Administrator','Administrator',0,'Customize Form Field','fields','DocType',37,'width','Width','width','Data','Data',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'50px','50px',0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('9acf525515','2016-09-01 01:34:34.985457','2017-09-01 22:00:03.756563','Administrator','Administrator',0,'Auto Email Report','fields','DocType',5,'report_type','Report Type',NULL,'Read Only',NULL,'report.report_type',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('9af19325f6','2013-01-29 17:55:08.000000','2017-09-01 22:00:04.634582','Administrator','Administrator',0,'Customize Form','fields','DocType',7,'istable','Is Table',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('9b14c33ff6','2016-03-29 10:50:48.848239','2017-09-01 22:00:03.612963','Administrator','Administrator',0,'Email Domain','fields','DocType',8,'attachment_limit','Attachment Limit (MB)',NULL,'Int',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'',0,0,NULL,NULL,0,'1','Ignore attachments over this size',0,0,0,'',0,0,0,0,0,0),('9b275a728d','2015-11-28 00:57:39.766888','2017-09-01 21:59:58.381641','Administrator','Administrator',0,'Error Snapshot','fields','DocType',11,'locals','Locals',NULL,'Code',NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('9b9b829a7b','2013-01-29 17:55:08.000000','2017-09-01 22:00:04.634582','Administrator','Administrator',0,'Customize Form','fields','DocType',14,'image_field','Image Field',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Must be of type \"Attach Image\"',0,0,0,'',0,0,0,0,0,0),('9bc3200bc8','2015-11-28 00:57:39.766888','2017-09-01 21:59:58.381641','Administrator','Administrator',0,'Error Snapshot','fields','DocType',9,'pyver','Pyver',NULL,'Code',NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('9bce984560','2014-10-30 14:23:30.958074','2017-09-01 22:00:00.187162','Administrator','Administrator',0,'Help Category','fields','DocType',1,'category_name','Category Name',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('9bec23e99f','2013-02-22 01:27:36.000000','2017-09-01 22:00:02.249452','Administrator','Administrator',0,'Workflow Document State','fields','DocType',5,'allow_edit','Only Allow Edit For',NULL,'Link',NULL,'Role',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'160px','160px',0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('9c6d830ae9','2013-01-29 10:47:14.000000','2017-09-01 21:59:55.016873','Administrator','Administrator',0,'Communication','fields','DocType',18,'sent_or_received','Sent or Received',NULL,'Select',NULL,'Sent\nReceived',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,'eval:doc.communication_type===\"Communication\"',0,0,NULL,NULL,0,NULL,NULL,1,1,0,NULL,0,0,0,0,0,0),('9c70c4db91','2013-02-22 01:27:33.000000','2017-09-01 21:59:50.367790','Administrator','Administrator',0,'DocField','fields','DocType',37,'print_width','Print Width',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('9ca65703de','2013-02-22 01:27:33.000000','2017-09-01 21:59:50.367790','Administrator','Administrator',0,'DocField','fields','DocType',6,'precision','Precision',NULL,'Select',NULL,'\n1\n2\n3\n4\n5\n6\n7\n8\n9',0,0,0,1,0,0,0,0,0,0,0,0,NULL,NULL,'eval:in_list([\"Float\", \"Currency\", \"Percent\"], doc.fieldtype)',0,0,NULL,NULL,0,NULL,'Set non-standard precision for a Float or Currency field',0,0,0,NULL,0,0,0,0,0,0),('9ccb2be140','2012-08-02 15:17:28.000000','2017-09-01 22:00:03.294421','Administrator','Administrator',0,'Email Queue','fields','DocType',9,'reference_name','Reference DocName',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,NULL,0,0,0,0,0,0),('9cd11bece3','2014-09-11 12:04:34.163728','2017-09-01 22:00:02.520524','Administrator','Administrator',0,'Email Account','fields','DocType',31,'send_unsubscribe_message','Send unsubscribe message in email',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'1',NULL,0,0,0,'',0,0,0,0,0,0),('9cd297c939','2017-02-13 14:53:36.240122','2017-09-01 21:59:58.010084','Administrator','Administrator',0,'Custom Role','fields','DocType',3,'permission_rules','Permission Rules',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('9d1417e2fe','2013-02-22 01:28:08.000000','2017-09-01 22:00:00.692769','Administrator','Administrator',0,'Top Bar Item','fields','DocType',4,'target','Target',NULL,'Select',NULL,'\ntarget = \"_blank\"',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Select target = \"_blank\" to open in a new page.',0,0,0,NULL,0,0,0,0,0,0),('9d2268c73b','2016-08-24 14:12:13.647159','2017-09-01 22:00:07.302043','Administrator','Administrator',0,'OAuth Authorization Code','fields','DocType',6,'redirect_uri_bound_to_authorization_code','Redirect URI Bound To Auth Code',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('9d83c3362c','2013-02-22 01:27:32.000000','2017-09-01 22:00:04.800729','Administrator','Administrator',0,'Customize Form Field','fields','DocType',21,'allow_bulk_edit','Allow Bulk Edit',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval: doc.fieldtype == \"Table\"',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('9dd2dc04b8','2014-07-17 06:54:20.782907','2017-09-01 22:00:07.719476','Administrator','Administrator',0,'Print Settings','fields','DocType',13,'with_letterhead','Print with letterhead',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'1','',0,0,0,NULL,0,0,0,0,0,0),('9e3b022c65','2014-09-01 14:14:14.292173','2017-09-01 21:59:53.897718','Administrator','Administrator',0,'Web Form Field','fields','DocType',9,'max_length','Max Length',NULL,'Int',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('9e678f108f','2013-01-10 16:34:01.000000','2017-09-01 21:59:53.056685','Administrator','Administrator',0,'Custom Field','fields','DocType',32,'in_standard_filter','In Standard Filter',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('9e6ff341f0','2017-01-13 04:55:18.835023','2017-09-01 21:59:55.765451','Administrator','Administrator',0,'Dynamic Link','fields','DocType',3,'link_title','Link Title',NULL,'Read Only',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,1,'',0,0,0,0,0,0),('9eb733db07','2013-02-22 01:27:32.000000','2017-09-01 22:00:04.800729','Administrator','Administrator',0,'Customize Form Field','fields','DocType',16,'depends_on','Depends On','depends_on','Code','Data',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'This field will appear only if the fieldname defined here has value OR the rules are true (examples): \nmyfield\neval:doc.myfield==\'My Value\'\neval:doc.age&gt;18',0,0,0,NULL,0,0,0,0,0,0),('9f46401fe0','2014-09-11 12:04:34.163728','2017-09-01 22:00:02.520524','Administrator','Administrator',0,'Email Account','fields','DocType',25,'enable_outgoing','Enable Outgoing',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'','SMTP Settings for outgoing emails',0,0,0,'',0,0,0,0,0,0),('9f5880c412','2016-09-21 10:12:57.399174','2017-09-01 22:00:06.300633','Administrator','Administrator',0,'Dropbox Settings','fields','DocType',10,'dropbox_setup_via_site_config','Dropbox Setup via Site Config',NULL,'Check',NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('9fc8b24d51','2016-02-17 12:21:16.175465','2017-09-01 21:59:57.386715','Administrator','Administrator',0,'Translation','fields','DocType',3,'source_name','Source Text',NULL,'Code',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'If your data is in HTML, please copy paste the exact HTML code with the tags.',0,0,0,'',0,0,0,0,0,0),('9fe0e68ed0','2013-04-30 12:58:46.000000','2017-09-01 22:00:00.764927','Administrator','Administrator',0,'Website Settings','fields','DocType',4,'title_prefix','Title Prefix',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Show title in browser window as \"Prefix - title\"',1,0,0,NULL,0,0,0,0,0,0),('a016c0e124','2014-08-22 16:12:17.249590','2017-09-01 21:59:55.520947','Administrator','Administrator',0,'Language','fields','DocType',4,'based_on','Based On',NULL,'Link',NULL,'Language',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('a029443e82','2013-03-07 11:55:11.000000','2017-09-01 22:00:00.580752','Administrator','Administrator',0,'About Us Team Member','fields','DocType',3,'bio','Bio',NULL,'Small Text',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'200px',NULL,0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('a03b7efe7d','2016-03-29 10:50:48.848239','2017-09-01 22:00:03.612963','Administrator','Administrator',0,'Email Domain','fields','DocType',12,'use_tls','Use TLS',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('a082027c68','2014-09-11 12:04:34.163728','2017-09-01 22:00:02.520524','Administrator','Administrator',0,'Email Account','fields','DocType',23,'send_notification_to','Send Notification to',NULL,'Small Text',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'notify_if_unreplied',0,0,NULL,NULL,0,NULL,'Email Addresses',0,0,0,'',0,0,0,0,0,0),('a143e707bc','2013-02-18 13:36:19.000000','2017-09-01 21:59:51.696379','Administrator','Administrator',0,'DocType','fields','DocType',55,'route','Route',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'has_web_view',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('a1736f569d','2017-01-27 15:43:33.780808','2017-09-01 21:59:56.777309','Administrator','Administrator',0,'Feedback Request','fields','DocType',9,'column_break_5',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('a179a61db3','2013-02-22 01:27:33.000000','2017-09-01 21:59:50.367790','Administrator','Administrator',0,'DocField','fields','DocType',35,'print_hide','Print Hide','print_hide','Check','Check',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'50px','50px',0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('a17f51862b','2016-09-22 04:16:48.829658','2017-09-01 22:00:06.105316','Administrator','Administrator',0,'LDAP Settings','fields','DocType',5,'password','Password for Base DN',NULL,'Password',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('a18b3884ee','2017-02-13 17:33:25.157332','2017-09-01 21:59:55.882960','Administrator','Administrator',0,'User Permission for Page and Report','fields','DocType',7,'section_break_8',NULL,NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('a19feaecef','2014-02-20 17:22:37.000000','2017-09-01 21:59:57.172499','Administrator','Administrator',0,'Version','fields','DocType',2,'column_break_3',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('a1a9728907','2014-07-17 06:54:20.782907','2017-09-01 22:00:07.719476','Administrator','Administrator',0,'Print Settings','fields','DocType',15,'add_draft_heading','Always add \"Draft\" Heading for printing draft documents',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'1',NULL,0,0,0,'',0,0,0,0,0,0),('a1d8a31dd2','2014-03-04 08:29:52.000000','2017-09-01 22:00:06.216644','Administrator','Administrator',0,'Social Login Keys','fields','DocType',1,'facebook','Facebook',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('a1eec907c0','2014-09-01 14:08:48.624556','2017-09-01 21:59:53.572628','Administrator','Administrator',0,'Web Form','fields','DocType',17,'introduction_text','Introduction',NULL,'Text Editor',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('a2094158c4','2014-09-11 12:04:34.163728','2017-09-01 22:00:02.520524','Administrator','Administrator',0,'Email Account','fields','DocType',4,'password','Password',NULL,'Password',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('a28a0e45f2','2013-01-10 16:34:01.000000','2017-09-01 21:59:53.056685','Administrator','Administrator',0,'Custom Field','fields','DocType',4,'fieldname','Fieldname','fieldname','Data','Data',NULL,0,0,0,0,0,0,0,0,0,0,1,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,1,NULL,0,0,0,0,0,0),('a2b19f675b','2012-12-28 10:49:55.000000','2017-09-01 22:00:02.091249','Administrator','Administrator',0,'Workflow','fields','DocType',9,'workflow_state_field','Workflow State Field',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'workflow_state','Field that represents the Workflow State of the transaction (if field is not present, a new hidden Custom Field will be created)',0,0,0,NULL,0,0,0,0,0,0),('a2e0f63466','2013-02-22 01:27:33.000000','2017-09-01 21:59:50.367790','Administrator','Administrator',0,'DocField','fields','DocType',7,'length','Length',NULL,'Int',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:in_list([\'Data\', \'Link\', \'Dynamic Link\', \'Password\', \'Select\', \'Read Only\', \'Attach\', \'Attach Image\'], doc.fieldtype)',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('a3174475d1','2013-01-10 16:34:32.000000','2017-09-01 22:00:08.226056','Administrator','Administrator',0,'Contact','fields','DocType',20,'unsubscribed','Unsubscribed',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('a3784ef1bc','2013-02-22 01:28:08.000000','2017-09-01 22:00:01.238809','Administrator','Administrator',0,'Company History','fields','DocType',2,'highlight','Highlight',NULL,'Text',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'300px','300px',0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('a3a106595e','2016-08-24 14:10:17.471264','2017-09-01 22:00:07.513722','Administrator','Administrator',0,'OAuth Bearer Token','fields','DocType',5,'refresh_token','Refresh Token',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('a3f7c89b56','2017-01-27 15:43:33.780808','2017-09-01 21:59:56.777309','Administrator','Administrator',0,'Feedback Request','fields','DocType',2,'is_feedback_submitted','Feedback Submitted',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('a3fa66ebf1','2013-01-10 16:34:31.000000','2017-09-01 22:00:03.015516','Administrator','Administrator',0,'Newsletter','fields','DocType',5,'newsletter_content','',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('a405530629','2013-01-10 16:34:01.000000','2017-09-01 21:59:53.056685','Administrator','Administrator',0,'Custom Field','fields','DocType',29,'no_copy','No Copy','no_copy','Check','Check',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('a415f41acb','2016-02-22 03:47:45.387068','2017-09-01 22:00:05.878431','Administrator','Administrator',0,'Desktop Icon','fields','DocType',12,'_doctype','_doctype',NULL,'Link',NULL,'DocType',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('a4acb5baa1','2013-02-18 13:36:19.000000','2017-09-01 21:59:51.696379','Administrator','Administrator',0,'DocType','fields','DocType',20,'view_settings','View Settings',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('a4d13fdc9b','2013-01-10 16:34:01.000000','2017-09-01 22:00:04.517892','Administrator','Administrator',0,'Custom Script','fields','DocType',3,'script','Script','script','Code','Code','Script',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('a4dac81090','2014-09-01 14:08:48.624556','2017-09-01 21:59:53.572628','Administrator','Administrator',0,'Web Form','fields','DocType',15,'allow_incomplete','Allow Incomplete Forms',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Allow saving if mandatory fields are not filled',0,0,0,'',0,0,0,0,0,0),('a4f618eb1c','2017-09-01 13:29:30.289032','2017-09-01 19:20:24.367341','Administrator','Administrator',0,'Paciente','fields','DocType',13,'ars','ARS',NULL,'Link',NULL,'Empresa',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('a50cf38728','2013-02-18 13:36:19.000000','2017-09-01 21:59:51.696379','Administrator','Administrator',0,'DocType','fields','DocType',19,'description','Description','description','Small Text','Text',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('a52024ae04','2013-01-23 19:54:43.000000','2017-09-01 22:00:07.979522','Administrator','Administrator',0,'Print Format','fields','DocType',18,'custom_html_help','Custom HTML Help',NULL,'HTML',NULL,'<h3>Custom CSS Help</h3>\n\n<p>Notes:</p>\n\n<ol>\n<li>All field groups (label + value) are set attributes <code>data-fieldtype</code> and <code>data-fieldname</code></li>\n<li>All values are given class <code>value</code></li>\n<li>All Section Breaks are given class <code>section-break</code></li>\n<li>All Column Breaks are given class <code>column-break</code></li>\n</ol>\n\n<h4>Examples</h4>\n\n<p>1. Left align integers</p>\n\n<pre><code>[data-fieldtype=\"Int\"] .value { text-left: left; }</code></pre>\n\n<p>1. Add border to sections except the last section</p>\n\n<pre><code>.section-break { padding: 30px 0px; border-bottom: 1px solid #eee; }\n.section-break:last-child { padding-bottom: 0px; border-bottom: 0px;  }</code></pre>\n',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('a532026f90','2016-08-04 04:58:40.457416','2017-09-01 22:00:07.597872','Administrator','Administrator',0,'Integration Request','fields','DocType',5,'output','Output',NULL,'Code',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('a5527e49de','2014-03-11 14:55:00.000000','2017-09-01 21:59:52.429552','Administrator','Administrator',0,'User','fields','DocType',29,'new_password','Set New Password',NULL,'Password',NULL,NULL,0,0,0,0,0,0,0,0,0,0,1,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('a572753b3d','2013-01-10 16:34:04.000000','2017-09-01 21:59:53.403426','Administrator','Administrator',0,'Property Setter','fields','DocType',6,'doc_type','DocType',NULL,'Link',NULL,'DocType',1,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,1,0,NULL,0,0,0,0,0,0),('a5c632fb94','2014-09-01 14:14:14.292173','2017-09-01 21:59:53.897718','Administrator','Administrator',0,'Web Form Field','fields','DocType',7,'column_break_4',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('a5ea96bb7a','2012-12-12 11:19:22.000000','2017-09-01 21:59:54.402066','Administrator','Administrator',0,'File','fields','DocType',10,'file_url','File URL',NULL,'Code',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:!doc.is_folder',0,0,NULL,NULL,0,NULL,NULL,0,0,1,NULL,0,0,0,0,0,0),('a624dc8447','2016-09-21 08:03:01.009852','2017-09-01 22:00:07.143640','Administrator','Administrator',0,'PayPal Settings','fields','DocType',1,'api_username','API Username',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('a625ce0c24','2015-02-04 04:33:36.330477','2017-09-01 21:59:55.605388','Administrator','Administrator',0,'DocShare','fields','DocType',6,'share','Share',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'0',NULL,0,0,0,'',0,0,0,0,0,0),('a62a5462f5','2014-03-11 14:55:00.000000','2017-09-01 21:59:52.429552','Administrator','Administrator',0,'User','fields','DocType',61,'column_break_49',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('a6418eff26','2017-02-13 17:33:25.157332','2017-09-01 21:59:54.729999','Administrator','Administrator',0,'Role Permission for Page and Report','fields','DocType',2,'page','Page',NULL,'Link',NULL,'Page',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:doc.set_role_for == \'Page\'',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('a66fd19032','2015-11-28 00:57:39.766888','2017-09-01 21:59:58.381641','Administrator','Administrator',0,'Error Snapshot','fields','DocType',12,'frames','Frames',NULL,'Code',NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('a67c32e8a9','2016-12-29 07:42:26.246725','2017-09-01 21:59:59.642605','Administrator','Administrator',0,'Website Sidebar Item','fields','DocType',2,'route','Route',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('a68123958d','2014-03-11 14:55:00.000000','2017-09-01 21:59:52.429552','Administrator','Administrator',0,'User','fields','DocType',18,'roles','Roles Assigned',NULL,'Table',NULL,'Has Role',0,1,0,1,0,0,0,0,0,0,0,0,NULL,NULL,NULL,1,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('a6f7cf1ed5','2013-01-10 16:34:04.000000','2017-09-01 21:59:53.403426','Administrator','Administrator',0,'Property Setter','fields','DocType',2,'sb0',NULL,NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('a70676eef2','2013-01-10 16:34:32.000000','2017-09-01 22:00:08.571416','Administrator','Administrator',0,'Address','fields','DocType',6,'city','City/Town',NULL,'Data',NULL,NULL,1,0,0,0,0,1,0,1,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('a709a54424','2016-03-29 10:50:48.848239','2017-09-01 22:00:03.612963','Administrator','Administrator',0,'Email Domain','fields','DocType',1,'email_settings','',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('a72d9999a0','2017-02-26 16:20:52.654136','2017-09-01 22:00:02.862239','Administrator','Administrator',0,'Newsletter Email Group','fields','DocType',1,'email_group','Email Group',NULL,'Link',NULL,'Email Group',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('a73cc8eeae','2016-02-22 03:47:45.387068','2017-09-01 22:00:05.878431','Administrator','Administrator',0,'Desktop Icon','fields','DocType',13,'_report','_report',NULL,'Link',NULL,'Report',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('a7b4811b0a','2016-03-30 01:40:20.001775','2017-09-01 22:00:01.167977','Administrator','Administrator',0,'Portal Settings','fields','DocType',5,'custom_sidebar_menu','Custom Sidebar Menu',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('a7c23fedd0','2016-02-22 03:47:45.387068','2017-09-01 22:00:05.878431','Administrator','Administrator',0,'Desktop Icon','fields','DocType',4,'custom','Custom',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('a855befd22','2013-01-29 10:47:14.000000','2017-09-01 21:59:55.016873','Administrator','Administrator',0,'Communication','fields','DocType',1,'subject','Subject',NULL,'Small Text',NULL,NULL,0,0,0,0,0,1,0,1,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('a85de5b5c2','2013-02-18 13:36:19.000000','2017-09-01 21:59:51.696379','Administrator','Administrator',0,'DocType','fields','DocType',1,'sb0','',NULL,'Section Break','Section Break',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('a8668f4e64','2017-02-13 14:53:36.240122','2017-09-01 21:59:58.010084','Administrator','Administrator',0,'Custom Role','fields','DocType',4,'roles','Role',NULL,'Table',NULL,'Has Role',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('a8704209d2','2013-01-29 10:47:14.000000','2017-09-01 21:59:55.016873','Administrator','Administrator',0,'Communication','fields','DocType',43,'email_status','Email Status',NULL,'Select',NULL,'Open\nSpam\nTrash',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('a87f93bca9','2013-01-10 16:34:32.000000','2017-09-01 22:00:08.571416','Administrator','Administrator',0,'Address','fields','DocType',15,'is_primary_address','Preferred Billing Address',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'0','',0,0,0,NULL,0,0,0,0,0,0),('a8d24a3717','2013-03-09 15:45:57.000000','2017-09-01 21:59:57.830003','Administrator','Administrator',0,'Report','fields','DocType',6,'column_break_4',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('a8fca8e8c9','2014-07-11 17:18:09.923399','2017-09-01 22:00:03.128353','Administrator','Administrator',0,'Email Alert','fields','DocType',11,'days_in_advance','Days Before or After',NULL,'Int',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:doc.event==\"Days After\" || doc.event==\"Days Before\"',0,0,NULL,NULL,0,'0','Send days before or after the reference date',0,0,0,NULL,0,0,0,0,0,0),('a928f61280','2014-09-01 14:08:48.624556','2017-09-01 21:59:53.572628','Administrator','Administrator',0,'Web Form','fields','DocType',23,'sidebar_settings','Sidebar Settings',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('a93ade7e20','2013-03-19 12:02:15.000000','2017-09-01 22:00:00.258186','Administrator','Administrator',0,'About Us Settings','fields','DocType',8,'team_members','Team Members',NULL,'Table',NULL,'About Us Team Member',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('a986077374','2017-05-03 15:20:22.326623','2017-09-01 21:59:56.595179','Administrator','makarand@erpnext.com',0,'Has Domain','fields','DocType',1,'domain','Domain',NULL,'Link',NULL,'Domain',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('a9bf5c5b23','2013-02-22 01:27:33.000000','2017-09-01 21:59:50.367790','Administrator','Administrator',0,'DocField','fields','DocType',41,'description','Description','description','Small Text','Text',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'300px','300px',0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('a9cc3e2bfb','2013-02-18 13:36:19.000000','2017-09-01 21:59:51.696379','Administrator','Administrator',0,'DocType','fields','DocType',51,'web_view','Web View',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('aa28331ad7','2014-09-01 14:14:14.292173','2017-09-01 21:59:53.897718','Administrator','Administrator',0,'Web Form Field','fields','DocType',12,'description','Description',NULL,'Text',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('aa91d46449','2013-02-21 20:12:42.000000','2017-09-01 22:00:01.610316','Administrator','Administrator',0,'Contact Us Settings','fields','DocType',8,'address_line1','Address Line 1',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('aabc7d9fee','2017-04-21 16:57:30.264478','2017-09-01 22:00:07.448430','Administrator','Administrator',0,'GSuite Settings','fields','DocType',4,'client_secret','Client Secret',NULL,'Password',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('aaefb0b86a','2013-02-21 20:12:42.000000','2017-09-01 22:00:01.610316','Administrator','Administrator',0,'Contact Us Settings','fields','DocType',5,'query_options','Query Options',NULL,'Small Text',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Contact options, like \"Sales Query, Support Query\" etc each on a new line or separated by commas.',0,0,0,NULL,0,0,0,0,0,0),('ab8322f20b','2017-01-24 15:46:38.366213','2017-09-01 21:59:56.229184','Administrator','Administrator',0,'Feedback Trigger','fields','DocType',12,'html_8',NULL,NULL,'HTML',NULL,'<p><strong>Condition Examples:</strong></p>\n<pre>doc.status==\"Closed\"\ndoc.due_date==nowdate()\ndoc.total &gt; 40000\n</pre>',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('abbe9fb472','2013-02-22 01:27:32.000000','2017-09-01 22:00:04.800729','Administrator','Administrator',0,'Customize Form Field','fields','DocType',25,'allow_on_submit','Allow on Submit','allow_on_submit','Check','Check',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('abe1708dd8','2012-12-20 17:16:49.000000','2017-09-01 21:59:56.947669','Administrator','Administrator',0,'Page','fields','DocType',10,'section_break0',NULL,NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('abe8a74d82','2017-01-24 15:46:38.366213','2017-09-01 21:59:56.229184','Administrator','Administrator',0,'Feedback Trigger','fields','DocType',4,'email_field','Email Field',NULL,'Select',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,'eval: doc.document_type',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('ac6cccd21e','2013-02-22 01:27:33.000000','2017-09-01 21:59:50.367790','Administrator','Administrator',0,'DocField','fields','DocType',30,'remember_last_selected_value','Remember Last Selected Value',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:(doc.fieldtype == \'Link\')',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('aca86ad56c','2017-09-01 15:19:44.113804','2017-09-01 15:33:38.607038','Administrator','Administrator',0,'Medicamentos','fields','DocType',3,'indicacion','Indicacion',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,2,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('acf03774c6','2012-08-02 15:17:28.000000','2017-09-01 22:00:03.294421','Administrator','Administrator',0,'Email Queue','fields','DocType',7,'message_id','Message ID',NULL,'Data',NULL,NULL,1,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('ad4840acc7','2016-09-22 04:16:48.829658','2017-09-01 22:00:06.105316','Administrator','Administrator',0,'LDAP Settings','fields','DocType',1,'enabled','Enabled',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('ad939be002','2013-01-29 17:55:08.000000','2017-09-01 22:00:04.634582','Administrator','Administrator',0,'Customize Form','fields','DocType',4,'default_print_format','Default Print Format',NULL,'Link',NULL,'Print Format',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('ad946ab869','2015-02-18 12:46:38.168929','2017-09-01 21:59:59.903705','Administrator','Administrator',0,'Website Theme','fields','DocType',5,'column_break_2',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('add8dbfc90','2015-02-18 12:46:38.168929','2017-09-01 21:59:59.903705','Administrator','Administrator',0,'Website Theme','fields','DocType',6,'bootstrap','Link to Bootstrap CSS',NULL,'Code',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'apply_style',0,0,NULL,NULL,0,NULL,'Link to your Bootstrap theme',0,0,0,'',0,0,0,0,0,0),('ae1384fded','2017-02-13 17:33:25.157332','2017-09-01 21:59:55.882960','Administrator','Administrator',0,'User Permission for Page and Report','fields','DocType',2,'page','Page',NULL,'Link',NULL,'Page',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:doc.set_role_for == \'Page\'',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('ae29eb4b95','2016-04-14 09:41:45.892975','2017-09-01 22:00:02.933067','Administrator','Administrator',0,'Unhandled Email','fields','DocType',5,'raw','Raw Email',NULL,'Code',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('ae32e00dc7','2013-02-22 01:27:32.000000','2017-09-01 22:00:04.800729','Administrator','Administrator',0,'Customize Form Field','fields','DocType',4,'fieldname','Name','fieldname','Data','Data',NULL,1,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,1,NULL,0,0,0,0,0,0),('ae750ac2c6','2014-06-19 05:20:26.331041','2017-09-01 22:00:03.503215','Administrator','Administrator',0,'Standard Reply','fields','DocType',4,'section_break_4',NULL,NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('ae946daace','2013-01-10 16:34:32.000000','2017-09-01 22:00:08.226056','Administrator','Administrator',0,'Contact','fields','DocType',12,'image','Image',NULL,'Attach Image',NULL,NULL,0,1,0,1,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('ae9eda36da','2012-12-12 11:19:22.000000','2017-09-01 21:59:54.402066','Administrator','Administrator',0,'File','fields','DocType',11,'thumbnail_url','Thumbnail URL',NULL,'Small Text',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('ae9fd9788c','2016-08-24 14:10:17.471264','2017-09-01 22:00:07.513722','Administrator','Administrator',0,'OAuth Bearer Token','fields','DocType',8,'status','Status',NULL,'Select',NULL,'Active\nRevoked',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,1,0,'',0,0,0,0,0,0),('aeb7c29292','2013-03-28 10:35:30.000000','2017-09-01 22:00:00.324049','Administrator','Administrator',0,'Web Page','fields','DocType',5,'cb1',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'50%',NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('aed8d8dab2','2013-03-07 15:53:15.000000','2017-09-01 22:00:01.366493','Administrator','Administrator',0,'Website Slideshow','fields','DocType',2,'sb0','',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:!doc.__islocal',0,0,NULL,NULL,0,NULL,'Note: For best results, images must be of the same size and width must be greater than height.',0,0,0,NULL,0,0,0,0,0,0),('af1b6c4326','2012-12-20 17:16:49.000000','2017-09-01 21:59:56.947669','Administrator','Administrator',0,'Page','fields','DocType',7,'module','Module','module','Link','Select','Module Def',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,1,0,NULL,0,0,0,0,0,0),('af9dbc3884','2013-03-09 15:45:57.000000','2017-09-01 21:59:57.830003','Administrator','Administrator',0,'Report','fields','DocType',2,'ref_doctype','Ref DocType',NULL,'Link',NULL,'DocType',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,1,0,NULL,0,0,0,0,0,0),('afd958afc4','2013-01-10 16:34:01.000000','2017-09-01 21:59:53.056685','Administrator','Administrator',0,'Custom Field','fields','DocType',14,'default','Default Value','default','Text','Text',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('b068469f2b','2016-10-19 12:26:04.809812','2017-09-01 22:00:05.535117','Administrator','Administrator',0,'Kanban Board','fields','DocType',4,'section_break_3',NULL,NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('b071ccd184','2017-01-24 15:46:38.366213','2017-09-01 21:59:56.229184','Administrator','Administrator',0,'Feedback Trigger','fields','DocType',8,'section_break_5',NULL,NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('b0b1649bf1','2013-02-18 13:36:19.000000','2017-09-01 21:59:51.696379','Administrator','Administrator',0,'DocType','fields','DocType',34,'show_name_in_global_search','Make \"name\" searchable in Global Search',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('b0b21e0bad','2014-03-11 14:55:00.000000','2017-09-01 21:59:52.429552','Administrator','Administrator',0,'User','fields','DocType',63,'github_username','Github Username',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,1,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,NULL,0,0,0,0,0,0),('b0c564e119','2013-03-25 16:00:51.000000','2017-09-01 21:59:59.800038','Administrator','Administrator',0,'Blogger','fields','DocType',5,'bio','Bio',NULL,'Small Text',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('b0e4318139','2016-04-20 15:29:39.785172','2017-09-01 22:00:04.338347','Administrator','Administrator',0,'Email Flag Queue','fields','DocType',6,'uid','UID',NULL,'Data',NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('b0ea095f86','2017-04-21 16:57:30.264478','2017-09-01 22:00:07.448430','Administrator','Administrator',0,'GSuite Settings','fields','DocType',11,'authorization_code','Authorization Code',NULL,'Password',NULL,NULL,0,1,0,1,1,0,0,0,0,0,1,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('b0f0077176','2013-03-28 10:35:30.000000','2017-09-01 22:00:00.324049','Administrator','Administrator',0,'Web Page','fields','DocType',12,'javascript','Javascript',NULL,'Code',NULL,'Javascript',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'insert_code',0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('b0ff847c60','2013-01-29 10:47:14.000000','2017-09-01 21:59:55.016873','Administrator','Administrator',0,'Communication','fields','DocType',36,'timeline_label','Timeline field Name',NULL,'Data',NULL,'',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('b12a9fe528','2017-06-26 10:57:19.976624','2017-09-01 21:59:58.597232','Administrator','Administrator',0,'Test Runner','fields','DocType',1,'module_path','Module Path',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('b1354990f4','2016-09-21 08:03:01.009852','2017-09-01 22:00:07.143640','Administrator','Administrator',0,'PayPal Settings','fields','DocType',2,'api_password','API Password',NULL,'Password',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('b15a517853','2014-03-11 14:55:00.000000','2017-09-01 21:59:52.429552','Administrator','Administrator',0,'User','fields','DocType',19,'short_bio','More Information',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,'enabled',0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('b15b1f48a1','2013-02-18 13:36:19.000000','2017-09-01 21:59:51.696379','Administrator','Administrator',0,'DocType','fields','DocType',39,'is_submittable','Is Submittable',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('b1c9c5739f','2013-02-18 13:36:19.000000','2017-09-01 21:59:51.696379','Administrator','Administrator',0,'DocType','fields','DocType',6,'cb01',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('b1d83cf2ed','2017-09-01 13:29:30.289032','2017-09-01 19:20:24.367341','Administrator','Administrator',0,'Paciente','fields','DocType',11,'nombre_completo','Nombre Completo',NULL,'Read Only',NULL,NULL,0,0,0,0,0,0,0,0,0,1,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('b207630d05','2014-03-11 14:55:00.000000','2017-09-01 21:59:52.429552','Administrator','Administrator',0,'User','fields','DocType',5,'first_name','First Name','first_name','Data','Data',NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('b2143d28cd','2012-12-12 11:19:22.000000','2017-09-01 21:59:54.402066','Administrator','Administrator',0,'File','fields','DocType',16,'column_break_10',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('b21a4fe2b9','2016-08-04 04:58:40.457416','2017-09-01 22:00:07.597872','Administrator','Administrator',0,'Integration Request','fields','DocType',1,'integration_type','Integration Type',NULL,'Select',NULL,'\nHost\nRemote',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('b25de02cd4','2015-02-18 12:46:38.168929','2017-09-01 21:59:59.903705','Administrator','Administrator',0,'Website Theme','fields','DocType',18,'footer_color','Footer Color',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'apply_text_styles',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('b279e19775','2016-04-20 15:29:39.785172','2017-09-01 22:00:04.338347','Administrator','Administrator',0,'Email Flag Queue','fields','DocType',4,'flag','Flag',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('b28933a558','2013-06-10 13:17:47.000000','2017-09-01 22:00:05.629704','Administrator','Administrator',0,'Event','fields','DocType',22,'saturday','Saturday',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:doc.repeat_this_event && doc.repeat_on===\"Every Day\"',0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('b29677f7d3','2014-09-01 14:08:48.624556','2017-09-01 21:59:53.572628','Administrator','Administrator',0,'Web Form','fields','DocType',12,'allow_print','Allow Print',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('b2be09d262','2014-04-17 16:53:52.640856','2017-09-01 21:59:58.766477','Administrator','Administrator',0,'System Settings','fields','DocType',24,'enable_password_policy','Enable Password Policy',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'0','If enabled, the password strength will be enforced based on the Minimum Password Score value. A value of 2 being medium strong and 4 being very strong.',0,0,0,'',0,0,0,0,0,0),('b2e2d74d66','2016-03-29 10:50:48.848239','2017-09-01 22:00:03.612963','Administrator','Administrator',0,'Email Domain','fields','DocType',2,'domain_name','domain name',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'',0,0,1,'',0,0,0,0,0,0),('b3176600ce','2013-01-10 16:34:01.000000','2017-09-01 21:59:53.056685','Administrator','Administrator',0,'Custom Field','fields','DocType',28,'print_width','Print Width',NULL,'Data',NULL,NULL,0,1,0,1,0,0,0,0,0,0,1,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('b31e1d18c3','2013-03-08 09:41:11.000000','2017-09-01 22:00:01.501531','Administrator','Administrator',0,'Blog Category','fields','DocType',3,'published','Published',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('b356544c33','2014-09-01 14:08:48.624556','2017-09-01 21:59:53.572628','Administrator','Administrator',0,'Web Form','fields','DocType',38,'breadcrumbs','Breadcrumbs',NULL,'Code',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'List as [{\"label\": _(\"Jobs\"), \"route\":\"jobs\"}]',0,0,0,'',0,0,0,0,0,0),('b35a8ecdd7','2013-04-30 12:58:46.000000','2017-09-01 22:00:00.764927','Administrator','Administrator',0,'Website Settings','fields','DocType',22,'hide_footer_signup','Hide Footer Signup',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('b37920d465','2014-09-11 12:04:34.163728','2017-09-01 22:00:02.520524','Administrator','Administrator',0,'Email Account','fields','DocType',40,'uidvalidity','UIDVALIDITY',NULL,'Data',NULL,NULL,0,1,0,0,0,0,0,0,0,0,1,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('b38e70c6fb','2016-09-01 01:34:34.985457','2017-09-01 22:00:03.756563','Administrator','Administrator',0,'Auto Email Report','fields','DocType',8,'data_modified_till','Only Send Records Updated in Last X Hours',NULL,'Int',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:doc.report_type==\'Report Builder\'',0,0,NULL,NULL,0,'','Zero means send records updated at anytime',0,0,0,'',0,0,0,0,0,0),('b3a68e4e6b','2013-01-10 16:34:01.000000','2017-09-01 21:59:53.056685','Administrator','Administrator',0,'Custom Field','fields','DocType',25,'hidden','Hidden',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('b3a74b01e9','2014-09-01 14:08:48.624556','2017-09-01 21:59:53.572628','Administrator','Administrator',0,'Web Form','fields','DocType',32,'amount_based_on_field','Amount Based On Field',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'accept_payment',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('b3bd97c63f','2017-09-01 15:19:44.113804','2017-09-01 15:33:38.607038','Administrator','Administrator',0,'Medicamentos','fields','DocType',1,'medicamento','Medicamento',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,2,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('b3ec4bbb42','2014-03-04 08:29:52.000000','2017-09-01 22:00:06.216644','Administrator','Administrator',0,'Social Login Keys','fields','DocType',12,'frappe_client_secret','Frappe Client Secret',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('b44206cbc1','2013-01-10 16:34:01.000000','2017-09-01 21:59:53.056685','Administrator','Administrator',0,'Custom Field','fields','DocType',35,'report_hide','Report Hide','report_hide','Check','Check',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('b45b36f4af','2013-02-18 13:36:19.000000','2017-09-01 21:59:51.696379','Administrator','Administrator',0,'DocType','fields','DocType',13,'fields_section_break','Fields',NULL,'Section Break','Section Break',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('b4925c9ce4','2013-02-18 13:36:19.000000','2017-09-01 21:59:51.696379','Administrator','Administrator',0,'DocType','fields','DocType',8,'track_changes','Track Changes',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:!doc.istable',0,0,NULL,NULL,0,'1',NULL,0,0,0,'',0,0,0,0,0,0),('b4b6fd0a0f','2013-06-10 13:17:47.000000','2017-09-01 22:00:05.629704','Administrator','Administrator',0,'Event','fields','DocType',7,'starts_on','Starts on',NULL,'Datetime',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('b4e5d3a135','2014-04-17 16:53:52.640856','2017-09-01 21:59:58.766477','Administrator','Administrator',0,'System Settings','fields','DocType',7,'date_and_number_format','Date and Number Format',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('b4e9efe720','2013-02-22 01:27:32.000000','2017-09-01 22:00:04.800729','Administrator','Administrator',0,'Customize Form Field','fields','DocType',22,'collapsible_depends_on','Collapsible Depends On',NULL,'Code',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:doc.fieldtype==\"Section Break\"',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('b4f0dc55a0','2015-02-18 12:46:38.168929','2017-09-01 21:59:59.903705','Administrator','Administrator',0,'Website Theme','fields','DocType',9,'font_size','Font Size',NULL,'Select',NULL,'\n12px\n13px\n14px\n15px\n16px\n17px\n18px',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'apply_text_styles',0,0,NULL,NULL,0,'',NULL,0,0,0,'',0,0,0,0,0,0),('b5372c5f3c','2013-01-23 19:54:43.000000','2017-09-01 22:00:07.979522','Administrator','Administrator',0,'Print Format','fields','DocType',7,'section_break_6',NULL,NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'custom_format',0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('b56871e3da','2015-02-18 12:46:38.168929','2017-09-01 21:59:59.903705','Administrator','Administrator',0,'Website Theme','fields','DocType',13,'link_color','Link Color',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'apply_text_styles',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('b5a0d9b7ae','2012-07-03 13:30:35.000000','2017-09-01 22:00:05.317576','Administrator','Administrator',0,'ToDo','fields','DocType',3,'priority','Priority','priority','Select','Data','High\nMedium\nLow',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'Medium',NULL,1,1,0,NULL,0,0,0,0,0,0),('b5f03dc8c6','2013-02-22 01:27:32.000000','2017-09-01 22:00:04.800729','Administrator','Administrator',0,'Customize Form Field','fields','DocType',35,'print_width','Print Width',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'50px','50px',0,NULL,'Print Width of the field, if the field is a column in a table',0,0,0,NULL,0,0,0,0,0,0),('b69e6d5d15','2017-01-11 04:21:35.217943','2017-09-01 21:59:54.801850','Administrator','Administrator',0,'Custom DocPerm','fields','DocType',14,'submit','Submit','submit','Check','Check',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'32px','32px',0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('b736ade690','2012-12-27 11:51:24.000000','2017-09-01 21:59:59.740706','Administrator','Administrator',0,'Website Script','fields','DocType',1,'javascript','Javascript',NULL,'Code',NULL,'Javascript',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('b743c4a296','2013-03-28 10:35:30.000000','2017-09-01 22:00:00.894557','Administrator','Administrator',0,'Blog Post','fields','DocType',4,'column_break_3',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('b747e5ab31','2013-01-23 19:54:43.000000','2017-09-01 22:00:07.979522','Administrator','Administrator',0,'Print Format','fields','DocType',9,'html','HTML','html','Code','Text Editor','HTML',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'custom_format',0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('b77b330a08','2016-12-08 12:01:07.993900','2017-09-01 22:00:02.387366','Administrator','Administrator',0,'Email Queue Recipient','fields','DocType',2,'status','Status',NULL,'Select',NULL,'\nNot Sent\nSending\nSent\nError\nExpired',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'Not Sent',NULL,1,0,0,'',0,0,0,0,0,0),('b79a6d218e','2014-07-11 17:19:37.037109','2017-09-01 22:00:03.693814','Administrator','Administrator',0,'Email Alert Recipient','fields','DocType',2,'email_by_role','Email By Role',NULL,'Link',NULL,'Role',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('b7ab9a7e35','2013-02-22 01:27:32.000000','2017-09-01 22:00:04.800729','Administrator','Administrator',0,'Customize Form Field','fields','DocType',23,'column_break_14',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('b7c8f5cc6f','2013-01-28 10:06:02.000000','2017-09-01 22:00:05.001030','Administrator','Administrator',0,'Currency','fields','DocType',4,'fraction_units','Fraction Units',NULL,'Int',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'1 Currency = [?] Fraction\nFor e.g. 1 USD = 100 Cent',1,0,0,NULL,0,0,0,0,0,0),('b7d3ae4424','2013-04-30 12:58:46.000000','2017-09-01 22:00:00.764927','Administrator','Administrator',0,'Website Settings','fields','DocType',23,'integrations','Integrations',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('b820b9a41e','2013-02-18 13:36:19.000000','2017-09-01 21:59:51.696379','Administrator','Administrator',0,'DocType','fields','DocType',57,'advanced','Advanced',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('b82b84df2f','2017-09-01 13:29:30.289032','2017-09-01 19:20:24.367341','Administrator','Administrator',0,'Paciente','fields','DocType',6,'cedula_pasaporte','Cedula/Pasaporte',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,1,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('b87d0f4628','2016-08-24 14:07:21.955052','2017-09-01 22:00:07.188251','Administrator','Administrator',0,'OAuth Client','fields','DocType',3,'user','User',NULL,'Link',NULL,'User',0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('b895e57ab4','2013-04-30 12:58:46.000000','2017-09-01 22:00:00.764927','Administrator','Administrator',0,'Website Settings','fields','DocType',6,'website_theme','Website Theme',NULL,'Link',NULL,'Website Theme',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'Standard',NULL,0,0,0,'',0,0,0,0,0,0),('b8b0e66212','2014-03-11 14:55:00.000000','2017-09-01 21:59:52.429552','Administrator','Administrator',0,'User','fields','DocType',13,'language','Language',NULL,'Link',NULL,'Language',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'',0,0,0,NULL,0,0,0,0,0,0),('b8d46bd65e','2016-07-15 05:51:29.224123','2017-09-01 22:00:05.481647','Administrator','Administrator',0,'Bulk Update','fields','DocType',1,'document_type','Document Type',NULL,'Link',NULL,'DocType',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('b8e81d70a8','2016-05-25 09:49:07.125394','2017-09-01 21:59:57.606277','Administrator','Administrator',0,'Tag Category','fields','DocType',2,'tags','Tags',NULL,'Table',NULL,'Tag',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('b8f5cff896','2017-02-13 17:33:25.157332','2017-09-01 21:59:55.882960','Administrator','Administrator',0,'User Permission for Page and Report','fields','DocType',8,'update','Update',NULL,'Button',NULL,'',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('b93a8166b2','2016-02-17 12:21:16.175465','2017-09-01 21:59:57.386715','Administrator','Administrator',0,'Translation','fields','DocType',1,'language','Language',NULL,'Link',NULL,'Language',1,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,1,0,'',0,0,0,0,0,0),('b9bbd6178f','2014-04-17 16:53:52.640856','2017-09-01 21:59:58.766477','Administrator','Administrator',0,'System Settings','fields','DocType',17,'scheduler_last_event','Scheduler Last Event',NULL,'Data',NULL,NULL,0,1,0,0,1,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('b9e98dd845','2014-09-11 12:04:34.163728','2017-09-01 22:00:02.520524','Administrator','Administrator',0,'Email Account','fields','DocType',42,'no_remaining','No of emails remaining to be synced',NULL,'Data',NULL,NULL,0,1,0,0,0,0,0,0,0,0,1,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('b9fdb3793b','2013-03-07 12:26:33.000000','2017-09-01 22:00:00.101366','Administrator','Administrator',0,'Website Slideshow Item','fields','DocType',1,'image','Image',NULL,'Attach',NULL,'',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('ba4b66423f','2013-02-22 01:27:33.000000','2017-09-01 21:59:50.367790','Administrator','Administrator',0,'DocField','fields','DocType',32,'display','Display',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('babd829a39','2016-02-22 03:47:45.387068','2017-09-01 22:00:05.878431','Administrator','Administrator',0,'Desktop Icon','fields','DocType',14,'link','Link',NULL,'Small Text',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('bb05abdda1','2013-02-18 13:36:19.000000','2017-09-01 21:59:51.696379','Administrator','Administrator',0,'DocType','fields','DocType',22,'search_fields','Search Fields','search_fields','Data','Data',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:!doc.istable',0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('bb0ac3671d','2013-03-09 15:45:57.000000','2017-09-01 21:59:57.830003','Administrator','Administrator',0,'Report','fields','DocType',3,'is_standard','Is Standard',NULL,'Select',NULL,'No\nYes',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,1,0,NULL,0,0,0,0,0,0),('bb646c04b4','2016-09-01 01:34:34.985457','2017-09-01 22:00:03.756563','Administrator','Administrator',0,'Auto Email Report','fields','DocType',16,'day_of_week','Day of Week',NULL,'Select',NULL,'Monday\nTuesday\nWednesday\nThursday\nFriday\nSaturday\nSunday',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:doc.frequency==\'Weekly\'',0,0,NULL,NULL,0,'Monday',NULL,0,0,0,'',0,0,0,0,0,0),('bb68337626','2012-07-03 13:30:35.000000','2017-09-01 22:00:05.317576','Administrator','Administrator',0,'ToDo','fields','DocType',1,'description_and_status','',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('bba7ef27da','2016-09-22 04:16:48.829658','2017-09-01 22:00:06.105316','Administrator','Administrator',0,'LDAP Settings','fields','DocType',6,'section_break_5',NULL,NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('bbac8d7303','2015-02-18 12:46:38.168929','2017-09-01 21:59:59.903705','Administrator','Administrator',0,'Website Theme','fields','DocType',22,'column_break_6',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('bbcd61cd1d','2012-12-28 10:49:55.000000','2017-09-01 22:00:02.091249','Administrator','Administrator',0,'Workflow','fields','DocType',6,'states','Document States',NULL,'Table',NULL,'Workflow Document State',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'All possible Workflow States and roles of the workflow. Docstatus Options: 0 is\"Saved\", 1 is \"Submitted\" and 2 is \"Cancelled\"',0,0,0,NULL,0,0,0,0,0,0),('bbdcdda6b2','2015-02-04 04:33:36.330477','2017-09-01 21:59:55.605388','Administrator','Administrator',0,'DocShare','fields','DocType',4,'read','Read',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'0',NULL,0,0,0,'',0,0,0,0,0,0),('bc45de48b6','2013-01-10 16:34:01.000000','2017-09-01 21:59:53.056685','Administrator','Administrator',0,'Custom Field','fields','DocType',26,'print_hide','Print Hide','print_hide','Check','Check',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('bcd17353c2','2014-03-11 14:55:00.000000','2017-09-01 21:59:52.429552','Administrator','Administrator',0,'User','fields','DocType',57,'third_party_authentication','Third Party Authentication',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,'enabled',1,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('bdbc70756c','2015-11-28 00:57:39.766888','2017-09-01 21:59:58.381641','Administrator','Administrator',0,'Error Snapshot','fields','DocType',5,'relapses','Relapses',NULL,'Int',NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'1',NULL,1,0,1,'',0,0,0,0,0,0),('be1aa7c966','2014-07-17 06:54:20.782907','2017-09-01 22:00:07.719476','Administrator','Administrator',0,'Print Settings','fields','DocType',17,'allow_page_break_inside_tables','Allow page break inside tables',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('be3f9e6bc4','2014-09-01 14:08:48.624556','2017-09-01 21:59:53.572628','Administrator','Administrator',0,'Web Form','fields','DocType',25,'sidebar_items','Sidebar Items',NULL,'Table',NULL,'Portal Menu Item',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('be41df20b9','2013-02-22 01:27:32.000000','2017-09-01 22:00:04.800729','Administrator','Administrator',0,'Customize Form Field','fields','DocType',8,'in_standard_filter','In Standard Filter',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('be50a458e9','2013-02-22 01:27:33.000000','2017-09-01 21:59:50.367790','Administrator','Administrator',0,'DocField','fields','DocType',27,'ignore_user_permissions','Ignore User Permissions',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'User permissions should not apply for this Link',0,0,0,NULL,0,0,0,0,0,0),('be64ff6804','2014-07-11 17:18:09.923399','2017-09-01 22:00:03.128353','Administrator','Administrator',0,'Email Alert','fields','DocType',14,'condition','Condition',NULL,'Code',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'',0,0,NULL,NULL,0,NULL,'Optional: The alert will be sent if this expression is true',1,0,0,NULL,0,0,1,0,0,0),('bec4fa8784','2013-02-22 01:27:33.000000','2017-09-01 21:59:50.367790','Administrator','Administrator',0,'DocField','fields','DocType',4,'fieldname','Name','fieldname','Data','Data',NULL,1,0,0,0,0,0,1,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('bed08ab50e','2017-01-11 04:21:35.217943','2017-09-01 21:59:54.801850','Administrator','Administrator',0,'Custom DocPerm','fields','DocType',24,'print','Print',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'1',NULL,0,0,0,'',0,0,0,0,0,0),('bef7069c6f','2013-01-10 16:34:01.000000','2017-09-01 22:00:04.517892','Administrator','Administrator',0,'Custom Script','fields','DocType',2,'script_type','Script Type','script_type','Select','Select','Client',0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'Client',NULL,1,1,1,NULL,0,0,0,0,0,0),('bf85018769','2013-02-18 13:36:19.000000','2017-09-01 21:59:51.696379','Administrator','Administrator',0,'DocType','fields','DocType',27,'restrict_to_domain','Restrict To Domain',NULL,'Link',NULL,'Domain',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('c00d55e105','2014-09-01 14:08:48.624556','2017-09-01 21:59:53.572628','Administrator','Administrator',0,'Web Form','fields','DocType',21,'success_message','Success Message',NULL,'Text',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Message to be displayed on successful completion',0,0,0,NULL,0,0,0,0,0,0),('c0343dba5b','2013-01-19 10:23:30.000000','2017-09-01 22:00:05.106860','Administrator','Administrator',0,'Country','fields','DocType',2,'date_format','Date Format',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('c037eb1b42','2015-03-18 06:08:32.729800','2017-09-01 22:00:02.448883','Administrator','Administrator',0,'Email Group','fields','DocType',1,'title','Title',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,1,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('c052b2d705','2012-12-12 11:19:22.000000','2017-09-01 21:59:54.402066','Administrator','Administrator',0,'File','fields','DocType',13,'is_folder','Is Folder',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('c05e2c8678','2013-02-22 01:27:36.000000','2017-09-01 22:00:02.249452','Administrator','Administrator',0,'Workflow Document State','fields','DocType',4,'update_value','Update Value',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('c090b87ece','2012-07-03 13:30:35.000000','2017-09-01 22:00:05.317576','Administrator','Administrator',0,'ToDo','fields','DocType',16,'sender','Sender',NULL,'Data',NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('c0930ebd8e','2013-04-30 12:58:46.000000','2017-09-01 22:00:00.764927','Administrator','Administrator',0,'Website Settings','fields','DocType',31,'section_break_38','HTML Header & Robots',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('c0a70eab59','2013-06-10 13:17:47.000000','2017-09-01 22:00:05.629704','Administrator','Administrator',0,'Event','fields','DocType',6,'column_break_4',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('c0bd34d0f0','2014-09-11 12:04:34.163728','2017-09-01 22:00:02.520524','Administrator','Administrator',0,'Email Account','fields','DocType',1,'email_id','Email Address',NULL,'Data',NULL,'',0,0,0,0,0,1,0,1,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('c0de4d4f4f','2013-04-30 12:58:46.000000','2017-09-01 22:00:00.764927','Administrator','Administrator',0,'Website Settings','fields','DocType',27,'favicon','FavIcon',NULL,'Attach',NULL,'',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'An icon file with .ico extension. Should be 16 x 16 px. Generated using a favicon generator. [favicon-generator.org]',0,0,0,NULL,0,0,0,0,0,0),('c13890892b','2016-07-15 05:51:29.224123','2017-09-01 22:00:05.481647','Administrator','Administrator',0,'Bulk Update','fields','DocType',3,'update_value','Update Value',NULL,'Small Text',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('c1c8f1ad44','2014-09-01 14:08:48.624556','2017-09-01 21:59:53.572628','Administrator','Administrator',0,'Web Form','fields','DocType',37,'web_page_link_text','Web Page Link Text',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Text to be displayed for Link to Web Page if this form has a web page. Link route will be automatically generated based on `page_name` and `parent_website_route`',0,0,0,'',0,0,0,0,0,0),('c1f857e383','2016-03-30 01:40:20.001775','2017-09-01 22:00:01.167977','Administrator','Administrator',0,'Portal Settings','fields','DocType',6,'custom_menu','Custom Menu Items',NULL,'Table',NULL,'Portal Menu Item',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('c202dba045','2014-06-05 02:22:36.029850','2017-09-01 22:00:08.144706','Administrator','Administrator',0,'Address Template','fields','DocType',2,'is_default','Is Default',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'This format is used if country specific format is not found',1,0,0,NULL,0,0,0,0,0,0),('c2032148d2','2014-07-11 17:18:09.923399','2017-09-01 22:00:03.128353','Administrator','Administrator',0,'Email Alert','fields','DocType',5,'is_standard','Is Standard',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('c2cd95e43a','2014-04-17 16:53:52.640856','2017-09-01 21:59:58.766477','Administrator','Administrator',0,'System Settings','fields','DocType',21,'security','Security',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('c3070da09b','2017-01-13 04:55:18.835023','2017-09-01 21:59:55.765451','Administrator','Administrator',0,'Dynamic Link','fields','DocType',1,'link_doctype','Link DocType',NULL,'Link',NULL,'DocType',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('c34ed4e640','2013-03-28 10:35:30.000000','2017-09-01 22:00:00.324049','Administrator','Administrator',0,'Web Page','fields','DocType',27,'breadcrumbs','Breadcrumbs',NULL,'Code',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'List as [{\"label\": _(\"Jobs\"), \"route\":\"jobs\"}]',0,0,0,'',0,0,0,0,0,0),('c3725c105b','2012-12-20 17:16:49.000000','2017-09-01 21:59:56.947669','Administrator','Administrator',0,'Page','fields','DocType',11,'roles','Roles','roles','Table','Table','Has Role',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:doc.standard == \'Yes\'',0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('c395a0fbdf','2012-11-22 17:45:46.000000','2017-09-01 22:00:07.822928','Administrator','Administrator',0,'Letter Head','fields','DocType',3,'is_default','Is Default','is_default','Check','Check',NULL,1,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'letter_head_name',0,0,NULL,NULL,0,NULL,'Check this to make this the default letter head in all prints',1,0,0,NULL,0,0,0,0,0,0),('c3afc2cdb1','2016-03-30 01:39:20.586927','2017-09-01 21:59:54.203506','Administrator','Administrator',0,'Portal Menu Item','fields','DocType',5,'role','Role',NULL,'Link',NULL,'Role',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,2,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('c3c6135ae4','2013-06-10 13:17:47.000000','2017-09-01 22:00:05.629704','Administrator','Administrator',0,'Event','fields','DocType',20,'thursday','Thursday',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:doc.repeat_this_event && doc.repeat_on===\"Every Day\"',0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('c3dc9270a1','2013-03-09 15:45:57.000000','2017-09-01 21:59:57.830003','Administrator','Administrator',0,'Report','fields','DocType',11,'section_break_6',NULL,NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('c47b87ffb1','2016-08-24 14:07:21.955052','2017-09-01 22:00:07.188251','Administrator','Administrator',0,'OAuth Client','fields','DocType',12,'sb_advanced',' Advanced Settings',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,0,NULL,'1',NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('c48e1bfbf2','2017-09-01 13:29:30.289032','2017-09-01 19:20:24.367341','Administrator','Administrator',0,'Paciente','fields','DocType',17,'dir_edificio','Edificio',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('c4c2045869','2016-08-04 04:58:40.457416','2017-09-01 22:00:07.597872','Administrator','Administrator',0,'Integration Request','fields','DocType',8,'reference_docname','Reference Docname',NULL,'Dynamic Link',NULL,'reference_doctype',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('c4ce4cbfd5','2017-02-13 17:33:25.157332','2017-09-01 21:59:54.729999','Administrator','Administrator',0,'Role Permission for Page and Report','fields','DocType',1,'set_role_for','Set Role For',NULL,'Select',NULL,'\nPage\nReport',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('c50f11363b','2014-07-11 17:18:09.923399','2017-09-01 22:00:03.128353','Administrator','Administrator',0,'Email Alert','fields','DocType',12,'value_changed','Value Changed',NULL,'Select',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:doc.event==\"Value Change\"',0,0,NULL,NULL,0,NULL,'Send alert if this field\'s value changes',0,0,0,NULL,0,0,0,0,0,0),('c526467896','2013-03-28 10:35:30.000000','2017-09-01 22:00:00.324049','Administrator','Administrator',0,'Web Page','fields','DocType',2,'title','Title',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,1,0,0,1,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'',1,0,0,NULL,0,0,0,0,0,0),('c53ddba495','2013-01-10 16:34:24.000000','2017-09-01 22:00:07.912117','Administrator','Administrator',0,'Print Heading','fields','DocType',2,'description','Description','description','Small Text','Small Text',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'300px',NULL,0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('c55aa015dc','2014-02-20 17:22:37.000000','2017-09-01 21:59:57.172499','Administrator','Administrator',0,'Version','fields','DocType',1,'ref_doctype','DocType',NULL,'Link',NULL,'DocType',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,1,0,NULL,0,0,0,0,0,0),('c56c37e30a','2013-06-10 13:17:47.000000','2017-09-01 22:00:05.629704','Administrator','Administrator',0,'Event','fields','DocType',4,'send_reminder','Send an email reminder in the morning',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'1',NULL,0,0,0,NULL,0,0,0,0,0,0),('c59bc762a9','2013-02-22 01:27:33.000000','2017-09-01 21:59:50.986087','Administrator','Administrator',0,'DocPerm','fields','DocType',24,'print','Print',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'1',NULL,0,0,0,NULL,0,0,0,0,0,0),('c5b406c740','2014-09-11 12:04:34.163728','2017-09-01 22:00:02.520524','Administrator','Administrator',0,'Email Account','fields','DocType',35,'auto_reply','',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('c5c7ac8c45','2017-09-01 15:56:17.943779','2017-09-01 16:25:52.923943','Administrator','Administrator',0,'Empresa','fields','DocType',1,'tipo','Tipo',NULL,'Select',NULL,'ARS\nCLINICA\nHOSPITAL',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('c60524ba4b','2013-02-22 01:27:32.000000','2017-09-01 22:00:04.800729','Administrator','Administrator',0,'Customize Form Field','fields','DocType',36,'columns','Columns',NULL,'Int',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:cur_frm.doc.istable',0,0,NULL,NULL,0,NULL,'Number of columns for a field in a Grid (Total Columns in a grid should be less than 11)',0,0,0,'',0,0,0,0,0,0),('c6062919e4','2014-03-11 14:55:00.000000','2017-09-01 21:59:52.429552','Administrator','Administrator',0,'User','fields','DocType',31,'reset_password_key','Reset Password Key',NULL,'Data',NULL,NULL,0,1,0,1,0,0,0,0,0,0,1,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,NULL,0,0,0,0,0,0),('c648bf53fc','2013-01-29 10:47:14.000000','2017-09-01 21:59:55.016873','Administrator','Administrator',0,'Communication','fields','DocType',10,'section_break_8',NULL,NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('c667e7b3ee','2017-01-23 16:56:25.875531','2017-09-01 21:59:56.487193','Administrator','Administrator',0,'Authentication Log','fields','DocType',10,'status','Status',NULL,'Select',NULL,'\nSuccess\nFailed',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('c69686f926','2013-02-22 01:27:33.000000','2017-09-01 21:59:50.367790','Administrator','Administrator',0,'DocField','fields','DocType',22,'unique','Unique',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('c6aad6bea9','2016-09-22 04:16:48.829658','2017-09-01 22:00:06.105316','Administrator','Administrator',0,'LDAP Settings','fields','DocType',3,'organizational_unit','Organizational Unit',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('c6ac95e162','2016-02-17 12:21:16.175465','2017-09-01 21:59:57.386715','Administrator','Administrator',0,'Translation','fields','DocType',4,'column_break_6',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('c6cf3da894','2013-01-10 16:34:32.000000','2017-09-01 22:00:08.226056','Administrator','Administrator',0,'Contact','fields','DocType',1,'contact_section','',NULL,'Section Break',NULL,'fa fa-user',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('c7ef2e8bb7','2017-09-01 15:11:26.069079','2017-09-01 15:28:08.415026','Administrator','Administrator',0,'Alergias','fields','DocType',1,'medicamento','Medicamento',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('c7fd600220','2013-01-29 17:55:08.000000','2017-09-01 22:00:04.634582','Administrator','Administrator',0,'Customize Form','fields','DocType',2,'properties','',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'doc_type',0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('c81b9a3419','2012-12-28 10:49:55.000000','2017-09-01 22:00:02.091249','Administrator','Administrator',0,'Workflow','fields','DocType',1,'workflow_name','Workflow Name',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('c821e678fe','2012-07-03 13:30:35.000000','2017-09-01 22:00:05.317576','Administrator','Administrator',0,'ToDo','fields','DocType',11,'reference_name','Reference Name','reference_name','Dynamic Link','Data','reference_type',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('c858f27748','2014-09-11 12:04:34.163728','2017-09-01 22:00:02.520524','Administrator','Administrator',0,'Email Account','fields','DocType',3,'login_id','Email Login ID',NULL,'Data',NULL,'',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'login_id_is_different',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('c864d282df','2016-02-22 03:47:45.387068','2017-09-01 22:00:05.878431','Administrator','Administrator',0,'Desktop Icon','fields','DocType',15,'column_break_10',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('c866ea7ba5','2017-01-11 04:21:35.217943','2017-09-01 21:59:54.801850','Administrator','Administrator',0,'Custom DocPerm','fields','DocType',18,'report','Report',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'32px','32px',0,'1',NULL,0,0,0,'',0,0,0,0,0,0),('c8d88bc066','2013-02-18 13:36:19.000000','2017-09-01 21:59:51.696379','Administrator','Administrator',0,'DocType','fields','DocType',52,'has_web_view','Has Web View',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'0',NULL,0,0,0,'',0,0,0,0,0,0),('c8fde703ce','2016-08-24 14:10:17.471264','2017-09-01 22:00:07.513722','Administrator','Administrator',0,'OAuth Bearer Token','fields','DocType',3,'scopes','Scopes',NULL,'Text',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('c96a89e5a5','2016-04-20 15:29:39.785172','2017-09-01 22:00:04.338347','Administrator','Administrator',0,'Email Flag Queue','fields','DocType',5,'email_account','Email Account',NULL,'Data',NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('c99e8d74b7','2012-12-20 17:16:49.000000','2017-09-01 21:59:56.947669','Administrator','Administrator',0,'Page','fields','DocType',9,'standard','Standard','standard','Select','Select','\nYes\nNo',1,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('c9f953836a','2016-03-30 10:04:25.828742','2017-09-01 21:59:56.668986','Administrator','Administrator',0,'User Email','fields','DocType',4,'awaiting_password','Awaiting Password',NULL,'Check',NULL,'email_account.awaiting_password',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,1,'',0,0,0,0,0,0),('ca1a05583b','2017-09-01 15:56:17.943779','2017-09-01 16:25:52.923943','Administrator','Administrator',0,'Empresa','fields','DocType',9,'telefonos','Telefonos',NULL,'Table',NULL,'Telefonos',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('ca4ae63e60','2012-08-02 15:17:28.000000','2017-09-01 22:00:03.294421','Administrator','Administrator',0,'Email Queue','fields','DocType',13,'add_unsubscribe_link','Add Unsubscribe Link',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'1',NULL,0,0,0,'',0,0,0,0,0,0),('ca802dd0c3','2014-03-04 08:29:52.000000','2017-09-01 22:00:06.216644','Administrator','Administrator',0,'Social Login Keys','fields','DocType',4,'google','Google',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('ca94fe2f73','2013-01-29 17:55:08.000000','2017-09-01 22:00:04.634582','Administrator','Administrator',0,'Customize Form','fields','DocType',11,'image_view','Image View',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval: doc.image_field',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('caa939b72c','2014-03-11 14:55:00.000000','2017-09-01 21:59:52.429552','Administrator','Administrator',0,'User','fields','DocType',45,'defaults','User Defaults',NULL,'Table',NULL,'DefaultValue',0,1,0,0,0,0,0,0,0,0,1,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Enter default value fields (keys) and values. If you add multiple values for a field, the first one will be picked. These defaults are also used to set \"match\" permission rules. To see list of fields, go to \"Customize Form\".',0,0,0,NULL,0,0,0,0,0,0),('cabd82387c','2016-03-29 10:50:48.848239','2017-09-01 22:00:03.612963','Administrator','Administrator',0,'Email Domain','fields','DocType',4,'mailbox_settings','',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('cb19e138eb','2012-08-02 15:17:28.000000','2017-09-01 22:00:03.294421','Administrator','Administrator',0,'Email Queue','fields','DocType',10,'communication','Communication',NULL,'Link',NULL,'Communication',1,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('cb1b8c97dc','2014-04-17 16:53:52.640856','2017-09-01 21:59:58.766477','Administrator','Administrator',0,'System Settings','fields','DocType',4,'column_break_3',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('cba8e17e58','2012-08-02 15:17:28.000000','2017-09-01 22:00:03.294421','Administrator','Administrator',0,'Email Queue','fields','DocType',14,'unsubscribe_param','Unsubscribe Param',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('cbb6f8b4d2','2013-02-22 01:27:33.000000','2017-09-01 21:59:50.367790','Administrator','Administrator',0,'DocField','fields','DocType',42,'oldfieldname',NULL,'oldfieldname','Data','Data',NULL,0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('cbc752975b','2016-10-19 12:26:04.809812','2017-09-01 22:00:05.535117','Administrator','Administrator',0,'Kanban Board','fields','DocType',3,'field_name','Field Name',NULL,'Select',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('cc6bbb6629','2014-04-17 16:53:52.640856','2017-09-01 21:59:58.766477','Administrator','Administrator',0,'System Settings','fields','DocType',27,'deny_multiple_sessions','Allow only one session per user',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Note: Multiple sessions will be allowed in case of mobile device',0,0,0,'',0,0,0,0,0,0),('cc6ebc85ea','2013-03-09 15:45:57.000000','2017-09-01 21:59:57.830003','Administrator','Administrator',0,'Report','fields','DocType',9,'apply_user_permissions','Apply User Permissions',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:[\"Query Report\", \"Script Report\"].indexOf(doc.report_type)!==-1',0,0,NULL,NULL,0,'1',NULL,0,0,0,NULL,0,0,0,0,0,0),('cc85396d69','2013-05-24 13:41:00.000000','2017-09-01 22:00:05.180965','Administrator','Administrator',0,'Note','fields','DocType',4,'notify_on_every_login','Notify Users On Every Login',NULL,'Check',NULL,NULL,0,0,0,0,0,0,1,0,0,0,0,0,NULL,NULL,'notify_on_login',0,0,NULL,NULL,0,'0','If enabled, users will be notified every time they login. If not enabled, users will only be notified once.',0,0,0,'',0,0,0,0,0,0),('cc8d20422c','2013-01-10 16:34:01.000000','2017-09-01 21:59:53.056685','Administrator','Administrator',0,'Custom Field','fields','DocType',21,'reqd','Is Mandatory Field','reqd','Check','Check',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('cca8c01b3e','2013-01-29 10:47:14.000000','2017-09-01 21:59:55.016873','Administrator','Administrator',0,'Communication','fields','DocType',20,'communication_date','Date',NULL,'Datetime',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'Now',NULL,0,0,0,NULL,0,0,0,0,0,0),('ccbde61524','2017-01-11 04:21:35.217943','2017-09-01 21:59:54.801850','Administrator','Administrator',0,'Custom DocPerm','fields','DocType',5,'column_break_2',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('ccc8b192c5','2013-03-09 15:45:57.000000','2017-09-01 21:59:57.830003','Administrator','Administrator',0,'Report','fields','DocType',8,'disabled','Disabled',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('ccedeee26a','2013-03-08 09:41:11.000000','2017-09-01 22:00:01.501531','Administrator','Administrator',0,'Blog Category','fields','DocType',2,'title','Title',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,1,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('ccff9c65d9','2014-04-17 16:53:52.640856','2017-09-01 21:59:58.766477','Administrator','Administrator',0,'System Settings','fields','DocType',22,'session_expiry','Session Expiry',NULL,'Data',NULL,'',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'06:00','Session Expiry in Hours e.g. 06:00',0,0,0,NULL,0,0,0,0,0,0),('cd64dd3ce7','2013-02-21 20:12:42.000000','2017-09-01 22:00:01.610316','Administrator','Administrator',0,'Contact Us Settings','fields','DocType',13,'country','Country',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('cdad2f59d8','2016-12-29 12:59:48.638970','2017-09-01 21:59:57.504015','Administrator','Administrator',0,'Deleted Document','fields','DocType',6,'section_break_6',NULL,NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('cdb3609080','2017-02-13 14:53:36.240122','2017-09-01 21:59:58.010084','Administrator','Administrator',0,'Custom Role','fields','DocType',1,'page','Page',NULL,'Link',NULL,'Page',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('cdbeb11779','2013-01-29 10:47:14.000000','2017-09-01 21:59:55.016873','Administrator','Administrator',0,'Communication','fields','DocType',46,'rating','Rating',NULL,'Int',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('ce4b6cb67f','2016-09-01 01:34:34.985457','2017-09-01 22:00:03.756563','Administrator','Administrator',0,'Auto Email Report','fields','DocType',13,'filter_meta','Filter Meta',NULL,'Text',NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('ce4df4ee85','2012-08-02 15:17:28.000000','2017-09-01 22:00:03.294421','Administrator','Administrator',0,'Email Queue','fields','DocType',12,'priority','Priority',NULL,'Int',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'1',NULL,0,0,1,'',0,0,0,0,0,0),('ce8a92565d','2014-02-20 17:22:37.000000','2017-09-01 21:59:57.172499','Administrator','Administrator',0,'Version','fields','DocType',5,'section_break_4',NULL,NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('ce95081be3','2017-01-24 15:46:38.366213','2017-09-01 21:59:56.229184','Administrator','Administrator',0,'Feedback Trigger','fields','DocType',14,'message','Message',NULL,'Code',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('ceb2bfdfff','2013-03-28 10:35:30.000000','2017-09-01 22:00:00.324049','Administrator','Administrator',0,'Web Page','fields','DocType',20,'website_sidebar','Website Sidebar',NULL,'Link',NULL,'Website Sidebar',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('cee0442809','2016-03-30 01:39:20.586927','2017-09-01 21:59:54.203506','Administrator','Administrator',0,'Portal Menu Item','fields','DocType',2,'enabled','Enabled',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,1,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('cf06e47d0a','2013-02-22 01:27:33.000000','2017-09-01 21:59:50.986087','Administrator','Administrator',0,'DocPerm','fields','DocType',22,'column_break_19',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('cf2ae0c720','2016-08-24 14:10:17.471264','2017-09-01 22:00:07.513722','Administrator','Administrator',0,'OAuth Bearer Token','fields','DocType',7,'expires_in','Expires In',NULL,'Int',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('cf69d8271b','2013-03-25 16:00:51.000000','2017-09-01 21:59:59.800038','Administrator','Administrator',0,'Blogger','fields','DocType',3,'full_name','Full Name',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('cfb1dfa77b','2017-01-11 04:21:35.217943','2017-09-01 21:59:54.801850','Administrator','Administrator',0,'Custom DocPerm','fields','DocType',23,'share','Share',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'1',NULL,0,0,0,'',0,0,0,0,0,0),('cfc32d6430','2013-02-22 01:27:33.000000','2017-09-01 21:59:50.367790','Administrator','Administrator',0,'DocField','fields','DocType',9,'in_list_view','In List View',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'70px','70px',0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('cfd142b129','2013-01-10 16:34:32.000000','2017-09-01 22:00:08.226056','Administrator','Administrator',0,'Contact','fields','DocType',14,'is_primary_contact','Is Primary Contact','is_primary_contact','Check','Select',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'',0,0,NULL,NULL,0,'0',NULL,0,0,0,NULL,0,0,0,0,0,0),('cfe46edc20','2014-09-11 12:04:34.163728','2017-09-01 22:00:02.520524','Administrator','Administrator',0,'Email Account','fields','DocType',20,'section_break_13',NULL,NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'enable_incoming',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('d0a97230d3','2013-01-29 10:47:14.000000','2017-09-01 21:59:55.016873','Administrator','Administrator',0,'Communication','fields','DocType',45,'feedback_section','Feedback',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,'eval: doc.rating > 0',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('d0e6958535','2014-04-17 16:53:52.640856','2017-09-01 21:59:58.766477','Administrator','Administrator',0,'System Settings','fields','DocType',15,'background_workers','Background Workers',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('d0f2460c1f','2016-09-01 01:34:34.985457','2017-09-01 22:00:03.756563','Administrator','Administrator',0,'Auto Email Report','fields','DocType',10,'report_filters','Report Filters',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:doc.report_type !== \'Report Builder\'',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('d0f986aa4a','2014-09-01 14:14:14.292173','2017-09-01 21:59:53.897718','Administrator','Administrator',0,'Web Form Field','fields','DocType',2,'fieldtype','Fieldtype',NULL,'Select',NULL,'Attach\nCheck\nData\nDate\nDatetime\nFloat\nHTML\nInt\nLink\nSelect\nSmall Text\nText\nText Editor\nTable\nSection Break\nColumn Break\nPage Break',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('d106610145','2013-05-24 13:41:00.000000','2017-09-01 22:00:05.180965','Administrator','Administrator',0,'Note','fields','DocType',5,'expire_notification_on','Expire Notification On',NULL,'Date',NULL,NULL,1,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:doc.notify_on_login && doc.public',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('d125af0808','2017-05-03 16:28:11.295095','2017-09-01 21:59:57.685199','Administrator','Administrator',0,'Domain Settings','fields','DocType',3,'active_domains','Active Domains',NULL,'Table',NULL,'Has Domain',0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('d12af74661','2014-03-11 14:55:00.000000','2017-09-01 21:59:52.429552','Administrator','Administrator',0,'User','fields','DocType',41,'modules_access','Modules Access',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,1,0,NULL,NULL,0,'','',0,0,0,'',0,0,0,0,0,0),('d131108ba3','2014-09-01 14:08:48.624556','2017-09-01 21:59:53.572628','Administrator','Administrator',0,'Web Form','fields','DocType',20,'actions','Actions',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('d15ac268e7','2016-08-04 04:58:40.457416','2017-09-01 22:00:07.597872','Administrator','Administrator',0,'Integration Request','fields','DocType',2,'integration_request_service','Integration Request Service',NULL,'Data',NULL,'',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('d15d67c2f1','2017-01-24 15:46:38.366213','2017-09-01 21:59:56.229184','Administrator','Administrator',0,'Feedback Trigger','fields','DocType',6,'column_break_5',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('d16969f58e','2013-02-22 01:27:33.000000','2017-09-01 21:59:50.367790','Administrator','Administrator',0,'DocField','fields','DocType',26,'permlevel','Perm Level','permlevel','Int','Int',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'50px','50px',0,'0',NULL,0,0,0,NULL,0,0,0,0,0,0),('d1ae42da5a','2014-04-17 16:53:52.640856','2017-09-01 21:59:58.766477','Administrator','Administrator',0,'System Settings','fields','DocType',18,'permissions','Permissions',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('d1caefdc15','2013-06-10 13:17:47.000000','2017-09-01 22:00:05.629704','Administrator','Administrator',0,'Event','fields','DocType',23,'sunday','Sunday',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:doc.repeat_this_event && doc.repeat_on===\"Every Day\"',0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('d1fcab86ea','2013-02-22 01:27:33.000000','2017-09-01 21:59:50.986087','Administrator','Administrator',0,'DocPerm','fields','DocType',21,'set_user_permissions','Set User Permissions',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'This role update User Permissions for a user',0,0,0,NULL,0,0,0,0,0,0),('d235884f70','2017-09-01 13:29:30.289032','2017-09-01 19:20:24.367341','Administrator','Administrator',0,'Paciente','fields','DocType',8,'sexo','Sexo',NULL,'Select',NULL,'-\nFEMENINO\nMASCULINO',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('d29ac8ebec','2015-03-18 09:41:20.216319','2017-09-01 22:00:04.433960','Administrator','Administrator',0,'Email Unsubscribe','fields','DocType',1,'email','Email',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('d2a0c50287','2013-02-18 13:36:19.000000','2017-09-01 21:59:51.696379','Administrator','Administrator',0,'DocType','fields','DocType',7,'quick_entry','Quick Entry',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:!doc.istable && !doc.issingle',0,0,NULL,NULL,0,'1',NULL,0,0,0,'',0,0,0,0,0,0),('d2c2e4de50','2013-02-22 01:27:33.000000','2017-09-01 21:59:50.367790','Administrator','Administrator',0,'DocField','fields','DocType',8,'search_index','Index','search_index','Check','Check',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'50px','50px',0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('d2d63a0e52','2013-01-29 17:55:08.000000','2017-09-01 22:00:04.634582','Administrator','Administrator',0,'Customize Form','fields','DocType',18,'column_break_10',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('d2df2d392d','2013-02-22 01:27:33.000000','2017-09-01 21:59:50.367790','Administrator','Administrator',0,'DocField','fields','DocType',2,'label','Label','label','Data','Data',NULL,1,0,0,0,0,0,1,0,0,0,0,0,NULL,NULL,NULL,0,0,'163','163',0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('d2e3cfdfc9','2013-02-22 01:27:33.000000','2017-09-01 21:59:50.367790','Administrator','Administrator',0,'DocField','fields','DocType',24,'allow_bulk_edit','Allow Bulk Edit',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval: doc.fieldtype == \"Table\"',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('d2ea3f52f5','2013-03-28 10:35:30.000000','2017-09-01 22:00:00.324049','Administrator','Administrator',0,'Web Page','fields','DocType',16,'css','CSS',NULL,'Code',NULL,'CSS',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'insert_style',0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('d2ec944664','2013-01-10 16:34:01.000000','2017-09-01 21:59:53.056685','Administrator','Administrator',0,'Custom Field','fields','DocType',10,'options_help','Options Help',NULL,'HTML','HTML',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('d3e4ec60ec','2014-09-11 12:04:34.163728','2017-09-01 22:00:02.520524','Administrator','Administrator',0,'Email Account','fields','DocType',13,'email_server','Email Server',NULL,'Data',NULL,'domain.email_server',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:!doc.domain && doc.enable_incoming',0,0,NULL,NULL,0,NULL,'e.g. pop.gmail.com / imap.gmail.com',0,0,0,'',0,0,0,0,0,0),('d46362d4f0','2016-04-12 18:40:16.315024','2017-09-01 22:00:01.300069','Administrator','Administrator',0,'Footer Item','fields','DocType',3,'url','URL',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'200px','200px',0,NULL,'Link to the page you want to open. Leave blank if you want to make it a group parent.',1,0,0,'',0,0,0,0,0,0),('d478340e0e','2013-01-23 19:54:43.000000','2017-09-01 22:00:07.979522','Administrator','Administrator',0,'Print Format','fields','DocType',20,'print_format_help','Print Format Help',NULL,'HTML',NULL,'<h3>Print Format Help</h3>\n<hr>\n<h4>Introduction</h4>\n<p>Print itemsFormats are rendered on the server side using the Jinja Templating Language. All forms have access to the <code>doc</code> object which contains information about the document that is being formatted. You can also access common utilities via the <code>frappe</code> module.</p>\n<p>For styling, the Boostrap CSS framework is provided and you can enjoy the full range of classes.</p>\n<hr>\n<h4>References</h4>\n<ol>\n	<li><a href=\"http://jinja.pocoo.org/docs/templates/\" target=\"_blank\">Jinja Tempalting Language: Reference</a></li>\n	<li><a href=\"http://getbootstrap.com\" target=\"_blank\">Bootstrap CSS Framework</a></li>\n</ol>\n<hr>\n<h4>Example</h4>\n<pre><code>&lt;h3&gt;{{ doc.select_print_heading or \"Invoice\" }}&lt;/h3&gt;\n&lt;div class=\"row\"&gt;\n	&lt;div class=\"col-md-3 text-right\"&gt;Customer Name&lt;/div&gt;\n	&lt;div class=\"col-md-9\"&gt;{{ doc.customer_name }}&lt;/div&gt;\n&lt;/div&gt;\n&lt;div class=\"row\"&gt;\n	&lt;div class=\"col-md-3 text-right\"&gt;Date&lt;/div&gt;\n	&lt;div class=\"col-md-9\"&gt;{{ doc.get_formatted(\"invoice_date\") }}&lt;/div&gt;\n&lt;/div&gt;\n&lt;table class=\"table table-bordered\"&gt;\n	&lt;tbody&gt;\n		&lt;tr&gt;\n			&lt;th&gt;Sr&lt;/th&gt;\n			&lt;th&gt;Item Name&lt;/th&gt;\n			&lt;th&gt;Description&lt;/th&gt;\n			&lt;th class=\"text-right\"&gt;Qty&lt;/th&gt;\n			&lt;th class=\"text-right\"&gt;Rate&lt;/th&gt;\n			&lt;th class=\"text-right\"&gt;Amount&lt;/th&gt;\n		&lt;/tr&gt;\n		{%- for row in doc.items -%}\n		&lt;tr&gt;\n			&lt;td style=\"width: 3%;\"&gt;{{ row.idx }}&lt;/td&gt;\n			&lt;td style=\"width: 20%;\"&gt;\n				{{ row.item_name }}\n				{% if row.item_code != row.item_name -%}\n				&lt;br&gt;Item Code: {{ row.item_code}}\n				{%- endif %}\n			&lt;/td&gt;\n			&lt;td style=\"width: 37%;\"&gt;\n				&lt;div style=\"border: 0px;\"&gt;{{ row.description }}&lt;/div&gt;&lt;/td&gt;\n			&lt;td style=\"width: 10%; text-align: right;\"&gt;{{ row.qty }} {{ row.uom or row.stock_uom }}&lt;/td&gt;\n			&lt;td style=\"width: 15%; text-align: right;\"&gt;{{\n				row.get_formatted(\"rate\", doc) }}&lt;/td&gt;\n			&lt;td style=\"width: 15%; text-align: right;\"&gt;{{\n				row.get_formatted(\"amount\", doc) }}&lt;/td&gt;\n		&lt;/tr&gt;\n		{%- endfor -%}\n	&lt;/tbody&gt;\n&lt;/table&gt;</code></pre>\n<hr>\n<h4>Common Functions</h4>\n<table class=\"table table-bordered\">\n	<tbody>\n		<tr>\n			<td style=\"width: 30%;\"><code>doc.get_formatted(\"[fieldname]\", [parent_doc])</code></td>\n			<td>Get document value formatted as Date, Currency etc. Pass parent <code>doc</code> for curreny type fields.</td>\n		</tr>\n		<tr>\n			<td style=\"width: 30%;\"><code>frappe.db.get_value(\"[doctype]\", \"[name]\", \"fieldname\")</code></td>\n			<td>Get value from another document.</td>\n		</tr>\n	</tbody>\n</table>\n',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'custom_format',0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('d50a65b6c8','2013-01-10 16:34:31.000000','2017-09-01 22:00:03.015516','Administrator','Administrator',0,'Newsletter','fields','DocType',7,'message','Message',NULL,'Text Editor',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('d561087cb8','2017-09-01 15:11:26.069079','2017-09-01 15:28:08.415026','Administrator','Administrator',0,'Alergias','fields','DocType',5,'centro_de_salud','Centro de Salud',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,2,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('d5cb469887','2016-10-19 12:26:42.569185','2017-09-01 22:00:05.804293','Administrator','Administrator',0,'Kanban Board Column','fields','DocType',2,'status','Status',NULL,'Select',NULL,'Active\nArchived',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'Active',NULL,1,0,0,'',0,0,0,0,0,0),('d6bc796b37','2017-09-01 13:29:30.289032','2017-09-01 19:20:24.367341','Administrator','Administrator',0,'Paciente','fields','DocType',16,'dir_calle','Calle',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('d6e47cd80e','2012-07-03 13:30:35.000000','2017-09-01 22:00:05.317576','Administrator','Administrator',0,'ToDo','fields','DocType',15,'assigned_by_full_name','Assigned By Full Name',NULL,'Read Only',NULL,'assigned_by.full_name',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('d7495fa3d8','2014-03-11 14:55:00.000000','2017-09-01 21:59:52.429552','Administrator','Administrator',0,'User','fields','DocType',32,'redirect_url','Redirect URL',NULL,'Small Text',NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('d7993e2f78','2017-02-13 17:33:25.157332','2017-09-01 21:59:55.882960','Administrator','Administrator',0,'User Permission for Page and Report','fields','DocType',3,'report','Report',NULL,'Link',NULL,'Report',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:doc.set_role_for == \'Report\'',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('d7cdc0eb79','2014-07-17 06:54:20.782907','2017-09-01 22:00:07.719476','Administrator','Administrator',0,'Print Settings','fields','DocType',11,'font_size','Font Size',NULL,'Float',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'In points. Default is 9.',0,0,0,NULL,0,0,0,0,0,0),('d7d9792637','2014-03-11 14:55:00.000000','2017-09-01 21:59:52.429552','Administrator','Administrator',0,'User','fields','DocType',46,'sb3','Security Settings',NULL,'Section Break','Section Break',NULL,0,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,'enabled',0,0,NULL,NULL,0,NULL,NULL,0,0,1,NULL,0,0,0,0,0,0),('d8001de09a','2014-04-17 16:53:52.640856','2017-09-01 21:59:58.766477','Administrator','Administrator',0,'System Settings','fields','DocType',10,'number_format','Number Format',NULL,'Select',NULL,'#,###.##\n#.###,##\n# ###.##\n# ###,##\n#\'###.##\n#, ###.##\n#,##,###.##\n#,###.###\n#.###\n#,###',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('d80dc5298b','2017-09-01 15:19:44.113804','2017-09-01 15:33:38.607038','Administrator','Administrator',0,'Medicamentos','fields','DocType',5,'centro_de_salud','Centro de Salud',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,2,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('d815c79fc8','2013-02-18 13:36:19.000000','2017-09-01 21:59:51.696379','Administrator','Administrator',0,'DocType','fields','DocType',37,'sb3',NULL,NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:!doc.istable',0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('d8603ee68b','2013-01-19 10:23:30.000000','2017-09-01 22:00:05.106860','Administrator','Administrator',0,'Country','fields','DocType',1,'country_name','Country Name','country_name','Data','Data',NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('d8d409975b','2013-02-18 13:36:19.000000','2017-09-01 21:59:51.696379','Administrator','Administrator',0,'DocType','fields','DocType',25,'column_break_29',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('d8d6d8f335','2016-09-01 01:34:34.985457','2017-09-01 22:00:03.756563','Administrator','Administrator',0,'Auto Email Report','fields','DocType',9,'no_of_rows','No of Rows (Max 500)',NULL,'Int',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'100','',0,0,0,'',0,0,0,0,0,0),('d9063cf3a4','2017-01-11 04:21:35.217943','2017-09-01 21:59:54.801850','Administrator','Administrator',0,'Custom DocPerm','fields','DocType',9,'read','Read','read','Check','Check',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'32px','32px',0,'1',NULL,1,0,0,'',0,0,0,0,0,0),('d928970f0a','2013-06-10 13:17:47.000000','2017-09-01 22:00:05.629704','Administrator','Administrator',0,'Event','fields','DocType',19,'wednesday','Wednesday',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:doc.repeat_this_event && doc.repeat_on===\"Every Day\"',0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('d94d6b559c','2013-01-28 10:06:02.000000','2017-09-01 22:00:05.001030','Administrator','Administrator',0,'Currency','fields','DocType',1,'currency_name','Currency Name','currency_name','Data','Data',NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('d9506e6a2c','2013-02-22 01:27:32.000000','2017-09-01 21:59:56.060033','Administrator','Administrator',0,'DefaultValue','fields','DocType',1,'defkey','Key','defkey','Data','Data',NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'200px','200px',0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('d96469ea6f','2013-01-10 16:34:01.000000','2017-09-01 21:59:53.056685','Administrator','Administrator',0,'Custom Field','fields','DocType',7,'fieldtype','Field Type','fieldtype','Select','Select','Attach\nAttach Image\nButton\nCheck\nCode\nColor\nColumn Break\nCurrency\nData\nDate\nDatetime\nDynamic Link\nFloat\nHTML\nImage\nInt\nLink\nLong Text\nPassword\nPercent\nRead Only\nSection Break\nSelect\nSmall Text\nTable\nText\nText Editor\nTime\nSignature',0,0,0,0,0,1,1,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'Data',NULL,1,0,0,NULL,0,1,0,0,0,0),('da04cbf772','2013-06-10 13:17:47.000000','2017-09-01 22:00:05.629704','Administrator','Administrator',0,'Event','fields','DocType',17,'monday','Monday',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:doc.repeat_this_event && doc.repeat_on===\"Every Day\"',0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('da0fbd3fe4','2013-02-22 01:27:33.000000','2017-09-01 21:59:50.367790','Administrator','Administrator',0,'DocField','fields','DocType',16,'options','Options','options','Small Text','Text',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'For Links, enter the DocType as range.\nFor Select, enter list of Options, each on a new line.',1,0,0,NULL,0,0,0,0,0,0),('da3bbf00ce','2017-04-24 09:53:41.813982','2017-09-01 22:00:07.375584','Administrator','Administrator',0,'GSuite Templates','fields','DocType',2,'related_doctype','Related DocType',NULL,'Link',NULL,'DocType',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('da440f67c3','2016-07-15 05:51:29.224123','2017-09-01 22:00:05.481647','Administrator','Administrator',0,'Bulk Update','fields','DocType',4,'condition','Condition',NULL,'Small Text',NULL,NULL,0,0,0,0,0,0,1,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'SQL Conditions. Example: status=\"Open\"',0,0,0,'',0,0,0,0,0,0),('da44a3ac66','2017-09-01 13:29:30.289032','2017-09-01 19:20:24.367341','Administrator','Administrator',0,'Paciente','fields','DocType',23,'dir_provincia','Provincia',NULL,'Select',NULL,'-\nAzua\nBahoruco\nBaní\nBarahona\nBonao\nCotuí\nDajabón\nDistrito Nacional\nEl Seibo\nElías Piña\nHato Mayor\nHigüey\nJimaní\nLa Romana\nLa Vega\nMoca\nMonte Cristi\nMonte Plata\nNagua\nPedernales\nPuerto Plata\nSalcedo\nSamaná\nSan Cristóbal\nSan Francisco de Macorís\nSan José de Ocoa\nSan Juan de la Maguana\nSan Pedro de Macorís\nSantiago\nSantiago Rodríguez,neta\nSanto Domingo Este\nValverde',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('da668e48c2','2017-01-24 15:46:38.366213','2017-09-01 21:59:56.229184','Administrator','Administrator',0,'Feedback Trigger','fields','DocType',10,'condition','Condition',NULL,'Small Text',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Optional: The alert will be sent if this expression is true',0,0,0,'',0,0,0,0,0,0),('dad19d0055','2017-04-21 16:57:30.264478','2017-09-01 22:00:07.448430','Administrator','Administrator',0,'GSuite Settings','fields','DocType',10,'refresh_token','refresh_token',NULL,'Password',NULL,NULL,0,1,0,1,1,0,0,0,0,0,1,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('db49938575','2014-09-01 14:08:48.624556','2017-09-01 21:59:53.572628','Administrator','Administrator',0,'Web Form','fields','DocType',7,'published','Published',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('db8047a18a','2016-08-24 14:07:21.955052','2017-09-01 22:00:07.188251','Administrator','Administrator',0,'OAuth Client','fields','DocType',5,'client_secret','App Client Secret',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('dbbf397db7','2013-04-30 12:58:46.000000','2017-09-01 22:00:00.764927','Administrator','Administrator',0,'Website Settings','fields','DocType',18,'footer','Footer',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('dbde54a4fb','2013-01-10 16:34:01.000000','2017-09-01 21:59:53.056685','Administrator','Administrator',0,'Custom Field','fields','DocType',22,'unique','Unique',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('dbe4f01146','2017-01-27 15:43:33.780808','2017-09-01 21:59:56.777309','Administrator','Administrator',0,'Feedback Request','fields','DocType',12,'rating','Rating',NULL,'Data',NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,2,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('dc5f5ef087','2014-04-17 16:53:52.640856','2017-09-01 21:59:58.766477','Administrator','Administrator',0,'System Settings','fields','DocType',23,'session_expiry_mobile','Session Expiry Mobile',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'720:00','In Hours',0,0,0,'',0,0,0,0,0,0),('dc6684bac8','2014-09-01 14:08:48.624556','2017-09-01 21:59:53.572628','Administrator','Administrator',0,'Web Form','fields','DocType',14,'allow_comments','Allow Comments',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'login_required',0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('dc694474e6','2017-09-01 13:29:30.289032','2017-09-01 19:20:24.367341','Administrator','Administrator',0,'Paciente','fields','DocType',27,'sb_26','Alergias',NULL,'Table',NULL,'Alergias',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('dc758a3ef2','2013-02-18 13:36:19.000000','2017-09-01 21:59:51.696379','Administrator','Administrator',0,'DocType','fields','DocType',50,'in_create','User Cannot Create','in_create','Check','Check',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('dc7d8d8072','2016-09-21 10:12:57.399174','2017-09-01 22:00:06.300633','Administrator','Administrator',0,'Dropbox Settings','fields','DocType',8,'dropbox_access_secret','Dropbox Access Secret',NULL,'Password',NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('dceb9f1619','2014-09-01 14:08:48.624556','2017-09-01 21:59:53.572628','Administrator','Administrator',0,'Web Form','fields','DocType',35,'currency','Currency',NULL,'Link',NULL,'Currency',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'accept_payment',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('dd2eede599','2013-06-10 13:17:47.000000','2017-09-01 22:00:05.629704','Administrator','Administrator',0,'Event','fields','DocType',11,'color','Color',NULL,'Select',NULL,'red\ngreen\nblue\nyellow\nskyblue\norange',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'blue',NULL,0,0,0,'',0,0,0,0,0,0),('dd3c584221','2016-07-15 05:51:29.224123','2017-09-01 22:00:05.481647','Administrator','Administrator',0,'Bulk Update','fields','DocType',2,'field','Field',NULL,'Select',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('ddfac9086d','2016-03-29 10:50:48.848239','2017-09-01 22:00:03.612963','Administrator','Administrator',0,'Email Domain','fields','DocType',9,'append_to','Append To',NULL,'Link',NULL,'DocType',0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'',0,0,NULL,NULL,0,NULL,'Append as communication against this DocType (must have fields, \"Status\", \"Subject\")',1,0,0,'',0,0,0,0,0,0),('de016f6c1a','2013-02-22 01:28:08.000000','2017-09-01 22:00:01.238809','Administrator','Administrator',0,'Company History','fields','DocType',1,'year','Year',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('de042a9c84','2013-06-10 13:17:47.000000','2017-09-01 22:00:05.629704','Administrator','Administrator',0,'Event','fields','DocType',26,'participants','Participants',NULL,'Section Break','Section Break',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('de066f3b87','2013-01-29 10:47:14.000000','2017-09-01 21:59:55.016873','Administrator','Administrator',0,'Communication','fields','DocType',11,'content','Message',NULL,'Text Editor',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'400',NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('de3da03a0a','2012-12-12 11:19:22.000000','2017-09-01 21:59:54.402066','Administrator','Administrator',0,'File','fields','DocType',7,'is_attachments_folder','Is Attachments Folder',NULL,'Check',NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('dea0418046','2014-07-11 17:18:09.923399','2017-09-01 22:00:03.128353','Administrator','Administrator',0,'Email Alert','fields','DocType',18,'set_property_after_alert','Set Property After Alert',NULL,'Select',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('ded9724384','2017-01-11 04:21:35.217943','2017-09-01 21:59:54.801850','Administrator','Administrator',0,'Custom DocPerm','fields','DocType',2,'role','Role','role','Link','Link','Role',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'150px','150px',0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('dedb1106bc','2012-12-12 11:19:22.000000','2017-09-01 21:59:54.402066','Administrator','Administrator',0,'File','fields','DocType',2,'is_private','Is Private',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:!doc.is_folder',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('dee640820c','2014-03-11 14:55:00.000000','2017-09-01 21:59:52.429552','Administrator','Administrator',0,'User','fields','DocType',27,'mute_sounds','Mute Sounds',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('df20321fe7','2016-08-24 14:10:17.471264','2017-09-01 22:00:07.513722','Administrator','Administrator',0,'OAuth Bearer Token','fields','DocType',6,'expiration_time','Expiration time',NULL,'Datetime',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('df2093af04','2016-08-24 14:07:21.955052','2017-09-01 22:00:07.188251','Administrator','Administrator',0,'OAuth Client','fields','DocType',6,'skip_authorization','Skip Authorization',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'If checked, users will not see the Confirm Access dialog.',0,0,0,'',0,0,0,0,0,0),('df97a9c189','2012-07-03 13:30:35.000000','2017-09-01 22:00:05.317576','Administrator','Administrator',0,'ToDo','fields','DocType',2,'status','Status',NULL,'Select',NULL,'Open\nClosed',0,0,0,0,0,0,0,1,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'Open',NULL,1,1,0,NULL,0,0,0,0,0,0),('e027607186','2017-09-01 13:29:30.289032','2017-09-01 19:20:24.367341','Administrator','Administrator',0,'Paciente','fields','DocType',15,'direccion','Direccion',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('e054fca91a','2013-02-22 01:27:33.000000','2017-09-01 21:59:50.367790','Administrator','Administrator',0,'DocField','fields','DocType',39,'columns','Columns',NULL,'Int',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'',0,0,NULL,NULL,0,NULL,'Number of columns for a field in a List View or a Grid (Total Columns should be less than 11)',0,0,0,'',0,0,0,0,0,0),('e05be32d14','2016-08-24 14:07:21.955052','2017-09-01 22:00:07.188251','Administrator','Administrator',0,'OAuth Client','fields','DocType',15,'response_type','Response Type',NULL,'Select',NULL,'Code\nToken',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'Code',NULL,1,1,0,NULL,0,0,0,0,0,0),('e0dd28b836','2012-08-02 15:17:28.000000','2017-09-01 22:00:03.294421','Administrator','Administrator',0,'Email Queue','fields','DocType',17,'attachments','Attachments',NULL,'Code',NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('e0eae08b36','2013-01-10 16:34:01.000000','2017-09-01 21:59:53.056685','Administrator','Administrator',0,'Custom Field','fields','DocType',24,'ignore_user_permissions','Ignore User Permissions',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:doc.fieldtype===\"Link\"',0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('e0eb6e33d0','2017-01-27 15:43:33.780808','2017-09-01 21:59:56.777309','Administrator','Administrator',0,'Feedback Request','fields','DocType',1,'is_sent','Is Sent',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('e1d096918d','2014-04-17 16:53:52.640856','2017-09-01 21:59:58.766477','Administrator','Administrator',0,'System Settings','fields','DocType',19,'ignore_user_permissions_if_missing','Ignore User Permissions If Missing',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'If Apply User Permissions is checked for Report DocType but no User Permissions are defined for Report for a User, then all Reports are shown to that User',0,0,0,'',0,0,0,0,0,0),('e1d809bd59','2014-09-11 12:04:34.163728','2017-09-01 22:00:02.520524','Administrator','Administrator',0,'Email Account','fields','DocType',18,'email_sync_option','Email Sync Option',NULL,'Select',NULL,'ALL\nUNSEEN',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval: doc.enable_incoming',0,0,NULL,NULL,0,'UNSEEN',NULL,0,0,0,'',0,0,0,0,0,0),('e212ae4886','2017-01-27 15:43:33.780808','2017-09-01 21:59:56.777309','Administrator','Administrator',0,'Feedback Request','fields','DocType',13,'feedback_rating','Feedback Rating',NULL,'HTML',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('e26e56a941','2013-06-10 13:17:47.000000','2017-09-01 22:00:05.629704','Administrator','Administrator',0,'Event','fields','DocType',13,'section_break_13',NULL,NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'repeat_this_event',0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('e2a547110d','2017-01-13 04:55:18.835023','2017-09-01 21:59:55.765451','Administrator','Administrator',0,'Dynamic Link','fields','DocType',2,'link_name','Link Name',NULL,'Dynamic Link',NULL,'link_doctype',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('e3151cd550','2016-09-20 03:44:03.799402','2017-09-01 22:00:07.103022','Administrator','Administrator',0,'Razorpay Settings','fields','DocType',2,'api_secret','API Secret',NULL,'Password',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('e31a7571be','2013-01-23 19:54:43.000000','2017-09-01 22:00:07.979522','Administrator','Administrator',0,'Print Format','fields','DocType',14,'column_break_11',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('e4235c0beb','2013-03-25 16:00:51.000000','2017-09-01 21:59:59.800038','Administrator','Administrator',0,'Blogger','fields','DocType',2,'short_name','Short Name',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Will be used in url (usually first name).',0,0,0,NULL,0,0,0,0,0,0),('e4c4c5aa73','2013-01-10 16:34:01.000000','2017-09-01 21:59:53.056685','Administrator','Administrator',0,'Custom Field','fields','DocType',11,'section_break_11',NULL,NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('e4dddabf0c','2014-06-19 05:20:26.331041','2017-09-01 22:00:03.503215','Administrator','Administrator',0,'Standard Reply','fields','DocType',1,'subject','Subject',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('e51ca4e825','2017-03-09 17:18:29.458397','2017-09-01 22:00:07.672985','Administrator','Administrator',0,'Stripe Settings','fields','DocType',2,'secret_key','Secret Key',NULL,'Password',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('e53a243766','2013-01-10 16:34:01.000000','2017-09-01 22:00:04.517892','Administrator','Administrator',0,'Custom Script','fields','DocType',4,'sample','Sample',NULL,'HTML',NULL,'<h3>Custom Script Help</h3>\n<p>Custom Scripts are executed only on the client-side (i.e. in Forms). Here are some examples to get you started</p>\n<pre><code>\n\n// fetch local_tax_no on selection of customer\n// cur_frm.add_fetch(link_field, source_fieldname, target_fieldname);\ncur_frm.add_fetch(\"customer\", \"local_tax_no\", \"local_tax_no\");\n\n// additional validation on dates\nfrappe.ui.form.on(\"Task\", \"validate\", function(frm) {\n    if (frm.doc.from_date &lt; get_today()) {\n        msgprint(\"You can not select past date in From Date\");\n        validated = false;\n    }\n});\n\n// make a field read-only after saving\nfrappe.ui.form.on(\"Task\", {\n    refresh: function(frm) {\n        // use the __islocal value of doc, to check if the doc is saved or not\n        frm.set_df_property(\"myfield\", \"read_only\", frm.doc.__islocal ? 0 : 1);\n    }\n});\n\n// additional permission check\nfrappe.ui.form.on(\"Task\", {\n    validate: function(frm) {\n        if(user==\"user1@example.com\" &amp;&amp; frm.doc.purpose!=\"Material Receipt\") {\n            msgprint(\"You are only allowed Material Receipt\");\n            validated = false;\n        }\n    }\n});\n\n// calculate sales incentive\nfrappe.ui.form.on(\"Sales Invoice\", {\n    validate: function(frm) {\n        // calculate incentives for each person on the deal\n        total_incentive = 0\n        $.each(frm.doc.sales_team), function(i, d) {\n\n            // calculate incentive\n            var incentive_percent = 2;\n            if(frm.doc.base_grand_total &gt; 400) incentive_percent = 4;\n\n            // actual incentive\n            d.incentives = flt(frm.doc.base_grand_total) * incentive_percent / 100;\n            total_incentive += flt(d.incentives)\n        });\n\n        frm.doc.total_incentive = total_incentive;\n    }\n})\n\n</code>\n</pre>',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('e58c33db27','2013-02-22 01:27:32.000000','2017-09-01 22:00:04.800729','Administrator','Administrator',0,'Customize Form Field','fields','DocType',9,'in_global_search','In Global Search',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:([\"Data\", \"Select\", \"Table\", \"Text\", \"Text Editor\", \"Link\", \"Small Text\", \"Long Text\", \"Read Only\", \"Heading\", \"Dynamic Link\"].indexOf(doc.fieldtype) !== -1)',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('e674904ca0','2013-02-22 01:27:32.000000','2017-09-01 22:00:04.800729','Administrator','Administrator',0,'Customize Form Field','fields','DocType',18,'hidden','Hidden','hidden','Check','Check',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'50px','50px',0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('e70b4b51e5','2013-01-29 17:55:08.000000','2017-09-01 22:00:04.634582','Administrator','Administrator',0,'Customize Form','fields','DocType',20,'fields_section_break','Fields',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'doc_type',0,0,NULL,NULL,0,NULL,'Customize Label, Print Hide, Default etc.',0,0,0,NULL,0,0,0,0,0,0),('e70bafa43c','2013-03-07 12:26:33.000000','2017-09-01 22:00:00.101366','Administrator','Administrator',0,'Website Slideshow Item','fields','DocType',2,'heading','Heading',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'200px','200px',0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('e7782af164','2014-03-11 14:55:00.000000','2017-09-01 21:59:52.429552','Administrator','Administrator',0,'User','fields','DocType',21,'phone','Phone',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('e794e716ca','2013-02-22 01:27:33.000000','2017-09-01 21:59:50.986087','Administrator','Administrator',0,'DocPerm','fields','DocType',19,'export','Export',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'1',NULL,0,0,0,NULL,0,0,0,0,0,0),('e7a8485b09','2014-10-30 14:23:30.958074','2017-09-01 22:00:00.187162','Administrator','Administrator',0,'Help Category','fields','DocType',2,'category_description','Category Description',NULL,'Text',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('e83d14b09e','2014-02-20 17:22:37.000000','2017-09-01 21:59:57.172499','Administrator','Administrator',0,'Version','fields','DocType',3,'docname','Document Name',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('e8dac8a6e7','2014-09-01 14:14:14.292173','2017-09-01 21:59:53.897718','Administrator','Administrator',0,'Web Form Field','fields','DocType',4,'reqd','Mandatory',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('e8fb96921e','2012-12-28 10:49:55.000000','2017-09-01 22:00:02.091249','Administrator','Administrator',0,'Workflow','fields','DocType',7,'transition_rules','Transition Rules',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Rules for how states are transitions, like next state and which role is allowed to change state etc.',0,0,0,NULL,0,0,0,0,0,0),('e936b0ace1','2017-04-24 09:53:41.813982','2017-09-01 22:00:07.375584','Administrator','Administrator',0,'GSuite Templates','fields','DocType',4,'document_name','Document Name',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'New Document for {name} ',NULL,0,0,0,'',0,0,0,0,0,0),('e94174cfb3','2013-03-07 11:55:11.000000','2017-09-01 22:00:00.580752','Administrator','Administrator',0,'About Us Team Member','fields','DocType',1,'full_name','Full Name',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'150px',NULL,0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('e94862151f','2013-02-22 01:27:33.000000','2017-09-01 21:59:50.986087','Administrator','Administrator',0,'DocPerm','fields','DocType',3,'apply_user_permissions','Apply User Permissions',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Filter records based on User Permissions defined for a user',0,0,0,NULL,0,0,0,0,0,0),('e95dd897fc','2013-01-10 16:34:32.000000','2017-09-01 22:00:08.226056','Administrator','Administrator',0,'Contact','fields','DocType',13,'contact_details','Reference',NULL,'Section Break',NULL,'fa fa-pushpin',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('e975f7328a','2015-02-04 04:33:36.330477','2017-09-01 21:59:55.605388','Administrator','Administrator',0,'DocShare','fields','DocType',7,'everyone','Everyone',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('e9897717e4','2013-02-18 13:36:19.000000','2017-09-01 21:59:51.696379','Administrator','Administrator',0,'DocType','fields','DocType',21,'title_field','Title Field',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:!doc.istable',0,0,NULL,NULL,0,NULL,'',0,0,0,NULL,0,0,0,0,0,0),('e9a68beda2','2013-01-10 16:34:32.000000','2017-09-01 22:00:08.571416','Administrator','Administrator',0,'Address','fields','DocType',10,'pincode','Postal Code',NULL,'Data',NULL,NULL,1,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('ea4184e335','2012-11-22 17:45:46.000000','2017-09-01 22:00:07.822928','Administrator','Administrator',0,'Letter Head','fields','DocType',1,'letter_head_name','Letter Head Name','letter_head_name','Data','Data',NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('ea660a0c04','2017-01-11 04:21:35.217943','2017-09-01 21:59:54.801850','Administrator','Administrator',0,'Custom DocPerm','fields','DocType',1,'role_and_level','Role and Level',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('ea7b54aace','2014-04-17 16:53:52.640856','2017-09-01 21:59:58.766477','Administrator','Administrator',0,'System Settings','fields','DocType',3,'language','Language',NULL,'Link',NULL,'Language',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('eab9b35324','2013-02-22 01:27:33.000000','2017-09-01 21:59:50.367790','Administrator','Administrator',0,'DocField','fields','DocType',1,'label_and_type','',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('eabfa25f63','2014-03-11 14:55:00.000000','2017-09-01 21:59:52.429552','Administrator','Administrator',0,'User','fields','DocType',23,'birth_date','Birth Date','birth_date','Date','Date',NULL,0,0,0,0,0,0,0,0,0,0,1,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('eb38ffd6bf','2015-02-18 12:46:38.168929','2017-09-01 21:59:59.903705','Administrator','Administrator',0,'Website Theme','fields','DocType',20,'section_break_4','Background',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,'apply_style',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('eb6bc52584','2014-03-11 14:55:00.000000','2017-09-01 21:59:52.429552','Administrator','Administrator',0,'User','fields','DocType',7,'last_name','Last Name','last_name','Data','Data',NULL,0,0,0,0,0,0,1,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('eb7b3756c6','2013-01-10 16:34:32.000000','2017-09-01 22:00:08.226056','Administrator','Administrator',0,'Contact','fields','DocType',19,'column_break_17',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('eb85d2ec52','2017-02-13 17:33:25.157332','2017-09-01 21:59:54.729999','Administrator','Administrator',0,'Role Permission for Page and Report','fields','DocType',5,'roles_html','Roles Html',NULL,'HTML',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('eb94d7952e','2013-03-28 10:35:30.000000','2017-09-01 22:00:00.324049','Administrator','Administrator',0,'Web Page','fields','DocType',13,'custom_css','Style',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('ebe654d416','2017-01-23 16:56:25.875531','2017-09-01 21:59:56.487193','Administrator','Administrator',0,'Authentication Log','fields','DocType',2,'user','User',NULL,'Data',NULL,'',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('ec056ca092','2017-09-01 15:19:44.113804','2017-09-01 15:33:38.607038','Administrator','Administrator',0,'Medicamentos','fields','DocType',7,'fin','Fin',NULL,'Date',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,2,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('ec16d4fc2f','2013-02-21 20:12:42.000000','2017-09-01 22:00:01.610316','Administrator','Administrator',0,'Contact Us Settings','fields','DocType',10,'city','City',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('ec702f49a3','2014-09-11 12:04:34.163728','2017-09-01 22:00:02.520524','Administrator','Administrator',0,'Email Account','fields','DocType',14,'use_ssl','Use SSL',NULL,'Check',NULL,'domain.use_ssl',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:!doc.domain && doc.enable_incoming',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('ec924a902f','2014-07-11 17:19:37.037109','2017-09-01 22:00:03.693814','Administrator','Administrator',0,'Email Alert Recipient','fields','DocType',1,'email_by_document_field','Email By Document Field',NULL,'Select',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'',1,0,0,NULL,0,0,0,0,0,0),('ecb15ac6d1','2017-04-21 16:57:30.264478','2017-09-01 22:00:07.448430','Administrator','Administrator',0,'GSuite Settings','fields','DocType',5,'allow_gsuite_access','Allow GSuite access',NULL,'Button',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:(doc.client_secret && doc.client_id)',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('ecc66f405e','2016-09-01 01:34:34.985457','2017-09-01 22:00:03.756563','Administrator','Administrator',0,'Auto Email Report','fields','DocType',18,'frequency','Frequency',NULL,'Select',NULL,'Daily\nWeekly\nMonthly',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,1,0,'',0,0,0,0,0,0),('ecd351efde','2017-01-11 04:21:35.217943','2017-09-01 21:59:54.801850','Administrator','Administrator',0,'Custom DocPerm','fields','DocType',4,'if_owner','If user is the owner',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'Apply this rule if the User is the Owner',0,0,0,'',0,0,0,0,0,0),('ecdddcd7e6','2017-09-01 13:29:30.289032','2017-09-01 19:20:24.367341','Administrator','Administrator',0,'Paciente','fields','DocType',25,'telefonos','Telefonos',NULL,'Table',NULL,'Telefonos',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('ecf4d6253d','2013-05-24 13:41:00.000000','2017-09-01 22:00:05.180965','Administrator','Administrator',0,'Note','fields','DocType',8,'seen_by','Seen By Table',NULL,'Table',NULL,'Note Seen By',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('ed06906690','2014-10-30 14:25:53.780105','2017-09-01 22:00:01.066008','Administrator','Administrator',0,'Help Article','fields','DocType',6,'level','Level',NULL,'Select',NULL,'Beginner\nIntermediate\nExpert',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('ed3a0dbab2','2014-07-17 06:54:20.782907','2017-09-01 22:00:07.719476','Administrator','Administrator',0,'Print Settings','fields','DocType',4,'column_break_4',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('ed3c534254','2014-09-01 14:14:14.292173','2017-09-01 21:59:53.897718','Administrator','Administrator',0,'Web Form Field','fields','DocType',13,'column_break_8',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('ed5b387956','2013-03-09 15:45:57.000000','2017-09-01 21:59:57.830003','Administrator','Administrator',0,'Report','fields','DocType',14,'json','JSON',NULL,'Code',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:doc.report_type==\"Report Builder\"',0,0,NULL,NULL,0,NULL,NULL,0,0,1,NULL,0,0,0,0,0,0),('ed863985fd','2016-09-21 10:12:57.399174','2017-09-01 22:00:06.300633','Administrator','Administrator',0,'Dropbox Settings','fields','DocType',7,'dropbox_access_key','Dropbox Access Key',NULL,'Password',NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('ed9938121c','2017-01-11 04:21:35.217943','2017-09-01 21:59:54.801850','Administrator','Administrator',0,'Custom DocPerm','fields','DocType',8,'section_break_4','Permissions',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('edc82ede53','2013-01-10 16:34:31.000000','2017-09-01 22:00:03.015516','Administrator','Administrator',0,'Newsletter','fields','DocType',8,'send_unsubscribe_link','Send Unsubscribe Link',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'1',NULL,0,0,0,'',0,0,0,0,0,0),('eddee1546f','2013-03-28 10:35:30.000000','2017-09-01 22:00:00.324049','Administrator','Administrator',0,'Web Page','fields','DocType',8,'sb1','Content',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'',0,0,0,NULL,0,0,0,0,0,0),('edefcb44eb','2017-02-13 17:33:25.157332','2017-09-01 21:59:55.882960','Administrator','Administrator',0,'User Permission for Page and Report','fields','DocType',1,'set_role_for','Set Role For',NULL,'Select',NULL,'\nPage\nReport',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('eef6e93888','2013-02-18 13:36:19.000000','2017-09-01 21:59:51.696379','Administrator','Administrator',0,'DocType','fields','DocType',31,'hide_heading','Hide Heading','hide_heading','Check','Check',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('eefa7a6456','2015-02-18 12:46:38.168929','2017-09-01 21:59:59.903705','Administrator','Administrator',0,'Website Theme','fields','DocType',25,'css','Style using CSS',NULL,'Code',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'apply_style',0,0,NULL,NULL,0,NULL,'',0,0,0,'',0,0,0,0,0,0),('ef2314d701','2016-08-24 14:07:21.955052','2017-09-01 22:00:07.188251','Administrator','Administrator',0,'OAuth Client','fields','DocType',2,'app_name','App Name',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('ef2896796f','2014-03-11 14:55:00.000000','2017-09-01 21:59:52.429552','Administrator','Administrator',0,'User','fields','DocType',1,'sb0_5','',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('ef3ef45b37','2014-07-17 06:54:20.782907','2017-09-01 22:00:07.719476','Administrator','Administrator',0,'Print Settings','fields','DocType',9,'print_style','Print Style',NULL,'Select',NULL,'Modern\nClassic\nStandard\nMonochrome',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'Modern',NULL,1,0,0,NULL,0,0,0,0,0,0),('ef3f276010','2013-01-10 16:34:31.000000','2017-09-01 22:00:03.015516','Administrator','Administrator',0,'Newsletter','fields','DocType',13,'scheduled_to_send','Scheduled To Send',NULL,'Int',NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('ef4781cd78','2013-02-22 01:27:33.000000','2017-09-01 21:59:50.986087','Administrator','Administrator',0,'DocPerm','fields','DocType',17,'additional_permissions','Additional Permissions',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('ef95a4c104','2016-10-19 12:26:04.809812','2017-09-01 22:00:05.535117','Administrator','Administrator',0,'Kanban Board','fields','DocType',6,'filters','Filters',NULL,'Text',NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('ef997a5058','2014-04-17 16:53:52.640856','2017-09-01 21:59:58.766477','Administrator','Administrator',0,'System Settings','fields','DocType',5,'time_zone','Time Zone',NULL,'Select',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('efb2f77516','2015-02-18 12:46:38.168929','2017-09-01 21:59:59.903705','Administrator','Administrator',0,'Website Theme','fields','DocType',10,'text_webfont','Google Font (Text)',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'apply_text_styles',0,0,NULL,NULL,0,NULL,'Add the name of a \"Google Web Font\" e.g. \"Open Sans\"',0,0,0,'',0,0,0,0,0,0),('f00479a116','2013-01-19 10:23:30.000000','2017-09-01 22:00:05.106860','Administrator','Administrator',0,'Country','fields','DocType',4,'code','Code',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('f0170ba01c','2013-01-29 10:47:14.000000','2017-09-01 21:59:55.016873','Administrator','Administrator',0,'Communication','fields','DocType',35,'timeline_name','Timeline Name',NULL,'Dynamic Link',NULL,'timeline_doctype',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('f02f798a7a','2016-02-22 03:47:45.387068','2017-09-01 22:00:05.878431','Administrator','Administrator',0,'Desktop Icon','fields','DocType',3,'standard','Standard',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('f049603672','2014-07-11 17:18:09.923399','2017-09-01 22:00:03.128353','Administrator','Administrator',0,'Email Alert','fields','DocType',23,'message','Message',NULL,'Code',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:!doc.is_standard',0,0,NULL,NULL,0,'Add your message here',NULL,0,0,0,NULL,0,0,1,0,0,0),('f0f0b7abfb','2017-09-01 13:29:30.289032','2017-09-01 19:20:24.367341','Administrator','Administrator',0,'Paciente','fields','DocType',14,'correo_electronico','Correo Electronico',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('f14a9da4c0','2017-02-13 17:33:25.157332','2017-09-01 21:59:55.882960','Administrator','Administrator',0,'User Permission for Page and Report','fields','DocType',5,'roles_html','Roles Html',NULL,'HTML',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('f158e56725','2017-01-23 16:56:25.875531','2017-09-01 21:59:56.487193','Administrator','Administrator',0,'Authentication Log','fields','DocType',7,'subject','Subject',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('f16b0464c0','2013-03-07 12:26:33.000000','2017-09-01 22:00:00.101366','Administrator','Administrator',0,'Website Slideshow Item','fields','DocType',3,'description','Description',NULL,'Text',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'200px','200px',0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('f177ec7e80','2014-09-01 14:14:14.292173','2017-09-01 21:59:53.897718','Administrator','Administrator',0,'Web Form Field','fields','DocType',14,'default','Default',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('f178160aa1','2013-02-18 13:36:19.000000','2017-09-01 21:59:51.696379','Administrator','Administrator',0,'DocType','fields','DocType',45,'list_view_settings','List View Settings',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('f19a4ab180','2013-03-28 10:35:30.000000','2017-09-01 22:00:00.894557','Administrator','Administrator',0,'Blog Post','fields','DocType',3,'published','Published',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('f1c330cca4','2013-01-16 13:09:40.000000','2017-09-01 21:59:58.530871','Administrator','Administrator',0,'Error Log','fields','DocType',1,'seen','Seen',NULL,'Check',NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'0',NULL,0,0,0,'',0,0,0,0,0,0),('f1d3cdab76','2014-04-17 16:53:52.640856','2017-09-01 21:59:58.766477','Administrator','Administrator',0,'System Settings','fields','DocType',30,'email','EMail',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('f1e8661534','2015-02-18 12:46:38.168929','2017-09-01 21:59:59.903705','Administrator','Administrator',0,'Website Theme','fields','DocType',24,'section_break_21',NULL,NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('f203d1a36a','2014-06-05 02:22:36.029850','2017-09-01 22:00:08.144706','Administrator','Administrator',0,'Address Template','fields','DocType',3,'template','Template',NULL,'Code',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'','<h4>Default Template</h4>\n<p>Uses <a href=\"http://jinja.pocoo.org/docs/templates/\">Jinja Templating</a> and all the fields of Address (including Custom Fields if any) will be available</p>\n<pre><code>{{ address_line1 }}&lt;br&gt;\n{% if address_line2 %}{{ address_line2 }}&lt;br&gt;{% endif -%}\n{{ city }}&lt;br&gt;\n{% if state %}{{ state }}&lt;br&gt;{% endif -%}\n{% if pincode %} PIN:  {{ pincode }}&lt;br&gt;{% endif -%}\n{{ country }}&lt;br&gt;\n{% if phone %}Phone: {{ phone }}&lt;br&gt;{% endif -%}\n{% if fax %}Fax: {{ fax }}&lt;br&gt;{% endif -%}\n{% if email_id %}Email: {{ email_id }}&lt;br&gt;{% endif -%}\n</code></pre>',0,0,0,NULL,0,0,0,0,0,0),('f22817a8e2','2014-09-01 14:08:48.624556','2017-09-01 21:59:53.572628','Administrator','Administrator',0,'Web Form','fields','DocType',29,'payment_button_label','Button Label',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'accept_payment',0,0,NULL,NULL,0,'Buy Now',NULL,0,0,0,'',0,0,0,0,0,0),('f25f24387a','2013-02-18 13:36:19.000000','2017-09-01 21:59:51.696379','Administrator','Administrator',0,'DocType','fields','DocType',24,'timeline_field','Timeline Field',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:!doc.istable',0,0,NULL,NULL,0,NULL,'Comments and Communications will be associated with this linked document',0,0,0,'',0,0,0,0,0,0),('f2886adac4','2013-01-10 16:34:32.000000','2017-09-01 22:00:08.571416','Administrator','Administrator',0,'Address','fields','DocType',13,'phone','Phone',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('f29b960c40','2013-01-29 10:47:14.000000','2017-09-01 21:59:55.016873','Administrator','Administrator',0,'Communication','fields','DocType',33,'link_name','Link Name',NULL,'Dynamic Link',NULL,'link_doctype',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('f2ce1af9ee','2013-01-08 15:50:01.000000','2017-09-01 21:59:52.924422','Administrator','Administrator',0,'Role','fields','DocType',2,'disabled','Disabled',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'If disabled, this role will be removed from all users.',0,0,0,'',0,0,0,0,0,0),('f30a586102','2013-02-22 01:27:33.000000','2017-09-01 21:59:50.367790','Administrator','Administrator',0,'DocField','fields','DocType',38,'width','Width','width','Data','Data',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'50px','50px',0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('f3524c5030','2016-10-19 12:26:04.809812','2017-09-01 22:00:05.535117','Administrator','Administrator',0,'Kanban Board','fields','DocType',5,'columns','Columns',NULL,'Table',NULL,'Kanban Board Column',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('f3d5cb67c5','2013-04-30 12:58:46.000000','2017-09-01 22:00:00.764927','Administrator','Administrator',0,'Website Settings','fields','DocType',7,'website_theme_image','Website Theme Image',NULL,'Image',NULL,'website_theme_image_link',0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('f3d79d8c87','2013-02-22 01:27:32.000000','2017-09-01 22:00:04.800729','Administrator','Administrator',0,'Customize Form Field','fields','DocType',34,'print_hide_if_no_value','Print Hide If No Value',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:[\"Int\", \"Float\", \"Currency\", \"Percent\"].indexOf(doc.fieldtype)!==-1',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('f4061dbf39','2013-01-10 16:34:31.000000','2017-09-01 22:00:03.015516','Administrator','Administrator',0,'Newsletter','fields','DocType',2,'email_group','Email Group',NULL,'Table',NULL,'Newsletter Email Group',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,1,0,'',0,0,0,0,0,0),('f410b235bd','2016-02-22 03:47:45.387068','2017-09-01 22:00:05.878431','Administrator','Administrator',0,'Desktop Icon','fields','DocType',16,'color','Color',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('f415b7317e','2014-03-04 08:29:52.000000','2017-09-01 22:00:06.216644','Administrator','Administrator',0,'Social Login Keys','fields','DocType',7,'github','GitHub',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('f424983713','2014-06-19 05:20:26.331041','2017-09-01 22:00:03.503215','Administrator','Administrator',0,'Standard Reply','fields','DocType',3,'owner','Owner',NULL,'Link',NULL,'User',0,1,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'user',NULL,0,0,0,NULL,0,0,0,0,0,0),('f440d0da5f','2013-01-10 16:34:04.000000','2017-09-01 21:59:53.403426','Administrator','Administrator',0,'Property Setter','fields','DocType',9,'property_type','Property Type',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('f441901f05','2013-03-07 15:53:15.000000','2017-09-01 22:00:01.366493','Administrator','Administrator',0,'Website Slideshow','fields','DocType',1,'slideshow_name','Slideshow Name',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('f47b8fafd5','2015-02-18 12:46:38.168929','2017-09-01 21:59:59.903705','Administrator','Administrator',0,'Website Theme','fields','DocType',3,'apply_style','Apply Style',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'1','',0,0,0,'',0,0,0,0,0,0),('f49f8aff36','2013-02-22 01:27:32.000000','2017-09-01 22:00:04.800729','Administrator','Administrator',0,'Customize Form Field','fields','DocType',6,'unique','Unique',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('f4d88c7b55','2015-02-18 12:46:38.168929','2017-09-01 21:59:59.903705','Administrator','Administrator',0,'Website Theme','fields','DocType',16,'top_bar_color','Top Bar Color',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'apply_text_styles',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('f4ed0247a5','2015-11-28 00:57:39.766888','2017-09-01 21:59:58.381641','Administrator','Administrator',0,'Error Snapshot','fields','DocType',1,'view','Snapshot View',NULL,'HTML',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('f5025f6e74','2016-09-21 08:03:01.009852','2017-09-01 22:00:07.143640','Administrator','Administrator',0,'PayPal Settings','fields','DocType',3,'signature','Signature',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('f5c5b04e87','2013-02-22 01:27:33.000000','2017-09-01 21:59:50.367790','Administrator','Administrator',0,'DocField','fields','DocType',5,'reqd','Mandatory','reqd','Check','Check',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'50px','50px',0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('f5ec4abd43','2013-01-10 16:34:01.000000','2017-09-01 21:59:53.056685','Administrator','Administrator',0,'Custom Field','fields','DocType',9,'options','Options','options','Text','Text',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('f65d59436b','2016-09-21 10:12:57.399174','2017-09-01 22:00:06.300633','Administrator','Administrator',0,'Dropbox Settings','fields','DocType',3,'backup_frequency','Backup Frequency',NULL,'Select',NULL,'\nDaily\nWeekly',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('f7a71f4975','2014-07-17 06:54:20.782907','2017-09-01 22:00:07.719476','Administrator','Administrator',0,'Print Settings','fields','DocType',18,'section_break_8',NULL,NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('f7d430f9ee','2017-09-01 13:29:30.289032','2017-09-01 19:20:24.367341','Administrator','Administrator',0,'Paciente','fields','DocType',3,'apellido_paterno','Apellido Paterno',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('f83492c75b','2016-03-30 01:40:20.001775','2017-09-01 22:00:01.167977','Administrator','Administrator',0,'Portal Settings','fields','DocType',2,'standard_menu_items','Standard Sidebar Menu',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('f8488d6349','2013-02-22 01:27:33.000000','2017-09-01 21:59:50.986087','Administrator','Administrator',0,'DocPerm','fields','DocType',2,'role','Role','role','Link','Link','Role',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'150px','150px',0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('f869dbccb0','2016-04-12 18:40:16.315024','2017-09-01 22:00:01.300069','Administrator','Administrator',0,'Footer Item','fields','DocType',1,'label','Label',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'120px','120px',0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('f8b24a205b','2014-07-11 17:18:09.923399','2017-09-01 22:00:03.128353','Administrator','Administrator',0,'Email Alert','fields','DocType',4,'document_type','Document Type',NULL,'Link',NULL,'DocType',1,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,1,0,NULL,0,0,0,0,0,0),('f91456d0fd','2017-01-11 04:21:35.217943','2017-09-01 21:59:54.801850','Administrator','Administrator',0,'Custom DocPerm','fields','DocType',15,'cancel','Cancel','cancel','Check','Check',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'32px','32px',0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('f93638f2af','2013-02-18 13:36:19.000000','2017-09-01 21:59:51.696379','Administrator','Administrator',0,'DocType','fields','DocType',44,'default_print_format','Default Print Format',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('f96d1ed4e4','2013-03-07 15:53:15.000000','2017-09-01 22:00:01.366493','Administrator','Administrator',0,'Website Slideshow','fields','DocType',4,'header','Header',NULL,'Text Editor',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:!doc.__islocal',0,0,NULL,NULL,0,NULL,'This goes above the slideshow.',0,0,0,NULL,0,0,0,0,0,0),('f97ea7400a','2014-09-01 14:14:14.292173','2017-09-01 21:59:53.897718','Administrator','Administrator',0,'Web Form Field','fields','DocType',6,'hidden','Hidden',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('f988225714','2012-11-22 17:45:46.000000','2017-09-01 22:00:07.822928','Administrator','Administrator',0,'Letter Head','fields','DocType',2,'disabled','Disabled','disabled','Check','Check',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'letter_head_name',0,0,NULL,NULL,0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('f9ef9c2452','2013-06-10 13:17:47.000000','2017-09-01 22:00:05.629704','Administrator','Administrator',0,'Event','fields','DocType',28,'ref_type','Ref Type','ref_type','Link','Data','DocType',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('fa1207a54e','2016-03-30 01:40:20.001775','2017-09-01 22:00:01.167977','Administrator','Administrator',0,'Portal Settings','fields','DocType',1,'default_role','Default Role at Time of Signup',NULL,'Link',NULL,'Role',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('fae971f2a9','2016-03-29 10:50:48.848239','2017-09-01 22:00:03.612963','Administrator','Administrator',0,'Email Domain','fields','DocType',7,'use_ssl','Use SSL',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('faef41415a','2015-02-04 04:33:36.330477','2017-09-01 21:59:55.605388','Administrator','Administrator',0,'DocShare','fields','DocType',2,'share_doctype','Document Type',NULL,'Link',NULL,'DocType',1,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('fb2c591519','2014-07-11 17:18:09.923399','2017-09-01 22:00:03.128353','Administrator','Administrator',0,'Email Alert','fields','DocType',26,'view_properties','View Properties (via Customize Form)',NULL,'Button',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('fb504ec864','2017-01-23 16:56:25.875531','2017-09-01 21:59:56.487193','Administrator','Administrator',0,'Authentication Log','fields','DocType',8,'column_break_2',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('fb78445ed5','2014-07-17 06:54:20.782907','2017-09-01 22:00:07.719476','Administrator','Administrator',0,'Print Settings','fields','DocType',19,'print_style_preview','Print Style Preview',NULL,'HTML',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('fbea572870','2013-04-30 12:58:46.000000','2017-09-01 22:00:00.764927','Administrator','Administrator',0,'Website Settings','fields','DocType',19,'copyright','Copyright',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('fc43d26983','2016-03-30 10:04:25.828742','2017-09-01 21:59:56.668986','Administrator','Administrator',0,'User Email','fields','DocType',5,'enable_outgoing','Enable Outgoing',NULL,'Check',NULL,'email_account.enable_outgoing',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('fc50744f19','2014-09-11 12:04:34.163728','2017-09-01 22:00:02.520524','Administrator','Administrator',0,'Email Account','fields','DocType',16,'append_to','Append To',NULL,'Link',NULL,'DocType',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'enable_incoming',0,0,NULL,NULL,0,'','Append as communication against this DocType (must have fields, \"Status\", \"Subject\")',0,1,0,'',0,0,0,0,0,0),('fc5cbc328a','2013-03-11 17:48:16.000000','2017-09-01 22:00:00.653637','Administrator','Administrator',0,'Blog Settings','fields','DocType',1,'blog_title','Blog Title',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('fc74cf1e11','2013-01-29 10:47:14.000000','2017-09-01 21:59:55.016873','Administrator','Administrator',0,'Communication','fields','DocType',47,'feedback_request','Feedback Request',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,1,'',0,0,0,0,0,0),('fc9e6a57fc','2013-04-30 12:58:46.000000','2017-09-01 22:00:00.764927','Administrator','Administrator',0,'Website Settings','fields','DocType',16,'banner','Banner',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'',0,0,0,NULL,0,0,0,0,0,0),('fcc8075435','2013-02-18 13:36:19.000000','2017-09-01 21:59:51.696379','Administrator','Administrator',0,'DocType','fields','DocType',49,'read_only','User Cannot Search','read_only','Check','Check',NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('fcccb74c23','2013-04-30 12:58:46.000000','2017-09-01 22:00:00.764927','Administrator','Administrator',0,'Website Settings','fields','DocType',1,'sb0','Landing Page',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('fd067c812d','2017-01-11 04:21:35.217943','2017-09-01 21:59:54.801850','Administrator','Administrator',0,'Custom DocPerm','fields','DocType',12,'delete','Delete',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'1',NULL,1,0,0,'',0,0,0,0,0,0),('fd129d16a8','2014-09-11 12:04:34.163728','2017-09-01 22:00:02.520524','Administrator','Administrator',0,'Email Account','fields','DocType',33,'add_signature','Add Signature',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('fd1ccc0a52','2013-03-11 17:48:16.000000','2017-09-01 22:00:00.653637','Administrator','Administrator',0,'Blog Settings','fields','DocType',3,'writers_introduction','Writers Introduction',NULL,'Small Text',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('fd33605d58','2013-02-18 13:36:19.000000','2017-09-01 21:59:51.696379','Administrator','Administrator',0,'DocType','fields','DocType',28,'icon','Icon',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('fd3a55e3d1','2013-01-28 10:06:02.000000','2017-09-01 22:00:05.001030','Administrator','Administrator',0,'Currency','fields','DocType',6,'symbol','Symbol',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'A symbol for this currency. For e.g. $',1,0,0,NULL,0,0,0,0,0,0),('fd4dad94e8','2016-08-24 14:07:21.955052','2017-09-01 22:00:07.188251','Administrator','Administrator',0,'OAuth Client','fields','DocType',11,'default_redirect_uri','Default Redirect URI',NULL,'Data',NULL,NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('fd6169bc59','2016-08-29 05:29:16.726172','2017-09-01 22:00:05.423983','Administrator','Administrator',0,'Note Seen By','fields','DocType',1,'user','User',NULL,'Link',NULL,'User',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('fd623cf253','2012-12-20 17:16:49.000000','2017-09-01 21:59:56.947669','Administrator','Administrator',0,'Page','fields','DocType',3,'page_name','Page Name','page_name','Data','Data',NULL,0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('fd62a9bd26','2017-09-01 13:29:30.289032','2017-09-01 19:20:24.367341','Administrator','Administrator',0,'Paciente','fields','DocType',10,'column_break_10',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('fd639446a4','2013-02-18 13:36:19.000000','2017-09-01 21:59:51.696379','Administrator','Administrator',0,'DocType','fields','DocType',47,'sort_order','Sort Order',NULL,'Select',NULL,'ASC\nDESC',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'eval:!doc.istable',0,0,NULL,NULL,0,'DESC',NULL,0,0,0,NULL,0,0,0,0,0,0),('fda3ad2cd7','2013-03-28 10:35:30.000000','2017-09-01 22:00:00.324049','Administrator','Administrator',0,'Web Page','fields','DocType',9,'main_section','Main Section',NULL,'Text Editor',NULL,NULL,0,0,0,0,0,0,0,1,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'',0,0,0,NULL,0,0,0,0,0,0),('fdb9c695d6','2014-03-11 14:55:00.000000','2017-09-01 21:59:52.429552','Administrator','Administrator',0,'User','fields','DocType',38,'background','Desktop Background',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,1,0,0,0,NULL,NULL,'enabled',0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('fdbfeec9f0','2014-04-17 16:53:52.640856','2017-09-01 21:59:58.766477','Administrator','Administrator',0,'System Settings','fields','DocType',32,'column_break_18',NULL,NULL,'Column Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('fdeab22aa6','2015-03-18 06:15:59.321619','2017-09-01 22:00:02.769685','Administrator','Administrator',0,'Email Group Member','fields','DocType',3,'unsubscribed','Unsubscribed',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('fe14e85418','2013-03-09 15:45:57.000000','2017-09-01 21:59:57.830003','Administrator','Administrator',0,'Report','fields','DocType',15,'permission_rules','',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('fe249c9736','2013-01-10 16:34:24.000000','2017-09-01 22:00:07.912117','Administrator','Administrator',0,'Print Heading','fields','DocType',1,'print_heading','Print Heading','print_heading','Data','Data',NULL,0,0,0,0,0,1,0,0,0,0,0,1,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,NULL,0,1,0,0,0,0),('fe3438e87e','2013-01-23 19:54:43.000000','2017-09-01 22:00:07.979522','Administrator','Administrator',0,'Print Format','fields','DocType',1,'doc_type','DocType',NULL,'Link',NULL,'DocType',0,0,0,0,0,1,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,'',1,1,0,NULL,0,1,0,0,0,0),('fea402f622','2012-12-20 17:16:49.000000','2017-09-01 21:59:56.947669','Administrator','Administrator',0,'Page','fields','DocType',4,'title','Title',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,1,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('feb86f27be','2013-02-22 01:27:36.000000','2017-09-01 22:00:02.249452','Administrator','Administrator',0,'Workflow Document State','fields','DocType',2,'doc_status','Doc Status',NULL,'Select',NULL,'0\n1\n2',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,'80px','80px',0,NULL,'0 - Draft; 1 - Submitted; 2 - Cancelled',1,0,0,NULL,0,0,0,0,0,0),('fecc565c13','2013-02-22 01:27:33.000000','2017-09-01 21:59:50.367790','Administrator','Administrator',0,'DocField','fields','DocType',12,'bold','Bold',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('fee0d9f6d2','2014-03-11 14:55:00.000000','2017-09-01 21:59:52.429552','Administrator','Administrator',0,'User','fields','DocType',16,'sb1','Roles',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'enabled',1,0,NULL,NULL,0,NULL,'',0,0,1,NULL,0,0,0,0,0,0),('fee8a4f351','2014-09-01 14:14:14.292173','2017-09-01 21:59:53.897718','Administrator','Administrator',0,'Web Form Field','fields','DocType',8,'options','Options',NULL,'Text',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,NULL,0,0,0,0,0,0),('ff4af7cb96','2014-10-30 14:25:53.780105','2017-09-01 22:00:01.066008','Administrator','Administrator',0,'Help Article','fields','DocType',5,'author','Author',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,'user_fullname',NULL,0,0,0,'',0,0,0,0,0,0),('ff82856276','2013-02-22 01:27:32.000000','2017-09-01 22:00:04.800729','Administrator','Administrator',0,'Customize Form Field','fields','DocType',7,'in_list_view','In List View',NULL,'Check',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0),('ff907542e9','2017-09-01 13:29:30.289032','2017-09-01 19:20:24.367341','Administrator','Administrator',0,'Paciente','fields','DocType',20,'dir_apartamento','Apartamento',NULL,'Data',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0),('ffa1f684d4','2017-02-26 16:20:52.654136','2017-09-01 22:00:02.862239','Administrator','Administrator',0,'Newsletter Email Group','fields','DocType',2,'total_subscribers','Total Subscribers',NULL,'Read Only',NULL,'email_group.total_subscribers',0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,1,0,0,'',0,0,0,0,0,0),('ffbcc7fbe9','2014-09-11 12:04:34.163728','2017-09-01 22:00:02.520524','Administrator','Administrator',0,'Email Account','fields','DocType',10,'mailbox_settings','',NULL,'Section Break',NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,0,0,0,'',0,0,0,0,0,0);
/*!40000 ALTER TABLE `tabDocField` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabDocPerm`
--

DROP TABLE IF EXISTS `tabDocPerm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabDocPerm` (
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT '0',
  `parent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT '0',
  `permlevel` int(11) DEFAULT '0',
  `role` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `match` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `read` int(1) NOT NULL DEFAULT '1',
  `write` int(1) NOT NULL DEFAULT '1',
  `create` int(1) NOT NULL DEFAULT '1',
  `submit` int(1) NOT NULL DEFAULT '0',
  `cancel` int(1) NOT NULL DEFAULT '0',
  `delete` int(1) NOT NULL DEFAULT '1',
  `amend` int(1) NOT NULL DEFAULT '0',
  `report` int(1) NOT NULL DEFAULT '1',
  `export` int(1) NOT NULL DEFAULT '1',
  `import` int(1) NOT NULL DEFAULT '0',
  `share` int(1) NOT NULL DEFAULT '1',
  `print` int(1) NOT NULL DEFAULT '1',
  `email` int(1) NOT NULL DEFAULT '1',
  `user_permission_doctypes` longtext COLLATE utf8mb4_unicode_ci,
  `apply_user_permissions` int(1) NOT NULL DEFAULT '0',
  `set_user_permissions` int(1) NOT NULL DEFAULT '0',
  `if_owner` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabDocPerm`
--

LOCK TABLES `tabDocPerm` WRITE;
/*!40000 ALTER TABLE `tabDocPerm` DISABLE KEYS */;
INSERT INTO `tabDocPerm` VALUES ('04262c071b','2013-01-28 10:06:02.000000','2017-09-01 22:00:05.001030','Administrator','Administrator',0,'Currency','permissions','DocType',4,0,'Purchase User',NULL,1,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0),('0605f7aca3','2017-03-13 09:20:56.387135','2017-09-01 22:00:03.413737','Administrator','Administrator',0,'Email Rule','permissions','DocType',1,0,'System Manager',NULL,1,0,0,0,0,0,0,1,1,0,1,1,1,NULL,0,0,0),('07fe432254','2017-04-10 12:11:36.526508','2017-09-01 22:00:08.511897','Administrator','Administrator',0,'Gender','permissions','DocType',2,0,'All',NULL,1,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0),('0a123187c9','2017-09-01 15:56:17.943779','2017-09-01 16:25:52.923943','Administrator','Administrator',0,'Empresa','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,1,0,1,1,0,1,1,1,NULL,0,0,0),('0a1cda41a0','2016-09-20 03:44:03.799402','2017-09-01 22:00:07.103022','Administrator','Administrator',0,'Razorpay Settings','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,1,0,0,1,0,1,1,1,NULL,0,0,0),('0ac2d8f58b','2015-02-04 04:33:36.330477','2017-09-01 21:59:55.605388','Administrator','Administrator',0,'DocShare','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,1,0,1,1,1,1,0,0,NULL,0,0,0),('0b43f8f6e5','2012-12-28 10:49:55.000000','2017-09-01 22:00:02.091249','Administrator','Administrator',0,'Workflow','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,1,0,0,0,0,1,1,1,NULL,0,0,0),('0ba496b6c0','2015-03-18 06:08:32.729800','2017-09-01 22:00:02.448883','Administrator','Administrator',0,'Email Group','permissions','DocType',1,0,'Newsletter Manager',NULL,1,1,1,0,0,1,0,1,1,1,1,1,1,NULL,0,0,0),('0fd67bb47c','2017-04-24 09:53:41.813982','2017-09-01 22:00:07.375584','Administrator','Administrator',0,'GSuite Templates','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,1,0,1,1,0,1,1,1,NULL,0,0,0),('12d02cfd49','2014-07-11 17:18:09.923399','2017-09-01 22:00:03.128353','Administrator','Administrator',0,'Email Alert','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,1,0,1,1,0,1,0,0,NULL,0,0,0),('1319ae3f8a','2013-01-28 10:06:02.000000','2017-09-01 22:00:05.001030','Administrator','Administrator',0,'Currency','permissions','DocType',2,0,'Accounts User',NULL,1,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0),('190683afb9','2014-06-05 02:22:36.029850','2017-09-01 22:00:08.144706','Administrator','Administrator',0,'Address Template','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,1,0,1,1,0,1,0,0,NULL,0,1,0),('19f44180f1','2013-01-10 16:34:32.000000','2017-09-01 22:00:08.226056','Administrator','Administrator',0,'Contact','permissions','DocType',4,0,'Sales Manager',NULL,1,1,1,0,0,0,0,1,0,0,1,1,1,NULL,0,0,0),('1ab2ad5c06','2013-01-10 16:34:32.000000','2017-09-01 22:00:08.226056','Administrator','Administrator',0,'Contact','permissions','DocType',9,0,'Purchase User',NULL,1,1,1,0,0,0,0,1,0,0,1,1,1,NULL,0,0,0),('1b7749f689','2012-12-12 11:19:22.000000','2017-09-01 21:59:54.402066','Administrator','Administrator',0,'File','permissions','DocType',2,0,'All',NULL,1,1,1,0,0,1,0,1,1,0,1,1,1,NULL,0,0,1),('1cb7201d2d','2016-08-24 14:12:13.647159','2017-09-01 22:00:07.302043','Administrator','Administrator',0,'OAuth Authorization Code','permissions','DocType',1,0,'System Manager',NULL,1,0,0,0,0,1,0,1,1,0,1,1,1,NULL,0,0,0),('1d887082f6','2014-10-30 14:23:30.958074','2017-09-01 22:00:00.187162','Administrator','Administrator',0,'Help Category','permissions','DocType',1,0,'Website Manager',NULL,1,1,1,0,0,1,0,1,1,0,1,1,1,NULL,0,0,0),('1ea8854951','2013-01-10 16:34:32.000000','2017-09-01 22:00:08.226056','Administrator','Administrator',0,'Contact','permissions','DocType',3,0,'Purchase Master Manager',NULL,1,1,1,0,0,1,0,1,0,0,1,1,1,NULL,0,0,0),('21d10d4add','2013-03-28 10:35:30.000000','2017-09-01 22:00:00.324049','Administrator','Administrator',0,'Web Page','permissions','DocType',1,0,'Website Manager',NULL,1,1,1,0,0,1,0,0,0,1,1,0,0,NULL,0,0,0),('223437ff36','2016-04-20 15:29:39.785172','2017-09-01 22:00:04.338347','Administrator','Administrator',0,'Email Flag Queue','permissions','DocType',1,0,'System Manager',NULL,1,0,0,0,0,1,0,1,1,0,1,1,1,NULL,0,0,0),('23f2738438','2013-01-10 16:34:32.000000','2017-09-01 22:00:08.571416','Administrator','Administrator',0,'Address','permissions','DocType',4,0,'Accounts User',NULL,1,1,1,0,0,0,0,1,0,0,1,1,1,NULL,0,0,0),('2586db9692','2017-01-11 04:21:35.217943','2017-09-01 21:59:54.801850','Administrator','Administrator',0,'Custom DocPerm','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,1,0,1,1,0,1,1,1,NULL,0,0,0),('2635d9bdcb','2012-12-12 11:19:22.000000','2017-09-01 21:59:54.402066','Administrator','Administrator',0,'File','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,1,0,1,1,1,1,1,1,NULL,0,0,0),('292a4797fb','2013-03-28 10:35:30.000000','2017-09-01 22:00:00.894557','Administrator','Administrator',0,'Blog Post','permissions','DocType',1,0,'Website Manager',NULL,1,1,1,0,0,1,0,1,0,0,1,1,1,NULL,0,1,0),('2e3f8aae10','2017-04-21 16:57:30.264478','2017-09-01 22:00:07.448430','Administrator','Administrator',0,'GSuite Settings','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,1,0,0,0,0,1,1,1,NULL,0,0,0),('2e92500619','2012-12-28 10:49:56.000000','2017-09-01 22:00:02.200541','Administrator','Administrator',0,'Workflow Action','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,1,0,0,0,0,1,1,1,NULL,0,0,0),('335623c823','2013-01-29 17:55:08.000000','2017-09-01 22:00:04.634582','Administrator','Administrator',0,'Customize Form','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,0,0,0,0,0,1,1,1,NULL,0,0,0),('343cda33c7','2016-09-22 04:16:48.829658','2017-09-01 22:00:06.105316','Administrator','Administrator',0,'LDAP Settings','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,1,0,0,1,0,1,1,1,NULL,0,0,0),('36f5157f54','2013-01-08 15:50:01.000000','2017-09-01 21:59:52.924422','Administrator','Administrator',0,'Role','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,1,0,1,0,0,1,1,1,NULL,0,0,0),('39cdef8eda','2017-07-17 14:25:27.881871','2017-09-01 21:59:57.736696','Administrator','Administrator',0,'User Permission','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,1,0,1,1,0,1,1,1,NULL,0,0,0),('3b90572f9e','2014-03-11 14:55:00.000000','2017-09-01 21:59:52.429552','Administrator','Administrator',0,'User','permissions','DocType',2,1,'System Manager',NULL,1,1,0,0,0,0,0,1,0,0,0,0,0,NULL,0,0,0),('4008ece86f','2013-03-08 09:41:11.000000','2017-09-01 22:00:01.501531','Administrator','Administrator',0,'Blog Category','permissions','DocType',2,0,'Blogger',NULL,1,0,0,0,0,0,0,0,0,0,0,1,1,NULL,0,0,0),('4196f5f725','2013-02-18 13:36:19.000000','2017-09-01 21:59:51.696379','Administrator','Administrator',0,'DocType','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,1,0,1,0,0,0,1,1,NULL,0,0,0),('4382195abe','2013-02-18 13:36:19.000000','2017-09-01 21:59:51.696379','Administrator','Administrator',0,'DocType','permissions','DocType',2,0,'Administrator',NULL,1,1,1,0,0,1,0,1,0,0,1,1,1,NULL,0,0,0),('453d22b650','2013-04-30 12:58:46.000000','2017-09-01 22:00:00.764927','Administrator','Administrator',0,'Website Settings','permissions','DocType',1,0,'Website Manager',NULL,1,1,1,0,0,0,0,0,0,0,1,1,1,NULL,0,0,0),('46713945fa','2017-01-27 15:43:33.780808','2017-09-01 21:59:56.777309','Administrator','Administrator',0,'Feedback Request','permissions','DocType',1,0,'System Manager',NULL,1,0,0,0,0,0,0,1,1,0,1,1,1,NULL,0,0,0),('4692512ffe','2012-12-27 11:51:24.000000','2017-09-01 21:59:59.740706','Administrator','Administrator',0,'Website Script','permissions','DocType',1,0,'Website Manager',NULL,1,1,1,0,0,0,0,0,0,0,1,1,1,NULL,0,0,0),('474c47cf16','2012-11-22 17:45:46.000000','2017-09-01 22:00:07.822928','Administrator','Administrator',0,'Letter Head','permissions','DocType',2,0,'All',NULL,1,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0),('499893710e','2016-05-25 09:49:07.125394','2017-09-01 21:59:57.606277','Administrator','Administrator',0,'Tag Category','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,1,0,0,1,1,0,0,0,NULL,0,0,0),('49e44d01bf','2013-03-09 15:45:57.000000','2017-09-01 21:59:57.830003','Administrator','Administrator',0,'Report','permissions','DocType',2,0,'System Manager',NULL,1,1,1,0,0,1,0,1,0,0,1,1,1,NULL,0,0,0),('4ae60e3b34','2013-01-28 10:06:02.000000','2017-09-01 22:00:05.001030','Administrator','Administrator',0,'Currency','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,1,0,1,0,0,1,1,1,NULL,0,0,0),('4b3e5ab9d1','2016-03-30 01:40:20.001775','2017-09-01 22:00:01.167977','Administrator','Administrator',0,'Portal Settings','permissions','DocType',1,0,'Website Manager',NULL,1,1,1,0,0,1,0,0,0,0,1,1,1,NULL,0,0,0),('4bbb482699','2016-10-19 12:26:04.809812','2017-09-01 22:00:05.535117','Administrator','Administrator',0,'Kanban Board','permissions','DocType',1,0,'All',NULL,1,1,1,0,0,1,0,1,1,0,1,1,1,NULL,0,0,0),('4be5854e0e','2013-01-10 16:34:32.000000','2017-09-01 22:00:08.226056','Administrator','Administrator',0,'Contact','permissions','DocType',6,0,'Maintenance Manager',NULL,1,1,1,0,0,0,0,1,0,0,1,1,1,NULL,0,0,0),('4ec67375bd','2013-03-11 17:48:16.000000','2017-09-01 22:00:00.653637','Administrator','Administrator',0,'Blog Settings','permissions','DocType',1,0,'Website Manager',NULL,1,1,1,0,0,0,0,0,0,0,1,1,1,NULL,0,0,0),('4fcd55714e','2017-05-03 16:28:11.295095','2017-09-01 21:59:57.685199','Administrator','Administrator',0,'Domain Settings','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,1,0,0,0,0,1,1,1,NULL,0,0,0),('54a4d62efb','2013-01-10 16:34:32.000000','2017-09-01 22:00:08.226056','Administrator','Administrator',0,'Contact','permissions','DocType',2,0,'Sales Master Manager',NULL,1,1,1,0,0,1,0,1,0,0,1,1,1,NULL,0,0,0),('54ca60b298','2013-01-29 10:47:14.000000','2017-09-01 21:59:55.016873','Administrator','Administrator',0,'Communication','permissions','DocType',1,0,'System Manager',NULL,1,0,1,0,0,1,0,1,0,0,1,0,1,NULL,0,0,0),('54f5615795','2016-09-01 01:34:34.985457','2017-09-01 22:00:03.756563','Administrator','Administrator',0,'Auto Email Report','permissions','DocType',2,0,'Report Manager',NULL,1,1,1,0,0,1,0,1,1,0,1,1,1,NULL,0,0,0),('550b85138c','2012-12-20 17:16:49.000000','2017-09-01 21:59:56.947669','Administrator','Administrator',0,'Page','permissions','DocType',1,0,'Administrator',NULL,1,1,1,0,0,0,0,0,0,0,1,1,1,NULL,0,0,0),('5666cec711','2016-12-29 12:59:48.638970','2017-09-01 21:59:57.504015','Administrator','Administrator',0,'Deleted Document','permissions','DocType',1,0,'System Manager',NULL,1,0,0,0,0,1,0,0,1,0,0,0,0,NULL,0,0,0),('574877d69c','2013-03-09 15:45:57.000000','2017-09-01 21:59:57.830003','Administrator','Administrator',0,'Report','permissions','DocType',3,0,'Report Manager',NULL,1,1,1,0,0,1,0,1,0,0,1,1,1,NULL,0,0,0),('5943e0c84f','2016-09-21 10:12:57.399174','2017-09-01 22:00:06.300633','Administrator','Administrator',0,'Dropbox Settings','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,1,0,0,1,0,1,1,1,NULL,0,0,0),('59e1c0193c','2013-03-08 09:41:11.000000','2017-09-01 22:00:01.501531','Administrator','Administrator',0,'Blog Category','permissions','DocType',1,0,'Website Manager',NULL,1,1,1,0,0,1,0,1,0,0,1,1,1,NULL,0,1,0),('6169276864','2014-03-11 14:55:00.000000','2017-09-01 21:59:52.429552','Administrator','Administrator',0,'User','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,1,0,1,1,1,1,1,1,NULL,0,0,0),('6195894c34','2013-01-10 16:34:32.000000','2017-09-01 22:00:08.226056','Administrator','Administrator',0,'Contact','permissions','DocType',10,0,'Maintenance User',NULL,1,1,1,0,0,0,0,1,0,0,1,1,1,NULL,0,0,0),('61edeaf0c6','2016-03-29 10:50:48.848239','2017-09-01 22:00:03.612963','Administrator','Administrator',0,'Email Domain','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,1,0,0,0,0,1,0,0,NULL,0,1,0),('63f6e5882a','2012-11-22 17:45:46.000000','2017-09-01 22:00:07.822928','Administrator','Administrator',0,'Letter Head','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,1,0,1,0,0,1,1,1,NULL,0,0,0),('6711ec029d','2013-06-10 13:17:47.000000','2017-09-01 22:00:05.629704','Administrator','Administrator',0,'Event','permissions','DocType',2,0,'System Manager',NULL,1,1,1,0,0,1,0,1,1,1,1,1,1,NULL,0,0,0),('6805e5c756','2017-02-13 14:53:36.240122','2017-09-01 21:59:58.010084','Administrator','Administrator',0,'Custom Role','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,1,0,1,1,0,1,1,1,NULL,0,0,0),('68faaf6150','2016-08-24 14:10:17.471264','2017-09-01 22:00:07.513722','Administrator','Administrator',0,'OAuth Bearer Token','permissions','DocType',1,0,'System Manager',NULL,1,0,0,0,0,1,0,1,1,0,1,1,1,NULL,0,0,0),('699ca8b408','2013-01-10 16:34:01.000000','2017-09-01 21:59:53.056685','Administrator','Administrator',0,'Custom Field','permissions','DocType',1,0,'Administrator',NULL,1,1,1,0,0,1,0,1,0,0,1,1,1,NULL,0,0,0),('69cd5ff641','2017-09-01 15:56:17.943779','2017-09-01 16:25:52.923943','Administrator','Administrator',0,'Empresa','permissions','DocType',2,0,'All',NULL,1,1,1,0,0,1,0,1,1,0,1,1,1,NULL,0,0,0),('740c8153e2','2013-02-21 20:12:42.000000','2017-09-01 22:00:01.610316','Administrator','Administrator',0,'Contact Us Settings','permissions','DocType',1,0,'Website Manager',NULL,1,1,1,0,0,0,0,0,0,0,1,1,1,NULL,0,0,0),('763a850072','2013-01-29 10:47:14.000000','2017-09-01 21:59:55.016873','Administrator','Administrator',0,'Communication','permissions','DocType',2,1,'System Manager',NULL,1,0,0,0,0,1,0,1,1,0,1,1,1,NULL,0,0,0),('76fc0cc390','2015-03-18 06:15:59.321619','2017-09-01 22:00:02.769685','Administrator','Administrator',0,'Email Group Member','permissions','DocType',1,0,'Newsletter Manager',NULL,1,1,1,0,0,1,0,1,1,1,1,1,1,NULL,0,0,0),('7761a1f988','2015-02-18 12:46:38.168929','2017-09-01 21:59:59.903705','Administrator','Administrator',0,'Website Theme','permissions','DocType',2,0,'Administrator',NULL,1,1,1,0,0,1,0,0,1,1,0,0,0,NULL,0,0,0),('7a34077d63','2014-04-17 16:53:52.640856','2017-09-01 21:59:58.766477','Administrator','Administrator',0,'System Settings','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,0,0,0,0,0,1,0,0,NULL,0,0,0),('7aadddd0a0','2014-06-19 05:20:26.331041','2017-09-01 22:00:03.503215','Administrator','Administrator',0,'Standard Reply','permissions','DocType',2,0,'System Manager',NULL,1,1,1,0,0,1,0,1,1,1,1,0,1,NULL,0,0,0),('7b61190392','2013-01-10 16:34:32.000000','2017-09-01 22:00:08.226056','Administrator','Administrator',0,'Contact','permissions','DocType',7,0,'Accounts Manager',NULL,1,1,1,0,0,0,0,1,0,0,1,1,1,NULL,0,0,0),('7cd12f1414','2016-09-21 08:03:01.009852','2017-09-01 22:00:07.143640','Administrator','Administrator',0,'PayPal Settings','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,1,0,0,1,0,1,1,1,NULL,0,0,0),('7efa68f200','2016-08-04 04:58:40.457416','2017-09-01 22:00:07.597872','Administrator','Administrator',0,'Integration Request','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,1,0,1,1,0,1,1,1,NULL,0,0,0),('81937b7e28','2013-01-19 10:23:30.000000','2017-09-01 22:00:05.106860','Administrator','Administrator',0,'Country','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,0,0,1,0,0,1,1,1,NULL,0,0,0),('84ff19880f','2014-07-17 06:54:20.782907','2017-09-01 22:00:07.719476','Administrator','Administrator',0,'Print Settings','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,0,0,0,0,0,1,0,0,NULL,0,0,0),('8648290b48','2013-01-10 16:34:32.000000','2017-09-01 22:00:08.226056','Administrator','Administrator',0,'Contact','permissions','DocType',11,0,'Accounts User',NULL,1,1,1,0,0,0,0,1,0,0,1,1,1,NULL,0,0,0),('877d916730','2016-08-24 14:07:21.955052','2017-09-01 22:00:07.188251','Administrator','Administrator',0,'OAuth Client','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,1,0,1,1,0,1,1,1,NULL,0,0,0),('88246f32cf','2016-09-03 11:42:42.575525','2017-09-01 22:00:06.180317','Administrator','Administrator',0,'OAuth Provider Settings','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,1,0,0,0,0,1,1,1,NULL,0,0,0),('887c5275f8','2013-01-10 16:34:03.000000','2017-09-01 21:59:58.184161','Administrator','Administrator',0,'Module Def','permissions','DocType',2,0,'System Manager',NULL,1,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0),('88bd8d1a6a','2013-01-10 16:34:24.000000','2017-09-01 22:00:07.912117','Administrator','Administrator',0,'Print Heading','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,1,0,1,0,0,1,1,1,NULL,0,0,0),('8bb0ac3931','2013-01-28 10:06:02.000000','2017-09-01 22:00:05.001030','Administrator','Administrator',0,'Currency','permissions','DocType',3,0,'Sales User',NULL,1,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0),('8edeaabe2d','2015-02-18 12:46:38.168929','2017-09-01 21:59:59.903705','Administrator','Administrator',0,'Website Theme','permissions','DocType',1,0,'Website Manager',NULL,1,1,1,0,0,1,0,0,0,0,0,0,0,NULL,0,0,0),('93d73b849c','2013-03-19 12:02:15.000000','2017-09-01 22:00:00.258186','Administrator','Administrator',0,'About Us Settings','permissions','DocType',1,0,'Website Manager',NULL,1,1,1,0,0,0,0,0,0,0,1,1,1,NULL,0,0,0),('944c68d343','2017-02-13 17:33:25.157332','2017-09-01 21:59:54.729999','Administrator','Administrator',0,'Role Permission for Page and Report','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,1,0,0,0,0,1,1,1,NULL,0,0,0),('9803db3d38','2016-09-01 01:34:34.985457','2017-09-01 22:00:03.756563','Administrator','Administrator',0,'Auto Email Report','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,1,0,1,1,0,1,1,1,NULL,0,0,0),('991f84a746','2012-07-03 13:30:35.000000','2017-09-01 22:00:05.317576','Administrator','Administrator',0,'ToDo','permissions','DocType',2,0,'System Manager',NULL,1,1,1,0,0,0,0,1,1,0,1,1,1,NULL,0,0,0),('99e21254c3','2014-02-20 17:22:37.000000','2017-09-01 21:59:57.172499','Administrator','Administrator',0,'Version','permissions','DocType',2,0,'Administrator',NULL,1,0,0,0,0,1,0,0,0,0,0,0,0,NULL,0,0,0),('9b61576e69','2015-03-18 09:41:20.216319','2017-09-01 22:00:04.433960','Administrator','Administrator',0,'Email Unsubscribe','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,1,0,1,1,0,1,1,1,NULL,0,0,0),('9c223082f1','2017-09-01 13:29:30.289032','2017-09-01 19:20:24.367341','Administrator','Administrator',0,'Paciente','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,1,0,1,1,0,1,1,1,NULL,0,0,0),('a079a06cd2','2017-01-24 15:46:38.366213','2017-09-01 21:59:56.229184','Administrator','Administrator',0,'Feedback Trigger','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,1,0,1,1,0,1,1,1,NULL,0,0,0),('a2110980dd','2013-01-10 16:34:31.000000','2017-09-01 22:00:03.015516','Administrator','Administrator',0,'Newsletter','permissions','DocType',1,0,'Newsletter Manager',NULL,1,1,1,0,0,1,0,1,1,0,1,1,1,NULL,0,1,0),('a2e6029b46','2013-01-10 16:34:32.000000','2017-09-01 22:00:08.226056','Administrator','Administrator',0,'Contact','permissions','DocType',5,0,'Purchase Manager',NULL,1,1,1,0,0,0,0,1,0,0,1,1,1,NULL,0,0,0),('a49b79f281','2013-01-10 16:34:03.000000','2017-09-01 21:59:58.184161','Administrator','Administrator',0,'Module Def','permissions','DocType',1,0,'Administrator',NULL,1,1,1,0,0,1,0,1,0,0,1,1,1,NULL,0,0,0),('aac33fe1ce','2017-02-13 17:33:25.157332','2017-09-01 21:59:55.882960','Administrator','Administrator',0,'User Permission for Page and Report','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,1,0,0,0,0,1,1,1,NULL,0,0,0),('ab43a269c0','2014-10-30 14:25:53.780105','2017-09-01 22:00:01.066008','Administrator','Administrator',0,'Help Article','permissions','DocType',1,0,'Knowledge Base Editor',NULL,1,1,1,0,0,1,0,1,1,1,0,1,1,NULL,0,0,0),('ac48c90a65','2012-08-02 15:17:28.000000','2017-09-01 22:00:03.294421','Administrator','Administrator',0,'Email Queue','permissions','DocType',1,0,'System Manager',NULL,1,0,0,0,0,1,0,1,0,0,0,1,1,NULL,0,0,0),('ad1dfadaf5','2013-01-16 13:09:40.000000','2017-09-01 21:59:58.530871','Administrator','Administrator',0,'Error Log','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,1,0,1,0,0,1,1,1,NULL,0,0,0),('ad27263eac','2016-02-22 03:47:45.387068','2017-09-01 22:00:05.878431','Administrator','Administrator',0,'Desktop Icon','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,1,0,1,1,0,1,1,1,NULL,0,0,0),('b1f46cbba9','2017-01-23 16:56:25.875531','2017-09-01 21:59:56.487193','Administrator','Administrator',0,'Authentication Log','permissions','DocType',1,0,'All',NULL,1,0,0,0,0,0,0,1,1,0,1,1,1,NULL,0,0,0),('b281f1683c','2013-01-10 16:34:32.000000','2017-09-01 22:00:08.226056','Administrator','Administrator',0,'Contact','permissions','DocType',8,0,'Sales User',NULL,1,1,1,0,0,0,0,1,0,0,1,1,1,NULL,0,0,0),('b3211cc49f','2013-06-10 13:17:47.000000','2017-09-01 22:00:05.629704','Administrator','Administrator',0,'Event','permissions','DocType',1,0,'All',NULL,1,1,1,0,0,0,0,1,0,0,1,1,1,NULL,0,0,0),('b4bc78263f','2014-06-19 05:20:26.331041','2017-09-01 22:00:03.503215','Administrator','Administrator',0,'Standard Reply','permissions','DocType',1,0,'All',NULL,1,1,1,0,0,0,0,0,0,0,1,0,0,NULL,0,0,0),('b696e741c6','2013-01-10 16:34:32.000000','2017-09-01 22:00:08.571416','Administrator','Administrator',0,'Address','permissions','DocType',1,0,'Sales User',NULL,1,1,1,0,0,0,0,1,0,0,1,1,1,NULL,0,0,0),('b6d6a5caa9','2013-01-10 16:34:04.000000','2017-09-01 21:59:53.403426','Administrator','Administrator',0,'Property Setter','permissions','DocType',1,0,'Administrator',NULL,1,1,1,0,0,1,0,1,0,0,1,1,1,NULL,0,0,0),('b749f1955e','2013-03-25 16:00:51.000000','2017-09-01 21:59:59.800038','Administrator','Administrator',0,'Blogger','permissions','DocType',1,0,'Website Manager',NULL,1,1,1,0,0,1,0,1,1,1,1,1,1,NULL,0,1,0),('b84381996e','2017-04-10 12:17:58.071915','2017-09-01 22:00:08.456089','Administrator','Administrator',0,'Salutation','permissions','DocType',3,0,'Administrator',NULL,1,1,1,0,0,1,0,1,1,0,1,1,1,NULL,0,0,0),('bc8e431e05','2015-12-15 22:26:45.221162','2017-09-01 21:59:55.974920','Administrator','Administrator',0,'Payment Gateway','permissions','DocType',1,0,'System Manager',NULL,1,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0),('be1bee2061','2013-01-10 16:34:32.000000','2017-09-01 22:00:08.571416','Administrator','Administrator',0,'Address','permissions','DocType',2,0,'Purchase User',NULL,1,1,1,0,0,0,0,1,0,0,1,1,1,NULL,0,0,0),('bfa0732d16','2014-10-30 14:25:53.780105','2017-09-01 22:00:01.066008','Administrator','Administrator',0,'Help Article','permissions','DocType',3,0,'Guest',NULL,1,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0),('c0439e6559','2013-01-10 16:34:32.000000','2017-09-01 22:00:08.226056','Administrator','Administrator',0,'Contact','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,1,0,1,0,0,1,1,1,NULL,0,0,0),('c2270a71b2','2013-01-10 16:34:24.000000','2017-09-01 22:00:07.912117','Administrator','Administrator',0,'Print Heading','permissions','DocType',2,0,'All',NULL,1,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0),('c3b91f0d18','2012-07-03 13:30:35.000000','2017-09-01 22:00:05.317576','Administrator','Administrator',0,'ToDo','permissions','DocType',1,0,'All',NULL,1,1,1,0,0,1,0,1,0,0,1,1,1,NULL,0,0,0),('c46079de6a','2017-04-10 12:17:58.071915','2017-09-01 22:00:08.456089','Administrator','Administrator',0,'Salutation','permissions','DocType',2,0,'All',NULL,1,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0),('c6d3f4669d','2013-01-23 19:54:43.000000','2017-09-01 22:00:07.979522','Administrator','Administrator',0,'Print Format','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,1,0,1,0,0,1,1,1,NULL,0,0,0),('c6d5bdc46b','2013-01-10 16:34:01.000000','2017-09-01 22:00:04.517892','Administrator','Administrator',0,'Custom Script','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,1,0,1,0,0,1,1,1,NULL,0,0,0),('c8243bc8d8','2013-03-25 16:00:51.000000','2017-09-01 21:59:59.800038','Administrator','Administrator',0,'Blogger','permissions','DocType',2,0,'Blogger',NULL,1,1,0,0,0,0,0,0,0,0,1,1,1,NULL,0,0,0),('c97a09a271','2014-03-04 08:29:52.000000','2017-09-01 22:00:06.216644','Administrator','Administrator',0,'Social Login Keys','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,0,0,0,0,0,1,0,0,NULL,0,0,0),('c9cf748279','2017-03-09 17:18:29.458397','2017-09-01 22:00:07.672985','Administrator','Administrator',0,'Stripe Settings','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,1,0,0,0,0,1,1,1,NULL,0,0,0),('ca3a3ea4bb','2017-05-03 15:07:39.752820','2017-09-01 21:59:56.400361','Administrator','makarand@erpnext.com',0,'Domain','permissions','DocType',1,0,'System Manager',NULL,1,0,0,0,0,0,0,1,1,0,1,1,1,NULL,0,0,0),('cbee95d4d8','2013-01-10 16:34:32.000000','2017-09-01 22:00:08.571416','Administrator','Administrator',0,'Address','permissions','DocType',3,0,'Maintenance User',NULL,1,1,1,0,0,0,0,1,0,0,1,1,1,NULL,0,0,0),('cd32727f9f','2013-01-10 16:34:01.000000','2017-09-01 21:59:53.056685','Administrator','Administrator',0,'Custom Field','permissions','DocType',2,0,'System Manager',NULL,1,1,1,0,0,1,0,1,0,0,1,1,1,NULL,0,0,0),('cd497a1264','2013-01-19 10:23:30.000000','2017-09-01 22:00:05.106860','Administrator','Administrator',0,'Country','permissions','DocType',2,0,'All',NULL,1,0,0,0,0,0,0,1,0,0,0,1,1,NULL,0,0,0),('ce9b3cf600','2013-03-09 15:45:57.000000','2017-09-01 21:59:57.830003','Administrator','Administrator',0,'Report','permissions','DocType',4,0,'All',NULL,1,0,0,0,0,0,0,1,0,0,0,1,1,NULL,0,0,0),('d01bf38dfb','2013-04-30 12:58:46.000000','2017-09-01 22:00:00.764927','Administrator','Administrator',0,'Website Settings','permissions','DocType',2,1,'All',NULL,1,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0),('d0a772efdf','2014-09-11 12:04:34.163728','2017-09-01 22:00:02.520524','Administrator','Administrator',0,'Email Account','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,1,0,0,0,0,0,0,0,NULL,0,1,0),('d1849a1490','2012-12-28 10:49:56.000000','2017-09-01 22:00:02.317127','Administrator','Administrator',0,'Workflow State','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,1,0,0,0,0,1,1,1,NULL,0,0,0),('d46dba21d6','2013-01-10 16:34:32.000000','2017-09-01 22:00:08.226056','Administrator','Administrator',0,'Contact','permissions','DocType',12,1,'All','',1,0,0,0,0,0,0,1,0,0,0,0,0,NULL,0,0,0),('d4b7727976','2014-08-22 16:12:17.249590','2017-09-01 21:59:55.520947','Administrator','Administrator',0,'Language','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,1,0,0,0,0,0,0,0,NULL,0,0,0),('d7b16f21c6','2015-11-28 00:57:39.766888','2017-09-01 21:59:58.381641','Administrator','Administrator',0,'Error Snapshot','permissions','DocType',1,0,'Administrator',NULL,1,1,1,0,0,1,0,1,1,0,1,1,1,NULL,0,0,0),('d8d73f4739','2017-06-26 10:57:19.976624','2017-09-01 21:59:58.597232','Administrator','Administrator',0,'Test Runner','permissions','DocType',1,0,'Administrator',NULL,1,1,1,0,0,1,0,0,0,0,1,1,1,NULL,0,0,0),('d92278c130','2013-01-10 16:34:01.000000','2017-09-01 22:00:04.517892','Administrator','Administrator',0,'Custom Script','permissions','DocType',2,0,'Administrator',NULL,1,1,1,0,0,1,0,1,0,0,1,1,1,NULL,0,0,0),('dc7518417e','2016-07-15 05:51:29.224123','2017-09-01 22:00:05.481647','Administrator','Administrator',0,'Bulk Update','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,1,0,0,0,0,1,1,1,NULL,0,0,0),('ddd5e0aef6','2013-01-29 10:47:14.000000','2017-09-01 21:59:55.016873','Administrator','Administrator',0,'Communication','permissions','DocType',3,0,'All',NULL,1,0,0,0,0,1,0,0,0,0,0,0,1,'[\"Email Account\"]',1,0,1),('e07fe5fe38','2013-05-24 13:41:00.000000','2017-09-01 22:00:05.180965','Administrator','Administrator',0,'Note','permissions','DocType',1,0,'All',NULL,1,1,1,0,0,1,0,0,0,0,1,1,1,NULL,0,0,0),('e1ef8fb405','2014-09-01 14:08:48.624556','2017-09-01 21:59:53.572628','Administrator','Administrator',0,'Web Form','permissions','DocType',1,0,'Website Manager',NULL,1,1,1,0,0,1,0,1,0,0,1,0,0,NULL,0,0,0),('e63d3689dc','2013-03-28 10:35:30.000000','2017-09-01 22:00:00.894557','Administrator','Administrator',0,'Blog Post','permissions','DocType',2,0,'Blogger',NULL,1,1,1,0,0,0,0,1,0,0,1,1,1,NULL,0,0,0),('e7f5b1c050','2016-04-14 09:41:45.892975','2017-09-01 22:00:02.933067','Administrator','Administrator',0,'Unhandled Email','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,1,0,0,0,0,0,0,0,NULL,0,0,0),('e95fb0576f','2012-12-20 17:16:49.000000','2017-09-01 21:59:56.947669','Administrator','Administrator',0,'Page','permissions','DocType',2,0,'System Manager',NULL,1,1,0,0,0,0,0,0,0,0,1,1,1,NULL,0,0,0),('ea69c50055','2016-02-17 12:21:16.175465','2017-09-01 21:59:57.386715','Administrator','Administrator',0,'Translation','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,1,0,1,1,0,1,1,1,NULL,0,0,0),('ed00cf9aec','2014-10-30 14:25:53.780105','2017-09-01 22:00:01.066008','Administrator','Administrator',0,'Help Article','permissions','DocType',2,0,'Knowledge Base Contributor',NULL,1,1,1,0,0,0,0,0,0,0,0,0,0,NULL,1,0,0),('ed7a3bfeab','2017-04-10 12:17:58.071915','2017-09-01 22:00:08.456089','Administrator','Administrator',0,'Salutation','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,1,0,1,1,0,1,1,1,NULL,0,0,0),('f26f1e7c4e','2013-03-07 15:53:15.000000','2017-09-01 22:00:01.366493','Administrator','Administrator',0,'Website Slideshow','permissions','DocType',1,0,'Website Manager',NULL,1,1,1,0,0,1,0,1,0,0,1,1,1,NULL,0,0,0),('f598de9278','2013-01-17 11:36:45.000000','2017-09-01 21:59:57.300779','Administrator','Administrator',0,'Patch Log','permissions','DocType',1,0,'Administrator',NULL,1,0,0,0,0,0,0,1,0,0,0,1,1,NULL,0,0,0),('f6104679bc','2013-01-29 10:47:14.000000','2017-09-01 21:59:55.016873','Administrator','Administrator',0,'Communication','permissions','DocType',4,0,'Super Email User',NULL,1,0,1,0,0,1,0,1,1,0,1,1,1,NULL,0,0,0),('f6543756e3','2014-02-20 17:22:37.000000','2017-09-01 21:59:57.172499','Administrator','Administrator',0,'Version','permissions','DocType',1,0,'System Manager',NULL,1,0,0,0,0,0,0,1,1,0,0,0,0,NULL,0,0,0),('f7c6cbeba2','2013-03-09 15:45:57.000000','2017-09-01 21:59:57.830003','Administrator','Administrator',0,'Report','permissions','DocType',1,0,'Administrator',NULL,1,1,1,0,0,1,0,1,0,0,1,1,1,NULL,0,0,0),('f8342628f8','2016-12-29 07:48:06.319665','2017-09-01 22:00:00.998444','Administrator','Administrator',0,'Website Sidebar','permissions','DocType',1,0,'Website Manager',NULL,1,1,1,0,0,1,0,1,1,0,1,1,1,NULL,0,0,0),('fac830fdb6','2017-04-10 12:11:36.526508','2017-09-01 22:00:08.511897','Administrator','Administrator',0,'Gender','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,1,0,1,1,0,1,1,1,NULL,0,0,0),('fbd7e33390','2013-01-10 16:34:04.000000','2017-09-01 21:59:53.403426','Administrator','Administrator',0,'Property Setter','permissions','DocType',2,0,'System Manager',NULL,1,1,1,0,0,1,0,1,0,0,1,1,1,NULL,0,0,0);
/*!40000 ALTER TABLE `tabDocPerm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabDocShare`
--

DROP TABLE IF EXISTS `tabDocShare`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabDocShare` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT '0',
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT '0',
  `everyone` int(1) NOT NULL DEFAULT '0',
  `share_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `read` int(1) NOT NULL DEFAULT '0',
  `_comments` text COLLATE utf8mb4_unicode_ci,
  `_assign` text COLLATE utf8mb4_unicode_ci,
  `share` int(1) NOT NULL DEFAULT '0',
  `write` int(1) NOT NULL DEFAULT '0',
  `_liked_by` text COLLATE utf8mb4_unicode_ci,
  `user` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `share_doctype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_user_tags` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`name`),
  KEY `share_name` (`share_name`),
  KEY `user` (`user`),
  KEY `share_doctype` (`share_doctype`),
  KEY `parent` (`parent`),
  KEY `user_share_doctype_index` (`user`,`share_doctype`),
  KEY `share_doctype_share_name_index` (`share_doctype`,`share_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabDocShare`
--

LOCK TABLES `tabDocShare` WRITE;
/*!40000 ALTER TABLE `tabDocShare` DISABLE KEYS */;
INSERT INTO `tabDocShare` VALUES ('165f7d72c3','2017-09-01 22:00:13.801357','2017-09-01 22:00:13.801357','Administrator','Administrator',0,NULL,NULL,NULL,0,0,'Guest',1,NULL,NULL,1,1,NULL,'Guest','User',NULL),('c8df61f935','2017-09-01 12:38:03.247326','2017-09-01 12:38:03.768055','Administrator','Administrator',0,NULL,NULL,NULL,0,0,'lewin.villar@gmail.com',1,NULL,NULL,1,1,NULL,'lewin.villar@gmail.com','User',NULL),('cbb70019b5','2017-09-01 22:00:13.655007','2017-09-01 22:00:16.159059','Administrator','Administrator',0,NULL,NULL,NULL,0,0,'Administrator',1,NULL,NULL,1,1,NULL,'Administrator','User',NULL);
/*!40000 ALTER TABLE `tabDocShare` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabDocType`
--

DROP TABLE IF EXISTS `tabDocType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabDocType` (
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT '0',
  `parent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT '0',
  `search_fields` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `issingle` int(1) NOT NULL DEFAULT '0',
  `istable` int(1) NOT NULL DEFAULT '0',
  `editable_grid` int(1) NOT NULL DEFAULT '1',
  `track_changes` int(1) NOT NULL DEFAULT '1',
  `module` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `app` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `autoname` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_case` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_field` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_field` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timeline_field` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort_field` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT 'modified',
  `sort_order` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT 'DESC',
  `description` text COLLATE utf8mb4_unicode_ci,
  `colour` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `read_only` int(1) NOT NULL DEFAULT '0',
  `in_create` int(1) NOT NULL DEFAULT '0',
  `menu_index` int(11) DEFAULT NULL,
  `parent_node` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smallicon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `allow_copy` int(1) NOT NULL DEFAULT '0',
  `allow_rename` int(1) NOT NULL DEFAULT '0',
  `allow_import` int(1) NOT NULL DEFAULT '0',
  `hide_toolbar` int(1) NOT NULL DEFAULT '0',
  `hide_heading` int(1) NOT NULL DEFAULT '0',
  `track_seen` int(1) NOT NULL DEFAULT '0',
  `max_attachments` int(11) NOT NULL DEFAULT '0',
  `print_outline` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `read_only_onload` int(1) NOT NULL DEFAULT '0',
  `document_type` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tag_fields` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_last_update` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `engine` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT 'InnoDB',
  `default_print_format` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_submittable` int(1) NOT NULL DEFAULT '0',
  `show_name_in_global_search` int(1) NOT NULL DEFAULT '0',
  `_user_tags` text COLLATE utf8mb4_unicode_ci,
  `custom` int(1) NOT NULL DEFAULT '0',
  `beta` int(1) NOT NULL DEFAULT '0',
  `image_view` int(1) NOT NULL DEFAULT '0',
  `has_web_view` int(1) NOT NULL DEFAULT '0',
  `allow_guest_to_view` int(1) NOT NULL DEFAULT '0',
  `route` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_published_field` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_comments` text COLLATE utf8mb4_unicode_ci,
  `_liked_by` text COLLATE utf8mb4_unicode_ci,
  `_assign` text COLLATE utf8mb4_unicode_ci,
  `restrict_to_domain` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quick_entry` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `module` (`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabDocType`
--

LOCK TABLES `tabDocType` WRITE;
/*!40000 ALTER TABLE `tabDocType` DISABLE KEYS */;
INSERT INTO `tabDocType` VALUES ('About Us Settings','2013-03-19 12:02:15.000000','2016-12-29 14:40:41.692119','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,1,0,0,1,'Website',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Settings for the About Us Page',NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'Other','fa fa-group',NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0),('About Us Team Member','2013-03-07 11:55:11.000000','2016-07-11 03:27:57.756510','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,0,1,1,0,'Website',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0),('Address','2013-01-10 16:34:32.000000','2017-06-21 11:30:20.719590','Administrator','Administrator',0,NULL,NULL,NULL,5,'country, state',0,0,0,0,'Contacts',NULL,NULL,'Title Case',NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,1,1,0,0,0,0,NULL,0,'Setup','fa fa-map-marker',NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0),('Address Template','2014-06-05 02:22:36.029850','2017-04-10 13:09:53.761009','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,0,0,0,'Contacts',NULL,'field:country','',NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,1,0,0,0,0,0,NULL,0,'Setup','fa fa-map-marker',NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,1),('Alergias','2017-09-01 15:11:26.069079','2017-09-01 15:28:08.415026','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,1,1,1,'sipDo',NULL,NULL,'',NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'',NULL,NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,1),('Authentication Log','2017-01-23 16:56:25.875531','2017-01-24 14:51:13.726113','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,0,1,0,'Core',NULL,NULL,'','subject',NULL,NULL,'modified','DESC',NULL,NULL,0,1,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'Setup',NULL,NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0),('Auto Email Report','2016-09-01 01:34:34.985457','2017-06-30 12:54:13.350902','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,0,1,1,'Email',NULL,'','',NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,1,0,0,0,0,0,NULL,0,'',NULL,NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0),('Block Module','2015-03-24 14:28:15.882903','2016-07-11 03:27:58.240564','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,1,1,0,'Core',NULL,NULL,'',NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'Other',NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0),('Blog Category','2013-03-08 09:41:11.000000','2017-03-06 16:29:05.035486','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,0,0,0,1,'Website',NULL,'field:category_name',NULL,NULL,NULL,NULL,NULL,'DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,1,0,0,0,0,NULL,0,'Setup','fa fa-tag',NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,1,1,NULL,'published',NULL,NULL,NULL,NULL,1),('Blog Post','2013-03-28 10:35:30.000000','2017-03-06 16:25:33.410910','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,0,0,0,1,'Website',NULL,NULL,NULL,'title',NULL,NULL,NULL,'ASC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,1,0,0,0,5,NULL,0,'Setup','fa fa-quote-left',NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,1,1,'/blog','published',NULL,NULL,NULL,NULL,0),('Blog Settings','2013-03-11 17:48:16.000000','2016-12-29 14:40:41.629468','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,1,0,0,1,'Website',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Blog Settings',NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,NULL,'fa fa-cog',NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0),('Blogger','2013-03-25 16:00:51.000000','2016-12-29 14:40:40.407657','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,0,0,0,1,'Website',NULL,'field:short_name',NULL,'full_name',NULL,NULL,NULL,NULL,'User ID of a Blogger',NULL,0,0,NULL,NULL,NULL,0,0,1,0,0,0,1,NULL,0,'Setup','fa fa-user',NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0),('Bulk Update','2016-07-15 05:51:29.224123','2016-12-29 14:40:31.929701','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,1,0,1,1,'Desk',NULL,NULL,'',NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,1),('Communication','2013-01-29 10:47:14.000000','2017-03-29 23:06:16.469149','Administrator','Administrator',0,NULL,NULL,NULL,1,'subject',0,0,0,1,'Core',NULL,'',NULL,'subject',NULL,NULL,NULL,'DESC','Keep a track of all communications',NULL,0,0,NULL,NULL,NULL,0,0,1,0,0,1,0,NULL,0,'Setup','fa fa-comment',NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0),('Company History','2013-02-22 01:28:08.000000','2016-07-11 03:27:58.848351','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,0,1,1,0,'Website',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0),('Contact','2013-01-10 16:34:32.000000','2017-06-21 17:17:44.694188','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,0,0,0,0,'Contacts',NULL,NULL,'Title Case',NULL,'image',NULL,NULL,'ASC',NULL,NULL,0,0,NULL,NULL,NULL,0,1,1,0,0,0,0,NULL,0,'Setup','fa fa-user',NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0),('Contact Us Settings','2013-02-21 20:12:42.000000','2016-12-29 14:40:41.174439','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,1,0,0,1,'Website',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Settings for Contact Us Page',NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,NULL,'fa fa-cog',NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0),('Country','2013-01-19 10:23:30.000000','2016-12-29 14:40:34.951894','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,0,0,0,1,'Geo',NULL,'field:country_name',NULL,NULL,NULL,NULL,'country_name','ASC',NULL,NULL,0,0,0,NULL,NULL,0,1,1,0,0,0,0,NULL,0,'Setup','fa fa-globe',NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,1),('Currency','2013-01-28 10:06:02.000000','2016-12-29 14:40:39.187557','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,0,0,0,1,'Geo',NULL,'field:currency_name',NULL,NULL,NULL,NULL,NULL,'DESC','**Currency** Master',NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'Setup','fa fa-bitcoin',NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0),('Custom DocPerm','2017-01-11 04:21:35.217943','2017-01-11 04:21:35.217943','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,0,1,0,'Core',NULL,'hash','',NULL,NULL,NULL,'modified','ASC',NULL,NULL,1,0,NULL,NULL,NULL,0,0,1,0,0,0,0,NULL,0,'',NULL,NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0),('Custom Field','2013-01-10 16:34:01.000000','2017-07-06 17:23:43.835189','Administrator','Administrator',0,NULL,NULL,NULL,1,'dt,label,fieldtype,options',0,0,0,1,'Custom',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ASC','Adds a custom field to a DocType',NULL,0,0,NULL,NULL,NULL,0,0,1,0,0,0,0,NULL,0,'Setup','fa fa-glass',NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0),('Custom Role','2017-02-13 14:53:36.240122','2017-03-20 12:56:09.164494','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,0,1,0,'Core',NULL,'hash','',NULL,NULL,NULL,'modified','DESC',NULL,NULL,1,0,NULL,NULL,NULL,0,0,1,0,0,0,0,NULL,0,'',NULL,NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0),('Custom Script','2013-01-10 16:34:01.000000','2017-04-03 18:07:28.138437','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,0,0,0,1,'Custom',NULL,'CustomScript.####',NULL,NULL,NULL,NULL,NULL,'ASC','Adds a custom script (client or server) to a DocType',NULL,0,0,NULL,NULL,NULL,0,0,1,0,0,0,0,NULL,0,'Document','fa fa-glass',NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0),('Customize Form','2013-01-29 17:55:08.000000','2017-04-21 16:59:12.752428','Administrator','Administrator',0,NULL,NULL,NULL,1,'doc_type',1,0,1,1,'Custom',NULL,'DL.####',NULL,NULL,NULL,NULL,NULL,'DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,1,0,0,0,NULL,0,'Document','fa fa-glass',NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,1),('Customize Form Field','2013-02-22 01:27:32.000000','2017-07-06 17:24:03.665171','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,0,1,1,0,'Custom',NULL,'hash',NULL,NULL,NULL,NULL,NULL,'ASC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'Setup',NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0),('DefaultValue','2013-02-22 01:27:32.000000','2016-07-11 03:27:59.126216','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,0,1,1,0,'Core',NULL,'hash',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0),('Deleted Document','2016-12-29 12:59:48.638970','2016-12-29 14:39:45.724494','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,0,1,1,'Core',NULL,NULL,'','deleted_name',NULL,NULL,'modified','DESC',NULL,NULL,0,1,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'',NULL,NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0),('Desktop Icon','2016-02-22 03:47:45.387068','2017-05-08 15:41:31.121652','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,0,0,1,'Desk',NULL,NULL,'','module_name',NULL,NULL,'modified','DESC',NULL,NULL,1,1,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'',NULL,NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0),('DocField','2013-02-22 01:27:33.000000','2017-07-06 12:36:21.248293','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,0,1,1,0,'Core',NULL,'hash',NULL,NULL,NULL,NULL,NULL,'ASC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'Setup',NULL,NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0),('DocPerm','2013-02-22 01:27:33.000000','2017-03-03 16:18:18.890031','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,0,1,1,0,'Core',NULL,'hash',NULL,NULL,NULL,NULL,NULL,'ASC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'Setup',NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0),('DocShare','2015-02-04 04:33:36.330477','2016-12-29 14:40:40.284335','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,0,0,1,'Core',NULL,'hash','',NULL,NULL,NULL,'modified','DESC','Internal record of document shares',NULL,1,1,NULL,NULL,NULL,0,0,1,0,0,0,0,NULL,0,'System',NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0),('DocType','2013-02-18 13:36:19.000000','2017-05-03 16:15:40.198072','Administrator','Administrator',0,NULL,NULL,NULL,6,'module',0,0,0,1,'Core',NULL,'Prompt',NULL,NULL,NULL,NULL,'modified','DESC','DocType is a Table / Form in the application.',NULL,0,0,NULL,NULL,NULL,0,1,0,0,0,0,0,NULL,0,'Document','fa fa-bolt',NULL,NULL,NULL,'InnoDB',NULL,0,1,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0),('Domain','2017-05-03 15:07:39.752820','2017-07-26 21:29:00.353105','Administrator','makarand@erpnext.com',0,NULL,NULL,NULL,0,'domain',0,0,1,0,'Core',NULL,'field:domain','','domain',NULL,NULL,'modified','DESC',NULL,NULL,1,1,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'',NULL,NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,1),('Domain Settings','2017-05-03 16:28:11.295095','2017-05-12 17:01:18.615000','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,1,0,1,1,'Core',NULL,NULL,'',NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'',NULL,NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,1),('Dropbox Settings','2016-09-21 10:12:57.399174','2017-06-20 15:45:33.683827','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,1,0,1,1,'Integrations',NULL,NULL,'',NULL,NULL,NULL,'modified','DESC',NULL,NULL,1,1,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'System',NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0),('Dynamic Link','2017-01-13 04:55:18.835023','2017-01-17 14:25:49.140730','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,1,1,1,'Core',NULL,NULL,'',NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'',NULL,NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,1),('Email Account','2014-09-11 12:04:34.163728','2017-03-10 17:00:50.782901','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,0,0,1,'Email',NULL,'field:email_account_name','',NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,1,0,0,0,0,0,NULL,0,'Setup','fa fa-inbox',NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0),('Email Alert','2014-07-11 17:18:09.923399','2017-07-07 16:09:48.804218','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,0,0,1,'Email',NULL,'Prompt','','subject',NULL,NULL,'modified','DESC',NULL,NULL,0,0,0,NULL,NULL,0,1,0,0,0,0,0,NULL,0,'System','fa fa-envelope',NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0),('Email Alert Recipient','2014-07-11 17:19:37.037109','2016-12-30 11:09:35.562857','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,1,1,0,'Email',NULL,NULL,'',NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'',NULL,NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,1),('Email Domain','2016-03-29 10:50:48.848239','2016-12-23 13:31:58.408528','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,0,0,0,'Email',NULL,'field:domain_name','',NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'Setup','icon-inbox',NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0),('Email Flag Queue','2016-04-20 15:29:39.785172','2017-03-15 13:09:28.002266','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,0,0,0,'Email',NULL,NULL,'',NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,1,NULL,NULL,NULL,1,0,0,0,0,0,0,NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0),('Email Group','2015-03-18 06:08:32.729800','2017-02-27 19:01:17.203845','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,0,0,1,'Email',NULL,'field:title','',NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,1,0,0,0,0,NULL,0,'Setup',NULL,NULL,NULL,NULL,NULL,NULL,0,1,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,1),('Email Group Member','2015-03-18 06:15:59.321619','2017-02-17 17:00:42.551806','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,0,0,1,'Email',NULL,'hash','','email',NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,1,0,0,0,0,NULL,0,'Document',NULL,NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,1),('Email Queue','2012-08-02 15:17:28.000000','2017-07-07 16:29:15.780393','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,0,0,0,1,'Email',NULL,'hash',NULL,NULL,NULL,NULL,NULL,'DESC','Email Queue records.',NULL,0,1,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'System','fa fa-envelope',NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0),('Email Queue Recipient','2016-12-08 12:01:07.993900','2016-12-08 14:05:33.578240','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,1,0,0,'Email',NULL,NULL,'',NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'',NULL,NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,1),('Email Rule','2017-03-13 09:20:56.387135','2017-03-13 09:26:38.441858','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,0,1,0,'Email',NULL,'field:email_id','',NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,1,NULL,NULL,NULL,1,0,0,0,0,0,0,NULL,0,'',NULL,NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,1),('Email Unsubscribe','2015-03-18 09:41:20.216319','2016-12-29 14:40:21.633193','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,0,0,1,'Email',NULL,NULL,'',NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'System',NULL,NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,1),('Empresa','2017-09-01 15:56:17.943779','2017-09-01 16:25:52.923943','Administrator','Administrator',0,NULL,NULL,NULL,0,'nombre,rnc',0,0,1,1,'sipDo',NULL,'naming_series:','','nombre',NULL,NULL,'nombre','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'Document',NULL,NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0),('Error Log','2013-01-16 13:09:40.000000','2017-03-14 12:21:44.292471','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,0,0,0,1,'Core',NULL,'',NULL,NULL,NULL,NULL,NULL,'ASC','Log of Scheduler Errors',NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'System','fa fa-warning-sign',NULL,NULL,NULL,'MyISAM',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,1),('Error Snapshot','2015-11-28 00:57:39.766888','2016-12-29 14:40:38.619106','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,0,0,1,'Core',NULL,NULL,'','evalue',NULL,NULL,'timestamp','DESC',NULL,NULL,0,1,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'System',NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0),('Event','2013-06-10 13:17:47.000000','2017-07-06 12:37:44.036819','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,0,0,0,1,'Desk',NULL,'EV.#####',NULL,'subject',NULL,NULL,NULL,'DESC',NULL,NULL,1,0,NULL,NULL,NULL,0,0,1,0,0,1,0,NULL,0,'Document','fa fa-calendar',NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0),('Feedback Request','2017-01-27 15:43:33.780808','2017-03-03 08:11:09.718589','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,0,1,1,'Core',NULL,'','','reference_name',NULL,NULL,'modified','DESC',NULL,NULL,0,1,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'Setup',NULL,NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0),('Feedback Trigger','2017-01-24 15:46:38.366213','2017-05-29 16:36:04.178592','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,0,1,1,'Core',NULL,'field:document_type','','document_type',NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'Setup',NULL,NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0),('File','2012-12-12 11:19:22.000000','2017-02-17 16:42:36.092962','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,0,0,0,1,'Core',NULL,'',NULL,'file_name',NULL,NULL,NULL,'ASC',NULL,NULL,0,0,0,NULL,NULL,0,0,1,0,0,0,0,NULL,0,NULL,'fa fa-file',NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0),('Footer Item','2016-04-12 18:40:16.315024','2016-07-11 03:28:00.573336','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,1,1,0,'Website',NULL,NULL,'',NULL,NULL,NULL,'modified','ASC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'Other',NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0),('Gender','2017-04-10 12:11:36.526508','2017-04-10 12:17:04.848338','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,0,1,1,'Contacts',NULL,'field:gender','',NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'',NULL,NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0),('GSuite Settings','2017-04-21 16:57:30.264478','2017-05-19 15:28:44.663715','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,1,0,1,1,'Integrations',NULL,NULL,'',NULL,NULL,NULL,'modified','DESC',NULL,NULL,1,1,NULL,NULL,NULL,1,0,0,0,0,0,0,NULL,0,'System',NULL,NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,1),('GSuite Templates','2017-04-24 09:53:41.813982','2017-05-12 16:50:08.074882','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,0,1,1,'Integrations',NULL,'field:template_name','',NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'Setup',NULL,NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0),('Has Domain','2017-05-03 15:20:22.326623','2017-05-04 11:05:54.750351','Administrator','makarand@erpnext.com',0,NULL,NULL,NULL,0,NULL,0,1,1,1,'Core',NULL,NULL,'',NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'',NULL,NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,1),('Has Role','2013-02-22 01:27:34.000000','2017-02-13 14:00:08.116312','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,0,1,1,0,'Core',NULL,'hash',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0),('Help Article','2014-10-30 14:25:53.780105','2017-03-06 16:27:58.333205','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,0,0,1,'Website',NULL,NULL,'','title',NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,1,0,0,0,0,NULL,0,'','icon-file-alt',NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,1,1,NULL,'published',NULL,NULL,NULL,NULL,0),('Help Category','2014-10-30 14:23:30.958074','2016-12-29 14:39:56.092427','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,0,0,1,'Website',NULL,'','Title Case',NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,1,0,0,0,0,NULL,0,'','icon-list',NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0),('Integration Request','2016-08-04 04:58:40.457416','2017-03-08 14:40:00.783063','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,0,1,1,'Integrations',NULL,NULL,'','integration_request_service',NULL,NULL,'modified','DESC',NULL,NULL,0,1,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'',NULL,NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0),('Kanban Board','2016-10-19 12:26:04.809812','2017-03-14 23:02:13.267243','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,0,1,0,'Desk',NULL,'field:kanban_board_name','',NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,1,0,0,0,0,0,NULL,0,'',NULL,NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0),('Kanban Board Column','2016-10-19 12:26:42.569185','2017-01-17 15:23:43.520379','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,1,1,1,'Desk',NULL,NULL,'',NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'',NULL,NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,1),('Language','2014-08-22 16:12:17.249590','2016-12-29 14:40:33.210645','Administrator','Administrator',0,NULL,NULL,NULL,0,'language_name',0,0,0,1,'Core',NULL,'field:language_code','','language_name',NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,1,0,0,0,0,0,NULL,0,'Setup','fa fa-globe',NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0),('LDAP Settings','2016-09-22 04:16:48.829658','2017-03-08 17:16:01.087365','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,1,0,1,1,'Integrations',NULL,NULL,'',NULL,NULL,NULL,'modified','DESC',NULL,NULL,1,1,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'System',NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0),('Letter Head','2012-11-22 17:45:46.000000','2017-05-03 05:59:15.785429','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,0,0,0,1,'Printing',NULL,'field:letter_head_name',NULL,NULL,NULL,NULL,NULL,'ASC',NULL,NULL,0,0,NULL,NULL,NULL,0,1,0,0,0,0,3,NULL,0,'Setup','fa fa-font',NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0),('Medicamentos','2017-09-01 15:19:44.113804','2017-09-01 15:33:38.607038','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,1,1,1,'sipDo',NULL,NULL,'',NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'',NULL,NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,1),('Module Def','2013-01-10 16:34:03.000000','2017-07-13 03:05:28.213656','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,0,0,0,1,'Core',NULL,'field:module_name',NULL,NULL,NULL,NULL,NULL,'ASC',NULL,NULL,0,0,NULL,NULL,NULL,0,1,0,0,0,0,0,NULL,0,NULL,'fa fa-sitemap',NULL,NULL,NULL,'InnoDB',NULL,0,1,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,1),('Newsletter','2013-01-10 16:34:31.000000','2017-03-07 12:59:18.173824','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,0,0,0,1,'Email',NULL,'',NULL,'subject',NULL,NULL,NULL,'ASC','Create and Send Newsletters',NULL,0,0,0,NULL,NULL,0,1,0,0,0,0,3,NULL,0,'Other','fa fa-envelope',NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0),('Newsletter Email Group','2017-02-26 16:20:52.654136','2017-02-26 16:23:57.351167','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,1,1,1,'Email',NULL,NULL,'',NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'',NULL,NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,1),('Note','2013-05-24 13:41:00.000000','2017-02-17 17:02:57.095556','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,0,0,0,1,'Desk',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ASC','',NULL,0,0,NULL,NULL,NULL,0,1,0,0,0,0,0,NULL,1,'Document','fa fa-file-text',NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,1),('Note Seen By','2016-08-29 05:29:16.726172','2016-08-29 06:02:41.531341','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,1,1,0,'Desk',NULL,NULL,'',NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,1),('OAuth Authorization Code','2016-08-24 14:12:13.647159','2017-03-08 14:40:04.113884','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,0,1,1,'Integrations',NULL,'field:authorization_code','',NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'Document',NULL,NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0),('OAuth Bearer Token','2016-08-24 14:10:17.471264','2017-03-08 14:40:04.209039','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,0,1,1,'Integrations',NULL,'field:access_token','',NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'Document',NULL,NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0),('OAuth Client','2016-08-24 14:07:21.955052','2017-03-08 14:40:03.031779','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,0,1,1,'Integrations',NULL,'','','app_name',NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'Document',NULL,NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0),('OAuth Provider Settings','2016-09-03 11:42:42.575525','2016-12-29 14:40:30.718685','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,1,0,1,1,'Integrations',NULL,NULL,'',NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'Setup',NULL,NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,1),('Paciente','2017-09-01 13:29:30.289032','2017-09-01 19:20:24.367341','Administrator','Administrator',0,NULL,NULL,NULL,0,'nombre_completo,cedula_pasaporte',0,0,1,1,'sipDo',NULL,'PAC-.########','UPPER CASE','nombre_completo','foto',NULL,'nombre_completo','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,1,0,0,0,0,NULL,0,'Document','octicon octicon-person',NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,1),('Page','2012-12-20 17:16:49.000000','2017-05-03 17:24:10.162110','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,0,0,0,1,'Core',NULL,'field:page_name',NULL,NULL,NULL,NULL,NULL,'ASC',NULL,NULL,0,0,NULL,NULL,NULL,0,1,0,0,0,0,0,NULL,0,'System','fa fa-file',NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0),('Patch Log','2013-01-17 11:36:45.000000','2016-12-29 14:40:35.048570','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,0,0,0,1,'Core',NULL,'PATCHLOG.#####',NULL,NULL,NULL,NULL,NULL,NULL,'List of patches executed',NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'System','fa fa-cog',NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,1),('Payment Gateway','2015-12-15 22:26:45.221162','2017-03-09 12:40:56.176464','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,0,1,0,'Core',NULL,'field:gateway','',NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,1,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,1),('PayPal Settings','2016-09-21 08:03:01.009852','2016-12-29 14:40:31.574789','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,1,0,1,1,'Integrations',NULL,NULL,'',NULL,NULL,NULL,'modified','DESC',NULL,NULL,1,1,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'System',NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0),('Portal Menu Item','2016-03-30 01:39:20.586927','2017-02-23 00:56:55.063155','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,1,1,0,'Website',NULL,NULL,'',NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,1),('Portal Settings','2016-03-30 01:40:20.001775','2016-12-29 14:40:31.476181','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,1,0,0,1,'Website',NULL,NULL,'',NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0),('Print Format','2013-01-23 19:54:43.000000','2017-05-03 05:58:47.408164','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,0,0,0,1,'Printing',NULL,'Prompt',NULL,NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,1,0,0,0,0,0,NULL,0,NULL,'fa fa-print',NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0),('Print Heading','2013-01-10 16:34:24.000000','2017-05-03 05:59:09.131569','Administrator','Administrator',0,NULL,NULL,NULL,1,'print_heading',0,0,0,0,'Printing',NULL,'field:print_heading',NULL,NULL,NULL,NULL,NULL,'DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,1,1,0,0,0,0,NULL,0,'Setup','fa fa-font',NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,1),('Print Settings','2014-07-17 06:54:20.782907','2017-05-03 05:58:55.562540','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,1,0,0,1,'Printing',NULL,NULL,'',NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'System','fa fa-cog',NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,1),('Property Setter','2013-01-10 16:34:04.000000','2016-12-29 14:39:50.172883','Administrator','Administrator',0,NULL,NULL,NULL,1,'doc_type,property',0,0,0,1,'Custom',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DESC','Property Setter overrides a standard DocType or Field property',NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'Setup','fa fa-glass',NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0),('Razorpay Settings','2016-09-20 03:44:03.799402','2016-12-29 14:40:31.658270','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,1,0,1,1,'Integrations',NULL,NULL,'',NULL,NULL,NULL,'modified','DESC',NULL,NULL,1,1,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'System',NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0),('Report','2013-03-09 15:45:57.000000','2017-02-22 14:42:06.597755','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,0,0,0,1,'Core',NULL,'field:report_name',NULL,NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'System','fa fa-table',NULL,NULL,NULL,'InnoDB',NULL,0,1,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0),('Role','2013-01-08 15:50:01.000000','2017-05-04 11:03:41.533058','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,0,0,0,1,'Core',NULL,'field:role_name',NULL,NULL,NULL,NULL,NULL,'ASC',NULL,NULL,0,0,NULL,NULL,NULL,0,1,0,0,0,0,0,NULL,0,'Document','fa fa-bookmark',NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,1),('Role Permission for Page and Report','2017-02-13 17:33:25.157332','2017-03-11 02:35:32.369043','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,1,0,1,0,'Core',NULL,NULL,'',NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,1,0,0,1,0,0,0,NULL,0,'',NULL,NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,1),('Salutation','2017-04-10 12:17:58.071915','2017-04-10 12:55:18.855578','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,0,1,1,'Contacts',NULL,'field:salutation','',NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'',NULL,NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0),('Social Login Keys','2014-03-04 08:29:52.000000','2016-12-29 14:40:30.397643','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,1,0,0,1,'Integrations',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ASC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'System','icon-signin',NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0),('Standard Reply','2014-06-19 05:20:26.331041','2016-12-29 14:40:02.827994','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,0,0,1,'Email',NULL,'field:subject','',NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,1,1,0,0,0,0,NULL,0,'Document','fa fa-comment',NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0),('Stripe Settings','2017-03-09 17:18:29.458397','2017-03-09 17:19:25.087475','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,1,0,1,0,'Integrations',NULL,NULL,'',NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'',NULL,NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,1),('System Settings','2014-04-17 16:53:52.640856','2017-07-20 22:57:56.466867','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,1,0,0,1,'Core',NULL,NULL,'',NULL,NULL,NULL,NULL,'ASC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'System','fa fa-cog',NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,1),('Tag','2016-05-25 09:43:44.767581','2016-05-31 08:29:01.773065','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,1,0,0,'Core',NULL,'','',NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0),('Tag Category','2016-05-25 09:49:07.125394','2016-12-29 14:40:37.489085','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,0,0,1,'Core',NULL,'field:category_name','Title Case',NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,1,0,0,0,0,NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0),('Tag Doc Category','2016-05-25 13:09:20.996154','2016-05-30 15:04:45.454688','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,1,0,0,'Core',NULL,NULL,'',NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0),('Telefonos','2017-09-01 13:46:35.906729','2017-09-01 13:46:35.906729','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,1,1,1,'sipDo',NULL,NULL,'',NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'',NULL,NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,1),('Test Runner','2017-06-26 10:57:19.976624','2017-07-19 03:22:33.221169','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,1,0,1,1,'Core',NULL,NULL,'',NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'',NULL,NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,1),('ToDo','2012-07-03 13:30:35.000000','2017-07-13 17:44:54.369254','Administrator','Administrator',0,NULL,NULL,NULL,2,'description, reference_type, reference_name',0,0,0,1,'Desk',NULL,'hash',NULL,'description',NULL,NULL,NULL,'DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,1,0,NULL,0,'Setup','fa fa-check',NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,1),('Top Bar Item','2013-02-22 01:28:08.000000','2016-07-11 03:28:09.550365','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,0,1,1,0,'Website',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ASC',NULL,NULL,0,0,0,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'Other',NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0),('Translation','2016-02-17 12:21:16.175465','2016-12-29 14:39:48.571006','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,0,0,1,'Core',NULL,'hash','','source_name',NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,1,0,0,0,0,NULL,0,'Setup',NULL,NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0),('Unhandled Email','2016-04-14 09:41:45.892975','2017-01-20 05:15:57.216825','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,0,0,0,'Email',NULL,NULL,'',NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'Setup',NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0),('User','2014-03-11 14:55:00.000000','2017-07-12 19:24:00.824902','Administrator','Administrator',0,NULL,NULL,NULL,413,'full_name',0,0,0,1,'Core',NULL,NULL,NULL,'full_name','user_image',NULL,NULL,'DESC','Represents a User in the system.',NULL,0,0,0,NULL,NULL,0,1,1,0,0,0,5,NULL,0,'','fa fa-user',NULL,NULL,NULL,'InnoDB',NULL,0,1,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,1),('User Email','2016-03-30 10:04:25.828742','2017-03-29 16:48:51.320616','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,1,1,0,'Core',NULL,NULL,'',NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0),('User Permission','2017-07-17 14:25:27.881871','2017-07-27 22:55:58.647315','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,0,1,1,'Core',NULL,NULL,'','user',NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'',NULL,NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,1),('User Permission for Page and Report','2017-02-13 17:33:25.157332','2017-02-22 18:07:29.954831','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,1,0,1,0,'Core',NULL,NULL,'',NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,1,0,0,1,0,0,0,NULL,0,'',NULL,NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,1),('Version','2014-02-20 17:22:37.000000','2016-12-29 14:39:45.926836','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,0,0,0,1,'Core',NULL,'hash',NULL,'docname',NULL,NULL,NULL,'ASC',NULL,NULL,0,1,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'Setup','fa fa-copy',NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,1),('Web Form','2014-09-01 14:08:48.624556','2017-05-15 18:00:12.750448','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,0,0,1,'Website',NULL,'','','title',NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'Document','icon-edit',NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,1,0,NULL,'published',NULL,NULL,NULL,NULL,0),('Web Form Field','2014-09-01 14:14:14.292173','2017-02-27 15:55:00.850515','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,1,1,0,'Website',NULL,NULL,'',NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0),('Web Page','2013-03-28 10:35:30.000000','2017-06-29 23:01:00.126453','Administrator','Administrator',0,NULL,NULL,NULL,1,'title',0,0,0,1,'Website',NULL,NULL,NULL,'title',NULL,NULL,NULL,'ASC','Page to show on the website\n',NULL,0,0,NULL,NULL,NULL,0,0,1,0,0,0,20,NULL,0,'Document','fa fa-file-alt',NULL,NULL,NULL,NULL,NULL,0,1,NULL,0,0,0,1,1,NULL,'published',NULL,NULL,NULL,NULL,0),('Website Script','2012-12-27 11:51:24.000000','2016-12-29 14:40:38.777912','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,1,0,0,1,'Website',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ASC','Script to attach to all web pages.',NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'Other','fa fa-code',NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0),('Website Settings','2013-04-30 12:58:46.000000','2017-03-07 14:45:46.127265','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,1,0,0,1,'Website',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ASC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,10,NULL,0,'Other','fa fa-cog',NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0),('Website Sidebar','2016-12-29 07:48:06.319665','2016-12-29 07:50:05.633460','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,0,1,1,'Website',NULL,'field:title','',NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,1,0,0,0,0,0,NULL,0,'Document',NULL,NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,1),('Website Sidebar Item','2016-12-29 07:42:26.246725','2016-12-29 07:42:26.246725','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,0,1,1,1,'Website',NULL,NULL,'',NULL,NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'',NULL,NULL,NULL,NULL,'InnoDB',NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,1),('Website Slideshow','2013-03-07 15:53:15.000000','2016-12-29 14:40:39.690960','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,0,0,0,1,'Website',NULL,'field:slideshow_name',NULL,NULL,NULL,NULL,NULL,NULL,'Slideshow like display for the website',NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,10,NULL,0,'Document','fa fa-play',NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0),('Website Slideshow Item','2013-03-07 12:26:33.000000','2016-07-11 03:28:09.983213','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,0,1,1,0,'Website',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,10,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0),('Website Theme','2015-02-18 12:46:38.168929','2016-12-29 14:40:33.634557','Administrator','Administrator',0,NULL,NULL,NULL,0,'',0,0,0,1,'Website',NULL,'field:theme','','',NULL,NULL,'modified','DESC',NULL,NULL,0,0,NULL,NULL,NULL,0,0,1,0,0,0,0,NULL,0,'Setup',NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0),('Workflow','2012-12-28 10:49:55.000000','2017-02-20 13:33:38.497751','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,0,0,0,1,'Workflow',NULL,'field:workflow_name',NULL,NULL,NULL,NULL,NULL,'ASC','Defines workflow states and rules for a document.',NULL,0,0,0,NULL,NULL,0,1,0,0,0,0,0,NULL,0,'Document','fa fa-random',NULL,NULL,NULL,'InnoDB',NULL,0,1,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0),('Workflow Action','2012-12-28 10:49:56.000000','2016-12-29 14:40:34.796187','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,0,0,0,1,'Workflow',NULL,'field:workflow_action_name',NULL,NULL,NULL,NULL,NULL,NULL,'Workflow Action Master',NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,NULL,'fa fa-flag',NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,1),('Workflow Document State','2013-02-22 01:27:36.000000','2016-07-11 03:28:10.056638','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,0,1,1,0,'Workflow',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Represents the states allowed in one document and role assigned to change the state.',NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,'Setup',NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0),('Workflow State','2012-12-28 10:49:56.000000','2017-02-20 13:33:44.011509','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,0,0,0,1,'Workflow',NULL,'field:workflow_state_name',NULL,NULL,NULL,NULL,NULL,'ASC','Workflow state represents the current state of a document.',NULL,0,0,NULL,NULL,NULL,0,0,1,0,0,0,0,NULL,0,'Setup','fa fa-flag',NULL,NULL,NULL,NULL,NULL,0,1,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,1),('Workflow Transition','2013-02-22 01:27:36.000000','2016-07-11 03:28:10.146195','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,0,1,1,0,'Workflow',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Defines actions on states and the next step and allowed roles.',NULL,0,0,NULL,NULL,NULL,0,0,0,0,0,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `tabDocType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabDomain`
--

DROP TABLE IF EXISTS `tabDomain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabDomain` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT '0',
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT '0',
  `_comments` text COLLATE utf8mb4_unicode_ci,
  `domain` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_assign` text COLLATE utf8mb4_unicode_ci,
  `_user_tags` text COLLATE utf8mb4_unicode_ci,
  `_liked_by` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabDomain`
--

LOCK TABLES `tabDomain` WRITE;
/*!40000 ALTER TABLE `tabDomain` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabDomain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabDynamic Link`
--

DROP TABLE IF EXISTS `tabDynamic Link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabDynamic Link` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT '0',
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT '0',
  `link_title` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_doctype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `link_doctype_link_name_index` (`link_doctype`,`link_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabDynamic Link`
--

LOCK TABLES `tabDynamic Link` WRITE;
/*!40000 ALTER TABLE `tabDynamic Link` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabDynamic Link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabEmail Account`
--

DROP TABLE IF EXISTS `tabEmail Account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabEmail Account` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT '0',
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT '0',
  `default_outgoing` int(1) NOT NULL DEFAULT '0',
  `domain` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_id` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auto_reply_message` longtext COLLATE utf8mb4_unicode_ci,
  `use_imap` int(1) NOT NULL DEFAULT '0',
  `use_ssl` int(1) NOT NULL DEFAULT '0',
  `always_use_account_email_id_as_sender` int(1) NOT NULL DEFAULT '0',
  `send_notification_to` text COLLATE utf8mb4_unicode_ci,
  `email_server` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unreplied_for_mins` int(11) NOT NULL DEFAULT '30',
  `default_incoming` int(1) NOT NULL DEFAULT '0',
  `uidvalidity` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_comments` text COLLATE utf8mb4_unicode_ci,
  `smtp_port` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_server` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_failed` int(11) NOT NULL DEFAULT '0',
  `use_tls` int(1) NOT NULL DEFAULT '0',
  `enable_incoming` int(1) NOT NULL DEFAULT '0',
  `attachment_limit` int(11) NOT NULL DEFAULT '1',
  `email_sync_option` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT 'UNSEEN',
  `awaiting_password` int(1) NOT NULL DEFAULT '0',
  `login_id` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_liked_by` text COLLATE utf8mb4_unicode_ci,
  `initial_sync_count` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT '250',
  `enable_auto_reply` int(1) NOT NULL DEFAULT '0',
  `_assign` text COLLATE utf8mb4_unicode_ci,
  `send_unsubscribe_message` int(1) NOT NULL DEFAULT '1',
  `enable_outgoing` int(1) NOT NULL DEFAULT '0',
  `add_signature` int(1) NOT NULL DEFAULT '0',
  `password` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_user_tags` text COLLATE utf8mb4_unicode_ci,
  `email_account_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer` longtext COLLATE utf8mb4_unicode_ci,
  `no_remaining` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uidnext` int(11) NOT NULL DEFAULT '0',
  `login_id_is_different` int(1) NOT NULL DEFAULT '0',
  `append_to` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signature` longtext COLLATE utf8mb4_unicode_ci,
  `notify_if_unreplied` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabEmail Account`
--

LOCK TABLES `tabEmail Account` WRITE;
/*!40000 ALTER TABLE `tabEmail Account` DISABLE KEYS */;
INSERT INTO `tabEmail Account` VALUES ('Notifications','2017-09-01 22:00:14.039651','2017-09-01 20:21:35.109905','Administrator','Administrator',0,NULL,NULL,NULL,0,1,'example.com','notifications@example.com',NULL,0,0,0,NULL,'imap.example.com',30,0,NULL,'',NULL,NULL,'smtp.example.com',0,0,0,1,'UNSEEN',0,NULL,NULL,'250',0,NULL,1,0,0,NULL,NULL,'Notifications','',NULL,0,0,NULL,'',0),('Replies','2017-09-01 22:00:14.060345','2017-09-01 22:00:14.060345','Administrator','Administrator',0,NULL,NULL,NULL,0,0,'example.com','replies@example.com',NULL,0,0,0,NULL,'imap.example.com',30,1,NULL,'',NULL,NULL,'smtp.example.com',0,0,0,1,'UNSEEN',0,NULL,NULL,'250',0,NULL,1,0,0,NULL,NULL,'Replies',NULL,NULL,0,0,NULL,NULL,0);
/*!40000 ALTER TABLE `tabEmail Account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabEmail Alert`
--

DROP TABLE IF EXISTS `tabEmail Alert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabEmail Alert` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT '0',
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT '0',
  `module` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `days_in_advance` int(11) NOT NULL DEFAULT '0',
  `message` longtext COLLATE utf8mb4_unicode_ci,
  `event` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attach_print` int(1) NOT NULL DEFAULT '0',
  `date_changed` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `method` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `set_property_after_alert` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_liked_by` text COLLATE utf8mb4_unicode_ci,
  `_assign` text COLLATE utf8mb4_unicode_ci,
  `is_standard` int(1) NOT NULL DEFAULT '0',
  `_comments` text COLLATE utf8mb4_unicode_ci,
  `property_value` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `document_type` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_user_tags` text COLLATE utf8mb4_unicode_ci,
  `condition` longtext COLLATE utf8mb4_unicode_ci,
  `enabled` int(1) NOT NULL DEFAULT '1',
  `value_changed` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `event` (`event`),
  KEY `document_type` (`document_type`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabEmail Alert`
--

LOCK TABLES `tabEmail Alert` WRITE;
/*!40000 ALTER TABLE `tabEmail Alert` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabEmail Alert` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabEmail Alert Recipient`
--

DROP TABLE IF EXISTS `tabEmail Alert Recipient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabEmail Alert Recipient` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT '0',
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT '0',
  `cc` longtext COLLATE utf8mb4_unicode_ci,
  `email_by_role` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_by_document_field` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `condition` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabEmail Alert Recipient`
--

LOCK TABLES `tabEmail Alert Recipient` WRITE;
/*!40000 ALTER TABLE `tabEmail Alert Recipient` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabEmail Alert Recipient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabEmail Domain`
--

DROP TABLE IF EXISTS `tabEmail Domain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabEmail Domain` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT '0',
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT '0',
  `_assign` text COLLATE utf8mb4_unicode_ci,
  `email_id` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_comments` text COLLATE utf8mb4_unicode_ci,
  `smtp_port` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_server` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `domain_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `use_tls` int(1) NOT NULL DEFAULT '0',
  `_liked_by` text COLLATE utf8mb4_unicode_ci,
  `use_imap` int(1) NOT NULL DEFAULT '0',
  `attachment_limit` int(11) NOT NULL DEFAULT '1',
  `use_ssl` int(1) NOT NULL DEFAULT '0',
  `email_server` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_user_tags` text COLLATE utf8mb4_unicode_ci,
  `append_to` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabEmail Domain`
--

LOCK TABLES `tabEmail Domain` WRITE;
/*!40000 ALTER TABLE `tabEmail Domain` DISABLE KEYS */;
INSERT INTO `tabEmail Domain` VALUES ('example.com','2017-09-01 22:00:14.018246','2017-09-01 22:00:14.018246','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,'account@example.com',NULL,NULL,'smtp.example.com','example.com',0,NULL,1,1,0,'imap.example.com',NULL,NULL),('gmail.com','2017-09-01 20:18:41.293347','2017-09-01 20:22:05.719251','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,'email@gmail.com',NULL,'587','smtp.gmail.com','gmail.com',1,NULL,1,10,1,'imap.gmail.com',NULL,NULL);
/*!40000 ALTER TABLE `tabEmail Domain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabEmail Flag Queue`
--

DROP TABLE IF EXISTS `tabEmail Flag Queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabEmail Flag Queue` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT '0',
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT '0',
  `_liked_by` text COLLATE utf8mb4_unicode_ci,
  `uid` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `communication` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_completed` int(1) NOT NULL DEFAULT '0',
  `_assign` text COLLATE utf8mb4_unicode_ci,
  `flag` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_comments` text COLLATE utf8mb4_unicode_ci,
  `action` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_account` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_user_tags` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabEmail Flag Queue`
--

LOCK TABLES `tabEmail Flag Queue` WRITE;
/*!40000 ALTER TABLE `tabEmail Flag Queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabEmail Flag Queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabEmail Group`
--

DROP TABLE IF EXISTS `tabEmail Group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabEmail Group` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT '0',
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT '0',
  `_liked_by` text COLLATE utf8mb4_unicode_ci,
  `title` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_user_tags` text COLLATE utf8mb4_unicode_ci,
  `_assign` text COLLATE utf8mb4_unicode_ci,
  `total_subscribers` int(11) NOT NULL DEFAULT '0',
  `_comments` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabEmail Group`
--

LOCK TABLES `tabEmail Group` WRITE;
/*!40000 ALTER TABLE `tabEmail Group` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabEmail Group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabEmail Group Member`
--

DROP TABLE IF EXISTS `tabEmail Group Member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabEmail Group Member` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT '0',
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT '0',
  `_liked_by` text COLLATE utf8mb4_unicode_ci,
  `_comments` text COLLATE utf8mb4_unicode_ci,
  `_assign` text COLLATE utf8mb4_unicode_ci,
  `unsubscribed` int(1) NOT NULL DEFAULT '0',
  `_user_tags` text COLLATE utf8mb4_unicode_ci,
  `email` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_group` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  UNIQUE KEY `unique_email_group_email` (`email_group`,`email`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabEmail Group Member`
--

LOCK TABLES `tabEmail Group Member` WRITE;
/*!40000 ALTER TABLE `tabEmail Group Member` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabEmail Group Member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabEmail Queue`
--

DROP TABLE IF EXISTS `tabEmail Queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabEmail Queue` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT '0',
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT '0',
  `status` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT 'Not Sent',
  `reference_doctype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachments` longtext COLLATE utf8mb4_unicode_ci,
  `sender` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `add_unsubscribe_link` int(1) NOT NULL DEFAULT '1',
  `_assign` text COLLATE utf8mb4_unicode_ci,
  `communication` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expose_recipients` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unsubscribe_param` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `send_after` datetime(6) DEFAULT NULL,
  `_comments` text COLLATE utf8mb4_unicode_ci,
  `error` longtext COLLATE utf8mb4_unicode_ci,
  `show_as_cc` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci,
  `unsubscribe_method` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_user_tags` text COLLATE utf8mb4_unicode_ci,
  `message_id` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_liked_by` text COLLATE utf8mb4_unicode_ci,
  `priority` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`name`),
  KEY `communication` (`communication`),
  KEY `message_id` (`message_id`),
  KEY `parent` (`parent`),
  KEY `index_bulk_flush` (`status`,`send_after`,`priority`,`creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabEmail Queue`
--

LOCK TABLES `tabEmail Queue` WRITE;
/*!40000 ALTER TABLE `tabEmail Queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabEmail Queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabEmail Queue Recipient`
--

DROP TABLE IF EXISTS `tabEmail Queue Recipient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabEmail Queue Recipient` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT '0',
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT '0',
  `status` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT 'Not Sent',
  `recipient` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `error` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabEmail Queue Recipient`
--

LOCK TABLES `tabEmail Queue Recipient` WRITE;
/*!40000 ALTER TABLE `tabEmail Queue Recipient` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabEmail Queue Recipient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabEmail Rule`
--

DROP TABLE IF EXISTS `tabEmail Rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabEmail Rule` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT '0',
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT '0',
  `_liked_by` text COLLATE utf8mb4_unicode_ci,
  `email_id` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_user_tags` text COLLATE utf8mb4_unicode_ci,
  `_assign` text COLLATE utf8mb4_unicode_ci,
  `_comments` text COLLATE utf8mb4_unicode_ci,
  `is_spam` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabEmail Rule`
--

LOCK TABLES `tabEmail Rule` WRITE;
/*!40000 ALTER TABLE `tabEmail Rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabEmail Rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabEmail Unsubscribe`
--

DROP TABLE IF EXISTS `tabEmail Unsubscribe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabEmail Unsubscribe` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT '0',
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT '0',
  `reference_doctype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_liked_by` text COLLATE utf8mb4_unicode_ci,
  `_comments` text COLLATE utf8mb4_unicode_ci,
  `_assign` text COLLATE utf8mb4_unicode_ci,
  `global_unsubscribe` int(1) NOT NULL DEFAULT '0',
  `reference_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_user_tags` text COLLATE utf8mb4_unicode_ci,
  `email` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabEmail Unsubscribe`
--

LOCK TABLES `tabEmail Unsubscribe` WRITE;
/*!40000 ALTER TABLE `tabEmail Unsubscribe` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabEmail Unsubscribe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabEmpresa`
--

DROP TABLE IF EXISTS `tabEmpresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabEmpresa` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT '0',
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT '0',
  `_liked_by` text COLLATE utf8mb4_unicode_ci,
  `tipo` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rnc` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `naming_series` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_assign` text COLLATE utf8mb4_unicode_ci,
  `_comments` text COLLATE utf8mb4_unicode_ci,
  `nombre` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_user_tags` text COLLATE utf8mb4_unicode_ci,
  `direccion` text COLLATE utf8mb4_unicode_ci,
  `sitio_web` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  UNIQUE KEY `rnc` (`rnc`),
  UNIQUE KEY `nombre` (`nombre`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabEmpresa`
--

LOCK TABLES `tabEmpresa` WRITE;
/*!40000 ALTER TABLE `tabEmpresa` DISABLE KEYS */;
INSERT INTO `tabEmpresa` VALUES ('ARS-000001','2017-09-01 16:05:57.044317','2017-09-01 16:24:37.970159','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,'ARS','4-01-51645-4','ARS-.######',NULL,NULL,'SENASA',NULL,'Av. 27 de Febrero 232, casi esq. Tiradentes, La Esperilla, Distrito Nacional','http://www.arssenasa.gob.do/'),('ARS-000002','2017-09-01 16:30:04.642753','2017-09-01 16:30:04.642753','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,'ARS','1-01-04992-8','ARS-.######',NULL,NULL,'BMI',NULL,'Calle Agustín Lara No. 45, esquina José A. Soler, Edificio Marina 2do Piso, Ensanche Serrallés, Santo Domingo','http://www.bmi.com.do'),('ARS-000003','2017-09-01 16:50:24.391537','2017-09-01 16:50:24.391537','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,'ARS','1-01-55754-2','ARS-.######',NULL,NULL,'FUTURO',NULL,'Calle Juan Sánchez Ramírez #19, Gazcue, Santo Domingo','http://www.arsfuturo.com/'),('ARS-000004','2017-09-01 16:54:04.478680','2017-09-01 16:54:04.478680','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,'ARS','1-01-02409-7','ARS-.######',NULL,NULL,'GRUPO MÉDICO ASOCIADO (GMA)',NULL,'Av. Independencia No. 701, Gazcue, Santo Domingo','http://www.arsgma.com'),('ARS-000005','2017-09-01 16:55:31.872162','2017-09-01 16:55:31.872162','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,'ARS','1-01-86442-7','ARS-.######',NULL,NULL,'HUMANO',NULL,'Ave. Lope de Vega 36, Santo Domingo','https://humano.com.do/'),('ARS-000006','2017-09-01 16:57:35.809882','2017-09-01 16:57:35.809882','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,'ARS','1-02-30854-3','ARS-.######',NULL,NULL,'MONUMENTAL',NULL,'Calle Del Sol #08, Santiago','http://www.arsmonumental.com.do'),('ARS-000007','2017-09-01 16:58:39.908813','2017-09-01 16:58:39.908813','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,'ARS','1-01-76158-1','ARS-.######',NULL,NULL,'PALIC',NULL,'Av. 27 de Febrero 50, Ed. ARS Palic Salud, Urb. El Vergel, Santo Domingo','http://arspalicsalud.com.do'),('ARS-000008','2017-09-01 17:05:50.186323','2017-09-01 17:05:50.186323','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,'ARS','1-24-00560-4','ARS-.######',NULL,NULL,'UNIVERSAL',NULL,'Av. Winston Churchill No. 1100, Evaristo Morales, Santo Domingo','https://www.arsuniversal.com.do/'),('ARS-000009','2017-09-01 17:07:42.148445','2017-09-01 17:07:42.148445','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,'ARS','1-01-87588-7','ARS-.######',NULL,NULL,'YUNEN',NULL,'Av. Abraham Lincoln No. 849, Ens. Piantini, Santo Domingo','http://www.arsyunen.com/');
/*!40000 ALTER TABLE `tabEmpresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabError Log`
--

DROP TABLE IF EXISTS `tabError Log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabError Log` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT '0',
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT '0',
  `_liked_by` text COLLATE utf8mb4_unicode_ci,
  `_comments` text COLLATE utf8mb4_unicode_ci,
  `_assign` text COLLATE utf8mb4_unicode_ci,
  `error` longtext COLLATE utf8mb4_unicode_ci,
  `seen` int(1) NOT NULL DEFAULT '0',
  `_user_tags` text COLLATE utf8mb4_unicode_ci,
  `method` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabError Log`
--

LOCK TABLES `tabError Log` WRITE;
/*!40000 ALTER TABLE `tabError Log` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabError Log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabError Snapshot`
--

DROP TABLE IF EXISTS `tabError Snapshot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabError Snapshot` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT '0',
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT '0',
  `exception` longtext COLLATE utf8mb4_unicode_ci,
  `_assign` text COLLATE utf8mb4_unicode_ci,
  `timestamp` datetime(6) DEFAULT NULL,
  `evalue` longtext COLLATE utf8mb4_unicode_ci,
  `traceback` longtext COLLATE utf8mb4_unicode_ci,
  `frames` longtext COLLATE utf8mb4_unicode_ci,
  `parent_error_snapshot` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pyver` longtext COLLATE utf8mb4_unicode_ci,
  `_liked_by` text COLLATE utf8mb4_unicode_ci,
  `_comments` text COLLATE utf8mb4_unicode_ci,
  `etype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seen` int(1) NOT NULL DEFAULT '0',
  `_user_tags` text COLLATE utf8mb4_unicode_ci,
  `relapses` int(11) NOT NULL DEFAULT '1',
  `locals` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabError Snapshot`
--

LOCK TABLES `tabError Snapshot` WRITE;
/*!40000 ALTER TABLE `tabError Snapshot` DISABLE KEYS */;
INSERT INTO `tabError Snapshot` VALUES ('b76b632c4d','2017-09-01 13:05:30.564723','2017-09-01 13:05:30.564723','Administrator','Administrator',0,NULL,NULL,NULL,0,'{\n \"args\": \"(\'No module named sipdo\',)\", \n \"message\": \"\'No module named sipdo\'\"\n}',NULL,'2017-09-01 09:54:59.931382','ImportError(\'No module named sipdo\',)','Traceback (most recent call last):\n  File \"/home/frappe/frappe-bench/apps/frappe/frappe/app.py\", line 56, in application\n    response = frappe.handler.handle()\n  File \"/home/frappe/frappe-bench/apps/frappe/frappe/handler.py\", line 21, in handle\n    data = execute_cmd(cmd)\n  File \"/home/frappe/frappe-bench/apps/frappe/frappe/handler.py\", line 52, in execute_cmd\n    return frappe.call(method, **frappe.form_dict)\n  File \"/home/frappe/frappe-bench/apps/frappe/frappe/__init__.py\", line 922, in call\n    return fn(*args, **newargs)\n  File \"/home/frappe/frappe-bench/apps/frappe/frappe/sessions.py\", line 29, in clear\n    clear_global_cache()\n  File \"/home/frappe/frappe-bench/apps/frappe/frappe/sessions.py\", line 57, in clear_global_cache\n    frappe.setup_module_map()\n  File \"/home/frappe/frappe-bench/apps/frappe/frappe/__init__.py\", line 855, in setup_module_map\n    for module in get_module_list(app):\n  File \"/home/frappe/frappe-bench/apps/frappe/frappe/__init__.py\", line 729, in get_module_list\n    return get_file_items(os.path.join(os.path.dirname(get_module(app_name).__file__), \"modules.txt\"))\n  File \"/home/frappe/frappe-bench/apps/frappe/frappe/__init__.py\", line 687, in get_module\n    return importlib.import_module(modulename)\n  File \"/usr/lib/python2.7/importlib/__init__.py\", line 37, in import_module\n    __import__(name)\nImportError: No module named sipdo\n','[\n {\n  \"call\": \"(request=<Request \'http://10.0.0.14/\' [POST]>)\", \n  \"dump\": {\n   \"frappe. handler\": \"<module \'frappe.handler\' from \'/home/frappe/frappe-bench/apps/frappe/frappe/handler.pyc\'>\", \n   \"frappe.handler. handle\": \"<function handle>\", \n   \"global frappe\": \"<module \'frappe\' from \'/home/frappe/frappe-bench/apps/frappe/frappe/__init__.pyc\'>\", \n   \"response\": \"None\"\n  }, \n  \"file\": \"/home/frappe/frappe-bench/apps/frappe/frappe/app.py\", \n  \"func\": \"application\", \n  \"lines\": {\n   \"54\": \"\", \n   \"55\": \"\\t\\tif frappe.local.form_dict.cmd:\", \n   \"56\": \"\\t\\t\\tresponse = frappe.handler.handle()\", \n   \"57\": \"\", \n   \"58\": \"\\t\\telif frappe.request.path.startswith(\\\"/api/\\\"):\"\n  }, \n  \"lnum\": 56\n }, \n {\n  \"call\": \"()\", \n  \"dump\": {\n   \"cmd\": \"u\'frappe.sessions.clear\'\", \n   \"data\": \"None\", \n   \"global execute_cmd\": \"<function execute_cmd>\"\n  }, \n  \"file\": \"/home/frappe/frappe-bench/apps/frappe/frappe/handler.py\", \n  \"func\": \"handle\", \n  \"lines\": {\n   \"19\": \"\", \n   \"20\": \"\\tif cmd!=\'login\':\", \n   \"21\": \"\\t\\tdata = execute_cmd(cmd)\", \n   \"22\": \"\", \n   \"23\": \"\\tif data:\"\n  }, \n  \"lnum\": 21\n }, \n {\n  \"call\": \"(cmd=u\'frappe.sessions.clear\', from_async=False)\", \n  \"dump\": {\n   \"frappe. call\": \"<function call>\", \n   \"frappe. form_dict\": \"{\'cmd\': u\'frappe.sessions.clear\'}\", \n   \"global frappe\": \"<module \'frappe\' from \'/home/frappe/frappe-bench/apps/frappe/frappe/__init__.pyc\'>\", \n   \"method\": \"<function clear>\"\n  }, \n  \"file\": \"/home/frappe/frappe-bench/apps/frappe/frappe/handler.py\", \n  \"func\": \"execute_cmd\", \n  \"lines\": {\n   \"50\": \"\\tis_whitelisted(method)\", \n   \"51\": \"\", \n   \"52\": \"\\treturn frappe.call(method, **frappe.form_dict)\", \n   \"53\": \"\", \n   \"54\": \"\"\n  }, \n  \"lnum\": 52\n }, \n {\n  \"call\": \"(fn=<function clear>, *args=(), **kwargs={\'cmd\': u\'frappe.sessions.clear\'})\", \n  \"dump\": {\n   \"args\": \"()\", \n   \"fn\": \"<function clear>\", \n   \"newargs\": \"{}\"\n  }, \n  \"file\": \"/home/frappe/frappe-bench/apps/frappe/frappe/__init__.py\", \n  \"func\": \"call\", \n  \"lines\": {\n   \"920\": \"\\t\\tdel newargs[\\\"flags\\\"]\", \n   \"921\": \"\", \n   \"922\": \"\\treturn fn(*args, **newargs)\", \n   \"923\": \"\", \n   \"924\": \"def make_property_setter(args, ignore_validate=False, validate_fields_for_doctype=True):\"\n  }, \n  \"lnum\": 922\n }, \n {\n  \"call\": \"(user=None)\", \n  \"dump\": {\n   \"global clear_global_cache\": \"<function clear_global_cache>\"\n  }, \n  \"file\": \"/home/frappe/frappe-bench/apps/frappe/frappe/sessions.py\", \n  \"func\": \"clear\", \n  \"lines\": {\n   \"27\": \"\\tfrappe.local.db.commit()\", \n   \"28\": \"\\tclear_cache(frappe.session.user)\", \n   \"29\": \"\\tclear_global_cache()\", \n   \"30\": \"\\tfrappe.response[\'message\'] = _(\\\"Cache Cleared\\\")\", \n   \"31\": \"\"\n  }, \n  \"lnum\": 29\n }, \n {\n  \"call\": \"()\", \n  \"dump\": {\n   \"frappe. setup_module_map\": \"<function setup_module_map>\", \n   \"global frappe\": \"<module \'frappe\' from \'/home/frappe/frappe-bench/apps/frappe/frappe/__init__.pyc\'>\"\n  }, \n  \"file\": \"/home/frappe/frappe-bench/apps/frappe/frappe/sessions.py\", \n  \"func\": \"clear_global_cache\", \n  \"lines\": {\n   \"55\": \"\\t\\t\\\"app_modules\\\", \\\"module_app\\\", \\\"notification_config\\\", \'system_settings\'\", \n   \"56\": \"\\t\\t\'scheduler_events\', \'time_zone\'])\", \n   \"57\": \"\\tfrappe.setup_module_map()\", \n   \"58\": \"\", \n   \"59\": \"\"\n  }, \n  \"lnum\": 57\n }, \n {\n  \"call\": \"()\", \n  \"dump\": {\n   \"app\": \"u\'sipdo\'\", \n   \"global get_module_list\": \"<function get_module_list>\", \n   \"module\": \"u\'regional\'\"\n  }, \n  \"file\": \"/home/frappe/frappe-bench/apps/frappe/frappe/__init__.py\", \n  \"func\": \"setup_module_map\", \n  \"lines\": {\n   \"853\": \"\\t\\t\\tif app==\\\"webnotes\\\": app=\\\"frappe\\\"\", \n   \"854\": \"\\t\\t\\tlocal.app_modules.setdefault(app, [])\", \n   \"855\": \"\\t\\t\\tfor module in get_module_list(app):\", \n   \"856\": \"\\t\\t\\t\\tmodule = scrub(module)\", \n   \"857\": \"\\t\\t\\t\\tlocal.module_app[module] = app\"\n  }, \n  \"lnum\": 855\n }, \n {\n  \"call\": \"(app_name=u\'sipdo\')\", \n  \"dump\": {\n   \").__file__\": \"undefined\", \n   \"app_name\": \"u\'sipdo\'\", \n   \"global get_file_items\": \"<function get_file_items>\", \n   \"global get_module\": \"<function get_module>\", \n   \"global os\": \"<module \'os\' from \'/home/frappe/frappe-bench/env/lib/python2.7/os.pyc\'>\", \n   \"os. path\": \"<module \'posixpath\' from \'/home/frappe/frappe-bench/env/lib/python2.7/posixpath.pyc\'>\", \n   \"os.path. dirname\": \"<function dirname>\", \n   \"os.path. join\": \"<function join>\"\n  }, \n  \"file\": \"/home/frappe/frappe-bench/apps/frappe/frappe/__init__.py\", \n  \"func\": \"get_module_list\", \n  \"lines\": {\n   \"727\": \"def get_module_list(app_name):\", \n   \"728\": \"\\t\\\"\\\"\\\"Get list of modules for given all via `app/modules.txt`.\\\"\\\"\\\"\", \n   \"729\": \"\\treturn get_file_items(os.path.join(os.path.dirname(get_module(app_name).__file__), \\\"modules.txt\\\"))\", \n   \"730\": \"\", \n   \"731\": \"def get_all_apps(with_internal_apps=True, sites_path=None):\"\n  }, \n  \"lnum\": 729\n }, \n {\n  \"call\": \"(modulename=u\'sipdo\')\", \n  \"dump\": {\n   \"global importlib\": \"<module \'importlib\' from \'/usr/lib/python2.7/importlib/__init__.pyc\'>\", \n   \"importlib. import_module\": \"<function import_module>\", \n   \"modulename\": \"u\'sipdo\'\"\n  }, \n  \"file\": \"/home/frappe/frappe-bench/apps/frappe/frappe/__init__.py\", \n  \"func\": \"get_module\", \n  \"lines\": {\n   \"685\": \"def get_module(modulename):\", \n   \"686\": \"\\t\\\"\\\"\\\"Returns a module object for given Python module name using `importlib.import_module`.\\\"\\\"\\\"\", \n   \"687\": \"\\treturn importlib.import_module(modulename)\", \n   \"688\": \"\", \n   \"689\": \"def scrub(txt):\"\n  }, \n  \"lnum\": 687\n }, \n {\n  \"call\": \"(name=u\'sipdo\', package=None)\", \n  \"dump\": {\n   \"builtin __import__\": \"<built-in function __import__>\", \n   \"name\": \"u\'sipdo\'\"\n  }, \n  \"file\": \"/usr/lib/python2.7/importlib/__init__.py\", \n  \"func\": \"import_module\", \n  \"lines\": {\n   \"34\": \"                break\", \n   \"35\": \"            level += 1\", \n   \"36\": \"        name = _resolve_name(name[level:], package, level)\", \n   \"37\": \"    __import__(name)\", \n   \"38\": \"    return sys.modules[name]\"\n  }, \n  \"lnum\": 37\n }\n]',NULL,'Python 2.7.12: /home/frappe/frappe-bench/env/bin/python (prefix: /home/frappe/frappe-bench/env)',NULL,NULL,'&lt;type \'exceptions.importerror\'=\"\"&gt;&lt;/type&gt;',0,NULL,1,'{\n \"name\": \"u\'sipdo\'\", \n \"package\": \"None\"\n}');
/*!40000 ALTER TABLE `tabError Snapshot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabEvent`
--

DROP TABLE IF EXISTS `tabEvent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabEvent` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT '0',
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT '0',
  `event_type` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT 'blue',
  `tuesday` int(1) NOT NULL DEFAULT '0',
  `all_day` int(1) NOT NULL DEFAULT '0',
  `_liked_by` text COLLATE utf8mb4_unicode_ci,
  `thursday` int(1) NOT NULL DEFAULT '0',
  `saturday` int(1) NOT NULL DEFAULT '0',
  `subject` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `repeat_this_event` int(1) NOT NULL DEFAULT '0',
  `_comments` text COLLATE utf8mb4_unicode_ci,
  `repeat_till` date DEFAULT NULL,
  `sunday` int(1) NOT NULL DEFAULT '0',
  `send_reminder` int(1) NOT NULL DEFAULT '1',
  `ref_type` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_assign` text COLLATE utf8mb4_unicode_ci,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `monday` int(1) NOT NULL DEFAULT '0',
  `friday` int(1) NOT NULL DEFAULT '0',
  `wednesday` int(1) NOT NULL DEFAULT '0',
  `_seen` text COLLATE utf8mb4_unicode_ci,
  `_user_tags` text COLLATE utf8mb4_unicode_ci,
  `starts_on` datetime(6) DEFAULT NULL,
  `ends_on` datetime(6) DEFAULT NULL,
  `repeat_on` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `event_type` (`event_type`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabEvent`
--

LOCK TABLES `tabEvent` WRITE;
/*!40000 ALTER TABLE `tabEvent` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabEvent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabFeedback Request`
--

DROP TABLE IF EXISTS `tabFeedback Request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabFeedback Request` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT '0',
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT '0',
  `reference_doctype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_assign` text COLLATE utf8mb4_unicode_ci,
  `reference_communication` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_user_tags` text COLLATE utf8mb4_unicode_ci,
  `reference_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_sent` int(1) NOT NULL DEFAULT '0',
  `_liked_by` text COLLATE utf8mb4_unicode_ci,
  `_comments` text COLLATE utf8mb4_unicode_ci,
  `key` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_manual` int(1) NOT NULL DEFAULT '0',
  `feedback_trigger` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_feedback_submitted` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabFeedback Request`
--

LOCK TABLES `tabFeedback Request` WRITE;
/*!40000 ALTER TABLE `tabFeedback Request` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabFeedback Request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabFeedback Trigger`
--

DROP TABLE IF EXISTS `tabFeedback Trigger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabFeedback Trigger` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT '0',
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT '0',
  `condition` text COLLATE utf8mb4_unicode_ci,
  `check_communication` int(1) NOT NULL DEFAULT '1',
  `email_fieldname` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_field` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_assign` text COLLATE utf8mb4_unicode_ci,
  `enabled` int(1) NOT NULL DEFAULT '0',
  `_liked_by` text COLLATE utf8mb4_unicode_ci,
  `_comments` text COLLATE utf8mb4_unicode_ci,
  `message` longtext COLLATE utf8mb4_unicode_ci,
  `document_type` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_user_tags` text COLLATE utf8mb4_unicode_ci,
  `subject` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabFeedback Trigger`
--

LOCK TABLES `tabFeedback Trigger` WRITE;
/*!40000 ALTER TABLE `tabFeedback Trigger` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabFeedback Trigger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabFile`
--

DROP TABLE IF EXISTS `tabFile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabFile` (
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT '0',
  `parent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT '0',
  `file_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_url` longtext COLLATE utf8mb4_unicode_ci,
  `module` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attached_to_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_size` int(11) NOT NULL DEFAULT '0',
  `attached_to_doctype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lft` int(11) NOT NULL DEFAULT '0',
  `is_attachments_folder` int(1) NOT NULL DEFAULT '0',
  `is_folder` int(1) NOT NULL DEFAULT '0',
  `content_hash` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rgt` int(11) NOT NULL DEFAULT '0',
  `_comments` text COLLATE utf8mb4_unicode_ci,
  `is_home_folder` int(1) NOT NULL DEFAULT '0',
  `folder` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_liked_by` text COLLATE utf8mb4_unicode_ci,
  `_assign` text COLLATE utf8mb4_unicode_ci,
  `_user_tags` text COLLATE utf8mb4_unicode_ci,
  `is_private` int(1) NOT NULL DEFAULT '0',
  `old_parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail_url` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `attached_to_name` (`attached_to_name`),
  KEY `attached_to_doctype` (`attached_to_doctype`),
  KEY `attached_to_doctype_attached_to_name_index` (`attached_to_doctype`,`attached_to_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabFile`
--

LOCK TABLES `tabFile` WRITE;
/*!40000 ALTER TABLE `tabFile` DISABLE KEYS */;
INSERT INTO `tabFile` VALUES ('3742804980','2017-09-01 19:36:51.490971','2017-09-01 19:36:51.641323','Administrator','Administrator',0,NULL,NULL,NULL,0,'WhatsApp_Image_2017-09-01_at_7.35.05_PM.jpeg','/private/files/WhatsApp_Image_2017-09-01_at_7.35.05_PM.jpeg',NULL,'PAC-00000001',71354,'Paciente',3,0,0,'4487ffef5ee2cce8e27ce08cd337528b',4,NULL,0,'Home/Attachments',NULL,NULL,NULL,1,'Home/Attachments',NULL),('39e843986c','2017-09-01 20:12:20.531627','2017-09-01 20:12:20.669205','Administrator','Administrator',0,NULL,NULL,NULL,0,'Gibran.jpg','/private/files/Gibran.jpg',NULL,'PAC-00000002',36451,'Paciente',5,0,0,'8c84cfd157d0a704cee447475a90fa97',6,NULL,0,'Home/Attachments',NULL,NULL,NULL,1,'Home/Attachments',NULL),('Home','2017-09-01 22:00:14.135726','2017-09-01 20:12:20.650742','Administrator','Administrator',0,NULL,NULL,NULL,0,'Home',NULL,NULL,NULL,107805,NULL,1,0,1,NULL,8,NULL,1,NULL,NULL,NULL,NULL,0,'',NULL),('Home/Attachments','2017-09-01 22:00:14.154127','2017-09-01 20:12:20.650742','Administrator','Administrator',0,NULL,NULL,NULL,0,'Attachments',NULL,NULL,NULL,107805,NULL,2,1,1,NULL,7,NULL,0,'Home',NULL,NULL,NULL,0,'Home',NULL);
/*!40000 ALTER TABLE `tabFile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabFooter Item`
--

DROP TABLE IF EXISTS `tabFooter Item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabFooter Item` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT '0',
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT '0',
  `url` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_label` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabFooter Item`
--

LOCK TABLES `tabFooter Item` WRITE;
/*!40000 ALTER TABLE `tabFooter Item` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabFooter Item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabGSuite Templates`
--

DROP TABLE IF EXISTS `tabGSuite Templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabGSuite Templates` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT '0',
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT '0',
  `_liked_by` text COLLATE utf8mb4_unicode_ci,
  `template_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_assign` text COLLATE utf8mb4_unicode_ci,
  `_comments` text COLLATE utf8mb4_unicode_ci,
  `destination_id` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `related_doctype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_user_tags` text COLLATE utf8mb4_unicode_ci,
  `template_id` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `document_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT 'New Document for {name} ',
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabGSuite Templates`
--

LOCK TABLES `tabGSuite Templates` WRITE;
/*!40000 ALTER TABLE `tabGSuite Templates` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabGSuite Templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabGender`
--

DROP TABLE IF EXISTS `tabGender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabGender` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT '0',
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT '0',
  `gender` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_assign` text COLLATE utf8mb4_unicode_ci,
  `_user_tags` text COLLATE utf8mb4_unicode_ci,
  `_comments` text COLLATE utf8mb4_unicode_ci,
  `_liked_by` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabGender`
--

LOCK TABLES `tabGender` WRITE;
/*!40000 ALTER TABLE `tabGender` DISABLE KEYS */;
INSERT INTO `tabGender` VALUES ('Female','2017-09-01 12:38:04.607364','2017-09-01 12:38:04.607364','Administrator','Administrator',0,NULL,NULL,NULL,0,'Female',NULL,NULL,NULL,NULL),('Male','2017-09-01 12:38:04.580568','2017-09-01 12:38:04.580568','Administrator','Administrator',0,NULL,NULL,NULL,0,'Male',NULL,NULL,NULL,NULL),('Other','2017-09-01 12:38:04.621547','2017-09-01 12:38:04.621547','Administrator','Administrator',0,NULL,NULL,NULL,0,'Other',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tabGender` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabHas Domain`
--

DROP TABLE IF EXISTS `tabHas Domain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabHas Domain` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT '0',
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT '0',
  `domain` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabHas Domain`
--

LOCK TABLES `tabHas Domain` WRITE;
/*!40000 ALTER TABLE `tabHas Domain` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabHas Domain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabHas Role`
--

DROP TABLE IF EXISTS `tabHas Role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabHas Role` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT '0',
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT '0',
  `role` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabHas Role`
--

LOCK TABLES `tabHas Role` WRITE;
/*!40000 ALTER TABLE `tabHas Role` DISABLE KEYS */;
INSERT INTO `tabHas Role` VALUES ('0b3ab85a70','2017-09-01 22:00:13.499278','2017-09-01 22:00:16.008514','Administrator','Administrator',0,'Administrator','roles','User',4,'Accounts User'),('0bcee752f6','2017-09-01 22:00:13.499278','2017-09-01 22:00:16.008514','Administrator','Administrator',0,'Administrator','roles','User',7,'Guest'),('0e7fa3d50b','2017-09-01 22:00:13.499278','2017-09-01 22:00:16.008514','Administrator','Administrator',0,'Administrator','roles','User',12,'Newsletter Manager'),('14df77c1c4','2013-02-14 17:37:37.000000','2017-09-01 21:59:59.127117','Administrator','Administrator',0,'desktop','roles','Page',1,'All'),('15dcf85371','2017-09-01 22:00:13.499278','2017-09-01 22:00:16.008514','Administrator','Administrator',0,'Administrator','roles','User',14,'Purchase Master Manager'),('15e735e4dc','2017-09-01 22:00:13.499278','2017-09-01 22:00:16.008514','Administrator','Administrator',0,'Administrator','roles','User',9,'Knowledge Base Editor'),('190ef7b41f','2017-09-01 22:00:13.573550','2017-09-01 22:00:16.008514','Administrator','Administrator',0,'Administrator','roles','User',2,'System Manager'),('197b721dfd','2017-09-01 12:38:02.964693','2017-09-01 12:38:03.412982','Administrator','Administrator',0,'lewin.villar@gmail.com','roles','User',11,'Purchase Master Manager'),('1b8ae793ac','2017-09-01 22:00:13.499278','2017-09-01 22:00:16.008514','Administrator','Administrator',0,'Administrator','roles','User',19,'Sales User'),('20fed6d364','2017-09-01 22:00:13.499278','2017-09-01 22:00:16.008514','Administrator','Administrator',0,'Administrator','roles','User',5,'All'),('2211e6e816','2017-09-01 12:38:02.964693','2017-09-01 12:38:03.412982','Administrator','Administrator',0,'lewin.villar@gmail.com','roles','User',16,'Sales User'),('2998b5eec1','2017-09-01 22:00:13.499278','2017-09-01 22:00:16.008514','Administrator','Administrator',0,'Administrator','roles','User',15,'Purchase User'),('2a221cbc4f','2017-09-01 22:00:13.499278','2017-09-01 22:00:16.008514','Administrator','Administrator',0,'Administrator','roles','User',20,'Website Manager'),('2fed8636b6','2016-08-18 16:44:14.322642','2017-09-01 21:59:59.190093','Administrator','Administrator',0,'background_jobs','roles','Page',1,'System Manager'),('30c48b64c2','2017-09-01 22:00:13.499278','2017-09-01 22:00:16.008514','Administrator','Administrator',0,'Administrator','roles','User',8,'Knowledge Base Contributor'),('38071cd28e','2017-01-19 12:57:22.881566','2017-09-01 22:00:08.691627','Administrator','Administrator',0,'Addresses And Contacts','roles','Report',4,'Accounts User'),('42eb59c6c5','2017-09-01 22:00:13.499278','2017-09-01 22:00:16.008514','Administrator','Administrator',0,'Administrator','roles','User',11,'Maintenance User'),('431bc9d7fe','2017-09-01 12:38:02.964693','2017-09-01 12:38:03.412982','Administrator','Administrator',0,'lewin.villar@gmail.com','roles','User',13,'Report Manager'),('48d35e43a4','2017-09-01 22:00:13.499278','2017-09-01 22:00:16.008514','Administrator','Administrator',0,'Administrator','roles','User',6,'Blogger'),('49efb32c5d','2013-10-04 13:49:33.000000','2017-09-01 12:38:04.116246','Administrator','Administrator',0,'setup-wizard','roles','Page',1,'Administrator'),('51f8ad55d9','2017-02-05 20:38:21.890174','2017-09-01 21:59:59.347500','Administrator','Administrator',0,'Feedback Ratings','roles','Report',1,'System Manager'),('5889c1c83a','2017-09-01 22:00:13.499278','2017-09-01 22:00:16.008514','Administrator','Administrator',0,'Administrator','roles','User',1,'Administrator'),('5c592e00d1','2017-09-01 22:00:13.499278','2017-09-01 22:00:16.008514','Administrator','Administrator',0,'Administrator','roles','User',18,'Sales Master Manager'),('5f45abcdbd','2017-09-01 12:38:02.964693','2017-09-01 12:38:03.412982','Administrator','Administrator',0,'lewin.villar@gmail.com','roles','User',4,'Blogger'),('69b8b80f28','2017-09-01 12:38:02.964693','2017-09-01 12:38:03.412982','Administrator','Administrator',0,'lewin.villar@gmail.com','roles','User',9,'Newsletter Manager'),('6a7d8e49c0','2017-09-01 12:38:02.964693','2017-09-01 12:38:03.412982','Administrator','Administrator',0,'lewin.villar@gmail.com','roles','User',3,'Accounts User'),('6f62242fce','2015-02-05 06:01:35.060098','2017-09-01 21:59:59.309095','Administrator','Administrator',0,'Document Share Report','roles','Report',1,'System Manager'),('6fc8f03f26','2017-09-01 12:38:02.964693','2017-09-01 12:38:03.412982','Administrator','Administrator',0,'lewin.villar@gmail.com','roles','User',18,'Website Manager'),('7068b547b6','2016-06-02 18:14:53.475842','2017-09-01 21:59:59.236083','Administrator','Administrator',0,'usage-info','roles','Page',1,'System Manager'),('7580b3fad6','2013-01-01 11:00:01.000000','2017-09-01 21:59:59.214117','Administrator','Administrator',0,'permission-manager','roles','Page',1,'System Manager'),('7754a232c9','2017-09-01 22:00:13.499278','2017-09-01 22:00:16.008514','Administrator','Administrator',0,'Administrator','roles','User',10,'Maintenance Manager'),('7d5e773b8d','2017-01-19 12:57:22.881566','2017-09-01 22:00:08.691627','Administrator','Administrator',0,'Addresses And Contacts','roles','Report',3,'Maintenance User'),('8a5f73b263','2017-09-01 12:38:02.964693','2017-09-01 12:38:03.412982','Administrator','Administrator',0,'lewin.villar@gmail.com','roles','User',10,'Purchase Manager'),('8d34519930','2017-09-01 12:38:02.964693','2017-09-01 12:38:03.412982','Administrator','Administrator',0,'lewin.villar@gmail.com','roles','User',12,'Purchase User'),('8d57382f65','2013-12-23 11:01:52.000000','2017-09-01 22:00:06.054287','Administrator','Administrator',0,'applications','roles','Page',1,'System Manager'),('8d5da41f7d','2017-09-01 22:00:13.499278','2017-09-01 22:00:16.008514','Administrator','Administrator',0,'Administrator','roles','User',13,'Purchase Manager'),('8f1bcf9351','2017-01-19 12:57:22.881566','2017-09-01 22:00:08.691627','Administrator','Administrator',0,'Addresses And Contacts','roles','Report',1,'Sales User'),('8f5ab167e5','2015-09-24 01:26:06.225378','2017-09-01 22:00:05.999513','Administrator','Administrator',0,'backups','roles','Page',1,'System Manager'),('92e1fb7468','2013-02-25 14:26:30.000000','2017-09-01 22:00:06.082773','Administrator','Administrator',0,'ToDo','roles','Report',1,'System Manager'),('93a91fad1a','2017-09-01 12:38:03.163652','2017-09-01 12:38:03.412982','Administrator','Administrator',0,'lewin.villar@gmail.com','roles','User',1,'System Manager'),('9d1b490014','2012-06-14 18:44:56.000000','2017-09-01 22:00:06.012651','Administrator','Administrator',0,'chat','roles','Page',1,'All'),('9ec85e4718','2017-09-01 22:00:13.499278','2017-09-01 22:00:16.008514','Administrator','Administrator',0,'Administrator','roles','User',17,'Sales Manager'),('a063662069','2017-09-01 12:38:02.964693','2017-09-01 12:38:03.412982','Administrator','Administrator',0,'lewin.villar@gmail.com','roles','User',2,'Accounts Manager'),('a6c3ae9137','2017-09-01 22:00:13.499278','2017-09-01 22:00:16.008514','Administrator','Administrator',0,'Administrator','roles','User',3,'Accounts Manager'),('ab46dc9e5a','2017-09-01 12:38:02.964693','2017-09-01 12:38:03.412982','Administrator','Administrator',0,'lewin.villar@gmail.com','roles','User',7,'Maintenance Manager'),('b1097898ac','2015-01-27 04:35:43.872918','2017-09-01 22:00:08.125283','Administrator','Administrator',0,'print-format-builder','roles','Page',1,'System Manager'),('b239118489','2017-09-01 22:00:13.499278','2017-09-01 22:00:16.008514','Administrator','Administrator',0,'Administrator','roles','User',16,'Report Manager'),('cce4b06fec','2017-09-01 12:38:02.964693','2017-09-01 12:38:03.412982','Administrator','Administrator',0,'lewin.villar@gmail.com','roles','User',5,'Knowledge Base Contributor'),('cea231919c','2013-04-09 11:45:31.000000','2017-09-01 22:00:06.028127','Administrator','Administrator',0,'activity','roles','Page',1,'All'),('d01196467d','2017-09-01 12:38:02.964693','2017-09-01 12:38:03.412982','Administrator','Administrator',0,'lewin.villar@gmail.com','roles','User',8,'Maintenance User'),('d7b9fd5d58','2017-09-01 12:38:02.964693','2017-09-01 12:38:03.412982','Administrator','Administrator',0,'lewin.villar@gmail.com','roles','User',15,'Sales Master Manager'),('dd78d74e74','2014-06-03 05:20:35.218263','2017-09-01 21:59:59.325956','Administrator','Administrator',0,'Permitted Documents For User','roles','Report',1,'System Manager'),('ddf63763d9','2017-01-19 12:57:22.881566','2017-09-01 22:00:08.691627','Administrator','Administrator',0,'Addresses And Contacts','roles','Report',2,'Purchase User'),('e5a6e14bb2','2017-09-01 12:38:02.964693','2017-09-01 12:38:03.412982','Administrator','Administrator',0,'lewin.villar@gmail.com','roles','User',6,'Knowledge Base Editor'),('ef535714f0','2017-09-01 22:00:13.741958','2017-09-01 22:00:13.741958','Administrator','Administrator',0,'Guest','roles','User',1,'Guest'),('f6b7fd598c','2017-09-01 12:38:02.964693','2017-09-01 12:38:03.412982','Administrator','Administrator',0,'lewin.villar@gmail.com','roles','User',14,'Sales Manager');
/*!40000 ALTER TABLE `tabHas Role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabHelp Article`
--

DROP TABLE IF EXISTS `tabHelp Article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabHelp Article` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT '0',
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT '0',
  `category` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_assign` text COLLATE utf8mb4_unicode_ci,
  `author` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT 'user_fullname',
  `title` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_comments` text COLLATE utf8mb4_unicode_ci,
  `route` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `_liked_by` text COLLATE utf8mb4_unicode_ci,
  `likes` int(11) NOT NULL DEFAULT '0',
  `published` int(1) NOT NULL DEFAULT '0',
  `_user_tags` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabHelp Article`
--

LOCK TABLES `tabHelp Article` WRITE;
/*!40000 ALTER TABLE `tabHelp Article` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabHelp Article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabHelp Category`
--

DROP TABLE IF EXISTS `tabHelp Category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabHelp Category` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT '0',
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT '0',
  `_assign` text COLLATE utf8mb4_unicode_ci,
  `_comments` text COLLATE utf8mb4_unicode_ci,
  `route` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published` int(1) NOT NULL DEFAULT '0',
  `help_articles` int(11) NOT NULL DEFAULT '0',
  `_liked_by` text COLLATE utf8mb4_unicode_ci,
  `category_description` text COLLATE utf8mb4_unicode_ci,
  `_user_tags` text COLLATE utf8mb4_unicode_ci,
  `category_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabHelp Category`
--

LOCK TABLES `tabHelp Category` WRITE;
/*!40000 ALTER TABLE `tabHelp Category` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabHelp Category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabIntegration Request`
--

DROP TABLE IF EXISTS `tabIntegration Request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabIntegration Request` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT '0',
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT '0',
  `status` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT 'Queued',
  `reference_doctype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_assign` text COLLATE utf8mb4_unicode_ci,
  `integration_type` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_user_tags` text COLLATE utf8mb4_unicode_ci,
  `integration_request_service` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_liked_by` text COLLATE utf8mb4_unicode_ci,
  `_comments` text COLLATE utf8mb4_unicode_ci,
  `error` longtext COLLATE utf8mb4_unicode_ci,
  `reference_docname` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `output` longtext COLLATE utf8mb4_unicode_ci,
  `data` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabIntegration Request`
--

LOCK TABLES `tabIntegration Request` WRITE;
/*!40000 ALTER TABLE `tabIntegration Request` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabIntegration Request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabKanban Board`
--

DROP TABLE IF EXISTS `tabKanban Board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabKanban Board` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT '0',
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT '0',
  `reference_doctype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_liked_by` text COLLATE utf8mb4_unicode_ci,
  `_user_tags` text COLLATE utf8mb4_unicode_ci,
  `_assign` text COLLATE utf8mb4_unicode_ci,
  `private` int(1) NOT NULL DEFAULT '0',
  `filters` text COLLATE utf8mb4_unicode_ci,
  `kanban_board_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `field_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_comments` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`name`),
  UNIQUE KEY `kanban_board_name` (`kanban_board_name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabKanban Board`
--

LOCK TABLES `tabKanban Board` WRITE;
/*!40000 ALTER TABLE `tabKanban Board` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabKanban Board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabKanban Board Column`
--

DROP TABLE IF EXISTS `tabKanban Board Column`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabKanban Board Column` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT '0',
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT '0',
  `status` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT 'Active',
  `indicator` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT 'darkgrey',
  `order` longtext COLLATE utf8mb4_unicode_ci,
  `column_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabKanban Board Column`
--

LOCK TABLES `tabKanban Board Column` WRITE;
/*!40000 ALTER TABLE `tabKanban Board Column` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabKanban Board Column` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabLanguage`
--

DROP TABLE IF EXISTS `tabLanguage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabLanguage` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT '0',
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT '0',
  `_assign` text COLLATE utf8mb4_unicode_ci,
  `_comments` text COLLATE utf8mb4_unicode_ci,
  `language_code` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flag` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_liked_by` text COLLATE utf8mb4_unicode_ci,
  `based_on` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_user_tags` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabLanguage`
--

LOCK TABLES `tabLanguage` WRITE;
/*!40000 ALTER TABLE `tabLanguage` DISABLE KEYS */;
INSERT INTO `tabLanguage` VALUES ('am','2017-09-01 22:00:15.515913','2017-09-01 22:00:15.515913','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'am',NULL,NULL,NULL,'አማርኛ',NULL),('ar','2017-09-01 22:00:15.520465','2017-09-01 22:00:15.520465','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'ar',NULL,NULL,NULL,'العربية',NULL),('bg','2017-09-01 22:00:15.533492','2017-09-01 22:00:15.533492','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'bg',NULL,NULL,NULL,'Bǎlgarski',NULL),('bn','2017-09-01 22:00:15.538242','2017-09-01 22:00:15.538242','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'bn',NULL,NULL,NULL,'বাঙালি',NULL),('bo','2017-09-01 22:00:15.543552','2017-09-01 22:00:15.543552','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'bo',NULL,NULL,NULL,'ལྷ་སའི་སྐད་',NULL),('bs','2017-09-01 22:00:15.548359','2017-09-01 22:00:15.548359','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'bs',NULL,NULL,NULL,'Bosanski',NULL),('ca','2017-09-01 22:00:15.553205','2017-09-01 22:00:15.553205','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'ca',NULL,NULL,NULL,'Català',NULL),('cs','2017-09-01 22:00:15.561264','2017-09-01 22:00:15.561264','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'cs',NULL,NULL,NULL,'česky',NULL),('da','2017-09-01 22:00:15.567225','2017-09-01 22:00:15.567225','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'da',NULL,NULL,NULL,'Dansk',NULL),('da-DK','2017-09-01 22:00:15.573452','2017-09-01 22:00:15.573452','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'da-DK',NULL,NULL,NULL,'Dansk (Danmark)',NULL),('de','2017-09-01 22:00:15.580331','2017-09-01 22:00:15.580331','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'de',NULL,NULL,NULL,'Deutsch',NULL),('el','2017-09-01 22:00:15.586122','2017-09-01 22:00:15.586122','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'el',NULL,NULL,NULL,'ελληνικά',NULL),('en','2017-09-01 22:00:15.592015','2017-09-01 22:00:15.592015','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'en',NULL,NULL,NULL,'English',NULL),('en-GB','2017-09-01 22:00:15.598196','2017-09-01 22:00:15.598196','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'en-GB',NULL,NULL,NULL,'English (United Kingdom)',NULL),('en-US','2017-09-01 22:00:15.603850','2017-09-01 22:00:15.603850','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'en-US',NULL,NULL,NULL,'English (United States)',NULL),('es','2017-09-01 22:00:15.609238','2017-09-01 22:00:15.609238','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'es',NULL,NULL,NULL,'Español',NULL),('es-AR','2017-09-01 22:00:15.613748','2017-09-01 22:00:15.613748','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'es-AR',NULL,NULL,NULL,'Español (Argentina)',NULL),('es-CL','2017-09-01 22:00:15.619167','2017-09-01 22:00:15.619167','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'es-CL',NULL,NULL,NULL,'Español (Chile)',NULL),('es-GT','2017-09-01 22:00:15.625823','2017-09-01 22:00:15.625823','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'es-GT',NULL,NULL,NULL,'Español (Guatemala)',NULL),('es-MX','2017-09-01 22:00:15.630299','2017-09-01 22:00:15.630299','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'es-MX',NULL,NULL,NULL,'Español (México)',NULL),('es-NI','2017-09-01 22:00:15.634642','2017-09-01 22:00:15.634642','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'es-NI',NULL,NULL,NULL,'Español (Nicaragua)',NULL),('es-PE','2017-09-01 22:00:15.639389','2017-09-01 22:00:15.639389','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'es-PE',NULL,NULL,NULL,'Español (Perú)',NULL),('et','2017-09-01 22:00:15.644877','2017-09-01 22:00:15.644877','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'et',NULL,NULL,NULL,'Eesti',NULL),('fa','2017-09-01 22:00:15.649816','2017-09-01 22:00:15.649816','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'fa',NULL,NULL,NULL,'پارسی',NULL),('fi','2017-09-01 22:00:15.655878','2017-09-01 22:00:15.655878','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'fi',NULL,NULL,NULL,'Suomalainen',NULL),('fr','2017-09-01 22:00:15.661312','2017-09-01 22:00:15.661312','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'fr',NULL,NULL,NULL,'Français',NULL),('fr-CA','2017-09-01 22:00:15.666297','2017-09-01 22:00:15.666297','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'fr-CA',NULL,NULL,NULL,'Français Canadien',NULL),('gu','2017-09-01 22:00:15.670766','2017-09-01 22:00:15.670766','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'gu',NULL,NULL,NULL,'ગુજરાતી',NULL),('he','2017-09-01 22:00:15.675406','2017-09-01 22:00:15.675406','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'he',NULL,NULL,NULL,'עברית',NULL),('hi','2017-09-01 22:00:15.680476','2017-09-01 22:00:15.680476','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'hi',NULL,NULL,NULL,'हिंदी',NULL),('hr','2017-09-01 22:00:15.685396','2017-09-01 22:00:15.685396','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'hr',NULL,NULL,NULL,'Hrvatski',NULL),('hu','2017-09-01 22:00:15.690132','2017-09-01 22:00:15.690132','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'hu',NULL,NULL,NULL,'Magyar',NULL),('id','2017-09-01 22:00:15.695511','2017-09-01 22:00:15.695511','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'id',NULL,NULL,NULL,'Indonesia',NULL),('is','2017-09-01 22:00:15.699866','2017-09-01 22:00:15.699866','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'is',NULL,NULL,NULL,'íslenska',NULL),('it','2017-09-01 22:00:15.704563','2017-09-01 22:00:15.704563','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'it',NULL,NULL,NULL,'Italiano',NULL),('ja','2017-09-01 22:00:15.709401','2017-09-01 22:00:15.709401','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'ja',NULL,NULL,NULL,'日本語',NULL),('km','2017-09-01 22:00:15.716372','2017-09-01 22:00:15.716372','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'km',NULL,NULL,NULL,'ភាសាខ្មែរ',NULL),('kn','2017-09-01 22:00:15.721660','2017-09-01 22:00:15.721660','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'kn',NULL,NULL,NULL,'ಕನ್ನಡ',NULL),('ko','2017-09-01 22:00:15.728233','2017-09-01 22:00:15.728233','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'ko',NULL,NULL,NULL,'한국의',NULL),('ku','2017-09-01 22:00:15.737694','2017-09-01 22:00:15.737694','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'ku',NULL,NULL,NULL,'کوردی',NULL),('lo','2017-09-01 22:00:15.745892','2017-09-01 22:00:15.745892','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'lo',NULL,NULL,NULL,'ລາວ',NULL),('lt','2017-09-01 22:00:15.753189','2017-09-01 22:00:15.753189','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'lt',NULL,NULL,NULL,'Lietuvių kalba',NULL),('lv','2017-09-01 22:00:15.760422','2017-09-01 22:00:15.760422','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'lv',NULL,NULL,NULL,'Latviešu valoda',NULL),('mk','2017-09-01 22:00:15.765349','2017-09-01 22:00:15.765349','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'mk',NULL,NULL,NULL,'македонски',NULL),('ml','2017-09-01 22:00:15.769664','2017-09-01 22:00:15.769664','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'ml',NULL,NULL,NULL,'മലയാളം',NULL),('mr','2017-09-01 22:00:15.775290','2017-09-01 22:00:15.775290','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'mr',NULL,NULL,NULL,'मराठी',NULL),('ms','2017-09-01 22:00:15.781190','2017-09-01 22:00:15.781190','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'ms',NULL,NULL,NULL,'Melayu',NULL),('my','2017-09-01 22:00:15.785919','2017-09-01 22:00:15.785919','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'my',NULL,NULL,NULL,'မြန်မာ',NULL),('nl','2017-09-01 22:00:15.791520','2017-09-01 22:00:15.791520','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'nl',NULL,NULL,NULL,'Nederlands',NULL),('no','2017-09-01 22:00:15.797478','2017-09-01 22:00:15.797478','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'no',NULL,NULL,NULL,'Norsk',NULL),('pl','2017-09-01 22:00:15.801861','2017-09-01 22:00:15.801861','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'pl',NULL,NULL,NULL,'Polski',NULL),('ps','2017-09-01 22:00:15.806408','2017-09-01 22:00:15.806408','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'ps',NULL,NULL,NULL,'پښتو',NULL),('pt','2017-09-01 22:00:15.811633','2017-09-01 22:00:15.811633','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'pt',NULL,NULL,NULL,'Português',NULL),('pt-BR','2017-09-01 22:00:15.817436','2017-09-01 22:00:15.817436','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'pt-BR',NULL,NULL,NULL,'Português Brasileiro',NULL),('ro','2017-09-01 22:00:15.822059','2017-09-01 22:00:15.822059','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'ro',NULL,NULL,NULL,'Român',NULL),('ru','2017-09-01 22:00:15.827906','2017-09-01 22:00:15.827906','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'ru',NULL,NULL,NULL,'русский',NULL),('rw','2017-09-01 22:00:15.834075','2017-09-01 22:00:15.834075','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'rw',NULL,NULL,NULL,'Kinyarwanda',NULL),('si','2017-09-01 22:00:15.844886','2017-09-01 22:00:15.844886','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'si',NULL,NULL,NULL,'සිංහල',NULL),('sk','2017-09-01 22:00:15.851691','2017-09-01 22:00:15.851691','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'sk',NULL,NULL,NULL,'Slovenčina (Slovak)',NULL),('sl','2017-09-01 22:00:15.860457','2017-09-01 22:00:15.860457','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'sl',NULL,NULL,NULL,'Slovenščina (Slovene)',NULL),('sq','2017-09-01 22:00:15.866871','2017-09-01 22:00:15.866871','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'sq',NULL,NULL,NULL,'Shqiptar',NULL),('sr','2017-09-01 22:00:15.871882','2017-09-01 22:00:15.871882','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'sr',NULL,NULL,NULL,'српски',NULL),('sr-SP','2017-09-01 22:00:15.878102','2017-09-01 22:00:15.878102','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'sr-SP',NULL,NULL,NULL,'Srpski',NULL),('sv','2017-09-01 22:00:15.883007','2017-09-01 22:00:15.883007','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'sv',NULL,NULL,NULL,'Svenska',NULL),('ta','2017-09-01 22:00:15.889061','2017-09-01 22:00:15.889061','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'ta',NULL,NULL,NULL,'தமிழ்',NULL),('te','2017-09-01 22:00:15.894381','2017-09-01 22:00:15.894381','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'te',NULL,NULL,NULL,'తెలుగు',NULL),('th','2017-09-01 22:00:15.899285','2017-09-01 22:00:15.899285','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'th',NULL,NULL,NULL,'ไทย',NULL),('tr','2017-09-01 22:00:15.903967','2017-09-01 22:00:15.903967','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'tr',NULL,NULL,NULL,'Türk',NULL),('uk','2017-09-01 22:00:15.909852','2017-09-01 22:00:15.909852','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'uk',NULL,NULL,NULL,'українська',NULL),('ur','2017-09-01 22:00:15.916639','2017-09-01 22:00:15.916639','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'ur',NULL,NULL,NULL,'اردو',NULL),('vi','2017-09-01 22:00:15.923761','2017-09-01 22:00:15.923761','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'vi',NULL,NULL,NULL,'Việt',NULL),('zh','2017-09-01 22:00:15.930991','2017-09-01 22:00:15.930991','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'zh',NULL,NULL,NULL,'简体中文',NULL),('zh-TW','2017-09-01 22:00:15.935704','2017-09-01 22:00:15.935704','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'zh-TW',NULL,NULL,NULL,'繁體中文',NULL);
/*!40000 ALTER TABLE `tabLanguage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabLetter Head`
--

DROP TABLE IF EXISTS `tabLetter Head`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabLetter Head` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT '0',
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT '0',
  `is_default` int(1) NOT NULL DEFAULT '0',
  `_liked_by` text COLLATE utf8mb4_unicode_ci,
  `footer` longtext COLLATE utf8mb4_unicode_ci,
  `_comments` text COLLATE utf8mb4_unicode_ci,
  `_assign` text COLLATE utf8mb4_unicode_ci,
  `letter_head_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `disabled` int(1) NOT NULL DEFAULT '0',
  `_user_tags` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`name`),
  KEY `is_default` (`is_default`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabLetter Head`
--

LOCK TABLES `tabLetter Head` WRITE;
/*!40000 ALTER TABLE `tabLetter Head` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabLetter Head` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabMedicamentos`
--

DROP TABLE IF EXISTS `tabMedicamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabMedicamentos` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT '0',
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT '0',
  `medico` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `indicacion` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `centro_de_salud` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inicio` date DEFAULT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci,
  `fin` date DEFAULT NULL,
  `medicamento` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabMedicamentos`
--

LOCK TABLES `tabMedicamentos` WRITE;
/*!40000 ALTER TABLE `tabMedicamentos` DISABLE KEYS */;
INSERT INTO `tabMedicamentos` VALUES ('0cce4d9401','2017-09-01 20:08:21.539517','2017-09-01 20:12:21.450723','Administrator','Administrator',0,'PAC-00000002','medicamentos','Paciente',1,'Dr. Carlos Ramirez','2 capsulas Diarias','Centro Medico de Otorrinilaringologia Y Especialidades','2017-08-29','Se le indico el Toxopirin al paciente para controlar la toxoplasmosis','2017-09-13','Toxopirin'),('a420febfdd','2017-09-01 18:15:07.932534','2017-09-01 19:37:06.451829','Administrator','Administrator',0,'PAC-00000001','medicamentos','Paciente',1,'Jenne Santos','1p Diaria','Dario Contreras','2017-07-18',NULL,NULL,'Asperen');
/*!40000 ALTER TABLE `tabMedicamentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabModule Def`
--

DROP TABLE IF EXISTS `tabModule Def`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabModule Def` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT '0',
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT '0',
  `_liked_by` text COLLATE utf8mb4_unicode_ci,
  `app_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_comments` text COLLATE utf8mb4_unicode_ci,
  `_assign` text COLLATE utf8mb4_unicode_ci,
  `restrict_to_domain` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `module_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_user_tags` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabModule Def`
--

LOCK TABLES `tabModule Def` WRITE;
/*!40000 ALTER TABLE `tabModule Def` DISABLE KEYS */;
INSERT INTO `tabModule Def` VALUES ('Contacts','2017-09-01 22:00:08.188155','2017-09-01 22:00:08.188155','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,'frappe',NULL,NULL,NULL,'Contacts',NULL),('Core','2017-09-01 21:59:58.245239','2017-09-01 21:59:58.245239','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,'frappe',NULL,NULL,NULL,'Core',NULL),('Custom','2017-09-01 22:00:04.597304','2017-09-01 22:00:04.597304','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,'frappe',NULL,NULL,NULL,'Custom',NULL),('Desk','2017-09-01 22:00:05.288328','2017-09-01 22:00:05.288328','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,'frappe',NULL,NULL,NULL,'Desk',NULL),('Email','2017-09-01 22:00:02.425451','2017-09-01 22:00:02.425451','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,'frappe',NULL,NULL,NULL,'Email',NULL),('Geo','2017-09-01 22:00:05.063016','2017-09-01 22:00:05.063016','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,'frappe',NULL,NULL,NULL,'Geo',NULL),('Integrations','2017-09-01 22:00:06.153315','2017-09-01 22:00:06.153315','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,'frappe',NULL,NULL,NULL,'Integrations',NULL),('Printing','2017-09-01 22:00:07.786122','2017-09-01 22:00:07.786122','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,'frappe',NULL,NULL,NULL,'Printing',NULL),('sipDo','2017-09-01 12:54:13.931726','2017-09-01 12:54:13.931726','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,'sipdo',NULL,NULL,NULL,'sipDo',NULL),('Website','2017-09-01 21:59:59.685054','2017-09-01 21:59:59.685054','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,'frappe',NULL,NULL,NULL,'Website',NULL),('Workflow','2017-09-01 22:00:02.042902','2017-09-01 22:00:02.042902','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,'frappe',NULL,NULL,NULL,'Workflow',NULL);
/*!40000 ALTER TABLE `tabModule Def` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabNewsletter`
--

DROP TABLE IF EXISTS `tabNewsletter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabNewsletter` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT '0',
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT '0',
  `send_unsubscribe_link` int(1) NOT NULL DEFAULT '1',
  `_assign` text COLLATE utf8mb4_unicode_ci,
  `send_attachements` int(1) NOT NULL DEFAULT '0',
  `send_from` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scheduled_to_send` int(11) NOT NULL DEFAULT '0',
  `email_sent` int(1) NOT NULL DEFAULT '0',
  `_liked_by` text COLLATE utf8mb4_unicode_ci,
  `_comments` text COLLATE utf8mb4_unicode_ci,
  `_user_tags` text COLLATE utf8mb4_unicode_ci,
  `message` longtext COLLATE utf8mb4_unicode_ci,
  `test_email_id` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabNewsletter`
--

LOCK TABLES `tabNewsletter` WRITE;
/*!40000 ALTER TABLE `tabNewsletter` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabNewsletter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabNewsletter Email Group`
--

DROP TABLE IF EXISTS `tabNewsletter Email Group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabNewsletter Email Group` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT '0',
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT '0',
  `total_subscribers` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_group` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabNewsletter Email Group`
--

LOCK TABLES `tabNewsletter Email Group` WRITE;
/*!40000 ALTER TABLE `tabNewsletter Email Group` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabNewsletter Email Group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabNote`
--

DROP TABLE IF EXISTS `tabNote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabNote` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT '0',
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT '0',
  `_liked_by` text COLLATE utf8mb4_unicode_ci,
  `expire_notification_on` date DEFAULT NULL,
  `title` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_comments` text COLLATE utf8mb4_unicode_ci,
  `notify_on_every_login` int(1) NOT NULL DEFAULT '0',
  `_assign` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `notify_on_login` int(1) NOT NULL DEFAULT '0',
  `_user_tags` text COLLATE utf8mb4_unicode_ci,
  `public` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`name`),
  KEY `expire_notification_on` (`expire_notification_on`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabNote`
--

LOCK TABLES `tabNote` WRITE;
/*!40000 ALTER TABLE `tabNote` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabNote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabNote Seen By`
--

DROP TABLE IF EXISTS `tabNote Seen By`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabNote Seen By` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT '0',
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT '0',
  `user` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabNote Seen By`
--

LOCK TABLES `tabNote Seen By` WRITE;
/*!40000 ALTER TABLE `tabNote Seen By` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabNote Seen By` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabOAuth Authorization Code`
--

DROP TABLE IF EXISTS `tabOAuth Authorization Code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabOAuth Authorization Code` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT '0',
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT '0',
  `redirect_uri_bound_to_authorization_code` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `_liked_by` text COLLATE utf8mb4_unicode_ci,
  `authorization_code` text COLLATE utf8mb4_unicode_ci,
  `_comments` text COLLATE utf8mb4_unicode_ci,
  `_assign` text COLLATE utf8mb4_unicode_ci,
  `validity` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expiration_time` datetime(6) DEFAULT NULL,
  `_user_tags` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabOAuth Authorization Code`
--

LOCK TABLES `tabOAuth Authorization Code` WRITE;
/*!40000 ALTER TABLE `tabOAuth Authorization Code` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabOAuth Authorization Code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabOAuth Bearer Token`
--

DROP TABLE IF EXISTS `tabOAuth Bearer Token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabOAuth Bearer Token` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT '0',
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT '0',
  `status` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `_liked_by` text COLLATE utf8mb4_unicode_ci,
  `access_token` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_comments` text COLLATE utf8mb4_unicode_ci,
  `_assign` text COLLATE utf8mb4_unicode_ci,
  `expires_in` int(11) NOT NULL DEFAULT '0',
  `client` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expiration_time` datetime(6) DEFAULT NULL,
  `_user_tags` text COLLATE utf8mb4_unicode_ci,
  `refresh_token` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabOAuth Bearer Token`
--

LOCK TABLES `tabOAuth Bearer Token` WRITE;
/*!40000 ALTER TABLE `tabOAuth Bearer Token` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabOAuth Bearer Token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabOAuth Client`
--

DROP TABLE IF EXISTS `tabOAuth Client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabOAuth Client` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT '0',
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT '0',
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `redirect_uris` text COLLATE utf8mb4_unicode_ci,
  `_user_tags` text COLLATE utf8mb4_unicode_ci,
  `app_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_redirect_uri` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_assign` text COLLATE utf8mb4_unicode_ci,
  `_liked_by` text COLLATE utf8mb4_unicode_ci,
  `_comments` text COLLATE utf8mb4_unicode_ci,
  `user` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_id` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skip_authorization` int(1) NOT NULL DEFAULT '0',
  `client_secret` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `grant_type` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `response_type` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT 'Code',
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabOAuth Client`
--

LOCK TABLES `tabOAuth Client` WRITE;
/*!40000 ALTER TABLE `tabOAuth Client` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabOAuth Client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabPaciente`
--

DROP TABLE IF EXISTS `tabPaciente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabPaciente` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT '0',
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT '0',
  `tipo_sangre` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `edad` int(11) NOT NULL DEFAULT '0',
  `ars` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apellido_paterno` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apellido_materno` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cedula_pasaporte` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nombre_completo` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_assign` text COLLATE utf8mb4_unicode_ci,
  `sexo` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `direccion` text COLLATE utf8mb4_unicode_ci,
  `_comments` text COLLATE utf8mb4_unicode_ci,
  `segundo_nombre` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `primer_nombre` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nss` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_user_tags` text COLLATE utf8mb4_unicode_ci,
  `_liked_by` text COLLATE utf8mb4_unicode_ci,
  `dir_calle` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dir_numero` int(11) NOT NULL DEFAULT '0',
  `dir_provincia` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dir_apartamento` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dir_edificio` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dir_sector` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `correo_electronico` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foto` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`name`),
  UNIQUE KEY `nss` (`nss`),
  UNIQUE KEY `cedula_pasaporte` (`cedula_pasaporte`),
  UNIQUE KEY `nombre_completo` (`nombre_completo`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabPaciente`
--

LOCK TABLES `tabPaciente` WRITE;
/*!40000 ALTER TABLE `tabPaciente` DISABLE KEYS */;
INSERT INTO `tabPaciente` VALUES ('PAC-00000001','2017-09-01 18:15:07.932534','2017-09-01 19:37:06.451829','Administrator','Administrator',0,NULL,NULL,NULL,0,'O+',27,'ARS-000007','VILLAR','TAVAREZ','223-0087201-1','LEWIN E. VILLAR TAVAREZ',NULL,'MASCULINO',NULL,NULL,'E.','LEWIN','662323',NULL,NULL,'LA PLAZA',23,'Distrito Nacional','4C','LISA NICOLE','RENACIMIENTO','lewin.villar@gmail.com','/private/files/WhatsApp_Image_2017-09-01_at_7.35.05_PM.jpeg'),('PAC-00000002','2017-09-01 20:08:21.539517','2017-09-01 20:12:21.450723','Administrator','Administrator',0,NULL,NULL,NULL,0,'A+',28,'ARS-000007','VILLAR','TAVAREZ','223-0017198-9','GIBRAN VILLAR TAVAREZ',NULL,'MASCULINO',NULL,NULL,'','GIBRAN','0982238292',NULL,NULL,'BARBARO STREET',0,'Santo Domingo Este','402','2B','LOS MINAS','gibranvillar@gmail.com','/private/files/Gibran.jpg');
/*!40000 ALTER TABLE `tabPaciente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabPage`
--

DROP TABLE IF EXISTS `tabPage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabPage` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT '0',
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT '0',
  `system_page` int(1) NOT NULL DEFAULT '0',
  `_liked_by` text COLLATE utf8mb4_unicode_ci,
  `title` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_comments` text COLLATE utf8mb4_unicode_ci,
  `_assign` text COLLATE utf8mb4_unicode_ci,
  `restrict_to_domain` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `module` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `standard` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_user_tags` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`name`),
  KEY `standard` (`standard`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabPage`
--

LOCK TABLES `tabPage` WRITE;
/*!40000 ALTER TABLE `tabPage` DISABLE KEYS */;
INSERT INTO `tabPage` VALUES ('activity','2013-04-09 11:45:31.000000','2013-07-11 14:40:20.000001','Administrator','Administrator',0,NULL,NULL,NULL,1,0,NULL,'Activity',NULL,NULL,NULL,'Desk','Yes','activity','fa fa-play',NULL),('applications','2013-12-23 11:01:52.000000','2015-11-18 06:20:09.586810','Administrator','Administrator',0,NULL,NULL,NULL,1,0,NULL,'App Installer',NULL,NULL,NULL,'Desk','Yes','applications','fa fa-magic',NULL),('background_jobs','2016-08-18 16:44:14.322642','2016-08-18 16:48:11.577611','Administrator','Administrator',0,NULL,NULL,NULL,0,0,NULL,'Background Jobs',NULL,NULL,NULL,'Core','Yes','background_jobs',NULL,NULL),('backups','2015-09-24 01:26:06.225378','2015-09-24 01:26:06.225378','Administrator','Administrator',0,NULL,NULL,NULL,0,0,NULL,'Download Backups',NULL,NULL,NULL,'Desk','Yes','backups',NULL,NULL),('chat','2012-06-14 18:44:56.000000','2016-03-31 02:02:13.503910','Administrator','Administrator',0,NULL,NULL,NULL,1,0,NULL,'Chat',NULL,NULL,NULL,'Desk','Yes','chat','',NULL),('data-import-tool','2012-06-14 15:07:25.000000','2016-05-11 03:37:53.385693','Administrator','Administrator',0,NULL,NULL,NULL,1,0,NULL,'Data Import Tool',NULL,NULL,NULL,'Core','Yes','data-import-tool','fa fa-upload',NULL),('desktop','2013-02-14 17:37:37.000000','2013-07-11 14:41:56.000000','Administrator','Administrator',0,NULL,NULL,NULL,1,0,NULL,'Desktop',NULL,NULL,NULL,'Core','Yes','desktop','fa fa-th',NULL),('modules','2016-03-07 04:46:00.420330','2016-03-07 04:46:00.420330','Administrator','Administrator',0,NULL,NULL,NULL,0,0,NULL,'Modules',NULL,NULL,NULL,'Desk','Yes','modules',NULL,NULL),('modules_setup','2012-10-04 18:45:29.000000','2017-04-12 18:44:53.283640','Administrator','Administrator',0,NULL,NULL,NULL,1,1,NULL,'Modules Setup',NULL,NULL,NULL,'Core','Yes','modules_setup','fa fa-cog',NULL),('permission-manager','2013-01-01 11:00:01.000000','2013-07-11 14:43:43.000000','Administrator','Administrator',0,NULL,NULL,NULL,1,0,NULL,'Role Permissions Manager',NULL,NULL,NULL,'Core','Yes','permission-manager','fa fa-lock',NULL),('print-format-builder','2015-01-27 04:35:43.872918','2017-05-03 05:59:33.702308','Administrator','Administrator',0,NULL,NULL,NULL,0,0,NULL,'Print Format Builder',NULL,NULL,NULL,'Printing','Yes','print-format-builder',NULL,NULL),('setup-wizard','2013-10-04 13:49:33.000000','2017-09-01 12:38:04.116246','Administrator','Administrator',0,NULL,NULL,NULL,1,1,NULL,'Setup Wizard',NULL,NULL,NULL,'Desk','Yes','setup-wizard',NULL,NULL),('usage-info','2016-06-02 18:14:53.475842','2016-06-02 18:14:53.475842','Administrator','Administrator',0,NULL,NULL,NULL,0,0,NULL,'Usage Info',NULL,NULL,NULL,'Core','Yes','usage-info',NULL,NULL);
/*!40000 ALTER TABLE `tabPage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabPatch Log`
--

DROP TABLE IF EXISTS `tabPatch Log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabPatch Log` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT '0',
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT '0',
  `_comments` text COLLATE utf8mb4_unicode_ci,
  `_assign` text COLLATE utf8mb4_unicode_ci,
  `_user_tags` text COLLATE utf8mb4_unicode_ci,
  `_liked_by` text COLLATE utf8mb4_unicode_ci,
  `patch` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabPatch Log`
--

LOCK TABLES `tabPatch Log` WRITE;
/*!40000 ALTER TABLE `tabPatch Log` DISABLE KEYS */;
INSERT INTO `tabPatch Log` VALUES ('PATCHLOG00001','2017-09-01 22:00:11.918146','2017-09-01 22:00:11.918146','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.db.sql(\"\"\"update `tabPatch Log` set patch=replace(patch, \'.4_0.\', \'.v4_0.\')\"\"\") #2014-05-12'),('PATCHLOG00002','2017-09-01 22:00:11.929408','2017-09-01 22:00:11.929408','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v5_0.convert_to_barracuda_and_utf8mb4'),('PATCHLOG00003','2017-09-01 22:00:11.937541','2017-09-01 22:00:11.937541','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.utils.global_search.setup_global_search_table()'),('PATCHLOG00004','2017-09-01 22:00:11.945844','2017-09-01 22:00:11.945844','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v8_0.update_global_search_table'),('PATCHLOG00005','2017-09-01 22:00:11.951809','2017-09-01 22:00:11.951809','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v7_0.update_auth'),('PATCHLOG00006','2017-09-01 22:00:11.959377','2017-09-01 22:00:11.959377','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v7_1.rename_scheduler_log_to_error_log'),('PATCHLOG00007','2017-09-01 22:00:11.965993','2017-09-01 22:00:11.965993','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v6_1.rename_file_data'),('PATCHLOG00008','2017-09-01 22:00:11.970989','2017-09-01 22:00:11.970989','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v7_0.re_route #2016-06-27'),('PATCHLOG00009','2017-09-01 22:00:11.977347','2017-09-01 22:00:11.977347','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v7_2.remove_in_filter'),('PATCHLOG00010','2017-09-01 22:00:11.982886','2017-09-01 22:00:11.982886','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.reload_doc(\'core\', \'doctype\', \'doctype\', force=True) #2017-03-09'),('PATCHLOG00011','2017-09-01 22:00:11.988674','2017-09-01 22:00:11.988674','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v8_0.drop_in_dialog'),('PATCHLOG00012','2017-09-01 22:00:11.993892','2017-09-01 22:00:11.993892','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.reload_doc(\'core\', \'doctype\', \'docfield\', force=True) #2017-03-03'),('PATCHLOG00013','2017-09-01 22:00:11.998857','2017-09-01 22:00:11.998857','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.reload_doc(\'core\', \'doctype\', \'docperm\') #2017-03-03'),('PATCHLOG00014','2017-09-01 22:00:12.004189','2017-09-01 22:00:12.004189','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v8_0.drop_is_custom_from_docperm'),('PATCHLOG00015','2017-09-01 22:00:12.010597','2017-09-01 22:00:12.010597','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v8_0.update_records_in_global_search #11-05-2017'),('PATCHLOG00016','2017-09-01 22:00:12.017643','2017-09-01 22:00:12.017643','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v8_0.update_published_in_global_search'),('PATCHLOG00017','2017-09-01 22:00:12.024157','2017-09-01 22:00:12.024157','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.reload_doc(\'core\', \'doctype\', \'custom_docperm\')'),('PATCHLOG00018','2017-09-01 22:00:12.031944','2017-09-01 22:00:12.031944','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.reload_doc(\'core\', \'doctype\', \'deleted_document\')'),('PATCHLOG00019','2017-09-01 22:00:12.037594','2017-09-01 22:00:12.037594','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.reload_doc(\'core\', \'doctype\', \'version\') #2017-04-01'),('PATCHLOG00020','2017-09-01 22:00:12.042022','2017-09-01 22:00:12.042022','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v8_0.rename_page_role_to_has_role #2017-03-16'),('PATCHLOG00021','2017-09-01 22:00:12.047492','2017-09-01 22:00:12.047492','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v7_2.setup_custom_perms #2017-01-19'),('PATCHLOG00022','2017-09-01 22:00:12.052836','2017-09-01 22:00:12.052836','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v8_0.set_user_permission_for_page_and_report #2017-03-20'),('PATCHLOG00023','2017-09-01 22:00:12.058899','2017-09-01 22:00:12.058899','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.reload_doc(\'core\', \'doctype\', \'role\') #2017-05-23'),('PATCHLOG00024','2017-09-01 22:00:12.064307','2017-09-01 22:00:12.064307','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.reload_doc(\'core\', \'doctype\', \'user\')'),('PATCHLOG00025','2017-09-01 22:00:12.069461','2017-09-01 22:00:12.069461','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.reload_doc(\'custom\', \'doctype\', \'custom_field\') #2015-10-19'),('PATCHLOG00026','2017-09-01 22:00:12.075716','2017-09-01 22:00:12.075716','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.reload_doc(\'core\', \'doctype\', \'page\') #2013-13-26'),('PATCHLOG00027','2017-09-01 22:00:12.082130','2017-09-01 22:00:12.082130','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.reload_doc(\'core\', \'doctype\', \'report\') #2014-06-03'),('PATCHLOG00028','2017-09-01 22:00:12.086814','2017-09-01 22:00:12.086814','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.reload_doc(\'core\', \'doctype\', \'translation\') #2016-03-03'),('PATCHLOG00029','2017-09-01 22:00:12.093920','2017-09-01 22:00:12.093920','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.reload_doc(\'email\', \'doctype\', \'email_alert\') #2014-07-15'),('PATCHLOG00030','2017-09-01 22:00:12.101560','2017-09-01 22:00:12.101560','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.reload_doc(\'desk\', \'doctype\', \'todo\') #2014-12-31-1'),('PATCHLOG00031','2017-09-01 22:00:12.109683','2017-09-01 22:00:12.109683','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.reload_doc(\'custom\', \'doctype\', \'property_setter\') #2014-12-31-1'),('PATCHLOG00032','2017-09-01 22:00:12.120156','2017-09-01 22:00:12.120156','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.reload_doc(\'core\', \'doctype\', \'patch_log\') #2016-10-31'),('PATCHLOG00033','2017-09-01 22:00:12.133236','2017-09-01 22:00:12.133236','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.reload_doctype(\"File\") # 2015-10-19'),('PATCHLOG00034','2017-09-01 22:00:12.142069','2017-09-01 22:00:12.142069','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.reload_doc(\'core\', \'doctype\', \'error_snapshot\')'),('PATCHLOG00035','2017-09-01 22:00:12.149653','2017-09-01 22:00:12.149653','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.clear_cache()'),('PATCHLOG00036','2017-09-01 22:00:12.156077','2017-09-01 22:00:12.156077','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v7_1.rename_scheduler_log_to_error_log'),('PATCHLOG00037','2017-09-01 22:00:12.162426','2017-09-01 22:00:12.162426','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v7_1.sync_language_doctype'),('PATCHLOG00038','2017-09-01 22:00:12.167228','2017-09-01 22:00:12.167228','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v7_0.rename_bulk_email_to_email_queue'),('PATCHLOG00039','2017-09-01 22:00:12.172449','2017-09-01 22:00:12.172449','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v7_1.rename_chinese_language_codes'),('PATCHLOG00040','2017-09-01 22:00:12.178255','2017-09-01 22:00:12.178255','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.db.sql(\"alter table `tabSessions` modify `user` varchar(255), engine=InnoDB\")'),('PATCHLOG00041','2017-09-01 22:00:12.183864','2017-09-01 22:00:12.183864','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.db.sql(\"delete from `tabDocField` where parent=\'0\'\")'),('PATCHLOG00042','2017-09-01 22:00:12.190609','2017-09-01 22:00:12.190609','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v4_0.change_varchar_length'),('PATCHLOG00043','2017-09-01 22:00:12.197541','2017-09-01 22:00:12.197541','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v6_4.reduce_varchar_length'),('PATCHLOG00044','2017-09-01 22:00:12.204462','2017-09-01 22:00:12.204462','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v5_2.change_checks_to_not_null'),('PATCHLOG00045','2017-09-01 22:00:12.215215','2017-09-01 22:00:12.215215','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v6_9.int_float_not_null #2015-11-25'),('PATCHLOG00046','2017-09-01 22:00:12.222585','2017-09-01 22:00:12.222585','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v5_0.v4_to_v5'),('PATCHLOG00047','2017-09-01 22:00:12.229090','2017-09-01 22:00:12.229090','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v5_0.remove_shopping_cart_app'),('PATCHLOG00048','2017-09-01 22:00:12.234933','2017-09-01 22:00:12.234933','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v4_0.webnotes_to_frappe'),('PATCHLOG00049','2017-09-01 22:00:12.241399','2017-09-01 22:00:12.241399','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.permissions.reset_perms(\"Module Def\")'),('PATCHLOG00050','2017-09-01 22:00:12.247423','2017-09-01 22:00:12.247423','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:import frappe.installer;frappe.installer.make_site_dirs() #2014-02-19'),('PATCHLOG00051','2017-09-01 22:00:12.253271','2017-09-01 22:00:12.253271','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v4_0.rename_profile_to_user'),('PATCHLOG00052','2017-09-01 22:00:12.259324','2017-09-01 22:00:12.259324','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v4_0.deprecate_control_panel'),('PATCHLOG00053','2017-09-01 22:00:12.264042','2017-09-01 22:00:12.264042','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v4_0.remove_old_parent'),('PATCHLOG00054','2017-09-01 22:00:12.268920','2017-09-01 22:00:12.268920','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v4_0.rename_sitemap_to_route'),('PATCHLOG00055','2017-09-01 22:00:12.276259','2017-09-01 22:00:12.276259','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v4_0.website_sitemap_hierarchy'),('PATCHLOG00056','2017-09-01 22:00:12.284501','2017-09-01 22:00:12.284501','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v4_0.remove_index_sitemap'),('PATCHLOG00057','2017-09-01 22:00:12.293331','2017-09-01 22:00:12.293331','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v4_0.set_website_route_idx'),('PATCHLOG00058','2017-09-01 22:00:12.299978','2017-09-01 22:00:12.299978','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v4_0.add_delete_permission'),('PATCHLOG00059','2017-09-01 22:00:12.307116','2017-09-01 22:00:12.307116','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v4_0.set_todo_checked_as_closed'),('PATCHLOG00060','2017-09-01 22:00:12.312375','2017-09-01 22:00:12.312375','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v4_0.private_backups'),('PATCHLOG00061','2017-09-01 22:00:12.317079','2017-09-01 22:00:12.317079','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v4_0.set_module_in_report'),('PATCHLOG00062','2017-09-01 22:00:12.322818','2017-09-01 22:00:12.322818','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v4_0.update_datetime'),('PATCHLOG00063','2017-09-01 22:00:12.327570','2017-09-01 22:00:12.327570','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v4_0.file_manager_hooks'),('PATCHLOG00064','2017-09-01 22:00:12.332153','2017-09-01 22:00:12.332153','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.get_doc(\"User\", \"Guest\").save()'),('PATCHLOG00065','2017-09-01 22:00:12.336621','2017-09-01 22:00:12.336621','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v4_0.update_custom_field_insert_after'),('PATCHLOG00066','2017-09-01 22:00:12.342506','2017-09-01 22:00:12.342506','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v4_0.deprecate_link_selects'),('PATCHLOG00067','2017-09-01 22:00:12.347209','2017-09-01 22:00:12.347209','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v4_0.set_user_gravatar'),('PATCHLOG00068','2017-09-01 22:00:12.351797','2017-09-01 22:00:12.351797','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v4_0.set_user_permissions'),('PATCHLOG00069','2017-09-01 22:00:12.356138','2017-09-01 22:00:12.356138','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v4_0.create_custom_field_for_owner_match'),('PATCHLOG00070','2017-09-01 22:00:12.361293','2017-09-01 22:00:12.361293','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v4_0.enable_scheduler_in_system_settings'),('PATCHLOG00071','2017-09-01 22:00:12.366128','2017-09-01 22:00:12.366128','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.db.sql(\"update tabReport set apply_user_permissions=1\") #2014-06-03'),('PATCHLOG00072','2017-09-01 22:00:12.371222','2017-09-01 22:00:12.371222','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v4_0.replace_deprecated_timezones'),('PATCHLOG00073','2017-09-01 22:00:12.376616','2017-09-01 22:00:12.376616','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:import frappe.website.render; frappe.website.render.clear_cache(\"login\"); #2014-06-10'),('PATCHLOG00074','2017-09-01 22:00:12.381586','2017-09-01 22:00:12.381586','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v4_0.fix_attach_field_file_url'),('PATCHLOG00075','2017-09-01 22:00:12.385872','2017-09-01 22:00:12.385872','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.permissions.reset_perms(\"User\") #2015-03-24'),('PATCHLOG00076','2017-09-01 22:00:12.392339','2017-09-01 22:00:12.392339','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.db.sql(\"\"\"delete from `tabUserRole` where ifnull(parentfield, \'\')=\'\' or ifnull(`role`, \'\')=\'\'\"\"\") #2014-08-18'),('PATCHLOG00077','2017-09-01 22:00:12.396948','2017-09-01 22:00:12.396948','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v4_0.remove_user_owner_custom_field'),('PATCHLOG00078','2017-09-01 22:00:12.403863','2017-09-01 22:00:12.403863','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.delete_doc(\"DocType\", \"Website Template\")'),('PATCHLOG00079','2017-09-01 22:00:12.416028','2017-09-01 22:00:12.416028','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.db.sql(\"\"\"update `tabProperty Setter` set property_type=\'Text\' where property in (\'options\', \'default\')\"\"\") #2014-06-20'),('PATCHLOG00080','2017-09-01 22:00:12.428121','2017-09-01 22:00:12.428121','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v4_1.enable_outgoing_email_settings'),('PATCHLOG00081','2017-09-01 22:00:12.435879','2017-09-01 22:00:12.435879','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.db.sql(\"\"\"update `tabSingles` set `value`=`doctype` where `field`=\'name\'\"\"\") #2014-07-04'),('PATCHLOG00082','2017-09-01 22:00:12.440851','2017-09-01 22:00:12.440851','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v4_1.enable_print_as_pdf #2014-06-17'),('PATCHLOG00083','2017-09-01 22:00:12.445627','2017-09-01 22:00:12.445627','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.db.sql(\"\"\"update `tabDocPerm` set email=1 where parent=\'User\' and permlevel=0 and `role`=\'All\' and `read`=1 and apply_user_permissions=1\"\"\") #2014-07-15'),('PATCHLOG00084','2017-09-01 22:00:12.451871','2017-09-01 22:00:12.451871','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.db.sql(\"\"\"update `tabPrint Format` set print_format_type=\'Client\' where ifnull(print_format_type, \'\')=\'\'\"\"\") #2014-07-28'),('PATCHLOG00085','2017-09-01 22:00:12.456826','2017-09-01 22:00:12.456826','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v4_1.file_manager_fix'),('PATCHLOG00086','2017-09-01 22:00:12.463222','2017-09-01 22:00:12.463222','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v4_2.print_with_letterhead'),('PATCHLOG00087','2017-09-01 22:00:12.468099','2017-09-01 22:00:12.468099','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.delete_doc(\"DocType\", \"Control Panel\", force=1)'),('PATCHLOG00088','2017-09-01 22:00:12.473256','2017-09-01 22:00:12.473256','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.reload_doc(\'website\', \'doctype\', \'web_form\') #2014-09-04'),('PATCHLOG00089','2017-09-01 22:00:12.478344','2017-09-01 22:00:12.478344','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.reload_doc(\'website\', \'doctype\', \'web_form_field\') #2014-09-04'),('PATCHLOG00090','2017-09-01 22:00:12.483251','2017-09-01 22:00:12.483251','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v4_2.refactor_website_routing'),('PATCHLOG00091','2017-09-01 22:00:12.487949','2017-09-01 22:00:12.487949','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v4_2.set_assign_in_doc'),('PATCHLOG00092','2017-09-01 22:00:12.492423','2017-09-01 22:00:12.492423','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v4_3.remove_allow_on_submit_customization'),('PATCHLOG00093','2017-09-01 22:00:12.497459','2017-09-01 22:00:12.497459','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v5_0.rename_table_fieldnames'),('PATCHLOG00094','2017-09-01 22:00:12.502136','2017-09-01 22:00:12.502136','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v5_0.communication_parent'),('PATCHLOG00095','2017-09-01 22:00:12.507418','2017-09-01 22:00:12.507418','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v5_0.clear_website_group_and_notifications'),('PATCHLOG00096','2017-09-01 22:00:12.513225','2017-09-01 22:00:12.513225','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.db.sql(\"\"\"update tabComment set comment = substr(comment, 6, locate(\":\", comment)-6) where comment_type in (\"Assigned\", \"Assignment Completed\")\"\"\")'),('PATCHLOG00097','2017-09-01 22:00:12.518881','2017-09-01 22:00:12.518881','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.db.sql(\"update `tabComment` set comment_type=\'Comment\' where comment_doctype=\'Blog Post\' and ifnull(comment_type, \'\')=\'\'\")'),('PATCHLOG00098','2017-09-01 22:00:12.523427','2017-09-01 22:00:12.523427','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v5_0.update_shared'),('PATCHLOG00099','2017-09-01 22:00:12.529985','2017-09-01 22:00:12.529985','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.reload_doc(\"core\", \"doctype\", \"docshare\") #2015-07-21'),('PATCHLOG00100','2017-09-01 22:00:12.535822','2017-09-01 22:00:12.535822','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v6_19.comment_feed_communication'),('PATCHLOG00101','2017-09-01 22:00:12.540267','2017-09-01 22:00:12.540267','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v6_16.star_to_like'),('PATCHLOG00102','2017-09-01 22:00:12.545980','2017-09-01 22:00:12.545980','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v5_0.bookmarks_to_stars'),('PATCHLOG00103','2017-09-01 22:00:12.552194','2017-09-01 22:00:12.552194','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v5_0.style_settings_to_website_theme'),('PATCHLOG00104','2017-09-01 22:00:12.558817','2017-09-01 22:00:12.558817','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v5_0.rename_ref_type_fieldnames'),('PATCHLOG00105','2017-09-01 22:00:12.564037','2017-09-01 22:00:12.564037','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v5_0.fix_email_alert'),('PATCHLOG00106','2017-09-01 22:00:12.568921','2017-09-01 22:00:12.568921','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v5_0.fix_null_date_datetime'),('PATCHLOG00107','2017-09-01 22:00:12.574753','2017-09-01 22:00:12.574753','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v5_0.force_sync_website'),('PATCHLOG00108','2017-09-01 22:00:12.582081','2017-09-01 22:00:12.582081','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.delete_doc(\"DocType\", \"Tag\")'),('PATCHLOG00109','2017-09-01 22:00:12.589185','2017-09-01 22:00:12.589185','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.db.sql(\"delete from `tabProperty Setter` where `property` in (\'idx\', \'_idx\')\")'),('PATCHLOG00110','2017-09-01 22:00:12.595235','2017-09-01 22:00:12.595235','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v5_0.move_scheduler_last_event_to_system_settings'),('PATCHLOG00111','2017-09-01 22:00:12.600942','2017-09-01 22:00:12.600942','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.db.sql(\"update tabUser set new_password=\'\' where ifnull(new_password, \'\')!=\'\'\")'),('PATCHLOG00112','2017-09-01 22:00:12.606848','2017-09-01 22:00:12.606848','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v5_0.fix_text_editor_file_urls'),('PATCHLOG00113','2017-09-01 22:00:12.614326','2017-09-01 22:00:12.614326','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v5_0.modify_session'),('PATCHLOG00114','2017-09-01 22:00:12.621628','2017-09-01 22:00:12.621628','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v5_0.expire_old_scheduler_logs'),('PATCHLOG00115','2017-09-01 22:00:12.627572','2017-09-01 22:00:12.627572','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.permissions.reset_perms(\"DocType\")'),('PATCHLOG00116','2017-09-01 22:00:12.633763','2017-09-01 22:00:12.633763','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.db.sql(\"delete from `tabProperty Setter` where `property` = \'idx\'\")'),('PATCHLOG00117','2017-09-01 22:00:12.641032','2017-09-01 22:00:12.641032','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v6_0.communication_status_and_permission'),('PATCHLOG00118','2017-09-01 22:00:12.647917','2017-09-01 22:00:12.647917','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v6_0.make_task_log_folder'),('PATCHLOG00119','2017-09-01 22:00:12.653879','2017-09-01 22:00:12.653879','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v6_0.document_type_rename'),('PATCHLOG00120','2017-09-01 22:00:12.659208','2017-09-01 22:00:12.659208','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v6_0.fix_ghana_currency'),('PATCHLOG00121','2017-09-01 22:00:12.665056','2017-09-01 22:00:12.665056','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v6_2.ignore_user_permissions_if_missing'),('PATCHLOG00122','2017-09-01 22:00:12.670863','2017-09-01 22:00:12.670863','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.db.sql(\"delete from tabSessions where user is null\")'),('PATCHLOG00123','2017-09-01 22:00:12.676504','2017-09-01 22:00:12.676504','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v6_2.rename_backup_manager'),('PATCHLOG00124','2017-09-01 22:00:12.682403','2017-09-01 22:00:12.682403','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.delete_doc(\"DocType\", \"Backup Manager\")'),('PATCHLOG00125','2017-09-01 22:00:12.688645','2017-09-01 22:00:12.688645','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.db.sql(\"\"\"update `tabCommunication` set parenttype=null, parent=null, parentfield=null\"\"\") #2015-10-22'),('PATCHLOG00126','2017-09-01 22:00:12.698194','2017-09-01 22:00:12.698194','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.permissions.reset_perms(\"Web Page\")'),('PATCHLOG00127','2017-09-01 22:00:12.706517','2017-09-01 22:00:12.706517','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v6_6.user_last_active'),('PATCHLOG00128','2017-09-01 22:00:12.715892','2017-09-01 22:00:12.715892','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v6_6.fix_file_url'),('PATCHLOG00129','2017-09-01 22:00:12.722711','2017-09-01 22:00:12.722711','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v6_11.rename_field_in_email_account'),('PATCHLOG00130','2017-09-01 22:00:12.728628','2017-09-01 22:00:12.728628','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v7_0.create_private_file_folder'),('PATCHLOG00131','2017-09-01 22:00:12.733764','2017-09-01 22:00:12.733764','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v6_15.remove_property_setter_for_previous_field #2015-12-29'),('PATCHLOG00132','2017-09-01 22:00:12.738691','2017-09-01 22:00:12.738691','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v6_15.set_username'),('PATCHLOG00133','2017-09-01 22:00:12.744394','2017-09-01 22:00:12.744394','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.permissions.reset_perms(\"Error Snapshot\")'),('PATCHLOG00134','2017-09-01 22:00:12.750331','2017-09-01 22:00:12.750331','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v6_16.feed_doc_owner'),('PATCHLOG00135','2017-09-01 22:00:12.754699','2017-09-01 22:00:12.754699','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v6_21.print_settings_repeat_header_footer'),('PATCHLOG00136','2017-09-01 22:00:12.760234','2017-09-01 22:00:12.760234','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v6_24.set_language_as_code'),('PATCHLOG00137','2017-09-01 22:00:12.765256','2017-09-01 22:00:12.765256','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v6_20x.update_insert_after'),('PATCHLOG00138','2017-09-01 22:00:12.771322','2017-09-01 22:00:12.771322','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'finally:frappe.patches.v6_24.sync_desktop_icons'),('PATCHLOG00139','2017-09-01 22:00:12.778304','2017-09-01 22:00:12.778304','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v6_20x.set_allow_draft_for_print'),('PATCHLOG00140','2017-09-01 22:00:12.783030','2017-09-01 22:00:12.783030','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v6_20x.remove_roles_from_website_user'),('PATCHLOG00141','2017-09-01 22:00:12.787892','2017-09-01 22:00:12.787892','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v7_0.set_user_fullname'),('PATCHLOG00142','2017-09-01 22:00:12.793669','2017-09-01 22:00:12.793669','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v7_0.desktop_icons_hidden_by_admin_as_blocked'),('PATCHLOG00143','2017-09-01 22:00:12.798555','2017-09-01 22:00:12.798555','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v7_0.add_communication_in_doc'),('PATCHLOG00144','2017-09-01 22:00:12.803196','2017-09-01 22:00:12.803196','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v7_0.update_send_after_in_bulk_email'),('PATCHLOG00145','2017-09-01 22:00:12.809316','2017-09-01 22:00:12.809316','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.db.sql(\'\'\'delete from `tabSingles` where doctype=\"Email Settings\"\'\'\') # 2016-06-13'),('PATCHLOG00146','2017-09-01 22:00:12.816364','2017-09-01 22:00:12.816364','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.db.sql(\"delete from `tabWeb Page` where ifnull(template_path, \'\')!=\'\'\")'),('PATCHLOG00147','2017-09-01 22:00:12.822453','2017-09-01 22:00:12.822453','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v7_0.rename_newsletter_list_to_email_group'),('PATCHLOG00148','2017-09-01 22:00:12.828478','2017-09-01 22:00:12.828478','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v7_0.replace_upgrade_link_limit'),('PATCHLOG00149','2017-09-01 22:00:12.833636','2017-09-01 22:00:12.833636','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v7_0.set_email_group'),('PATCHLOG00150','2017-09-01 22:00:12.838631','2017-09-01 22:00:12.838631','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v7_1.setup_integration_services #2016-10-27'),('PATCHLOG00151','2017-09-01 22:00:12.844845','2017-09-01 22:00:12.844845','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v7_1.rename_chinese_language_codes'),('PATCHLOG00152','2017-09-01 22:00:12.849762','2017-09-01 22:00:12.849762','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.core.doctype.language.language.update_language_names() # 2017-04-12'),('PATCHLOG00153','2017-09-01 22:00:12.855739','2017-09-01 22:00:12.855739','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.db.set_value(\"Print Settings\", \"Print Settings\", \"add_draft_heading\", 1)'),('PATCHLOG00154','2017-09-01 22:00:12.861398','2017-09-01 22:00:12.861398','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v7_0.cleanup_list_settings'),('PATCHLOG00155','2017-09-01 22:00:12.866048','2017-09-01 22:00:12.866048','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.db.set_default(\'language\', \'\')'),('PATCHLOG00156','2017-09-01 22:00:12.871943','2017-09-01 22:00:12.871943','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v7_1.refactor_integration_broker'),('PATCHLOG00157','2017-09-01 22:00:12.878040','2017-09-01 22:00:12.878040','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v7_1.set_backup_limit'),('PATCHLOG00158','2017-09-01 22:00:12.883948','2017-09-01 22:00:12.883948','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v7_2.set_doctype_engine'),('PATCHLOG00159','2017-09-01 22:00:12.888712','2017-09-01 22:00:12.888712','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v7_2.merge_knowledge_base'),('PATCHLOG00160','2017-09-01 22:00:12.894215','2017-09-01 22:00:12.894215','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v7_0.update_report_builder_json'),('PATCHLOG00161','2017-09-01 22:00:12.899163','2017-09-01 22:00:12.899163','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v7_2.set_in_standard_filter_property #1'),('PATCHLOG00162','2017-09-01 22:00:12.904344','2017-09-01 22:00:12.904344','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v8_0.drop_unwanted_indexes'),('PATCHLOG00163','2017-09-01 22:00:12.911121','2017-09-01 22:00:12.911121','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.db.sql(\"update tabCommunication set communication_date = creation where time(communication_date) = 0\")'),('PATCHLOG00164','2017-09-01 22:00:12.917810','2017-09-01 22:00:12.917810','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v7_2.fix_email_queue_recipient'),('PATCHLOG00165','2017-09-01 22:00:12.922551','2017-09-01 22:00:12.922551','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v7_2.update_feedback_request # 2017-02-27'),('PATCHLOG00166','2017-09-01 22:00:12.929146','2017-09-01 22:00:12.929146','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.rename_doc(\'Country\', \'Macedonia, Republic of\', \'Macedonia\', ignore_if_exists=True)'),('PATCHLOG00167','2017-09-01 22:00:12.934508','2017-09-01 22:00:12.934508','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.rename_doc(\'Country\', \'Iran, Islamic Republic of\', \'Iran\', ignore_if_exists=True)'),('PATCHLOG00168','2017-09-01 22:00:12.942653','2017-09-01 22:00:12.942653','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.rename_doc(\'Country\', \'Tanzania, United Republic of\', \'Tanzania\', ignore_if_exists=True)'),('PATCHLOG00169','2017-09-01 22:00:12.947267','2017-09-01 22:00:12.947267','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.rename_doc(\'Country\', \'Syrian Arab Republic\', \'Syria\', ignore_if_exists=True)'),('PATCHLOG00170','2017-09-01 22:00:12.952372','2017-09-01 22:00:12.952372','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v8_0.rename_listsettings_to_usersettings'),('PATCHLOG00171','2017-09-01 22:00:12.958173','2017-09-01 22:00:12.958173','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v7_2.update_communications'),('PATCHLOG00172','2017-09-01 22:00:12.964179','2017-09-01 22:00:12.964179','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v8_0.deprecate_integration_broker'),('PATCHLOG00173','2017-09-01 22:00:12.988925','2017-09-01 22:00:12.988925','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v8_0.setup_email_inbox #2017-03-29'),('PATCHLOG00174','2017-09-01 22:00:13.000026','2017-09-01 22:00:13.000026','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v8_0.newsletter_childtable_migrate'),('PATCHLOG00175','2017-09-01 22:00:13.006409','2017-09-01 22:00:13.006409','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.db.sql(\"delete from `tabDesktop Icon` where module_name=\'Communication\'\")'),('PATCHLOG00176','2017-09-01 22:00:13.011919','2017-09-01 22:00:13.011919','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.db.sql(\"update `tabDesktop Icon` set type=\'list\' where _doctype=\'Communication\'\")'),('PATCHLOG00177','2017-09-01 22:00:13.017800','2017-09-01 22:00:13.017800','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v8_0.fix_non_english_desktop_icons # 2017-04-12'),('PATCHLOG00178','2017-09-01 22:00:13.023884','2017-09-01 22:00:13.023884','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v8_0.set_doctype_values_in_custom_role'),('PATCHLOG00179','2017-09-01 22:00:13.030604','2017-09-01 22:00:13.030604','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v8_0.install_new_build_system_requirements'),('PATCHLOG00180','2017-09-01 22:00:13.036121','2017-09-01 22:00:13.036121','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v8_0.set_currency_field_precision	# 2017-05-09'),('PATCHLOG00181','2017-09-01 22:00:13.041661','2017-09-01 22:00:13.041661','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v8_0.rename_print_to_printing'),('PATCHLOG00182','2017-09-01 22:00:13.048212','2017-09-01 22:00:13.048212','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v7_1.disabled_print_settings_for_custom_print_format'),('PATCHLOG00183','2017-09-01 22:00:13.053427','2017-09-01 22:00:13.053427','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v8_0.update_desktop_icons'),('PATCHLOG00184','2017-09-01 22:00:13.059625','2017-09-01 22:00:13.059625','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v8_0.update_gender_and_salutation'),('PATCHLOG00185','2017-09-01 22:00:13.065811','2017-09-01 22:00:13.065811','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'execute:frappe.db.sql(\'update tabReport set module=\"Desk\" where name=\"ToDo\"\')'),('PATCHLOG00186','2017-09-01 22:00:13.070933','2017-09-01 22:00:13.070933','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v8_1.enable_allow_error_traceback_in_system_settings'),('PATCHLOG00187','2017-09-01 22:00:13.077226','2017-09-01 22:00:13.077226','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v8_1.update_format_options_in_auto_email_report'),('PATCHLOG00188','2017-09-01 22:00:13.081827','2017-09-01 22:00:13.081827','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v8_1.delete_custom_docperm_if_doctype_not_exists'),('PATCHLOG00189','2017-09-01 22:00:13.086954','2017-09-01 22:00:13.086954','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v8_5.delete_email_group_member_with_invalid_emails'),('PATCHLOG00190','2017-09-01 22:00:13.093441','2017-09-01 22:00:13.093441','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v8_x.update_user_permission'),('PATCHLOG00191','2017-09-01 22:00:13.098609','2017-09-01 22:00:13.098609','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v8_5.patch_event_colors'),('PATCHLOG00192','2017-09-01 22:00:13.103537','2017-09-01 22:00:13.103537','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'frappe.patches.v8_7.update_email_queue_status');
/*!40000 ALTER TABLE `tabPatch Log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabPayment Gateway`
--

DROP TABLE IF EXISTS `tabPayment Gateway`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabPayment Gateway` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT '0',
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT '0',
  `_comments` text COLLATE utf8mb4_unicode_ci,
  `_assign` text COLLATE utf8mb4_unicode_ci,
  `_user_tags` text COLLATE utf8mb4_unicode_ci,
  `gateway` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_liked_by` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabPayment Gateway`
--

LOCK TABLES `tabPayment Gateway` WRITE;
/*!40000 ALTER TABLE `tabPayment Gateway` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabPayment Gateway` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabPortal Menu Item`
--

DROP TABLE IF EXISTS `tabPortal Menu Item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabPortal Menu Item` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT '0',
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT '0',
  `reference_doctype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `route` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enabled` int(1) NOT NULL DEFAULT '0',
  `role` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabPortal Menu Item`
--

LOCK TABLES `tabPortal Menu Item` WRITE;
/*!40000 ALTER TABLE `tabPortal Menu Item` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabPortal Menu Item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabPrint Format`
--

DROP TABLE IF EXISTS `tabPrint Format`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabPrint Format` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT '0',
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT '0',
  `module` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disabled` int(1) NOT NULL DEFAULT '0',
  `custom_format` int(1) NOT NULL DEFAULT '0',
  `font` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT 'Default',
  `_comments` text COLLATE utf8mb4_unicode_ci,
  `html` longtext COLLATE utf8mb4_unicode_ci,
  `show_section_headings` int(1) NOT NULL DEFAULT '0',
  `_liked_by` text COLLATE utf8mb4_unicode_ci,
  `_assign` text COLLATE utf8mb4_unicode_ci,
  `print_format_builder` int(1) NOT NULL DEFAULT '0',
  `standard` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT 'No',
  `_user_tags` text COLLATE utf8mb4_unicode_ci,
  `print_format_type` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT 'Server',
  `format_data` longtext COLLATE utf8mb4_unicode_ci,
  `doc_type` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `line_breaks` int(1) NOT NULL DEFAULT '0',
  `align_labels_left` int(1) NOT NULL DEFAULT '0',
  `css` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`name`),
  KEY `standard` (`standard`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabPrint Format`
--

LOCK TABLES `tabPrint Format` WRITE;
/*!40000 ALTER TABLE `tabPrint Format` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabPrint Format` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabPrint Heading`
--

DROP TABLE IF EXISTS `tabPrint Heading`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabPrint Heading` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT '0',
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT '0',
  `_liked_by` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `_user_tags` text COLLATE utf8mb4_unicode_ci,
  `_assign` text COLLATE utf8mb4_unicode_ci,
  `print_heading` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_comments` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabPrint Heading`
--

LOCK TABLES `tabPrint Heading` WRITE;
/*!40000 ALTER TABLE `tabPrint Heading` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabPrint Heading` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabProperty Setter`
--

DROP TABLE IF EXISTS `tabProperty Setter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabProperty Setter` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT '0',
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT '0',
  `default_value` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doc_type` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `property_type` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_user_tags` text COLLATE utf8mb4_unicode_ci,
  `_assign` text COLLATE utf8mb4_unicode_ci,
  `value` text COLLATE utf8mb4_unicode_ci,
  `doctype_or_field` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_comments` text COLLATE utf8mb4_unicode_ci,
  `property` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `field_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_liked_by` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`name`),
  KEY `doc_type` (`doc_type`),
  KEY `property` (`property`),
  KEY `field_name` (`field_name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabProperty Setter`
--

LOCK TABLES `tabProperty Setter` WRITE;
/*!40000 ALTER TABLE `tabProperty Setter` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabProperty Setter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabReport`
--

DROP TABLE IF EXISTS `tabReport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabReport` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT '0',
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT '0',
  `apply_user_permissions` int(1) NOT NULL DEFAULT '1',
  `ref_doctype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `report_type` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_assign` text COLLATE utf8mb4_unicode_ci,
  `_comments` text COLLATE utf8mb4_unicode_ci,
  `javascript` longtext COLLATE utf8mb4_unicode_ci,
  `module` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `report_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disabled` int(1) NOT NULL DEFAULT '0',
  `letter_head` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_standard` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `add_total_row` int(1) NOT NULL DEFAULT '0',
  `query` longtext COLLATE utf8mb4_unicode_ci,
  `_user_tags` text COLLATE utf8mb4_unicode_ci,
  `_liked_by` text COLLATE utf8mb4_unicode_ci,
  `json` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabReport`
--

LOCK TABLES `tabReport` WRITE;
/*!40000 ALTER TABLE `tabReport` DISABLE KEYS */;
INSERT INTO `tabReport` VALUES ('Addresses And Contacts','2017-01-19 12:57:22.881566','2017-04-10 15:04:12.498920','Administrator','Administrator',0,NULL,NULL,NULL,2,1,'Address','Script Report',NULL,NULL,NULL,'Contacts','Addresses And Contacts',0,NULL,'Yes',0,NULL,NULL,NULL,NULL),('Document Share Report','2015-02-05 06:01:35.060098','2017-02-24 20:01:16.232286','Administrator','Administrator',0,NULL,NULL,NULL,2,1,'DocShare','Report Builder',NULL,NULL,NULL,'Core','Document Share Report',0,NULL,'Yes',0,NULL,NULL,NULL,'{\"add_total_row\": 0, \"sort_by\": \"DocShare.modified\", \"sort_order\": \"desc\", \"sort_by_next\": null, \"filters\": [], \"sort_order_next\": \"desc\", \"columns\": [[\"name\", \"DocShare\"], [\"user\", \"DocShare\"], [\"share_doctype\", \"DocShare\"], [\"share_name\", \"DocShare\"], [\"read\", \"DocShare\"], [\"write\", \"DocShare\"], [\"share\", \"DocShare\"]]}'),('Feedback Ratings','2017-02-05 20:38:21.890174','2017-02-24 19:56:51.141147','Administrator','Administrator',0,NULL,NULL,NULL,2,1,'Feedback Trigger','Script Report',NULL,NULL,NULL,'Core','Feedback Ratings',0,NULL,'Yes',0,NULL,NULL,NULL,NULL),('Permitted Documents For User','2014-06-03 05:20:35.218263','2017-02-24 20:16:34.069990','Administrator','Administrator',0,NULL,NULL,NULL,3,1,'User','Script Report',NULL,NULL,NULL,'Core','Permitted Documents For User',0,NULL,'Yes',0,NULL,NULL,NULL,NULL),('ToDo','2013-02-25 14:26:30.000000','2017-06-21 18:18:50.748793','Administrator','Administrator',0,NULL,NULL,NULL,3,1,'ToDo','Script Report',NULL,NULL,NULL,'Desk','ToDo',0,NULL,'Yes',0,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tabReport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabRole`
--

DROP TABLE IF EXISTS `tabRole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabRole` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT '0',
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT '0',
  `_liked_by` text COLLATE utf8mb4_unicode_ci,
  `desk_access` int(1) NOT NULL DEFAULT '1',
  `_user_tags` text COLLATE utf8mb4_unicode_ci,
  `_assign` text COLLATE utf8mb4_unicode_ci,
  `restrict_to_domain` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disabled` int(1) NOT NULL DEFAULT '0',
  `role_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_comments` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabRole`
--

LOCK TABLES `tabRole` WRITE;
/*!40000 ALTER TABLE `tabRole` DISABLE KEYS */;
INSERT INTO `tabRole` VALUES ('Accounts Manager','2017-09-01 22:00:08.404690','2017-09-01 22:00:08.404690','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,1,NULL,NULL,NULL,0,'Accounts Manager',NULL),('Accounts User','2017-09-01 22:00:05.071977','2017-09-01 22:00:05.071977','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,1,NULL,NULL,NULL,0,'Accounts User',NULL),('Administrator','2017-09-01 21:59:58.326373','2017-09-01 21:59:58.326373','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,1,NULL,NULL,NULL,0,'Administrator',NULL),('All','2017-09-01 21:59:58.321083','2017-09-01 21:59:58.321083','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,1,NULL,NULL,NULL,0,'All',NULL),('Blogger','2017-09-01 21:59:59.864813','2017-09-01 21:59:59.864813','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,1,NULL,NULL,NULL,0,'Blogger',NULL),('Guest','2017-09-01 21:59:58.336316','2017-09-01 21:59:58.336316','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,1,NULL,NULL,NULL,0,'Guest',NULL),('Knowledge Base Contributor','2017-09-01 22:00:01.135092','2017-09-01 22:00:01.135092','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,1,NULL,NULL,NULL,0,'Knowledge Base Contributor',NULL),('Knowledge Base Editor','2017-09-01 22:00:01.141852','2017-09-01 22:00:01.141852','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,1,NULL,NULL,NULL,0,'Knowledge Base Editor',NULL),('Maintenance Manager','2017-09-01 22:00:08.385991','2017-09-01 22:00:08.385991','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,1,NULL,NULL,NULL,0,'Maintenance Manager',NULL),('Maintenance User','2017-09-01 22:00:08.381372','2017-09-01 22:00:08.381372','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,1,NULL,NULL,NULL,0,'Maintenance User',NULL),('Newsletter Manager','2017-09-01 22:00:02.487928','2017-09-01 22:00:02.487928','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,1,NULL,NULL,NULL,0,'Newsletter Manager',NULL),('Purchase Manager','2017-09-01 22:00:08.373894','2017-09-01 22:00:08.373894','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,1,NULL,NULL,NULL,0,'Purchase Manager',NULL),('Purchase Master Manager','2017-09-01 22:00:08.416442','2017-09-01 22:00:08.416442','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,1,NULL,NULL,NULL,0,'Purchase Master Manager',NULL),('Purchase User','2017-09-01 22:00:05.078390','2017-09-01 22:00:05.078390','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,1,NULL,NULL,NULL,0,'Purchase User',NULL),('Report Manager','2017-09-01 22:00:03.861745','2017-09-01 22:00:03.861745','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,1,NULL,NULL,NULL,0,'Report Manager',NULL),('Sales Manager','2017-09-01 22:00:08.398014','2017-09-01 22:00:08.398014','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,1,NULL,NULL,NULL,0,'Sales Manager',NULL),('Sales Master Manager','2017-09-01 22:00:08.391953','2017-09-01 22:00:08.391953','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,1,NULL,NULL,NULL,0,'Sales Master Manager',NULL),('Sales User','2017-09-01 22:00:05.067291','2017-09-01 22:00:05.067291','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,1,NULL,NULL,NULL,0,'Sales User',NULL),('System Manager','2017-09-01 21:59:58.316659','2017-09-01 21:59:58.316659','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,1,NULL,NULL,NULL,0,'System Manager',NULL),('Website Manager','2017-09-01 21:59:59.765605','2017-09-01 21:59:59.765605','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,1,NULL,NULL,NULL,0,'Website Manager',NULL);
/*!40000 ALTER TABLE `tabRole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabSalutation`
--

DROP TABLE IF EXISTS `tabSalutation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabSalutation` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT '0',
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT '0',
  `salutation` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_comments` text COLLATE utf8mb4_unicode_ci,
  `_assign` text COLLATE utf8mb4_unicode_ci,
  `_user_tags` text COLLATE utf8mb4_unicode_ci,
  `_liked_by` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabSalutation`
--

LOCK TABLES `tabSalutation` WRITE;
/*!40000 ALTER TABLE `tabSalutation` DISABLE KEYS */;
INSERT INTO `tabSalutation` VALUES ('Dr','2017-09-01 12:38:04.724641','2017-09-01 12:38:04.724641','Administrator','Administrator',0,NULL,NULL,NULL,0,'Dr',NULL,NULL,NULL,NULL),('Madam','2017-09-01 12:38:04.745803','2017-09-01 12:38:04.745803','Administrator','Administrator',0,NULL,NULL,NULL,0,'Madam',NULL,NULL,NULL,NULL),('Master','2017-09-01 12:38:04.764773','2017-09-01 12:38:04.764773','Administrator','Administrator',0,NULL,NULL,NULL,0,'Master',NULL,NULL,NULL,NULL),('Miss','2017-09-01 12:38:04.756351','2017-09-01 12:38:04.756351','Administrator','Administrator',0,NULL,NULL,NULL,0,'Miss',NULL,NULL,NULL,NULL),('Mr','2017-09-01 12:38:04.694529','2017-09-01 12:38:04.694529','Administrator','Administrator',0,NULL,NULL,NULL,0,'Mr',NULL,NULL,NULL,NULL),('Mrs','2017-09-01 12:38:04.730308','2017-09-01 12:38:04.730308','Administrator','Administrator',0,NULL,NULL,NULL,0,'Mrs',NULL,NULL,NULL,NULL),('Ms','2017-09-01 12:38:04.710291','2017-09-01 12:38:04.710291','Administrator','Administrator',0,NULL,NULL,NULL,0,'Ms',NULL,NULL,NULL,NULL),('Mx','2017-09-01 12:38:04.717999','2017-09-01 12:38:04.717999','Administrator','Administrator',0,NULL,NULL,NULL,0,'Mx',NULL,NULL,NULL,NULL),('Prof','2017-09-01 12:38:04.774832','2017-09-01 12:38:04.774832','Administrator','Administrator',0,NULL,NULL,NULL,0,'Prof',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tabSalutation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabSeries`
--

DROP TABLE IF EXISTS `tabSeries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabSeries` (
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabSeries`
--

LOCK TABLES `tabSeries` WRITE;
/*!40000 ALTER TABLE `tabSeries` DISABLE KEYS */;
INSERT INTO `tabSeries` VALUES ('PATCHLOG',192),('ARS-',9),('PAC-',2);
/*!40000 ALTER TABLE `tabSeries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabSessions`
--

DROP TABLE IF EXISTS `tabSessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabSessions` (
  `user` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sessiondata` longtext COLLATE utf8mb4_unicode_ci,
  `ipaddress` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastupdate` datetime(6) DEFAULT NULL,
  `device` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'desktop',
  `status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `sid` (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabSessions`
--

LOCK TABLES `tabSessions` WRITE;
/*!40000 ALTER TABLE `tabSessions` DISABLE KEYS */;
INSERT INTO `tabSessions` VALUES ('Administrator','3e76133982cf05c24682835e0ca18f17afc9c5dd24f2cc6d88318fd7','{u\'session_expiry\': u\'06:00:00\', u\'session_country\': None, \'csrf_token\': \'2c400d2e9500d9743d5832ddbe35fc2eace674556cb0fe955bdb4b7a\', u\'last_updated\': \'2017-09-01 19:22:55.773103\', u\'lang\': u\'en\', u\'user_type\': None, \'user\': u\'Administrator\', u\'full_name\': None, u\'device\': u\'desktop\', \'session_ip\': u\'10.0.0.7\'}',NULL,'2017-09-01 16:22:55.000000','desktop','Active'),('Administrator','8021d55ae32dd7e6058348cb5c61c5b7f5986c48adbd4a407976d198','{u\'session_expiry\': u\'06:00:00\', u\'session_country\': None, \'csrf_token\': \'452af328aec11594ca8e21cbdb7f1aab350b6a48a05703a4b1741b09\', u\'last_updated\': \'2017-09-01 20:14:12.555828\', u\'lang\': u\'en\', u\'user_type\': None, \'user\': u\'Administrator\', u\'full_name\': None, u\'device\': u\'desktop\', \'session_ip\': u\'10.0.0.27\'}',NULL,'2017-09-01 17:14:12.000000','desktop','Active');
/*!40000 ALTER TABLE `tabSessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabSingles`
--

DROP TABLE IF EXISTS `tabSingles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabSingles` (
  `doctype` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  KEY `singles_doctype_field_index` (`doctype`,`field`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabSingles`
--

LOCK TABLES `tabSingles` WRITE;
/*!40000 ALTER TABLE `tabSingles` DISABLE KEYS */;
INSERT INTO `tabSingles` VALUES ('Test Runner','modified_by','Administrator'),('Test Runner','name','Test Runner'),('Test Runner','parent',NULL),('Test Runner','app',NULL),('Test Runner','creation','2017-09-01 22:00:10.013947'),('Test Runner','modified','2017-09-01 22:00:10.013947'),('Test Runner','idx','0'),('Test Runner','parenttype',NULL),('Test Runner','module_path',NULL),('Test Runner','owner','Administrator'),('Test Runner','docstatus','0'),('Test Runner','parentfield',NULL),('Dropbox Settings','app_secret_key',NULL),('Dropbox Settings','modified_by','Administrator'),('Dropbox Settings','name','Dropbox Settings'),('Dropbox Settings','parent',NULL),('Dropbox Settings','app_access_key',NULL),('Dropbox Settings','send_notifications_to',NULL),('Dropbox Settings','creation','2017-09-01 22:00:10.068244'),('Dropbox Settings','enabled','0'),('Dropbox Settings','modified','2017-09-01 22:00:10.068244'),('Dropbox Settings','dropbox_setup_via_site_config','0'),('Dropbox Settings','idx','0'),('Dropbox Settings','parenttype',NULL),('Dropbox Settings','backup_frequency',''),('Dropbox Settings','owner','Administrator'),('Dropbox Settings','docstatus','0'),('Dropbox Settings','dropbox_access_secret',NULL),('Dropbox Settings','dropbox_access_token',NULL),('Dropbox Settings','dropbox_access_key',NULL),('Dropbox Settings','parentfield',NULL),('GSuite Settings','enable','0'),('GSuite Settings','modified_by','Administrator'),('GSuite Settings','name','GSuite Settings'),('GSuite Settings','parent',NULL),('GSuite Settings','authorization_code',NULL),('GSuite Settings','creation','2017-09-01 22:00:10.130721'),('GSuite Settings','modified','2017-09-01 22:00:10.130721'),('GSuite Settings','idx','0'),('GSuite Settings','parenttype',NULL),('GSuite Settings','script_url','https://script.google.com/macros/s/AKfycbxIFOx3301xwtF2IFPJ4pUQGqkNF3hBiBebppWkeKn6fKZRQvk/exec'),('GSuite Settings','client_id',NULL),('GSuite Settings','client_secret',NULL),('GSuite Settings','owner','Administrator'),('GSuite Settings','docstatus','0'),('GSuite Settings','refresh_token',NULL),('GSuite Settings','parentfield',NULL),('Domain Settings','modified_by','Administrator'),('Domain Settings','name','Domain Settings'),('Domain Settings','parent',NULL),('Domain Settings','creation','2017-09-01 22:00:10.250505'),('Domain Settings','modified','2017-09-01 22:00:10.250505'),('Domain Settings','idx','0'),('Domain Settings','parenttype',NULL),('Domain Settings','owner','Administrator'),('Domain Settings','docstatus','0'),('Domain Settings','parentfield',NULL),('Role Permission for Page and Report','report',NULL),('Role Permission for Page and Report','modified_by','Administrator'),('Role Permission for Page and Report','name','Role Permission for Page and Report'),('Role Permission for Page and Report','parent',NULL),('Role Permission for Page and Report','creation','2017-09-01 22:00:10.592504'),('Role Permission for Page and Report','modified','2017-09-01 22:00:10.592504'),('Role Permission for Page and Report','idx','0'),('Role Permission for Page and Report','parenttype',NULL),('Role Permission for Page and Report','owner','Administrator'),('Role Permission for Page and Report','docstatus','0'),('Role Permission for Page and Report','set_role_for',''),('Role Permission for Page and Report','page',NULL),('Role Permission for Page and Report','parentfield',NULL),('Stripe Settings','publishable_key',NULL),('Stripe Settings','modified_by','Administrator'),('Stripe Settings','name','Stripe Settings'),('Stripe Settings','parent',NULL),('Stripe Settings','creation','2017-09-01 22:00:10.642984'),('Stripe Settings','modified','2017-09-01 22:00:10.642984'),('Stripe Settings','idx','0'),('Stripe Settings','parenttype',NULL),('Stripe Settings','owner','Administrator'),('Stripe Settings','docstatus','0'),('Stripe Settings','secret_key',NULL),('Stripe Settings','parentfield',NULL),('LDAP Settings','ldap_first_name_field',NULL),('LDAP Settings','modified_by','Administrator'),('LDAP Settings','name','LDAP Settings'),('LDAP Settings','parent',NULL),('LDAP Settings','creation','2017-09-01 22:00:10.716712'),('LDAP Settings','enabled','0'),('LDAP Settings','modified','2017-09-01 22:00:10.716712'),('LDAP Settings','ldap_email_field',NULL),('LDAP Settings','idx','0'),('LDAP Settings','parenttype',NULL),('LDAP Settings','organizational_unit',NULL),('LDAP Settings','base_dn',NULL),('LDAP Settings','owner','Administrator'),('LDAP Settings','docstatus','0'),('LDAP Settings','ldap_server_url',NULL),('LDAP Settings','password',NULL),('LDAP Settings','ldap_search_string',NULL),('LDAP Settings','ldap_username_field',NULL),('LDAP Settings','parentfield',NULL),('Website Settings','robots_txt',NULL),('Website Settings','creation','2017-09-01 22:00:10.771170'),('Website Settings','favicon',NULL),('Website Settings','owner','Administrator'),('Website Settings','banner_html',NULL),('Website Settings','google_analytics_id',NULL),('Website Settings','modified_by','Administrator'),('Website Settings','copyright',NULL),('Website Settings','home_page',NULL),('Website Settings','hide_footer_signup','0'),('Website Settings','brand_html',NULL),('Website Settings','head_html',NULL),('Website Settings','title_prefix',NULL),('Website Settings','subdomain',NULL),('Website Settings','parent',NULL),('Website Settings','disable_signup','0'),('Website Settings','banner_image',NULL),('Website Settings','docstatus','0'),('Website Settings','website_theme_image_link',NULL),('Website Settings','website_theme','Standard'),('Website Settings','name','Website Settings'),('Website Settings','idx','0'),('Website Settings','modified','2017-09-01 22:00:10.771170'),('Website Settings','parenttype',NULL),('Website Settings','navbar_search','0'),('Website Settings','address',NULL),('Website Settings','parentfield',NULL),('User Permission for Page and Report','report',NULL),('User Permission for Page and Report','modified_by','Administrator'),('User Permission for Page and Report','name','User Permission for Page and Report'),('User Permission for Page and Report','parent',NULL),('User Permission for Page and Report','creation','2017-09-01 22:00:10.965465'),('User Permission for Page and Report','modified','2017-09-01 22:00:10.965465'),('User Permission for Page and Report','idx','0'),('User Permission for Page and Report','parenttype',NULL),('User Permission for Page and Report','owner','Administrator'),('User Permission for Page and Report','docstatus','0'),('User Permission for Page and Report','set_role_for',''),('User Permission for Page and Report','page',NULL),('User Permission for Page and Report','parentfield',NULL),('About Us Settings','modified_by','Administrator'),('About Us Settings','name','About Us Settings'),('About Us Settings','parent',NULL),('About Us Settings','footer',NULL),('About Us Settings','company_introduction',NULL),('About Us Settings','creation','2017-09-01 22:00:11.093638'),('About Us Settings','modified','2017-09-01 22:00:11.093638'),('About Us Settings','idx','0'),('About Us Settings','parenttype',NULL),('About Us Settings','company_history_heading',NULL),('About Us Settings','owner','Administrator'),('About Us Settings','docstatus','0'),('About Us Settings','team_members_heading',NULL),('About Us Settings','parentfield',NULL),('Blog Settings','modified_by','Administrator'),('Blog Settings','name','Blog Settings'),('Blog Settings','parent',NULL),('Blog Settings','creation','2017-09-01 22:00:11.144836'),('Blog Settings','modified','2017-09-01 22:00:11.144836'),('Blog Settings','idx','0'),('Blog Settings','parenttype',NULL),('Blog Settings','owner','Administrator'),('Blog Settings','docstatus','0'),('Blog Settings','writers_introduction',NULL),('Blog Settings','blog_title',NULL),('Blog Settings','blog_introduction',NULL),('Blog Settings','parentfield',NULL),('Contact Us Settings','address_line2',NULL),('Contact Us Settings','city',NULL),('Contact Us Settings','address_line1',NULL),('Contact Us Settings','modified_by','Administrator'),('Contact Us Settings','name','Contact Us Settings'),('Contact Us Settings','parent',NULL),('Contact Us Settings','state',NULL),('Contact Us Settings','introduction',NULL),('Contact Us Settings','country',NULL),('Contact Us Settings','creation','2017-09-01 22:00:11.205263'),('Contact Us Settings','forward_to_email',NULL),('Contact Us Settings','modified','2017-09-01 22:00:11.205263'),('Contact Us Settings','pincode',NULL),('Contact Us Settings','idx','0'),('Contact Us Settings','parenttype',NULL),('Contact Us Settings','address_title',NULL),('Contact Us Settings','owner','Administrator'),('Contact Us Settings','docstatus','0'),('Contact Us Settings','heading',NULL),('Contact Us Settings','query_options',NULL),('Contact Us Settings','parentfield',NULL),('Website Script','javascript',NULL),('Website Script','modified_by','Administrator'),('Website Script','name','Website Script'),('Website Script','parent',NULL),('Website Script','creation','2017-09-01 22:00:11.280116'),('Website Script','modified','2017-09-01 22:00:11.280116'),('Website Script','idx','0'),('Website Script','parenttype',NULL),('Website Script','owner','Administrator'),('Website Script','docstatus','0'),('Website Script','parentfield',NULL),('Bulk Update','modified_by','Administrator'),('Bulk Update','name','Bulk Update'),('Bulk Update','parent',NULL),('Bulk Update','field',NULL),('Bulk Update','creation','2017-09-01 22:00:11.344233'),('Bulk Update','modified','2017-09-01 22:00:11.344233'),('Bulk Update','idx','0'),('Bulk Update','parenttype',NULL),('Bulk Update','limit','500'),('Bulk Update','owner','Administrator'),('Bulk Update','docstatus','0'),('Bulk Update','document_type',NULL),('Bulk Update','update_value',NULL),('Bulk Update','condition',NULL),('Bulk Update','parentfield',NULL),('Razorpay Settings','modified_by','Administrator'),('Razorpay Settings','name','Razorpay Settings'),('Razorpay Settings','parent',NULL),('Razorpay Settings','redirect_to',NULL),('Razorpay Settings','api_secret',NULL),('Razorpay Settings','creation','2017-09-01 22:00:11.388877'),('Razorpay Settings','modified','2017-09-01 22:00:11.388877'),('Razorpay Settings','idx','0'),('Razorpay Settings','parenttype',NULL),('Razorpay Settings','owner','Administrator'),('Razorpay Settings','docstatus','0'),('Razorpay Settings','api_key',NULL),('Razorpay Settings','parentfield',NULL),('PayPal Settings','paypal_sandbox','0'),('PayPal Settings','modified_by','Administrator'),('PayPal Settings','name','PayPal Settings'),('PayPal Settings','parent',NULL),('PayPal Settings','redirect_to',NULL),('PayPal Settings','creation','2017-09-01 22:00:11.445110'),('PayPal Settings','api_password',NULL),('PayPal Settings','modified','2017-09-01 22:00:11.445110'),('PayPal Settings','signature',NULL),('PayPal Settings','idx','0'),('PayPal Settings','parenttype',NULL),('PayPal Settings','api_username',NULL),('PayPal Settings','owner','Administrator'),('PayPal Settings','docstatus','0'),('PayPal Settings','parentfield',NULL),('Portal Settings','modified_by','Administrator'),('Portal Settings','name','Portal Settings'),('Portal Settings','parent',NULL),('Portal Settings','default_role',NULL),('Portal Settings','creation','2017-09-01 22:00:11.584627'),('Portal Settings','modified','2017-09-01 22:00:11.584627'),('Portal Settings','idx','0'),('Portal Settings','parenttype',NULL),('Portal Settings','hide_standard_menu','0'),('Portal Settings','owner','Administrator'),('Portal Settings','docstatus','0'),('Portal Settings','parentfield',NULL),('OAuth Provider Settings','modified_by','Administrator'),('OAuth Provider Settings','name','OAuth Provider Settings'),('OAuth Provider Settings','parent',NULL),('OAuth Provider Settings','creation','2017-09-01 22:00:11.721845'),('OAuth Provider Settings','modified','2017-09-01 22:00:11.721845'),('OAuth Provider Settings','idx','0'),('OAuth Provider Settings','parenttype',NULL),('OAuth Provider Settings','skip_authorization','Force'),('OAuth Provider Settings','owner','Administrator'),('OAuth Provider Settings','docstatus','0'),('OAuth Provider Settings','parentfield',NULL),('Social Login Keys','github_client_secret',NULL),('Social Login Keys','facebook_client_secret',NULL),('Social Login Keys','modified_by','Administrator'),('Social Login Keys','name','Social Login Keys'),('Social Login Keys','parent',NULL),('Social Login Keys','frappe_server_url',NULL),('Social Login Keys','creation','2017-09-01 22:00:11.780767'),('Social Login Keys','modified','2017-09-01 22:00:11.780767'),('Social Login Keys','facebook_client_id',NULL),('Social Login Keys','google_client_secret',NULL),('Social Login Keys','idx','0'),('Social Login Keys','parenttype',NULL),('Social Login Keys','frappe_client_id',NULL),('Social Login Keys','frappe_client_secret',NULL),('Social Login Keys','owner','Administrator'),('Social Login Keys','docstatus','0'),('Social Login Keys','google_client_id',NULL),('Social Login Keys','github_client_id',NULL),('Social Login Keys','parentfield',NULL),('Print Settings','creation','2017-09-01 22:00:10.305348'),('Print Settings','print_style','Modern'),('Print Settings','with_letterhead','1'),('Print Settings','owner','Administrator'),('Print Settings','font','Default'),('Print Settings','send_print_as_pdf','1'),('Print Settings','allow_page_break_inside_tables','0'),('Print Settings','modified_by','Administrator'),('Print Settings','repeat_header_footer','1'),('Print Settings','allow_print_for_draft','1'),('Print Settings','add_draft_heading','1'),('Print Settings','docstatus','0'),('Print Settings','parent',NULL),('Print Settings','attach_view_link','1'),('Print Settings','font_size','0'),('Print Settings','name','Print Settings'),('Print Settings','idx','0'),('Print Settings','modified','2017-09-01 22:00:15.942087'),('Print Settings','parenttype',NULL),('Print Settings','pdf_page_size','A4'),('Print Settings','allow_print_for_cancelled','0'),('Print Settings','parentfield',NULL),('System Settings','disable_standard_email_footer','0'),('System Settings','email_footer_address',NULL),('System Settings','float_precision','3'),('System Settings','minimum_password_score',''),('System Settings','currency_precision',''),('System Settings','creation','2017-09-01 22:00:09.154498'),('System Settings','time_zone','America/Santo_Domingo'),('System Settings','owner','Administrator'),('System Settings','idx','0'),('System Settings','apply_strict_user_permissions','0'),('System Settings','docstatus','0'),('System Settings','enable_scheduler','1'),('System Settings','session_expiry','06:00'),('System Settings','ignore_user_permissions_if_missing','0'),('System Settings','deny_multiple_sessions','0'),('System Settings','parent',NULL),('System Settings','allow_error_traceback','1'),('System Settings','number_format','#,###.##'),('System Settings','date_format','dd-mm-yyyy'),('System Settings','name','System Settings'),('System Settings','language','en'),('System Settings','country','Dominican Republic'),('System Settings','enable_password_policy','0'),('System Settings','allow_login_using_mobile_number','0'),('System Settings','parenttype',NULL),('System Settings','backup_limit','3'),('System Settings','session_expiry_mobile','720:00'),('System Settings','parentfield',NULL),('System Settings','setup_complete','1'),('System Settings','modified_by','Administrator'),('System Settings','modified','2017-09-01 12:38:04.012336'),('System Settings','scheduler_last_event','2017-09-01 20:58:51');
/*!40000 ALTER TABLE `tabSingles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabStandard Reply`
--

DROP TABLE IF EXISTS `tabStandard Reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabStandard Reply` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT '0',
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT '0',
  `_liked_by` text COLLATE utf8mb4_unicode_ci,
  `_comments` text COLLATE utf8mb4_unicode_ci,
  `_assign` text COLLATE utf8mb4_unicode_ci,
  `_user_tags` text COLLATE utf8mb4_unicode_ci,
  `response` longtext COLLATE utf8mb4_unicode_ci,
  `subject` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabStandard Reply`
--

LOCK TABLES `tabStandard Reply` WRITE;
/*!40000 ALTER TABLE `tabStandard Reply` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabStandard Reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabTag`
--

DROP TABLE IF EXISTS `tabTag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabTag` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT '0',
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT '0',
  `tag_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabTag`
--

LOCK TABLES `tabTag` WRITE;
/*!40000 ALTER TABLE `tabTag` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabTag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabTag Category`
--

DROP TABLE IF EXISTS `tabTag Category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabTag Category` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT '0',
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT '0',
  `_liked_by` text COLLATE utf8mb4_unicode_ci,
  `_user_tags` text COLLATE utf8mb4_unicode_ci,
  `_assign` text COLLATE utf8mb4_unicode_ci,
  `_comments` text COLLATE utf8mb4_unicode_ci,
  `category_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabTag Category`
--

LOCK TABLES `tabTag Category` WRITE;
/*!40000 ALTER TABLE `tabTag Category` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabTag Category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabTag Doc Category`
--

DROP TABLE IF EXISTS `tabTag Doc Category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabTag Doc Category` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT '0',
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT '0',
  `tagdoc` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabTag Doc Category`
--

LOCK TABLES `tabTag Doc Category` WRITE;
/*!40000 ALTER TABLE `tabTag Doc Category` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabTag Doc Category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabTelefonos`
--

DROP TABLE IF EXISTS `tabTelefonos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabTelefonos` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT '0',
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT '0',
  `telefono` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estado` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tipo` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabTelefonos`
--

LOCK TABLES `tabTelefonos` WRITE;
/*!40000 ALTER TABLE `tabTelefonos` DISABLE KEYS */;
INSERT INTO `tabTelefonos` VALUES ('241aeb2398','2017-09-01 16:58:39.908813','2017-09-01 16:58:39.908813','Administrator','Administrator',0,'ARS-000007','telefonos','Empresa',1,'(809) 381-5000','ACTIVO','Trabajo'),('24cf67f7b7','2017-09-01 17:07:42.148445','2017-09-01 17:07:42.148445','Administrator','Administrator',0,'ARS-000009','telefonos','Empresa',2,'(809) 541-1009','ACTIVO','Otro'),('416b2d2c1a','2017-09-01 16:50:24.391537','2017-09-01 16:50:24.391537','Administrator','Administrator',0,'ARS-000003','telefonos','Empresa',1,'(809) 686-1218','ACTIVO','Trabajo'),('46f67a4937','2017-09-01 16:54:04.478680','2017-09-01 16:54:04.478680','Administrator','Administrator',0,'ARS-000004','telefonos','Empresa',1,'(809) 685-4620','ACTIVO','Trabajo'),('56114ebcde','2017-09-01 17:05:50.186323','2017-09-01 17:05:50.186323','Administrator','Administrator',0,'ARS-000008','telefonos','Empresa',2,'(809) 544-7200','ACTIVO','Otro'),('62d572b23f','2017-09-01 16:30:04.642753','2017-09-01 16:30:04.642753','Administrator','Administrator',0,'ARS-000002','telefonos','Empresa',1,'(809) 562-6660','ACTIVO','Trabajo'),('7a72a8bc5d','2017-09-01 16:05:57.044317','2017-09-01 16:24:37.970159','Administrator','Administrator',0,'ARS-000001','telefonos','Empresa',1,'(809) 333-3822','ACTIVO','Trabajo'),('7d0d7f71ed','2017-09-01 17:05:50.186323','2017-09-01 17:05:50.186323','Administrator','Administrator',0,'ARS-000008','telefonos','Empresa',1,'(809) 544-7100','ACTIVO','Trabajo'),('92cb58f2b3','2017-09-01 20:08:21.539517','2017-09-01 20:12:21.450723','Administrator','Administrator',0,'PAC-00000002','telefonos','Paciente',2,'(809) 408-0065','ACTIVO','Trabajo'),('980db047a6','2017-09-01 18:15:07.932534','2017-09-01 19:37:06.451829','Administrator','Administrator',0,'PAC-00000001','telefonos','Paciente',1,'(829) 826-0772','ACTIVO','Movil'),('989df8af7e','2017-09-01 20:08:21.539517','2017-09-01 20:12:21.450723','Administrator','Administrator',0,'PAC-00000002','telefonos','Paciente',1,'(849) 650-0065','ACTIVO','Movil'),('a0e28e3c29','2017-09-01 16:55:31.872162','2017-09-01 16:55:31.872162','Administrator','Administrator',0,'ARS-000005','telefonos','Empresa',1,'(809) 476-3570','ACTIVO','Trabajo'),('cdda339b57','2017-09-01 17:07:42.148445','2017-09-01 17:07:42.148445','Administrator','Administrator',0,'ARS-000009','telefonos','Empresa',1,'(809) 540-0901','ACTIVO','Trabajo'),('d91c92925c','2017-09-01 16:57:35.809882','2017-09-01 16:57:35.809882','Administrator','Administrator',0,'ARS-000006','telefonos','Empresa',1,'(809) 583-1400','ACTIVO','Trabajo');
/*!40000 ALTER TABLE `tabTelefonos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabToDo`
--

DROP TABLE IF EXISTS `tabToDo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabToDo` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT '0',
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT '0',
  `status` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT 'Open',
  `date` date DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `assigned_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_seen` text COLLATE utf8mb4_unicode_ci,
  `reference_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_type` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT 'Medium',
  `_assign` text COLLATE utf8mb4_unicode_ci,
  `_liked_by` text COLLATE utf8mb4_unicode_ci,
  `role` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned_by_full_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_user_tags` text COLLATE utf8mb4_unicode_ci,
  `_comments` text COLLATE utf8mb4_unicode_ci,
  `sender` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `reference_type_reference_name_index` (`reference_type`,`reference_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabToDo`
--

LOCK TABLES `tabToDo` WRITE;
/*!40000 ALTER TABLE `tabToDo` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabToDo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabTop Bar Item`
--

DROP TABLE IF EXISTS `tabTop Bar Item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabTop Bar Item` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT '0',
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT '0',
  `url` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_label` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `right` int(1) NOT NULL DEFAULT '1',
  `target` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabTop Bar Item`
--

LOCK TABLES `tabTop Bar Item` WRITE;
/*!40000 ALTER TABLE `tabTop Bar Item` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabTop Bar Item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabTranslation`
--

DROP TABLE IF EXISTS `tabTranslation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabTranslation` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT '0',
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT '0',
  `_liked_by` text COLLATE utf8mb4_unicode_ci,
  `source_name` longtext COLLATE utf8mb4_unicode_ci,
  `language` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_name` longtext COLLATE utf8mb4_unicode_ci,
  `_comments` text COLLATE utf8mb4_unicode_ci,
  `_assign` text COLLATE utf8mb4_unicode_ci,
  `_user_tags` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`name`),
  KEY `language` (`language`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabTranslation`
--

LOCK TABLES `tabTranslation` WRITE;
/*!40000 ALTER TABLE `tabTranslation` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabTranslation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabUnhandled Email`
--

DROP TABLE IF EXISTS `tabUnhandled Email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabUnhandled Email` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT '0',
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT '0',
  `_liked_by` text COLLATE utf8mb4_unicode_ci,
  `uid` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_comments` text COLLATE utf8mb4_unicode_ci,
  `_assign` text COLLATE utf8mb4_unicode_ci,
  `raw` longtext COLLATE utf8mb4_unicode_ci,
  `reason` longtext COLLATE utf8mb4_unicode_ci,
  `email_account` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_user_tags` text COLLATE utf8mb4_unicode_ci,
  `message_id` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabUnhandled Email`
--

LOCK TABLES `tabUnhandled Email` WRITE;
/*!40000 ALTER TABLE `tabUnhandled Email` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabUnhandled Email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabUser`
--

DROP TABLE IF EXISTS `tabUser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabUser` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT '0',
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT '0',
  `user_image` text COLLATE utf8mb4_unicode_ci,
  `last_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `full_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `frappe_userid` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `simultaneous_sessions` int(11) NOT NULL DEFAULT '1',
  `last_ip` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_type` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT 'System User',
  `phone` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `github_username` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reset_password_key` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_no` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_userid` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_known_versions` text COLLATE utf8mb4_unicode_ci,
  `thread_notify` int(1) NOT NULL DEFAULT '1',
  `background_image` text COLLATE utf8mb4_unicode_ci,
  `last_active` datetime(6) DEFAULT NULL,
  `_comments` text COLLATE utf8mb4_unicode_ci,
  `new_password` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_login` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `github_userid` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `restrict_ip` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bio` text COLLATE utf8mb4_unicode_ci,
  `_liked_by` text COLLATE utf8mb4_unicode_ci,
  `fb_userid` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect_url` text COLLATE utf8mb4_unicode_ci,
  `background_style` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_assign` text COLLATE utf8mb4_unicode_ci,
  `first_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `send_password_update_notification` int(1) NOT NULL DEFAULT '0',
  `language` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `middle_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_user_tags` text COLLATE utf8mb4_unicode_ci,
  `login_after` int(11) NOT NULL DEFAULT '0',
  `send_welcome_email` int(1) NOT NULL DEFAULT '1',
  `mute_sounds` int(1) NOT NULL DEFAULT '0',
  `email_signature` text COLLATE utf8mb4_unicode_ci,
  `login_before` int(11) NOT NULL DEFAULT '0',
  `gender` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enabled` int(1) NOT NULL DEFAULT '1',
  `time_zone` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fb_username` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `unsubscribed` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`name`),
  UNIQUE KEY `mobile_no` (`mobile_no`),
  UNIQUE KEY `username` (`username`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabUser`
--

LOCK TABLES `tabUser` WRITE;
/*!40000 ALTER TABLE `tabUser` DISABLE KEYS */;
INSERT INTO `tabUser` VALUES ('Administrator','2017-09-01 22:00:13.499278','2017-09-01 22:00:16.008514','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'Administrator',NULL,1,'10.0.0.27','System User',NULL,NULL,NULL,NULL,NULL,'{\"frappe\": {\"version\": \"8.7.8\", \"description\": \"Full stack web framework with Python, Javascript, MariaDB, Redis, Node\", \"branch\": \"master\", \"title\": \"Frappe Framework\"}}',1,NULL,'2017-09-01 20:14:12.555828',NULL,'','2017-09-01 19:10:42.011601',NULL,NULL,'admin@example.com',NULL,'administrator',NULL,NULL,NULL,NULL,'Fill Screen',NULL,'Administrator',0,NULL,NULL,NULL,0,1,0,NULL,0,'',1,NULL,NULL,NULL,0),('Guest','2017-09-01 22:00:13.741958','2017-09-01 22:00:13.741958','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'Guest',NULL,1,NULL,'System User',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL,NULL,NULL,'guest@example.com',NULL,'guest',NULL,NULL,NULL,NULL,'Fill Screen',NULL,'Guest',0,NULL,NULL,NULL,0,1,0,NULL,0,'',1,NULL,NULL,NULL,0),('lewin.villar@gmail.com','2017-09-01 12:38:02.964693','2017-09-01 12:38:03.412982','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,'Villar','Lewin Villar','b41c86773701acd92ebaa928d383e1e707e1e46',1,NULL,'System User',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'',NULL,NULL,NULL,'lewin.villar@gmail.com',NULL,'lewin',NULL,NULL,NULL,NULL,'Fill Screen',NULL,'Lewin',0,'en',NULL,NULL,0,1,0,NULL,0,'',1,NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `tabUser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabUser Email`
--

DROP TABLE IF EXISTS `tabUser Email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabUser Email` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT '0',
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT '0',
  `email_id` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_account` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enable_outgoing` int(1) NOT NULL DEFAULT '0',
  `awaiting_password` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabUser Email`
--

LOCK TABLES `tabUser Email` WRITE;
/*!40000 ALTER TABLE `tabUser Email` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabUser Email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabUser Permission`
--

DROP TABLE IF EXISTS `tabUser Permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabUser Permission` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT '0',
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT '0',
  `_liked_by` text COLLATE utf8mb4_unicode_ci,
  `_user_tags` text COLLATE utf8mb4_unicode_ci,
  `apply_for_all_roles` int(1) NOT NULL DEFAULT '1',
  `_assign` text COLLATE utf8mb4_unicode_ci,
  `for_value` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `allow` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_comments` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabUser Permission`
--

LOCK TABLES `tabUser Permission` WRITE;
/*!40000 ALTER TABLE `tabUser Permission` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabUser Permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabVersion`
--

DROP TABLE IF EXISTS `tabVersion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabVersion` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT '0',
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT '0',
  `_assign` text COLLATE utf8mb4_unicode_ci,
  `_user_tags` text COLLATE utf8mb4_unicode_ci,
  `ref_doctype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_comments` text COLLATE utf8mb4_unicode_ci,
  `docname` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` longtext COLLATE utf8mb4_unicode_ci,
  `_liked_by` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabVersion`
--

LOCK TABLES `tabVersion` WRITE;
/*!40000 ALTER TABLE `tabVersion` DISABLE KEYS */;
INSERT INTO `tabVersion` VALUES ('0367b48108','2017-09-01 12:38:03.305756','2017-09-01 12:38:03.305756','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'User',NULL,'lewin.villar@gmail.com','{\n \"comment\": \"Administrator shared this document with Lewin Villar\", \n \"comment_type\": \"Shared\"\n}',NULL),('3399d9a188','2017-09-01 15:33:39.948218','2017-09-01 15:33:39.948218','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'DocType',NULL,'Medicamentos','{\n \"added\": [], \n \"changed\": [], \n \"removed\": [], \n \"row_changed\": [\n  [\n   \"fields\", \n   2, \n   \"aca86ad56c\", \n   [\n    [\n     \"columns\", \n     1, \n     2\n    ]\n   ]\n  ], \n  [\n   \"fields\", \n   4, \n   \"d80dc5298b\", \n   [\n    [\n     \"in_list_view\", \n     1, \n     0\n    ]\n   ]\n  ], \n  [\n   \"fields\", \n   6, \n   \"ec056ca092\", \n   [\n    [\n     \"columns\", \n     1, \n     2\n    ]\n   ]\n  ]\n ]\n}',NULL),('5a5a6deea0','2017-09-01 13:39:44.036265','2017-09-01 13:39:44.036265','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'DocType',NULL,'Paciente','{\n \"added\": [\n  [\n   \"fields\", \n   {\n    \"allow_bulk_edit\": 0, \n    \"allow_on_submit\": 0, \n    \"bold\": 0, \n    \"collapsible\": 0, \n    \"collapsible_depends_on\": null, \n    \"columns\": 0, \n    \"creation\": \"2017-09-01 13:29:30.289032\", \n    \"default\": null, \n    \"depends_on\": null, \n    \"description\": null, \n    \"docstatus\": 0, \n    \"doctype\": \"DocField\", \n    \"fieldname\": \"dir_calle\", \n    \"fieldtype\": \"Data\", \n    \"hidden\": 0, \n    \"idx\": 15, \n    \"ignore_user_permissions\": 0, \n    \"ignore_xss_filter\": 0, \n    \"in_filter\": 0, \n    \"in_global_search\": 0, \n    \"in_list_view\": 0, \n    \"in_standard_filter\": 0, \n    \"label\": \"Calle\", \n    \"length\": 0, \n    \"modified\": \"2017-09-01 13:39:41.775638\", \n    \"modified_by\": \"Administrator\", \n    \"name\": \"d6bc796b37\", \n    \"no_copy\": 0, \n    \"oldfieldname\": null, \n    \"oldfieldtype\": null, \n    \"options\": null, \n    \"owner\": \"Administrator\", \n    \"parent\": \"Paciente\", \n    \"parentfield\": \"fields\", \n    \"parenttype\": \"DocType\", \n    \"permlevel\": 0, \n    \"precision\": \"\", \n    \"print_hide\": 0, \n    \"print_hide_if_no_value\": 0, \n    \"print_width\": null, \n    \"read_only\": 0, \n    \"remember_last_selected_value\": 0, \n    \"report_hide\": 0, \n    \"reqd\": 0, \n    \"search_index\": 0, \n    \"set_only_once\": 0, \n    \"trigger\": null, \n    \"unique\": 0, \n    \"width\": null\n   }\n  ], \n  [\n   \"fields\", \n   {\n    \"allow_bulk_edit\": 0, \n    \"allow_on_submit\": 0, \n    \"bold\": 0, \n    \"collapsible\": 0, \n    \"collapsible_depends_on\": null, \n    \"columns\": 0, \n    \"creation\": \"2017-09-01 13:29:30.289032\", \n    \"default\": null, \n    \"depends_on\": null, \n    \"description\": null, \n    \"docstatus\": 0, \n    \"doctype\": \"DocField\", \n    \"fieldname\": \"dir_edificio\", \n    \"fieldtype\": \"Data\", \n    \"hidden\": 0, \n    \"idx\": 16, \n    \"ignore_user_permissions\": 0, \n    \"ignore_xss_filter\": 0, \n    \"in_filter\": 0, \n    \"in_global_search\": 0, \n    \"in_list_view\": 0, \n    \"in_standard_filter\": 0, \n    \"label\": \"Edificio\", \n    \"length\": 0, \n    \"modified\": \"2017-09-01 13:39:41.775638\", \n    \"modified_by\": \"Administrator\", \n    \"name\": \"c48e1bfbf2\", \n    \"no_copy\": 0, \n    \"oldfieldname\": null, \n    \"oldfieldtype\": null, \n    \"options\": null, \n    \"owner\": \"Administrator\", \n    \"parent\": \"Paciente\", \n    \"parentfield\": \"fields\", \n    \"parenttype\": \"DocType\", \n    \"permlevel\": 0, \n    \"precision\": \"\", \n    \"print_hide\": 0, \n    \"print_hide_if_no_value\": 0, \n    \"print_width\": null, \n    \"read_only\": 0, \n    \"remember_last_selected_value\": 0, \n    \"report_hide\": 0, \n    \"reqd\": 0, \n    \"search_index\": 0, \n    \"set_only_once\": 0, \n    \"trigger\": null, \n    \"unique\": 0, \n    \"width\": null\n   }\n  ], \n  [\n   \"fields\", \n   {\n    \"allow_bulk_edit\": 0, \n    \"allow_on_submit\": 0, \n    \"bold\": 0, \n    \"collapsible\": 0, \n    \"collapsible_depends_on\": null, \n    \"columns\": 0, \n    \"creation\": \"2017-09-01 13:29:30.289032\", \n    \"default\": null, \n    \"depends_on\": null, \n    \"description\": null, \n    \"docstatus\": 0, \n    \"doctype\": \"DocField\", \n    \"fieldname\": \"column_break_17\", \n    \"fieldtype\": \"Column Break\", \n    \"hidden\": 0, \n    \"idx\": 17, \n    \"ignore_user_permissions\": 0, \n    \"ignore_xss_filter\": 0, \n    \"in_filter\": 0, \n    \"in_global_search\": 0, \n    \"in_list_view\": 0, \n    \"in_standard_filter\": 0, \n    \"label\": null, \n    \"length\": 0, \n    \"modified\": \"2017-09-01 13:39:41.775638\", \n    \"modified_by\": \"Administrator\", \n    \"name\": \"85f522a5b8\", \n    \"no_copy\": 0, \n    \"oldfieldname\": null, \n    \"oldfieldtype\": null, \n    \"options\": null, \n    \"owner\": \"Administrator\", \n    \"parent\": \"Paciente\", \n    \"parentfield\": \"fields\", \n    \"parenttype\": \"DocType\", \n    \"permlevel\": 0, \n    \"precision\": \"\", \n    \"print_hide\": 0, \n    \"print_hide_if_no_value\": 0, \n    \"print_width\": null, \n    \"read_only\": 0, \n    \"remember_last_selected_value\": 0, \n    \"report_hide\": 0, \n    \"reqd\": 0, \n    \"search_index\": 0, \n    \"set_only_once\": 0, \n    \"trigger\": null, \n    \"unique\": 0, \n    \"width\": null\n   }\n  ], \n  [\n   \"fields\", \n   {\n    \"allow_bulk_edit\": 0, \n    \"allow_on_submit\": 0, \n    \"bold\": 0, \n    \"collapsible\": 0, \n    \"collapsible_depends_on\": null, \n    \"columns\": 0, \n    \"creation\": \"2017-09-01 13:29:30.289032\", \n    \"default\": null, \n    \"depends_on\": null, \n    \"description\": null, \n    \"docstatus\": 0, \n    \"doctype\": \"DocField\", \n    \"fieldname\": \"dir_numero\", \n    \"fieldtype\": \"Int\", \n    \"hidden\": 0, \n    \"idx\": 18, \n    \"ignore_user_permissions\": 0, \n    \"ignore_xss_filter\": 0, \n    \"in_filter\": 0, \n    \"in_global_search\": 0, \n    \"in_list_view\": 0, \n    \"in_standard_filter\": 0, \n    \"label\": \"Numero\", \n    \"length\": 0, \n    \"modified\": \"2017-09-01 13:39:41.775638\", \n    \"modified_by\": \"Administrator\", \n    \"name\": \"2d06f05c5e\", \n    \"no_copy\": 0, \n    \"oldfieldname\": null, \n    \"oldfieldtype\": null, \n    \"options\": null, \n    \"owner\": \"Administrator\", \n    \"parent\": \"Paciente\", \n    \"parentfield\": \"fields\", \n    \"parenttype\": \"DocType\", \n    \"permlevel\": 0, \n    \"precision\": \"\", \n    \"print_hide\": 0, \n    \"print_hide_if_no_value\": 0, \n    \"print_width\": null, \n    \"read_only\": 0, \n    \"remember_last_selected_value\": 0, \n    \"report_hide\": 0, \n    \"reqd\": 0, \n    \"search_index\": 0, \n    \"set_only_once\": 0, \n    \"trigger\": null, \n    \"unique\": 0, \n    \"width\": null\n   }\n  ], \n  [\n   \"fields\", \n   {\n    \"allow_bulk_edit\": 0, \n    \"allow_on_submit\": 0, \n    \"bold\": 0, \n    \"collapsible\": 0, \n    \"collapsible_depends_on\": null, \n    \"columns\": 0, \n    \"creation\": \"2017-09-01 13:29:30.289032\", \n    \"default\": null, \n    \"depends_on\": null, \n    \"description\": null, \n    \"docstatus\": 0, \n    \"doctype\": \"DocField\", \n    \"fieldname\": \"dir_apartamento\", \n    \"fieldtype\": \"Data\", \n    \"hidden\": 0, \n    \"idx\": 19, \n    \"ignore_user_permissions\": 0, \n    \"ignore_xss_filter\": 0, \n    \"in_filter\": 0, \n    \"in_global_search\": 0, \n    \"in_list_view\": 0, \n    \"in_standard_filter\": 0, \n    \"label\": \"Apartamento\", \n    \"length\": 0, \n    \"modified\": \"2017-09-01 13:39:41.775638\", \n    \"modified_by\": \"Administrator\", \n    \"name\": \"ff907542e9\", \n    \"no_copy\": 0, \n    \"oldfieldname\": null, \n    \"oldfieldtype\": null, \n    \"options\": null, \n    \"owner\": \"Administrator\", \n    \"parent\": \"Paciente\", \n    \"parentfield\": \"fields\", \n    \"parenttype\": \"DocType\", \n    \"permlevel\": 0, \n    \"precision\": \"\", \n    \"print_hide\": 0, \n    \"print_hide_if_no_value\": 0, \n    \"print_width\": null, \n    \"read_only\": 0, \n    \"remember_last_selected_value\": 0, \n    \"report_hide\": 0, \n    \"reqd\": 0, \n    \"search_index\": 0, \n    \"set_only_once\": 0, \n    \"trigger\": null, \n    \"unique\": 0, \n    \"width\": null\n   }\n  ], \n  [\n   \"fields\", \n   {\n    \"allow_bulk_edit\": 0, \n    \"allow_on_submit\": 0, \n    \"bold\": 0, \n    \"collapsible\": 0, \n    \"collapsible_depends_on\": null, \n    \"columns\": 0, \n    \"creation\": \"2017-09-01 13:29:30.289032\", \n    \"default\": null, \n    \"depends_on\": null, \n    \"description\": null, \n    \"docstatus\": 0, \n    \"doctype\": \"DocField\", \n    \"fieldname\": \"column_break_20\", \n    \"fieldtype\": \"Column Break\", \n    \"hidden\": 0, \n    \"idx\": 20, \n    \"ignore_user_permissions\": 0, \n    \"ignore_xss_filter\": 0, \n    \"in_filter\": 0, \n    \"in_global_search\": 0, \n    \"in_list_view\": 0, \n    \"in_standard_filter\": 0, \n    \"label\": null, \n    \"length\": 0, \n    \"modified\": \"2017-09-01 13:39:41.775638\", \n    \"modified_by\": \"Administrator\", \n    \"name\": \"8240eb5ded\", \n    \"no_copy\": 0, \n    \"oldfieldname\": null, \n    \"oldfieldtype\": null, \n    \"options\": null, \n    \"owner\": \"Administrator\", \n    \"parent\": \"Paciente\", \n    \"parentfield\": \"fields\", \n    \"parenttype\": \"DocType\", \n    \"permlevel\": 0, \n    \"precision\": \"\", \n    \"print_hide\": 0, \n    \"print_hide_if_no_value\": 0, \n    \"print_width\": null, \n    \"read_only\": 0, \n    \"remember_last_selected_value\": 0, \n    \"report_hide\": 0, \n    \"reqd\": 0, \n    \"search_index\": 0, \n    \"set_only_once\": 0, \n    \"trigger\": null, \n    \"unique\": 0, \n    \"width\": null\n   }\n  ], \n  [\n   \"fields\", \n   {\n    \"allow_bulk_edit\": 0, \n    \"allow_on_submit\": 0, \n    \"bold\": 0, \n    \"collapsible\": 0, \n    \"collapsible_depends_on\": null, \n    \"columns\": 0, \n    \"creation\": \"2017-09-01 13:29:30.289032\", \n    \"default\": null, \n    \"depends_on\": null, \n    \"description\": null, \n    \"docstatus\": 0, \n    \"doctype\": \"DocField\", \n    \"fieldname\": \"dir_sector\", \n    \"fieldtype\": \"Data\", \n    \"hidden\": 0, \n    \"idx\": 21, \n    \"ignore_user_permissions\": 0, \n    \"ignore_xss_filter\": 0, \n    \"in_filter\": 0, \n    \"in_global_search\": 0, \n    \"in_list_view\": 0, \n    \"in_standard_filter\": 0, \n    \"label\": \"Sector\", \n    \"length\": 0, \n    \"modified\": \"2017-09-01 13:39:41.775638\", \n    \"modified_by\": \"Administrator\", \n    \"name\": \"3bdf840712\", \n    \"no_copy\": 0, \n    \"oldfieldname\": null, \n    \"oldfieldtype\": null, \n    \"options\": null, \n    \"owner\": \"Administrator\", \n    \"parent\": \"Paciente\", \n    \"parentfield\": \"fields\", \n    \"parenttype\": \"DocType\", \n    \"permlevel\": 0, \n    \"precision\": \"\", \n    \"print_hide\": 0, \n    \"print_hide_if_no_value\": 0, \n    \"print_width\": null, \n    \"read_only\": 0, \n    \"remember_last_selected_value\": 0, \n    \"report_hide\": 0, \n    \"reqd\": 0, \n    \"search_index\": 0, \n    \"set_only_once\": 0, \n    \"trigger\": null, \n    \"unique\": 0, \n    \"width\": null\n   }\n  ], \n  [\n   \"fields\", \n   {\n    \"allow_bulk_edit\": 0, \n    \"allow_on_submit\": 0, \n    \"bold\": 0, \n    \"collapsible\": 0, \n    \"collapsible_depends_on\": null, \n    \"columns\": 0, \n    \"creation\": \"2017-09-01 13:29:30.289032\", \n    \"default\": null, \n    \"depends_on\": null, \n    \"description\": null, \n    \"docstatus\": 0, \n    \"doctype\": \"DocField\", \n    \"fieldname\": \"dir_provincia\", \n    \"fieldtype\": \"Data\", \n    \"hidden\": 0, \n    \"idx\": 22, \n    \"ignore_user_permissions\": 0, \n    \"ignore_xss_filter\": 0, \n    \"in_filter\": 0, \n    \"in_global_search\": 0, \n    \"in_list_view\": 0, \n    \"in_standard_filter\": 0, \n    \"label\": \"Provincia\", \n    \"length\": 0, \n    \"modified\": \"2017-09-01 13:39:41.775638\", \n    \"modified_by\": \"Administrator\", \n    \"name\": \"da44a3ac66\", \n    \"no_copy\": 0, \n    \"oldfieldname\": null, \n    \"oldfieldtype\": null, \n    \"options\": null, \n    \"owner\": \"Administrator\", \n    \"parent\": \"Paciente\", \n    \"parentfield\": \"fields\", \n    \"parenttype\": \"DocType\", \n    \"permlevel\": 0, \n    \"precision\": \"\", \n    \"print_hide\": 0, \n    \"print_hide_if_no_value\": 0, \n    \"print_width\": null, \n    \"read_only\": 0, \n    \"remember_last_selected_value\": 0, \n    \"report_hide\": 0, \n    \"reqd\": 0, \n    \"search_index\": 0, \n    \"set_only_once\": 0, \n    \"trigger\": null, \n    \"unique\": 0, \n    \"width\": null\n   }\n  ]\n ], \n \"changed\": [], \n \"removed\": [], \n \"row_changed\": [\n  [\n   \"fields\", \n   13, \n   \"e027607186\", \n   [\n    [\n     \"fieldtype\", \n     \"Text\", \n     \"Section Break\"\n    ], \n    [\n     \"collapsible\", \n     0, \n     1\n    ]\n   ]\n  ]\n ]\n}',NULL),('60c9da6805','2017-09-01 22:00:16.223713','2017-09-01 22:00:16.223713','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'User',NULL,'Administrator','{\n \"added\": [\n  [\n   \"roles\", \n   {\n    \"creation\": \"2017-09-01 22:00:13.499278\", \n    \"docstatus\": 0, \n    \"doctype\": \"Has Role\", \n    \"idx\": 3, \n    \"modified\": \"2017-09-01 22:00:16.008514\", \n    \"modified_by\": \"Administrator\", \n    \"name\": \"a6c3ae9137\", \n    \"owner\": \"Administrator\", \n    \"parent\": \"Administrator\", \n    \"parentfield\": \"roles\", \n    \"parenttype\": \"User\", \n    \"role\": \"Accounts Manager\"\n   }\n  ], \n  [\n   \"roles\", \n   {\n    \"creation\": \"2017-09-01 22:00:13.499278\", \n    \"docstatus\": 0, \n    \"doctype\": \"Has Role\", \n    \"idx\": 4, \n    \"modified\": \"2017-09-01 22:00:16.008514\", \n    \"modified_by\": \"Administrator\", \n    \"name\": \"0b3ab85a70\", \n    \"owner\": \"Administrator\", \n    \"parent\": \"Administrator\", \n    \"parentfield\": \"roles\", \n    \"parenttype\": \"User\", \n    \"role\": \"Accounts User\"\n   }\n  ], \n  [\n   \"roles\", \n   {\n    \"creation\": \"2017-09-01 22:00:13.499278\", \n    \"docstatus\": 0, \n    \"doctype\": \"Has Role\", \n    \"idx\": 5, \n    \"modified\": \"2017-09-01 22:00:16.008514\", \n    \"modified_by\": \"Administrator\", \n    \"name\": \"20fed6d364\", \n    \"owner\": \"Administrator\", \n    \"parent\": \"Administrator\", \n    \"parentfield\": \"roles\", \n    \"parenttype\": \"User\", \n    \"role\": \"All\"\n   }\n  ], \n  [\n   \"roles\", \n   {\n    \"creation\": \"2017-09-01 22:00:13.499278\", \n    \"docstatus\": 0, \n    \"doctype\": \"Has Role\", \n    \"idx\": 6, \n    \"modified\": \"2017-09-01 22:00:16.008514\", \n    \"modified_by\": \"Administrator\", \n    \"name\": \"48d35e43a4\", \n    \"owner\": \"Administrator\", \n    \"parent\": \"Administrator\", \n    \"parentfield\": \"roles\", \n    \"parenttype\": \"User\", \n    \"role\": \"Blogger\"\n   }\n  ], \n  [\n   \"roles\", \n   {\n    \"creation\": \"2017-09-01 22:00:13.499278\", \n    \"docstatus\": 0, \n    \"doctype\": \"Has Role\", \n    \"idx\": 7, \n    \"modified\": \"2017-09-01 22:00:16.008514\", \n    \"modified_by\": \"Administrator\", \n    \"name\": \"0bcee752f6\", \n    \"owner\": \"Administrator\", \n    \"parent\": \"Administrator\", \n    \"parentfield\": \"roles\", \n    \"parenttype\": \"User\", \n    \"role\": \"Guest\"\n   }\n  ], \n  [\n   \"roles\", \n   {\n    \"creation\": \"2017-09-01 22:00:13.499278\", \n    \"docstatus\": 0, \n    \"doctype\": \"Has Role\", \n    \"idx\": 8, \n    \"modified\": \"2017-09-01 22:00:16.008514\", \n    \"modified_by\": \"Administrator\", \n    \"name\": \"30c48b64c2\", \n    \"owner\": \"Administrator\", \n    \"parent\": \"Administrator\", \n    \"parentfield\": \"roles\", \n    \"parenttype\": \"User\", \n    \"role\": \"Knowledge Base Contributor\"\n   }\n  ], \n  [\n   \"roles\", \n   {\n    \"creation\": \"2017-09-01 22:00:13.499278\", \n    \"docstatus\": 0, \n    \"doctype\": \"Has Role\", \n    \"idx\": 9, \n    \"modified\": \"2017-09-01 22:00:16.008514\", \n    \"modified_by\": \"Administrator\", \n    \"name\": \"15e735e4dc\", \n    \"owner\": \"Administrator\", \n    \"parent\": \"Administrator\", \n    \"parentfield\": \"roles\", \n    \"parenttype\": \"User\", \n    \"role\": \"Knowledge Base Editor\"\n   }\n  ], \n  [\n   \"roles\", \n   {\n    \"creation\": \"2017-09-01 22:00:13.499278\", \n    \"docstatus\": 0, \n    \"doctype\": \"Has Role\", \n    \"idx\": 10, \n    \"modified\": \"2017-09-01 22:00:16.008514\", \n    \"modified_by\": \"Administrator\", \n    \"name\": \"7754a232c9\", \n    \"owner\": \"Administrator\", \n    \"parent\": \"Administrator\", \n    \"parentfield\": \"roles\", \n    \"parenttype\": \"User\", \n    \"role\": \"Maintenance Manager\"\n   }\n  ], \n  [\n   \"roles\", \n   {\n    \"creation\": \"2017-09-01 22:00:13.499278\", \n    \"docstatus\": 0, \n    \"doctype\": \"Has Role\", \n    \"idx\": 11, \n    \"modified\": \"2017-09-01 22:00:16.008514\", \n    \"modified_by\": \"Administrator\", \n    \"name\": \"42eb59c6c5\", \n    \"owner\": \"Administrator\", \n    \"parent\": \"Administrator\", \n    \"parentfield\": \"roles\", \n    \"parenttype\": \"User\", \n    \"role\": \"Maintenance User\"\n   }\n  ], \n  [\n   \"roles\", \n   {\n    \"creation\": \"2017-09-01 22:00:13.499278\", \n    \"docstatus\": 0, \n    \"doctype\": \"Has Role\", \n    \"idx\": 12, \n    \"modified\": \"2017-09-01 22:00:16.008514\", \n    \"modified_by\": \"Administrator\", \n    \"name\": \"0e7fa3d50b\", \n    \"owner\": \"Administrator\", \n    \"parent\": \"Administrator\", \n    \"parentfield\": \"roles\", \n    \"parenttype\": \"User\", \n    \"role\": \"Newsletter Manager\"\n   }\n  ], \n  [\n   \"roles\", \n   {\n    \"creation\": \"2017-09-01 22:00:13.499278\", \n    \"docstatus\": 0, \n    \"doctype\": \"Has Role\", \n    \"idx\": 13, \n    \"modified\": \"2017-09-01 22:00:16.008514\", \n    \"modified_by\": \"Administrator\", \n    \"name\": \"8d5da41f7d\", \n    \"owner\": \"Administrator\", \n    \"parent\": \"Administrator\", \n    \"parentfield\": \"roles\", \n    \"parenttype\": \"User\", \n    \"role\": \"Purchase Manager\"\n   }\n  ], \n  [\n   \"roles\", \n   {\n    \"creation\": \"2017-09-01 22:00:13.499278\", \n    \"docstatus\": 0, \n    \"doctype\": \"Has Role\", \n    \"idx\": 14, \n    \"modified\": \"2017-09-01 22:00:16.008514\", \n    \"modified_by\": \"Administrator\", \n    \"name\": \"15dcf85371\", \n    \"owner\": \"Administrator\", \n    \"parent\": \"Administrator\", \n    \"parentfield\": \"roles\", \n    \"parenttype\": \"User\", \n    \"role\": \"Purchase Master Manager\"\n   }\n  ], \n  [\n   \"roles\", \n   {\n    \"creation\": \"2017-09-01 22:00:13.499278\", \n    \"docstatus\": 0, \n    \"doctype\": \"Has Role\", \n    \"idx\": 15, \n    \"modified\": \"2017-09-01 22:00:16.008514\", \n    \"modified_by\": \"Administrator\", \n    \"name\": \"2998b5eec1\", \n    \"owner\": \"Administrator\", \n    \"parent\": \"Administrator\", \n    \"parentfield\": \"roles\", \n    \"parenttype\": \"User\", \n    \"role\": \"Purchase User\"\n   }\n  ], \n  [\n   \"roles\", \n   {\n    \"creation\": \"2017-09-01 22:00:13.499278\", \n    \"docstatus\": 0, \n    \"doctype\": \"Has Role\", \n    \"idx\": 16, \n    \"modified\": \"2017-09-01 22:00:16.008514\", \n    \"modified_by\": \"Administrator\", \n    \"name\": \"b239118489\", \n    \"owner\": \"Administrator\", \n    \"parent\": \"Administrator\", \n    \"parentfield\": \"roles\", \n    \"parenttype\": \"User\", \n    \"role\": \"Report Manager\"\n   }\n  ], \n  [\n   \"roles\", \n   {\n    \"creation\": \"2017-09-01 22:00:13.499278\", \n    \"docstatus\": 0, \n    \"doctype\": \"Has Role\", \n    \"idx\": 17, \n    \"modified\": \"2017-09-01 22:00:16.008514\", \n    \"modified_by\": \"Administrator\", \n    \"name\": \"9ec85e4718\", \n    \"owner\": \"Administrator\", \n    \"parent\": \"Administrator\", \n    \"parentfield\": \"roles\", \n    \"parenttype\": \"User\", \n    \"role\": \"Sales Manager\"\n   }\n  ], \n  [\n   \"roles\", \n   {\n    \"creation\": \"2017-09-01 22:00:13.499278\", \n    \"docstatus\": 0, \n    \"doctype\": \"Has Role\", \n    \"idx\": 18, \n    \"modified\": \"2017-09-01 22:00:16.008514\", \n    \"modified_by\": \"Administrator\", \n    \"name\": \"5c592e00d1\", \n    \"owner\": \"Administrator\", \n    \"parent\": \"Administrator\", \n    \"parentfield\": \"roles\", \n    \"parenttype\": \"User\", \n    \"role\": \"Sales Master Manager\"\n   }\n  ], \n  [\n   \"roles\", \n   {\n    \"creation\": \"2017-09-01 22:00:13.499278\", \n    \"docstatus\": 0, \n    \"doctype\": \"Has Role\", \n    \"idx\": 19, \n    \"modified\": \"2017-09-01 22:00:16.008514\", \n    \"modified_by\": \"Administrator\", \n    \"name\": \"1b8ae793ac\", \n    \"owner\": \"Administrator\", \n    \"parent\": \"Administrator\", \n    \"parentfield\": \"roles\", \n    \"parenttype\": \"User\", \n    \"role\": \"Sales User\"\n   }\n  ], \n  [\n   \"roles\", \n   {\n    \"creation\": \"2017-09-01 22:00:13.499278\", \n    \"docstatus\": 0, \n    \"doctype\": \"Has Role\", \n    \"idx\": 20, \n    \"modified\": \"2017-09-01 22:00:16.008514\", \n    \"modified_by\": \"Administrator\", \n    \"name\": \"2a221cbc4f\", \n    \"owner\": \"Administrator\", \n    \"parent\": \"Administrator\", \n    \"parentfield\": \"roles\", \n    \"parenttype\": \"User\", \n    \"role\": \"Website Manager\"\n   }\n  ]\n ], \n \"changed\": [], \n \"removed\": [], \n \"row_changed\": []\n}',NULL),('612ea17436','2017-09-01 20:09:26.766048','2017-09-01 20:09:26.766048','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'Paciente',NULL,'PAC-00000002','{\n \"added\": [], \n \"changed\": [\n  [\n   \"segundo_nombre\", \n   \"JOSE\", \n   \"\"\n  ], \n  [\n   \"nombre_completo\", \n   \"GIBRAN JOSE VILLAR TAVAREZ\", \n   \"GIBRAN VILLAR TAVAREZ\"\n  ]\n ], \n \"removed\": [], \n \"row_changed\": []\n}',NULL),('63edceee22','2017-09-01 15:31:46.859109','2017-09-01 15:31:46.859109','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'DocType',NULL,'Medicamentos','{\n \"added\": [], \n \"changed\": [], \n \"removed\": [], \n \"row_changed\": [\n  [\n   \"fields\", \n   2, \n   \"aca86ad56c\", \n   [\n    [\n     \"columns\", \n     2, \n     1\n    ]\n   ]\n  ]\n ]\n}',NULL),('67de5adfc5','2017-09-01 15:28:09.000249','2017-09-01 15:28:09.000249','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'DocType',NULL,'Alergias','{\n \"added\": [], \n \"changed\": [], \n \"removed\": [\n  [\n   \"fields\", \n   {\n    \"allow_bulk_edit\": 0, \n    \"allow_on_submit\": 0, \n    \"bold\": 0, \n    \"collapsible\": 0, \n    \"collapsible_depends_on\": null, \n    \"columns\": 0, \n    \"creation\": \"2017-09-01 15:11:26.069079\", \n    \"default\": null, \n    \"depends_on\": null, \n    \"description\": null, \n    \"docstatus\": 0, \n    \"doctype\": \"DocField\", \n    \"fieldname\": \"data_6\", \n    \"fieldtype\": \"Data\", \n    \"hidden\": 0, \n    \"idx\": 6, \n    \"ignore_user_permissions\": 0, \n    \"ignore_xss_filter\": 0, \n    \"in_filter\": 0, \n    \"in_global_search\": 0, \n    \"in_list_view\": 0, \n    \"in_standard_filter\": 0, \n    \"label\": null, \n    \"length\": 0, \n    \"modified\": \"2017-09-01 15:26:41.253466\", \n    \"modified_by\": \"Administrator\", \n    \"name\": \"6d53357edb\", \n    \"no_copy\": 0, \n    \"oldfieldname\": null, \n    \"oldfieldtype\": null, \n    \"options\": null, \n    \"owner\": \"Administrator\", \n    \"parent\": \"Alergias\", \n    \"parentfield\": \"fields\", \n    \"parenttype\": \"DocType\", \n    \"permlevel\": 0, \n    \"precision\": \"\", \n    \"print_hide\": 0, \n    \"print_hide_if_no_value\": 0, \n    \"print_width\": null, \n    \"read_only\": 0, \n    \"remember_last_selected_value\": 0, \n    \"report_hide\": 0, \n    \"reqd\": 0, \n    \"search_index\": 0, \n    \"set_only_once\": 0, \n    \"trigger\": null, \n    \"unique\": 0, \n    \"width\": null\n   }\n  ]\n ], \n \"row_changed\": [\n  [\n   \"fields\", \n   0, \n   \"c7ef2e8bb7\", \n   [\n    [\n     \"columns\", \n     2, \n     0\n    ]\n   ]\n  ], \n  [\n   \"fields\", \n   1, \n   \"8d4849b997\", \n   [\n    [\n     \"columns\", \n     1, \n     0\n    ]\n   ]\n  ], \n  [\n   \"fields\", \n   3, \n   \"8a93891ac9\", \n   [\n    [\n     \"columns\", \n     2, \n     0\n    ]\n   ]\n  ]\n ]\n}',NULL),('73164276bf','2017-09-01 16:21:44.966070','2017-09-01 16:21:44.966070','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'DocType',NULL,'Empresa','{\n \"added\": [\n  [\n   \"fields\", \n   {\n    \"allow_bulk_edit\": 0, \n    \"allow_on_submit\": 0, \n    \"bold\": 0, \n    \"collapsible\": 0, \n    \"collapsible_depends_on\": null, \n    \"columns\": 0, \n    \"creation\": \"2017-09-01 15:56:17.943779\", \n    \"default\": null, \n    \"depends_on\": null, \n    \"description\": null, \n    \"docstatus\": 0, \n    \"doctype\": \"DocField\", \n    \"fieldname\": \"column_break_5\", \n    \"fieldtype\": \"Column Break\", \n    \"hidden\": 0, \n    \"idx\": 5, \n    \"ignore_user_permissions\": 0, \n    \"ignore_xss_filter\": 0, \n    \"in_filter\": 0, \n    \"in_global_search\": 0, \n    \"in_list_view\": 0, \n    \"in_standard_filter\": 0, \n    \"label\": null, \n    \"length\": 0, \n    \"modified\": \"2017-09-01 16:21:43.579196\", \n    \"modified_by\": \"Administrator\", \n    \"name\": \"4726af9599\", \n    \"no_copy\": 0, \n    \"oldfieldname\": null, \n    \"oldfieldtype\": null, \n    \"options\": null, \n    \"owner\": \"Administrator\", \n    \"parent\": \"Empresa\", \n    \"parentfield\": \"fields\", \n    \"parenttype\": \"DocType\", \n    \"permlevel\": 0, \n    \"precision\": \"\", \n    \"print_hide\": 0, \n    \"print_hide_if_no_value\": 0, \n    \"print_width\": null, \n    \"read_only\": 0, \n    \"remember_last_selected_value\": 0, \n    \"report_hide\": 0, \n    \"reqd\": 0, \n    \"search_index\": 0, \n    \"set_only_once\": 0, \n    \"trigger\": null, \n    \"unique\": 0, \n    \"width\": null\n   }\n  ], \n  [\n   \"fields\", \n   {\n    \"allow_bulk_edit\": 0, \n    \"allow_on_submit\": 0, \n    \"bold\": 0, \n    \"collapsible\": 0, \n    \"collapsible_depends_on\": null, \n    \"columns\": 0, \n    \"creation\": \"2017-09-01 15:56:17.943779\", \n    \"default\": null, \n    \"depends_on\": null, \n    \"description\": null, \n    \"docstatus\": 0, \n    \"doctype\": \"DocField\", \n    \"fieldname\": \"sitio_web\", \n    \"fieldtype\": \"Data\", \n    \"hidden\": 0, \n    \"idx\": 6, \n    \"ignore_user_permissions\": 0, \n    \"ignore_xss_filter\": 0, \n    \"in_filter\": 0, \n    \"in_global_search\": 0, \n    \"in_list_view\": 0, \n    \"in_standard_filter\": 0, \n    \"label\": \"Sitio Web\", \n    \"length\": 0, \n    \"modified\": \"2017-09-01 16:21:43.579196\", \n    \"modified_by\": \"Administrator\", \n    \"name\": \"232fa31a33\", \n    \"no_copy\": 0, \n    \"oldfieldname\": null, \n    \"oldfieldtype\": null, \n    \"options\": null, \n    \"owner\": \"Administrator\", \n    \"parent\": \"Empresa\", \n    \"parentfield\": \"fields\", \n    \"parenttype\": \"DocType\", \n    \"permlevel\": 0, \n    \"precision\": \"\", \n    \"print_hide\": 0, \n    \"print_hide_if_no_value\": 0, \n    \"print_width\": null, \n    \"read_only\": 0, \n    \"remember_last_selected_value\": 0, \n    \"report_hide\": 0, \n    \"reqd\": 0, \n    \"search_index\": 0, \n    \"set_only_once\": 0, \n    \"trigger\": null, \n    \"unique\": 0, \n    \"width\": null\n   }\n  ], \n  [\n   \"fields\", \n   {\n    \"allow_bulk_edit\": 0, \n    \"allow_on_submit\": 0, \n    \"bold\": 0, \n    \"collapsible\": 0, \n    \"collapsible_depends_on\": null, \n    \"columns\": 0, \n    \"creation\": \"2017-09-01 15:56:17.943779\", \n    \"default\": null, \n    \"depends_on\": null, \n    \"description\": null, \n    \"docstatus\": 0, \n    \"doctype\": \"DocField\", \n    \"fieldname\": \"direccion\", \n    \"fieldtype\": \"Data\", \n    \"hidden\": 0, \n    \"idx\": 7, \n    \"ignore_user_permissions\": 0, \n    \"ignore_xss_filter\": 0, \n    \"in_filter\": 0, \n    \"in_global_search\": 0, \n    \"in_list_view\": 0, \n    \"in_standard_filter\": 0, \n    \"label\": \"Direccion\", \n    \"length\": 0, \n    \"modified\": \"2017-09-01 16:21:43.579196\", \n    \"modified_by\": \"Administrator\", \n    \"name\": \"6e80647627\", \n    \"no_copy\": 0, \n    \"oldfieldname\": null, \n    \"oldfieldtype\": null, \n    \"options\": null, \n    \"owner\": \"Administrator\", \n    \"parent\": \"Empresa\", \n    \"parentfield\": \"fields\", \n    \"parenttype\": \"DocType\", \n    \"permlevel\": 0, \n    \"precision\": \"\", \n    \"print_hide\": 0, \n    \"print_hide_if_no_value\": 0, \n    \"print_width\": null, \n    \"read_only\": 0, \n    \"remember_last_selected_value\": 0, \n    \"report_hide\": 0, \n    \"reqd\": 0, \n    \"search_index\": 0, \n    \"set_only_once\": 0, \n    \"trigger\": null, \n    \"unique\": 0, \n    \"width\": null\n   }\n  ]\n ], \n \"changed\": [], \n \"removed\": [], \n \"row_changed\": []\n}',NULL),('7414a98204','2017-09-01 16:22:11.991361','2017-09-01 16:22:11.991361','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'DocType',NULL,'Empresa','{\n \"added\": [], \n \"changed\": [], \n \"removed\": [], \n \"row_changed\": [\n  [\n   \"fields\", \n   6, \n   \"6e80647627\", \n   [\n    [\n     \"fieldtype\", \n     \"Data\", \n     \"Small Text\"\n    ]\n   ]\n  ]\n ]\n}',NULL),('7b0d0dc2d5','2017-09-01 14:03:54.695173','2017-09-01 14:03:54.695173','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'DocType',NULL,'Paciente','{\n \"added\": [], \n \"changed\": [], \n \"removed\": [], \n \"row_changed\": [\n  [\n   \"fields\", \n   22, \n   \"da44a3ac66\", \n   [\n    [\n     \"fieldtype\", \n     \"Data\", \n     \"Select\"\n    ], \n    [\n     \"options\", \n     null, \n     \"Azua<br>Bahoruco<br>Ban\\u00ed<br>Barahona<br>Bonao<br>Cotu\\u00ed<br>Dajab\\u00f3n<br>Distrito Nacional<br>El Seibo<br>El\\u00edas Pi\\u00f1a<br>Hato Mayor<br>Hig\\u00fcey<br>Jiman\\u00ed<br>La Romana<br>La Vega<br>Moca<br>Monte Cristi<br>Monte Plata<br>Nagua<br>Pedernales<br>Puerto Plata<br>Salcedo<br>Saman\\u00e1<br>San Crist\\u00f3bal<br>San Francisco de Macor\\u00eds<br>San Jos\\u00e9 de Ocoa<br>San Juan de la Maguana<br>San Pedro de Macor\\u00eds<br>Santiago<br>Santiago Rodr\\u00edguez,neta<br>Santo Domingo Este<br>Valverde\"\n    ]\n   ]\n  ]\n ]\n}',NULL),('7cb17496d1','2017-09-01 20:12:21.779515','2017-09-01 20:12:21.779515','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'Paciente',NULL,'PAC-00000002','{\n \"added\": [], \n \"changed\": [\n  [\n   \"foto\", \n   null, \n   \"/private/files/Gibran.jpg\"\n  ]\n ], \n \"removed\": [], \n \"row_changed\": []\n}',NULL),('801e2719c1','2017-09-01 15:24:55.149115','2017-09-01 15:24:55.149115','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'DocType',NULL,'Paciente','{\n \"added\": [\n  [\n   \"fields\", \n   {\n    \"allow_bulk_edit\": 0, \n    \"allow_on_submit\": 0, \n    \"bold\": 0, \n    \"collapsible\": 0, \n    \"collapsible_depends_on\": null, \n    \"columns\": 0, \n    \"creation\": \"2017-09-01 13:29:30.289032\", \n    \"default\": null, \n    \"depends_on\": null, \n    \"description\": null, \n    \"docstatus\": 0, \n    \"doctype\": \"DocField\", \n    \"fieldname\": \"medicamentos\", \n    \"fieldtype\": \"Table\", \n    \"hidden\": 0, \n    \"idx\": 29, \n    \"ignore_user_permissions\": 0, \n    \"ignore_xss_filter\": 0, \n    \"in_filter\": 0, \n    \"in_global_search\": 0, \n    \"in_list_view\": 0, \n    \"in_standard_filter\": 0, \n    \"label\": \"Medicamentos\", \n    \"length\": 0, \n    \"modified\": \"2017-09-01 15:24:53.487823\", \n    \"modified_by\": \"Administrator\", \n    \"name\": \"86b07d55c2\", \n    \"no_copy\": 0, \n    \"oldfieldname\": null, \n    \"oldfieldtype\": null, \n    \"options\": \"Medicamentos\", \n    \"owner\": \"Administrator\", \n    \"parent\": \"Paciente\", \n    \"parentfield\": \"fields\", \n    \"parenttype\": \"DocType\", \n    \"permlevel\": 0, \n    \"precision\": \"\", \n    \"print_hide\": 0, \n    \"print_hide_if_no_value\": 0, \n    \"print_width\": null, \n    \"read_only\": 0, \n    \"remember_last_selected_value\": 0, \n    \"report_hide\": 0, \n    \"reqd\": 0, \n    \"search_index\": 0, \n    \"set_only_once\": 0, \n    \"trigger\": null, \n    \"unique\": 0, \n    \"width\": null\n   }\n  ]\n ], \n \"changed\": [], \n \"removed\": [], \n \"row_changed\": [\n  [\n   \"fields\", \n   27, \n   \"219dae8f78\", \n   [\n    [\n     \"fieldname\", \n     \"medicamentos\", \n     \"sb_28\"\n    ]\n   ]\n  ]\n ]\n}',NULL),('81e1cf3158','2017-09-01 14:04:46.078006','2017-09-01 14:04:46.078006','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'DocType',NULL,'Paciente','{\n \"added\": [], \n \"changed\": [], \n \"removed\": [], \n \"row_changed\": [\n  [\n   \"fields\", \n   7, \n   \"d235884f70\", \n   [\n    [\n     \"options\", \n     \"FEMENINO<br>MASCULINO\", \n     \"-<br>FEMENINO<br>MASCULINO\"\n    ]\n   ]\n  ], \n  [\n   \"fields\", \n   22, \n   \"da44a3ac66\", \n   [\n    [\n     \"options\", \n     \"Azua<br>Bahoruco<br>Ban\\u00ed<br>Barahona<br>Bonao<br>Cotu\\u00ed<br>Dajab\\u00f3n<br>Distrito Nacional<br>El Seibo<br>El\\u00edas Pi\\u00f1a<br>Hato Mayor<br>Hig\\u00fcey<br>Jiman\\u00ed<br>La Romana<br>La Vega<br>Moca<br>Monte Cristi<br>Monte Plata<br>Nagua<br>Pedernales<br>Puerto Plata<br>Salcedo<br>Saman\\u00e1<br>San Crist\\u00f3bal<br>San Francisco de Macor\\u00eds<br>San Jos\\u00e9 de Ocoa<br>San Juan de la Maguana<br>San Pedro de Macor\\u00eds<br>Santiago<br>Santiago Rodr\\u00edguez,neta<br>Santo Domingo Este<br>Valverde\", \n     \"-<br>Azua<br>Bahoruco<br>Ban\\u00ed<br>Barahona<br>Bonao<br>Cotu\\u00ed<br>Dajab\\u00f3n<br>Distrito Nacional<br>El Seibo<br>El\\u00edas Pi\\u00f1a<br>Hato Mayor<br>Hig\\u00fcey<br>Jiman\\u00ed<br>La Romana<br>La Vega<br>Moca<br>Monte Cristi<br>Monte Plata<br>Nagua<br>Pedernales<br>Puerto Plata<br>Salcedo<br>Saman\\u00e1<br>San Crist\\u00f3bal<br>San Francisco de Macor\\u00eds<br>San Jos\\u00e9 de Ocoa<br>San Juan de la Maguana<br>San Pedro de Macor\\u00eds<br>Santiago<br>Santiago Rodr\\u00edguez,neta<br>Santo Domingo Este<br>Valverde\"\n    ]\n   ]\n  ]\n ]\n}',NULL),('81ebd95b40','2017-09-01 19:36:52.685124','2017-09-01 19:36:52.685124','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'Paciente',NULL,'PAC-00000001','{\n \"added\": [], \n \"changed\": [\n  [\n   \"foto\", \n   null, \n   \"/private/files/WhatsApp_Image_2017-09-01_at_7.35.05_PM.jpeg\"\n  ]\n ], \n \"removed\": [], \n \"row_changed\": []\n}',NULL),('88f3f3d33e','2017-09-01 19:19:24.397306','2017-09-01 19:19:24.397306','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'DocType',NULL,'Paciente','{\n \"added\": [\n  [\n   \"fields\", \n   {\n    \"allow_bulk_edit\": 0, \n    \"allow_on_submit\": 0, \n    \"bold\": 0, \n    \"collapsible\": 0, \n    \"collapsible_depends_on\": null, \n    \"columns\": 0, \n    \"creation\": \"2017-09-01 13:29:30.289032\", \n    \"default\": null, \n    \"depends_on\": null, \n    \"description\": null, \n    \"docstatus\": 0, \n    \"doctype\": \"DocField\", \n    \"fieldname\": \"section_break_30\", \n    \"fieldtype\": \"Section Break\", \n    \"hidden\": 0, \n    \"idx\": 30, \n    \"ignore_user_permissions\": 0, \n    \"ignore_xss_filter\": 0, \n    \"in_filter\": 0, \n    \"in_global_search\": 0, \n    \"in_list_view\": 0, \n    \"in_standard_filter\": 0, \n    \"label\": null, \n    \"length\": 0, \n    \"modified\": \"2017-09-01 19:19:22.006523\", \n    \"modified_by\": \"Administrator\", \n    \"name\": \"67437e1f49\", \n    \"no_copy\": 0, \n    \"oldfieldname\": null, \n    \"oldfieldtype\": null, \n    \"options\": null, \n    \"owner\": \"Administrator\", \n    \"parent\": \"Paciente\", \n    \"parentfield\": \"fields\", \n    \"parenttype\": \"DocType\", \n    \"permlevel\": 0, \n    \"precision\": \"\", \n    \"print_hide\": 0, \n    \"print_hide_if_no_value\": 0, \n    \"print_width\": null, \n    \"read_only\": 0, \n    \"remember_last_selected_value\": 0, \n    \"report_hide\": 0, \n    \"reqd\": 0, \n    \"search_index\": 0, \n    \"set_only_once\": 0, \n    \"trigger\": null, \n    \"unique\": 0, \n    \"width\": null\n   }\n  ], \n  [\n   \"fields\", \n   {\n    \"allow_bulk_edit\": 0, \n    \"allow_on_submit\": 0, \n    \"bold\": 0, \n    \"collapsible\": 0, \n    \"collapsible_depends_on\": null, \n    \"columns\": 0, \n    \"creation\": \"2017-09-01 13:29:30.289032\", \n    \"default\": null, \n    \"depends_on\": null, \n    \"description\": null, \n    \"docstatus\": 0, \n    \"doctype\": \"DocField\", \n    \"fieldname\": \"foto\", \n    \"fieldtype\": \"Attach Image\", \n    \"hidden\": 0, \n    \"idx\": 31, \n    \"ignore_user_permissions\": 0, \n    \"ignore_xss_filter\": 0, \n    \"in_filter\": 0, \n    \"in_global_search\": 0, \n    \"in_list_view\": 0, \n    \"in_standard_filter\": 0, \n    \"label\": \"Foto\", \n    \"length\": 0, \n    \"modified\": \"2017-09-01 19:19:22.006523\", \n    \"modified_by\": \"Administrator\", \n    \"name\": \"4f031972a2\", \n    \"no_copy\": 0, \n    \"oldfieldname\": null, \n    \"oldfieldtype\": null, \n    \"options\": null, \n    \"owner\": \"Administrator\", \n    \"parent\": \"Paciente\", \n    \"parentfield\": \"fields\", \n    \"parenttype\": \"DocType\", \n    \"permlevel\": 0, \n    \"precision\": \"\", \n    \"print_hide\": 0, \n    \"print_hide_if_no_value\": 0, \n    \"print_width\": null, \n    \"read_only\": 0, \n    \"remember_last_selected_value\": 0, \n    \"report_hide\": 0, \n    \"reqd\": 0, \n    \"search_index\": 0, \n    \"set_only_once\": 0, \n    \"trigger\": null, \n    \"unique\": 0, \n    \"width\": null\n   }\n  ]\n ], \n \"changed\": [\n  [\n   \"image_field\", \n   \"\", \n   \"foto\"\n  ]\n ], \n \"removed\": [], \n \"row_changed\": []\n}',NULL),('8fa81d1362','2017-09-01 13:45:15.702118','2017-09-01 13:45:15.702118','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'DocType',NULL,'Paciente','{\n \"added\": [], \n \"changed\": [\n  [\n   \"image_field\", \n   \"Attach Image\", \n   \"\"\n  ]\n ], \n \"removed\": [], \n \"row_changed\": []\n}',NULL),('9096a4871f','2017-09-01 22:00:13.711862','2017-09-01 22:00:13.711862','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'User',NULL,'Administrator','{\n \"comment\": \"Administrator shared this document with Administrator\", \n \"comment_type\": \"Shared\"\n}',NULL),('9a8430dfbb','2017-09-01 16:24:16.809096','2017-09-01 16:24:16.809096','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'Empresa',NULL,'ARS-000001','{\n \"added\": [], \n \"changed\": [\n  [\n   \"sitio_web\", \n   null, \n   \"http://www.arssenasa.gob.do/\"\n  ], \n  [\n   \"direccion\", \n   null, \n   \"Av. 27 de Febrero 232, casi esq. Tiradentes, La Esperilla, Distrito Nacional\"\n  ]\n ], \n \"removed\": [], \n \"row_changed\": [\n  [\n   \"telefonos\", \n   0, \n   \"7a72a8bc5d\", \n   [\n    [\n     \"telefono\", \n     \"8099795810\", \n     \"8093333822\"\n    ]\n   ]\n  ]\n ]\n}',NULL),('9aa49c0465','2017-09-01 16:25:54.232429','2017-09-01 16:25:54.232429','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'DocType',NULL,'Empresa','{\n \"added\": [], \n \"changed\": [], \n \"removed\": [], \n \"row_changed\": [\n  [\n   \"fields\", \n   2, \n   \"42d3fc2996\", \n   [\n    [\n     \"unique\", \n     0, \n     1\n    ]\n   ]\n  ], \n  [\n   \"fields\", \n   3, \n   \"6e4f6a9935\", \n   [\n    [\n     \"reqd\", \n     0, \n     1\n    ], \n    [\n     \"unique\", \n     0, \n     1\n    ]\n   ]\n  ]\n ]\n}',NULL),('9c2cc7e54d','2017-09-01 13:42:49.958000','2017-09-01 13:42:49.958000','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'DocType',NULL,'Paciente','{\n \"added\": [\n  [\n   \"fields\", \n   {\n    \"allow_bulk_edit\": 0, \n    \"allow_on_submit\": 0, \n    \"bold\": 0, \n    \"collapsible\": 0, \n    \"collapsible_depends_on\": null, \n    \"columns\": 0, \n    \"creation\": \"2017-09-01 13:29:30.289032\", \n    \"default\": null, \n    \"depends_on\": null, \n    \"description\": null, \n    \"docstatus\": 0, \n    \"doctype\": \"DocField\", \n    \"fieldname\": \"correo_electronico\", \n    \"fieldtype\": \"Data\", \n    \"hidden\": 0, \n    \"idx\": 14, \n    \"ignore_user_permissions\": 0, \n    \"ignore_xss_filter\": 0, \n    \"in_filter\": 0, \n    \"in_global_search\": 0, \n    \"in_list_view\": 0, \n    \"in_standard_filter\": 0, \n    \"label\": \"Correo Electronico\", \n    \"length\": 0, \n    \"modified\": \"2017-09-01 13:42:47.373142\", \n    \"modified_by\": \"Administrator\", \n    \"name\": \"f0f0b7abfb\", \n    \"no_copy\": 0, \n    \"oldfieldname\": null, \n    \"oldfieldtype\": null, \n    \"options\": null, \n    \"owner\": \"Administrator\", \n    \"parent\": \"Paciente\", \n    \"parentfield\": \"fields\", \n    \"parenttype\": \"DocType\", \n    \"permlevel\": 0, \n    \"precision\": \"\", \n    \"print_hide\": 0, \n    \"print_hide_if_no_value\": 0, \n    \"print_width\": null, \n    \"read_only\": 0, \n    \"remember_last_selected_value\": 0, \n    \"report_hide\": 0, \n    \"reqd\": 0, \n    \"search_index\": 0, \n    \"set_only_once\": 0, \n    \"trigger\": null, \n    \"unique\": 0, \n    \"width\": null\n   }\n  ]\n ], \n \"changed\": [], \n \"removed\": [], \n \"row_changed\": []\n}',NULL),('9f1af6d3c9','2017-09-01 14:51:17.664307','2017-09-01 14:51:17.664307','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'DocType',NULL,'Paciente','{\n \"added\": [], \n \"changed\": [], \n \"removed\": [], \n \"row_changed\": [\n  [\n   \"fields\", \n   5, \n   \"b82b84df2f\", \n   [\n    [\n     \"unique\", \n     0, \n     1\n    ]\n   ]\n  ], \n  [\n   \"fields\", \n   10, \n   \"b1d83cf2ed\", \n   [\n    [\n     \"unique\", \n     0, \n     1\n    ]\n   ]\n  ], \n  [\n   \"fields\", \n   11, \n   \"8524127523\", \n   [\n    [\n     \"unique\", \n     0, \n     1\n    ]\n   ]\n  ]\n ]\n}',NULL),('a23929e034','2017-09-01 15:57:26.194188','2017-09-01 15:57:26.194188','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'DocType',NULL,'Empresa','{\n \"added\": [], \n \"changed\": [\n  [\n   \"title_field\", \n   null, \n   \"nombre\"\n  ], \n  [\n   \"search_fields\", \n   null, \n   \"nombre,rnc\"\n  ], \n  [\n   \"document_type\", \n   \"\", \n   \"Document\"\n  ]\n ], \n \"removed\": [], \n \"row_changed\": []\n}',NULL),('ad2b898f76','2017-09-01 15:30:43.673718','2017-09-01 15:30:43.673718','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'DocType',NULL,'Medicamentos','{\n \"added\": [], \n \"changed\": [], \n \"removed\": [], \n \"row_changed\": [\n  [\n   \"fields\", \n   0, \n   \"b3bd97c63f\", \n   [\n    [\n     \"columns\", \n     0, \n     2\n    ]\n   ]\n  ], \n  [\n   \"fields\", \n   1, \n   \"7fb6b2f1f1\", \n   [\n    [\n     \"columns\", \n     0, \n     2\n    ]\n   ]\n  ], \n  [\n   \"fields\", \n   2, \n   \"aca86ad56c\", \n   [\n    [\n     \"columns\", \n     0, \n     2\n    ]\n   ]\n  ], \n  [\n   \"fields\", \n   4, \n   \"d80dc5298b\", \n   [\n    [\n     \"columns\", \n     0, \n     2\n    ]\n   ]\n  ], \n  [\n   \"fields\", \n   5, \n   \"7302755b6e\", \n   [\n    [\n     \"columns\", \n     0, \n     2\n    ]\n   ]\n  ], \n  [\n   \"fields\", \n   6, \n   \"ec056ca092\", \n   [\n    [\n     \"columns\", \n     0, \n     2\n    ]\n   ]\n  ]\n ]\n}',NULL),('ad59dd4420','2017-09-01 16:07:13.272076','2017-09-01 16:07:13.272076','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'DocType',NULL,'Paciente','{\n \"added\": [], \n \"changed\": [], \n \"removed\": [], \n \"row_changed\": [\n  [\n   \"fields\", \n   12, \n   \"a4f618eb1c\", \n   [\n    [\n     \"fieldtype\", \n     \"Data\", \n     \"Link\"\n    ], \n    [\n     \"options\", \n     null, \n     \"Empresa\"\n    ]\n   ]\n  ]\n ]\n}',NULL),('ad6811007e','2017-09-01 12:38:02.677168','2017-09-01 12:38:02.677168','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'System Settings',NULL,'System Settings','{\n \"added\": [], \n \"changed\": [\n  [\n   \"country\", \n   null, \n   \"Dominican Republic\"\n  ], \n  [\n   \"language\", \n   null, \n   \"en\"\n  ], \n  [\n   \"time_zone\", \n   null, \n   \"America/Santo_Domingo\"\n  ], \n  [\n   \"date_format\", \n   \"yyyy-mm-dd\", \n   \"dd-mm-yyyy\"\n  ], \n  [\n   \"float_precision\", \n   \"\", \n   \"3\"\n  ], \n  [\n   \"enable_scheduler\", \n   0, \n   1\n  ], \n  [\n   \"minimum_password_score\", \n   \"2\", \n   \"\"\n  ]\n ], \n \"removed\": [], \n \"row_changed\": []\n}',NULL),('bd3ac10115','2017-09-01 19:20:26.288473','2017-09-01 19:20:26.288473','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'DocType',NULL,'Paciente','{\n \"added\": [], \n \"changed\": [], \n \"removed\": [], \n \"row_changed\": [\n  [\n   \"fields\", \n   29, \n   \"67437e1f49\", \n   [\n    [\n     \"hidden\", \n     0, \n     1\n    ]\n   ]\n  ]\n ]\n}',NULL),('bd7822158f','2017-09-01 20:12:20.966167','2017-09-01 20:12:20.966167','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'Paciente',NULL,'PAC-00000002','{\n \"comment\": \"added <a href=\'/private/files/Gibran.jpg\' target=\'_blank\'>Gibran.jpg</a> <i class=\\\"fa fa-lock text-warning\\\"></i>\", \n \"comment_type\": \"Attachment\"\n}',NULL),('cd18fe9f79','2017-09-01 15:26:42.442544','2017-09-01 15:26:42.442544','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'DocType',NULL,'Alergias','{\n \"added\": [], \n \"changed\": [], \n \"removed\": [], \n \"row_changed\": [\n  [\n   \"fields\", \n   1, \n   \"8d4849b997\", \n   [\n    [\n     \"columns\", \n     2, \n     1\n    ]\n   ]\n  ]\n ]\n}',NULL),('ceab29ebc0','2017-09-01 19:36:51.910932','2017-09-01 19:36:51.910932','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'Paciente',NULL,'PAC-00000001','{\n \"comment\": \"added <a href=\'/private/files/WhatsApp_Image_2017-09-01_at_7.35.05_PM.jpeg\' target=\'_blank\'>WhatsApp_Image_2017-09-01_at_7.35.05_PM.jpeg</a> <i class=\\\"fa fa-lock text-warning\\\"></i>\", \n \"comment_type\": \"Attachment\"\n}',NULL),('cfa9b87808','2017-09-01 13:33:10.427501','2017-09-01 13:33:10.427501','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'DocType',NULL,'Paciente','{\n \"added\": [], \n \"changed\": [], \n \"removed\": [], \n \"row_changed\": [\n  [\n   \"fields\", \n   8, \n   \"68e4bf96f5\", \n   [\n    [\n     \"options\", \n     \"A+<br>A-<br>AB+<br>AB-<br>B+<br>B-<br>O+<br>O-\", \n     \"-<br>A+<br>A-<br>AB+<br>AB-<br>B+<br>B-<br>O+<br>O-\"\n    ]\n   ]\n  ]\n ]\n}',NULL),('d54836ada7','2017-09-01 15:12:35.022853','2017-09-01 15:12:35.022853','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'DocType',NULL,'Paciente','{\n \"added\": [\n  [\n   \"fields\", \n   {\n    \"allow_bulk_edit\": 0, \n    \"allow_on_submit\": 0, \n    \"bold\": 0, \n    \"collapsible\": 0, \n    \"collapsible_depends_on\": null, \n    \"columns\": 0, \n    \"creation\": \"2017-09-01 13:29:30.289032\", \n    \"default\": null, \n    \"depends_on\": null, \n    \"description\": null, \n    \"docstatus\": 0, \n    \"doctype\": \"DocField\", \n    \"fieldname\": \"sb_26\", \n    \"fieldtype\": \"Table\", \n    \"hidden\": 0, \n    \"idx\": 27, \n    \"ignore_user_permissions\": 0, \n    \"ignore_xss_filter\": 0, \n    \"in_filter\": 0, \n    \"in_global_search\": 0, \n    \"in_list_view\": 0, \n    \"in_standard_filter\": 0, \n    \"label\": \"Alergias\", \n    \"length\": 0, \n    \"modified\": \"2017-09-01 15:12:32.830125\", \n    \"modified_by\": \"Administrator\", \n    \"name\": \"dc694474e6\", \n    \"no_copy\": 0, \n    \"oldfieldname\": null, \n    \"oldfieldtype\": null, \n    \"options\": \"Alergias\", \n    \"owner\": \"Administrator\", \n    \"parent\": \"Paciente\", \n    \"parentfield\": \"fields\", \n    \"parenttype\": \"DocType\", \n    \"permlevel\": 0, \n    \"precision\": \"\", \n    \"print_hide\": 0, \n    \"print_hide_if_no_value\": 0, \n    \"print_width\": null, \n    \"read_only\": 0, \n    \"remember_last_selected_value\": 0, \n    \"report_hide\": 0, \n    \"reqd\": 0, \n    \"search_index\": 0, \n    \"set_only_once\": 0, \n    \"trigger\": null, \n    \"unique\": 0, \n    \"width\": null\n   }\n  ]\n ], \n \"changed\": [], \n \"removed\": [], \n \"row_changed\": []\n}',NULL),('dcb36206ef','2017-09-01 13:31:59.822109','2017-09-01 13:31:59.822109','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'DocType',NULL,'Paciente','{\n \"added\": [], \n \"changed\": [], \n \"removed\": [], \n \"row_changed\": [\n  [\n   \"fields\", \n   8, \n   \"68e4bf96f5\", \n   [\n    [\n     \"fieldtype\", \n     \"Data\", \n     \"Select\"\n    ], \n    [\n     \"options\", \n     null, \n     \"A+<br>A-<br>AB+<br>AB-<br>B+<br>B-<br>O+<br>O-\"\n    ]\n   ]\n  ]\n ]\n}',NULL),('dcefdb101c','2017-09-01 13:47:23.632465','2017-09-01 13:47:23.632465','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'DocType',NULL,'Paciente','{\n \"added\": [\n  [\n   \"fields\", \n   {\n    \"allow_bulk_edit\": 0, \n    \"allow_on_submit\": 0, \n    \"bold\": 0, \n    \"collapsible\": 0, \n    \"collapsible_depends_on\": null, \n    \"columns\": 0, \n    \"creation\": \"2017-09-01 13:29:30.289032\", \n    \"default\": null, \n    \"depends_on\": null, \n    \"description\": null, \n    \"docstatus\": 0, \n    \"doctype\": \"DocField\", \n    \"fieldname\": \"telefonos\", \n    \"fieldtype\": \"Table\", \n    \"hidden\": 0, \n    \"idx\": 25, \n    \"ignore_user_permissions\": 0, \n    \"ignore_xss_filter\": 0, \n    \"in_filter\": 0, \n    \"in_global_search\": 0, \n    \"in_list_view\": 0, \n    \"in_standard_filter\": 0, \n    \"label\": \"Telefonos\", \n    \"length\": 0, \n    \"modified\": \"2017-09-01 13:47:21.393488\", \n    \"modified_by\": \"Administrator\", \n    \"name\": \"ecdddcd7e6\", \n    \"no_copy\": 0, \n    \"oldfieldname\": null, \n    \"oldfieldtype\": null, \n    \"options\": \"Telefonos\", \n    \"owner\": \"Administrator\", \n    \"parent\": \"Paciente\", \n    \"parentfield\": \"fields\", \n    \"parenttype\": \"DocType\", \n    \"permlevel\": 0, \n    \"precision\": \"\", \n    \"print_hide\": 0, \n    \"print_hide_if_no_value\": 0, \n    \"print_width\": null, \n    \"read_only\": 0, \n    \"remember_last_selected_value\": 0, \n    \"report_hide\": 0, \n    \"reqd\": 0, \n    \"search_index\": 0, \n    \"set_only_once\": 0, \n    \"trigger\": null, \n    \"unique\": 0, \n    \"width\": null\n   }\n  ]\n ], \n \"changed\": [], \n \"removed\": [], \n \"row_changed\": [\n  [\n   \"fields\", \n   23, \n   \"935f034c87\", \n   [\n    [\n     \"fieldname\", \n     \"telefonos\", \n     \"sb_24\"\n    ]\n   ]\n  ]\n ]\n}',NULL),('e3aaf9d6fb','2017-09-01 15:26:04.680876','2017-09-01 15:26:04.680876','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'DocType',NULL,'Alergias','{\n \"added\": [\n  [\n   \"fields\", \n   {\n    \"allow_bulk_edit\": 0, \n    \"allow_on_submit\": 0, \n    \"bold\": 0, \n    \"collapsible\": 0, \n    \"collapsible_depends_on\": null, \n    \"columns\": 0, \n    \"creation\": \"2017-09-01 15:11:26.069079\", \n    \"default\": null, \n    \"depends_on\": null, \n    \"description\": null, \n    \"docstatus\": 0, \n    \"doctype\": \"DocField\", \n    \"fieldname\": \"data_6\", \n    \"fieldtype\": \"Data\", \n    \"hidden\": 0, \n    \"idx\": 6, \n    \"ignore_user_permissions\": 0, \n    \"ignore_xss_filter\": 0, \n    \"in_filter\": 0, \n    \"in_global_search\": 0, \n    \"in_list_view\": 0, \n    \"in_standard_filter\": 0, \n    \"label\": null, \n    \"length\": 0, \n    \"modified\": \"2017-09-01 15:26:03.380531\", \n    \"modified_by\": \"Administrator\", \n    \"name\": \"6d53357edb\", \n    \"no_copy\": 0, \n    \"oldfieldname\": null, \n    \"oldfieldtype\": null, \n    \"options\": null, \n    \"owner\": \"Administrator\", \n    \"parent\": \"Alergias\", \n    \"parentfield\": \"fields\", \n    \"parenttype\": \"DocType\", \n    \"permlevel\": 0, \n    \"precision\": \"\", \n    \"print_hide\": 0, \n    \"print_hide_if_no_value\": 0, \n    \"print_width\": null, \n    \"read_only\": 0, \n    \"remember_last_selected_value\": 0, \n    \"report_hide\": 0, \n    \"reqd\": 0, \n    \"search_index\": 0, \n    \"set_only_once\": 0, \n    \"trigger\": null, \n    \"unique\": 0, \n    \"width\": null\n   }\n  ]\n ], \n \"changed\": [], \n \"removed\": [], \n \"row_changed\": [\n  [\n   \"fields\", \n   0, \n   \"c7ef2e8bb7\", \n   [\n    [\n     \"columns\", \n     0, \n     2\n    ]\n   ]\n  ], \n  [\n   \"fields\", \n   1, \n   \"8d4849b997\", \n   [\n    [\n     \"columns\", \n     0, \n     2\n    ]\n   ]\n  ], \n  [\n   \"fields\", \n   3, \n   \"8a93891ac9\", \n   [\n    [\n     \"columns\", \n     0, \n     2\n    ]\n   ]\n  ], \n  [\n   \"fields\", \n   4, \n   \"d561087cb8\", \n   [\n    [\n     \"columns\", \n     0, \n     2\n    ]\n   ]\n  ]\n ]\n}',NULL),('e690496375','2017-09-01 22:00:13.831304','2017-09-01 22:00:13.831304','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'User',NULL,'Guest','{\n \"comment\": \"Administrator shared this document with Guest\", \n \"comment_type\": \"Shared\"\n}',NULL),('ebce97369e','2017-09-01 15:32:20.760966','2017-09-01 15:32:20.760966','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'DocType',NULL,'Medicamentos','{\n \"added\": [], \n \"changed\": [], \n \"removed\": [], \n \"row_changed\": [\n  [\n   \"fields\", \n   6, \n   \"ec056ca092\", \n   [\n    [\n     \"columns\", \n     2, \n     1\n    ]\n   ]\n  ]\n ]\n}',NULL),('eda1f66a49','2017-09-01 20:21:35.327852','2017-09-01 20:21:35.327852','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'Email Account',NULL,'Notifications','{\n \"added\": [], \n \"changed\": [\n  [\n   \"signature\", \n   null, \n   \"\"\n  ], \n  [\n   \"footer\", \n   null, \n   \"\"\n  ]\n ], \n \"removed\": [], \n \"row_changed\": []\n}',NULL),('f42e671ee1','2017-09-01 12:38:03.922080','2017-09-01 12:38:03.922080','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'User',NULL,'lewin.villar@gmail.com','{\n \"added\": [\n  [\n   \"roles\", \n   {\n    \"creation\": \"2017-09-01 12:38:02.964693\", \n    \"docstatus\": 0, \n    \"doctype\": \"Has Role\", \n    \"idx\": 2, \n    \"modified\": \"2017-09-01 12:38:03.412982\", \n    \"modified_by\": \"Administrator\", \n    \"name\": \"a063662069\", \n    \"owner\": \"Administrator\", \n    \"parent\": \"lewin.villar@gmail.com\", \n    \"parentfield\": \"roles\", \n    \"parenttype\": \"User\", \n    \"role\": \"Accounts Manager\"\n   }\n  ], \n  [\n   \"roles\", \n   {\n    \"creation\": \"2017-09-01 12:38:02.964693\", \n    \"docstatus\": 0, \n    \"doctype\": \"Has Role\", \n    \"idx\": 3, \n    \"modified\": \"2017-09-01 12:38:03.412982\", \n    \"modified_by\": \"Administrator\", \n    \"name\": \"6a7d8e49c0\", \n    \"owner\": \"Administrator\", \n    \"parent\": \"lewin.villar@gmail.com\", \n    \"parentfield\": \"roles\", \n    \"parenttype\": \"User\", \n    \"role\": \"Accounts User\"\n   }\n  ], \n  [\n   \"roles\", \n   {\n    \"creation\": \"2017-09-01 12:38:02.964693\", \n    \"docstatus\": 0, \n    \"doctype\": \"Has Role\", \n    \"idx\": 4, \n    \"modified\": \"2017-09-01 12:38:03.412982\", \n    \"modified_by\": \"Administrator\", \n    \"name\": \"5f45abcdbd\", \n    \"owner\": \"Administrator\", \n    \"parent\": \"lewin.villar@gmail.com\", \n    \"parentfield\": \"roles\", \n    \"parenttype\": \"User\", \n    \"role\": \"Blogger\"\n   }\n  ], \n  [\n   \"roles\", \n   {\n    \"creation\": \"2017-09-01 12:38:02.964693\", \n    \"docstatus\": 0, \n    \"doctype\": \"Has Role\", \n    \"idx\": 5, \n    \"modified\": \"2017-09-01 12:38:03.412982\", \n    \"modified_by\": \"Administrator\", \n    \"name\": \"cce4b06fec\", \n    \"owner\": \"Administrator\", \n    \"parent\": \"lewin.villar@gmail.com\", \n    \"parentfield\": \"roles\", \n    \"parenttype\": \"User\", \n    \"role\": \"Knowledge Base Contributor\"\n   }\n  ], \n  [\n   \"roles\", \n   {\n    \"creation\": \"2017-09-01 12:38:02.964693\", \n    \"docstatus\": 0, \n    \"doctype\": \"Has Role\", \n    \"idx\": 6, \n    \"modified\": \"2017-09-01 12:38:03.412982\", \n    \"modified_by\": \"Administrator\", \n    \"name\": \"e5a6e14bb2\", \n    \"owner\": \"Administrator\", \n    \"parent\": \"lewin.villar@gmail.com\", \n    \"parentfield\": \"roles\", \n    \"parenttype\": \"User\", \n    \"role\": \"Knowledge Base Editor\"\n   }\n  ], \n  [\n   \"roles\", \n   {\n    \"creation\": \"2017-09-01 12:38:02.964693\", \n    \"docstatus\": 0, \n    \"doctype\": \"Has Role\", \n    \"idx\": 7, \n    \"modified\": \"2017-09-01 12:38:03.412982\", \n    \"modified_by\": \"Administrator\", \n    \"name\": \"ab46dc9e5a\", \n    \"owner\": \"Administrator\", \n    \"parent\": \"lewin.villar@gmail.com\", \n    \"parentfield\": \"roles\", \n    \"parenttype\": \"User\", \n    \"role\": \"Maintenance Manager\"\n   }\n  ], \n  [\n   \"roles\", \n   {\n    \"creation\": \"2017-09-01 12:38:02.964693\", \n    \"docstatus\": 0, \n    \"doctype\": \"Has Role\", \n    \"idx\": 8, \n    \"modified\": \"2017-09-01 12:38:03.412982\", \n    \"modified_by\": \"Administrator\", \n    \"name\": \"d01196467d\", \n    \"owner\": \"Administrator\", \n    \"parent\": \"lewin.villar@gmail.com\", \n    \"parentfield\": \"roles\", \n    \"parenttype\": \"User\", \n    \"role\": \"Maintenance User\"\n   }\n  ], \n  [\n   \"roles\", \n   {\n    \"creation\": \"2017-09-01 12:38:02.964693\", \n    \"docstatus\": 0, \n    \"doctype\": \"Has Role\", \n    \"idx\": 9, \n    \"modified\": \"2017-09-01 12:38:03.412982\", \n    \"modified_by\": \"Administrator\", \n    \"name\": \"69b8b80f28\", \n    \"owner\": \"Administrator\", \n    \"parent\": \"lewin.villar@gmail.com\", \n    \"parentfield\": \"roles\", \n    \"parenttype\": \"User\", \n    \"role\": \"Newsletter Manager\"\n   }\n  ], \n  [\n   \"roles\", \n   {\n    \"creation\": \"2017-09-01 12:38:02.964693\", \n    \"docstatus\": 0, \n    \"doctype\": \"Has Role\", \n    \"idx\": 10, \n    \"modified\": \"2017-09-01 12:38:03.412982\", \n    \"modified_by\": \"Administrator\", \n    \"name\": \"8a5f73b263\", \n    \"owner\": \"Administrator\", \n    \"parent\": \"lewin.villar@gmail.com\", \n    \"parentfield\": \"roles\", \n    \"parenttype\": \"User\", \n    \"role\": \"Purchase Manager\"\n   }\n  ], \n  [\n   \"roles\", \n   {\n    \"creation\": \"2017-09-01 12:38:02.964693\", \n    \"docstatus\": 0, \n    \"doctype\": \"Has Role\", \n    \"idx\": 11, \n    \"modified\": \"2017-09-01 12:38:03.412982\", \n    \"modified_by\": \"Administrator\", \n    \"name\": \"197b721dfd\", \n    \"owner\": \"Administrator\", \n    \"parent\": \"lewin.villar@gmail.com\", \n    \"parentfield\": \"roles\", \n    \"parenttype\": \"User\", \n    \"role\": \"Purchase Master Manager\"\n   }\n  ], \n  [\n   \"roles\", \n   {\n    \"creation\": \"2017-09-01 12:38:02.964693\", \n    \"docstatus\": 0, \n    \"doctype\": \"Has Role\", \n    \"idx\": 12, \n    \"modified\": \"2017-09-01 12:38:03.412982\", \n    \"modified_by\": \"Administrator\", \n    \"name\": \"8d34519930\", \n    \"owner\": \"Administrator\", \n    \"parent\": \"lewin.villar@gmail.com\", \n    \"parentfield\": \"roles\", \n    \"parenttype\": \"User\", \n    \"role\": \"Purchase User\"\n   }\n  ], \n  [\n   \"roles\", \n   {\n    \"creation\": \"2017-09-01 12:38:02.964693\", \n    \"docstatus\": 0, \n    \"doctype\": \"Has Role\", \n    \"idx\": 13, \n    \"modified\": \"2017-09-01 12:38:03.412982\", \n    \"modified_by\": \"Administrator\", \n    \"name\": \"431bc9d7fe\", \n    \"owner\": \"Administrator\", \n    \"parent\": \"lewin.villar@gmail.com\", \n    \"parentfield\": \"roles\", \n    \"parenttype\": \"User\", \n    \"role\": \"Report Manager\"\n   }\n  ], \n  [\n   \"roles\", \n   {\n    \"creation\": \"2017-09-01 12:38:02.964693\", \n    \"docstatus\": 0, \n    \"doctype\": \"Has Role\", \n    \"idx\": 14, \n    \"modified\": \"2017-09-01 12:38:03.412982\", \n    \"modified_by\": \"Administrator\", \n    \"name\": \"f6b7fd598c\", \n    \"owner\": \"Administrator\", \n    \"parent\": \"lewin.villar@gmail.com\", \n    \"parentfield\": \"roles\", \n    \"parenttype\": \"User\", \n    \"role\": \"Sales Manager\"\n   }\n  ], \n  [\n   \"roles\", \n   {\n    \"creation\": \"2017-09-01 12:38:02.964693\", \n    \"docstatus\": 0, \n    \"doctype\": \"Has Role\", \n    \"idx\": 15, \n    \"modified\": \"2017-09-01 12:38:03.412982\", \n    \"modified_by\": \"Administrator\", \n    \"name\": \"d7b9fd5d58\", \n    \"owner\": \"Administrator\", \n    \"parent\": \"lewin.villar@gmail.com\", \n    \"parentfield\": \"roles\", \n    \"parenttype\": \"User\", \n    \"role\": \"Sales Master Manager\"\n   }\n  ], \n  [\n   \"roles\", \n   {\n    \"creation\": \"2017-09-01 12:38:02.964693\", \n    \"docstatus\": 0, \n    \"doctype\": \"Has Role\", \n    \"idx\": 16, \n    \"modified\": \"2017-09-01 12:38:03.412982\", \n    \"modified_by\": \"Administrator\", \n    \"name\": \"2211e6e816\", \n    \"owner\": \"Administrator\", \n    \"parent\": \"lewin.villar@gmail.com\", \n    \"parentfield\": \"roles\", \n    \"parenttype\": \"User\", \n    \"role\": \"Sales User\"\n   }\n  ], \n  [\n   \"roles\", \n   {\n    \"creation\": \"2017-09-01 12:38:02.964693\", \n    \"docstatus\": 0, \n    \"doctype\": \"Has Role\", \n    \"idx\": 18, \n    \"modified\": \"2017-09-01 12:38:03.412982\", \n    \"modified_by\": \"Administrator\", \n    \"name\": \"6fc8f03f26\", \n    \"owner\": \"Administrator\", \n    \"parent\": \"lewin.villar@gmail.com\", \n    \"parentfield\": \"roles\", \n    \"parenttype\": \"User\", \n    \"role\": \"Website Manager\"\n   }\n  ]\n ], \n \"changed\": [], \n \"removed\": [], \n \"row_changed\": []\n}',NULL),('f70ac7732c','2017-09-01 12:38:04.257364','2017-09-01 12:38:04.257364','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'Page',NULL,'setup-wizard','{\n \"added\": [\n  [\n   \"roles\", \n   {\n    \"creation\": \"2013-10-04 13:49:33\", \n    \"docstatus\": 0, \n    \"doctype\": \"Has Role\", \n    \"idx\": 1, \n    \"modified\": \"2017-09-01 12:38:04.116246\", \n    \"modified_by\": \"Administrator\", \n    \"name\": \"49efb32c5d\", \n    \"owner\": \"Administrator\", \n    \"parent\": \"setup-wizard\", \n    \"parentfield\": \"roles\", \n    \"parenttype\": \"Page\", \n    \"role\": \"Administrator\"\n   }\n  ]\n ], \n \"changed\": [], \n \"removed\": [\n  [\n   \"roles\", \n   {\n    \"creation\": \"2013-10-04 13:49:33\", \n    \"docstatus\": 0, \n    \"doctype\": \"Has Role\", \n    \"idx\": 1, \n    \"modified\": \"2017-09-01 22:00:06.042467\", \n    \"modified_by\": \"Administrator\", \n    \"name\": \"cb80c264b5\", \n    \"owner\": \"Administrator\", \n    \"parent\": \"setup-wizard\", \n    \"parentfield\": \"roles\", \n    \"parenttype\": \"Page\", \n    \"role\": \"System Manager\"\n   }\n  ]\n ], \n \"row_changed\": []\n}',NULL),('fc76fcc3c9','2017-09-01 16:24:38.121647','2017-09-01 16:24:38.121647','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,NULL,'Empresa',NULL,'ARS-000001','{\n \"added\": [], \n \"changed\": [], \n \"removed\": [], \n \"row_changed\": [\n  [\n   \"telefonos\", \n   0, \n   \"7a72a8bc5d\", \n   [\n    [\n     \"telefono\", \n     \"8093333822\", \n     \"(809) 333-3822\"\n    ]\n   ]\n  ]\n ]\n}',NULL);
/*!40000 ALTER TABLE `tabVersion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabWeb Form`
--

DROP TABLE IF EXISTS `tabWeb Form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabWeb Form` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT '0',
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT '0',
  `allow_edit` int(1) NOT NULL DEFAULT '0',
  `amount_based_on_field` int(1) NOT NULL DEFAULT '0',
  `amount_field` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `module` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accept_payment` int(1) NOT NULL DEFAULT '0',
  `payment_button_help` text COLLATE utf8mb4_unicode_ci,
  `title` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `breadcrumbs` longtext COLLATE utf8mb4_unicode_ci,
  `login_required` int(1) NOT NULL DEFAULT '0',
  `allow_delete` int(1) NOT NULL DEFAULT '0',
  `max_attachment_size` int(11) NOT NULL DEFAULT '0',
  `show_sidebar` int(1) NOT NULL DEFAULT '1',
  `payment_button_label` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT 'Buy Now',
  `success_message` text COLLATE utf8mb4_unicode_ci,
  `introduction_text` longtext COLLATE utf8mb4_unicode_ci,
  `_liked_by` text COLLATE utf8mb4_unicode_ci,
  `allow_multiple` int(1) NOT NULL DEFAULT '0',
  `_assign` text COLLATE utf8mb4_unicode_ci,
  `allow_print` int(1) NOT NULL DEFAULT '0',
  `allow_incomplete` int(1) NOT NULL DEFAULT '0',
  `is_standard` int(1) NOT NULL DEFAULT '0',
  `_comments` text COLLATE utf8mb4_unicode_ci,
  `web_page_link_text` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_user_tags` text COLLATE utf8mb4_unicode_ci,
  `doc_type` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `allow_comments` int(1) NOT NULL DEFAULT '0',
  `print_format` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `route` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(18,6) NOT NULL DEFAULT '0.000000',
  `success_url` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published` int(1) NOT NULL DEFAULT '0',
  `payment_gateway` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  UNIQUE KEY `route` (`route`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabWeb Form`
--

LOCK TABLES `tabWeb Form` WRITE;
/*!40000 ALTER TABLE `tabWeb Form` DISABLE KEYS */;
INSERT INTO `tabWeb Form` VALUES ('edit-profile','2016-09-19 05:16:59.242754','2017-07-24 12:14:04.039284','Administrator','Administrator',0,NULL,NULL,NULL,0,1,0,NULL,'Core',NULL,0,NULL,'Update Profile','[{\"title\": _(\"My Account\"), \"route\": \"me\"}]',1,0,0,1,NULL,'Profile updated successfully.','',NULL,0,NULL,0,0,1,NULL,NULL,NULL,'User',0,NULL,'update-profile',0.000000,'/me',1,NULL);
/*!40000 ALTER TABLE `tabWeb Form` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabWeb Form Field`
--

DROP TABLE IF EXISTS `tabWeb Form Field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabWeb Form Field` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT '0',
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT '0',
  `read_only` int(1) NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `default` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_value` int(11) NOT NULL DEFAULT '0',
  `label` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_length` int(11) NOT NULL DEFAULT '0',
  `fieldname` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fieldtype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reqd` int(1) NOT NULL DEFAULT '0',
  `hidden` int(1) NOT NULL DEFAULT '0',
  `options` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabWeb Form Field`
--

LOCK TABLES `tabWeb Form Field` WRITE;
/*!40000 ALTER TABLE `tabWeb Form Field` DISABLE KEYS */;
INSERT INTO `tabWeb Form Field` VALUES ('085580d9df','2016-09-19 05:16:59.242754','2017-09-01 21:59:59.586517','Administrator','Administrator',0,'edit-profile','web_form_fields','Web Form',8,0,'',NULL,0,'Language',0,'language','Link',0,0,'Language'),('26fa637f46','2016-09-19 05:16:59.242754','2017-09-01 21:59:59.586517','Administrator','Administrator',0,'edit-profile','web_form_fields','Web Form',5,0,NULL,NULL,0,'More Information',0,NULL,'Section Break',0,0,NULL),('2872d1f457','2016-09-19 05:16:59.242754','2017-09-01 21:59:59.586517','Administrator','Administrator',0,'edit-profile','web_form_fields','Web Form',1,0,NULL,NULL,0,'First Name',0,'first_name','Data',1,0,NULL),('9bc4729f66','2016-09-19 05:16:59.242754','2017-09-01 21:59:59.586517','Administrator','Administrator',0,'edit-profile','web_form_fields','Web Form',4,0,'',NULL,0,'User Image',0,'user_image','Attach',0,0,NULL),('9e84e158a3','2016-09-19 05:16:59.242754','2017-09-01 21:59:59.586517','Administrator','Administrator',0,'edit-profile','web_form_fields','Web Form',7,0,NULL,NULL,0,'Mobile Number',0,'mobile_no','Data',0,0,NULL),('a0fd37f33d','2016-09-19 05:16:59.242754','2017-09-01 21:59:59.586517','Administrator','Administrator',0,'edit-profile','web_form_fields','Web Form',6,0,NULL,NULL,0,'Phone',0,'phone','Data',0,0,NULL),('b83c84838e','2016-09-19 05:16:59.242754','2017-09-01 21:59:59.586517','Administrator','Administrator',0,'edit-profile','web_form_fields','Web Form',2,0,NULL,NULL,0,'Middle Name (Optional)',0,'middle_name','Data',0,0,NULL),('cd779ab3a9','2016-09-19 05:16:59.242754','2017-09-01 21:59:59.586517','Administrator','Administrator',0,'edit-profile','web_form_fields','Web Form',3,0,NULL,NULL,0,'Last Name',0,'last_name','Data',0,0,NULL);
/*!40000 ALTER TABLE `tabWeb Form Field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabWeb Page`
--

DROP TABLE IF EXISTS `tabWeb Page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabWeb Page` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT '0',
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT '0',
  `insert_style` int(1) NOT NULL DEFAULT '0',
  `header` text COLLATE utf8mb4_unicode_ci,
  `_liked_by` text COLLATE utf8mb4_unicode_ci,
  `title` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `breadcrumbs` longtext COLLATE utf8mb4_unicode_ci,
  `text_align` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_sidebar` int(1) NOT NULL DEFAULT '0',
  `enable_comments` int(1) NOT NULL DEFAULT '0',
  `css` longtext COLLATE utf8mb4_unicode_ci,
  `_assign` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `insert_code` int(1) NOT NULL DEFAULT '0',
  `javascript` longtext COLLATE utf8mb4_unicode_ci,
  `slideshow` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_comments` text COLLATE utf8mb4_unicode_ci,
  `show_title` int(1) NOT NULL DEFAULT '1',
  `_user_tags` text COLLATE utf8mb4_unicode_ci,
  `main_section` longtext COLLATE utf8mb4_unicode_ci,
  `route` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published` int(1) NOT NULL DEFAULT '0',
  `website_sidebar` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  UNIQUE KEY `route` (`route`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabWeb Page`
--

LOCK TABLES `tabWeb Page` WRITE;
/*!40000 ALTER TABLE `tabWeb Page` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabWeb Page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabWebsite Sidebar`
--

DROP TABLE IF EXISTS `tabWebsite Sidebar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabWebsite Sidebar` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT '0',
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT '0',
  `_liked_by` text COLLATE utf8mb4_unicode_ci,
  `title` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_comments` text COLLATE utf8mb4_unicode_ci,
  `_assign` text COLLATE utf8mb4_unicode_ci,
  `_user_tags` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabWebsite Sidebar`
--

LOCK TABLES `tabWebsite Sidebar` WRITE;
/*!40000 ALTER TABLE `tabWebsite Sidebar` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabWebsite Sidebar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabWebsite Sidebar Item`
--

DROP TABLE IF EXISTS `tabWebsite Sidebar Item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabWebsite Sidebar Item` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT '0',
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT '0',
  `route` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabWebsite Sidebar Item`
--

LOCK TABLES `tabWebsite Sidebar Item` WRITE;
/*!40000 ALTER TABLE `tabWebsite Sidebar Item` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabWebsite Sidebar Item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabWebsite Slideshow`
--

DROP TABLE IF EXISTS `tabWebsite Slideshow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabWebsite Slideshow` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT '0',
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT '0',
  `_liked_by` text COLLATE utf8mb4_unicode_ci,
  `slideshow_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_comments` text COLLATE utf8mb4_unicode_ci,
  `_assign` text COLLATE utf8mb4_unicode_ci,
  `header` longtext COLLATE utf8mb4_unicode_ci,
  `_user_tags` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabWebsite Slideshow`
--

LOCK TABLES `tabWebsite Slideshow` WRITE;
/*!40000 ALTER TABLE `tabWebsite Slideshow` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabWebsite Slideshow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabWebsite Slideshow Item`
--

DROP TABLE IF EXISTS `tabWebsite Slideshow Item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabWebsite Slideshow Item` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT '0',
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT '0',
  `image` text COLLATE utf8mb4_unicode_ci,
  `heading` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabWebsite Slideshow Item`
--

LOCK TABLES `tabWebsite Slideshow Item` WRITE;
/*!40000 ALTER TABLE `tabWebsite Slideshow Item` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabWebsite Slideshow Item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabWebsite Theme`
--

DROP TABLE IF EXISTS `tabWebsite Theme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabWebsite Theme` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT '0',
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT '0',
  `heading_style` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bootstrap` longtext COLLATE utf8mb4_unicode_ci,
  `link_color` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `module` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT 'Website',
  `footer_text_color` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `heading_webfont` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `background_color` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apply_style` int(1) NOT NULL DEFAULT '1',
  `background_image` text COLLATE utf8mb4_unicode_ci,
  `top_bar_text_color` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_comments` text COLLATE utf8mb4_unicode_ci,
  `apply_text_styles` int(1) NOT NULL DEFAULT '0',
  `custom` int(1) NOT NULL DEFAULT '1',
  `theme` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_color` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css` longtext COLLATE utf8mb4_unicode_ci,
  `_liked_by` text COLLATE utf8mb4_unicode_ci,
  `text_webfont` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_assign` text COLLATE utf8mb4_unicode_ci,
  `text_color` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `js` longtext COLLATE utf8mb4_unicode_ci,
  `_user_tags` text COLLATE utf8mb4_unicode_ci,
  `font_size` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `top_bar_color` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `theme` (`theme`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabWebsite Theme`
--

LOCK TABLES `tabWebsite Theme` WRITE;
/*!40000 ALTER TABLE `tabWebsite Theme` DISABLE KEYS */;
INSERT INTO `tabWebsite Theme` VALUES ('Standard','2015-02-19 13:37:33.925909','2016-12-29 05:40:17.289226','Administrator','Administrator',0,NULL,NULL,NULL,26,'',NULL,'','Website','','',NULL,0,NULL,'',NULL,0,0,'Standard','','.navbar-header {\n  display: none;\n}',NULL,'',NULL,'',NULL,NULL,'14px','');
/*!40000 ALTER TABLE `tabWebsite Theme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabWorkflow`
--

DROP TABLE IF EXISTS `tabWorkflow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabWorkflow` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT '0',
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT '0',
  `override_status` int(1) NOT NULL DEFAULT '0',
  `document_type` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `workflow_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_assign` text COLLATE utf8mb4_unicode_ci,
  `is_active` int(1) NOT NULL DEFAULT '0',
  `_liked_by` text COLLATE utf8mb4_unicode_ci,
  `workflow_state_field` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT 'workflow_state',
  `_user_tags` text COLLATE utf8mb4_unicode_ci,
  `_comments` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabWorkflow`
--

LOCK TABLES `tabWorkflow` WRITE;
/*!40000 ALTER TABLE `tabWorkflow` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabWorkflow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabWorkflow Action`
--

DROP TABLE IF EXISTS `tabWorkflow Action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabWorkflow Action` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT '0',
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT '0',
  `_comments` text COLLATE utf8mb4_unicode_ci,
  `workflow_action_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_assign` text COLLATE utf8mb4_unicode_ci,
  `_user_tags` text COLLATE utf8mb4_unicode_ci,
  `_liked_by` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabWorkflow Action`
--

LOCK TABLES `tabWorkflow Action` WRITE;
/*!40000 ALTER TABLE `tabWorkflow Action` DISABLE KEYS */;
INSERT INTO `tabWorkflow Action` VALUES ('Approve','2017-09-01 22:00:13.959725','2017-09-01 22:00:13.959725','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,'Approve',NULL,NULL,NULL),('Reject','2017-09-01 22:00:13.965451','2017-09-01 22:00:13.965451','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,'Reject',NULL,NULL,NULL),('Review','2017-09-01 22:00:13.970925','2017-09-01 22:00:13.970925','Administrator','Administrator',0,NULL,NULL,NULL,0,NULL,'Review',NULL,NULL,NULL);
/*!40000 ALTER TABLE `tabWorkflow Action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabWorkflow Document State`
--

DROP TABLE IF EXISTS `tabWorkflow Document State`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabWorkflow Document State` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT '0',
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT '0',
  `allow_edit` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `update_field` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `update_value` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `doc_status` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabWorkflow Document State`
--

LOCK TABLES `tabWorkflow Document State` WRITE;
/*!40000 ALTER TABLE `tabWorkflow Document State` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabWorkflow Document State` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabWorkflow State`
--

DROP TABLE IF EXISTS `tabWorkflow State`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabWorkflow State` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT '0',
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT '0',
  `style` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_liked_by` text COLLATE utf8mb4_unicode_ci,
  `_user_tags` text COLLATE utf8mb4_unicode_ci,
  `_assign` text COLLATE utf8mb4_unicode_ci,
  `_comments` text COLLATE utf8mb4_unicode_ci,
  `workflow_state_name` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabWorkflow State`
--

LOCK TABLES `tabWorkflow State` WRITE;
/*!40000 ALTER TABLE `tabWorkflow State` DISABLE KEYS */;
INSERT INTO `tabWorkflow State` VALUES ('Approved','2017-09-01 22:00:13.921175','2017-09-01 22:00:13.921175','Administrator','Administrator',0,NULL,NULL,NULL,0,'Success',NULL,NULL,NULL,NULL,'Approved','ok-sign'),('Pending','2017-09-01 22:00:13.916930','2017-09-01 22:00:13.916930','Administrator','Administrator',0,NULL,NULL,NULL,0,'',NULL,NULL,NULL,NULL,'Pending','question-sign'),('Rejected','2017-09-01 22:00:13.926836','2017-09-01 22:00:13.926836','Administrator','Administrator',0,NULL,NULL,NULL,0,'Danger',NULL,NULL,NULL,NULL,'Rejected','remove');
/*!40000 ALTER TABLE `tabWorkflow State` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabWorkflow Transition`
--

DROP TABLE IF EXISTS `tabWorkflow Transition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabWorkflow Transition` (
  `name` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `modified_by` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docstatus` int(1) NOT NULL DEFAULT '0',
  `parent` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentfield` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parenttype` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idx` int(8) NOT NULL DEFAULT '0',
  `action` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `next_state` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `allowed` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabWorkflow Transition`
--

LOCK TABLES `tabWorkflow Transition` WRITE;
/*!40000 ALTER TABLE `tabWorkflow Transition` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabWorkflow Transition` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-09-01 18:01:04
