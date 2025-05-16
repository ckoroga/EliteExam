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
-- Table structure for table `albums`
--

DROP TABLE IF EXISTS `albums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `albums` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `artist_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` int NOT NULL,
  `sales` int NOT NULL,
  `cover` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `albums_artist_id_foreign` (`artist_id`),
  CONSTRAINT `albums_artist_id_foreign` FOREIGN KEY (`artist_id`) REFERENCES `artists` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=239 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `albums`
--

LOCK TABLES `albums` WRITE;
/*!40000 ALTER TABLE `albums` DISABLE KEYS */;
INSERT INTO `albums` VALUES (120,104,'Complete with You: Special Album',220117,43058,'https://via.placeholder.com/640x480.png/004433?text=music+id','2025-05-15 06:32:28','2025-05-15 06:32:28'),(121,105,'Savage',211005,19629,'https://via.placeholder.com/640x480.png/003377?text=music+quos','2025-05-15 06:32:28','2025-05-15 06:32:28'),(122,106,'Horn',220214,58641,'https://via.placeholder.com/640x480.png/009933?text=music+doloribus','2025-05-15 06:32:28','2025-05-15 06:32:28'),(123,107,'Zero: Fever Epilogue',211210,3578,'https://via.placeholder.com/640x480.png/00cc11?text=music+omnis','2025-05-15 06:32:28','2025-05-15 06:32:28'),(124,108,'Intersection: Blaze',220330,16801,'https://via.placeholder.com/640x480.png/00eeaa?text=music+ab','2025-05-15 06:32:28','2025-05-15 06:32:28'),(125,109,'B',220118,87540,'https://via.placeholder.com/640x480.png/00ffee?text=music+aliquam','2025-05-15 06:32:28','2025-05-15 06:32:28'),(126,110,'2hdaka',220302,69330000,'/storage/covers/cHkkfRiQfQ5bKzM0m4gNcYdX6QrB4m4nZXOF1xkO.jpg','2025-05-15 06:32:28','2025-05-15 15:30:27'),(127,111,'The Collective Soul and Unconscious: Chapter One',220223,66885,'https://via.placeholder.com/640x480.png/0088ff?text=music+aut','2025-05-15 06:32:28','2025-05-15 06:32:28'),(128,112,'Bobbin',220103,17719,'https://via.placeholder.com/640x480.png/0088bb?text=music+pariatur','2025-05-15 06:32:29','2025-05-15 06:32:29'),(129,113,'Seoul',220420,2596,'https://via.placeholder.com/640x480.png/00eeff?text=music+debitis','2025-05-15 06:32:29','2025-05-15 06:32:29'),(130,114,'Thank You',220315,33605,'https://via.placeholder.com/640x480.png/00bb00?text=music+natus','2025-05-15 06:32:29','2025-05-15 06:32:29'),(131,115,'Be Together',220221,121528,'https://via.placeholder.com/640x480.png/007744?text=music+quas','2025-05-15 06:32:29','2025-05-15 06:32:29'),(132,116,'Smiley',220117,84346,'https://via.placeholder.com/640x480.png/004411?text=music+officiis','2025-05-15 06:32:29','2025-05-15 06:32:29'),(133,117,'Liberty: In Our Cosmos Part.2',220322,123922,'https://via.placeholder.com/640x480.png/008844?text=music+ut','2025-05-15 06:32:29','2025-05-15 06:32:29'),(134,118,'Cherry Wish',220302,20250,'https://via.placeholder.com/640x480.png/00bb66?text=music+laboriosam','2025-05-15 06:32:29','2025-05-15 06:32:29'),(135,119,'Love',220126,41148,'https://via.placeholder.com/640x480.png/009911?text=music+cumque','2025-05-15 06:32:29','2025-05-15 06:32:29'),(136,120,'Chase, Ep.2-Maum',220412,118583,'https://via.placeholder.com/640x480.png/00bb22?text=music+illo','2025-05-15 06:32:29','2025-05-15 06:32:29'),(137,121,'Apocalypse: Save Us',220412,94706,'https://via.placeholder.com/640x480.png/007744?text=music+error','2025-05-15 06:32:29','2025-05-15 06:32:29'),(138,122,'Villian',220117,37535,'https://via.placeholder.com/640x480.png/0033cc?text=music+delectus','2025-05-15 06:32:29','2025-05-15 06:32:29'),(139,123,'Roar',220427,48695,'https://via.placeholder.com/640x480.png/00aaaa?text=music+recusandae','2025-05-15 06:32:29','2025-05-15 06:32:29'),(140,124,'Dimension: Dilemma',211012,27591,'https://via.placeholder.com/640x480.png/005544?text=music+sit','2025-05-15 06:32:29','2025-05-15 06:32:29'),(141,124,'Dimension: Answer',220110,621425,'https://via.placeholder.com/640x480.png/00dd66?text=music+voluptatibus','2025-05-15 06:32:29','2025-05-15 06:32:29'),(142,125,'Book of Anxiety Chapter1. 21st Century Boys',220411,71584,'https://via.placeholder.com/640x480.png/0088ff?text=music+facere','2025-05-15 06:32:29','2025-05-15 06:32:29'),(143,126,'Epik High is Here',220214,5382,'https://via.placeholder.com/640x480.png/0011ff?text=music+et','2025-05-15 06:32:29','2025-05-15 06:32:29'),(144,127,'There and Back Again',220107,2183,'https://via.placeholder.com/640x480.png/002200?text=music+deserunt','2025-05-15 06:32:29','2025-05-15 06:32:29'),(145,128,'Return of the Girl',211201,2450,'https://via.placeholder.com/640x480.png/00ddaa?text=music+et','2025-05-15 06:32:29','2025-05-15 06:32:29'),(146,129,'Midnight Guest',220117,120245,'https://via.placeholder.com/640x480.png/00eeee?text=music+aut','2025-05-15 06:32:29','2025-05-15 06:32:29'),(147,130,'I Never Die',220314,198589,'https://via.placeholder.com/640x480.png/00bb99?text=music+eaque','2025-05-15 06:32:29','2025-05-15 06:32:29'),(148,131,'Arcade: V',220407,9311,'https://via.placeholder.com/640x480.png/00dd66?text=music+modi','2025-05-15 06:32:29','2025-05-15 06:32:29'),(149,132,'You',220209,18717,'https://via.placeholder.com/640x480.png/00ff22?text=music+repudiandae','2025-05-15 06:32:29','2025-05-15 06:32:29'),(150,133,'Daydream',220321,86293,'https://via.placeholder.com/640x480.png/00cc88?text=music+eligendi','2025-05-15 06:32:29','2025-05-15 06:32:29'),(151,134,'Love in Bloom',220404,3181,'https://via.placeholder.com/640x480.png/00ffcc?text=music+porro','2025-05-15 06:32:29','2025-05-15 06:32:29'),(152,135,'Eleven',211201,37284,'https://via.placeholder.com/640x480.png/002299?text=music+non','2025-05-15 06:32:29','2025-05-15 06:32:29'),(153,135,'Love Dive',220405,440067,'https://via.placeholder.com/640x480.png/007711?text=music+rerum','2025-05-15 06:32:29','2025-05-15 06:32:29'),(154,136,'Restore',220117,57401,'https://via.placeholder.com/640x480.png/00bb44?text=music+non','2025-05-15 06:32:29','2025-05-15 06:32:29'),(155,137,'Just Begun',220414,51504,'https://via.placeholder.com/640x480.png/007733?text=music+sed','2025-05-15 06:32:29','2025-05-15 06:32:29'),(156,138,'Peaches',211130,5373,'https://via.placeholder.com/640x480.png/0000ff?text=music+cum','2025-05-15 06:32:29','2025-05-15 06:32:29'),(157,139,'Winter Special Album: W',220104,18305,'https://via.placeholder.com/640x480.png/004466?text=music+odit','2025-05-15 06:32:29','2025-05-15 06:32:29'),(158,140,'First Impact',220103,271048,'https://via.placeholder.com/640x480.png/007799?text=music+minus','2025-05-15 06:32:29','2025-05-15 06:32:29'),(159,141,'Voyager',220315,141407,'https://via.placeholder.com/640x480.png/000011?text=music+qui','2025-05-15 06:32:29','2025-05-15 06:32:29'),(160,142,'The Letter',211228,9639,'https://via.placeholder.com/640x480.png/00ddaa?text=music+expedita','2025-05-15 06:32:29','2025-05-15 06:32:29'),(161,143,'Dimension',220317,55470,'https://via.placeholder.com/640x480.png/00ccff?text=music+eos','2025-05-15 06:32:29','2025-05-15 06:32:29'),(162,144,'Savior',220422,28082,'https://via.placeholder.com/640x480.png/00ee55?text=music+eum','2025-05-15 06:32:29','2025-05-15 06:32:29'),(163,145,'Reve: 3rd Desire',220307,67957,'https://via.placeholder.com/640x480.png/00eeaa?text=music+sed','2025-05-15 06:32:29','2025-05-15 06:32:29'),(164,146,'Illusoin',220110,51754,'https://via.placeholder.com/640x480.png/0033ee?text=music+corrupti','2025-05-15 06:32:29','2025-05-15 06:32:29'),(165,147,'History of Kingdom: Pt. 4: Dann',220331,19450,'https://via.placeholder.com/640x480.png/0022bb?text=music+velit','2025-05-15 06:32:29','2025-05-15 06:32:29'),(166,148,'Color',220404,55923,'https://via.placeholder.com/640x480.png/0011dd?text=music+aliquid','2025-05-15 06:32:29','2025-05-15 06:32:29'),(167,149,'Love Story (4 Season Project 季)',220125,37215,'https://via.placeholder.com/640x480.png/00ff44?text=music+numquam','2025-05-15 06:32:29','2025-05-15 06:32:29'),(168,150,'Same Spot',220324,7673,'https://via.placeholder.com/640x480.png/007799?text=music+velit','2025-05-15 06:32:29','2025-05-15 06:32:29'),(169,151,'Even if it becomes ruins',211124,7640,'https://via.placeholder.com/640x480.png/0033ee?text=music+tenetur','2025-05-15 06:32:29','2025-05-15 06:32:29'),(170,152,'Lalisa',210910,73336,'https://via.placeholder.com/640x480.png/0077cc?text=music+esse','2025-05-15 06:32:30','2025-05-15 06:32:30'),(171,153,'Moonlight',220117,3705,'https://via.placeholder.com/640x480.png/0077cc?text=music+facilis','2025-05-15 06:32:30','2025-05-15 06:32:30'),(172,154,'Devil',220113,21831,'https://via.placeholder.com/640x480.png/00bbbb?text=music+ea','2025-05-15 06:32:30','2025-05-15 06:32:30'),(173,155,'Marvelous',220112,48067,'https://via.placeholder.com/640x480.png/0000cc?text=music+dolores','2025-05-15 06:32:30','2025-05-15 06:32:30'),(175,157,'No Limit',211119,23015,'https://via.placeholder.com/640x480.png/00ff77?text=music+molestias','2025-05-15 06:32:30','2025-05-15 06:32:30'),(176,157,'Shape of Love',220426,284668,'https://via.placeholder.com/640x480.png/00ff00?text=music+consequatur','2025-05-15 06:32:30','2025-05-15 06:32:30'),(177,158,'Refuge',220315,144205,'https://via.placeholder.com/640x480.png/00bbff?text=music+ipsum','2025-05-15 06:32:30','2025-05-15 06:32:30'),(179,159,'CITT: Cheese in the Trap',220428,86508,'https://via.placeholder.com/640x480.png/0033cc?text=music+soluta','2025-05-15 06:32:30','2025-05-15 06:32:30'),(180,160,'Sticker',210917,31194,'https://via.placeholder.com/640x480.png/0033ee?text=music+possimus','2025-05-15 06:32:30','2025-05-15 06:32:30'),(181,160,'Favorite',211025,30331,'https://via.placeholder.com/640x480.png/00ee44?text=music+quaerat','2025-05-15 06:32:30','2025-05-15 06:32:30'),(182,161,'Universe',211214,118633,'https://via.placeholder.com/640x480.png/0099cc?text=music+rerum','2025-05-15 06:32:30','2025-05-15 06:32:30'),(183,162,'Glitch Mode',220328,1649993,'https://via.placeholder.com/640x480.png/007711?text=music+sit','2025-05-15 06:32:30','2025-05-15 06:32:30'),(184,163,'New World',220330,3618,'https://via.placeholder.com/640x480.png/0011cc?text=music+unde','2025-05-15 06:32:30','2025-05-15 06:32:30'),(185,164,'Ad Mare',220222,406936,'https://via.placeholder.com/640x480.png/009966?text=music+accusamus','2025-05-15 06:32:30','2025-05-15 06:32:30'),(186,165,'Need & Bubble: Nu\'est the Best Album',220315,63446,'https://via.placeholder.com/640x480.png/00ff22?text=music+laboriosam','2025-05-15 06:32:30','2025-05-15 06:32:30'),(187,166,'Real Love',220328,66912,'https://via.placeholder.com/640x480.png/00ccff?text=music+at','2025-05-15 06:32:30','2025-05-15 06:32:30'),(188,167,'Love Me Like',220105,86941,'https://via.placeholder.com/640x480.png/003333?text=music+quam','2025-05-15 06:32:30','2025-05-15 06:32:30'),(189,168,'Dice',220411,119006,'https://via.placeholder.com/640x480.png/0088cc?text=music+maxime','2025-05-15 06:32:30','2025-05-15 06:32:30'),(190,169,'Planet Nine: Voyager',220104,18075,'https://via.placeholder.com/640x480.png/00ff33?text=music+blanditiis','2025-05-15 06:32:30','2025-05-15 06:32:30'),(191,170,'Goosebumps',211203,4396,'https://via.placeholder.com/640x480.png/005511?text=music+assumenda','2025-05-15 06:32:30','2025-05-15 06:32:30'),(192,171,'Instint, Pt.2',220114,49362,'https://via.placeholder.com/640x480.png/0055aa?text=music+deleniti','2025-05-15 06:32:30','2025-05-15 06:32:30'),(193,172,'Disharmony: Find Out',220103,91969,'https://via.placeholder.com/640x480.png/0099bb?text=music+sit','2025-05-15 06:32:30','2025-05-15 06:32:30'),(194,173,'In:Vite U',220124,90114,'https://via.placeholder.com/640x480.png/009933?text=music+voluptatibus','2025-05-15 06:32:30','2025-05-15 06:32:30'),(195,174,'Memem',220329,32266,'https://via.placeholder.com/640x480.png/00aa00?text=music+quod','2025-05-15 06:32:30','2025-05-15 06:32:30'),(196,175,'Love & Fight',220208,10359,'https://via.placeholder.com/640x480.png/00aa33?text=music+eum','2025-05-15 06:32:30','2025-05-15 06:32:30'),(197,176,'The Reve Festival 2022: Feel My Rhythm',220321,560838,'https://via.placeholder.com/640x480.png/002222?text=music+quod','2025-05-15 06:32:30','2025-05-15 06:32:30'),(198,177,'Yellow Punch',220228,20055,'https://via.placeholder.com/640x480.png/00bb44?text=music+nemo','2025-05-15 06:32:30','2025-05-15 06:32:30'),(199,178,'Attacca',211022,30049,'https://via.placeholder.com/640x480.png/00cccc?text=music+sit','2025-05-15 06:32:30','2025-05-15 06:32:30'),(200,179,'Face',220316,43599,'https://via.placeholder.com/640x480.png/005588?text=music+culpa','2025-05-15 06:32:30','2025-05-15 06:32:30'),(202,180,'2021 Winter SMTOWN: SMCU Expressssss',211227,12971,'https://via.placeholder.com/640x480.png/00ffbb?text=music+alias','2025-05-15 06:32:30','2025-05-15 07:29:12'),(203,180,'2021 Winter SMTOWN: SMCU Express',211227,5974,'https://via.placeholder.com/640x480.png/00bb55?text=music+eaque','2025-05-15 06:32:30','2025-05-15 06:32:30'),(204,180,'2021 Winter SMTOWN: SMCU Express',211227,74162,'https://via.placeholder.com/640x480.png/0099ff?text=music+quo','2025-05-15 06:32:30','2025-05-15 06:32:30'),(205,180,'2021 Winter SMTOWN: SMCU Express',211227,74087,'https://via.placeholder.com/640x480.png/0099cc?text=music+natus','2025-05-15 06:32:30','2025-05-15 06:32:30'),(206,180,'2021 Winter SMTOWN: SMCU Express',211227,41833,'https://via.placeholder.com/640x480.png/0011bb?text=music+eveniet','2025-05-15 06:32:30','2025-05-15 06:32:30'),(207,180,'2021 Winter SMTOWN: SMCU Express',211227,5265,'https://via.placeholder.com/640x480.png/0077aa?text=music+dolores','2025-05-15 06:32:30','2025-05-15 06:32:30'),(208,180,'2021 Winter SMTOWN: SMCU Express',211227,62545,'https://via.placeholder.com/640x480.png/007799?text=music+officiis','2025-05-15 06:32:30','2025-05-15 06:32:30'),(209,180,'2021 Winter SMTOWN: SMCU Express',211227,14336,'https://via.placeholder.com/640x480.png/003344?text=music+id','2025-05-15 06:32:30','2025-05-15 06:32:30'),(210,180,'2021 Winter SMTOWN: SMCU Express',211227,2218,'https://via.placeholder.com/640x480.png/00dd44?text=music+sit','2025-05-15 06:32:30','2025-05-15 06:32:30'),(211,181,'Gray Suit',220404,186465,'https://via.placeholder.com/640x480.png/0099bb?text=music+omnis','2025-05-15 06:32:30','2025-05-15 06:32:30'),(212,182,'Young-Luv.com',220221,182131,'https://via.placeholder.com/640x480.png/00ddcc?text=music+debitis','2025-05-15 06:32:30','2025-05-15 06:32:30'),(213,183,'Christmas EveL',211129,14418,'https://via.placeholder.com/640x480.png/00aa99?text=music+in','2025-05-15 06:32:30','2025-05-15 06:32:30'),(214,183,'Oddinary',220318,1000088,'https://via.placeholder.com/640x480.png/00bb99?text=music+saepe','2025-05-15 06:32:30','2025-05-15 06:32:30'),(215,184,'The Road: Winter for Spring',220228,142663,'https://via.placeholder.com/640x480.png/000000?text=music+commodi','2025-05-15 06:32:30','2025-05-15 06:32:30'),(216,185,'Countdown Zero (Epilogue)',211209,8458,'https://via.placeholder.com/640x480.png/002222?text=music+eius','2025-05-15 06:32:30','2025-05-15 06:32:30'),(217,186,'INVU',220214,179611,'https://via.placeholder.com/640x480.png/0022dd?text=music+architecto','2025-05-15 06:32:30','2025-05-15 06:32:30'),(218,187,'It\'s Me, It\'s We',220302,82307,'https://via.placeholder.com/640x480.png/0033ff?text=music+suscipit','2025-05-15 06:32:30','2025-05-15 06:32:30'),(219,188,'Limited Edition \'1TAN\'',220310,8870,'https://via.placeholder.com/640x480.png/00aa55?text=music+non','2025-05-15 06:32:30','2025-05-15 06:32:30'),(220,189,'Maverick',211101,5566,'https://via.placeholder.com/640x480.png/002233?text=music+quod','2025-05-15 06:32:30','2025-05-15 06:32:30'),(221,189,'Webtoon Level Up Alone (OST)',220318,10573,'https://via.placeholder.com/640x480.png/009944?text=music+qui','2025-05-15 06:32:31','2025-05-15 06:32:31'),(222,190,'The Second Step: Chapter One',220215,668539,'https://via.placeholder.com/640x480.png/0033ff?text=music+aperiam','2025-05-15 06:32:31','2025-05-15 06:32:31'),(223,191,'Blue Set Chapter 1. Tracks',220105,6170,'https://via.placeholder.com/640x480.png/00ee44?text=music+fugit','2025-05-15 06:32:31','2025-05-15 06:32:31'),(224,192,'Formula of Love: OT=<3',211217,8293,'https://via.placeholder.com/640x480.png/0022dd?text=music+magni','2025-05-15 06:32:31','2025-05-15 06:32:31'),(226,194,'Serioues O-Round 3: Whole',220425,97187,'https://via.placeholder.com/640x480.png/00ddff?text=music+et','2025-05-15 06:32:31','2025-05-15 06:32:31'),(227,195,'Chronograph',220118,60959,'https://via.placeholder.com/640x480.png/0011dd?text=music+est','2025-05-15 06:32:31','2025-05-15 06:32:31'),(228,196,'Beam of Prism',220210,43638,'https://via.placeholder.com/640x480.png/000055?text=music+dolor','2025-05-15 06:32:31','2025-05-15 06:32:31'),(229,197,'Play Game: Awake',220307,81537,'https://via.placeholder.com/640x480.png/000077?text=music+explicabo','2025-05-15 06:32:31','2025-05-15 06:32:31'),(230,198,'Love Pt. 1: First Love',220316,119853,'https://via.placeholder.com/640x480.png/001188?text=music+quis','2025-05-15 06:32:31','2025-05-15 06:32:31'),(231,199,'Whee',220117,69470,'https://via.placeholder.com/640x480.png/00ffbb?text=music+rerum','2025-05-15 06:32:31','2025-05-15 06:32:31'),(232,200,'Obsession',220216,56627,'https://via.placeholder.com/640x480.png/000055?text=music+corrupti','2025-05-15 06:32:31','2025-05-15 06:32:31'),(233,201,'Pilmography',220210,33668,'https://via.placeholder.com/640x480.png/00ccff?text=music+quo','2025-05-15 06:32:31','2025-05-15 06:32:31'),(234,202,'Super Yuppers!',220105,15135,'https://via.placeholder.com/640x480.png/00ee88?text=music+nisi','2025-05-15 06:32:31','2025-05-15 06:32:31'),(236,204,'Miro',220427,6595,'https://via.placeholder.com/640x480.png/005522?text=music+dolores','2025-05-15 06:32:31','2025-05-15 06:32:31'),(237,205,'Youni-Birth',220422,21927,'https://via.placeholder.com/640x480.png/001166?text=music+et','2025-05-15 06:32:31','2025-05-15 06:32:31'),(238,206,'Rec.',220121,22970,'https://via.placeholder.com/640x480.png/000099?text=music+aliquam','2025-05-15 06:32:31','2025-05-15 06:32:31');
/*!40000 ALTER TABLE `albums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artists`
--

DROP TABLE IF EXISTS `artists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `artists_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=207 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artists`
--

LOCK TABLES `artists` WRITE;
/*!40000 ALTER TABLE `artists` DISABLE KEYS */;
INSERT INTO `artists` VALUES (104,'AR082','AB6IX','2025-05-15 06:32:28','2025-05-15 06:32:28'),(105,'AR449','aespa','2025-05-15 06:32:28','2025-05-15 06:32:28'),(106,'AR810','Apink','2025-05-15 06:32:28','2025-05-15 06:32:28'),(107,'AR878','ATEEZ','2025-05-15 06:32:28','2025-05-15 06:32:28'),(108,'AR764','BAE173','2025-05-15 06:32:28','2025-05-15 06:32:28'),(109,'AR293','BamBam','2025-05-15 06:32:28','2025-05-15 06:32:28'),(110,'AR684','Bang Yongguk','2025-05-15 06:32:28','2025-05-15 06:32:28'),(111,'AR585','Billlie','2025-05-15 06:32:28','2025-05-15 06:32:28'),(112,'AR682','Blitzers','2025-05-15 06:32:28','2025-05-15 06:32:28'),(113,'AR103','Bolbbalgan4','2025-05-15 06:32:29','2025-05-15 06:32:29'),(114,'AR388','Brave Girls','2025-05-15 06:32:29','2025-05-15 06:32:29'),(115,'AR832','BTOB','2025-05-15 06:32:29','2025-05-15 06:32:29'),(116,'AR418','Choi Yena','2025-05-15 06:32:29','2025-05-15 06:32:29'),(117,'AR032 try','Cravity','2025-05-15 06:32:29','2025-05-15 15:28:59'),(118,'AR088','Cherry Bullet','2025-05-15 06:32:29','2025-05-15 06:32:29'),(119,'AR154','Def.','2025-05-15 06:32:29','2025-05-15 06:32:29'),(120,'AR480','DKZ','2025-05-15 06:32:29','2025-05-15 06:32:29'),(121,'AR502','Dreamcatcher','2025-05-15 06:32:29','2025-05-15 06:32:29'),(122,'AR412','Drippin','2025-05-15 06:32:29','2025-05-15 06:32:29'),(123,'try','E\'LAST','2025-05-15 06:32:29','2025-05-15 15:21:23'),(124,'AR737','Enhypen','2025-05-15 06:32:29','2025-05-15 06:32:29'),(125,'AR361','Epex','2025-05-15 06:32:29','2025-05-15 06:32:29'),(126,'AR081','Epik High','2025-05-15 06:32:29','2025-05-15 06:32:29'),(127,'AR548','Eric Nam','2025-05-15 06:32:29','2025-05-15 06:32:29'),(128,'AR183','Everglow','2025-05-15 06:32:29','2025-05-15 06:32:29'),(129,'AR248','fromis_9','2025-05-15 06:32:29','2025-05-15 06:32:29'),(130,'AR956','(G)I-dle','2025-05-15 06:32:29','2025-05-15 06:32:29'),(131,'AR395','Ghost9','2025-05-15 06:32:29','2025-05-15 06:32:29'),(132,'AR979','Ha Sungwoon','2025-05-15 06:32:29','2025-05-15 06:32:29'),(133,'AR129','Highlight','2025-05-15 06:32:29','2025-05-15 06:32:29'),(134,'AR837','ILY:1','2025-05-15 06:32:29','2025-05-15 06:32:29'),(135,'AR864','IVE','2025-05-15 06:32:29','2025-05-15 06:32:29'),(136,'AR356','Jinjin & Rocky','2025-05-15 06:32:29','2025-05-15 06:32:29'),(137,'AR649','Just B','2025-05-15 06:32:29','2025-05-15 06:32:29'),(138,'AR508','Kai','2025-05-15 06:32:29','2025-05-15 06:32:29'),(139,'AR868','Kang Hyewon','2025-05-15 06:32:29','2025-05-15 06:32:29'),(140,'AR887','Kep1er','2025-05-15 06:32:29','2025-05-15 06:32:29'),(141,'AR796','Kihyun','2025-05-15 06:32:29','2025-05-15 06:32:29'),(142,'AR592','Kim Jaehwan','2025-05-15 06:32:29','2025-05-15 06:32:29'),(143,'AR829','Kim Junsu','2025-05-15 06:32:29','2025-05-15 06:32:29'),(144,'AR615','Kim Sungkyu','2025-05-15 06:32:29','2025-05-15 06:32:29'),(145,'AR928','Kim Wooseok','2025-05-15 06:32:29','2025-05-15 06:32:29'),(146,'AR230','Kim Yohan','2025-05-15 06:32:29','2025-05-15 06:32:29'),(147,'AR879','Kingdom','2025-05-15 06:32:29','2025-05-15 06:32:29'),(148,'AR676','Kwon Eunbi','2025-05-15 06:32:29','2025-05-15 06:32:29'),(149,'AR629','Kyuhyun','2025-05-15 06:32:29','2025-05-15 06:32:29'),(150,'AR733','Lee Seokhoon','2025-05-15 06:32:29','2025-05-15 06:32:29'),(151,'AR805','Lee Seungyoon','2025-05-15 06:32:29','2025-05-15 06:32:29'),(152,'AR633','Lisa','2025-05-15 06:32:30','2025-05-15 06:32:30'),(153,'AR341','LUNA','2025-05-15 06:32:30','2025-05-15 06:32:30'),(154,'AR403','Max Changmin','2025-05-15 06:32:30','2025-05-15 06:32:30'),(155,'AR049','Mirae','2025-05-15 06:32:30','2025-05-15 06:32:30'),(157,'AR157','Monsta X','2025-05-15 06:32:30','2025-05-15 06:32:30'),(158,'AR681','Moonbin & Sanha','2025-05-15 06:32:30','2025-05-15 06:32:30'),(159,'AR111','Moonbyul','2025-05-15 06:32:30','2025-05-15 06:32:30'),(160,'AR522','NCT 127','2025-05-15 06:32:30','2025-05-15 06:32:30'),(161,'AR946','NCT 2021','2025-05-15 06:32:30','2025-05-15 06:32:30'),(162,'AR307','NCT Dream','2025-05-15 06:32:30','2025-05-15 06:32:30'),(163,'AR621','NINE.i','2025-05-15 06:32:30','2025-05-15 06:32:30'),(164,'AR899','NMIXX','2025-05-15 06:32:30','2025-05-15 06:32:30'),(165,'AR381','NU\'EST','2025-05-15 06:32:30','2025-05-15 06:32:30'),(166,'AR188','Oh My Girl','2025-05-15 06:32:30','2025-05-15 06:32:30'),(167,'AR322','Omega X','2025-05-15 06:32:30','2025-05-15 06:32:30'),(168,'AR429','Onew','2025-05-15 06:32:30','2025-05-15 06:32:30'),(169,'AR853','ONEWE','2025-05-15 06:32:30','2025-05-15 06:32:30'),(170,'AR096','ONF','2025-05-15 06:32:30','2025-05-15 06:32:30'),(171,'AR572','OnlyOneOf','2025-05-15 06:32:30','2025-05-15 06:32:30'),(172,'AR410','P1Harmony','2025-05-15 06:32:30','2025-05-15 06:32:30'),(173,'AR924','Pentagon','2025-05-15 06:32:30','2025-05-15 06:32:30'),(174,'AR726','Purple Kiss','2025-05-15 06:32:30','2025-05-15 06:32:30'),(175,'AR918','Ravi','2025-05-15 06:32:30','2025-05-15 06:32:30'),(176,'AR128','Red Velvet','2025-05-15 06:32:30','2025-05-15 06:32:30'),(177,'AR688','Rocket Punch','2025-05-15 06:32:30','2025-05-15 06:32:30'),(178,'AR149','Seventeen','2025-05-15 06:32:30','2025-05-15 06:32:30'),(179,'AR662','Solar','2025-05-15 06:32:30','2025-05-15 06:32:30'),(180,'AR263','SMTOWN','2025-05-15 06:32:30','2025-05-15 06:32:30'),(181,'AR411','Suho','2025-05-15 06:32:30','2025-05-15 06:32:30'),(182,'AR481','StayC','2025-05-15 06:32:30','2025-05-15 06:32:30'),(183,'AR897','Stray Kids','2025-05-15 06:32:30','2025-05-15 06:32:30'),(184,'AR995','Super Junior','2025-05-15 06:32:30','2025-05-15 06:32:30'),(185,'AR344','Super Junior - D&E','2025-05-15 06:32:30','2025-05-15 06:32:30'),(186,'AR996','Taeyeon','2025-05-15 06:32:30','2025-05-15 06:32:30'),(187,'AR657','Tempest','2025-05-15 06:32:30','2025-05-15 06:32:30'),(188,'AR664','Tan','2025-05-15 06:32:30','2025-05-15 06:32:30'),(189,'AR586','The Boyz','2025-05-15 06:32:30','2025-05-15 06:32:30'),(190,'AR653','Treasure','2025-05-15 06:32:31','2025-05-15 06:32:31'),(191,'AR257','Trendz','2025-05-15 06:32:31','2025-05-15 06:32:31'),(192,'AR488','Twice','2025-05-15 06:32:31','2025-05-15 06:32:31'),(194,'AR339','Verivery','2025-05-15 06:32:31','2025-05-15 06:32:31'),(195,'AR842','Victon','2025-05-15 06:32:31','2025-05-15 06:32:31'),(196,'AR419','Viviz','2025-05-15 06:32:31','2025-05-15 06:32:31'),(197,'AR198','Weeekly','2025-05-15 06:32:31','2025-05-15 06:32:31'),(198,'AR351','WEi','2025-05-15 06:32:31','2025-05-15 06:32:31'),(199,'AR933','Wheein','2025-05-15 06:32:31','2025-05-15 06:32:31'),(200,'AR161','Wonho','2025-05-15 06:32:31','2025-05-15 06:32:31'),(201,'AR790','Wonpil','2025-05-15 06:32:31','2025-05-15 06:32:31'),(202,'AR851','WJSN Chocome','2025-05-15 06:32:31','2025-05-15 06:32:31'),(204,'AR509','Yoon Jisung','2025-05-15 06:32:31','2025-05-15 06:32:31'),(205,'AR687','Younite','2025-05-15 06:32:31','2025-05-15 06:32:31'),(206,'AR882','Yuju','2025-05-15 06:32:31','2025-05-15 06:32:31');
/*!40000 ALTER TABLE `artists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_batches`
--

LOCK TABLES `job_batches` WRITE;
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'0001_01_01_000000_create_users_table',1),(2,'0001_01_01_000001_create_cache_table',1),(3,'0001_01_01_000002_create_jobs_table',1),(4,'2025_05_15_013536_create_artists_table',1),(5,'2025_05_15_013542_create_albums_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('hYgzy4LgCaCVwujjmdXCJ7ok0wmJ8FwJE9z3jdn4',1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:138.0) Gecko/20100101 Firefox/138.0','YTo1OntzOjY6Il90b2tlbiI7czo0MDoianpXcHJ6MXV5WlQxcWVFaUpETjcwWUQ2ZGlIaldOcTBhQWtuUG0yMSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9kYXNoYm9hcmQiO31zOjM6InVybCI7YTowOnt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9',1747359393);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Test User','test@example.com','2025-05-15 05:18:22','$2y$12$9E8xOG6Qy/EiYJGQy9uAveAbtnkPOIpFGZga7sVwNyY.CS39T.Y5m','TKMynFqULuIsPs2YcQbkjTVCQnofVMW7YcFRi4VhaQ6XgsRSJjWq0qbuol3w','2025-05-15 05:18:22','2025-05-15 05:18:22');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-16 10:39:52
