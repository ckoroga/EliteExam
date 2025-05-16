-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: albumsales
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `album_sales`
--

DROP TABLE IF EXISTS `album_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `album_sales` (
  `Artist` varchar(255) DEFAULT NULL,
  `Album` varchar(255) DEFAULT NULL,
  `2022 Sales` int DEFAULT NULL,
  `Date_Released` varchar(10) DEFAULT NULL,
  `Last_Update` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `album_sales`
--

LOCK TABLES `album_sales` WRITE;
/*!40000 ALTER TABLE `album_sales` DISABLE KEYS */;
INSERT INTO `album_sales` VALUES ('AB6IX','Complete with You: Special Album',43058,'220117','220131'),('aespa','Savage',19629,'211005','220430'),('Apink','Horn',58641,'220214','220228'),('ATEEZ','Zero: Fever Epilogue',3578,'211210','220131'),('BAE173','Intersection: Blaze',16801,'220330','220430'),('BamBam','B',87540,'220118','220131'),('Bang Yongguk','2',6933,'220302','220331'),('Billlie','The Collective Soul and Unconscious: Chapter One',66885,'220223','220430'),('Blitzers','Bobbin',17719,'220103','220131'),('Bolbbalgan4','Seoul',2596,'220420','220430'),('Brave Girls','Thank You',33605,'220315','220331'),('BTOB','Be Together',121528,'220221','220331'),('Choi Yena','Smiley',84346,'220117','220331'),('Cravity','Liberty: In Our Cosmos Part.2',123922,'220322','220430'),('Cherry Bullet','Cherry Wish',20250,'220302','220331'),('Def.','Love',41148,'220126','220131'),('DKZ','Chase, Ep.2-Maum',118583,'220412','220430'),('Dreamcatcher','Apocalypse: Save Us',94706,'220412','220430'),('Drippin','Villian',37535,'220117','220430'),('E\'LAST','Roar',48695,'220427','220430'),('Enhypen','Dimension: Dilemma',27591,'211012','220430'),('Enhypen','Dimension: Answer',621425,'220110','220430'),('Epex','Book of Anxiety Chapter1. 21st Century Boys',71584,'220411','220430'),('Epik High','Epik High is Here',5382,'220214','220228'),('Eric Nam','There and Back Again',2183,'220107','220430'),('Everglow','Return of the Girl',2450,'211201','220131'),('fromis_9','Midnight Guest',120245,'220117','220331'),('(G)I-dle','I Never Die',198589,'220314','220430'),('Ghost9','Arcade: V',9311,'220407','220430'),('Ha Sungwoon','You',18717,'220209','220228'),('Highlight','Daydream',86293,'220321','220430'),('ILY:1','Love in Bloom',3181,'220404','220430'),('IVE','Eleven',37284,'211201','220430'),('IVE','Love Dive',440067,'220405','220430'),('Jinjin & Rocky','Restore',57401,'220117','220228'),('Just B','Just Begun',51504,'220414','220430'),('Kai','Peaches',5373,'211130','220131'),('Kang Hyewon','Winter Special Album: W',18305,'220104','220131'),('Kep1er','First Impact',271048,'220103','220430'),('Kihyun','Voyager',141407,'220315','220430'),('Kim Jaehwan','The Letter',9639,'211228','220131'),('Kim Junsu','Dimension',55470,'220317','220430'),('Kim Sungkyu','Savior',28082,'220422','220430'),('Kim Wooseok','Reve: 3rd Desire',67957,'220307','220331'),('Kim Yohan','Illusoin',51754,'220110','220131'),('Kingdom','History of Kingdom: Pt. 4: Dann',19450,'220331','220430'),('Kwon Eunbi','Color',55923,'220404','220430'),('Kyuhyun','Love Story (4 Season Project å­£)',37215,'220125','220228'),('Lee Seokhoon','Same Spot',7673,'220324','220331'),('Lee Seungyoon','Even if it becomes ruins',7640,'211124','220228'),('Lisa','Lalisa',73336,'210910','220430'),('LUNA','Moonlight',3705,'220117','220131'),('Max Changmin','Devil',21831,'220113','220228'),('Mirae','Marvelous',48067,'220112','220131'),('Miyeon','My',90064,'220427','220430'),('Monsta X','No Limit',23015,'211119','220228'),('Monsta X','Shape of Love',284668,'220426','220430'),('Moonbin & Sanha','Refuge',144205,'220315','220430'),('Moonbyul','6equence',78120,'220119','220228'),('Moonbyul','CITT: Cheese in the Trap',86508,'220428','220430'),('NCT 127','Sticker',31194,'210917','220430'),('NCT 127','Favorite',30331,'211025','220331'),('NCT 2021','Universe',118633,'211214','220430'),('NCT Dream','Glitch Mode',1649993,'220328','220430'),('NINE.i','New World',3618,'220330','220430'),('NMIXX','Ad Mare',406936,'220222','220430'),('NU\'EST','Need & Bubble: Nu\'est the Best Album',63446,'220315','220331'),('Oh My Girl','Real Love',66912,'220328','220430'),('Omega X','Love Me Like',86941,'220105','220131'),('Onew','Dice',119006,'220411','220430'),('ONEWE','Planet Nine: Voyager',18075,'220104','220228'),('ONF','Goosebumps',4396,'211203','220131'),('OnlyOneOf','Instint, Pt.2',49362,'220114','220131'),('P1Harmony','Disharmony: Find Out',91969,'220103','220131'),('Pentagon','In:Vite U',90114,'220124','220228'),('Purple Kiss','Memem',32266,'220329','220331'),('Ravi','Love & Fight',10359,'220208','220228'),('Red Velvet','The Reve Festival 2022: Feel My Rhythm',560838,'220321','220430'),('Rocket Punch','Yellow Punch',20055,'220228','220430'),('Seventeen','Attacca',30049,'211022','220430'),('Solar','Face',43599,'220316','220430'),('SMTOWN','2021 Winter SMTOWN: SMCU Express',56940,'211227','220131'),('SMTOWN','2021 Winter SMTOWN: SMCU Express',12971,'211227','220331'),('SMTOWN','2021 Winter SMTOWN: SMCU Express',5974,'211227','220331'),('SMTOWN','2021 Winter SMTOWN: SMCU Express',74162,'211227','220331'),('SMTOWN','2021 Winter SMTOWN: SMCU Express',74087,'211227','220331'),('SMTOWN','2021 Winter SMTOWN: SMCU Express',41833,'211227','220331'),('SMTOWN','2021 Winter SMTOWN: SMCU Express',5265,'211227','220131'),('SMTOWN','2021 Winter SMTOWN: SMCU Express',62545,'211227','220331'),('SMTOWN','2021 Winter SMTOWN: SMCU Express',14336,'211227','220131'),('SMTOWN','2021 Winter SMTOWN: SMCU Express',2218,'211227','220131'),('Suho','Gray Suit',186465,'220404','220430'),('StayC','Young-Luv.com',182131,'220221','220430'),('Stray Kids','Christmas EveL',14418,'211129','220430'),('Stray Kids','Oddinary',1000088,'220318','220430'),('Super Junior','The Road: Winter for Spring',142663,'220228','220430'),('Super Junior - D&E','Countdown Zero (Epilogue)',8458,'211209','220131'),('Taeyeon','INVU',179611,'220214','220430'),('Tempest','It\'s Me, It\'s We',82307,'220302','220430'),('Tan','Limited Edition \'1TAN\'',8870,'220310','220430'),('The Boyz','Maverick',5566,'211101','220228'),('The Boyz','Webtoon Level Up Alone (OST)',10573,'220318','220331'),('Treasure','The Second Step: Chapter One',668539,'220215','220430'),('Trendz','Blue Set Chapter 1. Tracks',6170,'220105','220131'),('Twice','Formula of Love: OT=<3',8293,'211217','220331'),('UP10TION','Novella',31415,'220103','220430'),('Verivery','Serioues O-Round 3: Whole',97187,'220425','220430'),('Victon','Chronograph',60959,'220118','220228'),('Viviz','Beam of Prism',43638,'220210','220228'),('Weeekly','Play Game: Awake',81537,'220307','220331'),('WEi','Love Pt. 1: First Love',119853,'220316','220331'),('Wheein','Whee',69470,'220117','220131'),('Wonho','Obsession',56627,'220216','220331'),('Wonpil','Pilmography',33668,'220210','220228'),('WJSN Chocome','Super Yuppers!',15135,'220105','220131'),('Younha','End Theory Final Ed.',7001,'220330','220331'),('Yoon Jisung','Miro',6595,'220427','220430'),('Younite','Youni-Birth',21927,'220422','220430'),('Yuju','Rec.',22970,'220121','220131');
/*!40000 ALTER TABLE `album_sales` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-15  3:38:37
