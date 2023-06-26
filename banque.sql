CREATE DATABASE  IF NOT EXISTS `banque` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `banque`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: banque
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clients` (
  `idClient` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(45) DEFAULT NULL,
  `prenom` varchar(45) DEFAULT NULL,
  `adresse` varchar(45) DEFAULT NULL,
  `cp` int DEFAULT NULL,
  `ville` varchar(45) DEFAULT NULL,
  `telFixe` int DEFAULT NULL,
  `telPortable` int DEFAULT NULL,
  `clientscol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idClient`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,'Patrice','Bourdon','3 Chemin de Roquerousse',28094,'Puyfeux',214452600,625611475,NULL),(2,'Ludovic','Belliard','79 Route de Toroc',1957,'Conpuygnuse',364629347,671251159,NULL),(3,'Sylvain','Guilloux','83 Rue de Marlaine',49846,'Bopord',405804974,780733778,NULL),(4,'Jean-Claude','Ville','26 Avenue de Malecour',74019,'Mivran',100603264,784908108,NULL),(5,'Patrick','Louvel','78 Ruelle de Apremotte',6094,'Magne',167052495,652969239,NULL),(6,'Jean-Claude','Monier','34 Impasse de Eauclair',15323,'Monmelame',172853516,683946209,NULL),(7,'Arnaud','Garreau','12 Boulevard de Puycourbe',3074,'Puylanbont',218112406,674232010,NULL),(8,'Alain','Champagne','76 Chemin de Vertfond',70722,'Quedy',238735578,761472112,NULL),(9,'Gilles','Chateau','47 Route de Château-rouge',56035,'Mabanches',337478736,649762453,NULL),(10,'Gérard','Lim','70 Rue de Rochefière',25151,'Tevône',284961948,747523817,NULL),(11,'Eric','Rigaud','33 Avenue de Talroc',9322,'Peyfargues',116509039,664964009,NULL),(12,'Mathieu','Vignaud','61 Ruelle de Pré-de-tourbe',55442,'Canpent',379643209,640468472,NULL),(13,'Henri','Baud','29 Impasse de Bourgblanc',84259,'Acangalle',424748852,725712077,NULL),(14,'Jean-Michel','Marot','14 Boulevard de Folséjour',74392,'Dieu',275337381,776994059,NULL),(15,'Richard','Besancon','5 Chemin de Rochedroite',59906,'Lanvame',371151948,775237736,NULL),(16,'Sébastien','Grange','58 Route de Folbourg',59854,'Autuse',114906254,611953912,NULL),(17,'Denis','Giry','3 Rue de Roncevieille',79167,'Duire',492547999,677317529,NULL),(18,'Nicolas','Collard','23 Avenue de Vieilfort',84535,'Brilac',303378490,734772203,NULL),(19,'Franck','Didier','37 Ruelle de Castel-sur-cerf',59793,'Lanbavrois',420887366,741644317,NULL),(20,'Thierry','Castelain','43 Impasse de Pontfou',86106,'Benur',457360896,677729555,NULL),(21,'Pierre','Grignon','21 Boulevard de Clairecombe',28094,'Puyfeux',139797841,689891524,NULL),(22,'Jean-François','Larrieu','52 Chemin de Froidune',1957,'Conpuygnuse',253429055,693188140,NULL),(23,'Franck','Giroud','14 Route de Lai-de-embrum',49846,'Bopord',487475595,697152161,NULL),(24,'Jean-Marc','Fortier','44 Rue de Clairemuraille',74019,'Mivran',433557713,768144076,NULL),(25,'Louis','Bouchez','51 Avenue de Marpère',6094,'Magne',363963654,766585605,NULL),(26,'Laurent','Vernay','47 Ruelle de Franclieu',15323,'Monmelame',381423728,792806845,NULL),(27,'Patrick','Blondeau','70 Impasse de Bellesdouves',3074,'Puylanbont',266729453,706833254,NULL),(28,'Hervé','Parent','79 Boulevard de Moulincourbe',70722,'Quedy',475897589,777083800,NULL),(29,'Ludovic','Blanc','26 Chemin de Roqueblanche',56035,'Mabanches',484768593,689018765,NULL),(30,'Jonathan','Merlet','64 Route de Pierreroyale',25151,'Tevône',376214476,631096545,NULL),(31,'Jean-François','Charron','64 Rue de Nobleville',9322,'Peyfargues',350657450,730467639,NULL),(32,'Laura','Andre','1 Avenue de Grandetour',55442,'Canpent',416844030,764585119,NULL),(33,'Ambre','Viard','93 Ruelle de Clairséjour',84259,'Acangalle',251141967,660791214,NULL),(34,'Charlotte','Bayle','4 Impasse de Mont-sur-croc',74392,'Dieu',265454745,746473186,NULL),(35,'Fanny','Cochard','41 Boulevard de Folfort',59906,'Lanvame',210045468,602186657,NULL),(36,'Solene','Caillet','9 Chemin de Castelfeu',59854,'Autuse',114114335,761287614,NULL),(37,'Elise','Lhuillier','34 Route de Valpère',79167,'Duire',490725967,745541807,NULL),(38,'Amandine','Renard','22 Rue de Malemuraille',84535,'Brilac',219225431,796238335,NULL),(39,'Emma','Colas','67 Avenue de Bourgestroit',59793,'Lanbavrois',179484536,678744264,NULL),(40,'Melissa','Delaporte','31 Ruelle de Morneforge',86106,'Benur',201023545,624707220,NULL),(41,'Elise','Guerineau','3 Impasse de Montcroc',28094,'Puyfeux',100606612,725617774,NULL),(42,'Sara','Baptiste','59 Boulevard de Mermorte',1957,'Conpuygnuse',472263438,680108247,NULL),(43,'Agathe','Colson','6 Chemin de Forgerouge',49846,'Bopord',404336837,643260296,NULL),(44,'Leane','Davy','92 Route de Vigneclair',74019,'Mivran',499436523,780820912,NULL),(45,'Emilie','Lhuillier','59 Rue de Castelloup',6094,'Magne',134239634,771662807,NULL),(46,'Cloe','Burel','39 Avenue de Port-sous-croc',15323,'Monmelame',123629485,673946820,NULL),(47,'Nina','Ferrero','70 Ruelle de Aiguedroite',3074,'Puylanbont',196715972,640960158,NULL),(48,'Clementine','Laurent','59 Impasse de Tertrefou',70722,'Quedy',467028102,651714831,NULL),(49,'Anna','Lacour','94 Boulevard de Riverouge',56035,'Mabanches',395008471,680490231,NULL),(50,'Juliette','Ramos','18 Chemin de Froidforge',25151,'Tevône',191299216,610149993,NULL),(51,'Charlotte','Dubos','98 Route de Bassetour',9322,'Peyfargues',336194095,639698117,NULL),(52,'Anais','Tardy','86 Rue de Talecour',55442,'Canpent',406327242,667794124,NULL),(53,'Elsa','Grignon','83 Avenue de Mortforge',84259,'Acangalle',400529603,707255581,NULL),(54,'Margot','Ferrero','55 Ruelle de Fierfond',74392,'Dieu',222148001,754669692,NULL),(55,'Fanny','Pottier','84 Impasse de Port-neuf',59906,'Lanvame',286259944,623802433,NULL),(56,'Noemie','Talon','45 Boulevard de Précalm',59854,'Autuse',113695884,677310826,NULL),(57,'Eva','Labbe','5 Chemin de Picvieux',79167,'Duire',237371919,739222430,NULL),(58,'Lina','Lelong','38 Route de Nobledune',84535,'Brilac',426176261,788990469,NULL),(59,'Anais','Davy','26 Rue de Castelfort',59793,'Lanbavrois',112156992,744398509,NULL),(60,'Alexia','Silvestre','44 Avenue de Grandroc',86106,'Benur',450913214,756170150,NULL),(61,'Charlotte','Lutz','32 Ruelle de Domville',28094,'Puyfeux',155119909,709728400,NULL),(62,'Agathe','Roland','36 Impasse de Mornesherbes',1957,'Conpuygnuse',160641743,624199469,NULL),(63,'Meline','Raynal','16 Boulevard de Port-fol',49846,'Bopord',270987005,688931886,NULL),(64,'Oceane','Gaultier','21 Chemin de Froidmuraille',74019,'Mivran',118065468,618214754,NULL),(65,'Margaux','Lafosse','79 Route de Castelpuit',6094,'Magne',215925793,616436843,NULL);
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comptes`
--

DROP TABLE IF EXISTS `comptes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comptes` (
  `idCompte` int NOT NULL AUTO_INCREMENT,
  `NumeroClient` varchar(45) DEFAULT NULL,
  `TypeCompte` varchar(45) DEFAULT NULL,
  `PIN` varchar(45) DEFAULT NULL,
  `Solde` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idCompte`)
) ENGINE=InnoDB AUTO_INCREMENT=198 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comptes`
--

LOCK TABLES `comptes` WRITE;
/*!40000 ALTER TABLE `comptes` DISABLE KEYS */;
INSERT INTO `comptes` VALUES (1,'2','Compte courant','2527','12253.78'),(2,'33','Compte courant','1526','66790.29'),(3,'51','Compte courant','3542','68786.64'),(4,'4','Livret d\'épargne','4220','59394.46'),(5,'53','Plan épargne logement','2763','65028.32'),(6,'61','Plan épargne bancaire','7924','64582.82'),(7,'51','Livret d\'épargne','6398','77994.44'),(8,'19','Compte courant','7584','50506.14'),(9,'13','Livret d\'épargne','1367','85312.57'),(10,'24','Livret d\'épargne','2156','58966.51'),(11,'43','Compte courant','9013','36100.23'),(12,'39','Compte courant','3538','93854.97'),(13,'52','Compte courant','5884','29155.22'),(14,'28','Plan épargne bancaire','6573','19593.75'),(15,'61','Livret d\'épargne','324','26094.8'),(16,'41','Livret d\'épargne','610','27015.97'),(17,'31','Compte courant','6785','64549.97'),(18,'61','Plan épargne logement','658','66906.14'),(19,'40','Compte courant','3632','31710.74'),(20,'40','Plan épargne logement','1254','797.83'),(21,'6','Plan épargne bancaire','6296','80389.76'),(22,'27','Plan épargne logement','1023','78344.82'),(23,'20','Compte courant','4154','764.84'),(24,'44','Livret d\'épargne','1631','80002.1'),(25,'3','Compte courant','287','5715.02'),(26,'48','Plan épargne logement','804','22982.37'),(27,'6','Assurance vie','7313','94376.65'),(28,'1','Livret d\'épargne','9083','1519.67'),(29,'22','Plan épargne logement','5926','63124.63'),(30,'58','Compte courant','7217','26422.47'),(31,'47','Assurance vie','9930','55283.49'),(32,'3','Livret d\'épargne','3079','96440.98'),(33,'59','Compte courant','6106','12198.79'),(34,'4','Compte courant','1865','80118.6'),(35,'5','Plan épargne logement','6194','18982.34'),(36,'55','Compte courant','5549','71105.1'),(37,'31','Livret d\'épargne','4931','98591.36'),(38,'38','Assurance vie','6650','23550.05'),(39,'16','Livret d\'épargne','4381','97567.65'),(40,'26','Plan épargne logement','412','72529.03'),(41,'5','Compte courant','4145','87017.98'),(42,'26','Compte courant','5051','56219.28'),(43,'60','Assurance vie','6949','58249.79'),(44,'9','Compte courant','5171','24773.71'),(45,'23','Plan épargne bancaire','6267','11314.09'),(46,'6','Plan épargne logement','7389','29331.27'),(47,'40','Livret d\'épargne','288','80124.27'),(48,'25','Compte courant','7891','38619.1'),(49,'27','Livret d\'épargne','4556','47095.18'),(50,'30','Compte courant','4498','528.4'),(51,'59','Livret d\'épargne','4246','10313.23'),(52,'10','Plan épargne logement','1461','90268.47'),(53,'11','Livret d\'épargne','9257','56129.09'),(54,'37','Plan épargne logement','6078','22930.15'),(55,'13','Plan épargne logement','4948','64609.16'),(56,'34','Compte courant','9369','94542.95'),(57,'10','Compte courant','3321','23701.92'),(58,'12','Compte courant','8278','38999.28'),(59,'23','Plan épargne logement','1927','26273.96'),(60,'15','Livret d\'épargne','9483','99158.94'),(61,'48','Livret d\'épargne','8033','87073.81'),(62,'58','Livret d\'épargne','8929','93203.85'),(63,'50','Plan épargne logement','2374','7131.26'),(64,'46','Compte courant','7798','86219.64'),(65,'64','Plan épargne bancaire','6236','11856.19'),(66,'57','Livret d\'épargne','5766','48301.62'),(67,'42','Plan épargne logement','9730','41740.41'),(68,'38','Plan épargne logement','7754','72547.19'),(69,'45','Plan épargne logement','5634','92121.19'),(70,'55','Livret d\'épargne','1835','51153.63'),(71,'22','Plan épargne bancaire','7465','37539.1'),(72,'28','Plan épargne logement','6512','50235.29'),(73,'35','Compte courant','6611','39294.78'),(74,'24','Plan épargne logement','3257','78222.75'),(75,'16','Compte courant','338','36551.22'),(76,'9','Plan épargne logement','5083','57374.51'),(77,'56','Livret d\'épargne','4955','24843.83'),(78,'59','Assurance vie','3208','47387.96'),(79,'25','Plan épargne logement','9530','3766.96'),(80,'15','Compte courant','5601','57478.24'),(81,'50','Livret d\'épargne','5950','16535.42'),(82,'61','Assurance vie','6065','69467.21'),(83,'43','Livret d\'épargne','7720','17104.02'),(84,'64','Livret d\'épargne','5900','52842.09'),(85,'5','Livret d\'épargne','6532','34993.38'),(86,'44','Plan épargne logement','6012','63406.72'),(87,'54','Compte courant','3170','74964.15'),(88,'36','Compte courant','114','26210.88'),(89,'52','Livret d\'épargne','6816','40928.97'),(90,'3','Assurance vie','7382','78787.64'),(91,'60','Compte courant','7459','38827.67'),(92,'64','Assurance vie','6654','73165.92'),(93,'46','Livret d\'épargne','2793','67242.86'),(94,'37','Compte courant','4828','63076.83'),(95,'34','Plan épargne logement','4430','41228.28'),(96,'45','Livret d\'épargne','8151','80018.61'),(97,'8','Livret d\'épargne','9301','12583.19'),(98,'34','Livret d\'épargne','919','67404.83'),(99,'4','Plan épargne logement','600','45993.74'),(100,'46','Assurance vie','6092','38901.61'),(101,'63','Compte courant','5625','14602.34'),(102,'33','Livret d\'épargne','9248','12613.23'),(103,'45','Compte courant','2656','21342.39'),(104,'44','Compte courant','6283','69789.97'),(105,'50','Compte courant','6676','3289.88'),(106,'20','Livret d\'épargne','4652','13901.03'),(107,'47','Livret d\'épargne','9730','16936.07'),(108,'25','Livret d\'épargne','4639','62129.57'),(109,'23','Compte courant','7253','46868.38'),(110,'46','Plan épargne logement','6480','21309.7'),(111,'56','Compte courant','1987','33580.46'),(112,'38','Compte courant','2212','70009.3'),(113,'53','Assurance vie','5384','37993.37'),(114,'58','Plan épargne logement','2039','5264.54'),(115,'23','Livret d\'épargne','3931','32067.46'),(116,'9','Livret d\'épargne','8143','93008.59'),(117,'43','Plan épargne logement','9628','723.07'),(118,'8','Compte courant','5643','911.33'),(119,'1','Plan épargne logement','1700','74689.78'),(120,'64','Plan épargne logement','61','20839.68'),(121,'16','Plan épargne logement','8339','88679.07'),(122,'41','Compte courant','3110','49643.82'),(123,'35','Livret d\'épargne','4051','98655.05'),(124,'30','Livret d\'épargne','2523','20057.11'),(125,'57','Compte courant','1514','59518.64'),(126,'22','Assurance vie','4615','99534.47'),(127,'31','Assurance vie','697','18646.22'),(128,'10','Livret d\'épargne','945','17904.99'),(129,'36','Plan épargne logement','3067','34946.18'),(130,'38','Livret d\'épargne','750','50998.24'),(131,'22','Compte courant','6584','97490.17'),(132,'24','Compte courant','9489','13624.31'),(133,'37','Livret d\'épargne','7722','78488.47'),(134,'1','Compte courant','2554','25664.23'),(135,'26','Livret d\'épargne','5626','48408.04'),(136,'14','Compte courant','5364','70973.94'),(137,'61','Compte courant','1336','55873.56'),(138,'21','Compte courant','9736','30261.09'),(139,'14','Assurance vie','1746','94605.51'),(140,'28','Livret d\'épargne','2783','17345.56'),(141,'41','Assurance vie','8993','57897.87'),(142,'28','Assurance vie','9615','67725.14'),(143,'32','Compte courant','4820','99470.6'),(144,'53','Livret d\'épargne','3455','37551.38'),(145,'19','Livret d\'épargne','9021','83041.5'),(146,'15','Plan épargne logement','4283','31087.46'),(147,'10','Plan épargne bancaire','58','95636.4'),(148,'60','Livret d\'épargne','7605','44438.61'),(149,'10','Assurance vie','2597','55725.61'),(150,'6','Compte courant','865','82143.8'),(151,'3','Plan épargne bancaire','6584','17963.1'),(152,'62','Livret d\'épargne','1785','94755.6'),(153,'62','Compte courant','1258','98045.22'),(154,'23','Assurance vie','4106','49149.9'),(155,'42','Assurance vie','5909','12087.22'),(156,'63','Livret d\'épargne','7365','25015.82'),(157,'4','Assurance vie','5987','44785.69'),(158,'29','Compte courant','4482','48550.17'),(159,'47','Plan épargne logement','5247','68936.4'),(160,'36','Livret d\'épargne','3734','22970.39'),(161,'49','Compte courant','1364','2311.18'),(162,'49','Livret d\'épargne','9484','46156.4'),(163,'52','Plan épargne logement','8865','41139.21'),(164,'13','Compte courant','4629','63383.39'),(165,'60','Plan épargne logement','5181','91652.94'),(166,'7','Compte courant','745','78787.33'),(167,'18','Compte courant','2589','26823.46'),(168,'28','Compte courant','8542','77355.16'),(169,'29','Livret d\'épargne','8450','29293.95'),(170,'6','Livret d\'épargne','3297','7853.74'),(171,'48','Compte courant','4690','11846.57'),(172,'17','Compte courant','7644','41721.88'),(173,'17','Livret d\'épargne','7158','35944.92'),(174,'22','Livret d\'épargne','3633','53892.66'),(175,'43','Assurance vie','2970','3402.26'),(176,'57','Plan épargne logement','2666','50854.23'),(177,'47','Plan épargne bancaire','1703','69414.97'),(178,'14','Livret d\'épargne','8872','16786.02'),(179,'27','Compte courant','3297','54034.76'),(180,'3','Plan épargne logement','6187','26437.72'),(181,'30','Plan épargne logement','1233','48148.05'),(182,'42','Livret d\'épargne','5826','86296.29'),(183,'47','Compte courant','451','15087.33'),(184,'52','Assurance vie','3597','25585.74'),(185,'59','Plan épargne logement','3818','29314.78'),(186,'64','Compte courant','3006','76343.65'),(187,'42','Compte courant','6800','43129.94'),(188,'14','Plan épargne logement','8310','53651.35'),(189,'32','Livret d\'épargne','4818','-227.2'),(190,'32','Plan épargne logement','1064','7661.59'),(191,'44','Assurance vie','4805','55492.69'),(192,'58','Assurance vie','1740','3135.49'),(193,'53','Compte courant','4380','76801.47'),(194,'11','Plan épargne logement','4279','22228.63'),(195,'11','Compte courant','9862','16815.52'),(196,'31','Plan épargne logement','5351','71011.15'),(197,'41','Plan épargne logement','2714','4915.56');
/*!40000 ALTER TABLE `comptes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operations`
--

DROP TABLE IF EXISTS `operations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `operations` (
  `idOperation` int NOT NULL AUTO_INCREMENT,
  `idCompte` int NOT NULL,
  `dateOperation` datetime NOT NULL,
  `libelleOperation` varchar(255) DEFAULT NULL,
  `montant` int NOT NULL,
  PRIMARY KEY (`idOperation`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operations`
--

LOCK TABLES `operations` WRITE;
/*!40000 ALTER TABLE `operations` DISABLE KEYS */;
INSERT INTO `operations` VALUES (1,2,'2017-01-01 00:00:00','Prélévement automatique',-132),(2,2,'2017-01-01 00:00:00','Facture carte',-185),(3,2,'2017-01-01 00:00:00','Virement',-203),(4,3,'2017-01-01 00:00:00','Encaissement chèque ',535370),(5,3,'2017-01-01 00:00:00','Virement',725),(6,4,'2017-01-01 00:00:00','Prélévement automatique',-197),(7,5,'2017-01-01 00:00:00','Facture carte',-110),(8,5,'2017-01-01 00:00:00','Encaissement chèque',345264),(9,6,'2017-01-01 00:00:00','Virement',1420),(10,3,'2017-01-01 00:00:00','Encaissement chèque',661413),(11,4,'2017-01-11 00:00:00','Facture carte',-66),(12,6,'2017-01-01 00:00:00','Facture carte',-68),(13,7,'2017-01-13 00:00:00','Facture carte',-190),(14,8,'2017-01-01 00:00:00','Facture carte',-5),(15,9,'2017-01-01 00:00:00','Facture carte',-128),(16,10,'2017-01-01 00:00:00','Facture carte',-138),(17,12,'2017-01-01 00:00:00','Facture carte',-170),(18,11,'2017-01-01 00:00:00','Encaissement chèque',504828),(19,1,'2023-06-26 00:00:00','Dépôt',2500),(20,1,'2023-06-26 00:00:00','Retrait',-1000);
/*!40000 ALTER TABLE `operations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-26  9:52:52
