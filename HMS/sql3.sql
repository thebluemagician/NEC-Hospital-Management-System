-- MySQL dump 10.13  Distrib 5.5.61, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: hms
-- ------------------------------------------------------
-- Server version	5.5.61-0ubuntu0.14.04.1

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
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `boards_doctor`
--

DROP TABLE IF EXISTS `boards_doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `boards_doctor` (
  `id` int(10) DEFAULT NULL,
  `did` int(11) NOT NULL AUTO_INCREMENT,
  `d_name` varchar(50) DEFAULT NULL,
  `d_address` varchar(80) DEFAULT NULL,
  `d_email` varchar(60) DEFAULT NULL,
  `d_specialization` varchar(60) DEFAULT NULL,
  `d_department` varchar(60) DEFAULT NULL,
  `d_slot` varchar(1000) DEFAULT NULL,
  `d_fee` int(11) DEFAULT NULL,
  `flag` int(11) DEFAULT NULL,
  `datecreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`did`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boards_doctor`
--

LOCK TABLES `boards_doctor` WRITE;
/*!40000 ALTER TABLE `boards_doctor` DISABLE KEYS */;
INSERT INTO `boards_doctor` VALUES (NULL,2,'adil','Noida','admin@admin.com','md','cardiology','{\"0\":[],\"1\":[],\"2\":[{\"jQuery1124039750544371346974\":32},{\"jQuery1124039750544371346974\":33}],\"3\":[],\"4\":[{\"jQuery1124039750544371346974\":41}],\"5\":[],\"6\":[]}',100,1,'2018-09-16 10:13:01'),(NULL,3,'adil','Noida','sg@amity.edu','md','cardiology','{\"0\":[],\"1\":[{\"jQuery1124022672108223532583\":27},{\"jQuery1124022672108223532583\":28},{\"jQuery1124022672108223532583\":29},{\"jQuery1124022672108223532583\":30}],\"2\":[{\"jQuery1124022672108223532583\":33}],\"3\":[{\"jQuery1124022672108223532583\":36}],\"4\":[],\"5\":[{\"jQuery1124022672108223532583\":43}],\"6\":[]}',100,1,'2018-09-16 10:12:57'),(NULL,4,'1sg','noida','1ssgupta@amity.edu','MBBS','ENT','{\"0\":[],\"1\":[],\"2\":[],\"3\":[{\"jQuery112405569368371281325\":35},{\"jQuery112405569368371281325\":36},{\"jQuery112405569368371281325\":37},{\"jQuery112405569368371281325\":38}],\"4\":[{\"jQuery112405569368371281325\":39},{\"jQuery112405569368371281325\":40}],\"5\":[{\"jQuery112405569368371281325\":45}],\"6\":[]}',1000,1,'2018-09-16 01:59:17');
/*!40000 ALTER TABLE `boards_doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `boards_login`
--

DROP TABLE IF EXISTS `boards_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `boards_login` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(60) DEFAULT NULL,
  `user_pass` varchar(20) NOT NULL,
  `datecreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_category` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boards_login`
--

LOCK TABLES `boards_login` WRITE;
/*!40000 ALTER TABLE `boards_login` DISABLE KEYS */;
INSERT INTO `boards_login` VALUES (1,'admin@admin.com','varR6SGggZTseNR','2018-09-15 10:12:01','1'),(2,'blue@admin.com','varR6SGggZTseNR','2018-09-15 10:12:21','0'),(3,'test@admin.com','varR6SGggZTseNR','2018-09-15 10:12:23','0'),(4,'test1@admin.com','request.POST and \"lo','2018-09-15 10:12:24','0'),(5,'test2@admin.com','validators=[MaxLengt','2018-09-15 10:12:26','0'),(7,'admin@ad.com','varR6SGggZTseNR','2018-09-15 10:12:09','1'),(8,'info@patientprimus.c','Th9GfJE9T8g8KBj','2018-09-15 10:12:29','0'),(9,'superadmin@admin.com','varR6SGggZTseNR','2018-09-15 10:12:05','1'),(10,'ssgupta@amity.edu','azazazaz','2018-09-15 10:12:54','0'),(11,'contact@tedconsult.c','azazazaz','2018-09-15 10:13:02','1'),(12,'contact@tedconsult.com','azazazaz','2018-09-15 10:13:10','0'),(13,'adil.md70@gmail.com','azazazaz','2018-09-13 20:06:04','0'),(14,'mdadil.md70@gmail.com','azsxdcazsxdc','2018-09-13 19:36:07','0'),(15,'1ssgupta@amity.edu','qazwsxqaz','2018-09-14 13:30:47','1'),(16,'sg@amity.edu','qazwsxedc','2018-09-15 07:22:35','1'),(17,NULL,'','2018-09-15 10:10:50','1');
/*!40000 ALTER TABLE `boards_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `boards_patient`
--

DROP TABLE IF EXISTS `boards_patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `boards_patient` (
  `id` int(10) DEFAULT NULL,
  `pid` int(10) NOT NULL AUTO_INCREMENT,
  `p_name` varchar(50) NOT NULL,
  `p_age` int(2) DEFAULT NULL,
  `p_gender` varchar(6) DEFAULT NULL,
  `p_address` varchar(80) DEFAULT NULL,
  `p_email` varchar(60) DEFAULT NULL,
  `datecreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `flag` int(2) DEFAULT NULL,
  PRIMARY KEY (`pid`),
  UNIQUE KEY `p_email` (`p_email`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boards_patient`
--

LOCK TABLES `boards_patient` WRITE;
/*!40000 ALTER TABLE `boards_patient` DISABLE KEYS */;
INSERT INTO `boards_patient` VALUES (NULL,14,'md',91,'Male','bi','mdadil.md70@gmail.com','2018-09-15 03:41:52',1),(NULL,19,'S GUpta',56,'Female','AIIT','ssgupta@amity.edu','2018-09-16 01:58:29',1),(NULL,20,'adil',12,'Male','Ansh Bhawan, Raipur Noida Sector 126','adil.md70@gmail.com','2018-09-16 02:48:13',1);
/*!40000 ALTER TABLE `boards_patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(9,'app1','user'),(2,'auth','group'),(4,'auth','permission'),(3,'auth','user'),(5,'contenttypes','contenttype'),(7,'login','externaluser'),(8,'login','internaluser'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2018-09-11 18:39:53'),(2,'auth','0001_initial','2018-09-11 18:39:57'),(3,'admin','0001_initial','2018-09-11 18:39:58'),(4,'admin','0002_logentry_remove_auto_add','2018-09-11 18:39:58'),(5,'contenttypes','0002_remove_content_type_name','2018-09-11 18:39:58'),(6,'auth','0002_alter_permission_name_max_length','2018-09-11 18:39:58'),(7,'auth','0003_alter_user_email_max_length','2018-09-11 18:39:59'),(8,'auth','0004_alter_user_username_opts','2018-09-11 18:39:59'),(9,'auth','0005_alter_user_last_login_null','2018-09-11 18:39:59'),(10,'auth','0006_require_contenttypes_0002','2018-09-11 18:39:59'),(11,'auth','0007_alter_validators_add_error_messages','2018-09-11 18:39:59'),(12,'auth','0008_alter_user_username_max_length','2018-09-11 18:40:00'),(13,'auth','0009_alter_user_last_name_max_length','2018-09-11 18:40:00'),(14,'sessions','0001_initial','2018-09-11 18:40:00'),(15,'login','0001_initial','2018-09-12 15:32:07'),(16,'login','0002_auto_20160913_0001','2018-09-12 15:32:07'),(17,'app1','0001_initial','2018-09-12 15:38:08'),(18,'app1','0002_auto_20170310_0746','2018-09-12 15:38:08');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hms_patient_records`
--

DROP TABLE IF EXISTS `hms_patient_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hms_patient_records` (
  `id` int(10) DEFAULT NULL,
  `prid` int(10) NOT NULL,
  `pid` int(10) DEFAULT NULL,
  `did` varchar(200) DEFAULT NULL,
  `room_no` varchar(200) DEFAULT NULL,
  `date_of_visit` varchar(200) DEFAULT NULL,
  `tests` varchar(300) DEFAULT NULL,
  `medicines` varchar(200) DEFAULT NULL,
  `remarks` varchar(200) DEFAULT NULL,
  `checkupdate` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`prid`),
  KEY `pid` (`pid`),
  CONSTRAINT `hms_patient_records_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `boards_patient` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hms_patient_records`
--

LOCK TABLES `hms_patient_records` WRITE;
/*!40000 ALTER TABLE `hms_patient_records` DISABLE KEYS */;
/*!40000 ALTER TABLE `hms_patient_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_externaluser`
--

DROP TABLE IF EXISTS `login_externaluser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login_externaluser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `ssn` int(11) NOT NULL,
  `test` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `session_key` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `login_externaluser_user_id_157d5327_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_externaluser`
--

LOCK TABLES `login_externaluser` WRITE;
/*!40000 ALTER TABLE `login_externaluser` DISABLE KEYS */;
/*!40000 ALTER TABLE `login_externaluser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_internaluser`
--

DROP TABLE IF EXISTS `login_internaluser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login_internaluser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `ssn` int(11) NOT NULL,
  `test` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `session_key` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `login_internaluser_user_id_5d59a885_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_internaluser`
--

LOCK TABLES `login_internaluser` WRITE;
/*!40000 ALTER TABLE `login_internaluser` DISABLE KEYS */;
/*!40000 ALTER TABLE `login_internaluser` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-09-16 17:41:31
