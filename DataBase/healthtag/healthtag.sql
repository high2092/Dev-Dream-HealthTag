-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: healthtag
-- ------------------------------------------------------
-- Server version	8.0.20

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES UTF8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `healthtag`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `healthtag` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `healthtag`;

--
-- Table structure for table `arm`
--

DROP TABLE IF EXISTS `arm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `arm` (
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arm`
--

LOCK TABLES `arm` WRITE;
/*!40000 ALTER TABLE `arm` DISABLE KEYS */;
INSERT INTO `arm` VALUES ('감기','#팔아픔'),('결핵','#무기력함'),('류마티스 관절염','#무기력함'),('인두통','#무기력함'),('인후염','#무기력함'),('크론병','#무기력함'),('편도염','#무기력함');
/*!40000 ALTER TABLE `arm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chest`
--

DROP TABLE IF EXISTS `chest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chest` (
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chest`
--

LOCK TABLES `chest` WRITE;
/*!40000 ALTER TABLE `chest` DISABLE KEYS */;
INSERT INTO `chest` VALUES ('결핵','#호흡곤란'),('메니에르병','#답답함'),('백혈병','#호흡곤란'),('식도염','#흉통'),('심근경색증','#호흡곤란#흉통'),('심부전','#호흡곤란'),('역류성 식도염','#답답함#흉통'),('위경련','#답답함'),('인두통','#답답함'),('천식','#답답함#호흡곤란'),('패혈증','#호흡곤란'),('편도염','#답답함'),('폐렴','#호흡곤란');
/*!40000 ALTER TABLE `chest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diseases`
--

DROP TABLE IF EXISTS `diseases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `diseases` (
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `URL` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diseases`
--

LOCK TABLES `diseases` WRITE;
/*!40000 ALTER TABLE `diseases` DISABLE KEYS */;
INSERT INTO `diseases` VALUES ('감기','바이러스에 의해 코와 목 부분을 포함한 상부 호흡기계의 감염 증상으로, 사람에게 나타나는 가장 흔한 급성 질환 중 하나입니다. 재채기, 코막힘, 콧물, 인후통, 기침, 미열, 두통 및 근육통과 같은 증상이 나타나지만 대개는 특별한 치료 없이도 저절로 치유됩니다.','https://terms.naver.com/entry.nhn?docId=926577&cid=51007&categoryId=51007'),('결핵','결핵균에 의한 감염 때문에 발생하며, 현재까지 알려진 활동성 결핵 발생의 원인으로는 1년 이내의 최근 감염, 흉부 X선의 섬유화된 병변의 존재, 에이즈, 규폐증, 만성 신부전 및 투석, 당뇨, 면역 억제제 투여, 위장 절제술 및 공회장 우회술 등의 수술력, 특정 장기이식  시기, 영양실조 및 심한 저체중 등이 있습니다. 종종 감기로 혹은 다른 폐 질환 또는 흡연과 관련된 증상으로 취급되어 증상만 가지고는 결핵인지 아닌지 진단하기가 어려운 경우가 많습니다.','https://terms.naver.com/entry.nhn?docId=926990&cid=51007&categoryId=51007'),('고지혈증','대부분 증상이 없지만 일부에서 합병증이 발생하면 그와 연관된 증상이 생길 수 있습니다. 예를 들어 혈액 내에 중성지방이 크게 증가하면 췌장염이 발생할 수 있으며 췌장염의 증상은 복통으로 나타날 수 있습니다. 일부 환자의 경우 아킬레스건에 황색종(xanthoma; 콜레스테롤이나 이와 함께 다른 지질(脂質)이 피부에 침착하여 생기는 황색의 종양)이 생길 수 있습니다. 눈꺼풀에 황색판종(xanthelasma; 눈꺼풀에 생기는 가장 흔한 황색종의 형태)이 나타나기도 합니다.','https://terms.naver.com/entry.nhn?docId=926833&cid=51007&categoryId=51007'),('과민성 대장 증후군','장관의 기질적 이상 없이 만성적인 복통 또는 복부 불편감, 배변 장애를 동반하는 기능성 장 질환입니다. 명확한 원인은 아직 밝혀진 것이 없으며, 대장의 운동이상, 감각이상, 뇌-장관 상호작용, 감염 후에도 지속되는 저등급 염증, 면역체계 이상, 장내 미생물 무리의 변화, 유전 소인, 정신사회적 요인 등이 제시되고 있습니다.','https://terms.naver.com/entry.nhn?docId=926871&cid=51007&categoryId=51007'),('녹내장','녹내장의 증상은 크게 급성과 만성으로 나누어 설명할 수 있습니다. 급성 녹내장은 전체 녹내장의 약 10% 정도를 차지하며, 안압(안압의 정상범위는 10 ~ 21mmHg)이 갑자기 상승하면서 시력 감소, 두통, 구토, 충혈 등의 증상이 나타날 수 있습니다. 하지만 대부분의 녹내장은 시신경이 서서히 손상되므로 특별한 자각 증상을 느끼지 못하다가, 말기에 이르러 시야 장애 및 시력 저하 증상이 나타납니다.','https://terms.naver.com/entry.nhn?docId=926951&cid=51007&categoryId=51007'),('뇌동맥류','출혈 순간 두통이 발생하는데, 환자들은 망치로 머리를 세게 얻어맞은 듯하다거나 평생 이렇게 아픈 적은 없었다고 표현을 할 정도로 극심한 통증을 호소합니다. 출혈 자체로 인해 뇌막이 자극되어 오심, 구토나 뒷목이 뻣뻣한 증상이 나타나며, 심한 경우에는 밀폐된 공간인 두개골 내의 압력이 올라가면서 상대적으로 뇌가 심하게 압박되면 의식저하 또는 혼수상태에 빠지거나, 심한 경우에는 병원 도착하기 전에 사망하기도 합니다.','https://terms.naver.com/entry.nhn?docId=927099&cid=51007&categoryId=51007'),('뇌수막염','일반적으로 거미막과 연질막 사이에 존재하는 거미막 밑 공간(subarachnoid space, 거미막하공간)에 염증이 발생하는 다양한 질환을 통틀어 말합니다. 염증이 발생하는 가장 흔한 원인은 거미막 밑 공간에 바이러스나 세균이 침투하여 발생하는 수막염이지만, 특정 화학 물질에 의한 염증, 암세포의 뇌척수액공간으로의 파종에 의해 발생하는 염증 등이 있을 수 있습니다.','https://terms.naver.com/entry.nhn?docId=926867&cid=51007&categoryId=51007'),('뇌전증','여러가지 원인에 의해 발생하며, 뇌전증은 이러한 증상이 지속적으로 재발하는 상태이므로 그 원인이 매우 다양합니다. 주요한 원인으로는 뇌졸중, 선천기형, 두부외상, 뇌염, 뇌종양, 퇴행성뇌병증, 유전, 미숙아, 분만 전후의 손상 등을 들 수 있습니다.','https://terms.naver.com/entry.nhn?docId=926773&cid=51007&categoryId=51007'),('뇌졸중','뇌혈관의 병 이외에는 다른 원인을 찾을 수 없는 상태를 말합니다. 뇌혈관이 막혀서 발생하는 뇌경색 또는 허혈성 뇌혈관질환과, 뇌혈관이 터져서 발생하는 뇌출혈 또는 출혈성 뇌혈관질환으로 나뉩니다.','https://terms.naver.com/entry.nhn?docId=927338&cid=51007&categoryId=51007'),('당뇨병','인슐린의 분비량이 부족하거나 정상적인 기능이 이루어지지 않는 등의 대사질환의 일종으로, 고혈당으로 인하여 여러 증상이 발생할 수 있습니다.','https://terms.naver.com/entry.nhn?docId=926835&cid=51007&categoryId=51007'),('류마티스 관절염','초기에는 2/3 정도의 환자에서 피로감, 식욕 부진, 전신 쇠약감 등 애매모호한 증상이 먼저 나타날 수 있습니다. 특히 아침에 일어났을 때 관절이 뻣뻣해져 움직이기 힘들다가 시간이 한참 지나서(1시간 이상) 풀리는 조조강직 현상이 나타납니다. 이러한 전구 증상은 수주에서 수개월에 걸쳐 지속될 수 있습니다. 본격적인 관절증상은 염증이 침범된 관절의 통증과 종창입니다. 진단에 중요한 증상은 손에서 많이 발견됩니다. 류마티스 관절염은 손가락 중간 마디와 손가락이 시작되는 관절 부위를 잘 침범하고, 손가락 끝마디의 관절은 잘 침범하지 않는 경향이 있습니다. 침범된 관절은 만지면 아프고 움직임이 제한되며, 손바닥에 홍반이 동반되기도 합니다.','https://terms.naver.com/entry.nhn?docId=926627&cid=51007&categoryId=51007'),('메니에르병','발작성으로 나타나는 회전감 있는 어지럼증과 청력 저하, 이명(귀울림), 이충만감(귀가 꽉 찬 느낌) 등의 증상이 동시에 발현되는 질병입니다. 아직까지 병리와 생리 기전이 완전히 밝혀지지는 않았지만 내림프액의 흡수 장애로 내림프 수종이 생겨 발병하기도 하고, 알레르기가 원인이 된다는 보고가 있습니다.','https://terms.naver.com/entry.nhn?docId=927338&cid=51007&categoryId=51007'),('모야모야병','두개 내 내경동맥의 끝부분 즉, 전대뇌동맥과 중대뇌동맥 시작 부분에 협착이나 폐색이 보이고, 그 부근에 모야모야 혈관이라는 작은 이상 혈관이 관찰되는 것을 말합니다. 정확한 발병 원리나 원인은 밝혀지지 않았으며, 후천성과 선천성에 관한 논란이 계속되고 있습니다.','https://terms.naver.com/entry.nhn?docId=926907&cid=51007&categoryId=51007'),('백혈병','혈액 세포에 발생한 암으로서, 비정상적인 혈액세포(대부분 백혈구에서 유래하며 드물게 적혈구계, 혈소판 계에서도 가능)가 과도하게 증식하여 정상적인 백혈구와 적혈구, 혈소판의 생성이 억제되는 혈액암을 통칭합니다. 적혈구의 감소는 빈혈 증상(어지러움, 두통, 호흡곤란)을 가져오며, 혈소판의 감소는 출혈 경향을 일으킵니다. 또한, 과다 증식된 백혈병 세포 자체로 인하여 고열, 피로감, 뼈의 통 증, 설사, 의식저하, 호흡곤란, 출혈 경향을 일으킬 수 있습니다.','https://terms.naver.com/entry.nhn?docId=927324&cid=51007&categoryId=51007'),('식도염','식도 점막이 염증을 일으켜 짓무르는 질환으로, 감염이나 산, 알칼리의 자극, 약물 등에 의해 발생할 수 있으며 통증이나 출혈 등의 증상을 동반합니다.','https://terms.naver.com/entry.nhn?docId=926883&cid=51007&categoryId=51007'),('식중독 및 장염','섭취한 음식물의 독성 물질 때문에 발생한 일련의 증후군을 말합니다. 장염의 경우 대부분 음식 섭취와 관련이 있기 때문에 식중독과 구분하는 데에 있어 어려움이 있습니다.','https://terms.naver.com/entry.nhn?docId=926743&cid=51007&categoryId=51007'),('심근경색증','혈전이 혈관의 70% 이상을 막아서 심장 근육의 일부가 파괴(괴사)되는 질환입니다. \'가슴을 쥐어짠다\', \'가슴이 쎄한 느낌이 든다\', \'명치가 아프다\', \'턱끝이 아프다\', \'소화가 안 된다\', \'속이 쓰리다\' 라고 호소하는 경우가 많습니다.','https://terms.naver.com/entry.nhn?docId=926910&cid=51007&categoryId=51007'),('심부전','심장의 구조적 또는 기능적 이상으로 인해 심장이 혈액을 받아들이는 충만 기능(이완 기능)이나 짜내는 펌프 기능(수축 기능)이 감소하여 신체 조직에 필요한 혈액을 제대로 공급하지 못해 발생하는 질환입니다. 심장 혈관(관상동맥) 질환(예, 심근경색 등)이 2/3 정도로 가장 흔한 원인이고, 심장 근육(심근) 질환(예, 원인 미상이거나 유전적 원인인 심근병증, 바이러스 감염 등의 심근염 등), 고혈압, 판막 질환 등이 주요 원인입니다. 그 밖에도 장기간의 빠른 맥박(빈맥), 지속적인 과도한 음주, 극심한 스트레스 등도 원인을 제거하면 좋아지는 가역적인 심부전의 원인이 될 수 있고, 드물지만 출산 전후에 원인 미상의 심부전이 발생하는 산후(또는 임신 성) 심근(병)증도 있습니다.','https://terms.naver.com/entry.nhn?docId=926912&cid=51007&categoryId=51007'),('알츠하이머병','치매를 일으키는 가장 흔한 퇴행성 뇌질환으로, 초기에는 주로 최근 일에 대한 기억력에서 문제를 보이다가 진행하면서 언어기능이나 판단력 등  다른 여러 인지기능의 이상을 동반하게 되다가 결국에는 모든 일상 생활 기능을 상실하게 됩니다.','https://terms.naver.com/entry.nhn?docId=926690&cid=51007&categoryId=51007'),('역류성 식도염','위산이 식도로 역류함으로써 가슴쓰림, 가슴의 답답함, 속쓰림, 신트림, 목에 이물질이 걸린 듯한 느낌, 목 쓰림, 목소리 변화, 가슴통증 등이 발생합니다. 비만, 음주, 흡연 등이 악화 요인으로 작용할 수 있습니다.','https://terms.naver.com/entry.nhn?docId=927169&cid=51007&categoryId=51007'),('위경련','여러가지 원인에 의해 위장의 운동이 비정상적으로 증가하면서 과도한 수축을 일으켜 명치끝 부위에 심한 아픔이 생기는 것을 말합니다. 담석증, 췌장염, 위궤양, 급성 위염 등이 있을 때 위경련이 발생할 수 있으며, 스트레스나 식습관과도 관련이 있습니다.','https://terms.naver.com/entry.nhn?docId=927428&cid=51007&categoryId=51007'),('위궤양','복통이나 심와부(명치) 통증이 나타나는데, 특별히 어떤 질환에 특징적인 복통은 없으므로 증상만으로 질환을 감별하는 것은 불가능합니다. 위궤양은 메스꺼움, 체중감소 등이 나타나는 경우가 비교적 흔한데, 체중감소가 있는 사람에게 위궤양이 발견되면 악성 궤양인지를 반드시 감별 진단해야 합니다.','https://terms.naver.com/entry.nhn?docId=926888&cid=51007&categoryId=51007'),('인두통','침이나 음식을 삼킬 때 목에 통증이 발생하는 것을 말합니다. 급성 비인두염, 인두편도염, 감기 등과 함께  올 수 있고 전신 질환의 일부로 나타나기도 합니다. 의료기관을 방문하는 모든 환자 중 5% 정도를 차지하는 흔한 질환입니다.','https://terms.naver.com/entry.nhn?docId=927383&cid=51007&categoryId=51007'),('인후염','바이러스나 세균 등에 감염되어 인두와 후두에 염증이 생긴 경우를 말하며 급성과 만성이 있습니다. 급성은 급격한 기온 변화, 감기, 열성질환, 과로, 허약한 체질, 세균 감염 등의 원인으로 발생하고, 만성은 급성인후염이 반복해서 재발하거나 지나친 흡연, 음주, 과로, 자극성 음식 섭취, 목의 혹사, 인후두 역류질환 등이 원인이 되어 나타납니다. 드물게는 자극성 가스나 화학물질, 화학증기를 들이마시거나 부비동 등 인접 부위로부터 염증이 파급되어 생길 수도 있습니다.','https://terms.naver.com/entry.nhn?docId=927021&cid=51007&categoryId=51007'),('임파선염','임파선이 비대해지거나 임파선에 염증 반응이 일어나는 증상입니다. 대부분 특별한 치료가 필요하지 않은 양성이거나 일시적인 바이러스 감염증 등에 의한 경우가 많습니다.','https://terms.naver.com/entry.nhn?docId=926607&cid=51007&categoryId=51007'),('천식','기관지에 염증이 발생해서 가래가 많아지고, 여러 가지 자극으로 인해 기관지가 수축하여 공기가 통과하기 쉽지 않아 천식 증상이 나타납니다. 대표적인 천식 증상은 천명, 호흡곤란, 가슴 답답함, 기침 등입니다.','https://terms.naver.com/entry.nhn?docId=926973&cid=51007&categoryId=51007'),('크론병','입에서 항문까지 소화관 전체에 걸쳐 어느 부위에서든지 발생할 수 있는 만성 염증성 장질환입니다. 크론병의 원인은 아직 정확히 알려져 있지 않지만, 흡연이 크론병의 발생을 촉진한다는 사실이 밝혀져 있습니다.','https://terms.naver.com/entry.nhn?docId=926899&cid=51007&categoryId=51007'),('패혈증','원인은 미생물에 의한 감염입니다. 신체의 모든 장기에서 감염될 수 있습니다. 폐렴, 신우신염, 뇌막염, 봉와직염, 감염성 심내막염, 복막염, 욕창, 담낭염, 담도염 등이 패혈증의 원인이 될 수 있습니다.','https://terms.naver.com/entry.nhn?docId=926618&cid=51007&categoryId=51007'),('편도결석','별 증상이 없이 지낼 수도 있으나 주로 입 냄새가 나고, 양치질하다가 입에서 쌀알 같은 노란 알갱이가 나오기도 합니다. 목이 아프거나 침 삼킬 때 목에 뭔가 걸린 것 같은 느낌 혹은 간질간질하거나 귀가 아픈 느낌이 있을 수 있습니다.','https://terms.naver.com/entry.nhn?docId=927022&cid=51007&categoryId=51007'),('편도염','대부분의 경우 갑작스러운 고열과 오한이 나타납니다. 뒤이어 인후통이 발생하고, 주변 인후 조직의 임파선을 침범하는 인후염이 생길 수 있고,  인두근육에 염증이 생기면 연하곤란 증상이 나타납니다. 환자는 두통, 전신 쇠약감, 관절통 등의 신체 전반에 걸친 증상을 호소합니다. 혀의 표면이나 구강 내에 두껍고 끈적끈적한 점액이 있을 수 있습니다. 압통성의 경부임파선 비대 역시 흔하게 나타납니다. 이러한 증상들은 대개 4~6일 정도 지속되고, 합병증이 없으면 점차 사라집니다.','https://terms.naver.com/entry.nhn?docId=926740&cid=51007&categoryId=51007'),('폐렴','폐의 세기관지 이하 부위에 발생하는 염증입니다. 가장 흔한 원인은 미생물로 인한 감염이 원인으로, 세균이나 바이러스이고, 드물게 곰팡이에 의한 감염이 있을 수 있습니다. 미생물 에 의한 감염성 폐렴 이외에 화학물질이나 구토물등의 이물질의 흡인, 가스의 흡인, 방사선 치료 등에 의해 비감염성 폐렴이 발생할 수도 있습니다.','https://terms.naver.com/entry.nhn?docId=926619&cid=51007&categoryId=51007'),('하지정맥류','다리가 무겁고 쉽게 피곤해진다고 느끼거나 때로는 아리거나 아픈 느낌이 들기도 합니다. 오래 서 있거나 의자에 앉아 있으면 증상이 더 심해질 수 있습니다. 겉으로 보면 피부에 거미줄 모양의 가는 실핏줄처럼 나타나기도 합니다.','https://terms.naver.com/entry.nhn?docId=926736&cid=51007&categoryId=51007');
/*!40000 ALTER TABLE `diseases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `head`
--

DROP TABLE IF EXISTS `head`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `head` (
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `head`
--

LOCK TABLES `head` WRITE;
/*!40000 ALTER TABLE `head` DISABLE KEYS */;
INSERT INTO `head` VALUES ('감기','#발열#두통'),('결핵','#발열#두통#구토'),('과민성 대장 증후군','#두통#우울'),('녹내장','#두통#구토'),('뇌동맥류','#두통#구토#인지기능저하'),('뇌수막염','#발열#두통'),('뇌전증','#발작'),('뇌졸중','#두통#어지러움'),('당뇨병','#피로'),('류마티스 관절염','#피로'),('메니에르병','#구토#어지러움'),('모야모야병','#두통#구토#어지러움'),('백혈병','#발열#두통#피로#어지러움'),('식도염','#발열#구토'),('식중독 및 장염','#발열'),('심근경색증','#구토'),('심부전','#피로#우울'),('알츠하이머병','#우울#기억력감퇴#수면장애#인지기능저하'),('위경련','#구토#어지러움'),('인두통','#발열#두통#구토'),('인후염','#발열#두통'),('임파선염','#발열#피로'),('크론병','#발열'),('패혈증','#구토'),('편도염','#발열#두통#구토'),('폐렴','#발열#두통#피로#구토');
/*!40000 ALTER TABLE `head` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leg`
--

DROP TABLE IF EXISTS `leg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `leg` (
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leg`
--

LOCK TABLES `leg` WRITE;
/*!40000 ALTER TABLE `leg` DISABLE KEYS */;
INSERT INTO `leg` VALUES ('감기','#다리아픔'),('결핵','#무기력함'),('류마티스 관절염','#무기력함'),('인두통','#무기력함'),('인후염','#무기력함'),('크론병','#무기력함'),('편도염','#무기력함'),('하지정맥류','#무기력함#다리아픔#혈관돌출');
/*!40000 ALTER TABLE `leg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `neck`
--

DROP TABLE IF EXISTS `neck`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `neck` (
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `neck`
--

LOCK TABLES `neck` WRITE;
/*!40000 ALTER TABLE `neck` DISABLE KEYS */;
INSERT INTO `neck` VALUES ('감기','#침삼킬때아픔#기침'),('결핵','#기침#가래#혈담'),('당뇨병','#목마름'),('식도염','#침삼킬때아픔#기침'),('역류성 식도염','#침삼킬때아픔'),('위경련','#침삼킬때아픔'),('인두통','#침삼킬때아픔#부어오름'),('인후염','#침삼킬때아픔#기침#가래#간질간질함'),('천식','#기침#가래#혈담'),('편도결석','#침삼킬때아픔#간질간질함'),('폐렴','#기침#가래');
/*!40000 ALTER TABLE `neck` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stomach`
--

DROP TABLE IF EXISTS `stomach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stomach` (
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stomach`
--

LOCK TABLES `stomach` WRITE;
/*!40000 ALTER TABLE `stomach` DISABLE KEYS */;
INSERT INTO `stomach` VALUES ('결핵','#구토#소화불량'),('고지혈증','#복통'),('과민성 대장 증후군','#복통#설사'),('대장암','#설사#혈변#변비'),('메니에르병','#구토#설사'),('백혈병','#설사'),('식중독 및 장염','#구토#복통#설사'),('심근경색증','#구토#복통#소화불량#토혈'),('역류성 식도염','#속쓰림'),('위경련','#구토'),('위궤양','#구토#복통#메스꺼움#토혈'),('인두통','#구토'),('인후염','#변비'),('크론병','#복통#설사'),('패혈증','#구토#설사#혈변'),('폐렴','#구토#설사#소화불량');
/*!40000 ALTER TABLE `stomach` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-23 22:18:52
