-- MySQL dump 10.13  Distrib 9.0.0, for Linux (x86_64)
--
-- Host: localhost    Database: edufocus
-- ------------------------------------------------------
-- Server version	9.0.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `answer`
--

DROP TABLE IF EXISTS `answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `answer` (
  `is_correct` bit(1) DEFAULT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `quiz_id` bigint DEFAULT NULL,
  `report_id` bigint DEFAULT NULL,
  `user_answer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKto2httb0ape4w9nvnyqxwqg79` (`quiz_id`),
  KEY `FK8xdbl6buwvae87o7tpny15o3x` (`report_id`),
  CONSTRAINT `FK8xdbl6buwvae87o7tpny15o3x` FOREIGN KEY (`report_id`) REFERENCES `report` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FKto2httb0ape4w9nvnyqxwqg79` FOREIGN KEY (`quiz_id`) REFERENCES `quiz` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=283 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answer`
--

LOCK TABLES `answer` WRITE;
/*!40000 ALTER TABLE `answer` DISABLE KEYS */;
INSERT INTO `answer` VALUES (_binary '',255,361,165,'2'),(_binary '',256,361,161,'2'),(_binary '\0',257,361,160,NULL),(_binary '\0',258,362,165,'1'),(_binary '\0',259,362,160,'1'),(_binary '\0',260,362,161,'3'),(_binary '',261,363,165,'최인국'),(_binary '\0',262,363,160,'박정민 바보'),(_binary '\0',263,363,161,'최'),(_binary '',264,364,165,'28'),(_binary '\0',265,364,160,'몰라요'),(_binary '\0',266,364,161,'97'),(_binary '\0',267,361,164,NULL),(_binary '\0',268,362,164,'1'),(_binary '\0',269,363,164,'최인호'),(_binary '',270,364,164,'28'),(_binary '\0',271,361,166,NULL),(_binary '\0',272,362,166,'4'),(_binary '\0',273,363,166,'김인국'),(_binary '\0',274,364,166,'25살'),(_binary '\0',275,361,163,'3'),(_binary '\0',276,362,163,'1'),(_binary '',277,363,163,'최인국'),(_binary '\0',278,364,163,'98년생'),(_binary '\0',279,361,162,'3'),(_binary '\0',280,362,162,NULL),(_binary '\0',281,363,162,'황인국'),(_binary '',282,364,162,'28');
/*!40000 ALTER TABLE `answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board`
--

DROP TABLE IF EXISTS `board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board` (
  `view_count` int DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `id` bigint NOT NULL,
  `lecture_id` bigint DEFAULT NULL,
  `modified_at` datetime(6) DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKf3c25t71mkf9k6vk4w9ubcprp` (`lecture_id`),
  KEY `FKfyf1fchnby6hndhlfaidier1r` (`user_id`),
  CONSTRAINT `FKf3c25t71mkf9k6vk4w9ubcprp` FOREIGN KEY (`lecture_id`) REFERENCES `lecture` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FKfyf1fchnby6hndhlfaidier1r` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` VALUES (0,'2024-08-09 17:17:01.407000',52,3,'2024-08-14 13:23:29.223000',5,'announcement','입문자를 위해 준비한\n[프로그래밍 언어] 강의입니다.\n\n이미 2만명 이상이 학습하고 만족한 최고의 프로그래밍 입문 강의. 인프런이 비전공자 위치에서 직접 기획하고 준비한 프로그래밍 입문 강의로, 프로그래밍을 전혀 접해보지 못한 사람부터 실제 활용 가능한 프로그래밍 능력까지 갈 수 있도록 도와주는 강의입니다.','강의 시작 전 필독'),(0,'2024-08-09 17:42:19.468000',55,4,'2024-08-09 17:42:19.468000',6,'announcement','강의 시작 전까지 mysql 미리 설치해주시기 바랍니다.','8월 12일 강의 시작 전 준비사항'),(0,'2024-08-09 17:43:22.142000',56,6,'2024-08-09 17:43:22.142000',6,'announcement','https://spring.io/tools 해당 주소에서 Spring Tools 4 for Eclipse 다운로드하여 설치해주시기 바랍니다.','강의 시작 전 준비사항'),(0,'2024-08-09 17:44:42.025000',58,5,'2024-08-09 17:44:42.025000',9,'announcement','8.21(수) 오후 6시 OT + 첫번째 수업 진행 예정입니다!\n\n온라인 라이브 수업인만큼 적극적으로 참여해주시고 우수 참여자에게 기프티콘, 쿠폰 등 상품이 전달될 예정입니다.\n\n그럼 21일에 만나요!','1주차 수업 안내 공지입니다!'),(0,'2024-08-12 00:35:34.359000',102,9,'2024-08-12 00:35:34.359000',9,'announcement','안녕하세요, 피그마를 활용한 UI 디자인 - 입문편 강의를 진행할 디자인튜터입니다 😀\n\n이 강의는 UI 디자인 기초와 피그마 사용법에 대해 배우는 강의로 매주 금요일 오후 5시부터 3시간동안 진행됩니다.\n강의가 온라인으로 진행되는 만큼 미리 사이트를 통해 접속을 준비해주시고 열심히 수업에 참여해주시면 좋을 것 같습니다.\n\n그럼 첫 수업날 뵙겠습니다! 😀','반갑습니다!'),(0,'2024-08-12 09:32:26.667000',254,3,'2024-08-12 09:32:26.667000',5,'announcement','잘부탁드립니다.','안녕하세요'),(0,'2024-08-12 10:31:42.473000',302,4,'2024-08-12 16:20:30.125000',6,'announcement','공지사항입니다\n','공지사항입니다.'),(0,'2024-08-13 16:25:13.529000',507,9,'2024-08-13 16:25:13.529000',9,'freeboard','안녕하세요 여러분\n\n이 게시판은 자유롭게 사용하시면 됩니다.','안녕하세요'),(0,'2024-08-14 09:04:09.752000',555,5,'2024-08-14 09:59:54.277000',9,'freeboard','ㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤ','dasdㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤ'),(0,'2024-08-14 09:59:16.384000',572,5,'2024-08-14 09:59:16.384000',7,'freeboard','d','d'),(0,'2024-08-14 14:10:12.862000',634,3,'2024-08-14 14:10:12.862000',5,'freeboard','오늘 수업하면서 궁금했던점 댓글이나 게시판에 글 올려주세요~~\n하나하나 답변 드리겠습니다.','오늘 테스트 궁금했던점 자유롭게 질문하시면 됩니다.'),(0,'2024-08-14 14:50:29.626000',635,3,'2024-08-14 14:50:29.626000',5,'freeboard','구디쪽 오전 10시에 하실분 있으실가요?\n\n인원은 4명정도 생각하고 있습니다.','주말에 모각코 하실분 구합니다~~'),(0,'2024-08-14 14:51:08.441000',636,3,'2024-08-14 14:51:08.441000',5,'freeboard','주말 오후 7시쯤 모각코 하실분 구합니다.\n\n인원은 3명 생각하고 있습니다.','광교쪽 모각코 인원 구합니다.');
/*!40000 ALTER TABLE `board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board_seq`
--

DROP TABLE IF EXISTS `board_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board_seq`
--

LOCK TABLES `board_seq` WRITE;
/*!40000 ALTER TABLE `board_seq` DISABLE KEYS */;
INSERT INTO `board_seq` VALUES (701);
/*!40000 ALTER TABLE `board_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat_user`
--

DROP TABLE IF EXISTS `chat_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chat_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `lecture_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_7sknreslsg70q7sdgwlb55edp` (`user_id`),
  KEY `FKe8jyq3sxr1qcyl4vw3i7mbh3u` (`lecture_id`),
  CONSTRAINT `FK3my5637ob80l32xwbdgrtvms` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKe8jyq3sxr1qcyl4vw3i7mbh3u` FOREIGN KEY (`lecture_id`) REFERENCES `lecture` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat_user`
--

LOCK TABLES `chat_user` WRITE;
/*!40000 ALTER TABLE `chat_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `chat_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `choice`
--

DROP TABLE IF EXISTS `choice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `choice` (
  `num` int DEFAULT NULL,
  `id` bigint NOT NULL,
  `quiz_id` bigint DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKm4x0o7gvd6rudj9m5mv327rk4` (`quiz_id`),
  CONSTRAINT `FKm4x0o7gvd6rudj9m5mv327rk4` FOREIGN KEY (`quiz_id`) REFERENCES `quiz` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `choice`
--

LOCK TABLES `choice` WRITE;
/*!40000 ALTER TABLE `choice` DISABLE KEYS */;
INSERT INTO `choice` VALUES (1,13,6,'상호 배제'),(2,14,6,'점유 대기'),(3,15,6,'선점'),(4,16,6,'순환 대기'),(1,17,7,'다대일 모델'),(2,18,7,'일대일 모델'),(3,19,7,'다대다 모델'),(4,20,7,'일대다 모델'),(1,23,11,'GET'),(2,24,11,'POST'),(3,25,11,'SELECT'),(4,26,11,'DELETE'),(1,27,12,'Integer'),(2,28,12,'long'),(3,29,12,'float'),(4,30,12,'boolean'),(1,452,115,'@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@'),(2,453,115,'sad'),(1,502,125,'안녕하세요 😀'),(1,503,126,'알겠습니다 😀'),(1,504,127,'알겠습니다 😀'),(1,505,128,'알겠습니다 😀'),(1,558,149,'홀짝홀'),(2,559,149,'홀홀홀'),(3,560,149,'에러가 난다.'),(4,561,149,'짝짝짝'),(1,562,151,'<class \'int\'>'),(2,563,151,' <class \'str\'>'),(3,564,151,'<class \'list\'>'),(4,565,151,' 보기 중에 답이 없다.'),(1,566,152,' 슈퍼맨'),(2,567,152,' 럭키'),(3,568,152,' 배트맨'),(4,569,152,'에러가 난다.'),(1,597,233,'1'),(1,828,361,'홀짝홀'),(2,829,361,'홀홀홀'),(3,830,361,'짝짝짝'),(4,831,361,'짝홀짝'),(1,832,362,'논리적 사고'),(2,833,362,'협업'),(3,834,362,'학습의지'),(4,835,362,'열정'),(1,884,345,'36446'),(1,885,357,'ㅇㅎㅁㅎㄷㄱ'),(1,886,358,'12424352ㄱㄷ3');
/*!40000 ALTER TABLE `choice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `choice_seq`
--

DROP TABLE IF EXISTS `choice_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `choice_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `choice_seq`
--

LOCK TABLES `choice_seq` WRITE;
/*!40000 ALTER TABLE `choice_seq` DISABLE KEYS */;
INSERT INTO `choice_seq` VALUES (951);
/*!40000 ALTER TABLE `choice_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment` (
  `board_id` bigint DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `id` bigint NOT NULL,
  `modified_at` datetime(6) DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKlij9oor1nav89jeat35s6kbp1` (`board_id`),
  KEY `FK8kcum44fvpupyw6f5baccx25c` (`user_id`),
  CONSTRAINT `FK8kcum44fvpupyw6f5baccx25c` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKlij9oor1nav89jeat35s6kbp1` FOREIGN KEY (`board_id`) REFERENCES `board` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (555,'2024-08-14 09:04:14.445000',452,NULL,9,'ㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤ'),(555,'2024-08-14 09:04:17.284000',453,NULL,9,'ㅤㅤㅤㅤㅤㅤㅤ'),(634,'2024-08-14 14:11:22.253000',461,NULL,7,'인터프리터의 개념이 잘 잡히지 않습니다. 한번만 더 설명해 주세요~~'),(636,'2024-08-16 09:24:54.924000',463,NULL,41,'이번 주말인가요?!');
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment_seq`
--

DROP TABLE IF EXISTS `comment_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment_seq`
--

LOCK TABLES `comment_seq` WRITE;
/*!40000 ALTER TABLE `comment_seq` DISABLE KEYS */;
INSERT INTO `comment_seq` VALUES (551);
/*!40000 ALTER TABLE `comment_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lecture`
--

DROP TABLE IF EXISTS `lecture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lecture` (
  `end_date` date DEFAULT NULL,
  `online` tinyint(1) DEFAULT '0',
  `start_date` date DEFAULT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plan` text COLLATE utf8mb4_unicode_ci,
  `time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK6jhhcg8ie5o0ggxsfkbtajrsy` (`user_id`),
  CONSTRAINT `FK6jhhcg8ie5o0ggxsfkbtajrsy` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lecture`
--

LOCK TABLES `lecture` WRITE;
/*!40000 ALTER TABLE `lecture` DISABLE KEYS */;
INSERT INTO `lecture` VALUES ('2024-11-29',0,'2024-08-16',3,5,'입문자를 위해 준비한\n[프로그래밍 언어] 강의입니다.이런 걸 배워요!\n\n입문자도 쉽게 할 수 있는 프로그래밍 입문\n파이썬 기초 문법과 활용법을 배울 수 있어요\n\n✅ 파이썬 기초~기초 복습\n✅ 파이썬 중급~고급 문법\n✅ 파이썬 메타 클래스 설계\n✅ 동시성, 병렬성, Thread, Processing 프로그래밍','/static/f3f713f8-b623-49fe-befa-81d0ff9bc92a_pngwing.com.png','수업 자료가 제공되는 강의입니다.\n\n\n섹션 0. 파이썬 시작해봐요\n섹션 1. 강의자료\n섹션 2. 파이썬 완전 기초\n섹션 3. 파이썬 기초 자료형\n섹션 4. 파이썬 흐름 제어\n섹션 5. 파이썬 함수 및 입력\n섹션 6. 파이썬 클래스 및 모듈, 패키지\n섹션 7. 파이썬 예외처리\n섹션 8. 파이썬 기본 함수\n섹션 9. 파이썬 파일 쓰기\n섹션 10. 실전 프로젝트','월 수 금 18:00 ~ 19:30 ','프로그래밍 시작하기 : 파이썬 입문'),('2024-08-28',0,'2024-08-10',4,6,'1. 자료구조\n피상적인 이해만으로는 면접에서 절대 통과할 수 없습니다. 동적배열, 연결리스트, BST등의 자료구조를 메모리 단계에서 부터 세세하게 파헤쳐 봅니다. \n\n\n2. 운영체제\n개발자들이 공부하기 제일 어려워 하는 운영체제. Multi-process와 Multi thread의 차이점을 확실히 이해하고 더 나아가 가상 메모리에 대해서도 자세히 살펴봅니다.\n\n\n3. 데이터베이스\n데이터베이스의 기초 용어에 대한 질문들부터 트랜잭션, 데드락 그리고 인덱스까지! 특히 index를 구성하고 있는 B+tree의 구조까지 상세하게 이해할 수 있습니다.\n\n\n4. 네트워크\n모든 개발자들은 네트워크 질문을 피해갈 수 없습니다. 실무에서 자주 사용되는 HTTP부터 쿠키, 세션, TCP/UDP등을 깔끔하게 답변할 수 있도록 배워봅니다.','/static/608b001b-6b2f-4f37-a849-3ab17a9b2801_0.png','Point 1.\n핵심만 간결하게! \n모범답안 제공\n전공면접 질문에는 명확한 정답이 있습니다.\n핵심만 담은 간결한 답변은 면접관의 의심을 지우고, 꼬리 질문을 차단합니다.\n저자의 내공을 담아 작성한 모범답안을 면접 전날 읽고 가세요.\n\nPoint 2.\n면접 합격자들의\n생생한 꿀팁\n면접 고수들이 CS 질문을 받았을 때, 어떤 생각을 하면서 답변을 할까요?\n\"이 질문은 이런 의도로 묻는 거구나!\" 라는 생각 위에서 답변을 합니다.\n긴장되는 면접장에서 무엇을 떠올려야 하는지 합격자들의 생각을 엿보고 가세요!\n\nPoint 3.\n생소한 용어도 OK!\n우리의 CS공부를 힘들게 하는 온갖 IT용어들...\n이제는 따로 찾아보느라 시간 쓰지 마세요.\n생소한 용어는 직접 친절하게 설명해 드릴게요\n\nPoint 4.\n삽화 & 애니메이션으로 확실한 이해를! \n효과적인 설명을 위해 자체 제작한 애니메이션, 삽화를 적극적으로 활용합니다.\nCS 면접을 위해 알아야 할 배경지식, 겁먹지 마세요!\n친절한 강의와 전자책으로 한 방에 이해시켜 드립니다.\n\nPoint 5.\n꼬리에 꼬리를 무는\n꼬리질문 완벽 커버\n취준생들이 면접에서 가장 두려워하는 것, 바로 꼬리집문입니다.\n걱정은 그만! CS면접의 꼬리 질문은 충분히 예측이 가능합니다.\n면접 고수 저자들이 직접 선별한 꼬꼬무와 핵심 답변을 제공합니다.','평일 오후 8시','기출로 대비하는 개발자 전공면접 [CS 완전정복]'),('2024-09-18',0,'2024-08-21',5,9,'PM이라면 반드시 알아야할 UX/UI\n\n[🖼강의 소개]\nUX 설계 실무를 학습해요 \n강좌를 통해 더블 유저 시나리오, 정보구조, 프로토타이핑, 와이어프레임, 메인 페이지 시안 Ab 테스트 등 UX 설계에 대한 전반적인 이해를 높일 수 있어요. UX 디자인 프로세스에서 논리적 사고에 의한 화면 UX 전략 스킬도 높일 수 있어요.\n\n[🙆‍♀️누구나 들을 수 있는, 누구나 필요한 강의]\nUX 방법론에 대해 더 알고자 하는 분\nUX 프로세스에 대해 더 알고자 하는 분\n신규, 리뉴얼, 애자일 UX 환경에서 ux 설계 실무에 대해 더 알고자 하는 분\n논리적 사고에 의한 UX 설계하는 방법에 대해 더 알고자 하는 분\n\n[💡이 강의를 수강한다면]\n유저 컨텍스트 기반 UX 설계를 어떻게 수립해야 히는지 기초를 튼튼히 할 수 있어요.\n신규, 리뉴얼, 애자일 등 UX 환경에서 UX 설계에 대한 UX 지식을 얻게 돼요. \n실무에 적용할 수 있는 UX 설계 방법에 대한 A-Z 스킬을 얻게 돼요.\n논리적 사고에 의한 UX 설계하는 방법에 대해 UX 스킬을 얻게 돼요. \n내가 작성한 화면 설계서에 대해 실 사용자 대상 사용자 조사 방법에 UX 리서치 지식을 얻게 돼요. \n\n[✨강의 특징]\nStep1. UX 디자인 프로세스 환경에서 유저 컨텍스트 기반 논리적 사고에 의해 UX 설계를 해야 하는지 학습합니다.\n- 유저 시나리오\n- 정보 구조(IA)\n- 카드 소팅 (Card Sorting)\n- 메뉴 구조 및 레이블 사용자 조사\n- 와이어프레임\n- 프로토타이핑\n- 메인 디자인 시안 테스트\n\nStep 2. 실무 사례 및 관련 Q&A, Quiz 등 쌍방향 커뮤니케이션으로 묻고 답하는 형태의 UX 강좌로 구성되어 있습니다.\n','/static/81fcb9cc-ce12-4f76-a032-8aa927bbdc0e_UIUX_CLASS1.png','1주차. 유저 시나리오\n- 유저 시나리오 개념\n- 스토리보드\n- 유저 플로우\n\n2주차. 사용자 조사\n- 사용자 조사 개념\n\n3주차. 와이어프레임\n- 와이어프레임 개념\n- 와이어프레임 요소\n- 와이어프레임 툴 사용해보기\n\n4주차. 프로토타이핑\n- 프로토타이핑 개념\n- 프로토타이핑 요소\n- 프로토타이핑 툴 사용해보기\n\n5주차. 실전 프로젝트','매주 수요일 저녁 6시 ~ 8시','PM이 반드시 알아야 할 UX/UI'),('2024-08-24',0,'2024-08-16',6,6,'웹 애플리케이션을 개발할 때 필요한 모든 웹 기술을 기초부터 이해하고, 완성할 수 있습니다. 스프링 MVC의 핵심 원리와 구조를 이해하고, 더 깊이있는 백엔드 개발자로 성장할 수 있습니다','/static/3f969226-d71a-4381-8931-bdf8d04871db_스프링.png','자바 웹 기술의 시작부터 최신 실무 기술까지\n이 강의는 20년 전으로 돌아갑니다. 자바 웹 기술의 기초라 할 수 있는 서블릿부터 시작해서 JSP, MVC 패턴, MVC 프레임워크, 그리고 스프링 MVC의 탄생부터 실무에서 주로 사용하는 최신 스프링 MVC의 사용법까지, 모든 것을 코드로 여러분과 함께 만들어보면서 단계적으로 알아갑니다. 과거에 어떤 불편한 점이 있어서 다음 기술이 탄생했고, 어떤 점들이 개선되었는지 그 이유를 직접 코딩하면서 자연스럽게 이해할 수 있습니다.','토, 일 오후 3시','스프링 MVC - 백엔드 웹 개발 핵심 기술'),('2024-09-27',0,'2024-08-23',9,9,'입문자를 위해 준비한 [UX/UI, 그래픽 디자인] 강의입니다.\n디자인을 공부해본 적이 없는 비전공자 분들, 이제 막 UX디자인을 공부하기 시작한 학생들, UX 및 UI 디자인 취준생 분들을 위해 준비한 \"피그마로 UI디자인하기 A to Z\" 수업입니다. 포토샵 등 다른 툴을 전혀 모르는 분도 피그마만 활용해 UI디자인 전문가가 될 수 있도록 기초부터 고급 기능까지 알려드립니다.\n\n[👨‍🎓 강의 대상]\n✔ 프로덕트 디자인, UX/UI 디자인 입문자\n✔ UX/UI 디자이너가 되고싶으신 분\n✔ 디자이너와의 협업을 위해 피그마를 마스터하고 싶은 분들\n\n[❓ 왜 피그마를 배워야할까?]\n✔ 하나로 모든 걸 할 수 있는 올 인 원 툴\n피그마를 사용하면 와이어프레임부터 핸드오프까지 UI 디자인 프로세스의 거의 전 과정을 하나의 앱으로 해결할 수 있어요!\n\n✔ 협업에 최적화된 온라인 기반의 디자인 툴\n피그마는 온라인 기반의 툴인 만큼 실시간으로 팀원 또는 클라이언트들과 협업을 하고 커뮤니케이션하기에 정말 좋아요!\n디자이너와 실시간으로 디자인 작업을 함께하고, 개발자와 작업물을 공유하고, 댓글은 작성하고 공유하는 등 여러 기능이 준비되어 있어요\n\n[🙋‍♂️ 자주 묻는 질문]\n✔ 디자인이 처음인데 괜찮을까요?\n네 괜찮습니다! 입문편인 만큼 비전공자나 처음 디자인을 접하시는 분들도 기초 지식을 배우고 피그마를 잘 사용할 수 있도록 차근차근 알려드릴 계획입니다.\n\n✔ 선수과목이 있나요?\n아니요! 선수과목은 없습니다. 이 강의는 피그마와 UI 디자인 기초 강의로 좀 더 많은 내용을 배우고 싶다면 추후에 개설될 예정인  \'피그마를 활용한 UI 디자인 - 응용편\'강의를 참고해주세요','/static/bf525359-b283-41ea-b183-31140d66370b_figma_logo.png','0주차. OT\n1주차. UX/UI 디자인의 단계별 핵심 개념 이해하기\n2주차. 피그마 기초\n3주차. 피그마 응용\n4주차. 실전 예제 1 - 와이어프레임 만들기 1\n5주차. 실전 예제 2 - 와이어프레임 만들기 2\n6주차. 실전 예제 3 - 핸드오프(최종 전달물) 만들기','매주 금요일 오후 5시 ~ 8시','피그마를 활용한 UI 디자인 - 입문편'),('2024-12-31',0,'2024-09-01',68,5,'입문자를 위해 준비한\n[딥러닝 · 머신러닝] 강의입니다.\n이런 걸 배워요!\n\n✅머신러닝 작업의 전체적인 흐름\n✅머신러닝 기본부터 고급모델 쉽게 사용하는 법\n✅파이썬을 이용한 머신러닝 모델 구축\n\n처음이라도, 수학 잘 몰라도 OK! \n파이썬 ML 모델 구축을 시작해보세요.',NULL,'기초부터 실습까지 머신러닝 101\n머신러닝에 대한 전체적인 내용을 쉽게 다룹니다. \n파이썬, Scikit-Learn을 통해 머신러닝 모델을 쉽게 구현하고 실습을 진행합니다.\n경진대회, 실무에 적용할 수 있는 머신러닝 필수 지식!\n수학을 잘 모르시는 분들도 OK! 이 강의는 머신러닝이 처음인 분들이 데이터 전처리부터 고급 머신러닝 기술까지 빠르고 효율적으로 학습하는 데 초점을 맞춘 강의입니다.\n\n수식보다는 데이터 전처리 기술, 그리고 각 머신러닝 모델의 개념과 장단점에 집중해 강의를 진행하며 실습을 통해 곧바로 적용해볼 수 있도록 내용이 구성되어 있습니다. 또한 이 강의 하나로 머신러닝 작업의 플로우를 한번에 이해하실 수 있습니다.\n\n경진대회나 실무에 적용할 수 있도록 필수가 되는 머신러닝 지식을 제공해드리기 위해 강의를 만들었습니다. 함께 도전해봅시다!\n\n이런 분들께 추천합니다 💡\n\n머신러닝/데이터 분석 작업을 한번에 이해하고 싶은 분','매주 토요일 13:00 ~ 17:30','[파이썬] 수학없이 머신러닝 쉽게 이해하고 구현하기'),('2024-12-31',0,'2024-09-01',72,5,'초급자를 위해 준비한\n[웹 개발, 프론트엔드] 강의입니다.','/static/178770c4-af7e-4ec1-9d2b-50d8fb97a9fa_3dReact.svg.png','혹시, 이런 고민 중이시라면 주목!💡 \nCase 1 \n리액트가 가장 인기라는데, 어디서부터 시작할지 모르겠어요!\n\"프론트엔드 채용 시장에서 가장 인기가 많은 도구인 리액트,\n하지만 막상 시작하려니 어디서부터 어떻게 해야 할 지 감이 오지 않습니다.\"\n\nCase 2 \n나의 리액트 개발 프로세스에 대한 확신이 없어요.\n\"리액트를 활용해 어찌저찌하여 개발을 했지만,\n이 방법이 과연 효율적인지 감이 오지 않습니다.','매주 일요일 13:00 ~ 18:00','만들고 비교하며 학습하는 리액트'),('2024-12-31',0,'2024-09-01',73,5,'초급자를 위해 준비한\n[VR/AR, 게임 프로그래밍] 강의입니다.','/static/3b3bb62e-d6b7-4a7c-a309-78a1b3aff6a1_3dvr-gaming.png','이 강의에서는? 📢\n유니티는 조금 아는데 당장 VR 콘텐츠 개발은 어떻게 해야 할지 막막하신가요? 유니티에서 공식적으로 개발하고 지원하는 XR Interaction Toolkit을 배워 나만의 VR 콘텐츠를 만들어 보세요!\n\nXR Interaction Toolkit의 핵심 개념부터 시작해, XR Interaction Toolkit의 다양한 컴포넌트들을 이용해 굉장히 손쉽게 VR 컨텐츠를 만들 수 있는 방법을 알려드립니다. 또한 VR 디펜스 게임 제작 실습에서 Unity Event 기반의 프로그래밍으로 VR 개발의 기초를 배울 수 있습니다.\n\n핵심 기능을 강의 하나로 모두 경험해보세요! ','매주 토요일 09:00 ~ 12:00','두고두고 써먹는 유니티 VR'),('2025-03-31',0,'2025-01-01',74,5,'초급자를 위해 준비한\n[블록체인, 보안] 강의입니다.','/static/a7ecbaab-6b6c-43d3-afd9-96721a81ee10_3dblock.png','복잡한 개념도 가장 쉽게 \n설명해드리겠습니다.\n✅ 블록체인 관련 서적, 논문, 정부 가상자산거래소 관련 규제, ISMS-P 인증기준 등 다양한 지식을 다룹니다.\n✅ 블록체인 개념 및 기술을 이해하고, 가상자산거래소의 규제와 동향을 파악할 수 있습니다.\n✅ 현직 리테일 업계 정보보호최고책임자(CISO), ISMS-P WIN 유튜버의 전문성과 노하우를 담았습니다.\n✅ ISMS-P 인증심사원 자격시험에 가상자산거래소 보안 토픽이 나오면 고득점을 받을 수 있게 됩니다.','매주 화, 목 19:00 ~ 22:00','블록체인, 가상자산거래소 보안'),('2024-11-30',0,'2024-10-01',75,5,'초급자를 위해 준비한\n[데브옵스 · 인프라, Docker] 강의입니다.','/static/275bb582-aad1-457d-87bb-3cdda15bbd90_Docker_logo.png','🤬 에라이, 못 해먹겠네!\n비전공자로 개발을 시작해 여러 회사에서 CTO로 활동하다가, 현재는 교육자로 활동하고 있는 박재성이라고 합니다. 저도 비전공자로 개발을 시작해 서버를 배포하고 Docker를 공부하던 시절이 있었어요.\n\nDocker를 공부할 때 느꼈던 첫 번째 느낌은 \'방대함, 답답함\'이었어요.\n\nDocker를 익히기 위해 관련 책을 사서 공부를 하려고 했었어요. 책의 구성이 Docker의 명령어를 하나씩 풀어서 설명하는 방식이었어요. 명령어의 개수도 많아서 학습하는 데 버거웠어요. 하지만 꿋꿋이 버텨가면서 명령어들을 하나씩 공부해나갔어요.\n\n각 명령어에 대한 이해도는 높아졌지만 이걸 실전에서는 어떻게 응용해야 할 지 전혀 감을 못잡겠더라구요. 분명 Docker 책을 가지고 1달 동안 공부했는데도 불구하고, 실제 프로젝트에 적용 못시키는 제 자신을 보면서 답답함을 느꼈어요.\n\n이런 어려움을 겪었던 시절이 저도 있었다보니, 비전공자도 쉽게 이해할 수 있으면서 실전에서 바로 적용할 수 있는 Docker 강의를 만들어야겠다고 생각했어요.','매주 월, 화, 수 16:00 ~ 20:00','비전공자도 이해할 수 있는 Docker 입문/실전');
/*!40000 ALTER TABLE `lecture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qna`
--

DROP TABLE IF EXISTS `qna`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qna` (
  `is_mine` bit(1) NOT NULL,
  `modified_at` date DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `id` bigint DEFAULT NULL,
  `lecture_id` bigint DEFAULT NULL,
  `qna_id` bigint NOT NULL AUTO_INCREMENT,
  `answer` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`qna_id`),
  KEY `FKtlg4m1btk9vq561slo50aukjg` (`lecture_id`),
  KEY `FKfuhqladd1tyf7s3sok0id03tx` (`id`),
  CONSTRAINT `FKfuhqladd1tyf7s3sok0id03tx` FOREIGN KEY (`id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKtlg4m1btk9vq561slo50aukjg` FOREIGN KEY (`lecture_id`) REFERENCES `lecture` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qna`
--

LOCK TABLES `qna` WRITE;
/*!40000 ALTER TABLE `qna` DISABLE KEYS */;
INSERT INTO `qna` VALUES (_binary '\0',NULL,'2024-08-14 14:31:45.310000',7,3,78,'강사가 질문에 답변을 남길 수 있습니다','파이썬 어쩌구 저쩌구',NULL,'1주차 수업 질문있습니다~~'),(_binary '\0',NULL,'2024-08-14 14:32:24.917000',7,3,79,NULL,'인덱스에서 마이너스 값을 받게 되면 어떻게 되나요??',NULL,'1주차 수업 인덱싱 관련 질문 있습니다!!!'),(_binary '\0',NULL,'2024-08-14 14:33:38.571000',7,3,80,'인터프리터는 코드를 실행할 때 별도의 컴파일 작업을 거치기보다는, 한 줄씩 기계어로 변환한 뒤 해당 명령어를 즉각 실행합니다.\n이렇게 함으로서 인터프리터 언어는 개발과 테스트 과정이 빠릅니다. 왜냐하면 코드를 작성하고 바로 실행해볼 수 있기 때문에 개발 속도가 빨라집니다.','파이썬은 왜 인터프리터 언어인가요?',NULL,'1주차 파이썬 컴파일 관련 질문 있습니다.'),(_binary '\0',NULL,'2024-08-15 16:26:48.616000',7,3,81,'답변을 남길 수 있습니다','궁금해요',NULL,'안녕하세요'),(_binary '\0',NULL,'2024-08-15 16:33:24.517000',7,3,82,'답변을 남길 수 있습니다','질문 내용',NULL,'질문을 남길 수 있습니다'),(_binary '\0',NULL,'2024-08-16 09:24:16.758000',41,3,83,NULL,'방문인사 남깁니당~',NULL,'방문인사');
/*!40000 ALTER TABLE `qna` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quiz`
--

DROP TABLE IF EXISTS `quiz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quiz` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `quizset_id` bigint DEFAULT NULL,
  `answer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK7m3qwbui4pa76mmeuw703hwuo` (`quizset_id`),
  CONSTRAINT `FK7m3qwbui4pa76mmeuw703hwuo` FOREIGN KEY (`quizset_id`) REFERENCES `quiz_set` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=365 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quiz`
--

LOCK TABLES `quiz` WRITE;
/*!40000 ALTER TABLE `quiz` DISABLE KEYS */;
INSERT INTO `quiz` VALUES (1,2,'123',NULL,'123'),(6,4,'3',NULL,'데드락의 발생조건에 해당하지 않은 것을 고르시오'),(7,4,'4',NULL,'다중 스레드 모델에 해당하지 않은 것을 고르시오'),(8,4,'',NULL,''),(11,6,'3',NULL,'HTTP 요청이 아닌것을 고르시오'),(12,6,'1',NULL,'원시 타입이 아닌것을 고르시오'),(69,23,'@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@',NULL,'@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@'),(70,23,'@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@',NULL,'@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@'),(71,23,'@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@',NULL,'@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@'),(113,32,'정민',NULL,'@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@'),(114,32,'dsadsada',NULL,'@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@'),(115,32,'2',NULL,'@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@'),(117,34,'t',NULL,'test'),(118,34,'t',NULL,'test'),(125,5,'1',NULL,'안녕하세요, 저는 PM을 위한 UX/UI 강의를 운영하고 있는 디자인 튜터입니다.'),(126,5,'1',NULL,'강의는 매주 수요일 오후 6시 ~ 8시에 진행됩니다. 라이브 강의인만큼 집중해서 들어주세요!'),(127,5,'1',NULL,'질문은 Q&A 게시판을 통해 남겨주세요! 최대한 빠르게 답변하겠습니다.'),(128,5,'1',NULL,'중간에 퀴즈를 진행하고 정답을 맞히신 분들께 상품을 드립니다! 열심히 참여해주세요😀'),(149,43,'2',NULL,'string = \"홀짝홀짝홀짝\" 일때 print(string[::2])의 결과는?'),(150,43,'helloworld','/static/523b6959-fa9e-4dc8-84e9-c821408b9896_s+t문제2.png','s와 t가 그림과 같을때 print(s+t) 의 결과는 ?'),(151,43,'1',NULL,'a = 128 일때 print(type(a)) 의 결과는 ?'),(152,43,'4',NULL,'movie = [\'슈퍼맨\', \'럭키\', \'배트맨\'] 일때 del movie[3]하면 없어지는 것은 ?'),(233,50,'1','/static/cea1fea3-ba8b-4034-bff3-663b6802d524_img.jpg','1231231251'),(234,50,'23523','/static/5ad4f725-e489-4123-9822-872a765ae4cb_file.png','123'),(345,51,'1','/static/4e1f191e-315a-41d5-95f7-8850266eb589_i11a701.p.ssafy.io_auth_register.png','1111'),(355,51,'12312ㅀ3','/static/139b5261-dd29-4b03-9256-0d34c56deac8_i11a701.p.ssafy.io_auth_register.png','2222'),(357,51,'1','/static/61da6ef2-7dca-4510-8d6a-d514442e7d3e_blob','3333'),(358,51,'1','/static/cb549846-72fa-4eb7-a8fb-2e5e6572a365_i11a701.p.ssafy.io_auth_register.png','4444'),(361,53,'2','/static/d0bf4c21-477f-45b7-a826-a483c148f996_파이썬.png','string = \"홀짝홀짝홀짝\" 일때 print(string[::2])의 결과는?'),(362,53,'2','/static/e3c3a635-5c00-47e7-92dd-82b650cef488_ssafy.png','SSAFY의 인재상이 아닌것을 고르시오 '),(363,53,'최인국','/static/7e9c47cc-5d20-48b3-8df1-cb65ee2fb700_ssafy.png','공통프로젝트 7반 컨설턴트님의 성함은??'),(364,53,'28','/static/9aa3b6ce-bc52-4eb2-91c0-df5252bdf370_IMG_0098 2.JPG','발표자의 나이는?');
/*!40000 ALTER TABLE `quiz` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quiz_set`
--

DROP TABLE IF EXISTS `quiz_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quiz_set` (
  `tested` bit(1) DEFAULT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKmj267y4fnlsu34jss3btdhtji` (`user_id`),
  CONSTRAINT `FKmj267y4fnlsu34jss3btdhtji` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quiz_set`
--

LOCK TABLES `quiz_set` WRITE;
/*!40000 ALTER TABLE `quiz_set` DISABLE KEYS */;
INSERT INTO `quiz_set` VALUES (_binary '\0',1,1,'14325235'),(_binary '\0',2,1,'daggagegeaeg'),(_binary '',4,6,'cs 테스트 1주차'),(_binary '',5,9,'[오리엔테이션] 환영합니다. 😀'),(_binary '\0',6,6,'스프링 1주차 문제'),(_binary '\0',23,17,'@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@'),(_binary '\0',32,19,'@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@'),(_binary '\0',34,4,'test'),(_binary '',43,5,'파이썬 1주차 퀴즈'),(_binary '\0',50,9,'111'),(_binary '\0',51,9,'수정테스트퀴즈셋'),(_binary '',53,5,'[공통프로젝트 7반] 퀴즈');
/*!40000 ALTER TABLE `quiz_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration`
--

DROP TABLE IF EXISTS `registration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registration` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `lecture_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `status` enum('ACCEPTED','WAITING') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK4qjon4vr9c8rgvunwkufsb1dg` (`lecture_id`),
  KEY `FKsgns2yiwurfns69dqv61bsyem` (`user_id`),
  CONSTRAINT `FK4qjon4vr9c8rgvunwkufsb1dg` FOREIGN KEY (`lecture_id`) REFERENCES `lecture` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FKsgns2yiwurfns69dqv61bsyem` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration`
--

LOCK TABLES `registration` WRITE;
/*!40000 ALTER TABLE `registration` DISABLE KEYS */;
INSERT INTO `registration` VALUES (4,4,7,'ACCEPTED'),(8,5,7,'ACCEPTED'),(11,4,11,'ACCEPTED'),(15,9,12,'ACCEPTED'),(19,4,8,'ACCEPTED'),(43,9,7,'ACCEPTED'),(46,5,16,'ACCEPTED'),(47,9,16,'ACCEPTED'),(61,73,32,'ACCEPTED'),(62,74,32,'ACCEPTED'),(63,72,32,'ACCEPTED'),(66,4,32,'WAITING'),(67,5,32,'ACCEPTED'),(68,6,32,'WAITING'),(69,9,32,'WAITING'),(70,68,7,'ACCEPTED'),(74,72,39,'WAITING'),(75,68,39,'WAITING'),(77,3,34,'ACCEPTED'),(78,3,36,'ACCEPTED'),(79,3,37,'ACCEPTED'),(80,3,38,'ACCEPTED'),(81,3,41,'ACCEPTED'),(82,3,42,'ACCEPTED'),(83,3,35,'ACCEPTED'),(84,75,7,'ACCEPTED'),(85,3,7,'ACCEPTED'),(86,3,43,'WAITING'),(87,6,41,'WAITING'),(88,9,41,'WAITING');
/*!40000 ALTER TABLE `registration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report`
--

DROP TABLE IF EXISTS `report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `report` (
  `all_count` int NOT NULL,
  `correct_count` int NOT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `lecture_id` bigint DEFAULT NULL,
  `quizset_id` bigint DEFAULT NULL,
  `test_at` datetime(6) DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `reportset_id` binary(16) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK2lt9qdibbc77tgj22kimj40xg` (`quizset_id`),
  KEY `FKh0dst2j4kekv6rub8wxqpnmw3` (`reportset_id`),
  KEY `FKj62onw73yx1qnmd57tcaa9q3a` (`user_id`),
  CONSTRAINT `FK2lt9qdibbc77tgj22kimj40xg` FOREIGN KEY (`quizset_id`) REFERENCES `quiz_set` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FKh0dst2j4kekv6rub8wxqpnmw3` FOREIGN KEY (`reportset_id`) REFERENCES `report_set` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FKj62onw73yx1qnmd57tcaa9q3a` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=168 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report`
--

LOCK TABLES `report` WRITE;
/*!40000 ALTER TABLE `report` DISABLE KEYS */;
INSERT INTO `report` VALUES (0,-1,157,4,4,'2024-08-16 08:56:15.631000',7,_binary '�\�\�Ip�`<���N\"'),(0,-1,158,4,4,'2024-08-16 08:56:15.632000',11,_binary '�\�\�Ip�`<���N\"'),(0,-1,159,4,4,'2024-08-16 08:56:15.633000',8,_binary '�\�\�Ip�`<���N\"'),(4,0,160,3,53,'2024-08-16 09:20:14.676000',34,_binary '\�mm�K�=�\�\�iQ�'),(4,1,161,3,53,'2024-08-16 09:20:14.676000',36,_binary '\�mm�K�=�\�\�iQ�'),(4,1,162,3,53,'2024-08-16 09:20:14.677000',37,_binary '\�mm�K�=�\�\�iQ�'),(4,1,163,3,53,'2024-08-16 09:20:14.677000',38,_binary '\�mm�K�=�\�\�iQ�'),(4,1,164,3,53,'2024-08-16 09:20:14.678000',41,_binary '\�mm�K�=�\�\�iQ�'),(4,3,165,3,53,'2024-08-16 09:20:14.678000',42,_binary '\�mm�K�=�\�\�iQ�'),(4,0,166,3,53,'2024-08-16 09:20:14.679000',35,_binary '\�mm�K�=�\�\�iQ�'),(0,-1,167,3,53,'2024-08-16 09:20:14.679000',7,_binary '\�mm�K�=�\�\�iQ�');
/*!40000 ALTER TABLE `report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report_set`
--

DROP TABLE IF EXISTS `report_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `report_set` (
  `create_at` datetime(6) DEFAULT NULL,
  `lecture_id` bigint DEFAULT NULL,
  `quiz_set_id` bigint DEFAULT NULL,
  `id` binary(16) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKeg3b4xutxmt7ooavt26knxtk2` (`lecture_id`),
  KEY `FK3sgyplg68q0oeifjdip0fodox` (`quiz_set_id`),
  CONSTRAINT `FK3sgyplg68q0oeifjdip0fodox` FOREIGN KEY (`quiz_set_id`) REFERENCES `quiz_set` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FKeg3b4xutxmt7ooavt26knxtk2` FOREIGN KEY (`lecture_id`) REFERENCES `lecture` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report_set`
--

LOCK TABLES `report_set` WRITE;
/*!40000 ALTER TABLE `report_set` DISABLE KEYS */;
INSERT INTO `report_set` VALUES ('2024-08-16 09:20:14.675000',3,53,_binary '\�mm�K�=�\�\�iQ�'),('2024-08-16 08:56:15.630000',4,4,_binary '�\�\�Ip�`<���N\"');
/*!40000 ALTER TABLE `report_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `refresh_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('ADMIN','STUDENT') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_a3imlf41l37utmxiquukk8ajc` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'wjdrldud98@gmail.com','정기영','$2a$10$SJW0FeojCd8y1AVKDcRAuOa/WHeoQJe749WZZ.COjSn9507plgimG',NULL,'wjdrldud98','ADMIN'),(2,'test@naver.com','김한얼','$2a$10$TUN0vOlMTnRgUDViQnjZL.NKOij6MHk8XHa.0li45./MyT4BRXVJ2',NULL,'testid','STUDENT'),(3,'yulmam1@naver.com','김한얼','$2a$10$LrVWTJBFZnZv48t1KEqV..LYuoslhZTWa/aDR2ua5pGHIknd6FtWm',NULL,'yulmam','STUDENT'),(4,'test123@naver.com','김한얼','$2a$10$Ty.1XjLqbgL9tpd4fl5Ks.K7zNGbejOQawwARGehk5naHrXRFqQ06',NULL,'yulmam123','ADMIN'),(5,'wjdals05070@gmail.com','[SSAFY] 정민쌤','$2a$10$g72m3TJQoOCEt4ZQbBhgMel4xYi7WxFH7kZL1RgMtbIDFqWTVkZ.W','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJyZWZyZXNoLXRva2VuIiwiaWF0IjoxNzIzNzcxNTI3LCJleHAiOjE3MjQyNzU1MjcsImlkIjoiNSJ9.AtiztbYgsukhENU5h9T1UX0Fmpkke2MIcTQmg3esiqs','teacher1','ADMIN'),(6,'testtesttest@comttttttcvvt.com','김한얼','$2a$10$rKfmILFxrsbQbrMRRtRrW.C9.jPs6u2JSg5P/HPx3lsOHpMKjpk4q',NULL,'teacher2','ADMIN'),(7,'cky9812@naver.com','1140571_정기영','$2a$10$08A7nTMedYCIgXjbD6mW1uuLhbCfbI/zXOOlFsxgjxNrg72xR6Q7a',NULL,'student1','STUDENT'),(8,'minwuchoprivate@gmail.com','1146107_조민우','$2a$10$J/xRXZJIl6puXsHrzLdC7uwVKJya.MD.qoITEqVypQrfMRoZpKUkK',NULL,'student2','STUDENT'),(9,'teacher3@gmail.com','디자인튜터','$2a$10$t8K1oI3YIpjGHekQ.qKel.3lcbNIqsBXtbMCEaTaIWk5uBfmPvI3e','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJyZWZyZXNoLXRva2VuIiwiaWF0IjoxNzIzNzY1OTcyLCJleHAiOjE3MjQyNjk5NzIsImlkIjoiOSJ9.aDk03HWrDIAJPA2pYM8LY7WfeiBM_vtqAotG8zSS8oE','teacher3','ADMIN'),(10,'ssafystudent5@ssa.fy','학생 테스트계정 ','$2a$10$tVCtUd8xngtucwJ2kuvu4ujV2O6u.JoEgJcunM6LlVYtHlb3i31Ji',NULL,'tempuser177','STUDENT'),(11,'gichang@gichang.com','김기창','$2a$10$4/ZRVk8z8x4GekQQor1.geGjZbjgkQIU86RoD.Lxzcwzco5CSUlmW','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJyZWZyZXNoLXRva2VuIiwiaWF0IjoxNzIzMjc4MjU1LCJleHAiOjE3MjM3ODIyNTUsImlkIjoiMTEifQ.KTX8aACQouONbAgibo3z53ibnHLbuOKswYT6kvlYvqU','gichang','STUDENT'),(12,'tempemail1@gmail.com','[임시]000000_학생3','$2a$10$8wOBvWNGqlSE4jDvi6LsHez6uqN/TLIExB6yVOA7RuDb3ZzozRK36','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJyZWZyZXNoLXRva2VuIiwiaWF0IjoxNzIzNTk5MjI0LCJleHAiOjE3MjQxMDMyMjQsImlkIjoiMTIifQ.TEKBBF1M3OR4UypZVtu93BVs4Shnu90n75bEmM1L-MQ','student3','STUDENT'),(13,'wjdals@naver.com','1','$2a$10$h0qcSux2ptTUGCv.mkyh5e7qJjR.8GEzdQWYNXNFqvuSMWWw2RrvW','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJyZWZyZXNoLXRva2VuIiwiaWF0IjoxNzIzNDM1MjE1LCJleHAiOjE3MjM5MzkyMTUsImlkIjoiMTMifQ.f6PTjDsDrMgF9DG5ZhKiJvuL0lG2Xrygo3YPCvGIJoM','jungmin','ADMIN'),(14,'minwuchlrh@gmail.com','민우초','$2a$10$GicMl3/E.Yzp62fP0ITSpe0aluCpNx3YmwQsoWehZ5WYX6M3cjfvq',NULL,'minwucho','STUDENT'),(15,'yulmam123@naver.com','김한얼','$2a$10$sAmI8jWyMhnjsz2c04tlmOLuEsfyVbD/LUf4zmMh9ersUH/.C30RG',NULL,'yulmam1','STUDENT'),(16,'kgc91747@naver.com','김기창','$2a$10$EOFauSOv8rV6szjEz6PvteGiRzt948zzG.NKGbQDiZYWhRacHPp8W',NULL,'kgc91747','STUDENT'),(17,'w@naver.com','1','$2a$10$ABC2Sb3Fygc2BSFVBldMH.t5BM8zeDX.FSD8QWtjl7TJT9kaHccYK',NULL,'testteacher','ADMIN'),(18,'as@a.com','as','$2a$10$mKgCj.n9vddOguMCr82qFeY37raAOam7tkgTHxCkyttAbJUU0m6Dq',NULL,'asdf','STUDENT'),(19,'12w@naver.com','t','$2a$10$uoqFRWhBsVhdkR5Q2hTv2.oXxoIzhvXkTd0p8rvaAZLrq1i4oQTk6',NULL,'t','ADMIN'),(20,'tttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttt@naver.com','tttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttt','$2a$10$/MPo0JaYKsG7j8wgwlI/xOeoVNF5VtVeW0OcahnHcXhsfRrfVumr6',NULL,'tttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttt','STUDENT'),(21,'testtest@naver.com','yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy','$2a$10$33b3yUeG6YCPzODLQ.hjYeDg/.n7Bkpm3GMDaWJau2kZTGt1juRCO',NULL,'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy','STUDENT'),(22,'kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk@naver.com','kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk','$2a$10$FsQo77LQkLUFYZHHdg71S.ZP/kdKQFUYgjX0rzmpD7NOoWONJHLD6',NULL,'kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk','ADMIN'),(23,'maxlengthmaxlengthmaxlengthmaxlengthmaxlengthmaxlemaxlengthmaxlengthmaxlengthmaxlengthmaxlengthmaxlemaxlengthmaxlengthmaxlengthmaxlengthmaxlengthmaxlemaxlengthmaxlengthmaxlengthmaxle@naver.com','maxlengthmaxlengthmaxlengthmaxlengthmaxlengthmaxlemaxlengthmaxlengthmaxlengthmaxlengthmaxlengthmaxlemaxlengthmaxlengthmaxlengthmaxlengthmaxlengthmaxlemaxlengthmaxlengthmaxlengthmaxlengthmaxlengthmaxle','$2a$10$bPPonilTQqvf4YK/jP9K3em1rIbtTOVRHzgtv9xWTb0Z5T9xn09ta',NULL,'maxlengthmaxlengthmaxlengthmaxlengthmaxlengthmaxlemaxlengthmaxlengthmaxlengthmaxlengthmaxlengthmaxlemaxlengthmaxlengthmaxlengthmaxlengthmaxlengthmaxlemaxlengthmaxlengthmaxlengthmaxlengthmaxlengthmaxle','STUDENT'),(24,'1@naver.com','a','$2a$10$GesKm4N3yFthCvCyiVbh/ujvSz98o9VRMsNeutrHsO.2RIpqpbg0W',NULL,'a','STUDENT'),(25,'WWWWWWWWW@WWWWWWW.WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW','@@@@@@@@@@@@@@@@@@@@','$2a$10$Ea7qiRAediW1FEuvYQ5Hhe4guaaCBr/JBqK5tzBAmglFJtSoWpXwK',NULL,'@@@@@@@@@@@@@@@@@@@@','STUDENT'),(26,'12312213r12353252352@12312213r1235325235212312213r','12312213r12353252352','$2a$10$P.3fmyyzBVF0ltEaSTMvVe4O2i1a.KSmtIpWdan3fRzvF33PMscv.',NULL,'12312312312312312312','STUDENT'),(27,'tt@naver.com','ㅂㅂㅂㅂㅂㅂㅂㅂㅂㅂㅂㅂㅂㅂㅂㅂㅂㅂㅂㅂ','$2a$10$nWk/DBKX5Ef5Ejf9i0hCp.pedXB1CGF7p96sJMDlSxYxQSHJqnLv6',NULL,'ㅂㅂㅂㅂㅂㅂㅂㅂㅂㅂㅂㅂㅂㅂㅂㅂㅂㅂㅂㅂ','STUDENT'),(28,'kk@naver.com','ㅅㅅㅅㅅㅅㅅㅅㅅㅅㅅㅅㅅㅅㅅㅅㅅㅅㅅㅅㅅ','$2a$10$HMwrjXe9YUTNb5idZZUHKO21QxP/r7s12UAOftUGzBTVp4J7Bw2Va',NULL,'ㅅㅅㅅㅅㅅㅅㅅㅅㅅㅅㅅㅅㅅㅅㅅㅅㅅㅅㅅㅅ','ADMIN'),(29,'test12345@naver.com','     ','$2a$10$ZU6YYqpjkAR7m0WsgTYw0eLsjBK6yC5i54Nuhb/FMFSeycAv0HbSa',NULL,'     ','STUDENT'),(30,'wjdals050700@gmail.com','1142623_박정민','$2a$10$VKXlh43AKsojRYNozjQ6oeiH8ekNHzZbw/zHXS2yfVP7pW5Mn1bq.','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJyZWZyZXNoLXRva2VuIiwiaWF0IjoxNzIzNjIyMzM1LCJleHAiOjE3MjQxMjYzMzUsImlkIjoiMzAifQ.J9b3YL3R7xdQYd-NTuLt6bJROO7JWFeNw9RMY4VUlrs','wjdals0507','STUDENT'),(31,'1146400@ssafy.com','1146400_김한얼','$2a$10$bItsDfb6jQHa4.s/wcA3xuiga2/p1HHth81eaWJKyc/rX69sHDtly','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJyZWZyZXNoLXRva2VuIiwiaWF0IjoxNzIzNjE5NDkzLCJleHAiOjE3MjQxMjM0OTMsImlkIjoiMzEifQ._ifO1bLofhRi1rhVGkUNOCV0gW4CgD-AOEDR4REhJSY','yulmam1234','STUDENT'),(32,'asdf@fdsa.com','1143228_조현수','$2a$10$QXpt7uKt.cI5ZAwosMuW4eaKmZhR7/voca85HIos2qHcsU6Vs3kyu',NULL,'1234','STUDENT'),(33,'student4@naver.com','1140010_김기창','$2a$10$DNKopVI7jaFc7KLUjAsRd.XFYZzJiZmeoZ/vaioL9N17dbM8IZ9/K','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJyZWZyZXNoLXRva2VuIiwiaWF0IjoxNzIzNjE3MDk2LCJleHAiOjE3MjQxMjEwOTYsImlkIjoiMzMifQ.ycaU3wRyhgiXFytpP8d5nF-PWXEsNv8dhLjffIR4jUw','student4','STUDENT'),(34,'team3@gmail.com','3조','$2a$10$/5crD0FnM0w15AmGnpwrVO7Ws9rkPTeaXVAYNpSQd5TtdZNCmwa5G','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJyZWZyZXNoLXRva2VuIiwiaWF0IjoxNzIzNzY3NTcyLCJleHAiOjE3MjQyNzE1NzIsImlkIjoiMzQifQ.-Z2SCGTiQ1HWqcoK-qm_K6fRCIXP9JIZP2I7CRTnilw','team3','STUDENT'),(35,'team2@gmail.com','2조','$2a$10$y5ND36j9DzB0LRRgHEUUX.Ts8P4tX.JKKXayy2hb9QnMgL8Rae3Ri','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJyZWZyZXNoLXRva2VuIiwiaWF0IjoxNzIzNzY3NDQyLCJleHAiOjE3MjQyNzE0NDIsImlkIjoiMzUifQ.Uqdg1kI6enO61heuWATtBiBGqUiWkb5tYPH49Mpgpuk','team2','STUDENT'),(36,'team5@gmail.com','5조','$2a$10$ioOU0ja8ymW5g2jUf1xNZePblY/76JfbnaF.j3xL3MylEcaVoWy.O',NULL,'team5','STUDENT'),(37,'team6@gmail.com','6조','$2a$10$hJaUy1GTKTxI8hWeQe1bNe60a9np8XrPmzo.FBKCnzimAmKYD7JBq',NULL,'team6','STUDENT'),(38,'team7@gmail.com','7조','$2a$10$LFjX2APVQAS0q7X0nzb/6uR6KkvoNaPgTVCfxD9WnIBjoNkpJR4Ti','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJyZWZyZXNoLXRva2VuIiwiaWF0IjoxNzIzNzY3NDg1LCJleHAiOjE3MjQyNzE0ODUsImlkIjoiMzgifQ.zZO6cDoL61TFR3Hfu01e_7xGyqJQNt5DotNmWlQ1jG0','team7','STUDENT'),(39,'t@t.com','t','$2a$10$vDMRTsYzeNsM2wfy2U4vpuMwyMyHnBD1jRfGbQxJvID/aL4vgNeEC',NULL,'t1','STUDENT'),(40,'t2@t.com','t','$2a$10$SUG43Yy4CsSshWLhEkqUEeapydU7BOxgmA1Jqc0wSz1DCTm3mHik6',NULL,'t2','ADMIN'),(41,'team8@gmail.com','8조','$2a$10$wOtq5Ikavk6p8PAt2l0C6.0YFIDmBTcx0ktgUP2m1KDYGl6CUkYXm',NULL,'team8','STUDENT'),(42,'team9@gmail.com','9조','$2a$10$N6nrCbCaYBv2Wg2GNtgboOmhaB0nCxiUK6gB0QL1poFEQd0EQjNwK','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJyZWZyZXNoLXRva2VuIiwiaWF0IjoxNzIzNzczNDk5LCJleHAiOjE3MjQyNzc0OTksImlkIjoiNDIifQ.gN_lCeZxN5MVKlag6kGIUyCzS5yWj1HvmDq5R7LZgpo','team9','STUDENT'),(43,'baeksh@naver.com','백승헌','$2a$10$sudsup50ms7VC3pyX2dvHuQq/RduSwSCopJDRU7SlCEiYbdVwtznW','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJyZWZyZXNoLXRva2VuIiwiaWF0IjoxNzIzNzY3NDY3LCJleHAiOjE3MjQyNzE0NjcsImlkIjoiNDMifQ.m_j_BeENZbjJ_cib61EcHnludfobqaeO5Ve3D-ds4DI','baeksh','STUDENT');
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

-- Dump completed on 2024-08-16  2:33:52
